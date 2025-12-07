uint64_t PeerDifference.remove.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v21 - v6;
  sub_100019C6C(v2, &v21 - v6, &qword_100297E00, &qword_10021DA18);
  v8 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000114D4(v7, &qword_100297E00, &qword_10021DA18);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1000F89AC(v7, a1, type metadata accessor for Peer);
    }

    sub_1000F9228(v7, type metadata accessor for PeerDifference.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Peer(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v11 = v10[7];
  v12 = type metadata accessor for SignedPeerPermanentInfo(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v10[8];
  v14 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v10[9];
  v16 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  v17 = v10[10];
  v18 = type metadata accessor for SignedRecoveryVoucher(0);
  (*(*(v18 - 8) + 56))(&a1[v17], 1, 1, v18);
  v19 = v10[11];
  v20 = type metadata accessor for SignedCustodianRecoveryKey(0);
  return (*(*(v20 - 8) + 56))(&a1[v19], 1, 1, v20);
}

void (*PeerDifference.remove.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
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
  v6 = *(*(sub_10001148C(&qword_100297E00, &qword_10021DA18) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Peer(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_100019C6C(v2, v8, &qword_100297E00, &qword_10021DA18);
  v13 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1000114D4(v8, &qword_100297E00, &qword_10021DA18);
LABEL_15:
    *v12 = 0;
    *(v12 + 1) = 0xE000000000000000;
    *(v12 + 2) = _swiftEmptyArrayStorage;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v15 = v9[7];
    v16 = type metadata accessor for SignedPeerPermanentInfo(0);
    (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
    v17 = v9[8];
    v18 = type metadata accessor for SignedPeerStableInfo(0);
    (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
    v19 = v9[9];
    v20 = type metadata accessor for SignedPeerDynamicInfo(0);
    (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
    v21 = v9[10];
    v22 = type metadata accessor for SignedRecoveryVoucher(0);
    (*(*(v22 - 8) + 56))(&v12[v21], 1, 1, v22);
    v23 = v9[11];
    v24 = type metadata accessor for SignedCustodianRecoveryKey(0);
    (*(*(v24 - 8) + 56))(&v12[v23], 1, 1, v24);
    return sub_100082124;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000F9228(v8, type metadata accessor for PeerDifference.OneOf_Operation);
    goto LABEL_15;
  }

  sub_1000F89AC(v8, v12, type metadata accessor for Peer);
  return sub_100082124;
}

uint64_t PeerDifference.update.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v21 - v6;
  sub_100019C6C(v2, &v21 - v6, &qword_100297E00, &qword_10021DA18);
  v8 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000114D4(v7, &qword_100297E00, &qword_10021DA18);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1000F89AC(v7, a1, type metadata accessor for Peer);
    }

    sub_1000F9228(v7, type metadata accessor for PeerDifference.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Peer(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v11 = v10[7];
  v12 = type metadata accessor for SignedPeerPermanentInfo(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v10[8];
  v14 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v10[9];
  v16 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  v17 = v10[10];
  v18 = type metadata accessor for SignedRecoveryVoucher(0);
  (*(*(v18 - 8) + 56))(&a1[v17], 1, 1, v18);
  v19 = v10[11];
  v20 = type metadata accessor for SignedCustodianRecoveryKey(0);
  return (*(*(v20 - 8) + 56))(&a1[v19], 1, 1, v20);
}

uint64_t sub_10008240C(uint64_t a1, uint64_t a2)
{
  sub_1000114D4(v2, &qword_100297E00, &qword_10021DA18);
  sub_1000F89AC(a1, v2, type metadata accessor for Peer);
  v4 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(v2, 0, 1, v4);
}

void (*PeerDifference.update.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
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
  v6 = *(*(sub_10001148C(&qword_100297E00, &qword_10021DA18) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Peer(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_100019C6C(v2, v8, &qword_100297E00, &qword_10021DA18);
  v13 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1000114D4(v8, &qword_100297E00, &qword_10021DA18);
LABEL_15:
    *v12 = 0;
    *(v12 + 1) = 0xE000000000000000;
    *(v12 + 2) = _swiftEmptyArrayStorage;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v15 = v9[7];
    v16 = type metadata accessor for SignedPeerPermanentInfo(0);
    (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
    v17 = v9[8];
    v18 = type metadata accessor for SignedPeerStableInfo(0);
    (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
    v19 = v9[9];
    v20 = type metadata accessor for SignedPeerDynamicInfo(0);
    (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
    v21 = v9[10];
    v22 = type metadata accessor for SignedRecoveryVoucher(0);
    (*(*(v22 - 8) + 56))(&v12[v21], 1, 1, v22);
    v23 = v9[11];
    v24 = type metadata accessor for SignedCustodianRecoveryKey(0);
    (*(*(v24 - 8) + 56))(&v12[v23], 1, 1, v24);
    return sub_100082858;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1000F9228(v8, type metadata accessor for PeerDifference.OneOf_Operation);
    goto LABEL_15;
  }

  sub_1000F89AC(v8, v12, type metadata accessor for Peer);
  return sub_100082858;
}

void sub_100082860(uint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000F91C0((*a1)[3], v6, type metadata accessor for Peer);
    sub_1000114D4(v9, &qword_100297E00, &qword_10021DA18);
    sub_1000F89AC(v6, v9, type metadata accessor for Peer);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    sub_1000F9228(v7, type metadata accessor for Peer);
  }

  else
  {
    sub_1000114D4(**a1, &qword_100297E00, &qword_10021DA18);
    sub_1000F89AC(v7, v9, type metadata accessor for Peer);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t sub_100082A00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100082A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PeerDifference.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for PeerDifference(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t TLKShare.wrappedkey.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t TLKShare.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  a1[9] = 0;
  a1[10] = 0xE000000000000000;
  a1[11] = 0;
  a1[12] = 0xE000000000000000;
  a1[13] = 0;
  a1[14] = 0xE000000000000000;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0xE000000000000000;
  type metadata accessor for TLKShare(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t ViewKey.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  type metadata accessor for ViewKey(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

void (*ViewKeys.view.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for ViewKeys(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;

  return sub_100082FF8;
}

void (*ViewKeys.newTlk.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_100297F70, &qword_10021DBF8) - 8) + 64);
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
  v8 = type metadata accessor for ViewKey(0);
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
  v14 = *(type metadata accessor for ViewKeys(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100297F70, &qword_10021DBF8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0xE000000000000000;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297F70, &qword_10021DBF8);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for ViewKey);
  }

  return sub_1000832A0;
}

void sub_1000832A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for ViewKey);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for ViewKeys._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000B551C(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for ViewKey);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_100297F70, &qword_10021DBF8);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for ViewKey);
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
      type metadata accessor for ViewKeys._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000B551C(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for ViewKey);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_100297F70, &qword_10021DBF8);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL ViewKeys.hasNewTlk.getter()
{
  v1 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for ViewKeys(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_100297F70, &qword_10021DBF8);
  v7 = type metadata accessor for ViewKey(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_100297F70, &qword_10021DBF8);
  return v8;
}

Swift::Void __swiftcall ViewKeys.clearNewTlk()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for ViewKeys(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ViewKeys._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000B551C(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for ViewKey(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
}

void (*ViewKeys.newClassA.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_100297F70, &qword_10021DBF8) - 8) + 64);
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
  v8 = type metadata accessor for ViewKey(0);
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
  v14 = *(type metadata accessor for ViewKeys(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100297F70, &qword_10021DBF8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0xE000000000000000;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297F70, &qword_10021DBF8);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for ViewKey);
  }

  return sub_1000839D0;
}

void sub_1000839D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for ViewKey);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for ViewKeys._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000B551C(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for ViewKey);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_100297F70, &qword_10021DBF8);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for ViewKey);
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
      type metadata accessor for ViewKeys._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000B551C(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for ViewKey);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_100297F70, &qword_10021DBF8);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL ViewKeys.hasNewClassA.getter()
{
  v1 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for ViewKeys(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_100297F70, &qword_10021DBF8);
  v7 = type metadata accessor for ViewKey(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_100297F70, &qword_10021DBF8);
  return v8;
}

Swift::Void __swiftcall ViewKeys.clearNewClassA()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for ViewKeys(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ViewKeys._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000B551C(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for ViewKey(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
}

void (*ViewKeys.newClassC.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_100297F70, &qword_10021DBF8) - 8) + 64);
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
  v8 = type metadata accessor for ViewKey(0);
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
  v14 = *(type metadata accessor for ViewKeys(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100297F70, &qword_10021DBF8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0xE000000000000000;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297F70, &qword_10021DBF8);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for ViewKey);
  }

  return sub_100084100;
}

void sub_100084100(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for ViewKey);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for ViewKeys._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000B551C(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for ViewKey);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_100297F70, &qword_10021DBF8);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for ViewKey);
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
      type metadata accessor for ViewKeys._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000B551C(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for ViewKey);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_100297F70, &qword_10021DBF8);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL ViewKeys.hasNewClassC.getter()
{
  v1 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for ViewKeys(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_100297F70, &qword_10021DBF8);
  v7 = type metadata accessor for ViewKey(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_100297F70, &qword_10021DBF8);
  return v8;
}

