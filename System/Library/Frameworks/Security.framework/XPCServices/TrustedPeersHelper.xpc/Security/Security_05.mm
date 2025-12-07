uint64_t GetEscrowCheckRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = _swiftEmptyArrayStorage;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  v2 = type metadata accessor for GetEscrowCheckRequest(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 48);
  v4 = type metadata accessor for Metrics(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 52);
  v6 = type metadata accessor for AccountInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t EscrowProxyFederationMoveRecordRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  sub_100019C6C(v1 + *(v7 + 32), v6, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t EscrowProxyFederationMoveRecordRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EscrowProxyFederationMoveRecordRequest(0) + 32);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*EscrowProxyFederationMoveRecordRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for EscrowProxyFederationMoveRecordRequest(0) + 32);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t EscrowProxyFederationMoveRecordRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  v2 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t GetRepairActionResponse.repairAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t GetRepairActionResponse.repairAction.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v9 = sub_1000F960C(v8);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v3 + v6) = v9;
    v8 = v9;
  }

  result = swift_beginAccess();
  *v8->endpoint = a1;
  v8->containerMap[0] = a2 & 1;
  return result;
}

void (*GetRepairActionResponse.repairAction.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return sub_10009DC70;
}

void sub_10009DC70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v11 = sub_1000F960C(v8);
    v8, v12, v13, v14, v15, v16, v17, v18;
    *(v10 + v9) = v11;
    v8 = v11;
  }

  swift_beginAccess();
  *v8->endpoint = v3;
  v8->containerMap[0] = v6;

  free(v2);
}

uint64_t GetRepairActionResponse.totalEscrowRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t GetRepairActionResponse.totalEscrowRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 32) = a1;
  return result;
}

void (*GetRepairActionResponse.totalEscrowRecords.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 32);
  return sub_10009DEDC;
}

void sub_10009DEDC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 32) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.collectableEscrowRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t GetRepairActionResponse.collectableEscrowRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 40) = a1;
  return result;
}

void (*GetRepairActionResponse.collectableEscrowRecords.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 40);
  return sub_10009E140;
}

void sub_10009E140(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 40) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.collectedEscrowRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 48);
}

uint64_t GetRepairActionResponse.collectedEscrowRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[1].endpoint = a1;
  return result;
}

void (*GetRepairActionResponse.collectedEscrowRecords.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 48);
  return sub_10009E3A4;
}

void sub_10009E3A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[1].endpoint = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.escrowRecordGarbageCollectionEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t GetRepairActionResponse.escrowRecordGarbageCollectionEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  v6[1].containerMap[0] = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.escrowRecordGarbageCollectionEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 56);
  return sub_10009E60C;
}

void sub_10009E60C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  v7[1].containerMap[0] = v5;

  free(v2);
}

uint64_t GetRepairActionResponse.totalTlkShares.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t GetRepairActionResponse.totalTlkShares.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 64) = a1;
  return result;
}

void (*GetRepairActionResponse.totalTlkShares.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 64);
  return sub_10009E86C;
}

void sub_10009E86C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 64) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.collectableTlkShares.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t GetRepairActionResponse.collectableTlkShares.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 72) = a1;
  return result;
}

void (*GetRepairActionResponse.collectableTlkShares.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 72);
  return sub_10009EAD0;
}

void sub_10009EAD0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 72) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.collectedTlkShares.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t GetRepairActionResponse.collectedTlkShares.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[2].endpoint = a1;
  return result;
}

void (*GetRepairActionResponse.collectedTlkShares.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 80);
  return sub_10009ED34;
}

void sub_10009ED34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[2].endpoint = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.tlkShareGarbageCollectionEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 88);
}

uint64_t GetRepairActionResponse.tlkShareGarbageCollectionEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  v6[2].containerMap[0] = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.tlkShareGarbageCollectionEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 88);
  return sub_10009EF9C;
}

void sub_10009EF9C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  v7[2].containerMap[0] = v5;

  free(v2);
}

uint64_t GetRepairActionResponse.totalPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 96);
}

uint64_t GetRepairActionResponse.totalPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 96) = a1;
  return result;
}

void (*GetRepairActionResponse.totalPeers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 96);
  return sub_10009F1FC;
}

void sub_10009F1FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 96) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.trustedPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 104);
}

uint64_t GetRepairActionResponse.trustedPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 104) = a1;
  return result;
}

void (*GetRepairActionResponse.trustedPeers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 104);
  return sub_10009F460;
}

void sub_10009F460(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 104) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.superfluousPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 112);
}

uint64_t GetRepairActionResponse.superfluousPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[3].endpoint = a1;
  return result;
}

void (*GetRepairActionResponse.superfluousPeers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 112);
  return sub_10009F6C4;
}

void sub_10009F6C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[3].endpoint = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.peersCleanedup.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 120);
}

uint64_t GetRepairActionResponse.peersCleanedup.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[3].containerMap = a1;
  return result;
}

void (*GetRepairActionResponse.peersCleanedup.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 120);
  return sub_10009F928;
}

void sub_10009F928(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[3].containerMap = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.superfluousPeersCleanupEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 128);
}

uint64_t GetRepairActionResponse.superfluousPeersCleanupEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  v6[4]._TtCs12_SwiftObject_opaque[0] = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.superfluousPeersCleanupEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 128);
  return sub_10009FB90;
}

void sub_10009FB90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  v7[4]._TtCs12_SwiftObject_opaque[0] = v5;

  free(v2);
}

uint64_t GetRepairActionResponse.duplicateEscrowRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 136);
}

uint64_t GetRepairActionResponse.duplicateEscrowRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 136) = a1;
  return result;
}

void (*GetRepairActionResponse.duplicateEscrowRecords.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 136);
  return sub_10009FDF0;
}

void sub_10009FDF0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.unsetHmacpeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 144);
}

uint64_t GetRepairActionResponse.unsetHmacpeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[4].endpoint = a1;
  return result;
}

void (*GetRepairActionResponse.unsetHmacpeers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 144);
  return sub_1000A0054;
}

void sub_1000A0054(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[4].endpoint = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.updatedHmacpeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 152);
}

uint64_t GetRepairActionResponse.updatedHmacpeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[4].containerMap = a1;
  return result;
}

void (*GetRepairActionResponse.updatedHmacpeers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 152);
  return sub_1000A02B8;
}

void sub_1000A02B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[4].containerMap = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.totalDeviceStateRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 160);
}

uint64_t GetRepairActionResponse.totalDeviceStateRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 160) = a1;
  return result;
}

void (*GetRepairActionResponse.totalDeviceStateRecords.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 160);
  return sub_1000A051C;
}

void sub_1000A051C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 160) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.collectableDeviceStateRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 168);
}

uint64_t GetRepairActionResponse.collectableDeviceStateRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 168) = a1;
  return result;
}

void (*GetRepairActionResponse.collectableDeviceStateRecords.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 168);
  return sub_1000A0780;
}

void sub_1000A0780(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 168) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.collectedDeviceStateRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 176);
}

uint64_t GetRepairActionResponse.collectedDeviceStateRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[5].endpoint = a1;
  return result;
}

void (*GetRepairActionResponse.collectedDeviceStateRecords.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 176);
  return sub_1000A09E4;
}

void sub_1000A09E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[5].endpoint = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.tlkShareDeletionFailed.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 184);
}

uint64_t GetRepairActionResponse.tlkShareDeletionFailed.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  v6[5].containerMap[0] = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.tlkShareDeletionFailed.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 184);
  return sub_1000A0C4C;
}

void sub_1000A0C4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  v7[5].containerMap[0] = v5;

  free(v2);
}

uint64_t GetRepairActionResponse.deviceStateRecordDeletionFailed.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 185);
}

uint64_t GetRepairActionResponse.deviceStateRecordDeletionFailed.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  v6[5].containerMap[1] = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.deviceStateRecordDeletionFailed.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 185);
  return sub_1000A0EB0;
}

void sub_1000A0EB0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  v7[5].containerMap[1] = v5;

  free(v2);
}

uint64_t GetRepairActionResponse.fullyDanglingPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 192);
}

uint64_t GetRepairActionResponse.fullyDanglingPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 192) = a1;
  return result;
}

void (*GetRepairActionResponse.fullyDanglingPeers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 192);
  return sub_1000A1110;
}

void sub_1000A1110(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 192) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.partiallyDanglingPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 200);
}

uint64_t GetRepairActionResponse.partiallyDanglingPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 200) = a1;
  return result;
}

void (*GetRepairActionResponse.partiallyDanglingPeers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 200);
  return sub_1000A1374;
}

void sub_1000A1374(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 200) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.caesarPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 208);
}

uint64_t GetRepairActionResponse.caesarPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[6].endpoint = a1;
  return result;
}

void (*GetRepairActionResponse.caesarPeers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 208);
  return sub_1000A15D8;
}

void sub_1000A15D8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[6].endpoint = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.danglingPeersCleanedUp.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 216);
}

uint64_t GetRepairActionResponse.danglingPeersCleanedUp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[6].containerMap = a1;
  return result;
}

void (*GetRepairActionResponse.danglingPeersCleanedUp.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 216);
  return sub_1000A183C;
}

void sub_1000A183C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[6].containerMap = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.danglingPeersCleanupEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 224);
}

uint64_t GetRepairActionResponse.danglingPeersCleanupEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  v6[7]._TtCs12_SwiftObject_opaque[0] = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.danglingPeersCleanupEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 224);
  return sub_1000A1AA4;
}

void sub_1000A1AA4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  v7[7]._TtCs12_SwiftObject_opaque[0] = v5;

  free(v2);
}

