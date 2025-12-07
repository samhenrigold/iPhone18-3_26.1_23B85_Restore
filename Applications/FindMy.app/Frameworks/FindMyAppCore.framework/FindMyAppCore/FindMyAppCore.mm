uint64_t sub_1D68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_1E04(void *a1, uint64_t *a2)
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

void *sub_1E34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1E60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError, &unk_BD190);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_28C4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_203C(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError, &unk_BD190);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_20A8(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError, &unk_BD190);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_2114(void *a1, uint64_t a2)
{
  v4 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError, &unk_BD190);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_21C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError, &unk_BD190);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_B7EB0();
  sub_B7880();
  return sub_B7EE0();
}

void *sub_22A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C0(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC60, type metadata accessor for SPBeaconSharingError, &unk_BCFBC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_232C(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC60, type metadata accessor for SPBeaconSharingError, &unk_BCFBC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_239C(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError, &unk_BD190);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_2498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2734(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_27CC()
{
  result = qword_EEC88;
  if (!qword_EEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEC88);
  }

  return result;
}

uint64_t sub_28C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t static Destination.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a1;
  v61 = a2;
  v54 = *(a5 - 8);
  v5 = __chkstk_darwin(a1);
  v50 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v7 - 8);
  v8 = __chkstk_darwin(v5);
  v49 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v10 - 8);
  __chkstk_darwin(v8);
  v48[0] = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[1] = v12;
  v58 = v13;
  v62[0] = v13;
  v62[1] = v14;
  v55 = v14;
  v56 = v15;
  v62[2] = v15;
  v62[3] = v12;
  v51 = v16;
  v52 = v17;
  v62[4] = v16;
  v62[5] = v17;
  v18 = type metadata accessor for Destination(0, v62);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = v48 - v24;
  __chkstk_darwin(v23);
  v27 = v48 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = *(TupleTypeMetadata2 - 8);
  v29 = __chkstk_darwin(TupleTypeMetadata2);
  v31 = v48 - v30;
  v32 = *(v29 + 48);
  v33 = *(v19 + 16);
  v33(v48 - v30, v60, v18);
  v33(&v31[v32], v61, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = v57;
    v41 = v58;
    v33(v27, v31, v18);
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = v48[0];
      (*(v42 + 32))(v48[0], &v31[v32], v41);
      v38 = sub_B78C0();
      v47 = *(v42 + 8);
      v47(v46, v41);
      v47(v27, v41);
      goto LABEL_13;
    }

    (*(v42 + 8))(v27, v41);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v33(v22, v31, v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v43 = v54;
      v44 = v50;
      v37 = v56;
      (*(v54 + 32))(v50, &v31[v32], v56);
      v38 = sub_B78C0();
      v39 = *(v43 + 8);
      v39(v44, v37);
      v40 = v22;
      goto LABEL_9;
    }

    (*(v54 + 8))(v22, v56);
LABEL_12:
    v38 = 0;
    v19 = v59;
    v18 = TupleTypeMetadata2;
    goto LABEL_13;
  }

  v33(v25, v31, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v53 + 8))(v25, v55);
    goto LABEL_12;
  }

  v35 = v53;
  v36 = v49;
  v37 = v55;
  (*(v53 + 32))(v49, &v31[v32], v55);
  v38 = sub_B78C0();
  v39 = *(v35 + 8);
  v39(v36, v37);
  v40 = v25;
LABEL_9:
  v39(v40, v37);
LABEL_13:
  (*(v19 + 8))(v31, v18);
  return v38 & 1;
}

uint64_t Destination.hash(into:)(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v27 = *(v3 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v26 = *(v8 - 8);
  v9 = __chkstk_darwin(v4);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v9);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v21, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v26;
      (*(v26 + 32))(v11, v19, v8);
      sub_B7EC0(1uLL);
      sub_B7880();
      return (*(v23 + 8))(v11, v8);
    }

    else
    {
      v25 = v27;
      (*(v27 + 32))(v6, v19, v3);
      sub_B7EC0(2uLL);
      sub_B7880();
      return (*(v25 + 8))(v6, v3);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v19, v13);
    sub_B7EC0(0);
    sub_B7880();
    return (*(v14 + 8))(v17, v13);
  }
}

Swift::Int Destination.hashValue.getter(void *a1)
{
  sub_B7EB0();
  Destination.hash(into:)(v3, a1);
  return sub_B7EE0();
}

Swift::Int sub_3278(uint64_t a1, void *a2)
{
  sub_B7EB0();
  Destination.hash(into:)(v4, a2);
  return sub_B7EE0();
}

uint64_t sub_32D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = Path.id.getter(a1, WitnessTable);
  *a2 = result;
  return result;
}

uint64_t Destination.stack.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload)
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }

  else
  {
    v12 = *(a1 + 16);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v12);
  }
}

uint64_t sub_34A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v16 = *(a3 + a4 - 48);
  v6 = sub_B7BE0();
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v10 = *(v9 + 16);
  v11 = *(v5 - 32);
  v14 = *(v5 - 16);
  v15 = v11;
  v10(v8, a1);
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v14;
  v12 = type metadata accessor for Destination(0, v17);
  return Destination.stack.setter(v8, v12);
}

uint64_t Destination.stack.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1, 1, v5);
  if (result != 1)
  {
    (*(*(a2 - 8) + 8))(v2, a2);
    (*(v6 + 32))(v2, a1, v5);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*Destination.stack.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = sub_B7BE0();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Destination.stack.getter(a2, v10);
  return sub_37D0;
}

uint64_t Destination.sheet.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 24);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t sub_3968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 48);
  v7 = *(a3 + a4 - 8);
  v16 = *(a3 + a4 - 40);
  v8 = sub_B7BE0();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v12 = *(v11 + 16);
  v15 = *(v5 - 24);
  v12(v10, a1);
  v17 = v6;
  v18 = v16;
  v19 = v15;
  v20 = v7;
  v13 = type metadata accessor for Destination(0, &v17);
  return Destination.sheet.setter(v10, v13);
}

uint64_t Destination.sheet.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1, 1, v5);
  if (result != 1)
  {
    (*(*(a2 - 8) + 8))(v2, a2);
    (*(v6 + 32))(v2, a1, v5);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*Destination.sheet.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = sub_B7BE0();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Destination.sheet.getter(a2, v10);
  return sub_3CA8;
}

uint64_t Destination.alert.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 32);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 2)
  {
    v11 = *(a1 + 32);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t sub_3E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(a2 + a3 - 32);
  v8[0] = *(a2 + a3 - 48);
  v8[1] = v5;
  v8[2] = *(a2 + a3 - 16);
  v6 = type metadata accessor for Destination(0, v8);
  return a4(v6);
}

uint64_t sub_3EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v16 = *(a3 + a4 - 32);
  v6 = sub_B7BE0();
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v10 = *(v9 + 16);
  v11 = *(v5 - 16);
  v14 = *(v5 - 48);
  v15 = v11;
  v10(v8, a1);
  v17[0] = v14;
  v17[1] = v16;
  v17[2] = v15;
  v12 = type metadata accessor for Destination(0, v17);
  return Destination.alert.setter(v8, v12);
}

uint64_t Destination.alert.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1, 1, v5);
  if (result != 1)
  {
    (*(*(a2 - 8) + 8))(v2, a2);
    (*(v6 + 32))(v2, a1, v5);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*Destination.alert.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = sub_B7BE0();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Destination.alert.getter(a2, v10);
  return sub_41D4;
}