Swift::Void __swiftcall ViewKeys.clearNewClassC()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for ViewKeys(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ViewKeys._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000B551C(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for ViewKey(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
}

uint64_t sub_1000845C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = *(v2 + *(type metadata accessor for ViewKeys(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_100019C6C(v9 + v10, v8, &qword_100297F70, &qword_10021DBF8);
  v11 = type metadata accessor for ViewKey(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_1000F89AC(v8, a2, type metadata accessor for ViewKey);
  }

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
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1000114D4(v8, &qword_100297F70, &qword_10021DBF8);
  }

  return result;
}

uint64_t ViewKeys.oldTlk.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for ViewKeys(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ViewKeys._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000B551C(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for ViewKey);
  v11 = type metadata accessor for ViewKey(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_100297F70, &qword_10021DBF8);
  return swift_endAccess();
}

void (*ViewKeys.oldTlk.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_100297F70, &qword_10021DBF8) - 8) + 64);
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
  v8 = type metadata accessor for ViewKey(0);
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
  v14 = *(type metadata accessor for ViewKeys(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100297F70, &qword_10021DBF8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0xE000000000000000;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297F70, &qword_10021DBF8);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for ViewKey);
  }

  return sub_100084B3C;
}

void sub_100084B3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for ViewKey);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for ViewKeys._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000B551C(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for ViewKey);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_100297F70, &qword_10021DBF8);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for ViewKey);
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
      type metadata accessor for ViewKeys._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000B551C(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for ViewKey);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_100297F70, &qword_10021DBF8);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL ViewKeys.hasOldTlk.getter()
{
  v1 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for ViewKeys(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_100297F70, &qword_10021DBF8);
  v7 = type metadata accessor for ViewKey(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_100297F70, &qword_10021DBF8);
  return v8;
}

Swift::Void __swiftcall ViewKeys.clearOldTlk()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for ViewKeys(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ViewKeys._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000B551C(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for ViewKey(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
}

void (*ViewKeysRecords.tlk.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for ViewKeysRecords(0) + 20);
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

void sub_10008524C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 12);
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    (*(v11 + 16))((*a1)[4], v9, v10);
    sub_1000114D4(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v8, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
    (*(v11 + 8))(v9, v10);
  }

  else
  {
    sub_1000114D4(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v9, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
  }

  free(v9);
  free(v8);
  free(v12);

  free(v6);
}

uint64_t sub_100085468(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v10 = *(a2(0) + 24);
  sub_1000114D4(v5 + v10, a3, a4);
  v11 = a5(0);
  v14 = *(v11 - 8);
  (*(v14 + 32))(v5 + v10, a1, v11);
  v12 = *(v14 + 56);

  return v12(v5 + v10, 0, 1, v11);
}

void (*ViewKeysRecords.classA.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for ViewKeysRecords(0) + 24);
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

BOOL sub_10008579C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_10001148C(a1, a2);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_100019C6C(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000114D4(v12, a1, a2);
  return v15;
}

uint64_t sub_1000858D4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1000114D4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void (*ViewKeysRecords.classC.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for ViewKeysRecords(0) + 28);
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

BOOL sub_100085C04(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_10001148C(a1, a2);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_100019C6C(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000114D4(v12, a1, a2);
  return v15;
}

uint64_t sub_100085D3C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1000114D4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ViewKeysRecords.init()@<X0>(uint64_t a2@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = type metadata accessor for ViewKeysRecords(0);
  v4 = v3[5];
  v5 = sub_100216424();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + v3[6], 1, 1, v5);
  v6 = a2 + v3[7];

  return (v8)(v6, 1, 1, v5);
}

uint64_t Bottle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10021D470;
  *(a1 + 16) = xmmword_10021D470;
  *(a1 + 32) = xmmword_10021D470;
  *(a1 + 48) = xmmword_10021D470;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  type metadata accessor for Bottle(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_100085FCC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  v3 = *(v2 + 16);

  return v3;
}

void sub_100086070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v11 = *(a3(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    swift_allocObject();
    v13 = a5(v13);
    *(v8 + v11) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 24);
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31;
}

void (*EscrowPair.escrowRecordID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for EscrowPair(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;

  return sub_1000861DC;
}

void sub_100086208(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 96);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v6 + 96);
      v14 = *(v6 + 88);
      a3(0);
      swift_allocObject();
      v12 = a4(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    v15 = *(v12 + 24);
    *(v12 + 16) = v7;
    *(v12 + 24) = v9;
    v15, v16, v17, v18, v19, v20, v21, v22, v35, v36, v37, v38, v39, v40, v41, v42, vars0, vars8;
    v30 = *(v6 + 80);
  }

  else
  {
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v10 + v8);
    if ((v31 & 1) == 0)
    {
      v33 = *(v6 + 96);
      v34 = *(v6 + 88);
      a3(0);
      swift_allocObject();
      v32 = a4(v32);
      *(v34 + v33) = v32;
    }

    swift_beginAccess();
    v30 = *(v32 + 24);
    *(v32 + 16) = v7;
    *(v32 + 24) = v9;
  }

  v30, v23, v24, v25, v26, v27, v28, v29, v35, v36, v37, v38, v39, v40, v41, v42, vars0, vars8;

  free(v6);
}

uint64_t EscrowPair.bottle.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for EscrowPair(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowPair._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000B90A4(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for Bottle);
  v11 = type metadata accessor for Bottle(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D880, &qword_10021E830);
  return swift_endAccess();
}

void (*EscrowPair.bottle.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D880, &qword_10021E830) - 8) + 64);
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
  v8 = type metadata accessor for Bottle(0);
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
  v14 = *(type metadata accessor for EscrowPair(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D880, &qword_10021E830);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    *(v13 + 16) = xmmword_10021D470;
    *(v13 + 32) = xmmword_10021D470;
    *(v13 + 48) = xmmword_10021D470;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D880, &qword_10021E830);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Bottle);
  }

  return sub_10008674C;
}

void sub_10008674C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Bottle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for EscrowPair._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000B90A4(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for Bottle);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D880, &qword_10021E830);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for Bottle);
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
      type metadata accessor for EscrowPair._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000B90A4(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for Bottle);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D880, &qword_10021E830);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL EscrowPair.hasBottle.getter()
{
  v1 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for EscrowPair(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D880, &qword_10021E830);
  v7 = type metadata accessor for Bottle(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D880, &qword_10021E830);
  return v8;
}

Swift::Void __swiftcall EscrowPair.clearBottle()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for EscrowPair(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowPair._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000B90A4(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Bottle(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D880, &qword_10021E830);
  swift_endAccess();
}

uint64_t EscrowPair.record.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for EscrowPair(0) + 20));
  v8 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_100019C6C(v7 + v8, v6, &qword_1002985C8, &qword_10021E838);
  v9 = type metadata accessor for EscrowInformation(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for EscrowInformation);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v11 = *(v9 + 48);
  v12 = sub_1002164A4();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v9 + 52);
  v14 = type metadata accessor for EscrowInformation.Metadata(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_1002985C8, &qword_10021E838);
  }

  return result;
}