uint64_t GetRepairActionResponse.idmsUpdated.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 225);
}

uint64_t GetRepairActionResponse.idmsUpdated.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  v6[7]._TtCs12_SwiftObject_opaque[1] = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.idmsUpdated.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 225);
  return sub_1000A1D08;
}

void sub_1000A1D08(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  v7[7]._TtCs12_SwiftObject_opaque[1] = v5;

  free(v2);
}

uint64_t GetRepairActionResponse.fullyDanglingPeerCountValidationFails.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 232);
}

uint64_t GetRepairActionResponse.fullyDanglingPeerCountValidationFails.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 232) = a1;
  return result;
}

void (*GetRepairActionResponse.fullyDanglingPeerCountValidationFails.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 232);
  return sub_1000A1F68;
}

void sub_1000A1F68(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 232) = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.partiallyDanglingPeerCountValidationFails.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 240);
}

uint64_t GetRepairActionResponse.partiallyDanglingPeerCountValidationFails.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[7].endpoint = a1;
  return result;
}

void (*GetRepairActionResponse.partiallyDanglingPeerCountValidationFails.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 240);
  return sub_1000A21CC;
}

void sub_1000A21CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[7].endpoint = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.caesarPeersCleanedUp.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 248);
}

uint64_t GetRepairActionResponse.caesarPeersCleanedUp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *v6[7].containerMap = a1;
  return result;
}

void (*GetRepairActionResponse.caesarPeersCleanedUp.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 248);
  return sub_1000A2430;
}

void sub_1000A2430(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *v7[7].containerMap = v3;

  free(v2);
}

uint64_t GetRepairActionResponse.caesarPeersCleanupEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 256);
}

uint64_t GetRepairActionResponse.caesarPeersCleanupEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  v6[8]._TtCs12_SwiftObject_opaque[0] = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.caesarPeersCleanupEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 256);
  return sub_1000A2698;
}

void sub_1000A2698(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);
    v7, v11, v12, v13, v14, v15, v16, v17;
    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  v7[8]._TtCs12_SwiftObject_opaque[0] = v5;

  free(v2);
}

uint64_t GetEscrowCheckResponse.escrowRecordMoveRequest.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029D720, &qword_10021E868);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for GetEscrowCheckResponse(0);
  sub_100019C6C(v1 + *(v7 + 40), v6, &unk_10029D720, &qword_10021E868);
  v8 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v10 = *(v8 + 32);
  v11 = type metadata accessor for Metrics(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &unk_10029D720, &qword_10021E868);
  }

  return result;
}

uint64_t GetEscrowCheckResponse.escrowRecordMoveRequest.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetEscrowCheckResponse(0) + 40);
  sub_1000114D4(v1 + v3, &unk_10029D720, &qword_10021E868);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  v4 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*GetEscrowCheckResponse.escrowRecordMoveRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D720, &qword_10021E868) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetEscrowCheckResponse(0) + 40);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D720, &qword_10021E868);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0xE000000000000000;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v16 = *(v8 + 32);
    v17 = type metadata accessor for Metrics(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D720, &qword_10021E868);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  }

  return sub_1000A2C68;
}

void sub_1000A2C68(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
    sub_1000114D4(v9 + v3, &unk_10029D720, &qword_10021E868);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  }

  else
  {
    sub_1000114D4(v9 + v3, &unk_10029D720, &qword_10021E868);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t GetEscrowCheckResponse.escrowRepairReason.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t GetEscrowCheckResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v2 = type metadata accessor for GetEscrowCheckResponse(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 40);
  v4 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t SupportAppView.lastReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SupportAppView(0);
  sub_100019C6C(v1 + *(v7 + 28), v6, &qword_10029D780, &qword_1002265D0);
  v8 = sub_1002164A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_100216494();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_10029D780, &qword_1002265D0);
  }

  return result;
}

uint64_t sub_1000A3150(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v10 = *(a2(0) + 28);
  sub_1000114D4(v5 + v10, a3, a4);
  v11 = a5(0);
  v14 = *(v11 - 8);
  (*(v14 + 32))(v5 + v10, a1, v11);
  v12 = *(v14 + 56);

  return v12(v5 + v10, 0, 1, v11);
}

uint64_t (*SupportAppView.lastReport.modify(void *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1002164A4();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for SupportAppView(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D780, &qword_1002265D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A8;
}

uint64_t SupportAppView.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for SupportAppView(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 28);
  v4 = sub_1002164A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t SupportAppDevice.serialNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t (*SupportAppDevice.lastHealthReport.modify(void *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1002164A4();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for SupportAppDevice(0) + 48);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D780, &qword_1002265D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A8;
}

uint64_t SupportAppDevice.status.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t SupportAppDevice.modelID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SupportAppDevice.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v2 = type metadata accessor for SupportAppDevice(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 48);
  v4 = sub_1002164A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t GetSupportAppInfoRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*GetSupportAppInfoRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t GetSupportAppInfoRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*GetSupportAppInfoRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t sub_1000A4284@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v4 = a2(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Metrics(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = *(v4 + 28);
  v8 = type metadata accessor for AccountInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t GetSupportAppInfoResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  type metadata accessor for GetSupportAppInfoResponse(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000A4440@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_100019C6C(v2 + *(v9 + 40), v8, &unk_10029D6F0, &qword_100226B40);
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1000F89AC(v8, a2, type metadata accessor for AccountInfo);
  }

  *a2 = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  return result;
}

uint64_t ResetAccountCDPContentsRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 40);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ResetAccountCDPContentsRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 40);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t ResetAccountCDPContentsRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 44);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ResetAccountCDPContentsRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 44);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t sub_1000A4CC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  v3 = a1(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(v3 + 40);
  v5 = type metadata accessor for AccountInfo(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 44);
  v7 = type metadata accessor for Metrics(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1000A4E68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_100019C6C(v2 + *(v9 + 48), v8, &qword_10029D780, &qword_1002265D0);
  v10 = sub_1002164A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_100216494();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v8, &qword_10029D780, &qword_1002265D0);
  }

  return result;
}

uint64_t sub_1000A4FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  sub_1000114D4(v2 + v4, &qword_10029D780, &qword_1002265D0);
  v5 = sub_1002164A4();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*EscrowInformation.creationDate.modify(void *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1002164A4();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for EscrowInformation(0) + 48);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D780, &qword_1002265D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A8;
}

uint64_t EscrowInformation.escrowInformationMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for EscrowInformation(0);
  sub_100019C6C(v1 + *(v7 + 52), v6, &unk_10029DAA0, &qword_10021E870);
  v8 = type metadata accessor for EscrowInformation.Metadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for EscrowInformation.Metadata);
  }

  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v10 = *(v8 + 20);
  if (qword_1002974B8 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100298568;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1000114D4(v6, &unk_10029DAA0, &qword_10021E870);
  }

  return result;
}

uint64_t EscrowInformation.escrowInformationMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EscrowInformation(0) + 52);
  sub_1000114D4(v1 + v3, &unk_10029DAA0, &qword_10021E870);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for EscrowInformation.Metadata);
  v4 = type metadata accessor for EscrowInformation.Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*EscrowInformation.escrowInformationMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029DAA0, &qword_10021E870) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for EscrowInformation.Metadata(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for EscrowInformation(0) + 52);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029DAA0, &qword_10021E870);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v16 = *(v8 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100298568;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000114D4(v7, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for EscrowInformation.Metadata);
  }

  return sub_1000A5844;
}

void sub_1000A5844(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for EscrowInformation.Metadata);
    sub_1000114D4(v9 + v3, &unk_10029DAA0, &qword_10021E870);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for EscrowInformation.Metadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for EscrowInformation.Metadata);
  }

  else
  {
    sub_1000114D4(v9 + v3, &unk_10029DAA0, &qword_10021E870);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for EscrowInformation.Metadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t EscrowInformation.viabilityStatus.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t EscrowInformation.federationID.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t EscrowInformation.expectedFederationID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t EscrowInformation.Metadata.backupKeybagDigest.getter()
{
  v1 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_100012558(v2, *(v1 + 24));
  return v2;
}

void EscrowInformation.Metadata.backupKeybagDigest.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000E0598(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  v9 = *v8->endpoint;
  v10 = *v8->containerMap;
  *v8->endpoint = a1;
  *v8->containerMap = a2;
  sub_100002BF0(v9, v10, v11, v12, v13, v14, v15, v16);
}

void (*EscrowInformation.Metadata.backupKeybagDigest.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v4 + 72) = v7;
  *(v4 + 80) = v8;
  sub_100012558(v7, v8);
  return sub_1000A5D44;
}

void sub_1000A5D44(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_100012558(*(*a1 + 72), v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v8 = sub_1000E0598(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    v11 = *v8->endpoint;
    v12 = *v8->containerMap;
    *v8->endpoint = v3;
    *v8->containerMap = v5;
    sub_100002BF0(v11, v12, v13, v14, v15, v16, v17, v18);
    v25 = *(v2 + 72);
    v26 = *(v2 + 80);
  }

  else
  {
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v6 + v4);
    if ((v27 & 1) == 0)
    {
      v29 = *(v2 + 96);
      v30 = *(v2 + 88);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v28 = sub_1000E0598(v28);
      *(v30 + v29) = v28;
    }

    swift_beginAccess();
    v25 = *v28->endpoint;
    v26 = *v28->containerMap;
    *v28->endpoint = v3;
    *v28->containerMap = v5;
  }

  sub_100002BF0(v25, v26, v19, v20, v21, v22, v23, v24);

  free(v2);
}