void sub_41EC(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v9 = *v4;
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3((*a1)[5], *v4);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t (*sub_42C0(void *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Destination.stack.modify(v4, a2);
  return sub_60EC;
}

uint64_t (*sub_4340(void *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Destination.sheet.modify(v4, a2);
  return sub_60EC;
}

uint64_t (*sub_43C0(void *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Destination.alert.modify(v4, a2);
  return sub_4438;
}

void sub_443C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t Optional<A>.stack.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 32))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t Optional<A>.stack.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = sub_B7BE0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  (*(v11 + 16))(&v19 - v15, a1, v10);
  if ((*(v7 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(a1, v10);
    v17 = v20;
    (*(*(a2 - 8) + 8))(v20, a2);
    return (*(*(v5 - 8) + 56))(v17, 1, 1, v5);
  }

  else
  {
    (*(v7 + 32))(v9, v16, AssociatedTypeWitness);
    if (!(*(*(v5 - 8) + 48))(v20, 1, v5))
    {
      (*(v7 + 16))(v14, v9, AssociatedTypeWitness);
      (*(v7 + 56))(v14, 0, 1, AssociatedTypeWitness);
      (*(v19 + 40))(v14, v5);
    }

    (*(v11 + 8))(a1, v10);
    return (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

void (*Optional<A>.stack.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  swift_getAssociatedTypeWitness();
  v9 = sub_B7BE0();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[6] = v12;
  Optional<A>.stack.getter(a2, a3, v12);
  return sub_4AD8;
}

uint64_t Optional<A>.sheet.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 56))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t Optional<A>.sheet.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = sub_B7BE0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  (*(v11 + 16))(&v19 - v15, a1, v10);
  if ((*(v7 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(a1, v10);
    v17 = v20;
    (*(*(a2 - 8) + 8))(v20, a2);
    return (*(*(v5 - 8) + 56))(v17, 1, 1, v5);
  }

  else
  {
    (*(v7 + 32))(v9, v16, AssociatedTypeWitness);
    if (!(*(*(v5 - 8) + 48))(v20, 1, v5))
    {
      (*(v7 + 16))(v14, v9, AssociatedTypeWitness);
      (*(v7 + 56))(v14, 0, 1, AssociatedTypeWitness);
      (*(v19 + 64))(v14, v5);
    }

    (*(v11 + 8))(a1, v10);
    return (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

void (*Optional<A>.sheet.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  swift_getAssociatedTypeWitness();
  v9 = sub_B7BE0();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[6] = v12;
  Optional<A>.sheet.getter(a2, a3, v12);
  return sub_5144;
}

uint64_t Optional<A>.alert.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 80))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t sub_5330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v9 = sub_B7BE0();
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1);
  v13 = sub_B7BE0();
  return a6(v11, v13, v8);
}

uint64_t Optional<A>.alert.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = sub_B7BE0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  (*(v11 + 16))(&v19 - v15, a1, v10);
  if ((*(v7 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(a1, v10);
    v17 = v20;
    (*(*(a2 - 8) + 8))(v20, a2);
    return (*(*(v5 - 8) + 56))(v17, 1, 1, v5);
  }

  else
  {
    (*(v7 + 32))(v9, v16, AssociatedTypeWitness);
    if (!(*(*(v5 - 8) + 48))(v20, 1, v5))
    {
      (*(v7 + 16))(v14, v9, AssociatedTypeWitness);
      (*(v7 + 56))(v14, 0, 1, AssociatedTypeWitness);
      (*(v19 + 88))(v14, v5);
    }

    (*(v11 + 8))(a1, v10);
    return (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

void (*Optional<A>.alert.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  swift_getAssociatedTypeWitness();
  v9 = sub_B7BE0();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[6] = v12;
  Optional<A>.alert.getter(a2, a3, v12);
  return sub_58BC;
}

void sub_58D4(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  if (a2)
  {
    v7 = v4[3];
    v8 = v4[4];
    v9 = v4[1];
    v10 = *v4;
    (*(v8 + 16))((*a1)[5], v6, v7);
    a3(v5, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3((*a1)[6], *v4, v4[1]);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_59B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_5A78(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

__n128 sub_5B5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t keypath_get_9Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 8);
  v6 = sub_B7BE0();
  return a4(v6, v5);
}

uint64_t sub_5C70(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_5D04(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(*(a3[4] - 8) + 64);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_5E4C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = v5 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v5 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_41:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_26;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t DetailsSectionRowView.State.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DelegatedSharesInvalidator.init(urlInvalidationBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AppMainView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_B6E60();
  result = sub_B71F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_6240(uint64_t a1, int a2)
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

uint64_t sub_6288(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AppMainView(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppMainView(_WORD *result, int a2, int a3)
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

uint64_t sub_63C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_B6DE0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ContactPickerView(0);
  sub_A310(v1 + *(v10 + 20), v9, &qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B6B50();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_B7B50();
    v13 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ContactPickerView.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for ContactPickerView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ContactPickerView(uint64_t a1)
{
  result = qword_EEEF0;
  if (!qword_EEEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v76 = *(v83 - 8);
  __chkstk_darwin(v83);
  v62 = &v62 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v4 = __chkstk_darwin(v3 - 8);
  v79 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v62 - v6;
  v7 = type metadata accessor for ContactPickerView(0);
  v74 = *(v7 - 8);
  v82 = *(v74 + 64);
  __chkstk_darwin(v7 - 8);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_B6DF0();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE10, &qword_BD538);
  v68 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = &v62 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE18, &qword_BD540);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v62 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE20, &qword_BD548);
  v72 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v62 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE28, &qword_BD550);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v85 = &v62 - v15;
  v16 = *v1;
  swift_getKeyPath();
  v87 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel___observationRegistrar;
  v91 = v16;
  v86 = sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);

  sub_B65C0();

  v17 = *(v16 + 113);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v91 = v16;
  v92 = KeyPath;
  v93 = sub_9734;
  v94 = v19;
  v20 = *(v16 + 24);
  v89 = *(v16 + 16);
  v90 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE38, &unk_BD5B0);
  v22 = sub_A464(&qword_EEE40, &qword_EEE38, &unk_BD5B0, sub_9794);
  v23 = sub_97E8();
  sub_B72D0();

  v24 = v65;
  v25 = v67;
  (*(v65 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v67);
  v91 = v21;
  v92 = &type metadata for String;
  v93 = v22;
  v94 = v23;
  v71 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v64;
  v28 = v66;
  sub_B73C0();
  (*(v24 + 8))(v10, v25);
  (*(v68 + 8))(v12, v28);
  v29 = v63;
  v88 = v63;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE60, &qword_BD5C0);
  v91 = v28;
  v92 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_A8CC(&qword_EEE68, &qword_EEE60, &qword_BD5C0, &protocol conformance descriptor for TupleToolbarContent<A>);
  v33 = v69;
  sub_B7450();
  (*(v70 + 8))(v27, v33);
  swift_getKeyPath();
  v91 = v16;
  sub_B65C0();

  LOBYTE(v89) = *(v16 + 114);
  v34 = v73;
  sub_9870(v29, v73);
  v35 = *(v74 + 80);
  v70 = ~v35;
  v36 = swift_allocObject();
  sub_98D8(v34, v36 + ((v35 + 16) & ~v35));
  v91 = v33;
  v92 = v30;
  v93 = v31;
  v94 = v32;
  v37 = v83;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v84;
  v74 = v38;
  v40 = v81;
  sub_B7470();
  v41 = v76;

  (*(v72 + 8))(v40, v39);
  swift_getKeyPath();
  v91 = v16;
  sub_B65C0();
  v42 = v75;

  v43 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  v81 = v43;
  sub_A310(v16 + v43, v42, &qword_EEE08, &qword_BD530);
  if ((*(v41 + 48))(v42, 1, v37))
  {
    sub_A194(v42, &qword_EEE08, &qword_BD530);
    v44 = 0xE100000000000000;
    v45 = 45;
  }

  else
  {
    v46 = v62;
    (*(v41 + 16))(v62, v42, v37);
    sub_A194(v42, &qword_EEE08, &qword_BD530);
    v45 = sub_B6920();
    v44 = v47;
    (*(v41 + 8))(v46, v37);
  }

  v91 = v45;
  v92 = v44;
  v76 = sub_B7200();
  v75 = v48;
  LODWORD(v71) = v49;
  v72 = v50;
  sub_9870(v29, v34);
  sub_B7A60();
  v51 = sub_B7A50();
  v52 = (v35 + 32) & v70;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = &protocol witness table for MainActor;
  sub_98D8(v34, v53 + v52);
  sub_9870(v29, v34);
  v54 = sub_B7A50();
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = &protocol witness table for MainActor;
  sub_98D8(v34, v55 + v52);
  sub_B76D0();
  swift_getKeyPath();
  v91 = v16;
  sub_B65C0();

  v56 = v79;
  sub_A310(&v81[v16], v79, &qword_EEE08, &qword_BD530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
  v91 = v84;
  v92 = &type metadata for Bool;
  v93 = v74;
  v94 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_9BD4();
  v57 = v78;
  LOBYTE(v52) = v71;
  v58 = v76;
  v59 = v75;
  v60 = v85;
  sub_B73F0();

  sub_9C84(v58, v59, v52 & 1);

  sub_A194(v56, &qword_EEE08, &qword_BD530);
  return (*(v77 + 8))(v60, v57);
}

uint64_t sub_7398@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF58, &qword_BD700);
  __chkstk_darwin(v37);
  v36 = &v29 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF60, &qword_BD708);
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF68, &qword_BD710);
  v30 = *(v35 - 8);
  __chkstk_darwin(v35);
  v29 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF70, &qword_BD718);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = sub_B6F50();
  __chkstk_darwin(v13 - 8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF78, &qword_BD720);
  v14 = *(v34 - 8);
  __chkstk_darwin(v34);
  v16 = &v29 - v15;
  sub_B7A60();
  v33 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_B6F20();
  __chkstk_darwin(v17);
  *(&v29 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF80, &qword_BD728);
  sub_A380();
  sub_B6A80();
  if (*(*a1 + 32) == 1)
  {
    v18 = sub_B6F30();
    __chkstk_darwin(v18);
    *(&v29 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEFF0, &qword_BD758);
    sub_A7E8();
    v19 = v29;
    sub_B6A80();
    v20 = sub_A8CC(&qword_EEFE8, &qword_EEF68, &qword_BD710, &protocol conformance descriptor for ToolbarItem<A, B>);
    v21 = v31;
    v22 = v35;
    sub_B6F60();
    v23 = v32;
    (*(v4 + 16))(v10, v21, v32);
    (*(v4 + 56))(v10, 0, 1, v23);
    v39 = v22;
    v40 = v20;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_A708(v10);
    (*(v4 + 8))(v21, v23);
    (*(v30 + 8))(v19, v22);
  }

  else
  {
    (*(v4 + 56))(v10, 1, 1, v32);
    v24 = sub_A8CC(&qword_EEFE8, &qword_EEF68, &qword_BD710, &protocol conformance descriptor for ToolbarItem<A, B>);
    v39 = v35;
    v40 = v24;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_A708(v10);
  }

  v25 = v36;
  v26 = *(v37 + 48);
  v27 = v34;
  (*(v14 + 16))(v36, v16, v34);
  sub_A770(v12, &v25[v26]);
  sub_B6EE0();
  sub_A708(v12);
  (*(v14 + 8))(v16, v27);
}

uint64_t sub_79F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_B6C50();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_B6ED0();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B6700();
  __chkstk_darwin(v8 - 8);
  v9 = sub_B6720();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEFB0, &qword_BD740);
  v38 = *(v13 - 8);
  v39 = v13;
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEFA8, &qword_BD738);
  __chkstk_darwin(v40);
  v48 = &v38 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF98, &qword_BD730);
  __chkstk_darwin(v45);
  v47 = &v38 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF80, &qword_BD728);
  __chkstk_darwin(v46);
  v44 = &v38 - v18;
  sub_B7A60();
  v42 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *a1;
  v20 = *(*a1 + 40);

  v20(sub_AA90, v19);

  sub_B6710();
  sub_B6EC0();
  v21 = sub_A6C0(&qword_EEFB8, &type metadata accessor for GenericControl, &protocol conformance descriptor for GenericControl);
  v22 = sub_A6C0(&qword_EEFC0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
  sub_B7240();
  (*(v41 + 8))(v7, v5);
  (*(v10 + 8))(v12, v9);
  v23 = v43;
  sub_B6C40();
  v52 = v9;
  v53 = v5;
  v54 = v21;
  v55 = v22;
  v24 = 1;
  swift_getOpaqueTypeConformance2();
  v25 = v48;
  v26 = v39;
  sub_B72E0();
  (*(v49 + 8))(v23, v50);
  (*(v38 + 8))(v15, v26);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v52 = v19;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  v28 = *(v19 + 113);
  v29 = v25 + *(v40 + 36);
  *v29 = KeyPath;
  *(v29 + 8) = v28;
  swift_getKeyPath();
  v52 = v19;
  sub_B65C0();

  if (*(v19 + 112) == 1)
  {
    swift_getKeyPath();
    v52 = v19;
    sub_B65C0();

    v24 = *(v19 + 113);
  }

  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v24;
  v32 = v47;
  sub_AB00(v25, v47, &qword_EEFA8, &qword_BD738);
  v33 = (v32 + *(v45 + 36));
  *v33 = v30;
  v33[1] = sub_AB90;
  v33[2] = v31;
  v34 = swift_getKeyPath();
  v35 = v44;
  sub_AB00(v32, v44, &qword_EEF98, &qword_BD730);
  v36 = v35 + *(v46 + 36);
  *v36 = v34;
  *(v36 + 8) = 2;
  sub_AB00(v35, v51, &qword_EEF80, &qword_BD728);
}

uint64_t sub_815C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactPickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_B6A00();
  __chkstk_darwin(v7 - 8);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B69F0();
  sub_9870(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_98D8(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_B7620();
  v10 = *a1;
  swift_getKeyPath();
  v15[1] = v10;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  LOBYTE(v10) = *(v10 + 113);
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEFF0, &qword_BD758);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_AB90;
  v14[2] = v12;
  return result;
}

uint64_t sub_83FC()
{
  v0 = sub_B6B50();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_63C4(v3);
  sub_B6B40();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_8540(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_B6B50();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *a2;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8 == v9)
  {
  }

  else
  {
    sub_63C4(v7);
    sub_B6B40();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_86D8@<X0>(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v4 - 8);
  v6 = v11 - v5;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *a1;
  swift_getKeyPath();
  v11[1] = v7;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  v8 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  sub_A310(v7 + v8, v6, &qword_EEE08, &qword_BD530);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  LOBYTE(v7) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  sub_A194(v6, &qword_EEE08, &qword_BD530);

  *a2 = v7;
  return result;
}

uint64_t sub_88E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v12[-2] = v8;
  v12[-1] = v7;
  v12[1] = v8;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65B0();

  sub_A194(v7, &qword_EEE08, &qword_BD530);
}

uint64_t sub_8AF8()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v6 = sub_B6930();
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v3 = sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50, &protocol conformance descriptor for [A]);
  v4 = sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  sub_B76E0(&v6, KeyPath, sub_8CAC, 0, v1, v2, v3, &protocol witness table for String, v4);
}

uint64_t sub_8CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  __chkstk_darwin(v10 - 8);
  v12 = v20 - v11;
  sub_B7A60();
  v20[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[2] = sub_B68C0();
  v20[3] = v13;
  sub_B68A0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_A194(v9, &qword_EEF48, &unk_C01F0);
    v16 = sub_B6A00();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  else
  {
    sub_B6890();
    (*(v15 + 8))(v9, v14);
  }

  (*(v4 + 16))(v6, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v6, v3);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_9018()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);
}

uint64_t sub_90E0@<X0>(uint64_t a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  sub_B6940();
  sub_97E8();
  v2 = sub_B7200();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_91DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  *a2 = *(v3 + 113);
  return result;
}

uint64_t sub_92AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  *a2 = *(v3 + 114);
  return result;
}

uint64_t sub_937C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  return sub_A310(v3 + v4, a2, &qword_EEE08, &qword_BD530);
}

uint64_t sub_9454(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_A310(a1, &v9[-v5], &qword_EEE08, &qword_BD530);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65B0();

  return sub_A194(v6, &qword_EEE08, &qword_BD530);
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

uint64_t sub_9660@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6D90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_9690@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6D90();
  *a1 = result & 1;
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

unint64_t sub_9794()
{
  result = qword_EF120;
  if (!qword_EF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF120);
  }

  return result;
}

unint64_t sub_97E8()
{
  result = qword_EEE58;
  if (!qword_EEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEE58);
  }

  return result;
}

uint64_t sub_9870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_98D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_993C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  type metadata accessor for ContactPickerView(0);

  return sub_8540(a1, a2);
}

uint64_t sub_99C8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ContactPickerView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_86D8(v4, a1);
}

uint64_t objectdestroy_23Tm()
{
  v1 = (type metadata accessor for ContactPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6B50();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_9B60(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactPickerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_88E0(a1, v4, v5, v6);
}

unint64_t sub_9BD4()
{
  result = qword_EEE78;
  if (!qword_EEE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEE78);
  }

  return result;
}

uint64_t sub_9C84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_9CC4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_9D94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_9E44(uint64_t a1)
{
  type metadata accessor for ContactPickerViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_9EC8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_9EC8(uint64_t a1)
{
  if (!qword_EEF00)
  {
    sub_B6B50();
    v1 = sub_B6A50();
    if (!v2)
    {
      atomic_store(v1, &qword_EEF00);
    }
  }
}

uint64_t sub_9F20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE28, &qword_BD550);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE00, &unk_BDA40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE20, &qword_BD548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE18, &qword_BD540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE60, &qword_BD5C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE10, &qword_BD538);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE38, &unk_BD5B0);
  sub_A464(&qword_EEE40, &qword_EEE38, &unk_BD5B0, sub_9794);
  sub_97E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_A8CC(&qword_EEE68, &qword_EEE60, &qword_BD5C0, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_9BD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A194(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_A1F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_A288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);

  return sub_9018();
}

uint64_t sub_A310(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_A380()
{
  result = qword_EEF88;
  if (!qword_EEF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEF80, &qword_BD728);
    sub_A464(&qword_EEF90, &qword_EEF98, &qword_BD730, sub_A514);
    sub_A8CC(&qword_EEFD8, &qword_EEFE0, &qword_BD750, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEF88);
  }

  return result;
}

uint64_t sub_A464(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_A514()
{
  result = qword_EEFA0;
  if (!qword_EEFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEFA8, &qword_BD738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEFB0, &qword_BD740);
    sub_B6720();
    sub_B6ED0();
    sub_A6C0(&qword_EEFB8, &type metadata accessor for GenericControl, &protocol conformance descriptor for GenericControl);
    sub_A6C0(&qword_EEFC0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_EEFC8, &qword_EEFD0, &qword_BD748, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEFA0);
  }

  return result;
}

uint64_t sub_A6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF70, &qword_BD718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF70, &qword_BD718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_A7E8()
{
  result = qword_EEFF8;
  if (!qword_EEFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEFF0, &qword_BD758);
    sub_A8CC(&qword_EF000, &qword_EF008, &qword_BD760, &protocol conformance descriptor for Button<A>);
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEFF8);
  }

  return result;
}