uint64_t EscrowInformation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  v2 = type metadata accessor for EscrowInformation(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 48);
  v4 = sub_1002164A4();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 52);
  v6 = type metadata accessor for EscrowInformation.Metadata(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t EscrowPair.record.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for EscrowPair(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowPair._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000B90A4(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for EscrowInformation);
  v11 = type metadata accessor for EscrowInformation(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_1002985C8, &qword_10021E838);
  return swift_endAccess();
}

void (*EscrowPair.record.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_1002985C8, &qword_10021E838) - 8) + 64);
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
  v8 = type metadata accessor for EscrowInformation(0);
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
  v14 = *(type metadata accessor for EscrowPair(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_1002985C8, &qword_10021E838);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = 0xE000000000000000;
    *(v13 + 40) = 1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v18 = *(v8 + 48);
    v19 = sub_1002164A4();
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = *(v8 + 52);
    v21 = type metadata accessor for EscrowInformation.Metadata(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_1002985C8, &qword_10021E838);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for EscrowInformation);
  }

  return sub_100087398;
}

void sub_100087398(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for EscrowInformation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for EscrowPair._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000B90A4(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for EscrowInformation);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_1002985C8, &qword_10021E838);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for EscrowInformation);
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
      type metadata accessor for EscrowPair._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000B90A4(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for EscrowInformation);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_1002985C8, &qword_10021E838);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL EscrowPair.hasRecord.getter()
{
  v1 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for EscrowPair(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_1002985C8, &qword_10021E838);
  v7 = type metadata accessor for EscrowInformation(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_1002985C8, &qword_10021E838);
  return v8;
}

Swift::Void __swiftcall EscrowPair.clearRecord()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for EscrowPair(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EscrowPair._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000B90A4(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for EscrowInformation(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_1002985C8, &qword_10021E838);
  swift_endAccess();
}

uint64_t sub_100087884@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t Changes.recoverySigningPubKey.getter()
{
  v1 = *(v0 + 24);
  sub_100012558(v1, *(v0 + 32));
  return v1;
}

void Changes.recoverySigningPubKey.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100002BF0(*(v8 + 24), *(v8 + 32), a3, a4, a5, a6, a7, a8);
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
}

uint64_t Changes.recoveryEncryptionPubKey.getter()
{
  v1 = *(v0 + 40);
  sub_100012558(v1, *(v0 + 48));
  return v1;
}

void Changes.recoveryEncryptionPubKey.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100002BF0(*(v8 + 40), *(v8 + 48), a3, a4, a5, a6, a7, a8);
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
}

uint64_t sub_100087A2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100087AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Changes.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  *(a1 + 24) = xmmword_10021D470;
  *(a1 + 40) = xmmword_10021D470;
  *(a1 + 56) = 0;
  type metadata accessor for Changes(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t PolicyDocumentKey.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for PolicyDocumentKey(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t PolicyDocumentMapEntry.key.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029D820, &unk_10021E840);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PolicyDocumentMapEntry(0);
  sub_100019C6C(v1 + *(v7 + 24), v6, &unk_10029D820, &unk_10021E840);
  v8 = type metadata accessor for PolicyDocumentKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for PolicyDocumentKey);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &unk_10029D820, &unk_10021E840);
  }

  return result;
}

uint64_t PolicyDocumentMapEntry.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PolicyDocumentMapEntry(0) + 24);
  sub_1000114D4(v1 + v3, &unk_10029D820, &unk_10021E840);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for PolicyDocumentKey);
  v4 = type metadata accessor for PolicyDocumentKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PolicyDocumentMapEntry.key.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D820, &unk_10021E840) - 8) + 64);
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
  v8 = type metadata accessor for PolicyDocumentKey(0);
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
  v14 = *(type metadata accessor for PolicyDocumentMapEntry(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D820, &unk_10021E840);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D820, &unk_10021E840);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for PolicyDocumentKey);
  }

  return sub_1000880FC;
}

void sub_1000880FC(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for PolicyDocumentKey);
    sub_1000114D4(v9 + v3, &unk_10029D820, &unk_10021E840);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for PolicyDocumentKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for PolicyDocumentKey);
  }

  else
  {
    sub_1000114D4(v9 + v3, &unk_10029D820, &unk_10021E840);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for PolicyDocumentKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t PolicyDocumentMapEntry.init()@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_10021D470;
  v2 = type metadata accessor for PolicyDocumentMapEntry(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for PolicyDocumentKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t AccountInfo.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for AccountInfo(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t ResetRequest.resetReason.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ResetRequest.idmsTargetContext.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResetRequest.idmsCuttlefishPassword.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ResetRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetRequest(0) + 40);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ResetRequest.accountInfo.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for ResetRequest(0) + 40);
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

  return sub_100088918;
}

void sub_100088918(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for AccountInfo);
    sub_1000114D4(v9 + v3, &unk_10029D6F0, &qword_100226B40);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for AccountInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for AccountInfo);
  }

  else
  {
    sub_1000114D4(v9 + v3, &unk_10029D6F0, &qword_100226B40);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for AccountInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_100088ABC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_10001148C(a1, a2);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_100019C6C(v4 + *(v13 + 40), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000114D4(v12, a1, a2);
  return v15;
}

uint64_t sub_100088BF4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  sub_1000114D4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ResetRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetRequest(0) + 44);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ResetRequest.metrics.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for ResetRequest(0) + 44);
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

  return sub_100088F74;
}

void sub_100088F74(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for Metrics);
    sub_1000114D4(v9 + v3, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for Metrics);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for Metrics);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for Metrics);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_100089118(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_10001148C(a1, a2);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_100019C6C(v4 + *(v13 + 44), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000114D4(v12, a1, a2);
  return v15;
}

uint64_t sub_100089250(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 44);
  sub_1000114D4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void (*ResetResponse.changes.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
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
  v8 = type metadata accessor for Changes(0);
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
  v14 = *(type metadata accessor for ResetResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100089624;
}

void sub_100089624(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for Changes);
    sub_1000114D4(v9 + v3, &unk_10029D750, &qword_10021E850);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for Changes);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for Changes);
  }

  else
  {
    sub_1000114D4(v9 + v3, &unk_10029D750, &qword_10021E850);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for Changes);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_1000897C8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_10001148C(a1, a2);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_100019C6C(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000114D4(v12, a1, a2);
  return v15;
}

uint64_t sub_100089900(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_1000114D4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t EstablishRequest.peer.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for EstablishRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000BDADC(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for Peer);
  v11 = type metadata accessor for Peer(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D7A0, &qword_10021E858);
  return swift_endAccess();
}

void (*EstablishRequest.peer.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D7A0, &qword_10021E858) - 8) + 64);
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
  v8 = type metadata accessor for Peer(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
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
  v14 = *(type metadata accessor for EstablishRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D7A0, &qword_10021E858);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = _swiftEmptyArrayStorage;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v18 = v8[7];
    v19 = type metadata accessor for SignedPeerPermanentInfo(0);
    (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
    v20 = v8[8];
    v21 = type metadata accessor for SignedPeerStableInfo(0);
    (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
    v22 = v8[9];
    v23 = type metadata accessor for SignedPeerDynamicInfo(0);
    (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
    v24 = v8[10];
    v25 = type metadata accessor for SignedRecoveryVoucher(0);
    (*(*(v25 - 8) + 56))(&v13[v24], 1, 1, v25);
    v26 = v8[11];
    v27 = type metadata accessor for SignedCustodianRecoveryKey(0);
    (*(*(v27 - 8) + 56))(&v13[v26], 1, 1, v27);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D7A0, &qword_10021E858);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Peer);
  }

  return sub_100089F0C;
}

void sub_100089F0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Peer);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000BDADC(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for Peer);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for Peer);
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
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000BDADC(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for Peer);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL EstablishRequest.hasPeer.getter()
{
  v1 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for EstablishRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D7A0, &qword_10021E858);
  v7 = type metadata accessor for Peer(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D7A0, &qword_10021E858);
  return v8;
}

Swift::Void __swiftcall EstablishRequest.clearPeer()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for EstablishRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000BDADC(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Peer(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
}

uint64_t EstablishRequest.bottle.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for EstablishRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000BDADC(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for Bottle);
  v11 = type metadata accessor for Bottle(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D880, &qword_10021E830);
  return swift_endAccess();
}