uint64_t EscrowInformation.Metadata.clientMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_100298660, &qword_10021E878);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v8 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(v7 + v8, v6, &qword_100298660, &qword_10021E878);
  v9 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v11 = *(v9 + 64);
  v12 = sub_1002164A4();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_100298660, &qword_10021E878);
  }

  return result;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = 0;
  v2 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 64);
  v4 = sub_1002164A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t EscrowInformation.Metadata.clientMetadata.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298660, &qword_10021E878);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000E0598(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v11 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_100298660, &qword_10021E878);
  return swift_endAccess();
}

void (*EscrowInformation.Metadata.clientMetadata.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_10001148C(&qword_100298660, &qword_10021E878) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100298660, &qword_10021E878);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0xE000000000000000;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0xE000000000000000;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0xE000000000000000;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0xE000000000000000;
    *(v13 + 88) = 0;
    *(v13 + 96) = 0xE000000000000000;
    *(v13 + 104) = 0;
    *(v13 + 112) = 0xE000000000000000;
    *(v13 + 120) = 0;
    *(v13 + 128) = 0xE000000000000000;
    *(v13 + 136) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v18 = *(v8 + 64);
    v19 = sub_1002164A4();
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  return sub_1000A653C;
}

void sub_1000A653C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000E0598(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_100298660, &qword_10021E878);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000E0598(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_100298660, &qword_10021E878);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL EscrowInformation.Metadata.hasClientMetadata.getter()
{
  v1 = sub_10001148C(&qword_100298660, &qword_10021E878);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v6 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_100298660, &qword_10021E878);
  v7 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_100298660, &qword_10021E878);
  return v8;
}

Swift::Void __swiftcall EscrowInformation.Metadata.clearClientMetadata()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100298660, &qword_10021E878);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000E0598(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_100298660, &qword_10021E878);
  swift_endAccess();
}

uint64_t EscrowInformation.Metadata.secureBackupUsesMultipleIcscs.getter()
{
  v1 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v2 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t EscrowInformation.Metadata.secureBackupUsesMultipleIcscs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_1000E0598(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  result = swift_beginAccess();
  *&v6->_TtCs12_SwiftObject_opaque[v7] = a1;
  return result;
}

void (*EscrowInformation.Metadata.secureBackupUsesMultipleIcscs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_1000A6B88;
}

void sub_1000A6B88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v7 = sub_1000E0598(v7);
    *(v9 + v8) = v7;
  }

  v10 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  *&v7->_TtCs12_SwiftObject_opaque[v10] = v3;

  free(v2);
}

void (*EscrowInformation.Metadata.bottleID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000A6D20;
}

uint64_t EscrowInformation.Metadata.secureBackupTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v8 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_100019C6C(v7 + v8, v6, &qword_10029D780, &qword_1002265D0);
  v9 = sub_1002164A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  sub_100216494();
  result = (v11)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_10029D780, &qword_1002265D0);
  }

  return result;
}

uint64_t EscrowInformation.Metadata.secureBackupTimestamp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000E0598(v10);
    *(v2 + v8) = v10;
  }

  v11 = sub_1002164A4();
  v12 = *(v11 - 8);
  (*(v12 + 32))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  v13 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v13], &qword_10029D780, &qword_1002265D0);
  return swift_endAccess();
}

void (*EscrowInformation.Metadata.secureBackupTimestamp.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = sub_1002164A4();
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_10029D780, &qword_1002265D0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000A729C;
}

void sub_1000A729C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    (*(*(v2 + 104) + 16))(*(v2 + 112), *(v2 + 120), *(v2 + 96));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000E0598(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_10029D780, &qword_1002265D0);
    swift_endAccess();
    (*(v12 + 8))(v9, v11);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000E0598(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    (*(v22 + 32))(v14, v9, v21);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_10029D780, &qword_1002265D0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL EscrowInformation.Metadata.hasSecureBackupTimestamp.getter()
{
  v1 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v6 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_10029D780, &qword_1002265D0);
  v7 = sub_1002164A4();
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_10029D780, &qword_1002265D0);
  return v8;
}

Swift::Void __swiftcall EscrowInformation.Metadata.clearSecureBackupTimestamp()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000E0598(v8);
    *(v1 + v6) = v8;
  }

  v9 = sub_1002164A4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_10029D780, &qword_1002265D0);
  swift_endAccess();
}

void (*EscrowInformation.Metadata.escrowedSpki.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_100012558(v7, v8);
  return sub_1000A781C;
}

uint64_t sub_1000A7834(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20)) + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_100012558(*v2, *(v2 + 8));
  return v3;
}

void sub_1000A78AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000E0598(v10);
    *(v5 + v8) = v10;
  }

  v11 = &v10->_TtCs12_SwiftObject_opaque[*a3];
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  *v11 = a1;
  *(v11 + 1) = a2;
  sub_100002BF0(v12, v13, v14, v15, v16, v17, v18, v19);
}

void (*EscrowInformation.Metadata.peerInfo.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_100012558(v7, v8);
  return sub_1000A7A10;
}

void sub_1000A7A1C(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    sub_100012558(*(*a1 + 72), v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v4 + 96);
      v12 = *(v4 + 88);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v10 = sub_1000E0598(v10);
      *(v12 + v11) = v10;
    }

    v13 = &v10->_TtCs12_SwiftObject_opaque[*a3];
    swift_beginAccess();
    v14 = *v13;
    v15 = *(v13 + 1);
    *v13 = v5;
    *(v13 + 1) = v7;
    sub_100002BF0(v14, v15, v16, v17, v18, v19, v20, v21);
    v28 = *(v4 + 72);
    v29 = *(v4 + 80);
  }

  else
  {
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v8 + v6);
    if ((v30 & 1) == 0)
    {
      v32 = *(v4 + 96);
      v33 = *(v4 + 88);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v31 = sub_1000E0598(v31);
      *(v33 + v32) = v31;
    }

    v34 = &v31->_TtCs12_SwiftObject_opaque[*a3];
    swift_beginAccess();
    v28 = *v34;
    v29 = *(v34 + 1);
    *v34 = v5;
    *(v34 + 1) = v7;
  }

  sub_100002BF0(v28, v29, v22, v23, v24, v25, v26, v27);

  free(v4);
}

uint64_t sub_1000A7B78(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20)) + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void sub_1000A7BEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000E0598(v10);
    *(v5 + v8) = v10;
  }

  v11 = &v10->_TtCs12_SwiftObject_opaque[*a3];
  swift_beginAccess();
  v12 = *(v11 + 1);
  *v11 = a1;
  *(v11 + 1) = a2;
  v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29;
}

void (*EscrowInformation.Metadata.serial.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000A7D54;
}

void sub_1000A7D60(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v4 + 96);
      v12 = *(v4 + 88);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v10 = sub_1000E0598(v10);
      *(v12 + v11) = v10;
    }

    v13 = &v10->_TtCs12_SwiftObject_opaque[*a3];
    swift_beginAccess();
    v14 = *(v13 + 1);
    *v13 = v5;
    *(v13 + 1) = v7;
    v14, v15, v16, v17, v18, v19, v20, v21, v35, v36, v37, v38, v39, v40, v41, v42, vars0, vars8;
    v29 = *(v4 + 80);
  }

  else
  {
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v8 + v6);
    if ((v30 & 1) == 0)
    {
      v32 = *(v4 + 96);
      v33 = *(v4 + 88);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v31 = sub_1000E0598(v31);
      *(v33 + v32) = v31;
    }

    v34 = &v31->_TtCs12_SwiftObject_opaque[*a3];
    swift_beginAccess();
    v29 = *(v34 + 1);
    *v34 = v5;
    *(v34 + 1) = v7;
  }

  v29, v22, v23, v24, v25, v26, v27, v28, v35, v36, v37, v38, v39, v40, v41, v42, vars0, vars8;

  free(v4);
}

void (*EscrowInformation.Metadata.build.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000A7F78;
}

uint64_t EscrowInformation.Metadata.passcodeGeneration.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v8 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_100019C6C(v7 + v8, v6, &qword_1002986A8, &qword_10021E880);
  v9 = type metadata accessor for PasscodeGeneration(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for PasscodeGeneration);
  }

  *a1 = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_1002986A8, &qword_10021E880);
  }

  return result;
}

uint64_t EscrowInformation.Metadata.passcodeGeneration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000E0598(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for PasscodeGeneration);
  v11 = type metadata accessor for PasscodeGeneration(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_1002986A8, &qword_10021E880);
  return swift_endAccess();
}

void (*EscrowInformation.Metadata.passcodeGeneration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_10001148C(&qword_1002986A8, &qword_10021E880) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for PasscodeGeneration(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_1002986A8, &qword_10021E880);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_1002986A8, &qword_10021E880);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for PasscodeGeneration);
  }

  return sub_1000A84C8;
}

void sub_1000A84C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for PasscodeGeneration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000E0598(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for PasscodeGeneration);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_1002986A8, &qword_10021E880);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for PasscodeGeneration);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000E0598(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for PasscodeGeneration);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_1002986A8, &qword_10021E880);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL EscrowInformation.Metadata.hasPasscodeGeneration.getter()
{
  v1 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v6 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_1002986A8, &qword_10021E880);
  v7 = type metadata accessor for PasscodeGeneration(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_1002986A8, &qword_10021E880);
  return v8;
}

Swift::Void __swiftcall EscrowInformation.Metadata.clearPasscodeGeneration()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000E0598(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for PasscodeGeneration(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_1002986A8, &qword_10021E880);
  swift_endAccess();
}