uint64_t sub_A8CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{
  v1 = (type metadata accessor for ContactPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6B50();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_AA30()
{
  type metadata accessor for ContactPickerView(0);

  return sub_83FC();
}

uint64_t sub_AA98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6CE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_AB00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id sub_AB94(uint64_t a1)
{
  v1 = type metadata accessor for ContactPickerViewControllerRepresentable.Coordinator(0);
  v2 = objc_allocWithZone(v1);
  swift_weakInit();
  swift_unknownObjectWeakInit();

  sub_B69B0();
  swift_weakAssign();
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, "init");

  return v3;
}

uint64_t sub_AC78()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_allocObject();
    v12[2] = OBJC_IVAR____TtCV13FindMyAppCore40ContactPickerViewControllerRepresentable11Coordinator_searchController;
    v12[3] = v0;
    v3 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13 = v2;
    sub_C444();

    sub_B65B0();

    swift_allocObject();
    v5 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v6 = swift_getKeyPath();
    v12[1] = v12;
    __chkstk_darwin(v6);
    v13 = v2;

    sub_B65B0();

    swift_allocObject();
    v7 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    v13 = v2;

    sub_B65B0();

    swift_allocObject();
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    v13 = v2;

    sub_B65B0();
  }

  else
  {
    result = sub_B7D20();
    __break(1u);
  }

  return result;
}

void sub_B0D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong addRecipient:a1];
  }
}

void sub_B134(uint64_t a1, NSString a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      a2 = sub_B78E0();
    }

    [v5 setComposeFieldInfoText:a2];
  }
}

void sub_B1C0(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *a4;
    v9 = Strong;
    [Strong v8];
  }
}

id sub_B2C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactPickerViewControllerRepresentable.Coordinator(uint64_t a1)
{
  result = qword_EF050;
  if (!qword_EF050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B3D8(uint64_t a1)
{
  result = sub_B69C0();
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

void sub_B478(void *a1)
{
  isa = sub_B79D0().super.isa;
  [a1 setOtherRecipientAddresses:isa];
}

id sub_B4E8@<X0>(void *a1@<X8>)
{
  result = sub_AB94(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_B550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BAD8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_B5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BAD8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_B618(uint64_t a1)
{
  sub_BAD8();
  sub_B7050();
  __break(1u);
}

void sub_B984(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(id))
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (swift_weakLoadStrong())
  {
    v9 = a4;
    v10 = a1;
    a6(v9);
  }

  else
  {
  }
}

unint64_t sub_BAD8()
{
  result = qword_EF128;
  if (!qword_EF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF128);
  }

  return result;
}

uint64_t sub_BB2C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C444();
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_C6F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4, v5);
}

uint64_t sub_BBF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_C6C0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v2, v3);
  sub_C444();
  sub_B65B0();
  sub_C618(v5, v4);
}

uint64_t sub_BD20@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C444();
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_C690;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4, v5);
}

uint64_t sub_BDE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_C59C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v2, v3);
  sub_C444();
  sub_B65B0();
  sub_C618(v5, v4);
}

uint64_t sub_BF14@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C444();
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_C660;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4, v5);
}

uint64_t sub_BFDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_C628;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v2, v3);
  sub_C444();
  sub_B65B0();
  sub_C618(v5, v4);
}

uint64_t sub_C108@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C444();
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_C5E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4, v5);
}

uint64_t sub_C1D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_C59C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v2, v3);
  sub_C444();
  sub_B65B0();
  sub_C618(v5, v4);
}

id sub_C2FC()
{
  v0 = [objc_allocWithZone(CNAutocompleteSearchController) initWithSearchType:1];
  [v0 setExpandRecipientsInNamedGroups:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_EF130, &qword_BD968);
  sub_B7070();
  [v0 setDelegate:v2];

  sub_B7070();
  swift_unknownObjectWeakAssign();

  sub_B7070();
  sub_AC78();

  return v0;
}

uint64_t sub_C3DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_C444()
{
  result = qword_EEE30;
  if (!qword_EEE30)
  {
    type metadata accessor for ContactPickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEE30);
  }

  return result;
}

uint64_t sub_C564()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C59C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_C5D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_C618(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_C628(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_C6C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_C724(void *a1)
{
  v2 = v1;
  v4 = sub_B69A0();
  v5 = sub_B7B60();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_17834(0xD00000000000002ELL, 0x80000000000B8CD0, &v16);
    _os_log_impl(&dword_0, v4, v5, "ContactPickerViewModel: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v15 = [objc_allocWithZone(CNContactPickerViewController) init];
  [v15 setDelegate:v2];
  sub_C9DC();
  v8 = sub_B7B10();
  [v15 setPredicateForEnablingContact:v8];

  v9 = sub_B7B10();
  [v15 setPredicateForSelectionOfContact:v9];

  v10 = sub_B7B10();
  [v15 setPredicateForSelectionOfProperty:v10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF148, &qword_BDA10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_BD800;
  *(v11 + 32) = sub_B7900();
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_B7900();
  *(v11 + 56) = v13;
  isa = sub_B79D0().super.isa;

  [v15 setDisplayedPropertyKeys:isa];

  [a1 presentViewController:v15 animated:1 completion:0];
}

unint64_t sub_C9DC()
{
  result = qword_EF140;
  if (!qword_EF140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_EF140);
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

uint64_t sub_CAF8()
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  return *(v0 + 113);
}

uint64_t sub_CB98()
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  return *(v0 + 112);
}

uint64_t sub_CC38()
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  return *(v0 + 114);
}

uint64_t sub_CCD8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  return sub_A310(v5 + v3, a1, &qword_EEE08, &qword_BD530);
}

uint64_t sub_CDB0(void *a1)
{
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v2 = sub_B69C0();
  __swift_project_value_buffer(v2, qword_EF150);
  v3 = a1;
  v4 = sub_B69A0();
  v5 = sub_B7B30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_17834(0xD000000000000013, 0x80000000000B8FD0, &v14);
    *(v6 + 12) = 2080;
    v7 = v3;
    v8 = [v7 description];
    v9 = sub_B7900();
    v11 = v10;

    v12 = sub_17834(v9, v11, &v14);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_0, v4, v5, "FMRecipientsViewModel: %s - recipient: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  return sub_111DC(v3);
}

uint64_t sub_CF98(void *a1)
{
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v2 = sub_B69C0();
  __swift_project_value_buffer(v2, qword_EF150);
  v3 = a1;
  v4 = sub_B69A0();
  v5 = sub_B7B30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_17834(0xD000000000000016, 0x80000000000B8F60, v14);
    *(v6 + 12) = 2080;
    v7 = v3;
    v8 = [v7 description];
    v9 = sub_B7900();
    v11 = v10;

    v12 = sub_17834(v9, v11, v14);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_0, v4, v5, "FMRecipientsViewModel: %s - recipient: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  memset(v14, 0, sizeof(v14));
  v15 = -1;
  sub_11808(v14, v3);

  return sub_11D58(v3);
}

void sub_D1A0(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_B6370();
  v8 = *(v7 - 8);
  isa = v8[8].isa;
  v10 = __chkstk_darwin(v7);
  v11 = &v42 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = [a1 normalizedAddress];
  if (v14)
  {
    v43 = v6;
    v47 = v8;
    v15 = v13;
    v16 = v14;
    sub_B7900();
    v44 = v3;

    v46 = v15;
    sub_B6350();
    v17 = v1;
    sub_11D58(a1);
    v18 = sub_B7A80();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v47;
    (v47[2].isa)(v11, v15, v7);
    sub_B7A60();
    v42 = a1;

    v21 = sub_B7A50();
    v22 = *(v20 + 80);
    v23 = v7;
    v45 = v7;
    v24 = (v22 + 40) & ~v22;
    v25 = (isa + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = v21;
    *(v26 + 3) = &protocol witness table for MainActor;
    *(v26 + 4) = v19;
    v20[4](&v26[v24], v11, v23);
    v27 = v42;
    *&v26[v25] = v42;
    *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v44;

    v28 = sub_30A3C(0, 0, v43, &unk_BDEE0, v26);
    swift_getKeyPath();
    v49[0] = v17;
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65C0();

    v49[0] = v17;
    swift_getKeyPath();
    sub_B65E0();

    v29 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v17 + v29);
    *(v17 + v29) = 0x8000000000000000;
    sub_19460(v28, v27, isUniquelyReferenced_nonNull_native);

    *(v17 + v29) = v48;
    swift_endAccess();
    v49[0] = v17;
    swift_getKeyPath();
    sub_B65D0();

    (v47[1].isa)(v46, v45);
  }

  else
  {
    if (qword_EEA90 != -1)
    {
      swift_once();
    }

    v31 = sub_B69C0();
    __swift_project_value_buffer(v31, qword_EF150);
    v32 = a1;
    v47 = sub_B69A0();
    v33 = sub_B7B40();

    if (os_log_type_enabled(v47, v33))
    {
      v34 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_17834(0xD000000000000024, 0x80000000000B8F30, v49);
      *(v34 + 12) = 2080;
      v35 = v32;
      v36 = [v35 description];
      v37 = sub_B7900();
      v39 = v38;

      v40 = sub_17834(v37, v39, v49);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_0, v47, v33, "FMRecipientsViewModel: %s - recipient: %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v41 = v47;
    }
  }
}

void sub_D7B4(void *a1)
{
  v2 = v1;
  v4 = [a1 contact];
  if ([a1 value])
  {
    sub_B7C00();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (*(&v30 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v27;
      v5 = v28;

      v7 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    sub_A194(&v31, &qword_EF440, &qword_BDEC0);
  }

  if ([a1 value])
  {
    sub_B7C00();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (*(&v30 + 1))
  {
    sub_20A70(0, &qword_EF448, CNPhoneNumber_ptr);
    if (swift_dynamicCast())
    {
      v8 = [v27 stringValue];
      v6 = sub_B7900();
      v5 = v9;

      v7 = 1;
      if ((v5 & 0x2000000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_A194(&v31, &qword_EF440, &qword_BDEC0);
  }

  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v16 = sub_B69C0();
  __swift_project_value_buffer(v16, qword_EF150);
  v17 = a1;
  v18 = sub_B69A0();
  v19 = sub_B7B40();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *&v31 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_17834(0xD00000000000001CLL, 0x80000000000B8F10, &v31);
    *(v20 + 12) = 2080;
    v21 = v17;
    v22 = [v21 description];
    v23 = sub_B7900();
    v25 = v24;

    v26 = sub_17834(v23, v25, &v31);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_0, v18, v19, "ContactPickerViewModel: %s - Unknown contact: %s", v20, 0x16u);
    swift_arrayDestroy();

    goto LABEL_26;
  }

  v6 = 0;
  v5 = 0xE000000000000000;
  v7 = 5;
LABEL_24:

  if ((v5 & 0x2000000000000000) != 0)
  {
LABEL_14:
    if ((v5 & 0xF00000000000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_26:

    return;
  }

LABEL_25:
  if ((v6 & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = objc_allocWithZone(CNComposeRecipient);
  v11 = v4;
  v12 = sub_B78E0();

  v13 = [v10 initWithContact:v11 address:v12 kind:v7];

  if (v13)
  {
    swift_getKeyPath();
    *&v31 = v2;
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65C0();

    v14 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient);
    if (v14)
    {
      v15 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient + 8);

      v14(v13);

      sub_C618(v14, v15);
      return;
    }
  }
}

uint64_t sub_DC80()
{
  v0 = sub_B69C0();
  __swift_allocate_value_buffer(v0, qword_EF150);
  __swift_project_value_buffer(v0, qword_EF150);
  return sub_B69B0();
}

uint64_t sub_DCF4()
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  swift_beginAccess();
}

uint64_t sub_DDAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  swift_beginAccess();
  *a2 = *(v3 + 104);
}

uint64_t sub_DE6C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1E974(v3, a1);

  if (v4)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65B0();
  }
}

uint64_t sub_DFB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 104) = a2;
}

uint64_t sub_E01C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_E0EC(uint64_t result)
{
  if (*(v1 + 112) == (result & 1))
  {
    *(v1 + 112) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_E1FC(uint64_t result)
{
  if (*(v1 + 113) == (result & 1))
  {
    *(v1 + 113) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_E30C(uint64_t result)
{
  if (*(v1 + 114) == (result & 1))
  {
    *(v1 + 114) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_E41C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  sub_21628(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_E488()
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  swift_beginAccess();
}

uint64_t sub_E548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_E610(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
  swift_beginAccess();

  v5 = sub_1EB4C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65B0();
  }
}

uint64_t sub_E760(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t ContactPickerViewModel.__allocating_init(configuration:dependencies:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ContactPickerViewModel.init(configuration:dependencies:)(a1, a2);
  return v4;
}

uint64_t ContactPickerViewModel.init(configuration:dependencies:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = a1[5];
  v9 = *(a2 + 32);
  *(v2 + 104) = sub_1F86C(&_swiftEmptyArrayStorage);
  *(v2 + 112) = 0;
  *(v2 + 114) = 0;
  v10 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress) = sub_1F98C(&_swiftEmptyArrayStorage);
  v12 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus);
  *v16 = 0;
  v16[1] = 0;
  sub_B65F0();
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  *(v2 + 32) = v7;
  *(v2 + 40) = *(a1 + 3);
  *(v2 + 56) = v8;
  v17 = *(a2 + 16);
  *(v2 + 64) = *a2;
  *(v2 + 80) = v17;
  *(v2 + 96) = v9;
  return v2;
}

uint64_t sub_EB3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

uint64_t sub_EBC4(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_EC8C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C6C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4, v5);
}

uint64_t sub_ED84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_20C44;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v2, v3);
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65B0();
  sub_C618(v5, v4);
}

uint64_t sub_EEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v9 - 8);
  v11 = v15 - v10;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_B6950();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v15[-2] = a2;
  v15[-1] = v11;
  v15[1] = a2;
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65B0();

  sub_A194(v11, &qword_EEE08, &qword_BD530);
}