void (*EstablishRequest.bottle.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D880, &qword_10021E830) - 8) + 64);
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
  v8 = type metadata accessor for Bottle(0);
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
  v14 = *(type metadata accessor for EstablishRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D880, &qword_10021E830);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    *(v13 + 16) = xmmword_10021D470;
    *(v13 + 32) = xmmword_10021D470;
    *(v13 + 48) = xmmword_10021D470;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D880, &qword_10021E830);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Bottle);
  }

  return sub_10008A7BC;
}

void sub_10008A7BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Bottle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000BDADC(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for Bottle);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D880, &qword_10021E830);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for Bottle);
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
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000BDADC(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for Bottle);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D880, &qword_10021E830);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL EstablishRequest.hasBottle.getter()
{
  v1 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for EstablishRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D880, &qword_10021E830);
  v7 = type metadata accessor for Bottle(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D880, &qword_10021E830);
  return v8;
}

Swift::Void __swiftcall EstablishRequest.clearBottle()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for EstablishRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000BDADC(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Bottle(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D880, &qword_10021E830);
  swift_endAccess();
}

void (*EstablishRequest.viewKeys.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for EstablishRequest(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_10008AD88;
}

uint64_t sub_10008ADDC(uint64_t (*a1)(void), uint64_t *a2)
{
  a1(0);
  swift_beginAccess();
}

void sub_10008AE84(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    swift_allocObject();
    v13 = a4(v13);
    *(v9 + v11) = v13;
  }

  v14 = *a5;
  swift_beginAccess();
  v15 = *(v13 + v14);
  *(v13 + v14) = a1;
  v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32;
}

void (*EstablishRequest.tlkShares.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for EstablishRequest(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_10008AFFC;
}

void sub_10008B030(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v10 = (*a1 + 72);
  v9 = *v10;
  v11 = *(*a1 + 88);
  v12 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v8 + 88);
      v16 = *(v8 + 80);
      a3(0);
      swift_allocObject();
      v14 = a4(v14);
      *(v16 + v15) = v14;
    }

    v17 = *a5;
    swift_beginAccess();
    v18 = *(v14 + v17);
    *(v14 + v17) = v9;
    v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48;
    v33 = *v10;
  }

  else
  {
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v12 + v11);
    if ((v34 & 1) == 0)
    {
      v36 = *(v8 + 88);
      v37 = *(v8 + 80);
      a3(0);
      swift_allocObject();
      v35 = a4(v35);
      *(v37 + v36) = v35;
    }

    v38 = *a5;
    swift_beginAccess();
    v33 = *(v35 + v38);
    *(v35 + v38) = v9;
  }

  v33, v26, v27, v28, v29, v30, v31, v32, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48;

  free(v8);
}

uint64_t EstablishRequest.metrics.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for EstablishRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000BDADC(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for Metrics);
  v11 = type metadata accessor for Metrics(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_100297FE0, &unk_10021E7F0);
  return swift_endAccess();
}

void (*EstablishRequest.metrics.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
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
  v8 = type metadata accessor for Metrics(0);
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
  v14 = *(type metadata accessor for EstablishRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100297FE0, &unk_10021E7F0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_10008B558;
}

void sub_10008B558(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Metrics);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000BDADC(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for Metrics);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for Metrics);
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
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000BDADC(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for Metrics);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL EstablishRequest.hasMetrics.getter()
{
  v1 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for EstablishRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_100297FE0, &unk_10021E7F0);
  v7 = type metadata accessor for Metrics(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_100297FE0, &unk_10021E7F0);
  return v8;
}

Swift::Void __swiftcall EstablishRequest.clearMetrics()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for EstablishRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000BDADC(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Metrics(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
}

uint64_t EstablishRequest.accountInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for EstablishRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000BDADC(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for AccountInfo);
  v11 = type metadata accessor for AccountInfo(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D6F0, &qword_100226B40);
  return swift_endAccess();
}

void (*EstablishRequest.accountInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
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
  v8 = type metadata accessor for AccountInfo(0);
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
  v14 = *(type metadata accessor for EstablishRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D6F0, &qword_100226B40);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_10008BDF0;
}

void sub_10008BDF0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for AccountInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000BDADC(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for AccountInfo);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D6F0, &qword_100226B40);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for AccountInfo);
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
      type metadata accessor for EstablishRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000BDADC(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for AccountInfo);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D6F0, &qword_100226B40);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL EstablishRequest.hasAccountInfo.getter()
{
  v1 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for EstablishRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D6F0, &qword_100226B40);
  v7 = type metadata accessor for AccountInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D6F0, &qword_100226B40);
  return v8;
}

Swift::Void __swiftcall EstablishRequest.clearAccountInfo()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for EstablishRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EstablishRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000BDADC(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for AccountInfo(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
}

uint64_t EstablishResponse.changes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EstablishResponse(0) + 24);
  sub_1000114D4(v1 + v3, &unk_10029D750, &qword_10021E850);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Changes);
  v4 = type metadata accessor for Changes(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*EstablishResponse.changes.modify(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
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
  v8 = type metadata accessor for Changes(0);
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
  v14 = *(type metadata accessor for EstablishResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100106188;
}

void (*JoinWithVoucherRequest.changeToken.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;

  return sub_10008C820;
}

uint64_t JoinWithVoucherRequest.peer.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000C12E8(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for Peer);
  v11 = type metadata accessor for Peer(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D7A0, &qword_10021E858);
  return swift_endAccess();
}

void (*JoinWithVoucherRequest.peer.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D7A0, &qword_10021E858) - 8) + 64);
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
  v8 = type metadata accessor for Peer(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
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
  v14 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D7A0, &qword_10021E858);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = _swiftEmptyArrayStorage;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v18 = v8[7];
    v19 = type metadata accessor for SignedPeerPermanentInfo(0);
    (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
    v20 = v8[8];
    v21 = type metadata accessor for SignedPeerStableInfo(0);
    (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
    v22 = v8[9];
    v23 = type metadata accessor for SignedPeerDynamicInfo(0);
    (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
    v24 = v8[10];
    v25 = type metadata accessor for SignedRecoveryVoucher(0);
    (*(*(v25 - 8) + 56))(&v13[v24], 1, 1, v25);
    v26 = v8[11];
    v27 = type metadata accessor for SignedCustodianRecoveryKey(0);
    (*(*(v27 - 8) + 56))(&v13[v26], 1, 1, v27);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D7A0, &qword_10021E858);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Peer);
  }

  return sub_10008CD94;
}

void sub_10008CD94(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Peer);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000C12E8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for Peer);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for Peer);
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
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000C12E8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for Peer);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL JoinWithVoucherRequest.hasPeer.getter()
{
  v1 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for JoinWithVoucherRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D7A0, &qword_10021E858);
  v7 = type metadata accessor for Peer(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D7A0, &qword_10021E858);
  return v8;
}

Swift::Void __swiftcall JoinWithVoucherRequest.clearPeer()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000C12E8(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Peer(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
}

uint64_t sub_10008D268@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  sub_100019C6C(v11 + v12, v10, &unk_10029D880, &qword_10021E830);
  v13 = type metadata accessor for Bottle(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return sub_1000F89AC(v10, a3, type metadata accessor for Bottle);
  }

  *a3 = xmmword_10021D470;
  *(a3 + 16) = xmmword_10021D470;
  *(a3 + 32) = xmmword_10021D470;
  *(a3 + 48) = xmmword_10021D470;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0xE000000000000000;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return sub_1000114D4(v10, &unk_10029D880, &qword_10021E830);
  }

  return result;
}

uint64_t JoinWithVoucherRequest.bottle.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000C12E8(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for Bottle);
  v11 = type metadata accessor for Bottle(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D880, &qword_10021E830);
  return swift_endAccess();
}

void (*JoinWithVoucherRequest.bottle.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D880, &qword_10021E830) - 8) + 64);
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
  v8 = type metadata accessor for Bottle(0);
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
  v14 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D880, &qword_10021E830);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    *(v13 + 16) = xmmword_10021D470;
    *(v13 + 32) = xmmword_10021D470;
    *(v13 + 48) = xmmword_10021D470;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xE000000000000000;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D880, &qword_10021E830);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Bottle);
  }

  return sub_10008D7EC;
}