uint64_t EscrowInformation.Metadata.ClientMetadata.secureBackupMetadataTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  sub_100019C6C(v1 + *(v7 + 64), v6, &qword_10029D780, &qword_1002265D0);
  v8 = sub_1002164A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_100216494();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_10029D780, &qword_1002265D0);
  }

  return result;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.secureBackupMetadataTimestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0) + 64);
  sub_1000114D4(v1 + v3, &qword_10029D780, &qword_1002265D0);
  v4 = sub_1002164A4();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*EscrowInformation.Metadata.ClientMetadata.secureBackupMetadataTimestamp.modify(void *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1002164A4();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0) + 64);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D780, &qword_1002265D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A8;
}

BOOL EscrowInformation.Metadata.ClientMetadata.hasSecureBackupMetadataTimestamp.getter()
{
  v1 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  sub_100019C6C(v0 + *(v5 + 64), v4, &qword_10029D780, &qword_1002265D0);
  v6 = sub_1002164A4();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000114D4(v4, &qword_10029D780, &qword_1002265D0);
  return v7;
}

Swift::Void __swiftcall EscrowInformation.Metadata.ClientMetadata.clearSecureBackupMetadataTimestamp()()
{
  v1 = *(type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0) + 64);
  sub_1000114D4(v0 + v1, &qword_10029D780, &qword_1002265D0);
  v2 = sub_1002164A4();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceEnclosureColor.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceMid.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceModel.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceModelClass.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceModelVersion.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceName.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_1000A921C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 60);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A92B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 60);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PCSService.publicKey.getter()
{
  v1 = *(v0 + 8);
  sub_100012558(v1, *(v0 + 16));
  return v1;
}

void PCSService.publicKey.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100002BF0(*(v8 + 8), *(v8 + 16), a3, a4, a5, a6, a7, a8);
  *(v8 + 8) = a1;
  *(v8 + 16) = a2;
}

uint64_t PCSService.zone.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1000A946C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A9508(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PCSService.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_10021D470;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  type metadata accessor for PCSService(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t DirectPCSIdentityFetchRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*DirectPCSIdentityFetchRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t DirectPCSIdentityFetchRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*DirectPCSIdentityFetchRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t sub_1000A9D74(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_1000114D4(v2 + v4, &qword_10029D9C0, &qword_100226740);
  v5 = sub_100216424();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*DirectPCSIdentity.item.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D9C0, &qword_100226740) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_100216424();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DirectPCSIdentity(0) + 20);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D9C0, &qword_100226740);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216414();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D9C0, &qword_100226740);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A4;
}

uint64_t DirectPCSIdentity.pcsService.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DirectPCSIdentity(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297E18, &qword_10021DA28);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for PCSService);
  v4 = type metadata accessor for PCSService(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*DirectPCSIdentity.pcsService.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297E18, &qword_10021DA28) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for PCSService(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DirectPCSIdentity(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297E18, &qword_10021DA28);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = xmmword_10021D470;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297E18, &qword_10021DA28);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for PCSService);
  }

  return sub_1000AA3B4;
}

void sub_1000AA3B4(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for PCSService);
    sub_1000114D4(v9 + v3, &qword_100297E18, &qword_10021DA28);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for PCSService);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for PCSService);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_100297E18, &qword_10021DA28);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for PCSService);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1000AA5D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v8 = a1(0);
  v9 = *(v8 + 20);
  v10 = a2(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = a3(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a4 + v11, 1, 1, v12);
}

uint64_t sub_1000AA7E0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a1(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t CurrentItemFetchRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrentItemFetchRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CurrentItemFetchRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CurrentItemFetchRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t CurrentItemFetchRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrentItemFetchRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CurrentItemFetchRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CurrentItemFetchRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

void (*CurrentCKKSItem.item.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D9C0, &qword_100226740) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_100216424();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CurrentCKKSItem(0) + 20);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D9C0, &qword_100226740);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216414();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D9C0, &qword_100226740);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000AB18C;
}

uint64_t CurrentCKKSItem.itemSpecifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrentCKKSItem(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100298588, &unk_10021E7E0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for CurrentCKKSItemSpecifier);
  v4 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CurrentCKKSItem.itemSpecifier.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100298588, &unk_10021E7E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CurrentCKKSItem(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100298588, &unk_10021E7E0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100298588, &unk_10021E7E0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for CurrentCKKSItemSpecifier);
  }

  return sub_1000AB4EC;
}

void sub_1000AB4EC(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for CurrentCKKSItemSpecifier);
    sub_1000114D4(v9 + v3, &qword_100298588, &unk_10021E7E0);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for CurrentCKKSItemSpecifier);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for CurrentCKKSItemSpecifier);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_100298588, &unk_10021E7E0);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for CurrentCKKSItemSpecifier);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1000AB7D0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  a2[1] = _swiftEmptyArrayStorage;
  a1(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t RemoveUnreadableCKServerDataRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RemoveUnreadableCKServerDataRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t sub_1000ABB7C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_100019C6C(v2 + *(v9 + 28), v8, &unk_10029D6F0, &qword_100226B40);
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1000F89AC(v8, a2, type metadata accessor for AccountInfo);
  }

  *a2 = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  return result;
}

uint64_t RemoveUnreadableCKServerDataRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RemoveUnreadableCKServerDataRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t RemoveUnreadableCKServerDataRequest.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Metrics(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for AccountInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t _s18TrustedPeersHelper10EscrowPairV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002164D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s18TrustedPeersHelper10EscrowPairV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_1002164D4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1000AC244()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ViewKeyClass._protobuf_nameMap);
  sub_100002648(v0, static ViewKeyClass._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VIEW_KEY_CLASS_TLK";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIEW_KEY_CLASS_CLASS_A";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "VIEW_KEY_CLASS_CLASS_C";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AC4BC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ResetReason._protobuf_nameMap);
  sub_100002648(v0, static ResetReason._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D5F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RESET_REASON_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RESET_REASON_USER_INITIATED_RESET";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RESET_REASON_HEALTH_CHECK";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RESET_REASON_NO_BOTTLE_DURING_ESCROW_RECOVERY";
  *(v14 + 1) = 45;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RESET_REASON_LEGACY_JOIN_CIRCLE";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RESET_REASON_RECOVERY_KEY";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RESET_REASON_TEST_GENERATED";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "RESET_REASON_SUPPORT_APP_INITIATED_RESET";
  *(v22 + 1) = 40;
  v22[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AC874()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static AccountFlags._protobuf_nameMap);
  sub_100002648(v0, static AccountFlags._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ACCOUNT_FLAGS_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ACCOUNT_FLAGS_INTERNAL";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ACCOUNT_FLAGS_DEMO";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ACCOUNT_FLAGS_DBR";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "ACCOUNT_FLAGS_SA_OR_2FAFA";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "ACCOUNT_FLAGS_CDP";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000ACBA8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FilteringRequest._protobuf_nameMap);
  sub_100002648(v0, static FilteringRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FILTERING_REQUEST_UNKNOWN";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FILTERING_REQUEST_BY_OCTAGON_ONLY";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000ACDDC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static RepairAction._protobuf_nameMap);
  sub_100002648(v0, static RepairAction._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REPAIR_ACTION_NO_ACTION";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REPAIR_ACTION_POST_REPAIR_ACCOUNT";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REPAIR_ACTION_POST_REPAIR_ESCROW";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REPAIR_ACTION_RESET_OCTAGON";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "REPAIR_ACTION_LEAVE_TRUST";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "REPAIR_ACTION_REROLL";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AD110()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowCheckResult._protobuf_nameMap);
  sub_100002648(v0, static EscrowCheckResult._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ESCROW_CHECK_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ESCROW_CHECK_OK";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ESCROW_CHECK_REPAIR_NEEDED";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ESCROW_CHECK_NA";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AD3C0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowRepairReason._protobuf_nameMap);
  sub_100002648(v0, static EscrowRepairReason._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RECORD_REPAIR_REASON_UNKNOWN";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RECORD_OK";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NO_RECORD_MATCHING_PEER";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NO_RECORD_MATCHING_PASSCODE_GENERATION";
  *(v14 + 1) = 38;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NO_RECORD_MATCHING_RECOVERABLE";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RECORD_NEEDS_MIGRATION";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AD6F4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowCheckGraphStatus._protobuf_nameMap);
  sub_100002648(v0, static EscrowCheckGraphStatus._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GRAPH_STATUS_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GRAPH_OK";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PEER_UNTRUSTED";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GRAPH_NEEDS_REPAIR";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AD9A4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SupportAppDeviceStatus._protobuf_nameMap);
  sub_100002648(v0, static SupportAppDeviceStatus._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SUPPORT_APP_DEVICE_STATUS_HEALTHY";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUPPORT_APP_DEVICE_STATUS_BROKEN";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000ADBD8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static RecordStatus._protobuf_nameMap);
  sub_100002648(v0, static RecordStatus._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RECORD_STATUS_VALID";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RECORD_STATUS_INVALID";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000ADE0C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SOSViability._protobuf_nameMap);
  sub_100002648(v0, static SOSViability._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SOS_VIABLE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SOS_VIABLE";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SOS_NOT_VIABLE";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AE0B0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedPeerPermanentInfo._protobuf_nameMap);
  sub_100002648(v0, static SignedPeerPermanentInfo._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "peer_permanent_info";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AE378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD58, type metadata accessor for SignedPeerPermanentInfo, &protocol conformance descriptor for SignedPeerPermanentInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AE418(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298B48, type metadata accessor for SignedPeerPermanentInfo, &protocol conformance descriptor for SignedPeerPermanentInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AE484(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298B48, type metadata accessor for SignedPeerPermanentInfo, &protocol conformance descriptor for SignedPeerPermanentInfo);

  return sub_100216644();
}

uint64_t sub_1000AE528()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedPeerStableInfo._protobuf_nameMap);
  sub_100002648(v0, static SignedPeerStableInfo._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "peer_stable_info";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AE76C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 == v11)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_100216684();
  if (v5)
  {
    return result;
  }

LABEL_10:
  v13 = v4[2];
  v14 = v4[3];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_19;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_100216684();
      if (v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 != v17)
  {
    goto LABEL_18;
  }

LABEL_19:
  a4(0);
  return sub_1002164B4();
}

uint64_t sub_1000AE8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD50, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AE990(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AE9FC(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);

  return sub_100216644();
}

uint64_t sub_1000AEAA0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedPeerDynamicInfo._protobuf_nameMap);
  sub_100002648(v0, static SignedPeerDynamicInfo._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "peer_dynamic_info";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AED44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD48, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AEDE4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AEE50(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);

  return sub_100216644();
}

uint64_t sub_1000AEEFC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedVoucher._protobuf_nameMap);
  sub_100002648(v0, static SignedVoucher._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "voucher";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AF1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD40, type metadata accessor for SignedVoucher, &protocol conformance descriptor for SignedVoucher);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AF264(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_10029D8A0, type metadata accessor for SignedVoucher, &protocol conformance descriptor for SignedVoucher);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AF2D0(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_10029D8A0, type metadata accessor for SignedVoucher, &protocol conformance descriptor for SignedVoucher);

  return sub_100216644();
}