void *sub_F120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;

  return &unk_BE0C8;
}

uint64_t sub_F19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_F248;

  return sub_F33C(a2, a3);
}

uint64_t sub_F248()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_F33C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF530, &unk_C4E90);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for ContactPickerViewModel.ActionResult(0);
  v3[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF538, &qword_BE0E0);
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  type metadata accessor for ContactPickerViewModel.StepResult(0);
  v3[23] = swift_task_alloc();
  v3[24] = sub_B7A60();
  v3[25] = sub_B7A50();
  v7 = sub_B7A00();
  v3[26] = v7;
  v3[27] = v6;

  return _swift_task_switch(sub_F504, v7, v6);
}

uint64_t sub_F504()
{
  v24 = v0;
  v1 = v0[15];
  swift_getKeyPath();
  v0[5] = v1;
  v0[28] = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel___observationRegistrar;
  v0[29] = sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  swift_beginAccess();
  v2 = *(v1 + 104);

  v4 = *(sub_1A098(v3, sub_1A208, sub_1A208) + 2);

  if (v4)
  {

    if (qword_EEA90 != -1)
    {
      swift_once();
    }

    v5 = sub_B69C0();
    __swift_project_value_buffer(v5, qword_EF150);
    v6 = sub_B69A0();
    v7 = sub_B7B40();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_17834(0xD000000000000019, 0x80000000000B9110, &v23);
      _os_log_impl(&dword_0, v6, v7, "ContactPickerViewModel: %s - recipientsContainsPending", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[15];
    v0[30] = sub_10C64(v2);

    if (*(v12 + 113) == 1)
    {
      *(v12 + 113) = 1;
    }

    else
    {
      v13 = v0[15];
      swift_getKeyPath();
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      *(v14 + 24) = 1;
      v0[6] = v13;
      sub_B65B0();
    }

    v0[31] = 0;
    v15 = *(v0[15] + 56);
    v0[32] = v15;
    v16 = v15[2];
    v0[33] = v16;
    if (v16)
    {
      v0[34] = 0;
      if (!v15[2])
      {
        __break(1u);
        return result;
      }

      v0[35] = v15[5];
      v17 = v15[4];
      swift_retain_n();
      v22 = (v17 + *v17);
      v18 = swift_task_alloc();
      v0[36] = v18;
      *v18 = v0;
      v18[1] = sub_FA04;
      v19 = v0[30];
      v20 = v0[23];
    }

    else
    {
      v22 = (v0[13] + *v0[13]);
      v21 = swift_task_alloc();
      v0[43] = v21;
      *v21 = v0;
      v21[1] = sub_10444;
      v19 = v0[30];
      v20 = v0[19];
    }

    return v22(v20, v19);
  }
}

uint64_t sub_FA04()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_FB48, v3, v2);
}

uint64_t sub_FB48()
{
  v1 = v0[23];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    (*(v0[21] + 32))(v0[22], v1, v0[20]);
    v0[37] = sub_B7A50();
    v11 = sub_B7A00();
    v7 = v12;
    v0[38] = v11;
    v0[39] = v12;
    v5 = sub_FE10;
    v6 = v11;

    return _swift_task_switch(v5, v6, v7);
  }

  v3 = v0[34];
  v4 = v0[33];

  if (v3 + 1 != v4)
  {
    v13 = v0[34] + 1;
    v0[34] = v13;
    v14 = v0[32];
    if (v13 < *(v14 + 16))
    {
      v15 = v14 + 16 * v13;
      v0[35] = *(v15 + 40);
      v16 = *(v15 + 32);
      swift_retain_n();
      v19 = (v16 + *v16);
      v17 = swift_task_alloc();
      v0[36] = v17;
      *v17 = v0;
      v17[1] = sub_FA04;
      v9 = v0[30];
      v10 = v0[23];
      goto LABEL_9;
    }

    __break(1u);
    return _swift_task_switch(v5, v6, v7);
  }

  v19 = (v0[13] + *v0[13]);
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_10444;
  v9 = v0[30];
  v10 = v0[19];
LABEL_9:

  return v19(v10, v9);
}

uint64_t sub_FE10(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[15];
  v4 = sub_B7A50();
  v1[40] = v4;
  v5 = swift_task_alloc();
  v1[41] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[42] = v6;
  *v6 = v1;
  v6[1] = sub_FF20;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 50, v4, &protocol witness table for MainActor, 0xD000000000000012, 0x80000000000B9130, sub_217B8, v5, &type metadata for Bool);
}

uint64_t sub_FF20()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return _swift_task_switch(sub_10080, v3, v2);
}

uint64_t sub_10080()
{

  *(v0 + 401) = *(v0 + 400);
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return _swift_task_switch(sub_100EC, v1, v2);
}

uint64_t sub_100EC()
{
  if (*(v0 + 401))
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v1 = *(v0 + 272);
    v2 = *(v0 + 264);

    if (v1 + 1 == v2)
    {
      v17 = (*(v0 + 104) + **(v0 + 104));
      v4 = swift_task_alloc();
      *(v0 + 344) = v4;
      *v4 = v0;
      v4[1] = sub_10444;
      v5 = *(v0 + 240);
      v6 = *(v0 + 152);
    }

    else
    {
      v10 = *(v0 + 272) + 1;
      *(v0 + 272) = v10;
      v11 = *(v0 + 256);
      if (v10 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v12 = v11 + 16 * v10;
      *(v0 + 280) = *(v12 + 40);
      v13 = *(v12 + 32);
      swift_retain_n();
      v17 = (v13 + *v13);
      v14 = swift_task_alloc();
      *(v0 + 288) = v14;
      *v14 = v0;
      v14[1] = sub_FA04;
      v5 = *(v0 + 240);
      v6 = *(v0 + 184);
    }

    return v17(v6, v5);
  }

  else
  {
    v7 = *(v0 + 120);

    if (*(v7 + 113))
    {
      v8 = *(v0 + 120);
      swift_getKeyPath();
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v0 + 56) = v8;
      sub_B65B0();
    }

    else
    {
      v15 = *(v0 + 120);

      *(v15 + 113) = 0;
    }

    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10444()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_10588, v3, v2);
}

uint64_t sub_10588()
{
  v1 = v0[19];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[15];

    if (*(v3 + 113))
    {
      v4 = v0[15];
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v4;
      *(v5 + 24) = 0;
      v0[12] = v4;
      sub_B65B0();
    }

    else
    {
      *(v0[15] + 113) = 0;
    }

    v8 = v0[15];
    swift_getKeyPath();
    v0[9] = v8;
    sub_B65C0();

    v0[10] = v8;
    swift_getKeyPath();
    sub_B65E0();

    *(v8 + 114) = (*(v8 + 114) & 1) == 0;
    v0[11] = v8;
    swift_getKeyPath();
    sub_B65D0();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v1, v0[16]);
    v0[44] = sub_B7A50();
    v7 = sub_B7A00();
    v0[45] = v7;
    v0[46] = v6;

    return _swift_task_switch(sub_10844, v7, v6);
  }
}

uint64_t sub_10844(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[15];
  v4 = sub_B7A50();
  v1[47] = v4;
  v5 = swift_task_alloc();
  v1[48] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[49] = v6;
  *v6 = v1;
  v6[1] = sub_10958;

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v4, &protocol witness table for MainActor, 0xD000000000000012, 0x80000000000B9130, sub_217F8, v5, &type metadata for () + 8);
}

uint64_t sub_10958()
{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return _swift_task_switch(sub_10AB8, v3, v2);
}

uint64_t sub_10AB8()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return _swift_task_switch(sub_10B1C, v1, v2);
}

uint64_t sub_10B1C()
{
  v1 = v0[15];

  if (*(v1 + 113))
  {
    v2 = v0[15];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[8] = v2;
    sub_B65B0();
  }

  else
  {
    *(v0[15] + 113) = 0;
  }

  (*(v0[17] + 8))(v0[18], v0[16]);

  v4 = v0[1];

  return v4();
}

unint64_t sub_10C64(uint64_t a1)
{
  v64 = sub_B6370();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20EE8(&_swiftEmptyArrayStorage);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v61 = v2 + 16;
  v62 = v2;
  v63 = (v2 + 8);

  v11 = 0;
  v65 = v4;
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v13 = v5;
    v14 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
    v15 = [v14 normalizedAddress];
    if (!v15)
    {
      goto LABEL_30;
    }

    v16 = v15;
    v9 &= v9 - 1;
    sub_B7900();

    sub_B6350();
    if (*(a1 + 16) && (v17 = sub_17E94(v14), (v18 & 1) != 0))
    {
      v26 = *(a1 + 56) + 32 * v17;
      v27 = *(v26 + 8);
      v28 = *(v26 + 16);
      v29 = *(v26 + 24);
      v57 = *v26;
      v58 = v27;
      v59 = v28;
      v60 = a1;
      sub_20AFC(v57, v27, v28, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v13;
      v32 = sub_17ED8(v65);
      v33 = *(v13 + 16);
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_28;
      }

      if (*(v13 + 24) >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = v31;
          sub_19B78();
          v31 = v55;
        }

        v37 = v65;
        v41 = v66;
        if ((v31 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_25:
        v49 = v41[7] + 32 * v32;
        v50 = *v49;
        v51 = *(v49 + 8);
        v52 = *(v49 + 16);
        v53 = v58;
        *v49 = v57;
        *(v49 + 8) = v53;
        *(v49 + 16) = v59;
        v54 = *(v49 + 24);
        *(v49 + 24) = v29;
        sub_20B30(v50, v51, v52, v54);

        (*v63)(v37, v64);
        v5 = v41;
        a1 = v60;
      }

      else
      {
        v36 = v31;
        sub_1848C(v35, isUniquelyReferenced_nonNull_native);
        v37 = v65;
        v38 = sub_17ED8(v65);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_31;
        }

        v32 = v38;
        v40 = v36;
        v41 = v66;
        if (v40)
        {
          goto LABEL_25;
        }

LABEL_20:
        v41[(v32 >> 6) + 8] |= 1 << v32;
        v42 = v62;
        v43 = v64;
        (*(v62 + 16))(v41[6] + *(v62 + 72) * v32, v65, v64);
        v44 = v41[7] + 32 * v32;
        v45 = v58;
        *v44 = v57;
        *(v44 + 8) = v45;
        *(v44 + 16) = v59;
        *(v44 + 24) = v29;

        (*(v42 + 8))(v65, v43);
        v46 = v41[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_29;
        }

        v5 = v41;
        v41[2] = v48;
        a1 = v60;
      }
    }

    else
    {
      v19 = v65;
      v5 = v13;
      v20 = sub_17ED8(v65);
      if (v21)
      {
        v60 = a1;
        v22 = v20;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v13;
        if (!v23)
        {
          sub_19B78();
          v5 = v66;
        }

        v24 = *(v62 + 8);
        v25 = v64;
        v24(*(v5 + 48) + *(v62 + 72) * v22, v64);
        sub_20B30(*(*(v5 + 56) + 32 * v22), *(*(v5 + 56) + 32 * v22 + 8), *(*(v5 + 56) + 32 * v22 + 16), *(*(v5 + 56) + 32 * v22 + 24));
        sub_18F84(v22, v5);

        v24(v65, v25);
        a1 = v60;
      }

      else
      {
        (*v63)(v19, v64);
      }
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_B7DF0();
  __break(1u);
  return result;
}

void sub_110D8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_19460(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_17E94(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_19A14();
        v10 = v13;
      }

      sub_18DF8(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_111DC(void *a1)
{
  v2 = v1;
  v43 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v4 - 8);
  v44 = &v40 - v5;
  v45 = sub_B6370();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v45);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v40 - v9;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v10 = sub_B69C0();
  __swift_project_value_buffer(v10, qword_EF150);
  v11 = a1;
  v12 = sub_B69A0();
  v13 = sub_B7B60();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = v6;
    v15 = v14;
    v40 = swift_slowAlloc();
    v48 = v40;
    *v15 = 136315394;
    *(v15 + 4) = sub_17834(0xD00000000000001BLL, 0x80000000000B8FF0, &v48);
    *(v15 + 12) = 2080;
    v16 = v11;
    v17 = v7;
    v18 = [v16 description];
    v19 = sub_B7900();
    v21 = v20;

    v7 = v17;
    v22 = sub_17834(v19, v21, &v48);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_0, v12, v13, "FMRecipientsViewModel: %s - recipient: %s", v15, 0x16u);
    swift_arrayDestroy();

    v6 = v41;
  }

  v23 = [v11 normalizedAddress];
  if (v23)
  {
    v24 = v23;
    sub_B7900();

    v25 = v46;
    sub_B6350();
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 2;
    sub_11808(&v48, v11);
    sub_11D58(v11);
    v26 = sub_B7A80();
    (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v42;
    (*(v6 + 16))(v42, v25, v45);
    sub_B7A60();
    v29 = v11;

    v30 = sub_B7A50();
    v31 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v32 = (v7 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 2) = v30;
    *(v33 + 3) = &protocol witness table for MainActor;
    *(v33 + 4) = v27;
    v34 = v28;
    v35 = v45;
    (*(v6 + 32))(&v33[v31], v34, v45);
    *&v33[v32] = v29;
    *&v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8] = v43;

    v36 = sub_30A3C(0, 0, v44, &unk_BDFC8, v33);
    swift_getKeyPath();
    v48 = v2;
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65C0();

    v48 = v2;
    swift_getKeyPath();
    sub_B65E0();

    v37 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v2 + v37);
    *(v2 + v37) = 0x8000000000000000;
    sub_19460(v36, v29, isUniquelyReferenced_nonNull_native);

    *(v2 + v37) = v47;
    swift_endAccess();
    v48 = v2;
    swift_getKeyPath();
    sub_B65D0();

    return (*(v6 + 8))(v46, v35);
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v48 = (&dword_0 + 1);
    v51 = 1;
    return sub_11808(&v48, v11);
  }
}