void sub_10008D7EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Bottle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000C12E8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for Bottle);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D880, &qword_10021E830);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for Bottle);
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
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000C12E8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for Bottle);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D880, &qword_10021E830);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL JoinWithVoucherRequest.hasBottle.getter()
{
  v1 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for JoinWithVoucherRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D880, &qword_10021E830);
  v7 = type metadata accessor for Bottle(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D880, &qword_10021E830);
  return v8;
}

Swift::Void __swiftcall JoinWithVoucherRequest.clearBottle()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000C12E8(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Bottle(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D880, &qword_10021E830);
  swift_endAccess();
}

void (*JoinWithVoucherRequest.tlkShares.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_10008DDB8;
}

void (*JoinWithVoucherRequest.viewKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_10008DF04;
}

uint64_t JoinWithVoucherRequest.trustedDevicesVersion.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for JoinWithVoucherRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_100019C6C(v7 + v8, v6, &qword_10029D770, &qword_10021E860);
  v9 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for IdmsTrustedDevicesVersion);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v11 = *(v9 + 24);
  v12 = sub_1002164A4();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_10029D770, &qword_10021E860);
  }

  return result;
}

uint64_t JoinWithVoucherRequest.trustedDevicesVersion.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000C12E8(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for IdmsTrustedDevicesVersion);
  v11 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_10029D770, &qword_10021E860);
  return swift_endAccess();
}

void (*JoinWithVoucherRequest.trustedDevicesVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_10029D770, &qword_10021E860) - 8) + 64);
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
  v8 = type metadata accessor for IdmsTrustedDevicesVersion(0);
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
  v14 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_10029D770, &qword_10021E860);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v18 = *(v8 + 24);
    v19 = sub_1002164A4();
    (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D770, &qword_10021E860);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for IdmsTrustedDevicesVersion);
  }

  return sub_10008E50C;
}

void sub_10008E50C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for IdmsTrustedDevicesVersion);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000C12E8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for IdmsTrustedDevicesVersion);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_10029D770, &qword_10021E860);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for IdmsTrustedDevicesVersion);
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
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000C12E8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for IdmsTrustedDevicesVersion);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_10029D770, &qword_10021E860);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL JoinWithVoucherRequest.hasTrustedDevicesVersion.getter()
{
  v1 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for JoinWithVoucherRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_10029D770, &qword_10021E860);
  v7 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_10029D770, &qword_10021E860);
  return v8;
}

Swift::Void __swiftcall JoinWithVoucherRequest.clearTrustedDevicesVersion()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000C12E8(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_10029D770, &qword_10021E860);
  swift_endAccess();
}

uint64_t JoinWithVoucherRequest.metrics.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000C12E8(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for Metrics);
  v11 = type metadata accessor for Metrics(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_100297FE0, &unk_10021E7F0);
  return swift_endAccess();
}

void (*JoinWithVoucherRequest.metrics.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
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
  v8 = type metadata accessor for Metrics(0);
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
  v14 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100297FE0, &unk_10021E7F0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_10008ED8C;
}

void sub_10008ED8C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Metrics);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000C12E8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for Metrics);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for Metrics);
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
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000C12E8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for Metrics);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL JoinWithVoucherRequest.hasMetrics.getter()
{
  v1 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for JoinWithVoucherRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_100297FE0, &unk_10021E7F0);
  v7 = type metadata accessor for Metrics(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_100297FE0, &unk_10021E7F0);
  return v8;
}

Swift::Void __swiftcall JoinWithVoucherRequest.clearMetrics()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000C12E8(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Metrics(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
}

uint64_t JoinWithVoucherRequest.accountInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000C12E8(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for AccountInfo);
  v11 = type metadata accessor for AccountInfo(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D6F0, &qword_100226B40);
  return swift_endAccess();
}

void (*JoinWithVoucherRequest.accountInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
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
  v8 = type metadata accessor for AccountInfo(0);
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
  v14 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D6F0, &qword_100226B40);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_10008F624;
}

void sub_10008F624(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for AccountInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000C12E8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for AccountInfo);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D6F0, &qword_100226B40);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for AccountInfo);
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
      type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000C12E8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for AccountInfo);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D6F0, &qword_100226B40);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL JoinWithVoucherRequest.hasAccountInfo.getter()
{
  v1 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for JoinWithVoucherRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D6F0, &qword_100226B40);
  v7 = type metadata accessor for AccountInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D6F0, &qword_100226B40);
  return v8;
}

Swift::Void __swiftcall JoinWithVoucherRequest.clearAccountInfo()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000C12E8(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for AccountInfo(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
}

uint64_t JoinWithVoucherResponse.changes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JoinWithVoucherResponse(0) + 24);
  sub_1000114D4(v1 + v3, &unk_10029D750, &qword_10021E850);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Changes);
  v4 = type metadata accessor for Changes(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*JoinWithVoucherResponse.changes.modify(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
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
  v8 = type metadata accessor for Changes(0);
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
  v14 = *(type metadata accessor for JoinWithVoucherResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100106188;
}

uint64_t sub_10008FF20@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  v3 = a1(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for Changes(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t UpdateTrustRequest.stableInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  updated = type metadata accessor for UpdateTrustRequest(0);
  sub_100019C6C(v1 + *(updated + 36), v6, &qword_1002985A8, &unk_100226650);
  v8 = type metadata accessor for SignedPeerStableInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerStableInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_1002985A8, &unk_100226650);
  }

  return result;
}

uint64_t UpdateTrustRequest.stableInfoAndSig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UpdateTrustRequest(0) + 36);
  sub_1000114D4(v1 + v3, &qword_1002985A8, &unk_100226650);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedPeerStableInfo);
  v4 = type metadata accessor for SignedPeerStableInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*UpdateTrustRequest.stableInfoAndSig.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_1002985A8, &unk_100226650) - 8) + 64);
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
  v8 = type metadata accessor for SignedPeerStableInfo(0);
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
  v14 = *(type metadata accessor for UpdateTrustRequest(0) + 36);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_1002985A8, &unk_100226650);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerStableInfo);
  }

  return sub_1000903F4;
}

void sub_1000903F4(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for SignedPeerStableInfo);
    sub_1000114D4(v9 + v3, &qword_1002985A8, &unk_100226650);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for SignedPeerStableInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for SignedPeerStableInfo);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_1002985A8, &unk_100226650);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for SignedPeerStableInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_100090598(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_10001148C(a1, a2);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_100019C6C(v4 + *(v13 + 36), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000114D4(v12, a1, a2);
  return v15;
}

uint64_t sub_1000906D0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_1000114D4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t UpdateTrustRequest.dynamicInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  updated = type metadata accessor for UpdateTrustRequest(0);
  sub_100019C6C(v1 + *(updated + 40), v6, &unk_10029D760, &qword_10021E810);
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerDynamicInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &unk_10029D760, &qword_10021E810);
  }

  return result;
}

uint64_t UpdateTrustRequest.dynamicInfoAndSig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UpdateTrustRequest(0) + 40);
  sub_1000114D4(v1 + v3, &unk_10029D760, &qword_10021E810);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedPeerDynamicInfo);
  v4 = type metadata accessor for SignedPeerDynamicInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*UpdateTrustRequest.dynamicInfoAndSig.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D760, &qword_10021E810) - 8) + 64);
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
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
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
  v14 = *(type metadata accessor for UpdateTrustRequest(0) + 40);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D760, &qword_10021E810);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D760, &qword_10021E810);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerDynamicInfo);
  }

  return sub_100090BB4;
}

void sub_100090BB4(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for SignedPeerDynamicInfo);
    sub_1000114D4(v9 + v3, &unk_10029D760, &qword_10021E810);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for SignedPeerDynamicInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for SignedPeerDynamicInfo);
  }

  else
  {
    sub_1000114D4(v9 + v3, &unk_10029D760, &qword_10021E810);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for SignedPeerDynamicInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t UpdateTrustRequest.trustedDevicesVersion.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v13 - v5;
  updated = type metadata accessor for UpdateTrustRequest(0);
  sub_100019C6C(v1 + *(updated + 44), v6, &qword_10029D770, &qword_10021E860);
  v8 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for IdmsTrustedDevicesVersion);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v10 = *(v8 + 24);
  v11 = sub_1002164A4();
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_10029D770, &qword_10021E860);
  }

  return result;
}