uint64_t sub_1000AF374()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedRecoveryVoucher._protobuf_nameMap);
  sub_100002648(v0, static SignedRecoveryVoucher._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "recovery_voucher";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AF618(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD38, type metadata accessor for SignedRecoveryVoucher, &protocol conformance descriptor for SignedRecoveryVoucher);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AF694(uint64_t a1, uint64_t a2)
{
  if (!sub_100052F18(*v2, *(v2 + 8), *a1, *(a1 + 8)) || !sub_100052F18(*(v2 + 16), *(v2 + 24), *(a1 + 16), *(a1 + 24)))
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000AF76C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298BA0, type metadata accessor for SignedRecoveryVoucher, &protocol conformance descriptor for SignedRecoveryVoucher);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AF7D8(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298BA0, type metadata accessor for SignedRecoveryVoucher, &protocol conformance descriptor for SignedRecoveryVoucher);

  return sub_100216644();
}

uint64_t sub_1000AF87C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedCustodianRecoveryKey._protobuf_nameMap);
  sub_100002648(v0, static SignedCustodianRecoveryKey._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "custodian_recovery_key";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AFAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!sub_100052F18(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_100052F18(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  a3(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000AFC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD30, type metadata accessor for SignedCustodianRecoveryKey, &protocol conformance descriptor for SignedCustodianRecoveryKey);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AFCA0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298BB8, type metadata accessor for SignedCustodianRecoveryKey, &protocol conformance descriptor for SignedCustodianRecoveryKey);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AFD0C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298BB8, type metadata accessor for SignedCustodianRecoveryKey, &protocol conformance descriptor for SignedCustodianRecoveryKey);

  return sub_100216644();
}

uint64_t sub_1000AFD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_100052F18(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_100052F18(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000AFE6C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static IdmsTrustedDevicesVersion._protobuf_nameMap);
  sub_100002648(v0, static IdmsTrustedDevicesVersion._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "IdmsTrustedDevicesVersionString";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t IdmsTrustedDevicesVersion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1002165B4();
    }

    else if (result == 2)
    {
      sub_1000B010C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000B010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IdmsTrustedDevicesVersion(0);
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  return sub_1002165F4();
}

uint64_t IdmsTrustedDevicesVersion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    result = sub_1000B026C(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for IdmsTrustedDevicesVersion(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000B026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1002164A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &qword_10029D780, &qword_1002265D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_10029D780, &qword_1002265D0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000B04D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 24);
  v5 = sub_1002164A4();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1000B05B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD28, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B0650(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B06BC(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);

  return sub_100216644();
}

uint64_t sub_1000B0754()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static Peer._protobuf_nameMap);
  sub_100002648(v0, static Peer._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "peer_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "permanent_info_and_sig";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stable_info_and_sig";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dynamic_info_and_sig";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "vouchers";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "recovery_voucher";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "custodian_recovery_key_and_sig";
  *(v20 + 1) = 30;
  v20[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t Peer.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_1002165B4();
            break;
          case 2:
            sub_1000B0C6C(a1, v5, a2, a3);
            break;
          case 3:
            sub_1000B0D20(a1, v5, a2, a3);
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          sub_1000B0E88(a1, v5, a2, a3);
        }

        else if (result == 7)
        {
          sub_1000B0F3C(a1, v5, a2, a3);
        }
      }

      else if (result == 4)
      {
        sub_1000B0DD4(a1, v5, a2, a3);
      }

      else
      {
        type metadata accessor for SignedVoucher(0);
        sub_1000F9F28(&qword_10029D8A0, type metadata accessor for SignedVoucher, &protocol conformance descriptor for SignedVoucher);
        sub_1002165E4();
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000B0C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Peer(0);
  type metadata accessor for SignedPeerPermanentInfo(0);
  sub_1000F9F28(&qword_100298B48, type metadata accessor for SignedPeerPermanentInfo, &protocol conformance descriptor for SignedPeerPermanentInfo);
  return sub_1002165F4();
}

uint64_t sub_1000B0D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Peer(0);
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  return sub_1002165F4();
}

uint64_t sub_1000B0DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Peer(0);
  type metadata accessor for SignedPeerDynamicInfo(0);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);
  return sub_1002165F4();
}

uint64_t sub_1000B0E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Peer(0);
  type metadata accessor for SignedRecoveryVoucher(0);
  sub_1000F9F28(&qword_100298BA0, type metadata accessor for SignedRecoveryVoucher, &protocol conformance descriptor for SignedRecoveryVoucher);
  return sub_1002165F4();
}

uint64_t sub_1000B0F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Peer(0);
  type metadata accessor for SignedCustodianRecoveryKey(0);
  sub_1000F9F28(&qword_100298BB8, type metadata accessor for SignedCustodianRecoveryKey, &protocol conformance descriptor for SignedCustodianRecoveryKey);
  return sub_1002165F4();
}

uint64_t Peer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    result = sub_1000B1180(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000B139C(v3, a1, a2, a3);
      sub_1000B15B8(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for SignedVoucher(0);
        sub_1000F9F28(&qword_10029D8A0, type metadata accessor for SignedVoucher, &protocol conformance descriptor for SignedVoucher);
        sub_1002166F4();
      }

      sub_1000B17D4(v3, a1, a2, a3);
      sub_1000B19F0(v3, a1, a2, a3);
      type metadata accessor for Peer(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000B1180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerPermanentInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v14 + 28), v8, &qword_10029DA00, &unk_10021E800);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_10029DA00, &unk_10021E800);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerPermanentInfo);
  sub_1000F9F28(&qword_100298B48, type metadata accessor for SignedPeerPermanentInfo, &protocol conformance descriptor for SignedPeerPermanentInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerPermanentInfo);
}

uint64_t sub_1000B139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerStableInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v14 + 32), v8, &qword_1002985A8, &unk_100226650);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000B15B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerDynamicInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v14 + 36), v8, &unk_10029D760, &qword_10021E810);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D760, &qword_10021E810);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerDynamicInfo);
}

uint64_t sub_1000B17D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_1002985B0, &qword_10021E818);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedRecoveryVoucher(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v14 + 40), v8, &qword_1002985B0, &qword_10021E818);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_1002985B0, &qword_10021E818);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedRecoveryVoucher);
  sub_1000F9F28(&qword_100298BA0, type metadata accessor for SignedRecoveryVoucher, &protocol conformance descriptor for SignedRecoveryVoucher);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedRecoveryVoucher);
}

uint64_t sub_1000B19F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v14 + 44), v8, &unk_10029D7B0, &unk_10021E820);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D7B0, &unk_10021E820);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedCustodianRecoveryKey);
  sub_1000F9F28(&qword_100298BB8, type metadata accessor for SignedCustodianRecoveryKey, &protocol conformance descriptor for SignedCustodianRecoveryKey);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedCustodianRecoveryKey);
}

uint64_t sub_1000B1C54@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = _swiftEmptyArrayStorage;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = a1[7];
  v5 = type metadata accessor for SignedPeerPermanentInfo(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[10];
  v11 = type metadata accessor for SignedRecoveryVoucher(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = a1[11];
  v13 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(&a2[v12], 1, 1, v13);
}

uint64_t sub_1000B1E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD20, type metadata accessor for Peer, &protocol conformance descriptor for Peer);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B1ED0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B1F3C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);

  return sub_100216644();
}