uint64_t sub_11808(uint64_t *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v9 = sub_B69C0();
  __swift_project_value_buffer(v9, qword_EF150);
  sub_20AE8(v5, v6, v7, v8);
  v10 = a2;
  v11 = sub_B69A0();
  v12 = sub_B7B30();
  sub_20B1C(v5, v6, v7, v8);

  v31 = v6;
  v32 = v7;
  v30 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_17834(0xD000000000000010, 0x80000000000B8F80, v33);
    *(v13 + 12) = 2080;
    v34 = v5;
    v35 = v6;
    v36 = v7;
    v37 = v8;
    sub_20AE8(v5, v6, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF470, &qword_BDF40);
    v14 = sub_B7930();
    v16 = sub_17834(v14, v15, v33);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    v17 = v10;
    v18 = [v17 description];
    v19 = sub_B7900();
    v21 = v20;

    v22 = sub_17834(v19, v21, v33);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_0, v11, v12, "ContactPickerViewModel: %s - status: %s - recipient: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v34 = v3;
  if (v8 == 255)
  {
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65C0();

    v34 = v3;
    swift_getKeyPath();
    sub_B65E0();

    swift_beginAccess();
    sub_17DDC(v30, &v34);
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v29 = v37;
    swift_endAccess();
    sub_20B1C(v26, v27, v28, v29);
    v33[0] = v3;
    swift_getKeyPath();
    sub_B65D0();

    v34 = v5;
    v35 = v31;
    v36 = v32;
    v37 = -1;
    return sub_13348(v30, &v34);
  }

  else
  {
    sub_20AE8(v5, v31, v32, v8);
    sub_20AE8(v5, v31, v32, v8);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    v23 = v30;
    sub_B65C0();

    v34 = v3;
    swift_getKeyPath();
    sub_B65E0();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *(v3 + 104);
    sub_192B0(v5, v31, v32, v8, v23, isUniquelyReferenced_nonNull_native);

    *(v3 + 104) = v33[0];
    swift_endAccess();
    v34 = v3;
    swift_getKeyPath();
    sub_B65D0();

    v34 = v5;
    v35 = v31;
    v36 = v32;
    v37 = v8;
    sub_13348(v23, &v34);
    return sub_20B1C(v34, v35, v36, v37);
  }
}

uint64_t sub_11D58(void *a1)
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {

    sub_17E94(a1);
    if (v4)
    {

      sub_B7AE0();
    }

    else
    {
    }
  }

  swift_getKeyPath();
  v5 = a1;
  sub_B65C0();

  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  sub_110D8(0, v5);
  swift_endAccess();
  swift_getKeyPath();
  sub_B65D0();
}

uint64_t sub_11F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  sub_B7A60();
  v6[17] = sub_B7A50();
  v8 = sub_B7A00();
  v6[18] = v8;
  v6[19] = v7;

  return _swift_task_switch(sub_11FF4, v8, v7);
}