uint64_t UpdateTrustRequest.trustedDevicesVersion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UpdateTrustRequest(0) + 44);
  sub_1000114D4(v1 + v3, &qword_10029D770, &qword_10021E860);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for IdmsTrustedDevicesVersion);
  v4 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*UpdateTrustRequest.trustedDevicesVersion.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_10029D770, &qword_10021E860) - 8) + 64);
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
  v8 = type metadata accessor for IdmsTrustedDevicesVersion(0);
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
  v14 = *(type metadata accessor for UpdateTrustRequest(0) + 44);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D770, &qword_10021E860);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v16 = *(v8 + 24);
    v17 = sub_1002164A4();
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D770, &qword_10021E860);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for IdmsTrustedDevicesVersion);
  }

  return sub_1000912B4;
}

void sub_1000912B4(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for IdmsTrustedDevicesVersion);
    sub_1000114D4(v9 + v3, &qword_10029D770, &qword_10021E860);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for IdmsTrustedDevicesVersion);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for IdmsTrustedDevicesVersion);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_10029D770, &qword_10021E860);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for IdmsTrustedDevicesVersion);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

void (*UpdateTrustRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for UpdateTrustRequest(0) + 48);
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

void (*UpdateTrustRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for UpdateTrustRequest(0) + 52);
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

uint64_t UpdateTrustRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UpdateTrustRequest(0) + 32);
  v4 = sub_1002164D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UpdateTrustRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UpdateTrustRequest(0) + 32);
  v4 = sub_1002164D4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UpdateTrustRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = _swiftEmptyArrayStorage;
  *(a1 + 5) = _swiftEmptyArrayStorage;
  updated = type metadata accessor for UpdateTrustRequest(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = updated[9];
  v4 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = updated[10];
  v6 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = updated[11];
  v8 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = updated[12];
  v10 = type metadata accessor for Metrics(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = updated[13];
  v12 = type metadata accessor for AccountInfo(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(&a1[v11], 1, 1, v12);
}

uint64_t UpdateTrustResponse.changes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UpdateTrustResponse(0) + 24);
  sub_1000114D4(v1 + v3, &unk_10029D750, &qword_10021E850);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Changes);
  v4 = type metadata accessor for Changes(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*UpdateTrustResponse.changes.modify(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
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
  v8 = type metadata accessor for Changes(0);
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
  v14 = *(type metadata accessor for UpdateTrustResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100106188;
}

uint64_t SetRecoveryKeyRequest.recoverySigningPubKey.getter()
{
  v1 = *(v0 + 32);
  sub_100012558(v1, *(v0 + 40));
  return v1;
}

void SetRecoveryKeyRequest.recoverySigningPubKey.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100002BF0(*(v8 + 32), *(v8 + 40), a3, a4, a5, a6, a7, a8);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
}

uint64_t SetRecoveryKeyRequest.recoveryEncryptionPubKey.getter()
{
  v1 = *(v0 + 48);
  sub_100012558(v1, *(v0 + 56));
  return v1;
}

void SetRecoveryKeyRequest.recoveryEncryptionPubKey.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100002BF0(*(v8 + 48), *(v8 + 56), a3, a4, a5, a6, a7, a8);
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
}

uint64_t SetRecoveryKeyRequest.stableInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for SetRecoveryKeyRequest(0);
  sub_100019C6C(v1 + *(v7 + 44), v6, &qword_1002985A8, &unk_100226650);
  v8 = type metadata accessor for SignedPeerStableInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerStableInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_1002985A8, &unk_100226650);
  }

  return result;
}

uint64_t SetRecoveryKeyRequest.stableInfoAndSig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 44);
  sub_1000114D4(v1 + v3, &qword_1002985A8, &unk_100226650);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedPeerStableInfo);
  v4 = type metadata accessor for SignedPeerStableInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SetRecoveryKeyRequest.stableInfoAndSig.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_1002985A8, &unk_100226650) - 8) + 64);
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
  v8 = type metadata accessor for SignedPeerStableInfo(0);
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
  v14 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 44);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_1002985A8, &unk_100226650);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerStableInfo);
  }

  return sub_10010618C;
}

void (*SetRecoveryKeyRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 48);
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

BOOL sub_100092930(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_10001148C(a1, a2);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_100019C6C(v4 + *(v13 + 48), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000114D4(v12, a1, a2);
  return v15;
}

uint64_t sub_100092A68(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 48);
  sub_1000114D4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void (*SetRecoveryKeyRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 52);
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

BOOL sub_100092D94(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_10001148C(a1, a2);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_100019C6C(v4 + *(v13 + 52), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000114D4(v12, a1, a2);
  return v15;
}

uint64_t sub_100092ECC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 52);
  sub_1000114D4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_100092FC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100093060(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SetRecoveryKeyRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_10021D470;
  *(a1 + 48) = xmmword_10021D470;
  *(a1 + 64) = _swiftEmptyArrayStorage;
  *(a1 + 72) = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for SetRecoveryKeyRequest(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = v2[11];
  v4 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[12];
  v6 = type metadata accessor for Metrics(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[13];
  v8 = type metadata accessor for AccountInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t SetRecoveryKeyResponse.changes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SetRecoveryKeyResponse(0) + 24);
  sub_1000114D4(v1 + v3, &unk_10029D750, &qword_10021E850);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Changes);
  v4 = type metadata accessor for Changes(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SetRecoveryKeyResponse.changes.modify(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
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
  v8 = type metadata accessor for Changes(0);
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
  v14 = *(type metadata accessor for SetRecoveryKeyResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100106188;
}

uint64_t RemoveRecoveryKeyRequest.stableInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(v1 + *(v7 + 28), v6, &qword_1002985A8, &unk_100226650);
  v8 = type metadata accessor for SignedPeerStableInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerStableInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_1002985A8, &unk_100226650);
  }

  return result;
}

uint64_t RemoveRecoveryKeyRequest.stableInfoAndSig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 28);
  sub_1000114D4(v1 + v3, &qword_1002985A8, &unk_100226650);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedPeerStableInfo);
  v4 = type metadata accessor for SignedPeerStableInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RemoveRecoveryKeyRequest.stableInfoAndSig.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_1002985A8, &unk_100226650) - 8) + 64);
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
  v8 = type metadata accessor for SignedPeerStableInfo(0);
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
  v14 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_1002985A8, &unk_100226650);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerStableInfo);
  }

  return sub_10010618C;
}

uint64_t RemoveRecoveryKeyRequest.dynamicInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(v1 + *(v7 + 32), v6, &unk_10029D760, &qword_10021E810);
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerDynamicInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &unk_10029D760, &qword_10021E810);
  }

  return result;
}

uint64_t RemoveRecoveryKeyRequest.dynamicInfoAndSig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 32);
  sub_1000114D4(v1 + v3, &unk_10029D760, &qword_10021E810);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for SignedPeerDynamicInfo);
  v4 = type metadata accessor for SignedPeerDynamicInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RemoveRecoveryKeyRequest.dynamicInfoAndSig.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D760, &qword_10021E810) - 8) + 64);
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
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
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
  v14 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 32);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D760, &qword_10021E810);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D760, &qword_10021E810);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerDynamicInfo);
  }

  return sub_100106190;
}

BOOL sub_100093F98(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_10001148C(a1, a2);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_100019C6C(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000114D4(v12, a1, a2);
  return v15;
}

uint64_t sub_1000940D0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1000114D4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t RemoveRecoveryKeyRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 36);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RemoveRecoveryKeyRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 36);
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

uint64_t RemoveRecoveryKeyRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 40);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RemoveRecoveryKeyRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 40);
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

uint64_t RemoveRecoveryKeyRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = v2[7];
  v4 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[9];
  v8 = type metadata accessor for Metrics(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[10];
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(&a1[v9], 1, 1, v10);
}