uint64_t sub_1000B1FEC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PeerDifference._protobuf_nameMap);
  sub_100002648(v0, static PeerDifference._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "add";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remove";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "update";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t PeerDifference.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1000B2E68(v5, a1, a2, a3);
        break;
      case 2:
        sub_1000B28AC(v5, a1, a2, a3);
        break;
      case 1:
        sub_1000B22FC(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1000B22FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Peer(0);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v46 = &v44 - v11;
  v12 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = &v44 - v23;
  v25 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v27 = __chkstk_darwin(v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  sub_100019C6C(a1, v15, &qword_100297E00, &qword_10021DA18);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    sub_1000114D4(v15, &qword_100297E00, &qword_10021DA18);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    sub_1000F89AC(v15, v24, type metadata accessor for PeerDifference.OneOf_Operation);
    sub_1000F89AC(v24, v21, type metadata accessor for PeerDifference.OneOf_Operation);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000F9228(v21, type metadata accessor for PeerDifference.OneOf_Operation);
      v36 = v51;
    }

    else
    {
      sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
      v38 = v46;
      sub_1000F89AC(v21, v46, type metadata accessor for Peer);
      sub_1000F89AC(v38, v31, type metadata accessor for Peer);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }
  }

  v39 = v49;
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  v40 = v50;
  sub_1002165F4();
  if (v40)
  {
    return sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
  }

  sub_100019C6C(v31, v39, &unk_10029D7A0, &qword_10021E858);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
    return sub_1000114D4(v39, &unk_10029D7A0, &qword_10021E858);
  }

  else
  {
    v42 = v47;
    sub_1000F89AC(v39, v47, type metadata accessor for Peer);
    if (v35 != 1)
    {
      sub_100216544();
    }

    sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
    v43 = v45;
    sub_1000114D4(v45, &qword_100297E00, &qword_10021DA18);
    sub_1000F89AC(v42, v43, type metadata accessor for Peer);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t sub_1000B28AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Peer(0);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v47 = &v44 - v11;
  v12 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = &v44 - v23;
  v25 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v27 = __chkstk_darwin(v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  sub_100019C6C(a1, v15, &qword_100297E00, &qword_10021DA18);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    sub_1000114D4(v15, &qword_100297E00, &qword_10021DA18);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    sub_1000F89AC(v15, v24, type metadata accessor for PeerDifference.OneOf_Operation);
    sub_1000F89AC(v24, v21, type metadata accessor for PeerDifference.OneOf_Operation);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
      v38 = v47;
      sub_1000F89AC(v21, v47, type metadata accessor for Peer);
      sub_1000F89AC(v38, v31, type metadata accessor for Peer);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      sub_1000F9228(v21, type metadata accessor for PeerDifference.OneOf_Operation);
      v36 = v51;
    }
  }

  v39 = v49;
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  v40 = v50;
  sub_1002165F4();
  if (v40)
  {
    return sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
  }

  sub_100019C6C(v31, v39, &unk_10029D7A0, &qword_10021E858);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
    return sub_1000114D4(v39, &unk_10029D7A0, &qword_10021E858);
  }

  else
  {
    v42 = v46;
    sub_1000F89AC(v39, v46, type metadata accessor for Peer);
    if (v35 != 1)
    {
      sub_100216544();
    }

    sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
    v43 = v45;
    sub_1000114D4(v45, &qword_100297E00, &qword_10021DA18);
    sub_1000F89AC(v42, v43, type metadata accessor for Peer);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t sub_1000B2E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Peer(0);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v47 = &v44 - v11;
  v12 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = &v44 - v23;
  v25 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v27 = __chkstk_darwin(v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  sub_100019C6C(a1, v15, &qword_100297E00, &qword_10021DA18);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    sub_1000114D4(v15, &qword_100297E00, &qword_10021DA18);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    sub_1000F89AC(v15, v24, type metadata accessor for PeerDifference.OneOf_Operation);
    sub_1000F89AC(v24, v21, type metadata accessor for PeerDifference.OneOf_Operation);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
      v38 = v47;
      sub_1000F89AC(v21, v47, type metadata accessor for Peer);
      sub_1000F89AC(v38, v31, type metadata accessor for Peer);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      sub_1000F9228(v21, type metadata accessor for PeerDifference.OneOf_Operation);
      v36 = v51;
    }
  }

  v39 = v49;
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  v40 = v50;
  sub_1002165F4();
  if (v40)
  {
    return sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
  }

  sub_100019C6C(v31, v39, &unk_10029D7A0, &qword_10021E858);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
    return sub_1000114D4(v39, &unk_10029D7A0, &qword_10021E858);
  }

  else
  {
    v42 = v46;
    sub_1000F89AC(v39, v46, type metadata accessor for Peer);
    if (v35 != 1)
    {
      sub_100216544();
    }

    sub_1000114D4(v31, &unk_10029D7A0, &qword_10021E858);
    v43 = v45;
    sub_1000114D4(v45, &qword_100297E00, &qword_10021DA18);
    sub_1000F89AC(v42, v43, type metadata accessor for Peer);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t PeerDifference.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v15 - v10;
  sub_100019C6C(v3, &v15 - v10, &qword_100297E00, &qword_10021DA18);
  v12 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000B3808(v3, a1, a2, a3);
    }

    else
    {
      sub_1000B3A40(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1000B35D4(v3, a1, a2, a3);
  }

  result = sub_1000F9228(v11, type metadata accessor for PeerDifference.OneOf_Operation);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for PeerDifference(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000B35D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Peer(0);
  __chkstk_darwin(v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019C6C(a1, v8, &qword_100297E00, &qword_10021DA18);
  v13 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000114D4(v8, &qword_100297E00, &qword_10021DA18);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1000F89AC(v8, v12, type metadata accessor for Peer);
    sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
    sub_100216704();
    return sub_1000F9228(v12, type metadata accessor for Peer);
  }

  result = sub_1000F9228(v8, type metadata accessor for PeerDifference.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_1000B3808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Peer(0);
  __chkstk_darwin(v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019C6C(a1, v8, &qword_100297E00, &qword_10021DA18);
  v13 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000114D4(v8, &qword_100297E00, &qword_10021DA18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000F89AC(v8, v12, type metadata accessor for Peer);
    sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
    sub_100216704();
    return sub_1000F9228(v12, type metadata accessor for Peer);
  }

  result = sub_1000F9228(v8, type metadata accessor for PeerDifference.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_1000B3A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Peer(0);
  __chkstk_darwin(v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019C6C(a1, v8, &qword_100297E00, &qword_10021DA18);
  v13 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000114D4(v8, &qword_100297E00, &qword_10021DA18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1000F89AC(v8, v12, type metadata accessor for Peer);
    sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
    sub_100216704();
    return sub_1000F9228(v12, type metadata accessor for Peer);
  }

  result = sub_1000F9228(v8, type metadata accessor for PeerDifference.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_1000B3CC0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000B3D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD18, type metadata accessor for PeerDifference, &protocol conformance descriptor for PeerDifference);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B3E04(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298738, type metadata accessor for PeerDifference, &protocol conformance descriptor for PeerDifference);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3E70(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298738, type metadata accessor for PeerDifference, &protocol conformance descriptor for PeerDifference);

  return sub_100216644();
}

uint64_t sub_1000B3F10()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static TLKShare._protobuf_nameMap);
  sub_100002648(v0, static TLKShare._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10021DFD0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "view";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "curve";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "epoch";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "key_uuid";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "poisoned";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "receiver";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "receiver_public_encryption_key";
  *(v19 + 1) = 30;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "sender";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "signature";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "version";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "wrappedkey";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t TLKShare.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_100216534();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          goto LABEL_2;
        }

        if (result == 2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_18;
        }

LABEL_2:
        sub_1002165B4();
      }
    }

    else
    {
      if (result <= 9)
      {
        goto LABEL_2;
      }

      if (result == 10)
      {
LABEL_18:
        sub_100216594();
      }

      else if (result == 11)
      {
        goto LABEL_2;
      }
    }
  }
}