uint64_t sub_11FF4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v6 = (*(Strong + 64) + **(Strong + 64));
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_12148;
    v3 = v0[15];

    return v6(v0 + 8, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_12148()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_124E8;
  }

  else
  {
    v5 = sub_12284;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_12284()
{

  v2 = v0[8];
  v1 = v0[9];
  if (sub_B7AF0())
  {
LABEL_9:
    sub_20AD4(v2, v1);
    goto LABEL_10;
  }

  v3 = objc_opt_self();
  v4 = v0[20];
  if (v1 != 1)
  {
    v9 = [v3 systemGrayColor];
    swift_getKeyPath();
    v0[12] = v4;
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65C0();

    v10 = v4 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient;
    v11 = *(v4 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient);
    if (v11)
    {
      v12 = v0[16];
      v13 = *(v10 + 8);

      v11(v9, v12);
      sub_C618(v11, v13);
    }

    goto LABEL_9;
  }

  v5 = [v3 systemBlueColor];
  swift_getKeyPath();
  v0[13] = v4;
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  v6 = *(v4 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient);
  if (v6)
  {
    v7 = v0[16];
    v8 = *(v4 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient + 8);

    v6(v5, v7);
    sub_C618(v6, v8);
  }

LABEL_10:

  v14 = v0[1];

  return v14();
}

uint64_t sub_124E8()
{
  v28 = v0;

  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_B69C0();
  __swift_project_value_buffer(v2, qword_EF150);
  swift_errorRetain();
  v3 = v1;
  v4 = sub_B69A0();
  v5 = sub_B7B40();

  if (os_log_type_enabled(v4, v5))
  {
    v26 = v0[16];
    v6 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_17834(0xD000000000000024, 0x80000000000B8F30, &v27);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v7 = *(v0[6] - 8);
    swift_task_alloc();
    (*(v7 + 16))();
    v8 = sub_B7930();
    v10 = v9;

    v11 = sub_17834(v8, v10, &v27);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2080;
    v12 = v26;
    v13 = [v12 description];
    v14 = sub_B7900();
    v16 = v15;

    v17 = sub_17834(v14, v16, &v27);

    *(v6 + 24) = v17;
    _os_log_impl(&dword_0, v4, v5, "FMRecipientsViewModel: %s - error: %s - recipient: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  if ((sub_B7AF0() & 1) != 0 || (v18 = v0[20], swift_getKeyPath(), v0[10] = v18, sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel), sub_B65C0(), , v19 = v18 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient, (v20 = *(v18 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient)) == 0))
  {
  }

  else
  {
    v21 = *(v19 + 8);
    v22 = objc_opt_self();

    v23 = [v22 systemGrayColor];
    v20();

    sub_C618(v20, v21);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_128FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  sub_B7A60();
  v6[16] = sub_B7A50();
  v8 = sub_B7A00();
  v6[17] = v8;
  v6[18] = v7;

  return _swift_task_switch(sub_12998, v8, v7);
}

uint64_t sub_12998()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v6 = (*(Strong + 80) + **(Strong + 80));
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_12AEC;
    v3 = v0[14];

    return v6(v0 + 8, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_12AEC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_12C0C, v3, v2);
}

uint64_t sub_12C0C(uint64_t a1)
{
  v14 = v1;
  v3 = v1[8];
  v2 = v1[9];
  if (sub_B7AF0())
  {

    sub_20AD4(v3, v2);

LABEL_8:
    v8 = v1[1];

    return v8();
  }

  if (v2 != 1)
  {
    v7 = v1[15];

    v10 = 0;
    v11 = v3;
    v12 = v2;
    v13 = 1;

    sub_11808(&v10, v7);
    sub_20AD4(v3, v2);

    sub_20B1C(v10, v11, v12, v13);
    goto LABEL_8;
  }

  v9 = (*(v1[19] + 64) + **(v1[19] + 64));
  v4 = swift_task_alloc();
  v1[21] = v4;
  *v4 = v1;
  v4[1] = sub_12DD8;
  v5 = v1[14];

  return v9(v1 + 10, v5);
}

uint64_t sub_12DD8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_13024;
  }

  else
  {
    v5 = sub_12F14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_12F14()
{
  v10 = v0;

  v2 = v0[10];
  v1 = v0[11];
  if (sub_B7AF0())
  {
    sub_20AD4(v2, v1);
LABEL_5:

    goto LABEL_7;
  }

  v3 = v0[15];
  if (v1 == 1)
  {
    v7 = 0;
    v8 = 0;
    v6 = 1;
    v9 = 2;
    sub_11808(&v6, v3);
    goto LABEL_5;
  }

  v6 = v2;
  v7 = v1;
  v8 = 0;
  v9 = 0;

  sub_11808(&v6, v3);
  sub_20AD4(v2, v1);

  sub_20B1C(v6, v7, v8, v9);
LABEL_7:
  v4 = v0[1];

  return v4();
}

uint64_t sub_13024()
{
  v24 = v0;

  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_B69C0();
  __swift_project_value_buffer(v2, qword_EF150);
  swift_errorRetain();
  v3 = v1;
  v4 = sub_B69A0();
  v5 = sub_B7B40();

  if (os_log_type_enabled(v4, v5))
  {
    v21 = v0[15];
    v6 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_17834(0xD00000000000001BLL, 0x80000000000B8FF0, v22);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v7 = *(v0[6] - 8);
    swift_task_alloc();
    (*(v7 + 16))();
    v8 = sub_B7930();
    v10 = v9;

    v11 = sub_17834(v8, v10, v22);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2080;
    v12 = v21;
    v13 = [v12 description];
    v14 = sub_B7900();
    v16 = v15;

    v17 = sub_17834(v14, v16, v22);

    *(v6 + 24) = v17;
    _os_log_impl(&dword_0, v4, v5, "FMRecipientsViewModel: %s - error: %s - recipient: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  if ((sub_B7AF0() & 1) == 0)
  {
    v18 = v0[15];
    memset(v22, 0, sizeof(v22));
    v23 = 0;
    sub_11808(v22, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_13348(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v9 = sub_B69C0();
  __swift_project_value_buffer(v9, qword_EF150);
  sub_20AE8(v5, v6, v7, v8);
  v10 = a1;
  v11 = sub_B69A0();
  v12 = sub_B7B60();
  sub_20B1C(v5, v6, v7, v8);

  if (os_log_type_enabled(v11, v12))
  {
    v32 = v10;
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_17834(0xD00000000000002BLL, 0x80000000000B8FA0, &v33);
    *(v13 + 12) = 2080;
    sub_20AE8(v5, v6, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF470, &qword_BDF40);
    v14 = sub_B7930();
    v31 = v6;
    v30 = v12;
    v16 = sub_17834(v14, v15, &v33);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    v17 = v32;
    v18 = [v17 description];
    v19 = sub_B7900();
    v20 = v7;
    v21 = v5;
    v22 = v3;
    v24 = v23;

    v6 = v31;
    v25 = sub_17834(v19, v24, &v33);
    v3 = v22;
    v5 = v21;
    v7 = v20;

    *(v13 + 24) = v25;
    _os_log_impl(&dword_0, v11, v30, "ContactPickerViewModel: %s - status: %s - recipient: %s", v13, 0x20u);
    swift_arrayDestroy();

    v10 = v32;
  }

  if (v8 != 255)
  {
    swift_getKeyPath();
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
    sub_B65C0();

    v26 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient);
    if (v26)
    {
      v27 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient + 8);
      if (v8)
      {
        if (v8 == 1)
        {
          v28 = 1;
        }

        else if (v6 | v5 | v7)
        {
          v28 = 0;
        }

        else
        {
          v28 = 65540;
        }
      }

      else
      {
        v28 = 196608;
      }

      v26(v28, v10);
      sub_C618(v26, v27);
    }
  }

  return sub_136D4();
}

uint64_t sub_136D4()
{
  v1 = 0;
  swift_getKeyPath();
  v51 = v0;
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel, &protocol conformance descriptor for ContactPickerViewModel);
  sub_B65C0();

  swift_beginAccess();
  v49 = v0;
  v2 = *(v0 + 104);
  v52 = &_swiftEmptySetSingleton;
  v50 = 1;
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  while (v5)
  {
LABEL_11:
    v8 = __clz(__rbit64(v5)) | (v1 << 6);
    v9 = *(*(v2 + 48) + 8 * v8);
    v5 &= v5 - 1;
    v10 = *(v2 + 56) + 32 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (*(v10 + 24))
    {
      if (v14 == 1)
      {
        if (v11)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v17 = *(v10 + 8);
          v18 = *(v10 + 24);

          LOBYTE(v14) = v18;
          v11 = v15;
          v12 = v17;
          v13 = v16;
          goto LABEL_5;
        }

        if (!v13)
        {
          goto LABEL_5;
        }

        v27 = *v10;
        v28 = *(v10 + 8);
        v29 = *(v10 + 16);
        sub_20AFC(v11, v12, v13, 1u);
        sub_20AFC(v27, v28, v29, 1u);
        v30 = v9;
        sub_1BA98(&v51, v28, v29);

        v23 = v27;
        v24 = v28;
        v25 = v29;
        v26 = 1;
LABEL_19:
        sub_20B30(v23, v24, v25, v26);
      }

      else
      {
        if (v13 | v12 | v11)
        {
          goto LABEL_5;
        }

        sub_20B30(0, 0, 0, 2u);
        v50 = 0;
      }
    }

    else
    {
      if (v12)
      {
        v19 = *v10;
        v20 = *(v10 + 8);
        v21 = *(v10 + 16);
        sub_20AFC(v11, v12, v13, 0);
        sub_20AFC(v19, v20, v21, 0);
        v22 = v9;
        sub_1BA98(&v51, v19, v20);

        v23 = v19;
        v24 = v20;
        v25 = v21;
        v26 = 0;
        goto LABEL_19;
      }

LABEL_5:
      sub_20B30(v11, v12, v13, v14);
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_11;
    }
  }

  v31 = v52;
  v32 = v52[2];
  if (v32)
  {
    v33 = sub_177B0(v52[2], 0);
    v34 = sub_1E7F4(&v51, v33 + 4, v32, v31);
    v35 = v51;

    sub_20BA0(v35);
    if (v34 == v32)
    {
      v51 = v33;
      sub_1BBE8(&v51);
      v36 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF480, &qword_BDF50);
      sub_A8CC(&qword_EF488, &qword_EF480, &qword_BDF50, &protocol conformance descriptor for [A]);
      v37 = sub_B78A0();
      v39 = v38;

      goto LABEL_26;
    }

LABEL_35:
    __break(1u);

    __break(1u);
    return result;
  }

  v37 = 0;
  v39 = 0;
  v36 = v49;
LABEL_26:
  swift_getKeyPath();
  v51 = v36;
  sub_B65C0();

  v40 = *&v36[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText];
  if (v40)
  {
    v41 = *&v36[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText + 8];

    v40(v37, v39);
    sub_C618(v40, v41);
  }

  v42 = *(v2 + 16);

  v43 = (v42 != 0) & v50;
  if (v43 == v36[112])
  {
    v36[112] = v43;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v51 = v36;
    sub_B65B0();
  }

  swift_getKeyPath();
  v51 = v36;
  sub_B65C0();

  v46 = *&v36[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus];
  if (v46)
  {
    v47 = *&v36[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus + 8];

    v46(v48);
    return sub_C618(v46, v47);
  }

  return result;
}

char *ContactPickerViewModel.deinit()
{

  sub_A194(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert, &qword_EEE08, &qword_BD530);

  sub_C618(*(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient), *(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient + 8));
  sub_C618(*(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient), *(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient + 8));
  sub_C618(*(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText), *(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText + 8));
  sub_C618(*(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient), *(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient + 8));
  sub_C618(*(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus), *(v0 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus + 8));
  v1 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel___observationRegistrar;
  v2 = sub_B6600();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ContactPickerViewModel.__deallocating_deinit()
{
  ContactPickerViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t ContactPickerViewModel.Configuration.init(screenTitle:showNavBarCancelButton:actionControl:actionConfirmationSteps:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t static ContactPickerViewModel.ConfirmationStep.denyMyOwnAccount(alertTitleMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = &unk_BDA58;
  a3[1] = v6;
}

uint64_t sub_13E80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_13EA0, 0, 0);
}

uint64_t sub_13EA0()
{
  v19 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v18);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_1A098(*(v0 + 24), sub_1A498, sub_1A498);
  if (v6[2])
  {
    v7 = sub_14C70(v6);

    v18[0] = v7;

    sub_1BC54(v18);
    v14 = *(v0 + 16);

    sub_A6A64();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    *(v0 + 32) = 0;
    sub_B6880();
    sub_B6910();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {

    v8 = sub_B69A0();
    v9 = sub_B7B60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v18);
      _os_log_impl(&dword_0, v8, v9, "ContactPickerViewModel: %s - No unreachable recipient", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v12 = *(v0 + 16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_14320(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_14340, 0, 0);
}

uint64_t sub_14340()
{
  v19 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v18);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_1A098(*(v0 + 24), sub_1A498, sub_1A498);
  if (v6[2])
  {
    v7 = sub_14C70(v6);

    v18[0] = v7;

    sub_1BC54(v18);
    v14 = *(v0 + 16);

    sub_A8FA8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    *(v0 + 32) = 0;
    sub_B6880();
    sub_B6910();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {

    v8 = sub_B69A0();
    v9 = sub_B7B60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v18);
      _os_log_impl(&dword_0, v8, v9, "ContactPickerViewModel: %s - No unreachable recipient", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v12 = *(v0 + 16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_147C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_147E4, 0, 0);
}

uint64_t sub_147E4()
{
  v20 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v19);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_1A098(*(v0 + 24), sub_1A498, sub_1A498);
  if (v6[2])
  {
    v7 = sub_14C70(v6);

    v19[0] = v7;

    sub_1BC54(v19);
    v14 = *(v0 + 32);
    v15 = *(v0 + 16);

    v14(v19[0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    *(v0 + 48) = 0;
    sub_B6880();
    sub_B6910();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {

    v8 = sub_B69A0();
    v9 = sub_B7B60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v19);
      _os_log_impl(&dword_0, v8, v9, "ContactPickerViewModel: %s - No unreachable recipient", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v12 = *(v0 + 16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_14C70(uint64_t a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C0, &qword_BDFF0);
  v3 = __chkstk_darwin(v61);
  v60 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v59 = v50 - v6;
  v7 = __chkstk_darwin(v5);
  v58 = v50 - v8;
  __chkstk_darwin(v7);
  v57 = v50 - v9;
  v10 = sub_B6370();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v75 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v77 = &_swiftEmptyArrayStorage;
  if (!v13)
  {
    return v77;
  }

  v50[1] = v1;
  v78 = &_swiftEmptyArrayStorage;
  sub_1E4D0(0, v13, 0);
  v77 = v78;
  v14 = a1 + 64;
  result = sub_B7C30();
  v16 = 0;
  v76 = *(a1 + 36);
  v74 = v11 + 16;
  v55 = v11 + 32;
  v51 = a1 + 72;
  v52 = v13;
  v56 = a1 + 64;
  v54 = a1;
  v53 = v11;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v14 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v76 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v63 = 1 << result;
    v64 = result >> 6;
    v62 = v16;
    v18 = v61;
    v19 = v57;
    v20 = &v57[*(v61 + 48)];
    v21 = *(a1 + 48);
    v72 = *(v11 + 72);
    v70 = *(v11 + 16);
    v22 = result;
    v70(v57, v21 + v72 * result, v10);
    v23 = *(a1 + 56);
    v73 = v22;
    v24 = v23 + 32 * v22;
    v25 = *v24;
    v68 = *(v24 + 8);
    v26 = v68;
    v69 = v25;
    v67 = *(v24 + 16);
    v27 = v67;
    LODWORD(v24) = *(v24 + 24);
    v66 = v24;
    *v20 = v25;
    *(v20 + 1) = v26;
    *(v20 + 2) = v27;
    v20[24] = v24;
    v28 = *(v11 + 32);
    v29 = v58;
    v28(v58, v19, v10);
    v30 = v29 + *(v18 + 48);
    v31 = *(v20 + 2);
    v32 = v20[24];
    *v30 = *v20;
    *(v30 + 16) = v31;
    *(v30 + 24) = v32;
    v33 = v59;
    sub_A310(v29, v59, &qword_EF4C0, &qword_BDFF0);
    v34 = *(v18 + 48);
    v65 = *(v33 + v34);
    v35 = *(v33 + v34 + 16);
    v36 = *(v33 + v34 + 24);
    v37 = v60;
    v38 = &v60[v34];
    v71 = v28;
    v28(v60, v33, v10);
    *v38 = v65;
    *(v38 + 2) = v35;
    v38[24] = v36;
    v39 = v77;
    v70(v75, v37, v10);
    sub_20AFC(v69, v68, v67, v66);
    sub_A194(v37, &qword_EF4C0, &qword_BDFF0);
    sub_A194(v29, &qword_EF4C0, &qword_BDFF0);
    v78 = v39;
    v41 = v39[2];
    v40 = v39[3];
    v77 = v39;
    if (v41 >= v40 >> 1)
    {
      sub_1E4D0((v40 > 1), v41 + 1, 1);
      v77 = v78;
    }

    v42 = v77;
    v77[2] = v41 + 1;
    v11 = v53;
    v71(&v42[((*(v11 + 80) + 32) & ~*(v11 + 80)) + v41 * v72], v75, v10);
    a1 = v54;
    v17 = 1 << *(v54 + 32);
    result = v73;
    v14 = v56;
    if (v73 >= v17)
    {
      goto LABEL_24;
    }

    v43 = *(v56 + 8 * v64);
    if ((v43 & v63) == 0)
    {
      goto LABEL_25;
    }

    if (v76 != *(v54 + 36))
    {
      goto LABEL_26;
    }

    v44 = v43 & (-2 << (v73 & 0x3F));
    if (v44)
    {
      v17 = __clz(__rbit64(v44)) | v73 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v45 = v64 << 6;
      v46 = v64 + 1;
      v47 = (v51 + 8 * v64);
      while (v46 < (v17 + 63) >> 6)
      {
        v49 = *v47++;
        v48 = v49;
        v45 += 64;
        ++v46;
        if (v49)
        {
          sub_21318(v73, v76, 0);
          v17 = __clz(__rbit64(v48)) + v45;
          goto LABEL_4;
        }
      }

      sub_21318(v73, v76, 0);
    }

LABEL_4:
    v16 = v62 + 1;
    result = v17;
    if (v62 + 1 == v52)
    {
      return v77;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static ContactPickerViewModel.ConfirmationStep.reachabilityRequirement(requires:alertTitleMessage:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *a4 = &unk_C4B00;
  a4[1] = v8;
}

uint64_t sub_15298(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 49) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_152C0, 0, 0);
}

uint64_t sub_152C0()
{
  v21 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000034, 0x80000000000B90D0, v20);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_1A098(*(v0 + 24), sub_1A94C, sub_1A94C);
  if (v6[2])
  {
    v7 = *(v0 + 49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0);
    if (v7 == 1)
    {
      *(swift_allocObject() + 16) = xmmword_BDA30;
      *(v0 + 48) = 0;
      sub_B6880();
    }

    else
    {
      *(swift_allocObject() + 16) = xmmword_BD800;
      sub_B68F0();
      sub_B68E0();
    }

    v14 = sub_14C70(v6);

    v20[0] = v14;

    sub_1BC54(v20);
    v15 = *(v0 + 32);
    v16 = *(v0 + 16);

    v15(v20[0]);

    sub_B6910();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  }

  else
  {

    v8 = sub_B69A0();
    v9 = sub_B7B60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_17834(0xD000000000000034, 0x80000000000B90D0, v20);
      _os_log_impl(&dword_0, v8, v9, "ContactPickerViewModel: %s - No unreachable recipient", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v12 = *(v0 + 16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t static ContactPickerViewModel.ConfirmationStep.capabilityRequirement(isCapabilityEnabled:notCapableAlertTitleMessage:genericErrorAlertTitleMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a6;
  *a7 = &unk_BDA78;
  a7[1] = v14;
}

uint64_t sub_15834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E0, &qword_BE010);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v9 = sub_B6370();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();

  return _swift_task_switch(sub_15960, 0, 0);
}

uint64_t sub_15960()
{
  v13 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000065, 0x80000000000B9060, &v12);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = *(v0 + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018);
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *(v8 + 16) = *(v0 + 32);
  *(v8 + 32) = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4F0, &unk_BE030);
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_15B9C;
  v15 = v9;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v7, v9, 0, 0, &unk_BE028, v8, v7);
}

uint64_t sub_15B9C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_16398;
  }

  else
  {

    v2 = sub_15CB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_15CB8()
{
  v59 = v0;
  v1 = v0[22];
  v2 = sub_1A098(v0[2], sub_1AD6C, sub_1AD6C);

  v3 = v2[2];
  if (v3)
  {
    v43 = v1;
    v4 = v0[17];
    v51 = v0[11];
    v58[0] = &_swiftEmptyArrayStorage;
    sub_1E4D0(0, v3, 0);
    v5 = &_swiftEmptyArrayStorage;
    v6 = (v2 + 8);
    result = sub_B7C30();
    v8 = result;
    v9 = 0;
    v10 = *(v2 + 9);
    v44 = (v2 + 9);
    v45 = v3;
    v11 = v0;
    v50 = (v2 + 8);
    v46 = v10;
    v47 = v2;
    v48 = v0;
    v49 = v4;
    do
    {
      if (v8 < 0 || v8 >= 1 << *(v2 + 32))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      if ((*&v6[8 * (v8 >> 6)] & (1 << v8)) == 0)
      {
        goto LABEL_33;
      }

      if (v10 != *(v2 + 9))
      {
        goto LABEL_34;
      }

      v53 = v8 >> 6;
      v52 = v9;
      v55 = v11[18];
      v15 = v11[15];
      v14 = v11[16];
      v16 = v11[13];
      v17 = v11[14];
      v57 = v5;
      v18 = v11[12];
      v56 = v4[9];
      v54 = v4[2];
      v54(v15, v2[6] + v56 * v8, v14);
      v19 = *(v2[7] + v8);
      v20 = v4[4];
      v20(v17, v15, v14);
      *(v17 + *(v51 + 48)) = v19;
      sub_A310(v17, v16, &qword_EF4E0, &qword_BE010);
      v21 = *(v51 + 48);
      LOBYTE(v15) = *(v16 + v21);
      v20(v18, v16, v14);
      *(v18 + v21) = v15;
      v54(v55, v18, v14);
      v22 = v18;
      v5 = v57;
      sub_A194(v22, &qword_EF4E0, &qword_BE010);
      sub_A194(v17, &qword_EF4E0, &qword_BE010);
      v58[0] = v57;
      v24 = *(v57 + 16);
      v23 = *(v57 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E4D0((v23 > 1), v24 + 1, 1);
        v5 = v58[0];
      }

      v25 = v48[18];
      v26 = v48[16];
      v5[2] = v24 + 1;
      result = (v20)(v5 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + v24 * v56, v25, v26);
      v2 = v47;
      v12 = 1 << *(v47 + 32);
      v6 = v50;
      if (v8 >= v12)
      {
        goto LABEL_35;
      }

      v27 = *&v50[8 * v53];
      if ((v27 & (1 << v8)) == 0)
      {
        goto LABEL_36;
      }

      v10 = v46;
      if (v46 != *(v47 + 9))
      {
        goto LABEL_37;
      }

      v11 = v48;
      v4 = v49;
      v28 = v27 & (-2 << (v8 & 0x3F));
      if (v28)
      {
        v12 = __clz(__rbit64(v28)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v13 = v52;
      }

      else
      {
        v29 = v53 << 6;
        v30 = &v44[8 * v53];
        v31 = v53 + 1;
        while (v31 < (v12 + 63) >> 6)
        {
          v33 = *v30++;
          v32 = v33;
          v29 += 64;
          ++v31;
          if (v33)
          {
            result = sub_21318(v8, v46, 0);
            v12 = __clz(__rbit64(v32)) + v29;
            goto LABEL_20;
          }
        }

        result = sub_21318(v8, v46, 0);
LABEL_20:
        v13 = v52;
        v11 = v48;
      }

      v9 = v13 + 1;
      v8 = v12;
    }

    while (v9 != v45);
    v0 = v11;

    v58[0] = v5;

    sub_1BC54(v58);
    if (!v43)
    {
      v39 = v0[7];

      v39(v58[0]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      *(v0 + 185) = 0;
      sub_B6880();
      sub_B6910();
      v38 = 0;
      goto LABEL_29;
    }
  }

  else
  {

    v34 = sub_B69A0();
    v35 = sub_B7B60();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_17834(0xD000000000000065, 0x80000000000B9060, v58);
      _os_log_impl(&dword_0, v34, v35, "ContactPickerViewModel: %s - No incapable recipient", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    v38 = 1;
LABEL_29:
    v40 = v0[3];
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v41 - 8) + 56))(v40, v38, 1, v41);

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_16398()
{
  v12 = v0;

  swift_errorRetain();
  v1 = sub_B69A0();
  v2 = sub_B7B40();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_17834(0xD000000000000065, 0x80000000000B9060, &v11);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&dword_0, v1, v2, "ContactPickerViewModel: %s - Error: %@", v3, 0x16u);
    sub_A194(v4, &qword_EF4F8, &qword_C16D0);

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  (*(v0 + 72))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0);
  *(swift_allocObject() + 16) = xmmword_BDA30;
  *(v0 + 184) = 0;
  sub_B6880();
  sub_B6910();

  v7 = *(v0 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_166D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF508, &qword_BE048);
  v5[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018);
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF510, &qword_BE050);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v8 = sub_B6370();
  v5[26] = v8;
  v9 = *(v8 - 8);
  v5[27] = v9;
  v5[28] = *(v9 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_16910, 0, 0);
}

uint64_t sub_16910()
{
  v34 = v0 + 2;
  v1 = v0[12];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[12] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v38 = v0[12];
  v39 = v0[27];

  v12 = 0;
  v36 = v8;
  v37 = v3;
  v35 = v0;
  while (v7)
  {
LABEL_11:
    v17 = v0[29];
    v16 = v0[30];
    v18 = v0[25];
    v19 = v0[26];
    v42 = v0[24];
    v40 = v18;
    v41 = v0[14];
    v44 = v0[13];
    (*(v39 + 16))(v16, *(v38 + 48) + *(v39 + 72) * (__clz(__rbit64(v7)) | (v12 << 6)), v19);
    v20 = sub_B7A80();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v18, 1, 1, v20);
    v22 = *(v39 + 32);
    v22(v17, v16, v19);
    v23 = (*(v39 + 80) + 48) & ~*(v39 + 80);
    v24 = swift_allocObject();
    v24[2] = 0;
    v43 = v24 + 2;
    v24[3] = 0;
    v24[4] = v44;
    v24[5] = v41;
    v22(v24 + v23, v17, v19);
    sub_A310(v40, v42, &qword_EF458, &qword_BDED0);
    v0 = v35;
    LODWORD(v23) = (*(v21 + 48))(v42, 1, v20);

    v25 = v35[24];
    if (v23 == 1)
    {
      sub_A194(v35[24], &qword_EF458, &qword_BDED0);
    }

    else
    {
      sub_B7A70();
      (*(v21 + 8))(v25, v20);
    }

    if (*v43)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_B7A00();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = *v35[11];

    if (v28 | v26)
    {
      v13 = v34;
      *v34 = 0;
      v34[1] = 0;
      v35[4] = v26;
      v35[5] = v28;
    }

    else
    {
      v13 = 0;
    }

    v7 &= v7 - 1;
    v14 = v35[25];
    v35[6] = 1;
    v35[7] = v13;
    v35[8] = v29;
    swift_task_create();

    v9 = sub_A194(v14, &qword_EF458, &qword_BDED0);
    v8 = v36;
    v3 = v37;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v11);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v12;
    if (v7)
    {
      v12 = v15;
      goto LABEL_11;
    }
  }

  v30 = sub_210E8(&_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  sub_B7B00();
  v0[31] = v30;
  v31 = sub_A8CC(&qword_EF520, &qword_EF510, &qword_BE050, &protocol conformance descriptor for ThrowingTaskGroup<A, B>.Iterator);
  v32 = swift_task_alloc();
  v0[32] = v32;
  *v32 = v0;
  v32[1] = sub_16DB8;
  v10 = v0[21];
  v9 = v0[15];
  v11 = v31;

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v11);
}

uint64_t sub_16DB8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    (*(v2[22] + 8))(v2[23], v2[21]);

    v3 = sub_172EC;
  }

  else
  {
    v3 = sub_16EF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_16EF0()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = (*(v0[17] + 48))(v2, 1, v1);
  v4 = v0[31];
  if (v3 == 1)
  {
    v5 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_A194(v2, &qword_EF508, &qword_BE048);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  sub_215B8(v2, v8);
  sub_A310(v8, v9, &qword_EF4E8, &qword_BE018);
  sub_A310(v8, v10, &qword_EF4E8, &qword_BE018);
  v11 = *(v10 + *(v1 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[9] = v4;
  v13 = sub_17ED8(v9);
  v15 = *(v4 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v1) = v14;
  if (*(v0[31] + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_12:
      v21 = v0[9];
      if (v1)
      {
LABEL_13:
        v22 = v0[20];
        *(v21[7] + v13) = v11;
        sub_A194(v22, &qword_EF4E8, &qword_BE018);
        goto LABEL_18;
      }

LABEL_16:
      v24 = v0[26];
      v25 = v0[27];
      v26 = v0[19];
      v27 = v0[20];
      v21[(v13 >> 6) + 8] |= 1 << v13;
      v28 = v13;
      (*(v25 + 16))(v21[6] + *(v25 + 72) * v13, v26, v24);
      *(v21[7] + v28) = v11;
      v29 = sub_A194(v27, &qword_EF4E8, &qword_BE018);
      v32 = v21[2];
      v17 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v17)
      {
        __break(1u);
        return dispatch thunk of AsyncIteratorProtocol.next()(v29, v30, v31);
      }

      v21[2] = v33;
LABEL_18:
      v34 = v0[26];
      v35 = v0[18];
      v36 = *(v0[27] + 8);
      v36(v0[19], v34);
      v36(v35, v34);
      v0[31] = v21;
      v37 = sub_A8CC(&qword_EF520, &qword_EF510, &qword_BE050, &protocol conformance descriptor for ThrowingTaskGroup<A, B>.Iterator);
      v38 = swift_task_alloc();
      v0[32] = v38;
      *v38 = v0;
      v38[1] = sub_16DB8;
      v30 = v0[21];
      v29 = v0[15];
      v31 = v37;

      return dispatch thunk of AsyncIteratorProtocol.next()(v29, v30, v31);
    }

LABEL_15:
    v23 = v13;
    sub_19E28();
    v13 = v23;
    v21 = v0[9];
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v19 = v0[19];
  sub_188A0(v18, isUniquelyReferenced_nonNull_native);
  v13 = sub_17ED8(v19);
  if ((v1 & 1) == (v20 & 1))
  {
    goto LABEL_12;
  }

  return sub_B7DF0();
}

uint64_t sub_172EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_173BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_174B8;

  return v10(a6);
}

uint64_t sub_174B8(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1 & 1;

    return _swift_task_switch(sub_17608, 0, 0);
  }
}

uint64_t sub_17608()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018) + 48);
  v5 = sub_B6370();
  (*(*(v5 - 8) + 16))(v2, v3, v5);
  *(v2 + v4) = v1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t ContactPickerViewModel.Dependencies.init(isReachable:isHandlePartOfSignedInAccount:excludedSuggestedContactHandles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

Swift::Int ItemContactInfoSetupConfirmationViewModel.EditType.hashValue.getter()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(v1);
  return sub_B7EE0();
}

Swift::Int sub_17768()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(v1);
  return sub_B7EE0();
}

void *sub_177B0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF148, &qword_BDA10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_17834(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_17900(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_20814(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_17900(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_17A0C(a5, a6);
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
    result = sub_B7C90();
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

char *sub_17A0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_17A58(a1, a2);
  sub_17B88(&off_E29B8);
  return v3;
}

char *sub_17A58(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_17C74(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_B7C90();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_B79B0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_17C74(v10, 0);
        result = sub_B7C70();
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

uint64_t sub_17B88(uint64_t result)
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

  result = sub_17CE8(result, v11, 1, v3);
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

void *sub_17C74(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF450, &qword_BDEC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_17CE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF450, &qword_BDEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void sub_17DDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_17E94(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19870();
      v9 = v13;
    }

    v10 = *(v9 + 56) + 32 * v7;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    *a2 = *v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    sub_18C60(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = -1;
  }
}

unint64_t sub_17E94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_B7BA0(*(v2 + 40));

  return sub_195DC(a1, v4);
}

unint64_t sub_17ED8(uint64_t a1)
{
  sub_B6370();
  sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
  v2 = sub_B7870();

  return sub_196B0(a1, v2);
}

uint64_t sub_17F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF478, &qword_BDF48);
  v37 = v4;
  result = sub_B7D50();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *(v22 + 8);
      v38 = *v22;
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      if ((v37 & 1) == 0)
      {
        v26 = v21;
        sub_20AFC(v38, v23, v24, v25);
      }

      result = sub_B7BA0(*(v7 + 40));
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v38;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(v16 + 24) = v25;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

uint64_t sub_1821C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF468, &qword_BDF10);
  result = sub_B7D50();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
        v22 = v20;
      }

      result = sub_B7BA0(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1848C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_B6370();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C8, &qword_BDFF8);
  v48 = v4;
  result = sub_B7D50();
  v11 = result;
  if (*(v9 + 16))
  {
    v55 = v8;
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
    v17 = v6;
    v18 = (v14 + 63) >> 6;
    v44 = v2;
    v45 = (v17 + 16);
    v49 = (v17 + 32);
    v19 = result + 64;
    v46 = v17;
    v47 = v9;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v54 = *(v17 + 72);
      v28 = v27 + v54 * v26;
      v29 = 32 * v26;
      if (v48)
      {
        (*v49)(v55, v28, v5);
        v30 = *(v9 + 56) + v29;
        v31 = *v30;
        v52 = *(v30 + 8);
        v53 = v31;
        v51 = *(v30 + 16);
        v50 = *(v30 + 24);
      }

      else
      {
        (*v45)(v55, v28, v5);
        v32 = *(v9 + 56) + v29;
        v33 = *v32;
        v34 = *(v32 + 16);
        v35 = *(v32 + 24);
        v52 = *(v32 + 8);
        v53 = v33;
        v51 = v34;
        v50 = v35;
        sub_20AFC(v33, v52, v34, v35);
      }

      sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
      result = sub_B7870();
      v36 = -1 << *(v11 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v19 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v19 + 8 * v38);
          if (v42 != -1)
          {
            v20 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v37) & ~*(v19 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v49)(*(v11 + 48) + v54 * v20, v55, v5);
      v21 = *(v11 + 56) + 32 * v20;
      v22 = v52;
      *v21 = v53;
      *(v21 + 8) = v22;
      *(v21 + 16) = v51;
      *(v21 + 24) = v50;
      ++*(v11 + 16);
      v17 = v46;
      v9 = v47;
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

      if (v12 >= v18)
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

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v9 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v13, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v43;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_188A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_B6370();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF500, &qword_BE040);
  v40 = v4;
  result = sub_B7D50();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
      result = sub_B7870();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_18C60(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_B7C40() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_B7BA0(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (32 * v3 != 32 * v6 || (v3 = v6, v20 >= v21 + 2))
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
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
}

void sub_18DF8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_B7C40() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_B7BA0(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_18F84(int64_t a1, uint64_t a2)
{
  v41 = sub_B6370();
  v4 = *(v41 - 8);
  result = __chkstk_darwin(v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_B7C40();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
      v23 = sub_B7870();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 32 * a1);
          v30 = (v28 + 32 * v10);
          if (32 * a1 != 32 * v10 || (a1 = v10, v29 >= v30 + 2))
          {
            v31 = v30[1];
            *v29 = *v30;
            v29[1] = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

id sub_192B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_17E94(a5);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 < v19 || (a6 & 1) != 0)
    {
      sub_17F70(v19, a6 & 1);
      v14 = sub_17E94(a5);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_20A70(0, &qword_EF460, CNComposeRecipient_ptr);
        result = sub_B7DF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v14;
      sub_19870();
      v14 = v22;
    }
  }

  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 32 * v14;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
    v29 = *(v25 + 24);
    *(v25 + 24) = a4;

    return sub_20B30(v26, v27, v28, v29);
  }

  v24[(v14 >> 6) + 8] |= 1 << v14;
  *(v24[6] + 8 * v14) = a5;
  v31 = v24[7] + 32 * v14;
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  v32 = v24[2];
  v18 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v33;

  return a5;
}

id sub_19460(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_17E94(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1821C(v13, a3 & 1);
      v8 = sub_17E94(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_20A70(0, &qword_EF460, CNComposeRecipient_ptr);
        result = sub_B7DF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_19A14();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_195DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_20A70(0, &qword_EF460, CNComposeRecipient_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_B7BB0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_196B0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_B6370();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
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
      sub_212D0(&qword_EF528, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
      v15 = sub_B78C0();
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

void *sub_19870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF478, &qword_BDF48);
  v25 = v0;
  v1 = *v0;
  v2 = sub_B7D40();
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
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(*(v1 + 48) + 8 * v16);
        v18 = *(v1 + 56) + 32 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v3 + 48) + 8 * v16) = v17;
        v23 = *(v3 + 56) + 32 * v16;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        v24 = v17;
        result = sub_20AFC(v19, v20, v21, v22);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
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

    *v25 = v3;
  }

  return result;
}

void *sub_19A14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF468, &qword_BDF10);
  v2 = *v0;
  v3 = sub_B7D40();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

char *sub_19B78()
{
  v1 = v0;
  v2 = sub_B6370();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  __chkstk_darwin(v2);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C8, &qword_BDFF8);
  v5 = *v0;
  v6 = sub_B7D40();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v42 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v16;
    v38 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v44 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v5 + 48);
        v22 = v40;
        v23 = v41;
        v43 = *(v41 + 72) * v20;
        v24 = v39;
        (*(v41 + 16))(v39, v21 + v43, v40);
        v25 = *(v5 + 56);
        v26 = 32 * v20;
        v27 = v25 + 32 * v20;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = v42;
        LOBYTE(v20) = *(v27 + 24);
        (*(v23 + 32))(*(v42 + 48) + v43, v24, v22);
        v32 = *(v31 + 56) + v26;
        v5 = v38;
        *v32 = v28;
        *(v32 + 8) = v29;
        *(v32 + 16) = v30;
        *(v32 + 24) = v20;
        result = sub_20AFC(v28, v29, v30, v20);
        v16 = v37;
        v15 = v44;
      }

      while (v44);
    }

    v18 = v11;
    v7 = v42;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v19 = *(v34 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_19E28()
{
  v1 = v0;
  v31 = sub_B6370();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF500, &qword_BE040);
  v3 = *v0;
  v4 = sub_B7D40();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void *sub_1A098(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1B020(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_1A208(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v25 = v8;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 8 * v12);
    v24 = v12;
    v14 = *(a3 + 56) + 32 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    sub_B7A60();
    v27 = v13;
    sub_20AFC(v16, v15, v17, v18);
    sub_B7A50();
    sub_B7A00();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v18 >= 2 && (v17 | v15 | v16) == 0)
    {
      sub_20B30(0, 0, 0, 2u);
      sub_20B30(0, 0, 0, 2u);

      sub_20B30(0, 0, 0, 2u);

      *(a1 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v20 = __OFADD__(v23++, 1);
      v8 = v25;
      v7 = v28;
      if (v20)
      {
        __break(1u);
LABEL_21:
        sub_1B0A8(a1, a2, v23, a3);
        return;
      }
    }

    else
    {
      sub_20AFC(v16, v15, v17, v18);
      sub_20B30(v16, v15, v17, v18);
      sub_20B30(0, 0, 0, 2u);

      sub_20B30(v16, v15, v17, v18);

      v8 = v25;
      v7 = v28;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_21;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1A498(unint64_t *a1, uint64_t a2, void *a3)
{
  v57 = a2;
  v58 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C0, &qword_BDFF0);
  v4 = __chkstk_darwin(v70);
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v69 = &v56 - v7;
  __chkstk_darwin(v6);
  v77 = &v56 - v8;
  v9 = sub_B6370();
  result = __chkstk_darwin(v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v14 = 0;
  v71 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v66 = v11 + 16;
  v67 = v21;
  v78 = v11;
  v63 = (v11 + 8);
  v64 = v11 + 32;
  v68 = v16;
  v61 = result;
  v62 = v13;
  while (v20)
  {
    v26 = __clz(__rbit64(v20));
    v76 = (v20 - 1) & v20;
LABEL_12:
    v29 = v26 | (v14 << 6);
    v30 = v71;
    v31 = *(v78 + 16);
    v31(v13, v71[6] + *(v78 + 72) * v29, v9);
    v32 = v30[7];
    v60 = v29;
    v33 = v32 + 32 * v29;
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = v9;
    v37 = *(v33 + 16);
    v38 = *(v33 + 24);
    v39 = v77;
    v31(v77, v13, v36);
    v40 = v70;
    v41 = v39 + *(v70 + 48);
    v74 = v37;
    v75 = v34;
    *v41 = v34;
    *(v41 + 8) = v35;
    v73 = v35;
    *(v41 + 16) = v37;
    v72 = v38;
    *(v41 + 24) = v38;
    v42 = v69;
    sub_A310(v39, v69, &qword_EF4C0, &qword_BDFF0);
    v43 = *(v40 + 48);
    v45 = *(v42 + v43);
    v44 = *(v42 + v43 + 8);
    v46 = *(v42 + v43 + 16);
    v47 = *(v42 + v43 + 24);
    v48 = v65;
    v49 = &v65[v43];
    v9 = v61;
    (*(v78 + 32))(v65, v42, v61);
    *v49 = v45;
    *(v49 + 1) = v44;
    *(v49 + 2) = v46;
    v49[24] = v47;
    if (v47 == 1)
    {
      v51 = v74;
      v50 = v75;
      v52 = v45;
      v53 = v73;
      v54 = v72;
      sub_20AFC(v75, v73, v74, v72);
      sub_20AFC(v50, v53, v51, v54);
      sub_A194(v48, &qword_EF4C0, &qword_BDFF0);
      sub_A194(v77, &qword_EF4C0, &qword_BDFF0);
      sub_20B30(v50, v53, v51, v54);
      v13 = v62;
      result = (*v63)(v62, v9);
      v21 = v67;
      v16 = v68;
      v20 = v76;
      if ((v52 & 1) == 0)
      {
        *(v58 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        if (__OFADD__(v59++, 1))
        {
          __break(1u);
          return sub_1B310(v58, v57, v59, v71);
        }
      }
    }

    else
    {
      v23 = v74;
      v22 = v75;
      v24 = v73;
      v25 = v72;
      sub_20AFC(v75, v73, v74, v72);
      sub_20AFC(v22, v24, v23, v25);
      sub_A194(v48, &qword_EF4C0, &qword_BDFF0);
      sub_A194(v77, &qword_EF4C0, &qword_BDFF0);
      sub_20B30(v22, v24, v23, v25);
      v13 = v62;
      result = (*v63)(v62, v9);
      v21 = v67;
      v16 = v68;
      v20 = v76;
    }
  }

  v27 = v14;
  while (1)
  {
    v14 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_1B310(v58, v57, v59, v71);
    }

    v28 = v16[v14];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v76 = (v28 - 1) & v28;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42[0] = a2;
  v43 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C0, &qword_BDFF0);
  v4 = __chkstk_darwin(v53);
  v52 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v51 = v42 - v7;
  __chkstk_darwin(v6);
  v62 = v42 - v8;
  v61 = sub_B6370();
  result = __chkstk_darwin(v61);
  v60 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v54 = a3;
  v13 = *(a3 + 64);
  v46 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = 0;
  v45 = (v14 + 63) >> 6;
  v49 = v10 + 32;
  v50 = v10 + 16;
  v63 = v10;
  v48 = v10 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v59 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v12 << 6);
    v21 = v54;
    v22 = *(v63 + 16);
    v24 = v60;
    v23 = v61;
    v22(v60, v54[6] + *(v63 + 72) * v20, v61);
    v25 = v22;
    v26 = v21[7];
    v47 = v20;
    v27 = v26 + 32 * v20;
    v28 = *v27;
    v57 = *(v27 + 8);
    v29 = v57;
    v58 = v28;
    v30 = *(v27 + 16);
    v56 = *(v27 + 24);
    v31 = v62;
    v25(v62, v24, v23);
    v32 = v53;
    v33 = v31 + *(v53 + 48);
    *v33 = v28;
    *(v33 + 8) = v29;
    *(v33 + 16) = v30;
    LOBYTE(v29) = v56;
    *(v33 + 24) = v56;
    v34 = v51;
    sub_A310(v31, v51, &qword_EF4C0, &qword_BDFF0);
    v35 = *(v32 + 48);
    v55 = *(v34 + v35);
    v36 = *(v34 + v35 + 16);
    LODWORD(v32) = *(v34 + v35 + 24);
    v37 = v52;
    v38 = &v52[v35];
    (*(v63 + 32))(v52, v34, v23);
    *v38 = v55;
    *(v38 + 2) = v36;
    v38[24] = v32;
    v39 = v57;
    v40 = v58;
    sub_20AFC(v58, v57, v30, v29);
    sub_20AFC(v40, v39, v30, v29);
    sub_A194(v37, &qword_EF4C0, &qword_BDFF0);
    sub_A194(v62, &qword_EF4C0, &qword_BDFF0);
    sub_20B30(v40, v39, v30, v29);
    result = (*(v63 + 8))(v60, v61);
    v16 = v59;
    if (!v32)
    {
      *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
        return sub_1B310(v43, v42[0], v44, v54);
      }
    }
  }

  v18 = v12;
  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v45)
    {
      return sub_1B310(v43, v42[0], v44, v54);
    }

    v19 = *(v46 + 8 * v12);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v59 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AD6C(unint64_t *a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E0, &qword_BE010);
  __chkstk_darwin(v38);
  v37 = &v27 - v4;
  v36 = sub_B6370();
  result = __chkstk_darwin(v36);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v6;
  v8 = 0;
  v39 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v29 = 0;
  v30 = (v12 + 63) >> 6;
  v33 = v6 + 16;
  v31 = v10;
  v32 = v6 + 8;
  while (v14)
  {
    v15 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = v39;
    v20 = v34;
    v21 = v35;
    v22 = *(v35 + 16);
    v23 = v36;
    v22(v34, v39[6] + *(v35 + 72) * v18, v36);
    v24 = v18;
    LOBYTE(v19) = *(v19[7] + v18);
    v25 = v37;
    v22(v37, v20, v23);
    *(v25 + *(v38 + 48)) = v19;
    sub_A194(v25, &qword_EF4E0, &qword_BE010);
    result = (*(v21 + 8))(v20, v23);
    v14 = v40;
    if ((v19 & 1) == 0)
    {
      *(v28 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_1B700(v28, v27, v29, v39);
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v30)
    {
      return sub_1B700(v28, v27, v29, v39);
    }

    v17 = v31[v8];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v40 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B020(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1B0A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF478, &qword_BDF48);
  result = sub_B7D60();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = a2;
  v37 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 32 * v16;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v9 + 40);
    v24 = v17;
    sub_20AFC(v20, v19, v21, v22);
    result = sub_B7BA0(v23);
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v9 + 48) + 8 * v28) = v24;
    v33 = *(v9 + 56) + 32 * v28;
    *v33 = v20;
    *(v33 + 8) = v19;
    *(v33 + 16) = v21;
    *(v33 + 24) = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v37;
    v10 = v38;
    v8 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v38 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B310(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v63 = sub_B6370();
  v61 = *(v63 - 8);
  v8 = __chkstk_darwin(v63);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v46 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C8, &qword_BDFF8);
  result = sub_B7D60();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v50 = v61 + 16;
  v51 = result;
  v62 = v61 + 32;
  v16 = result + 64;
  v52 = a1;
  v48 = v10;
  v49 = a2;
  v47 = a4;
  v17 = v63;
  while (v14)
  {
    v60 = a3;
    v18 = __clz(__rbit64(v14));
    v54 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v23 = v61;
    v59 = *(v61 + 72);
    v24 = v53;
    (*(v61 + 16))(v53, v22 + v59 * v21, v17);
    v25 = a4[7] + 32 * v21;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v30 = v48;
    v55 = *(v23 + 32);
    v55(v48, v24, v17);
    v13 = v51;
    v57 = v28;
    v58 = v27;
    v31 = v27;
    v32 = v26;
    v56 = v29;
    sub_20AFC(v31, v26, v28, v29);
    sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
    v33 = v30;
    result = sub_B7870();
    v34 = -1 << *(v13 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v16 + 8 * (v35 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v34) >> 6;
      a1 = v52;
      a2 = v49;
      v38 = v60;
      while (++v36 != v40 || (v39 & 1) == 0)
      {
        v41 = v36 == v40;
        if (v36 == v40)
        {
          v36 = 0;
        }

        v39 |= v41;
        v42 = *(v16 + 8 * v36);
        if (v42 != -1)
        {
          v37 = __clz(__rbit64(~v42)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v16 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a1 = v52;
    a2 = v49;
    v38 = v60;
LABEL_26:
    *(v16 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    result = (v55)(*(v13 + 48) + v37 * v59, v33, v63);
    v43 = *(v13 + 56) + 32 * v37;
    v44 = v57;
    *v43 = v58;
    *(v43 + 8) = v32;
    *(v43 + 16) = v44;
    *(v43 + 24) = v56;
    ++*(v13 + 16);
    v45 = __OFSUB__(v38, 1);
    a3 = v38 - 1;
    if (v45)
    {
      goto LABEL_32;
    }

    a4 = v47;
    v14 = v54;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v60 = a3;
      v18 = __clz(__rbit64(v20));
      v54 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}