void (*RemoveRecoveryKeyResponse.changes.modify(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
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
  v8 = type metadata accessor for Changes(0);
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
  v14 = *(type metadata accessor for RemoveRecoveryKeyResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100106188;
}

uint64_t sub_100094CFC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for Changes(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t PerformATOPRVActionsRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 20);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PerformATOPRVActionsRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 20);
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

uint64_t PerformATOPRVActionsRequest.accountInfo.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PerformATOPRVActionsRequest(0);
  sub_100019C6C(v1 + *(v7 + 24), v6, &unk_10029D6F0, &qword_100226B40);
  v8 = type metadata accessor for AccountInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for AccountInfo);
  }

  *a1 = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000114D4(v6, &unk_10029D6F0, &qword_100226B40);
  }

  return result;
}

uint64_t PerformATOPRVActionsRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 24);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PerformATOPRVActionsRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 24);
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

void (*AddCustodianRecoveryKeyRequest.changeToken.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;

  return sub_1000956AC;
}

uint64_t AddCustodianRecoveryKeyRequest.peerID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

void AddCustodianRecoveryKeyRequest.peerID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000CB2E0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 5);
  *(v8 + 4) = a1;
  *(v8 + 5) = a2;
  v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26;
}

void (*AddCustodianRecoveryKeyRequest.peerID.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v4 + 72) = *(v6 + 32);
  *(v4 + 80) = v7;

  return sub_100095884;
}

uint64_t sub_1000959D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v7 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  sub_100019C6C(v11 + v12, v10, &unk_10029D7A0, &qword_10021E858);
  v13 = type metadata accessor for Peer(0);
  v14 = *(*(v13 - 1) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return sub_1000F89AC(v10, a3, type metadata accessor for Peer);
  }

  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  *(a3 + 2) = _swiftEmptyArrayStorage;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v15 = v13[7];
  v16 = type metadata accessor for SignedPeerPermanentInfo(0);
  (*(*(v16 - 8) + 56))(&a3[v15], 1, 1, v16);
  v17 = v13[8];
  v18 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v18 - 8) + 56))(&a3[v17], 1, 1, v18);
  v19 = v13[9];
  v20 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v20 - 8) + 56))(&a3[v19], 1, 1, v20);
  v21 = v13[10];
  v22 = type metadata accessor for SignedRecoveryVoucher(0);
  (*(*(v22 - 8) + 56))(&a3[v21], 1, 1, v22);
  v23 = v13[11];
  v24 = type metadata accessor for SignedCustodianRecoveryKey(0);
  (*(*(v24 - 8) + 56))(&a3[v23], 1, 1, v24);
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return sub_1000114D4(v10, &unk_10029D7A0, &qword_10021E858);
  }

  return result;
}

uint64_t AddCustodianRecoveryKeyRequest.peer.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000CB2E0(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for Peer);
  v11 = type metadata accessor for Peer(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D7A0, &qword_10021E858);
  return swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.peer.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D7A0, &qword_10021E858) - 8) + 64);
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
  v8 = type metadata accessor for Peer(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
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
  v14 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D7A0, &qword_10021E858);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = _swiftEmptyArrayStorage;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v18 = v8[7];
    v19 = type metadata accessor for SignedPeerPermanentInfo(0);
    (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
    v20 = v8[8];
    v21 = type metadata accessor for SignedPeerStableInfo(0);
    (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
    v22 = v8[9];
    v23 = type metadata accessor for SignedPeerDynamicInfo(0);
    (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
    v24 = v8[10];
    v25 = type metadata accessor for SignedRecoveryVoucher(0);
    (*(*(v25 - 8) + 56))(&v13[v24], 1, 1, v25);
    v26 = v8[11];
    v27 = type metadata accessor for SignedCustodianRecoveryKey(0);
    (*(*(v27 - 8) + 56))(&v13[v26], 1, 1, v27);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D7A0, &qword_10021E858);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Peer);
  }

  return sub_1000961F0;
}

void sub_1000961F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Peer);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000CB2E0(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for Peer);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for Peer);
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
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000CB2E0(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for Peer);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D7A0, &qword_10021E858);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL AddCustodianRecoveryKeyRequest.hasPeer.getter()
{
  v1 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D7A0, &qword_10021E858);
  v7 = type metadata accessor for Peer(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D7A0, &qword_10021E858);
  return v8;
}

Swift::Void __swiftcall AddCustodianRecoveryKeyRequest.clearPeer()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000CB2E0(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Peer(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
}

uint64_t AddCustodianRecoveryKeyRequest.stableInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(v7 + v8, v6, &qword_1002985A8, &unk_100226650);
  v9 = type metadata accessor for SignedPeerStableInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerStableInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v6, &qword_1002985A8, &unk_100226650);
  }

  return result;
}

uint64_t AddCustodianRecoveryKeyRequest.stableInfoAndSig.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000CB2E0(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for SignedPeerStableInfo);
  v11 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_1002985A8, &unk_100226650);
  return swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.stableInfoAndSig.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_1002985A8, &unk_100226650) - 8) + 64);
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
  v8 = type metadata accessor for SignedPeerStableInfo(0);
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
  v14 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_1002985A8, &unk_100226650);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerStableInfo);
  }

  return sub_100096BF8;
}

void sub_100096BF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for SignedPeerStableInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000CB2E0(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for SignedPeerStableInfo);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_1002985A8, &unk_100226650);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for SignedPeerStableInfo);
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
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000CB2E0(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for SignedPeerStableInfo);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_1002985A8, &unk_100226650);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL AddCustodianRecoveryKeyRequest.hasStableInfoAndSig.getter()
{
  v1 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_1002985A8, &unk_100226650);
  v7 = type metadata accessor for SignedPeerStableInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_1002985A8, &unk_100226650);
  return v8;
}

Swift::Void __swiftcall AddCustodianRecoveryKeyRequest.clearStableInfoAndSig()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000CB2E0(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_1002985A8, &unk_100226650);
  swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.tlkShares.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1000971C4;
}

uint64_t AddCustodianRecoveryKeyRequest.dynamicInfoAndSig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(v7 + v8, v6, &unk_10029D760, &qword_10021E810);
  v9 = type metadata accessor for SignedPeerDynamicInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000F89AC(v6, a1, type metadata accessor for SignedPeerDynamicInfo);
  }

  *a1 = xmmword_10021D470;
  a1[1] = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v6, &unk_10029D760, &qword_10021E810);
  }

  return result;
}

uint64_t AddCustodianRecoveryKeyRequest.dynamicInfoAndSig.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000CB2E0(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for SignedPeerDynamicInfo);
  v11 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D760, &qword_10021E810);
  return swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.dynamicInfoAndSig.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D760, &qword_10021E810) - 8) + 64);
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
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
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
  v14 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D760, &qword_10021E810);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = xmmword_10021D470;
    v13[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D760, &qword_10021E810);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for SignedPeerDynamicInfo);
  }

  return sub_10009774C;
}

void sub_10009774C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for SignedPeerDynamicInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000CB2E0(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for SignedPeerDynamicInfo);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D760, &qword_10021E810);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for SignedPeerDynamicInfo);
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
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000CB2E0(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for SignedPeerDynamicInfo);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D760, &qword_10021E810);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL AddCustodianRecoveryKeyRequest.hasDynamicInfoAndSig.getter()
{
  v1 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D760, &qword_10021E810);
  v7 = type metadata accessor for SignedPeerDynamicInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D760, &qword_10021E810);
  return v8;
}

Swift::Void __swiftcall AddCustodianRecoveryKeyRequest.clearDynamicInfoAndSig()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000CB2E0(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D760, &qword_10021E810);
  swift_endAccess();
}

uint64_t AddCustodianRecoveryKeyRequest.metrics.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000CB2E0(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for Metrics);
  v11 = type metadata accessor for Metrics(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &qword_100297FE0, &unk_10021E7F0);
  return swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.metrics.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
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
  v8 = type metadata accessor for Metrics(0);
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
  v14 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100297FE0, &unk_10021E7F0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100097FCC;
}

void sub_100097FCC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Metrics);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000CB2E0(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for Metrics);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for Metrics);
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
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000CB2E0(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for Metrics);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL AddCustodianRecoveryKeyRequest.hasMetrics.getter()
{
  v1 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &qword_100297FE0, &unk_10021E7F0);
  v7 = type metadata accessor for Metrics(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &qword_100297FE0, &unk_10021E7F0);
  return v8;
}