uint64_t TLKShare.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1002166C4(), !v4))
  {
    if (!v3[2] || (result = sub_1002166A4(), !v4))
    {
      if (!v3[3] || (result = sub_1002166A4(), !v4))
      {
        v8 = v3[5];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v3[4] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_1002166C4(), !v4))
        {
          if (!v3[6] || (result = sub_1002166A4(), !v4))
          {
            v10 = v3[8];
            v11 = HIBYTE(v10) & 0xF;
            if ((v10 & 0x2000000000000000) == 0)
            {
              v11 = v3[7] & 0xFFFFFFFFFFFFLL;
            }

            if (!v11 || (result = sub_1002166C4(), !v4))
            {
              v12 = v3[10];
              v13 = HIBYTE(v12) & 0xF;
              if ((v12 & 0x2000000000000000) == 0)
              {
                v13 = v3[9] & 0xFFFFFFFFFFFFLL;
              }

              if (!v13 || (result = sub_1002166C4(), !v4))
              {
                v14 = v3[12];
                v15 = HIBYTE(v14) & 0xF;
                if ((v14 & 0x2000000000000000) == 0)
                {
                  v15 = v3[11] & 0xFFFFFFFFFFFFLL;
                }

                if (!v15 || (result = sub_1002166C4(), !v4))
                {
                  v16 = v3[14];
                  v17 = HIBYTE(v16) & 0xF;
                  if ((v16 & 0x2000000000000000) == 0)
                  {
                    v17 = v3[13] & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v17 || (result = sub_1002166C4(), !v4))
                  {
                    if (!v3[15] || (result = sub_1002166A4(), !v4))
                    {
                      v18 = v3[17];
                      v19 = HIBYTE(v18) & 0xF;
                      if ((v18 & 0x2000000000000000) == 0)
                      {
                        v19 = v3[16] & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v19 || (result = sub_1002166C4(), !v4))
                      {
                        type metadata accessor for TLKShare(0);
                        return sub_1002164B4();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B470C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0xE000000000000000;
  a2[9] = 0;
  a2[10] = 0xE000000000000000;
  a2[11] = 0;
  a2[12] = 0xE000000000000000;
  a2[13] = 0;
  a2[14] = 0xE000000000000000;
  a2[15] = 0;
  a2[16] = 0;
  a2[17] = 0xE000000000000000;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000B47A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD10, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B4848(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B48B4(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);

  return sub_100216644();
}

uint64_t sub_1000B4958()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ViewKey._protobuf_nameMap);
  sub_100002648(v0, static ViewKey._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10021DFE0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "uuid";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "parentkey_uuid";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "keyclass";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "wrappedkey_base64";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "upload_os_version";
  *(v14 + 8) = 17;
  *(v14 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t ViewKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100216534();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_1002165B4();
        }
      }

      else if (result == 3)
      {
        sub_1000F9F70();
        sub_100216564();
      }

      else if (result == 4 || result == 5)
      {
        goto LABEL_4;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t ViewKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1002166C4(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1002166C4(), !v4))
    {
      if (!v3[4] || (sub_1000F9F70(), result = sub_100216674(), !v4))
      {
        v10 = v3[7];
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v3[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_1002166C4(), !v4))
        {
          v12 = v3[9];
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = v3[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (result = sub_1002166C4(), !v4))
          {
            type metadata accessor for ViewKey(0);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B4EF0@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000B4F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD08, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B5024(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B5090(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);

  return sub_100216644();
}

uint64_t sub_1000B5130()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ViewKeys._protobuf_nameMap);
  sub_100002648(v0, static ViewKeys._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10021DFE0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "view";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "new_tlk";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "new_class_a";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "new_class_c";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "old_tlk";
  *(v14 + 8) = 7;
  *(v14 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000B5410()
{
  type metadata accessor for ViewKeys._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  v2 = type metadata accessor for ViewKey(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC, 1, 1, v2);
  result = (v3)(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk, 1, 1, v2);
  qword_100298538 = v0;
  return result;
}

uint64_t sub_1000B551C(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v27 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  v8 = type metadata accessor for ViewKey(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  v9(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA, 1, 1, v8);
  v11 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  v9(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC, 1, 1, v8);
  v28 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  v9(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk, 1, 1, v8);
  swift_beginAccess();
  v12 = *a1->endpoint;
  v13 = *a1->containerMap;
  swift_beginAccess();
  *(v1 + 16) = v12;
  *(v1 + 24) = v13;
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v14], v6, &qword_100297F70, &qword_10021DBF8);
  swift_beginAccess();

  sub_1000F9E80(v6, v1 + v7, &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v15], v6, &qword_100297F70, &qword_10021DBF8);
  swift_beginAccess();
  sub_1000F9E80(v6, v1 + v10, &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v16], v6, &qword_100297F70, &qword_10021DBF8);
  swift_beginAccess();
  sub_1000F9E80(v6, v1 + v11, &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v17], v6, &qword_100297F70, &qword_10021DBF8);
  a1, v18, v19, v20, v21, v22, v23, v24;
  v25 = v28;
  swift_beginAccess();
  sub_1000F9E80(v6, v1 + v25, &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000B59A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularStringField(value:));
      }

      else if (result == 2)
      {
        sub_1000B5AC4(a2, a1, a3, a4);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1000B5BA0(a2, a1, a3, a4);
          break;
        case 4:
          sub_1000B5C7C(a2, a1, a3, a4);
          break;
        case 5:
          sub_1000B5D58(a2, a1, a3, a4);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1000B5AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ViewKey(0);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B5BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ViewKey(0);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B5C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ViewKey(0);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B5D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ViewKey(0);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);
  sub_1002165F4();
  return swift_endAccess();
}

void sub_1000B5E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = (v9 >> 56) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (, sub_1002166C4(), v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, !v4))
  {
    sub_1000B5F84(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1000B61AC(a1, a2, a3, a4);
      sub_1000B63D4(a1, a2, a3, a4);
      sub_1000B65FC(a1, a2, a3, a4);
    }
  }
}

uint64_t sub_1000B5F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for ViewKey(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_100297F70, &qword_10021DBF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297F70, &qword_10021DBF8);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for ViewKey);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for ViewKey);
}

uint64_t sub_1000B61AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for ViewKey(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_100297F70, &qword_10021DBF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297F70, &qword_10021DBF8);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for ViewKey);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for ViewKey);
}

uint64_t sub_1000B63D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for ViewKey(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_100297F70, &qword_10021DBF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297F70, &qword_10021DBF8);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for ViewKey);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for ViewKey);
}

uint64_t sub_1000B65FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for ViewKey(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_100297F70, &qword_10021DBF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297F70, &qword_10021DBF8);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for ViewKey);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey, &protocol conformance descriptor for ViewKey);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for ViewKey);
}

BOOL sub_1000B6824(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2)
{
  v159 = type metadata accessor for ViewKey(0);
  v161 = *(v159 - 8);
  __chkstk_darwin(v159, v4);
  v158 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10001148C(&qword_10029CDD8, &qword_100225D68);
  v7 = __chkstk_darwin(v160, v6);
  v9 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v153 = &v149 - v12;
  v14 = __chkstk_darwin(v11, v13);
  v157 = &v149 - v15;
  __chkstk_darwin(v14, v16);
  v18 = &v149 - v17;
  v19 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v23 = (&v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v21, v24);
  v154 = &v149 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v152 = (&v149 - v29);
  v31 = __chkstk_darwin(v28, v30);
  v156 = &v149 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v155 = (&v149 - v35);
  v37 = __chkstk_darwin(v34, v36);
  v39 = &v149 - v38;
  v41 = __chkstk_darwin(v37, v40);
  v43 = (&v149 - v42);
  __chkstk_darwin(v41, v44);
  v46 = &v149 - v45;
  swift_beginAccess();
  v48 = *a1->endpoint;
  v47 = *a1->containerMap;
  swift_beginAccess();
  if (__PAIR128__(v47, v48) != *(a2 + 16) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v149 = v23;
  v150 = v9;
  v49 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v49], v46, &qword_100297F70, &qword_10021DBF8);
  v50 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  v51 = *(v160 + 48);
  sub_100019C6C(v46, v18, &qword_100297F70, &qword_10021DBF8);
  sub_100019C6C(a2 + v50, &v18[v51], &qword_100297F70, &qword_10021DBF8);
  v53 = v161 + 48;
  v52 = *(v161 + 48);
  v54 = v159;
  if (v52(v18, 1, v159) == 1)
  {

    sub_1000114D4(v46, &qword_100297F70, &qword_10021DBF8);
    if (v52(&v18[v51], 1, v54) == 1)
    {
      v151 = v52;
      sub_1000114D4(v18, &qword_100297F70, &qword_10021DBF8);
      goto LABEL_10;
    }

LABEL_8:
    v55 = v18;
LABEL_23:
    sub_1000114D4(v55, &qword_10029CDD8, &qword_100225D68);
    goto LABEL_24;
  }

  sub_100019C6C(v18, v43, &qword_100297F70, &qword_10021DBF8);
  if (v52(&v18[v51], 1, v54) == 1)
  {

    sub_1000114D4(v46, &qword_100297F70, &qword_10021DBF8);
    sub_1000F9228(v43, type metadata accessor for ViewKey);
    goto LABEL_8;
  }

  v151 = v52;
  v56 = v158;
  sub_1000F89AC(&v18[v51], v158, type metadata accessor for ViewKey);

  LODWORD(v161) = _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(v43, v56);
  sub_1000F9228(v56, type metadata accessor for ViewKey);
  sub_1000114D4(v46, &qword_100297F70, &qword_10021DBF8);
  v54 = v159;
  sub_1000F9228(v43, type metadata accessor for ViewKey);
  sub_1000114D4(v18, &qword_100297F70, &qword_10021DBF8);
  if ((v161 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v161 = v53;
  v64 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v64], v39, &qword_100297F70, &qword_10021DBF8);
  v65 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  v66 = *(v160 + 48);
  v67 = v157;
  sub_100019C6C(v39, v157, &qword_100297F70, &qword_10021DBF8);
  sub_100019C6C(a2 + v65, v67 + v66, &qword_100297F70, &qword_10021DBF8);
  v68 = v151;
  if (v151(v67, 1, v54) == 1)
  {
    sub_1000114D4(v39, &qword_100297F70, &qword_10021DBF8);
    if (v68(v67 + v66, 1, v54) == 1)
    {
      v151 = v68;
      sub_1000114D4(v67, &qword_100297F70, &qword_10021DBF8);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v69 = v155;
  sub_100019C6C(v67, v155, &qword_100297F70, &qword_10021DBF8);
  if (v68(v67 + v66, 1, v54) == 1)
  {
    sub_1000114D4(v39, &qword_100297F70, &qword_10021DBF8);
    sub_1000F9228(v69, type metadata accessor for ViewKey);
LABEL_15:
    v55 = v67;
    goto LABEL_23;
  }

  v151 = v68;
  v70 = v158;
  sub_1000F89AC(v67 + v66, v158, type metadata accessor for ViewKey);
  v71 = _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(v69, v70);
  sub_1000F9228(v70, type metadata accessor for ViewKey);
  sub_1000114D4(v39, &qword_100297F70, &qword_10021DBF8);
  sub_1000F9228(v69, type metadata accessor for ViewKey);
  v54 = v159;
  sub_1000114D4(v67, &qword_100297F70, &qword_10021DBF8);
  if ((v71 & 1) == 0)
  {
LABEL_24:
    a1, v57, v58, v59, v60, v61, v62, v63;
    a2, v83, v84, v85, v86, v87, v88, v89;
    return 0;
  }

LABEL_17:
  v72 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  v73 = v156;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v72], v156, &qword_100297F70, &qword_10021DBF8);
  v74 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  v75 = *(v160 + 48);
  v76 = v153;
  sub_100019C6C(v73, v153, &qword_100297F70, &qword_10021DBF8);
  v77 = v76;
  sub_100019C6C(a2 + v74, v76 + v75, &qword_100297F70, &qword_10021DBF8);
  v78 = v151;
  if (v151(v76, 1, v54) == 1)
  {
    sub_1000114D4(v73, &qword_100297F70, &qword_10021DBF8);
    v79 = v78(v76 + v75, 1, v54);
    v80 = v154;
    if (v79 == 1)
    {
      sub_1000114D4(v77, &qword_100297F70, &qword_10021DBF8);
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v81 = v152;
  sub_100019C6C(v76, v152, &qword_100297F70, &qword_10021DBF8);
  v82 = v78(v76 + v75, 1, v54);
  v80 = v154;
  if (v82 == 1)
  {
    sub_1000114D4(v156, &qword_100297F70, &qword_10021DBF8);
    sub_1000F9228(v81, type metadata accessor for ViewKey);
LABEL_22:
    v55 = v77;
    goto LABEL_23;
  }

  v91 = v77 + v75;
  v92 = v158;
  sub_1000F89AC(v91, v158, type metadata accessor for ViewKey);
  v93 = _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(v81, v92);
  sub_1000F9228(v92, type metadata accessor for ViewKey);
  sub_1000114D4(v156, &qword_100297F70, &qword_10021DBF8);
  sub_1000F9228(v81, type metadata accessor for ViewKey);
  sub_1000114D4(v77, &qword_100297F70, &qword_10021DBF8);
  if ((v93 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v94 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v94], v80, &qword_100297F70, &qword_10021DBF8);
  v95 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  v96 = *(v160 + 48);
  v97 = v80;
  v98 = v80;
  v99 = v150;
  sub_100019C6C(v97, v150, &qword_100297F70, &qword_10021DBF8);
  v100 = a2 + v95;
  v101 = v99;
  sub_100019C6C(v100, v99 + v96, &qword_100297F70, &qword_10021DBF8);
  v102 = v151;
  if (v151(v99, 1, v54) != 1)
  {
    v117 = v99;
    v118 = v149;
    sub_100019C6C(v117, v149, &qword_100297F70, &qword_10021DBF8);
    if (v102(v101 + v96, 1, v54) == 1)
    {
      a1, v119, v120, v121, v122, v123, v124, v125;
      a2, v126, v127, v128, v129, v130, v131, v132;
      sub_1000114D4(v154, &qword_100297F70, &qword_10021DBF8);
      sub_1000F9228(v118, type metadata accessor for ViewKey);
      goto LABEL_32;
    }

    v133 = v158;
    sub_1000F89AC(v101 + v96, v158, type metadata accessor for ViewKey);
    v134 = _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(v118, v133);
    a1, v135, v136, v137, v138, v139, v140, v141;
    a2, v142, v143, v144, v145, v146, v147, v148;
    sub_1000F9228(v133, type metadata accessor for ViewKey);
    sub_1000114D4(v154, &qword_100297F70, &qword_10021DBF8);
    sub_1000F9228(v118, type metadata accessor for ViewKey);
    sub_1000114D4(v101, &qword_100297F70, &qword_10021DBF8);
    return (v134 & 1) != 0;
  }

  a1, v103, v104, v105, v106, v107, v108, v109;
  a2, v110, v111, v112, v113, v114, v115, v116;
  sub_1000114D4(v98, &qword_100297F70, &qword_10021DBF8);
  if (v102(v99 + v96, 1, v54) != 1)
  {
LABEL_32:
    sub_1000114D4(v101, &qword_10029CDD8, &qword_100225D68);
    return 0;
  }

  sub_1000114D4(v99, &qword_100297F70, &qword_10021DBF8);
  return 1;
}

uint64_t sub_1000B7604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD00, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B76A8(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B7714(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);

  return sub_100216644();
}

uint64_t sub_1000B77C0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ViewKeysRecords._protobuf_nameMap);
  sub_100002648(v0, static ViewKeysRecords._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tlk";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "class_a";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "class_c";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t ViewKeysRecords.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1000B7C44(a1, v5, a2, a3);
        break;
      case 2:
        sub_1000B7B90(a1, v5, a2, a3);
        break;
      case 1:
        sub_1000B7ADC(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1000B7ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ViewKeysRecords(0);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t sub_1000B7B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ViewKeysRecords(0);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t sub_1000B7C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ViewKeysRecords(0);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t ViewKeysRecords.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000E7D20(v3, a1, a2, a3, type metadata accessor for ViewKeysRecords);
  if (!v4)
  {
    sub_1000B7D94(v3, a1, a2, a3);
    sub_1000B7FB0(v3, a1, a2, a3);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000B7D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_100216424();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ViewKeysRecords(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &qword_10029D9C0, &qword_100226740);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_10029D9C0, &qword_100226740);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  sub_100216704();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000B7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_100216424();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ViewKeysRecords(0);
  sub_100019C6C(a1 + *(v14 + 28), v8, &qword_10029D9C0, &qword_100226740);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_10029D9C0, &qword_100226740);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  sub_100216704();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000B8218@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = a1[5];
  v5 = sub_100216424();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + a1[6], 1, 1, v5);
  v6 = a2 + a1[7];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_1000B8324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCF8, type metadata accessor for ViewKeysRecords, &protocol conformance descriptor for ViewKeysRecords);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B83C4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298C40, type metadata accessor for ViewKeysRecords, &protocol conformance descriptor for ViewKeysRecords);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B8430(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298C40, type metadata accessor for ViewKeysRecords, &protocol conformance descriptor for ViewKeysRecords);

  return sub_100216644();
}