Swift::Void __swiftcall AddCustodianRecoveryKeyRequest.clearMetrics()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000CB2E0(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Metrics(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
}

uint64_t sub_1000984A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  sub_100019C6C(v11 + v12, v10, &unk_10029D6F0, &qword_100226B40);
  v13 = type metadata accessor for AccountInfo(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return sub_1000F89AC(v10, a3, type metadata accessor for AccountInfo);
  }

  *a3 = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return sub_1000114D4(v10, &unk_10029D6F0, &qword_100226B40);
  }

  return result;
}

uint64_t AddCustodianRecoveryKeyRequest.accountInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000CB2E0(v10);
    *(v2 + v8) = v10;
  }

  sub_1000F89AC(a1, v7, type metadata accessor for AccountInfo);
  v11 = type metadata accessor for AccountInfo(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v7, &v10->_TtCs12_SwiftObject_opaque[v12], &unk_10029D6F0, &qword_100226B40);
  return swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.accountInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
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
  v8 = type metadata accessor for AccountInfo(0);
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
  v14 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D6F0, &qword_100226B40);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_1000989F4;
}

void sub_1000989F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for AccountInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_1000CB2E0(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v10, v14, type metadata accessor for AccountInfo);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
    swift_beginAccess();
    sub_1000F9E80(v14, &v6->_TtCs12_SwiftObject_opaque[v15], &unk_10029D6F0, &qword_100226B40);
    swift_endAccess();
    sub_1000F9228(v9, type metadata accessor for AccountInfo);
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
      type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_1000CB2E0(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1000F89AC(v9, v14, type metadata accessor for AccountInfo);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
    swift_beginAccess();
    sub_1000F9E80(v14, &v18->_TtCs12_SwiftObject_opaque[v23], &unk_10029D6F0, &qword_100226B40);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL AddCustodianRecoveryKeyRequest.hasAccountInfo.getter()
{
  v1 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(v5 + v6, v4, &unk_10029D6F0, &qword_100226B40);
  v7 = type metadata accessor for AccountInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000114D4(v4, &unk_10029D6F0, &qword_100226B40);
  return v8;
}

Swift::Void __swiftcall AddCustodianRecoveryKeyRequest.clearAccountInfo()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    swift_allocObject();
    v8 = sub_1000CB2E0(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for AccountInfo(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v5, &v8->_TtCs12_SwiftObject_opaque[v10], &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.viewKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_100098FC0;
}

uint64_t sub_100099044@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_100019C6C(v2 + *(v9 + 24), v8, &unk_10029D750, &qword_10021E850);
  v10 = type metadata accessor for Changes(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1000F89AC(v8, a2, type metadata accessor for Changes);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = xmmword_10021D470;
  *(a2 + 40) = xmmword_10021D470;
  *(a2 + 56) = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v8, &unk_10029D750, &qword_10021E850);
  }

  return result;
}

uint64_t AddCustodianRecoveryKeyResponse.changes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddCustodianRecoveryKeyResponse(0) + 24);
  sub_1000114D4(v1 + v3, &unk_10029D750, &qword_10021E850);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Changes);
  v4 = type metadata accessor for Changes(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AddCustodianRecoveryKeyResponse.changes.modify(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
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
  v8 = type metadata accessor for Changes(0);
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
  v14 = *(type metadata accessor for AddCustodianRecoveryKeyResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100106188;
}

uint64_t FetchChangesRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchChangesRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchChangesRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for FetchChangesRequest(0) + 24);
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

uint64_t FetchChangesRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchChangesRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchChangesRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for FetchChangesRequest(0) + 28);
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

uint64_t sub_100099D14@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_100019C6C(v2 + *(v9 + 20), v8, &unk_10029D750, &qword_10021E850);
  v10 = type metadata accessor for Changes(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1000F89AC(v8, a2, type metadata accessor for Changes);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = xmmword_10021D470;
  *(a2 + 40) = xmmword_10021D470;
  *(a2 + 56) = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v8, &unk_10029D750, &qword_10021E850);
  }

  return result;
}

uint64_t sub_100099EB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_1000114D4(v2 + v4, &unk_10029D750, &qword_10021E850);
  sub_1000F89AC(a1, v2 + v4, type metadata accessor for Changes);
  v5 = type metadata accessor for Changes(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*FetchChangesResponse.changes.modify(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
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
  v8 = type metadata accessor for Changes(0);
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
  v14 = *(type metadata accessor for FetchChangesResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100106188;
}

uint64_t FetchViableBottlesRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchViableBottlesRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchViableBottlesRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for FetchViableBottlesRequest(0) + 24);
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

uint64_t FetchViableBottlesRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchViableBottlesRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchViableBottlesRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for FetchViableBottlesRequest(0) + 28);
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

uint64_t FetchViableBottlesRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(ViableBottlesRequest + 24);
  v4 = type metadata accessor for Metrics(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(ViableBottlesRequest + 28);
  v6 = type metadata accessor for AccountInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t FetchViableBottlesResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  type metadata accessor for FetchViableBottlesResponse(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t FetchRecoverableTLKSharesRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchRecoverableTLKSharesRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 24);
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

uint64_t FetchRecoverableTLKSharesRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchRecoverableTLKSharesRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 28);
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

uint64_t sub_10009B29C@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v3 = a1(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(v3 + 28);
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t FetchRecoverableTLKSharesResponse.View.keys.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchRecoverableTLKSharesResponse.View(0) + 28);
  sub_1000114D4(v1 + v3, &qword_100297E40, &unk_10021E7D0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for ViewKeysRecords);
  v4 = type metadata accessor for ViewKeysRecords(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchRecoverableTLKSharesResponse.View.keys.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_10001148C(&qword_100297E40, &unk_10021E7D0) - 8) + 64);
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
  v8 = type metadata accessor for ViewKeysRecords(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
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
  v14 = *(type metadata accessor for FetchRecoverableTLKSharesResponse.View(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297E40, &unk_10021E7D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v16 = v8[5];
    v17 = sub_100216424();
    v18 = *(*(v17 - 8) + 56);
    v18(v13 + v16, 1, 1, v17);
    v18(v13 + v8[6], 1, 1, v17);
    v18(v13 + v8[7], 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297E40, &unk_10021E7D0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for ViewKeysRecords);
  }

  return sub_10009B74C;
}

void sub_10009B74C(uint64_t **a1, char a2)
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
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for ViewKeysRecords);
    sub_1000114D4(v9 + v3, &qword_100297E40, &unk_10021E7D0);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for ViewKeysRecords);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for ViewKeysRecords);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_100297E40, &unk_10021E7D0);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for ViewKeysRecords);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t FetchRecoverableTLKSharesResponse.View.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = _swiftEmptyArrayStorage;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(RecoverableTLKShares + 28);
  v4 = type metadata accessor for ViewKeysRecords(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t FetchPolicyDocumentsRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchPolicyDocumentsRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 24);
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

uint64_t FetchPolicyDocumentsRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchPolicyDocumentsRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 28);
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

uint64_t sub_10009C238@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a2(0);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

void (*GetRepairActionRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for GetRepairActionRequest(0) + 48);
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

void (*GetRepairActionRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for GetRepairActionRequest(0) + 52);
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

uint64_t sub_10009C894@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10009C930(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t GetRepairActionRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  *(a1 + 32) = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v3 = *(RepairActionRequest + 48);
  v4 = type metadata accessor for Metrics(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(RepairActionRequest + 52);
  v6 = type metadata accessor for AccountInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_10009CB00(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  sub_1000114D4(v2 + v4, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v2 + v4, type metadata accessor for Metrics);
  v5 = type metadata accessor for Metrics(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*GetEscrowCheckRequest.metrics.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for GetEscrowCheckRequest(0) + 48);
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

uint64_t sub_10009CE68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_100019C6C(v2 + *(v9 + 52), v8, &unk_10029D6F0, &qword_100226B40);
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

uint64_t sub_10009CFE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 52);
  sub_1000114D4(v2 + v4, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v2 + v4, type metadata accessor for AccountInfo);
  v5 = type metadata accessor for AccountInfo(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*GetEscrowCheckRequest.accountInfo.modify(void *a1))(uint64_t **, char)
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
  v14 = *(type metadata accessor for GetEscrowCheckRequest(0) + 52);
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