uint64_t sub_1000B84CC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static Bottle._protobuf_nameMap);
  sub_100002648(v0, static Bottle._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10021DFA0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 2;
  *v5 = "contents";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "escrowed_signing_spki";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "signature_using_escrow_key";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "signature_using_peer_key";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "peer_id";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "bottle_id";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t Bottle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_100216534();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result == 5)
      {
        goto LABEL_2;
      }

      if (result == 6 || result == 7)
      {
        sub_1002165B4();
      }
    }

    else if (result == 2 || result == 3 || result == 4)
    {
LABEL_2:
      sub_100216574();
    }
  }
}

uint64_t Bottle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_100216684();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 == v15)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = sub_100216684();
  if (v4)
  {
    return result;
  }

LABEL_19:
  v16 = v3[4];
  v17 = v3[5];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_28;
    }

    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
  }

  else
  {
    if (!v18)
    {
      if ((v17 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v19 = v16;
    v20 = v16 >> 32;
  }

  if (v19 == v20)
  {
    goto LABEL_28;
  }

LABEL_27:
  result = sub_100216684();
  if (v4)
  {
    return result;
  }

LABEL_28:
  v21 = v3[6];
  v22 = v3[7];
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_37;
    }

    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
  }

  else
  {
    if (!v23)
    {
      if ((v22 & 0xFF000000000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_36:
      result = sub_100216684();
      if (v4)
      {
        return result;
      }

      goto LABEL_37;
    }

    v24 = v21;
    v25 = v21 >> 32;
  }

  if (v24 != v25)
  {
    goto LABEL_36;
  }

LABEL_37:
  v26 = v3[9];
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v3[8] & 0xFFFFFFFFFFFFLL;
  }

  if (!v27 || (result = sub_1002166C4(), !v4))
  {
    v28 = v3[11];
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v3[10] & 0xFFFFFFFFFFFFLL;
    }

    if (!v29 || (result = sub_1002166C4(), !v4))
    {
      type metadata accessor for Bottle(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000B8B24@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_10021D470;
  *(a2 + 16) = xmmword_10021D470;
  *(a2 + 32) = xmmword_10021D470;
  *(a2 + 48) = xmmword_10021D470;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000B8BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCF0, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B8C58(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B8CC4(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);

  return sub_100216644();
}

uint64_t sub_1000B8D6C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowPair._protobuf_nameMap);
  sub_100002648(v0, static EscrowPair._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "escrow_record_id";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bottle";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "record";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000B8FD0()
{
  type metadata accessor for EscrowPair._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v2 = type metadata accessor for Bottle(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  v4 = type metadata accessor for EscrowInformation(0);
  result = (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  qword_100298540 = v0;
  return result;
}

uint64_t sub_1000B90A4(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v27 - v5;
  v7 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v27 - v9;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v12 = type metadata accessor for Bottle(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  v14 = type metadata accessor for EscrowInformation(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  swift_beginAccess();
  v15 = *a1->endpoint;
  v16 = *a1->containerMap;
  swift_beginAccess();
  *(v1 + 16) = v15;
  *(v1 + 24) = v16;
  v17 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v17], v10, &unk_10029D880, &qword_10021E830);
  swift_beginAccess();

  sub_1000F9E80(v10, v1 + v11, &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v18], v6, &qword_1002985C8, &qword_10021E838);
  a1, v19, v20, v21, v22, v23, v24, v25;
  swift_beginAccess();
  sub_1000F9E80(v6, v1 + v13, &qword_1002985C8, &qword_10021E838);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000B944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1000B951C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_1000B96C4(a2, a1, a3, a4);
        break;
      case 2:
        sub_1000B95E8(a2, a1, a3, a4);
        break;
      case 1:
        sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularStringField(value:));
        break;
    }
  }

  return result;
}

uint64_t sub_1000B95E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Bottle(0);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B96C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EscrowInformation(0);
  sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation, &protocol conformance descriptor for EscrowInformation);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B97E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_1002164B4();
  }

  return result;
}

void sub_1000B9860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = (v9 >> 56) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (, sub_1002166C4(), v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, !v4))
  {
    sub_1000B9940(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1000B9B68(a1, a2, a3, a4);
    }
  }
}

uint64_t sub_1000B9940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Bottle(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D880, &qword_10021E830);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D880, &qword_10021E830);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Bottle);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Bottle);
}