uint64_t sub_100124BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100124C34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100124DF4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_100124F00@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = _swiftEmptyArrayStorage;
  type metadata accessor for KTPBBatchQueryRequest(0);
  return UnknownStorage.init()();
}

uint64_t sub_100124F54()
{
  v1 = *(v0 + *(type metadata accessor for KTPBBatchQueryResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_100124FC4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    sub_100129E18(v10);
    *(v3 + v6) = v9;
  }

  result = swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  return result;
}

void (*sub_100125088(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return sub_100125130;
}

void sub_100125130(uint64_t *a1, char a2)
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
    type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
    v11 = swift_allocObject();
    v12 = v8;
    v8 = v11;
    sub_100129E18(v12);
    *(v10 + v9) = v11;
  }

  swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 24) = v6;

  free(v2);
}

double sub_100125200()
{
  type metadata accessor for KTPBBatchQueryResponse(0);
  swift_beginAccess();

  return result;
}

uint64_t sub_100125250(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100129E18(v8);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  *(v6 + 32) = a1;
}

void (*sub_1001252F0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 32);

  return sub_100125398;
}

void sub_100125398(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
      v10 = swift_allocObject();
      v11 = v7;
      v7 = v10;
      sub_100129E18(v11);
      *(v9 + v8) = v10;
    }

    swift_beginAccess();
    *(v7 + 32) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
      v16 = swift_allocObject();
      v17 = v13;
      v13 = v16;
      sub_100129E18(v17);
      *(v15 + v14) = v16;
    }

    swift_beginAccess();
    *(v13 + 32) = v3;
  }

  free(v2);
}

uint64_t sub_1001254C8@<X0>(char *a1@<X8>)
{
  v3 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for KTPBBatchQueryResponse(0) + 20));
  v7 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
  swift_beginAccess();
  sub_1000AB050(v6 + v7, v5, &qword_100385898, &unk_1002DB9A0);
  v8 = type metadata accessor for KTPBSignedObject(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_100124864(v5, a1, type metadata accessor for KTPBSignedObject);
  }

  sub_10010D408(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_100385898, &unk_1002DB9A0);
  }

  return result;
}

uint64_t sub_100125640(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100129E18(v11);
    *(v2 + v7) = v10;
  }

  sub_100124864(a1, v6, type metadata accessor for KTPBSignedObject);
  v12 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
  swift_beginAccess();
  sub_10011EFEC(v6, v9 + v13, &qword_100385898, &unk_1002DB9A0);
  return swift_endAccess();
}

void (*sub_1001257AC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100095820(&qword_100385898, &unk_1002DB9A0) - 8) + 64);
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
  v8 = type metadata accessor for KTPBSignedObject(0);
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
  v14 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
  swift_beginAccess();
  sub_1000AB050(v15 + v16, v7, &qword_100385898, &unk_1002DB9A0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_10010D408(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
    }
  }

  else
  {
    sub_100124864(v7, v13, type metadata accessor for KTPBSignedObject);
  }

  return sub_1001259F8;
}

void sub_1001259F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100124BCC(*(v2 + 120), *(v2 + 112), type metadata accessor for KTPBSignedObject);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
      v9 = swift_allocObject();
      sub_100129E18(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_100124864(v11, v15, type metadata accessor for KTPBSignedObject);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
    swift_beginAccess();
    sub_10011EFEC(v15, v6 + v16, &qword_100385898, &unk_1002DB9A0);
    swift_endAccess();
    sub_100124C34(v10, type metadata accessor for KTPBSignedObject);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
      v22 = swift_allocObject();
      sub_100129E18(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_100124864(v10, v15, type metadata accessor for KTPBSignedObject);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
    swift_beginAccess();
    sub_10011EFEC(v15, v19 + v25, &qword_100385898, &unk_1002DB9A0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

uint64_t sub_100125CB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = *(v2 + *(type metadata accessor for KTPBBatchQueryResponse(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_1000AB050(v8 + v9, v7, &qword_100386250, &qword_1002D9580);
  v10 = type metadata accessor for KTPBLogEntry(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_100124864(v7, a2, type metadata accessor for KTPBLogEntry);
  }

  sub_10010DDA0(a2);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
  }

  return result;
}

uint64_t sub_100125E38(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
    v12 = swift_allocObject();
    v13 = v11;
    v11 = v12;
    sub_100129E18(v13);
    *(v4 + v9) = v12;
  }

  sub_100124864(a1, v8, type metadata accessor for KTPBLogEntry);
  v14 = type metadata accessor for KTPBLogEntry(0);
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = *a2;
  swift_beginAccess();
  sub_10011EFEC(v8, v11 + v15, &qword_100386250, &qword_1002D9580);
  return swift_endAccess();
}

void (*sub_100125FAC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100386250, &qword_1002D9580) - 8) + 64);
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
  v8 = type metadata accessor for KTPBLogEntry(0);
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
  v14 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_1000AB050(v15 + v16, v7, &qword_100386250, &qword_1002D9580);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_10010DDA0(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
    }
  }

  else
  {
    sub_100124864(v7, v13, type metadata accessor for KTPBLogEntry);
  }

  return sub_1001261F8;
}

void sub_100126204(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    sub_100124BCC(*(v4 + 120), *(v4 + 112), type metadata accessor for KTPBLogEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v4 + 128);
      v10 = *(v4 + 72);
      type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
      v11 = swift_allocObject();
      sub_100129E18(v8);
      *(v10 + v9) = v11;
      v8 = v11;
    }

    v13 = *(v4 + 112);
    v12 = *(v4 + 120);
    v14 = *(v4 + 96);
    v15 = *(v4 + 104);
    v17 = *(v4 + 80);
    v16 = *(v4 + 88);
    sub_100124864(v13, v17, type metadata accessor for KTPBLogEntry);
    (*(v15 + 56))(v17, 0, 1, v14);
    v18 = *a3;
    swift_beginAccess();
    sub_10011EFEC(v17, v8 + v18, &qword_100386250, &qword_1002D9580);
    swift_endAccess();
    sub_100124C34(v12, type metadata accessor for KTPBLogEntry);
  }

  else
  {
    v19 = *(v4 + 72);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v19 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v4 + 128);
      v23 = *(v4 + 72);
      type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
      v24 = swift_allocObject();
      sub_100129E18(v21);
      *(v23 + v22) = v24;
      v21 = v24;
    }

    v13 = *(v4 + 112);
    v12 = *(v4 + 120);
    v25 = *(v4 + 96);
    v26 = *(v4 + 104);
    v17 = *(v4 + 80);
    v16 = *(v4 + 88);
    sub_100124864(v12, v17, type metadata accessor for KTPBLogEntry);
    (*(v26 + 56))(v17, 0, 1, v25);
    v27 = *a3;
    swift_beginAccess();
    sub_10011EFEC(v17, v21 + v27, &qword_100386250, &qword_1002D9580);
    swift_endAccess();
  }

  free(v12);
  free(v13);
  free(v16);
  free(v17);

  free(v4);
}

BOOL sub_100126488(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = sub_100095820(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for KTPBBatchQueryResponse(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_1000AB050(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_1000057C4(v11, a1, a2);
  return v15;
}

uint64_t sub_1001265D0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = sub_100095820(a1, a2);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
    v16 = swift_allocObject();
    v17 = v15;
    v15 = v16;
    sub_100129E18(v17);
    *(v9 + v13) = v16;
  }

  v18 = a3(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = *a4;
  swift_beginAccess();
  sub_10011EFEC(v12, v15 + v19, a1, a2);
  return swift_endAccess();
}

void (*sub_100126738(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100095820(&qword_100386250, &qword_1002D9580) - 8) + 64);
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
  v8 = type metadata accessor for KTPBLogEntry(0);
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
  v14 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_1000AB050(v15 + v16, v7, &qword_100386250, &qword_1002D9580);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_10010DDA0(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100386250, &qword_1002D9580);
    }
  }

  else
  {
    sub_100124864(v7, v13, type metadata accessor for KTPBLogEntry);
  }

  return sub_100126984;
}

uint64_t sub_1001269F0@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  if (qword_100398C50 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_100398C58;
}

uint64_t sub_100126A6C()
{
  if (qword_100398C50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100126AC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  Info = type metadata accessor for KTPBBatchQueryInfo(0);
  sub_1000AB050(v1 + *(Info + 28), v5, &qword_1003858A0, &qword_1002D81F0);
  v7 = type metadata accessor for KTPBVRFWitness(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_100124864(v5, a1, type metadata accessor for KTPBVRFWitness);
  }

  sub_10010C990(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_1003858A0, &qword_1002D81F0);
  }

  return result;
}

uint64_t sub_100126C1C(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBBatchQueryInfo(0) + 28);
  sub_1000057C4(v1 + v3, &qword_1003858A0, &qword_1002D81F0);
  sub_100124864(a1, v1 + v3, type metadata accessor for KTPBVRFWitness);
  v4 = type metadata accessor for KTPBVRFWitness(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_100126CD4(void *a1))(uint64_t, uint64_t)
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
  v5 = *(*(sub_100095820(&qword_1003858A0, &qword_1002D81F0) - 8) + 64);
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
  v8 = type metadata accessor for KTPBVRFWitness(0);
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
  v14 = *(type metadata accessor for KTPBBatchQueryInfo(0) + 28);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_1003858A0, &qword_1002D81F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10010C990(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_1003858A0, &qword_1002D81F0);
    }
  }

  else
  {
    sub_100124864(v7, v13, type metadata accessor for KTPBVRFWitness);
  }

  return sub_10012F848;
}

BOOL sub_100126F1C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100095820(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_1000AB050(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000057C4(v11, a1, a2);
  return v14;
}

uint64_t sub_100127054(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1000057C4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_100127100@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100095820(&qword_100387108, &qword_1002DB9B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  Info = type metadata accessor for KTPBBatchQueryInfo(0);
  sub_1000AB050(v1 + *(Info + 32), v5, &qword_100387108, &qword_1002DB9B0);
  v7 = type metadata accessor for KTPBBatchedMapEntry(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_100124864(v5, a1, type metadata accessor for KTPBBatchedMapEntry);
  }

  *a1 = xmmword_1002D4770;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  *(a1 + 24) = xmmword_1002D4770;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000057C4(v5, &qword_100387108, &qword_1002DB9B0);
  }

  return result;
}

uint64_t sub_100127274@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  *(a1 + 24) = xmmword_1002D4770;
  type metadata accessor for KTPBBatchedMapEntry(0);
  return UnknownStorage.init()();
}

uint64_t sub_1001272C4(uint64_t a1)
{
  v3 = *(type metadata accessor for KTPBBatchQueryInfo(0) + 32);
  sub_1000057C4(v1 + v3, &qword_100387108, &qword_1002DB9B0);
  sub_100124864(a1, v1 + v3, type metadata accessor for KTPBBatchedMapEntry);
  v4 = type metadata accessor for KTPBBatchedMapEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10012737C(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100095820(&qword_100387108, &qword_1002DB9B0) - 8) + 64);
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
  v8 = type metadata accessor for KTPBBatchedMapEntry(0);
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
  v14 = *(type metadata accessor for KTPBBatchQueryInfo(0) + 32);
  *(v4 + 12) = v14;
  sub_1000AB050(v1 + v14, v7, &qword_100387108, &qword_1002DB9B0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = xmmword_1002D4770;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_1002D4770;
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_100387108, &qword_1002DB9B0);
    }
  }

  else
  {
    sub_100124864(v7, v13, type metadata accessor for KTPBBatchedMapEntry);
  }

  return sub_1001275A8;
}

void sub_1001275E4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_100124BCC(v12, v11, a6);
    sub_1000057C4(v15 + v10, a3, a4);
    sub_100124864(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_100124C34(v12, a6);
  }

  else
  {
    sub_1000057C4(v15 + v10, a3, a4);
    sub_100124864(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL sub_10012775C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100095820(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_1000AB050(v4 + *(v12 + 32), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000057C4(v11, a1, a2);
  return v14;
}

uint64_t sub_100127894(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1000057C4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_100127958@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001279F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100127AFC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 1;
  *(a4 + 16) = _swiftEmptyArrayStorage;
  v7 = a1(0);
  UnknownStorage.init()();
  v8 = *(v7 + 28);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(v7 + 32);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t sub_100127C38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100127CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100127DC8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D438);
  sub_10009597C(v0, qword_10039D438);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "application";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "uriVrfOutput";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "uri";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100128058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }

        else if (result == 5)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          sub_10010A2F0();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          sub_10010A434();
        }

        v3 = v6;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10012816C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  sub_10010A29C();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_10010A2F0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  sub_10010A3E0();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_10010A434();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v7 = v3[4];
  v8 = v3[5];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = v5;
      goto LABEL_18;
    }

    v11 = *(v7 + 16);
    v12 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      v10 = v5;
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_15:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v10)
      {
        return result;
      }

      goto LABEL_18;
    }

    v11 = v7;
    v12 = v7 >> 32;
  }

  v10 = v5;
  if (v11 != v12)
  {
    goto LABEL_15;
  }

LABEL_18:
  v13 = v3[7];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v3[6] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v10))
  {
    type metadata accessor for KTPBQueryRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001283C4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = xmmword_1002D4770;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t sub_10012843C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10012E6D8(&qword_100387690, type metadata accessor for KTPBQueryRequest, &unk_1002DBA30);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001284DC(uint64_t a1)
{
  v2 = sub_10012E6D8(&qword_100382DA0, type metadata accessor for KTPBQueryRequest, &unk_1002DB9B8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100128548(uint64_t a1, uint64_t a2)
{
  sub_10012E6D8(&qword_100382DA0, type metadata accessor for KTPBQueryRequest, &unk_1002DB9B8);

  return Message.hash(into:)();
}

uint64_t sub_1001285F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D450);
  sub_10009597C(v0, qword_10039D450);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inclusionProof";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pendingSMTs";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uriWitness";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100128884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for KTPBSignedObject(0);
          sub_10012E6D8(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          type metadata accessor for KTPBQueryResponse(0);
          type metadata accessor for KTPBVRFWitness(0);
          sub_10012E6D8(&qword_1003861E0, type metadata accessor for KTPBVRFWitness, &unk_1002D9FE8);
LABEL_14:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          type metadata accessor for KTPBQueryResponse(0);
          type metadata accessor for KTPBInclusionProof(0);
          sub_10012E6D8(&qword_1003864D8, type metadata accessor for KTPBInclusionProof, &unk_1002DAB50);
          goto LABEL_14;
        }

        sub_10010A4DC();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100128A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010A488();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (sub_10010A4DC(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = sub_100128C38(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for KTPBSignedObject(0);
        sub_10012E6D8(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      sub_100128E54(v3, a1, a2, a3);
      type metadata accessor for KTPBQueryResponse(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100128C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100095820(&qword_100387100, &unk_1002DB990);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBInclusionProof(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KTPBQueryResponse(0);
  sub_1000AB050(a1 + *(v12 + 28), v7, &qword_100387100, &unk_1002DB990);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100387100, &unk_1002DB990);
  }

  sub_100124864(v7, v11, type metadata accessor for KTPBInclusionProof);
  sub_10012E6D8(&qword_1003864D8, type metadata accessor for KTPBInclusionProof, &unk_1002DAB50);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100124C34(v11, type metadata accessor for KTPBInclusionProof);
}

uint64_t sub_100128E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBVRFWitness(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KTPBQueryResponse(0);
  sub_1000AB050(a1 + *(v12 + 32), v7, &qword_1003858A0, &qword_1002D81F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_1003858A0, &qword_1002D81F0);
  }

  sub_100124864(v7, v11, type metadata accessor for KTPBVRFWitness);
  sub_10012E6D8(&qword_1003861E0, type metadata accessor for KTPBVRFWitness, &unk_1002D9FE8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100124C34(v11, type metadata accessor for KTPBVRFWitness);
}

uint64_t sub_100129118(uint64_t a1, uint64_t a2)
{
  v4 = sub_10012E6D8(&qword_100387688, type metadata accessor for KTPBQueryResponse, &unk_1002DBB98);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001291B8(uint64_t a1)
{
  v2 = sub_10012E6D8(&qword_100387158, type metadata accessor for KTPBQueryResponse, &unk_1002DBB20);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100129224(uint64_t a1, uint64_t a2)
{
  sub_10012E6D8(&qword_100387158, type metadata accessor for KTPBQueryResponse, &unk_1002DBB20);

  return Message.hash(into:)();
}

uint64_t sub_1001292C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D468);
  sub_10009597C(v0, qword_10039D468);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "application";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uri";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100129520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
          goto LABEL_5;
        case 2:
          v6 = v3;
          sub_10010A434();
          break;
        case 1:
          v6 = v3;
          sub_10010A2F0();
          break;
        default:
          goto LABEL_5;
      }

      v3 = v6;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10012960C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  sub_10010A29C();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_10010A2F0();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  sub_10010A3E0();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v7 = v5;
  }

  else
  {
    sub_10010A434();
    v7 = v5;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (!*(*(v3 + 32) + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v7))
  {
    type metadata accessor for KTPBBatchQueryRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001297F4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_100129864(uint64_t a1, uint64_t a2)
{
  v4 = sub_10012E6D8(&qword_100387680, type metadata accessor for KTPBBatchQueryRequest, &unk_1002DBD00);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100129904(uint64_t a1)
{
  v2 = sub_10012E6D8(&qword_100387170, type metadata accessor for KTPBBatchQueryRequest, &unk_1002DBC88);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100129970(uint64_t a1, uint64_t a2)
{
  sub_10012E6D8(&qword_100387170, type metadata accessor for KTPBBatchQueryRequest, &unk_1002DBC88);

  return Message.hash(into:)();
}

uint64_t sub_100129A14()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D480);
  sub_10009597C(v0, qword_10039D480);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D7190;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "queryInfo";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "smh";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "perApplicationTreeEntry";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "topLevelTreeEntry";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100129CFC()
{
  type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
  v2 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__perApplicationTreeEntry;
  v4 = type metadata accessor for KTPBLogEntry(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  result = (v5)(v0 + OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__topLevelTreeEntry, 1, 1, v4);
  qword_100398C58 = v0;
  return result;
}

uint64_t sub_100129E18(uint64_t a1)
{
  v3 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v3 - 8);
  v23 = &v21 - v4;
  v5 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
  v9 = type metadata accessor for KTPBSignedObject(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__perApplicationTreeEntry;
  v11 = type metadata accessor for KTPBLogEntry(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  v22 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__topLevelTreeEntry;
  v12(v1 + OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__topLevelTreeEntry, 1, 1, v11);
  swift_beginAccess();
  v13 = *(a1 + 16);
  LOBYTE(v12) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v13;
  *(v1 + 24) = v12;
  swift_beginAccess();
  v14 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v14;
  v15 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
  swift_beginAccess();
  sub_1000AB050(a1 + v15, v7, &qword_100385898, &unk_1002DB9A0);
  swift_beginAccess();

  sub_10011EFEC(v7, v1 + v8, &qword_100385898, &unk_1002DB9A0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v17 = v23;
  sub_1000AB050(a1 + v16, v23, &qword_100386250, &qword_1002D9580);
  swift_beginAccess();
  sub_10011EFEC(v17, v1 + v10, &qword_100386250, &qword_1002D9580);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v18, v17, &qword_100386250, &qword_1002D9580);

  v19 = v22;
  swift_beginAccess();
  sub_10011EFEC(v17, v1 + v19, &qword_100386250, &qword_1002D9580);
  swift_endAccess();
  return v1;
}

uint64_t sub_10012A1F4()
{

  sub_1000057C4(v0 + OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh, &qword_100385898, &unk_1002DB9A0);
  sub_1000057C4(v0 + OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__perApplicationTreeEntry, &qword_100386250, &qword_1002D9580);
  sub_1000057C4(v0 + OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__topLevelTreeEntry, &qword_100386250, &qword_1002D9580);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10012A2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for KTPBBatchQueryResponse._StorageClass(0);
    v9 = swift_allocObject();
    sub_100129E18(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          swift_beginAccess();
          sub_10010A4DC();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_8;
        }

        if (result == 3)
        {
          swift_beginAccess();
          type metadata accessor for KTPBBatchQueryInfo(0);
          sub_10012E6D8(&qword_1003871A0, type metadata accessor for KTPBBatchQueryInfo, &unk_1002DBF58);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_8;
        }
      }

      else
      {
        if (result == 4)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for KTPBSignedObject(0);
          v13 = type metadata accessor for KTPBSignedObject;
          v14 = &unk_1002DA448;
          v15 = &qword_1003861E8;
          goto LABEL_7;
        }

        if (result == 5 || result == 6)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for KTPBLogEntry(0);
          v13 = type metadata accessor for KTPBLogEntry;
          v14 = &unk_1002DA718;
          v15 = &qword_100386490;
LABEL_7:
          sub_10012E6D8(v15, v13, v14);
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
          swift_endAccess();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10012A588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = *(v3 + *(type metadata accessor for KTPBBatchQueryResponse(0) + 20));
  swift_beginAccess();
  sub_10010A488();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_10010A4DC();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(*(v9 + 32) + 16))
  {
    type metadata accessor for KTPBBatchQueryInfo(0);
    sub_10012E6D8(&qword_1003871A0, type metadata accessor for KTPBBatchQueryInfo, &unk_1002DBF58);

    v11 = v5;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }
  }

  else
  {
    v11 = v5;
  }

  result = sub_10012A79C(v9, a1, a2, a3);
  if (!v11)
  {
    sub_10012A9C4(v9, a1, a2, a3, &OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__perApplicationTreeEntry, 5);
    sub_10012A9C4(v9, a1, a2, a3, &OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__topLevelTreeEntry, 6);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10012A79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBSignedObject(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
  swift_beginAccess();
  sub_1000AB050(a1 + v12, v7, &qword_100385898, &unk_1002DB9A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100385898, &unk_1002DB9A0);
  }

  sub_100124864(v7, v11, type metadata accessor for KTPBSignedObject);
  sub_10012E6D8(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100124C34(v11, type metadata accessor for KTPBSignedObject);
}

uint64_t sub_10012A9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v17[1] = a6;
  v17[2] = a3;
  v17[7] = a4;
  v17[0] = a2;
  v8 = sub_100095820(&qword_100386250, &qword_1002D9580);
  __chkstk_darwin(v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for KTPBLogEntry(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  swift_beginAccess();
  sub_1000AB050(a1 + v15, v10, &qword_100386250, &qword_1002D9580);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000057C4(v10, &qword_100386250, &qword_1002D9580);
  }

  sub_100124864(v10, v14, type metadata accessor for KTPBLogEntry);
  sub_10012E6D8(&qword_100386490, type metadata accessor for KTPBLogEntry, &unk_1002DA718);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100124C34(v14, type metadata accessor for KTPBLogEntry);
}

BOOL sub_10012ABF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBLogEntry(0);
  v78 = *(v4 - 8);
  __chkstk_darwin(v4);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100095820(&qword_1003870E0, &unk_1002DC340);
  v6 = __chkstk_darwin(v77);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v68 - v9;
  v10 = sub_100095820(&qword_100386250, &qword_1002D9580);
  v11 = __chkstk_darwin(v10 - 8);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v73 = &v68 - v14;
  v15 = __chkstk_darwin(v13);
  v72 = &v68 - v16;
  __chkstk_darwin(v15);
  v80 = &v68 - v17;
  v18 = type metadata accessor for KTPBSignedObject(0);
  v79 = *(v18 - 8);
  __chkstk_darwin(v18);
  v74 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100095820(&qword_100386218, &qword_1002D9480);
  __chkstk_darwin(v20);
  v22 = &v68 - v21;
  v23 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
  v24 = __chkstk_darwin(v23 - 8);
  v76 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v68 - v26;
  swift_beginAccess();
  v28 = *(a1 + 24);
  v83 = *(a1 + 16);
  v84 = v28;
  swift_beginAccess();
  v29 = *(a2 + 24);
  v81 = *(a2 + 16);
  v82 = v29;
  sub_10010A488();

  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v69 = v4;
  swift_beginAccess();
  v30 = *(a1 + 32);
  swift_beginAccess();
  v31 = *(a2 + 32);

  v32 = sub_10012D254(v30, v31);

  if ((v32 & 1) == 0)
  {
    goto LABEL_17;
  }

  v68 = v8;
  v33 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
  swift_beginAccess();
  sub_1000AB050(a1 + v33, v27, &qword_100385898, &unk_1002DB9A0);
  v34 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__smh;
  swift_beginAccess();
  v35 = *(v20 + 48);
  sub_1000AB050(v27, v22, &qword_100385898, &unk_1002DB9A0);
  sub_1000AB050(a2 + v34, &v22[v35], &qword_100385898, &unk_1002DB9A0);
  v36 = *(v79 + 48);
  if (v36(v22, 1, v18) == 1)
  {
    sub_1000057C4(v27, &qword_100385898, &unk_1002DB9A0);
    v37 = v36(&v22[v35], 1, v18);
    v38 = v80;
    if (v37 == 1)
    {
      sub_1000057C4(v22, &qword_100385898, &unk_1002DB9A0);
      goto LABEL_10;
    }

LABEL_8:
    v41 = &qword_100386218;
    v42 = &qword_1002D9480;
    v43 = v22;
LABEL_16:
    sub_1000057C4(v43, v41, v42);
    goto LABEL_17;
  }

  v39 = v76;
  sub_1000AB050(v22, v76, &qword_100385898, &unk_1002DB9A0);
  v40 = v36(&v22[v35], 1, v18);
  v38 = v80;
  if (v40 == 1)
  {
    sub_1000057C4(v27, &qword_100385898, &unk_1002DB9A0);
    sub_100124C34(v39, type metadata accessor for KTPBSignedObject);
    goto LABEL_8;
  }

  v44 = &v22[v35];
  v45 = v74;
  sub_100124864(v44, v74, type metadata accessor for KTPBSignedObject);
  sub_10012E6D8(&qword_100386228, type metadata accessor for KTPBSignedObject, &unk_1002DA588);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100124C34(v45, type metadata accessor for KTPBSignedObject);
  sub_1000057C4(v27, &qword_100385898, &unk_1002DB9A0);
  sub_100124C34(v39, type metadata accessor for KTPBSignedObject);
  sub_1000057C4(v22, &qword_100385898, &unk_1002DB9A0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v47 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_1000AB050(a1 + v47, v38, &qword_100386250, &qword_1002D9580);
  v48 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v49 = *(v77 + 48);
  v50 = v75;
  sub_1000AB050(v38, v75, &qword_100386250, &qword_1002D9580);
  sub_1000AB050(a2 + v48, v50 + v49, &qword_100386250, &qword_1002D9580);
  v52 = v78 + 48;
  v51 = *(v78 + 48);
  v53 = v38;
  v54 = v69;
  if (v51(v50, 1, v69) != 1)
  {
    v55 = v72;
    sub_1000AB050(v50, v72, &qword_100386250, &qword_1002D9580);
    if (v51(v50 + v49, 1, v54) == 1)
    {
      sub_1000057C4(v80, &qword_100386250, &qword_1002D9580);
      sub_100124C34(v55, type metadata accessor for KTPBLogEntry);
      goto LABEL_15;
    }

    v78 = v52;
    v57 = v50 + v49;
    v58 = v71;
    sub_100124864(v57, v71, type metadata accessor for KTPBLogEntry);
    sub_10012E6D8(&qword_100386498, type metadata accessor for KTPBLogEntry, &unk_1002DA858);
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100124C34(v58, type metadata accessor for KTPBLogEntry);
    sub_1000057C4(v80, &qword_100386250, &qword_1002D9580);
    sub_100124C34(v55, type metadata accessor for KTPBLogEntry);
    sub_1000057C4(v50, &qword_100386250, &qword_1002D9580);
    if (v59)
    {
      goto LABEL_21;
    }

LABEL_17:

    return 0;
  }

  sub_1000057C4(v53, &qword_100386250, &qword_1002D9580);
  if (v51(v50 + v49, 1, v54) != 1)
  {
LABEL_15:
    v41 = &qword_1003870E0;
    v42 = &unk_1002DC340;
    v43 = v50;
    goto LABEL_16;
  }

  v78 = v52;
  sub_1000057C4(v50, &qword_100386250, &qword_1002D9580);
LABEL_21:
  v60 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v61 = v73;
  sub_1000AB050(a1 + v60, v73, &qword_100386250, &qword_1002D9580);
  v62 = OBJC_IVAR____TtCV13transparencyd22KTPBBatchQueryResponseP33_C214B8CE30161BF254A9FA5199AD997013_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v63 = *(v77 + 48);
  v64 = v68;
  sub_1000AB050(v61, v68, &qword_100386250, &qword_1002D9580);
  sub_1000AB050(a2 + v62, v64 + v63, &qword_100386250, &qword_1002D9580);
  if (v51(v64, 1, v54) == 1)
  {

    sub_1000057C4(v61, &qword_100386250, &qword_1002D9580);
    if (v51(v64 + v63, 1, v54) == 1)
    {
      sub_1000057C4(v64, &qword_100386250, &qword_1002D9580);
      return 1;
    }

    goto LABEL_26;
  }

  v65 = v70;
  sub_1000AB050(v64, v70, &qword_100386250, &qword_1002D9580);
  if (v51(v64 + v63, 1, v54) == 1)
  {

    sub_1000057C4(v73, &qword_100386250, &qword_1002D9580);
    sub_100124C34(v65, type metadata accessor for KTPBLogEntry);
LABEL_26:
    sub_1000057C4(v64, &qword_1003870E0, &unk_1002DC340);
    return 0;
  }

  v66 = v71;
  sub_100124864(v64 + v63, v71, type metadata accessor for KTPBLogEntry);
  sub_10012E6D8(&qword_100386498, type metadata accessor for KTPBLogEntry, &unk_1002DA858);
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();

  sub_100124C34(v66, type metadata accessor for KTPBLogEntry);
  sub_1000057C4(v73, &qword_100386250, &qword_1002D9580);
  sub_100124C34(v65, type metadata accessor for KTPBLogEntry);
  sub_1000057C4(v64, &qword_100386250, &qword_1002D9580);
  return (v67 & 1) != 0;
}

uint64_t sub_10012B8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (qword_100398C50 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_100398C58;
}

uint64_t sub_10012B948(uint64_t a1, uint64_t a2)
{
  v4 = sub_10012E6D8(&qword_100387678, type metadata accessor for KTPBBatchQueryResponse, &unk_1002DBE68);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012B9E8(uint64_t a1)
{
  v2 = sub_10012E6D8(&qword_100387188, type metadata accessor for KTPBBatchQueryResponse, &unk_1002DBDF0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10012BA54(uint64_t a1, uint64_t a2)
{
  sub_10012E6D8(&qword_100387188, type metadata accessor for KTPBBatchQueryResponse, &unk_1002DBDF0);

  return Message.hash(into:)();
}

uint64_t sub_10012BB00()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D498);
  sub_10009597C(v0, qword_10039D498);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "uriWitness";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mapEntry";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pendingSMTs";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012BD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for KTPBBatchQueryInfo(0);
          type metadata accessor for KTPBBatchedMapEntry(0);
          sub_10012E6D8(&qword_1003871B8, type metadata accessor for KTPBBatchedMapEntry, &unk_1002DC0C0);
          goto LABEL_15;
        }

        if (result == 4)
        {
          type metadata accessor for KTPBSignedObject(0);
          sub_10012E6D8(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_10010A4DC();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          type metadata accessor for KTPBBatchQueryInfo(0);
          type metadata accessor for KTPBVRFWitness(0);
          sub_10012E6D8(&qword_1003861E0, type metadata accessor for KTPBVRFWitness, &unk_1002D9FE8);
LABEL_15:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10012BFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010A488();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (sub_10010A4DC(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = sub_10012C140(v3, a1, a2, a3);
    if (!v4)
    {
      sub_10012C35C(v3, a1, a2, a3);
      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for KTPBSignedObject(0);
        sub_10012E6D8(&qword_1003861E8, type metadata accessor for KTPBSignedObject, &unk_1002DA448);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      type metadata accessor for KTPBBatchQueryInfo(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10012C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBVRFWitness(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Info = type metadata accessor for KTPBBatchQueryInfo(0);
  sub_1000AB050(a1 + *(Info + 28), v7, &qword_1003858A0, &qword_1002D81F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_1003858A0, &qword_1002D81F0);
  }

  sub_100124864(v7, v11, type metadata accessor for KTPBVRFWitness);
  sub_10012E6D8(&qword_1003861E0, type metadata accessor for KTPBVRFWitness, &unk_1002D9FE8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100124C34(v11, type metadata accessor for KTPBVRFWitness);
}

uint64_t sub_10012C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100095820(&qword_100387108, &qword_1002DB9B0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for KTPBBatchedMapEntry(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Info = type metadata accessor for KTPBBatchQueryInfo(0);
  sub_1000AB050(a1 + *(Info + 32), v7, &qword_100387108, &qword_1002DB9B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000057C4(v7, &qword_100387108, &qword_1002DB9B0);
  }

  sub_100124864(v7, v11, type metadata accessor for KTPBBatchedMapEntry);
  sub_10012E6D8(&qword_1003871B8, type metadata accessor for KTPBBatchedMapEntry, &unk_1002DC0C0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100124C34(v11, type metadata accessor for KTPBBatchedMapEntry);
}

uint64_t sub_10012C5F0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 1;
  *(a4 + 16) = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v8 = *(a1 + 28);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 32);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t sub_10012C71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10012E6D8(&qword_100387670, type metadata accessor for KTPBBatchQueryInfo, &unk_1002DBFD0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012C7BC(uint64_t a1)
{
  v2 = sub_10012E6D8(&qword_1003871A0, type metadata accessor for KTPBBatchQueryInfo, &unk_1002DBF58);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10012C828(uint64_t a1, uint64_t a2)
{
  sub_10012E6D8(&qword_1003871A0, type metadata accessor for KTPBBatchQueryInfo, &unk_1002DBF58);

  return Message.hash(into:)();
}

uint64_t sub_10012C8D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D4B0);
  sub_10009597C(v0, qword_10039D4B0);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hashesOfPeersInPathToRoot";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mapLeaf";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012CB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        break;
      case 1:
LABEL_8:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }
}

uint64_t sub_10012CBCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    goto LABEL_8;
  }

  if (v7)
  {
    v8 = v5;
    v9 = v5 >> 32;
LABEL_8:
    if (v8 == v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v6 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
  {
    v11 = v3[3];
    v12 = v3[4];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_21;
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
          goto LABEL_21;
        }

LABEL_20:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_20;
    }

LABEL_21:
    type metadata accessor for KTPBBatchedMapEntry(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

Swift::Int sub_10012CD50(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_10012E6D8(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10012CDD8@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = xmmword_1002D4770;
  return UnknownStorage.init()();
}

uint64_t sub_10012CE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10012E6D8(&qword_100387668, type metadata accessor for KTPBBatchedMapEntry, &unk_1002DC138);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012CEE4(uint64_t a1)
{
  v2 = sub_10012E6D8(&qword_1003871B8, type metadata accessor for KTPBBatchedMapEntry, &unk_1002DC0C0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10012CF50(uint64_t a1, uint64_t a2)
{
  sub_10012E6D8(&qword_1003871B8, type metadata accessor for KTPBBatchedMapEntry, &unk_1002DC0C0);

  return Message.hash(into:)();
}

uint64_t sub_10012CFCC(uint64_t a1, uint64_t a2)
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
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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

uint64_t sub_10012D05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBSignedObject(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_100124BCC(v13, v10, type metadata accessor for KTPBSignedObject);
        sub_100124BCC(v14, v7, type metadata accessor for KTPBSignedObject);
        sub_10012E6D8(&qword_100386228, type metadata accessor for KTPBSignedObject, &unk_1002DA588);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100124C34(v7, type metadata accessor for KTPBSignedObject);
        sub_100124C34(v10, type metadata accessor for KTPBSignedObject);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10012D254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTPBBatchQueryInfo(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_100124BCC(v13, v10, type metadata accessor for KTPBBatchQueryInfo);
        sub_100124BCC(v14, v7, type metadata accessor for KTPBBatchQueryInfo);
        v16 = sub_10012D6EC(v10, v7);
        sub_100124C34(v7, type metadata accessor for KTPBBatchQueryInfo);
        sub_100124C34(v10, type metadata accessor for KTPBBatchQueryInfo);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10012D3FC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for KTPBBatchQueryResponse(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_10012ABF4(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_10012E6D8(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10012D4E4(uint64_t *a1, uint64_t *a2)
{
  sub_10010A29C();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (sub_10010A3E0(), (dispatch thunk of static Equatable.== infix(_:_:)()) && (sub_10012CFCC(a1[4], a2[4]))
  {
    type metadata accessor for KTPBBatchQueryRequest(0);
    type metadata accessor for UnknownStorage();
    sub_10012E6D8(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10012D61C(uint64_t a1, uint64_t a2)
{
  if (!sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || (sub_10011E898(*(a1 + 16), *(a2 + 16)) & 1) == 0 || !sub_100095AC0(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    return 0;
  }

  type metadata accessor for KTPBBatchedMapEntry(0);
  type metadata accessor for UnknownStorage();
  sub_10012E6D8(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10012D6EC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for KTPBBatchedMapEntry(0);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095820(&qword_100387108, &qword_1002DB9B0);
  __chkstk_darwin(v6 - 8);
  v46 = &v42 - v7;
  v47 = sub_100095820(&qword_100387698, &unk_1002DC330);
  __chkstk_darwin(v47);
  v9 = &v42 - v8;
  v10 = type metadata accessor for KTPBVRFWitness(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_100095820(&qword_100386210, &qword_1002D9478);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v20 = *(a1 + 8);
  v52 = *a1;
  v53 = v20;
  v21 = *(a2 + 8);
  v50 = *a2;
  v51 = v21;
  sub_10010A488();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v43 = v9;
  Info = type metadata accessor for KTPBBatchQueryInfo(0);
  v23 = a1;
  v24 = a2;
  v42 = Info;
  v25 = *(Info + 28);
  v26 = *(v17 + 48);
  v44 = v23;
  sub_1000AB050(v23 + v25, v19, &qword_1003858A0, &qword_1002D81F0);
  sub_1000AB050(v24 + v25, &v19[v26], &qword_1003858A0, &qword_1002D81F0);
  v27 = *(v11 + 48);
  if (v27(v19, 1, v10) == 1)
  {
    if (v27(&v19[v26], 1, v10) == 1)
    {
      sub_1000057C4(v19, &qword_1003858A0, &qword_1002D81F0);
      goto LABEL_9;
    }

LABEL_7:
    v28 = &qword_100386210;
    v29 = &qword_1002D9478;
    v30 = v19;
LABEL_24:
    sub_1000057C4(v30, v28, v29);
    goto LABEL_25;
  }

  sub_1000AB050(v19, v16, &qword_1003858A0, &qword_1002D81F0);
  if (v27(&v19[v26], 1, v10) == 1)
  {
    sub_100124C34(v16, type metadata accessor for KTPBVRFWitness);
    goto LABEL_7;
  }

  sub_100124864(&v19[v26], v13, type metadata accessor for KTPBVRFWitness);
  sub_10012E6D8(&qword_100386220, type metadata accessor for KTPBVRFWitness, &unk_1002DA128);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100124C34(v13, type metadata accessor for KTPBVRFWitness);
  sub_100124C34(v16, type metadata accessor for KTPBVRFWitness);
  sub_1000057C4(v19, &qword_1003858A0, &qword_1002D81F0);
  if ((v31 & 1) == 0)
  {
LABEL_25:
    v37 = 0;
    return v37 & 1;
  }

LABEL_9:
  v32 = v43;
  v33 = *(v42 + 32);
  v34 = *(v47 + 48);
  sub_1000AB050(v44 + v33, v43, &qword_100387108, &qword_1002DB9B0);
  sub_1000AB050(v24 + v33, v32 + v34, &qword_100387108, &qword_1002DB9B0);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v32, 1, v49) == 1)
  {
    if (v36(v32 + v34, 1, v35) == 1)
    {
      sub_1000057C4(v32, &qword_100387108, &qword_1002DB9B0);
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v38 = v46;
  sub_1000AB050(v32, v46, &qword_100387108, &qword_1002DB9B0);
  if (v36(v32 + v34, 1, v35) == 1)
  {
    sub_100124C34(v38, type metadata accessor for KTPBBatchedMapEntry);
LABEL_16:
    v28 = &qword_100387698;
    v29 = &unk_1002DC330;
LABEL_23:
    v30 = v32;
    goto LABEL_24;
  }

  v39 = v45;
  sub_100124864(v32 + v34, v45, type metadata accessor for KTPBBatchedMapEntry);
  if (!sub_100095AC0(*v38, *(v38 + 8), *v39, *(v39 + 8)) || (sub_10011E898(*(v38 + 16), *(v39 + 16)) & 1) == 0 || !sub_100095AC0(*(v38 + 24), *(v38 + 32), *(v39 + 24), *(v39 + 32)))
  {
    sub_100124C34(v39, type metadata accessor for KTPBBatchedMapEntry);
    sub_100124C34(v38, type metadata accessor for KTPBBatchedMapEntry);
    v28 = &qword_100387108;
    v29 = &qword_1002DB9B0;
    goto LABEL_23;
  }

  type metadata accessor for UnknownStorage();
  sub_10012E6D8(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100124C34(v39, type metadata accessor for KTPBBatchedMapEntry);
  sub_100124C34(v38, type metadata accessor for KTPBBatchedMapEntry);
  sub_1000057C4(v32, &qword_100387108, &qword_1002DB9B0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((sub_10012D05C(v44[2], v24[2]) & 1) == 0)
  {
    goto LABEL_25;
  }

  type metadata accessor for UnknownStorage();
  sub_10012E6D8(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v37 & 1;
}

uint64_t sub_10012DE68(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for KTPBVRFWitness(0);
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095820(&qword_1003858A0, &qword_1002D81F0);
  __chkstk_darwin(v6 - 8);
  v46 = &v42 - v7;
  v47 = sub_100095820(&qword_100386210, &qword_1002D9478);
  __chkstk_darwin(v47);
  v49 = &v42 - v8;
  v9 = type metadata accessor for KTPBInclusionProof(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100095820(&qword_100387100, &unk_1002DB990);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_100095820(&qword_1003876A0, qword_1002DC350);
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v19 = *(a1 + 8);
  v52 = *a1;
  v53 = v19;
  v20 = *(a2 + 8);
  v50 = *a2;
  v51 = v20;
  sub_10010A488();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_19;
  }

  v43 = v4;
  v21 = a2;
  v42 = type metadata accessor for KTPBQueryResponse(0);
  v22 = *(v42 + 28);
  v23 = a1;
  v24 = *(v16 + 48);
  v44 = v23;
  sub_1000AB050(v23 + v22, v18, &qword_100387100, &unk_1002DB990);
  sub_1000AB050(v21 + v22, &v18[v24], &qword_100387100, &unk_1002DB990);
  v25 = *(v10 + 48);
  if (v25(v18, 1, v9) == 1)
  {
    if (v25(&v18[v24], 1, v9) == 1)
    {
      sub_1000057C4(v18, &qword_100387100, &unk_1002DB990);
      goto LABEL_10;
    }

LABEL_7:
    v26 = &qword_1003876A0;
    v27 = qword_1002DC350;
    v28 = v18;
LABEL_8:
    sub_1000057C4(v28, v26, v27);
    goto LABEL_19;
  }

  sub_1000AB050(v18, v15, &qword_100387100, &unk_1002DB990);
  if (v25(&v18[v24], 1, v9) == 1)
  {
    sub_100124C34(v15, type metadata accessor for KTPBInclusionProof);
    goto LABEL_7;
  }

  sub_100124864(&v18[v24], v12, type metadata accessor for KTPBInclusionProof);
  sub_10012E6D8(&qword_1003864E0, type metadata accessor for KTPBInclusionProof, &unk_1002DAC90);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100124C34(v12, type metadata accessor for KTPBInclusionProof);
  sub_100124C34(v15, type metadata accessor for KTPBInclusionProof);
  sub_1000057C4(v18, &qword_100387100, &unk_1002DB990);
  if ((v29 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v30 = v44;
  if ((sub_10012D05C(v44[2], v21[2]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v31 = *(v42 + 32);
  v32 = *(v47 + 48);
  v33 = v49;
  sub_1000AB050(v30 + v31, v49, &qword_1003858A0, &qword_1002D81F0);
  sub_1000AB050(v21 + v31, v33 + v32, &qword_1003858A0, &qword_1002D81F0);
  v34 = *(v48 + 48);
  v35 = v43;
  if (v34(v33, 1, v43) != 1)
  {
    v36 = v46;
    sub_1000AB050(v33, v46, &qword_1003858A0, &qword_1002D81F0);
    if (v34(v33 + v32, 1, v35) != 1)
    {
      v37 = v33 + v32;
      v38 = v45;
      sub_100124864(v37, v45, type metadata accessor for KTPBVRFWitness);
      sub_10012E6D8(&qword_100386220, type metadata accessor for KTPBVRFWitness, &unk_1002DA128);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100124C34(v38, type metadata accessor for KTPBVRFWitness);
      sub_100124C34(v36, type metadata accessor for KTPBVRFWitness);
      sub_1000057C4(v33, &qword_1003858A0, &qword_1002D81F0);
      if (v39)
      {
        goto LABEL_18;
      }

LABEL_19:
      v40 = 0;
      return v40 & 1;
    }

    sub_100124C34(v36, type metadata accessor for KTPBVRFWitness);
    goto LABEL_16;
  }

  if (v34(v33 + v32, 1, v35) != 1)
  {
LABEL_16:
    v26 = &qword_100386210;
    v27 = &qword_1002D9478;
    v28 = v33;
    goto LABEL_8;
  }

  sub_1000057C4(v33, &qword_1003858A0, &qword_1002D81F0);
LABEL_18:
  type metadata accessor for UnknownStorage();
  sub_10012E6D8(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v40 & 1;
}

uint64_t sub_10012E57C(uint64_t *a1, uint64_t *a2)
{
  sub_10010A29C();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (sub_10010A3E0(), (dispatch thunk of static Equatable.== infix(_:_:)()) && sub_100095AC0(a1[4], a1[5], a2[4], a2[5]) && (a1[6] == a2[6] && a1[7] == a2[7] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    type metadata accessor for KTPBQueryRequest(0);
    type metadata accessor for UnknownStorage();
    sub_10012E6D8(&qword_1003825C8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10012E6D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012EE08(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10012EF04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10012EF90(uint64_t a1)
{
  sub_10012F6A8(319, &qword_100387350, &type metadata for String);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10012F064(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for KTPBBatchQueryResponse._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012F0FC(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }

  v16 = type metadata accessor for UnknownStorage();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v17 = v16;
    v18 = *(v16 - 8);
    v19 = a3[6];
LABEL_9:
    v21 = *(v18 + 48);

    return v21(a1 + v19, a2, v17);
  }

  v20 = sub_100095820(a4, a5);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v17 = v20;
    v18 = *(v20 - 8);
    v19 = a3[7];
    goto LABEL_9;
  }

  v22 = sub_100095820(a6, a7);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + a3[8];

  return v23(v24, a2, v22);
}

uint64_t sub_10012F2B4(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for UnknownStorage();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v17 = v16;
    v18 = *(v16 - 8);
    v19 = a4[6];
LABEL_7:
    v21 = *(v18 + 56);

    return v21(v9 + v19, a2, a2, v17);
  }

  v20 = sub_100095820(a5, a6);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v17 = v20;
    v18 = *(v20 - 8);
    v19 = a4[7];
    goto LABEL_7;
  }

  v22 = sub_100095820(a7, a8);
  v23 = *(*(v22 - 8) + 56);
  v24 = v9 + a4[8];

  return v23(v24, a2, a2, v22);
}

void sub_10012F494(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_10012EF04(319, &qword_1003872B0, type metadata accessor for KTPBSignedObject, &type metadata accessor for Array);
  if (v11 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v12 <= 0x3F)
    {
      sub_10012EF04(319, a4, a5, &type metadata accessor for Optional);
      if (v13 <= 0x3F)
      {
        sub_10012EF04(319, a6, a7, &type metadata accessor for Optional);
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10012F608(uint64_t a1)
{
  sub_10012F6A8(319, &qword_1003868B0, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10012F6A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10012F6FC(uint64_t a1)
{
  sub_10012EF04(319, &qword_100385E50, type metadata accessor for KTPBSignedObject, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10012EF04(319, &unk_100386E78, type metadata accessor for KTPBLogEntry, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10012F84C()
{
  v1 = OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_lastIDSRec;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10012F890(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_lastIDSRec;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10012F940()
{
  v1 = OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_overrideReportStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10012F984(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_overrideReportStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10012FA34()
{
  v1 = v0 + OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_overrideTimeBetweenReports;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_10012FA80(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_overrideTimeBetweenReports;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id sub_10012FB40(uint64_t a1)
{
  v1[OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_lastIDSRec] = 2;
  v1[OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_overrideReportStatus] = 2;
  v2 = &v1[OBJC_IVAR____TtC13transparencyd20EligibilityOverrides_overrideTimeBetweenReports];
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for EligibilityOverrides();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_10012FC40()
{
  (*((swift_isaMask & *v0) + 0x70))(2);
  (*((swift_isaMask & *v0) + 0x88))(2);
  v1 = *((swift_isaMask & *v0) + 0xA0);

  return v1(0, 1);
}

uint64_t sub_10012FF7C(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x68))();
  v4 = 2;
  if (v3)
  {
    v4 = 0;
  }

  if (v3 == 2)
  {
    return a1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10012FFE8(char a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x80))();
  if (v3 == 2)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  return v4 & 1;
}

id sub_1001300AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EligibilityOverrides();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100130188(unint64_t a1)
{
  if (a1 < 3)
  {
    return *&aSuccess_3[8 * a1];
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_1001301F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString);

  return v1;
}

uint64_t sub_100130234()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element);

  return v1;
}

uint64_t sub_100130444()
{
  _StringGuts.grow(_:)(38);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_getObjectType();
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6E656D656C65203ALL;
  v3._object = 0xEB00000000203A74;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element));
  v4._countAndFlagsBits = 0x3A746C7573657220;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 0x203A726F72726520;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);

  sub_100095820(&qword_100387710, &qword_1002D6E30);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

id sub_1001305D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = a1;
  v14 = &v13[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v14 = a4;
  *(v14 + 1) = a5;
  v15 = &v13[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v15 = a2;
  *(v15 + 1) = a3;
  sub_1000AB050(a6, &v13[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v18.receiver = v13;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_1000057C4(a6, &qword_100383FB0, &unk_1002D6690);
  return v16;
}

id sub_1001306B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = a1;
  v14 = &v6[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v14 = a4;
  *(v14 + 1) = a5;
  v15 = &v6[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v15 = a2;
  *(v15 + 1) = a3;
  sub_1000AB050(a6, &v6[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v18.receiver = v6;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_1000057C4(a6, &qword_100383FB0, &unk_1002D6690);
  return v16;
}

id sub_100130798(uint64_t a1, uint64_t a2)
{
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = objc_allocWithZone(v2);
  *&v9[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 0;
  v10 = &v9[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v11 = a1;
  *(v11 + 1) = a2;
  sub_1000AB050(v7, &v9[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v14.receiver = v9;
  v14.super_class = v2;

  v12 = objc_msgSendSuper2(&v14, "init");
  sub_1000057C4(v7, &qword_100383FB0, &unk_1002D6690);
  return v12;
}

id sub_100130A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  sub_1000AB050(a3, &v15 - v8, &qword_100383FB0, &unk_1002D6690);
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 0;
  v11 = &v10[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v10[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v12 = a1;
  *(v12 + 1) = a2;
  sub_1000AB050(v9, &v10[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v15.receiver = v10;
  v15.super_class = v3;

  v13 = objc_msgSendSuper2(&v15, "init");
  sub_1000057C4(v9, &qword_100383FB0, &unk_1002D6690);
  return v13;
}

uint64_t sub_100130E04(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = a1;
    v5 = _convertErrorToNSError(_:)();
    v6 = [v3 analyticsErrorData:v5];

    if (v6)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v17 = 0;
      v9 = [v7 dataWithJSONObject:isa options:0 error:&v17];

      v10 = v17;
      if (v9)
      {
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        static String.Encoding.utf8.getter();
        v14 = String.init(data:encoding:)();

        sub_1000956CC(v11, v13);
        return v14;
      }

      v16 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
    }
  }

  return 0;
}

id sub_100131270()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100131310(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 7562585;
    case 2:
      return 28494;
    case 1:
      return 0x6E776F6E6B6E55;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10013138C(uint64_t a1)
{
  if (!a1)
  {
    return 7562585;
  }

  if (a1 == 2)
  {
    return 28494;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_1001313E8(uint64_t result)
{
  if ((result | 2) != 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_100131400@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result | 2) == 2)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100131424(uint64_t a1, uint64_t a2)
{
  if (a1 == 49 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 48 && a2 == 0xE100000000000000)
  {
    return 2;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 2;
  }

  return 1;
}

uint64_t sub_100131614@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
  swift_beginAccess();
  return sub_1000AB050(v1 + v3, a1, &qword_100383FB0, &unk_1002D6690);
}

uint64_t sub_1001317BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
  swift_beginAccess();
  sub_1000BECD4(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1001318C4()
{
  v1 = OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10013195C(double a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100131A0C(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  swift_beginAccess();
  sub_1000E3408(a1, &v5[v6]);
  swift_endAccess();
  *&v5[OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports] = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_1000057C4(a1, &qword_100383FB0, &unk_1002D6690);
  return v8;
}

id sub_100131B04(uint64_t a1, double a2)
{
  v5 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  swift_beginAccess();
  sub_1000E3408(a1, &v2[v5]);
  swift_endAccess();
  *&v2[OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ReportTime(0);
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_1000057C4(a1, &qword_100383FB0, &unk_1002D6690);
  return v7;
}

uint64_t sub_100131CA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd11CheckupData_element);

  return v1;
}

id sub_100131DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC13transparencyd11CheckupData_element];
  *v12 = a1;
  v12[1] = a2;
  *&v11[OBJC_IVAR____TtC13transparencyd11CheckupData_errorHistogram] = a3;
  *&v11[OBJC_IVAR____TtC13transparencyd11CheckupData_resultsArray] = a4;
  v11[OBJC_IVAR____TtC13transparencyd11CheckupData_aggregateResult] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_100131E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = &v5[OBJC_IVAR____TtC13transparencyd11CheckupData_element];
  *v6 = a1;
  v6[1] = a2;
  *&v5[OBJC_IVAR____TtC13transparencyd11CheckupData_errorHistogram] = a3;
  *&v5[OBJC_IVAR____TtC13transparencyd11CheckupData_resultsArray] = a4;
  v5[OBJC_IVAR____TtC13transparencyd11CheckupData_aggregateResult] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for CheckupData();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_100131F64(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100132034@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001321BC()
{
  v1 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_timeBetweenReportsDays;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100132200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_timeBetweenReportsDays;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001322B0()
{
  v1 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_samplesPerDay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001322F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_samplesPerDay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001323A4()
{
  v1 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_numberOfSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001323E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_numberOfSamples;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_100132498()
{
  v1 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_presentRate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001324DC(double a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_presentRate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_10013258C()
{
  v1 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_peerPresentRate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001325D0(double a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_peerPresentRate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001326E8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

unint64_t sub_100132810(unint64_t result, unint64_t a2)
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
        result = _StringObject.sharedUTF8.getter();
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

  v6 = sub_100142304(result, a2, 10);
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

uint64_t sub_100132B10(unint64_t a1)
{
  if (a1 < 3)
  {
    return *&aSuccess_3[8 * a1];
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unsigned __int8 *sub_100132B68()
{
  v2 = v0;
  v3 = *((swift_isaMask & *v0) + 0x140);
  v4 = [v3() eligibilityReportInterval];
  swift_unknownObjectRelease();
  v5 = [v4 integerValue];

  if (v5 >= 999)
  {
    v18 = (*((swift_isaMask & *v0) + 0xD0))(v5);
    goto LABEL_74;
  }

  (*((swift_isaMask & *v0) + 0xB0))();
  v6 = sub_1000BA1B4(0x6E4974726F706572, 0xEE006C6176726574);
  v8 = v7;

  if (v1)
  {
    return result;
  }

  if (v8)
  {
    v10 = HIBYTE(v8) & 0xF;
    v11 = v6 & 0xFFFFFFFFFFFFLL;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v12 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {

      goto LABEL_72;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      v14 = sub_100142304(v6, v8, 10);
      v34 = v90;
LABEL_71:

      if ((v34 & 1) == 0)
      {
LABEL_73:
        v18 = (*((swift_isaMask & *v2) + 0xD0))(v14);
        goto LABEL_74;
      }

LABEL_72:
      v14 = 30;
      goto LABEL_73;
    }

    if ((v8 & 0x2000000000000000) != 0)
    {
      v92[0] = v6;
      v92[1] = v8 & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v10)
        {
          if (--v10)
          {
            v14 = 0;
            v26 = v92 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                break;
              }

              v14 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v10)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_112:
        __break(1u);
        return result;
      }

      if (v6 != 45)
      {
        if (v10)
        {
          v14 = 0;
          v31 = v92;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v10)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v10)
      {
        if (--v10)
        {
          v14 = 0;
          v20 = v92 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v10)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v13 = *result;
      if (v13 == 43)
      {
        if (v11 >= 1)
        {
          v10 = v11 - 1;
          if (v11 != 1)
          {
            v14 = 0;
            if (result)
            {
              v23 = result + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_69;
                }

                v25 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  goto LABEL_69;
                }

                v14 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_69;
                }

                ++v23;
                if (!--v10)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_111;
      }

      if (v13 != 45)
      {
        if (v11)
        {
          v14 = 0;
          if (result)
          {
            while (1)
            {
              v29 = *result - 48;
              if (v29 > 9)
              {
                goto LABEL_69;
              }

              v30 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_69;
              }

              v14 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v11)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v14 = 0;
        LOBYTE(v10) = 1;
        goto LABEL_70;
      }

      if (v11 >= 1)
      {
        v10 = v11 - 1;
        if (v11 != 1)
        {
          v14 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_69;
              }

              v17 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_69;
              }

              v14 = v17 - v16;
              if (__OFSUB__(v17, v16))
              {
                goto LABEL_69;
              }

              ++v15;
              if (!--v10)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v10) = 0;
LABEL_70:
          v93 = v10;
          v34 = v10;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v5 >= 0)
  {
    v19 = v5;
  }

  else
  {
    v19 = 30;
  }

  v18 = (*((swift_isaMask & *v2) + 0xD0))(v19);
LABEL_74:
  v35 = *((swift_isaMask & *v2) + 0xB0);
  v35(v18);
  v36 = sub_1000BA1B4(0x6E49656C706D6173, 0xEE006C6176726574);
  v38 = v37;

  if (!v1)
  {
    v91 = v3;
    if (v38)
    {
      v39 = sub_100132810(v36, v38);
      if (v40)
      {
        v39 = 1;
      }

      v41 = &selRef_generateDone;
    }

    else
    {
      v42 = [(v3)(result) eligibilitySampleInterval];
      swift_unknownObjectRelease();
      v43 = v3;
      v41 = &selRef_generateDone;
      v44 = [v42 integerValue];

      if ((v44 & 0x8000000000000000) != 0)
      {
        v39 = 1;
      }

      else
      {
        v45 = [v43() eligibilitySampleInterval];
        swift_unknownObjectRelease();
        v46 = [v45 integerValue];

        v39 = v46;
      }
    }

    v47 = (*((swift_isaMask & *v2) + 0xE8))(v39);
    v35(v47);
    v48 = sub_1000BA1B4(0x754E656C706D6173, 0xEC0000007265626DLL);
    v50 = v49;

    if (v50)
    {
      v52 = sub_100132810(v48, v50);
      if (v53)
      {
        v52 = 60;
      }
    }

    else
    {
      v54 = [(v91)(v51) eligibilitySampleNumber];
      swift_unknownObjectRelease();
      v55 = [v54 v41[434]];

      if ((v55 & 0x8000000000000000) != 0)
      {
        v52 = 60;
      }

      else
      {
        v56 = [v91() eligibilitySampleNumber];
        swift_unknownObjectRelease();
        v57 = [v56 v41[434]];

        v52 = v57;
      }
    }

    v58 = (*((swift_isaMask & *v2) + 0x100))(v52);
    v35(v58);
    v59 = sub_1000BA1B4(0x52746E6573657270, 0xEB00000000657461);
    v61 = v60;
    v62 = v59;

    if (v61)
    {
      v92[0] = 0;
      v64 = sub_1001431C0(v62, v61, v92);

      v66.n128_u64[0] = v92[0];
      if (!v64)
      {
        v66.n128_f64[0] = 100.0;
      }

      v67 = v91;
    }

    else
    {
      v67 = v91;
      v68 = [(v91)(v63) eligibilityPresentRate];
      swift_unknownObjectRelease();
      [v68 doubleValue];
      v70 = v69;

      if (v70 >= 0.0)
      {
        v71 = [v91() eligibilityPresentRate];
        swift_unknownObjectRelease();
        [v71 doubleValue];
        v73 = v72;

        v66.n128_u64[0] = v73;
      }

      else
      {
        v66.n128_u64[0] = 0x4059000000000000;
      }
    }

    v74 = (*((swift_isaMask & *v2) + 0x118))(v65, v66);
    v35(v74);
    v75 = sub_1000BA1B4(0x7365725072656570, 0xEF65746152746E65);
    v77 = v76;
    v78 = v75;

    if (v77)
    {
      v92[0] = 0;
      v80 = sub_1001431C0(v78, v77, v92);

      v82.n128_u64[0] = v92[0];
      if (!v80)
      {
        v82.n128_f64[0] = 50.0;
      }

      return (*((swift_isaMask & *v2) + 0x130))(v81, v82);
    }

    else
    {
      v83 = [(v67)(v79) eligibilityPeerPresentRate];
      swift_unknownObjectRelease();
      [v83 doubleValue];
      v85 = v84;

      if (v85 >= 0.0)
      {
        v87 = [v67() eligibilityPeerPresentRate];
        swift_unknownObjectRelease();
        [v87 doubleValue];
        v89 = v88;

        v86.n128_u64[0] = v89;
      }

      else
      {
        v86.n128_u64[0] = 0x4049000000000000;
      }

      return (*((swift_isaMask & *v2) + 0x130))(v86);
    }
  }

  return result;
}

uint64_t sub_10013364C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_10013370C, v1, 0);
}

uint64_t sub_10013370C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *((swift_isaMask & *v2) + 0xB0);
  v4 = ((swift_isaMask & *v2) + 176) & 0xFFFFFFFFFFFFLL | 0xBB03000000000000;
  v0[7] = v3;
  v0[8] = v4;
  v0[9] = v3();
  if (v1)
  {
    v5 = 48;
  }

  else
  {
    v5 = 49;
  }

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_10013381C;

  return sub_1000BA2B0(0xD000000000000012, 0x800000010029CD80, v5, 0xE100000000000000);
}

uint64_t sub_10013381C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100133BCC;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100133950;
    v3 = v5;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_100133950()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  *(v0 + 96) = (*(v0 + 56))();
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v2 + 8))(v1, v3);
  v4 = Double.description.getter();
  v6 = v5;
  *(v0 + 104) = v5;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_100133A78;

  return sub_1000BA2B0(0x6F7065527473616CLL, 0xEE00656D69547472, v4, v6);
}

uint64_t sub_100133A78()
{
  v2 = *v1;
  v2[15] = v0;

  if (!v0)
  {

    v4 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[3];

  return (_swift_task_switch)(sub_100133C44, v3, 0);
}

uint64_t sub_100133BCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100133C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100133CB8(uint64_t a1)
{
  *(v2 + 528) = v1;
  *(v2 + 520) = a1;
  return (_swift_task_switch)(sub_100133CDC, v1, 0);
}

uint64_t sub_100133CDC()
{
  v1 = *(v0 + 520);
  strcpy((v0 + 376), "present-rate");
  *(v0 + 389) = 0;
  *(v0 + 390) = -5120;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = sub_10009FA7C(v0 + 16), (v3 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v2, v0 + 216);
    sub_1000A0C08(v0 + 16);
    if (swift_dynamicCast())
    {
      *(v0 + 536) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      v4 = Double.description.getter();
      v6 = v5;
      *(v0 + 544) = v5;
      v7 = swift_task_alloc();
      *(v0 + 552) = v7;
      *v7 = v0;
      v7[1] = sub_1001344EC;
      v8 = 0x52746E6573657270;
      v9 = 0xEB00000000657461;
LABEL_10:
      v15 = v8;
      v16 = v4;
      v17 = v6;
LABEL_28:

      return sub_1000BA2B0(v15, v9, v16, v17);
    }
  }

  else
  {
    sub_1000A0C08(v0 + 16);
  }

  v10 = *(v0 + 520);
  *(v0 + 392) = 0xD00000000000002DLL;
  *(v0 + 400) = 0x800000010029CE60;
  AnyHashable.init<A>(_:)();
  if (*(v10 + 16) && (v11 = sub_10009FA7C(v0 + 56), (v12 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v11, v0 + 248);
    sub_1000A0C08(v0 + 56);
    if (swift_dynamicCast())
    {
      *(v0 + 568) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      v4 = Double.description.getter();
      v6 = v13;
      *(v0 + 576) = v13;
      v14 = swift_task_alloc();
      *(v0 + 584) = v14;
      *v14 = v0;
      v14[1] = sub_100134CD0;
      v8 = 0x7365725072656570;
      v9 = 0xEF65746152746E65;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1000A0C08(v0 + 56);
  }

  v18 = *(v0 + 520);
  *(v0 + 408) = 0x692D74726F706572;
  *(v0 + 416) = 0xEF6C61767265746ELL;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v19 = sub_10009FA7C(v0 + 96), (v20 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v19, v0 + 280);
    sub_1000A0C08(v0 + 96);
    if (swift_dynamicCast())
    {
      v21 = *(v0 + 488);
      *(v0 + 600) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 496) = v21;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      *(v0 + 608) = v23;
      v25 = swift_task_alloc();
      *(v0 + 616) = v25;
      *v25 = v0;
      v25[1] = sub_100135338;
      v26 = 0x74726F706572;
LABEL_21:
      v33 = v26 & 0xFFFFFFFFFFFFLL | 0x6E49000000000000;
      v9 = 0xEE006C6176726574;
LABEL_27:
      v15 = v33;
      v16 = v22;
      v17 = v24;
      goto LABEL_28;
    }
  }

  else
  {
    sub_1000A0C08(v0 + 96);
  }

  v27 = *(v0 + 520);
  *(v0 + 424) = 0x692D656C706D6173;
  *(v0 + 432) = 0xEF6C61767265746ELL;
  AnyHashable.init<A>(_:)();
  if (*(v27 + 16) && (v28 = sub_10009FA7C(v0 + 136), (v29 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v28, v0 + 312);
    sub_1000A0C08(v0 + 136);
    if (swift_dynamicCast())
    {
      v30 = *(v0 + 472);
      *(v0 + 632) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 480) = v30;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v31;
      *(v0 + 640) = v31;
      v32 = swift_task_alloc();
      *(v0 + 648) = v32;
      *v32 = v0;
      v32[1] = sub_100135848;
      v26 = 0x656C706D6173;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1000A0C08(v0 + 136);
  }

  v34 = *(v0 + 520);
  strcpy((v0 + 440), "sample-number");
  *(v0 + 454) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v34 + 16) && (v35 = sub_10009FA7C(v0 + 176), (v36 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v35, v0 + 344);
    sub_1000A0C08(v0 + 176);
    v37 = swift_dynamicCast();
    if (v37)
    {
      v38 = *(v0 + 456);
      *(v0 + 664) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 464) = v38;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v39;
      *(v0 + 672) = v39;
      v40 = swift_task_alloc();
      *(v0 + 680) = v40;
      *v40 = v0;
      v40[1] = sub_100135BDC;
      v33 = 0x754E656C706D6173;
      v9 = 0xEC0000007265626DLL;
      goto LABEL_27;
    }
  }

  else
  {
    v37 = sub_1000A0C08(v0 + 176);
  }

  (*((swift_isaMask & **(v0 + 528)) + 0x160))(v37);
  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1001344EC()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    v4 = sub_100135DC4;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_100134620;
    v3 = v5;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_100134620()
{
  v1 = *(v0 + 520);
  *(v0 + 392) = 0xD00000000000002DLL;
  *(v0 + 400) = 0x800000010029CE60;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = sub_10009FA7C(v0 + 56), (v3 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v2, v0 + 248);
    sub_1000A0C08(v0 + 56);
    if (swift_dynamicCast())
    {
      *(v0 + 568) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      v4 = Double.description.getter();
      v6 = v5;
      *(v0 + 576) = v5;
      v7 = swift_task_alloc();
      *(v0 + 584) = v7;
      *v7 = v0;
      v7[1] = sub_100134CD0;
      v8 = 0xEF65746152746E65;
      v9 = 0x7365725072656570;
      v10 = v4;
      v11 = v6;
LABEL_22:

      return sub_1000BA2B0(v9, v8, v10, v11);
    }
  }

  else
  {
    sub_1000A0C08(v0 + 56);
  }

  v12 = *(v0 + 520);
  *(v0 + 408) = 0x692D74726F706572;
  *(v0 + 416) = 0xEF6C61767265746ELL;
  AnyHashable.init<A>(_:)();
  if (*(v12 + 16) && (v13 = sub_10009FA7C(v0 + 96), (v14 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v13, v0 + 280);
    sub_1000A0C08(v0 + 96);
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 488);
      *(v0 + 600) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 496) = v15;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      *(v0 + 608) = v17;
      v19 = swift_task_alloc();
      *(v0 + 616) = v19;
      *v19 = v0;
      v19[1] = sub_100135338;
      v20 = 0x74726F706572;
LABEL_15:
      v27 = v20 & 0xFFFFFFFFFFFFLL | 0x6E49000000000000;
      v8 = 0xEE006C6176726574;
LABEL_21:
      v9 = v27;
      v10 = v16;
      v11 = v18;
      goto LABEL_22;
    }
  }

  else
  {
    sub_1000A0C08(v0 + 96);
  }

  v21 = *(v0 + 520);
  *(v0 + 424) = 0x692D656C706D6173;
  *(v0 + 432) = 0xEF6C61767265746ELL;
  AnyHashable.init<A>(_:)();
  if (*(v21 + 16) && (v22 = sub_10009FA7C(v0 + 136), (v23 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v22, v0 + 312);
    sub_1000A0C08(v0 + 136);
    if (swift_dynamicCast())
    {
      v24 = *(v0 + 472);
      *(v0 + 632) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 480) = v24;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v25;
      *(v0 + 640) = v25;
      v26 = swift_task_alloc();
      *(v0 + 648) = v26;
      *v26 = v0;
      v26[1] = sub_100135848;
      v20 = 0x656C706D6173;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1000A0C08(v0 + 136);
  }

  v28 = *(v0 + 520);
  strcpy((v0 + 440), "sample-number");
  *(v0 + 454) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v28 + 16) && (v29 = sub_10009FA7C(v0 + 176), (v30 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v29, v0 + 344);
    sub_1000A0C08(v0 + 176);
    v31 = swift_dynamicCast();
    if (v31)
    {
      v32 = *(v0 + 456);
      *(v0 + 664) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 464) = v32;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v33;
      *(v0 + 672) = v33;
      v34 = swift_task_alloc();
      *(v0 + 680) = v34;
      *v34 = v0;
      v34[1] = sub_100135BDC;
      v27 = 0x754E656C706D6173;
      v8 = 0xEC0000007265626DLL;
      goto LABEL_21;
    }
  }

  else
  {
    v31 = sub_1000A0C08(v0 + 176);
  }

  (*((swift_isaMask & **(v0 + 528)) + 0x160))(v31);
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100134CD0()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    v4 = sub_100135E34;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_100134E04;
    v3 = v5;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_100134E04()
{
  v1 = *(v0 + 520);
  *(v0 + 408) = 0x692D74726F706572;
  *(v0 + 416) = 0xEF6C61767265746ELL;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = sub_10009FA7C(v0 + 96), (v3 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v2, v0 + 280);
    sub_1000A0C08(v0 + 96);
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 488);
      *(v0 + 600) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 496) = v4;
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v6;
      *(v0 + 608) = v6;
      v8 = swift_task_alloc();
      *(v0 + 616) = v8;
      *v8 = v0;
      v8[1] = sub_100135338;
      v9 = 0x74726F706572;
LABEL_10:
      v16 = v9 & 0xFFFFFFFFFFFFLL | 0x6E49000000000000;
      v17 = 0xEE006C6176726574;
LABEL_16:

      return sub_1000BA2B0(v16, v17, v5, v7);
    }
  }

  else
  {
    sub_1000A0C08(v0 + 96);
  }

  v10 = *(v0 + 520);
  *(v0 + 424) = 0x692D656C706D6173;
  *(v0 + 432) = 0xEF6C61767265746ELL;
  AnyHashable.init<A>(_:)();
  if (*(v10 + 16) && (v11 = sub_10009FA7C(v0 + 136), (v12 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v11, v0 + 312);
    sub_1000A0C08(v0 + 136);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 472);
      *(v0 + 632) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 480) = v13;
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v14;
      *(v0 + 640) = v14;
      v15 = swift_task_alloc();
      *(v0 + 648) = v15;
      *v15 = v0;
      v15[1] = sub_100135848;
      v9 = 0x656C706D6173;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1000A0C08(v0 + 136);
  }

  v18 = *(v0 + 520);
  strcpy((v0 + 440), "sample-number");
  *(v0 + 454) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v19 = sub_10009FA7C(v0 + 176), (v20 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v19, v0 + 344);
    sub_1000A0C08(v0 + 176);
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = *(v0 + 456);
      *(v0 + 664) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 464) = v22;
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v23;
      *(v0 + 672) = v23;
      v24 = swift_task_alloc();
      *(v0 + 680) = v24;
      *v24 = v0;
      v24[1] = sub_100135BDC;
      v16 = 0x754E656C706D6173;
      v17 = 0xEC0000007265626DLL;
      goto LABEL_16;
    }
  }

  else
  {
    v21 = sub_1000A0C08(v0 + 176);
  }

  (*((swift_isaMask & **(v0 + 528)) + 0x160))(v21);
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100135338()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    v4 = sub_100135EA4;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_10013546C;
    v3 = v5;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_10013546C()
{
  v1 = *(v0 + 520);
  *(v0 + 424) = 0x692D656C706D6173;
  *(v0 + 432) = 0xEF6C61767265746ELL;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = sub_10009FA7C(v0 + 136), (v3 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v2, v0 + 312);
    sub_1000A0C08(v0 + 136);
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 472);
      *(v0 + 632) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 480) = v4;
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v6;
      *(v0 + 640) = v6;
      v8 = swift_task_alloc();
      *(v0 + 648) = v8;
      *v8 = v0;
      v8[1] = sub_100135848;
      v9 = 0x6E49656C706D6173;
      v10 = 0xEE006C6176726574;
LABEL_10:

      return sub_1000BA2B0(v9, v10, v5, v7);
    }
  }

  else
  {
    sub_1000A0C08(v0 + 136);
  }

  v11 = *(v0 + 520);
  strcpy((v0 + 440), "sample-number");
  *(v0 + 454) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v11 + 16) && (v12 = sub_10009FA7C(v0 + 176), (v13 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v12, v0 + 344);
    sub_1000A0C08(v0 + 176);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = *(v0 + 456);
      *(v0 + 664) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 464) = v15;
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v16;
      *(v0 + 672) = v16;
      v17 = swift_task_alloc();
      *(v0 + 680) = v17;
      *v17 = v0;
      v17[1] = sub_100135BDC;
      v9 = 0x754E656C706D6173;
      v10 = 0xEC0000007265626DLL;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = sub_1000A0C08(v0 + 176);
  }

  (*((swift_isaMask & **(v0 + 528)) + 0x160))(v14);
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100135848()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    v4 = sub_100135F14;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_10013597C;
    v3 = v5;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_10013597C()
{
  v1 = *(v0 + 520);
  strcpy((v0 + 440), "sample-number");
  *(v0 + 454) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = sub_10009FA7C(v0 + 176), (v3 & 1) != 0))
  {
    sub_10009AA34(*(*(v0 + 520) + 56) + 32 * v2, v0 + 344);
    sub_1000A0C08(v0 + 176);
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = *(v0 + 456);
      *(v0 + 664) = (*((swift_isaMask & **(v0 + 528)) + 0xB0))();
      *(v0 + 464) = v5;
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v7;
      *(v0 + 672) = v7;
      v9 = swift_task_alloc();
      *(v0 + 680) = v9;
      *v9 = v0;
      v9[1] = sub_100135BDC;

      return sub_1000BA2B0(0x754E656C706D6173, 0xEC0000007265626DLL, v6, v8);
    }
  }

  else
  {
    v4 = sub_1000A0C08(v0 + 176);
  }

  (*((swift_isaMask & **(v0 + 528)) + 0x160))(v4);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100135BDC()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    v4 = sub_100135F84;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_100135D10;
    v3 = v5;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_100135D10()
{
  (*((swift_isaMask & **(v0 + 528)) + 0x160))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100135DC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100135E34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100135EA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100135F14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100135F84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100135FF4()
{
  v1[42] = v0;
  v2 = type metadata accessor for Date();
  v1[43] = v2;
  v1[44] = *(v2 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001360C0, v0, 0);
}

uint64_t sub_1001360C0()
{
  if ((*((swift_isaMask & *v0[42]) + 0xC8))() < 999)
  {
    v1 = v0[42];
    v2 = Date.init()();
    v3 = *((swift_isaMask & *v1) + 0xF8);
    v4 = ((swift_isaMask & *v1) + 248) & 0xFFFFFFFFFFFFLL | 0x3971000000000000;
    v0[47] = v3;
    v0[48] = v4;
    result = v3(v2);
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else if ((-(result + 1) * 86400) >> 64 == (-86400 * (result + 1)) >> 63)
    {
      v6 = v0[45];
      v7 = v0[43];
      v8 = v0[44];
      Date.addingTimeInterval(_:)();
      v9 = *(v8 + 8);
      v0[49] = v9;
      v0[50] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v10 = v9(v6, v7);
      result = v3(v10);
      v11 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v15 = (*((swift_isaMask & *v0[42]) + 0x1B8) + **((swift_isaMask & *v0[42]) + 0x1B8));
        v12 = swift_task_alloc();
        v0[51] = v12;
        *v12 = v0;
        v12[1] = sub_100136398;

        return v15(v11, 0, 0);
      }

LABEL_13:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_1000BCE18();
  swift_allocError();
  *v13 = 18;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100136398(char a1)
{
  v4 = *v2;
  *(v4 + 416) = v1;

  v5 = *(v4 + 336);
  if (v1)
  {
    v6 = sub_10013728C;
  }

  else
  {
    *(v4 + 529) = a1 & 1;
    v6 = sub_1001364D8;
  }

  return (_swift_task_switch)(v6, v5, 0);
}

uint64_t sub_1001364D8()
{
  v1 = *(v0 + 529);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);
  v4 = *(v3 + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides);
  *(v0 + 424) = v4;
  (*((swift_isaMask & *v4) + 0xE0))(v1);
  v2();
  (*((swift_isaMask & *v3) + 0xE0))();
  v5 = *(v3 + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_idsEventReportingManager);
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  *(v0 + 432) = isa;
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  v9 = Double._bridgeToObjectiveC()().super.super.isa;
  *(v0 + 440) = v9;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 320;
  *(v0 + 24) = sub_1001366FC;
  v10 = swift_continuation_init();
  *(v0 + 136) = sub_100095820(&unk_1003831B0, &qword_1002D6358);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10009F2A4;
  *(v0 + 104) = &unk_1003225C0;
  *(v0 + 112) = v10;
  [v5 reportResultWithSuccess:isa startFrom:v9 interval:v0 + 80 completionHandler:v8];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001366FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 448) = v2;
  v3 = *(v1 + 336);
  if (v2)
  {
    v4 = sub_10013750C;
  }

  else
  {
    v4 = sub_10013681C;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_10013681C()
{
  v31 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 320);

  if (!v2)
  {
    goto LABEL_21;
  }

  *(v0 + 288) = 0x722D74726F706572;
  *(v0 + 296) = 0xEF65736E6F707365;
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v3 = sub_10009FA7C(v0 + 144), (v4 & 1) == 0))
  {

    v18 = v0 + 144;
LABEL_20:
    sub_1000A0C08(v18);
    goto LABEL_21;
  }

  sub_10009AA34(*(v2 + 56) + 32 * v3, v0 + 224);
  sub_1000A0C08(v0 + 144);

  sub_100095820(&qword_100387738, &qword_1002DC488);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = *(v0 + 328);
  *(v0 + 456) = v5;
  strcpy((v0 + 304), "recommendation");
  *(v0 + 319) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10009FA7C(v0 + 184), (v7 & 1) == 0))
  {

    v18 = v0 + 184;
    goto LABEL_20;
  }

  sub_10009AA34(*(v5 + 56) + 32 * v6, v0 + 256);
  sub_1000A0C08(v0 + 184);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 528);
    *(v0 + 530) = v8;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      if (v8)
      {
        v13 = 7562585;
      }

      else
      {
        v13 = 28494;
      }

      if (v8)
      {
        v14 = 0xE300000000000000;
      }

      else
      {
        v14 = 0xE200000000000000;
      }

      v15 = sub_1000999E4(v13, v14, &v30);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "IDS recommendation: %s", v11, 0xCu);
      sub_10009A9E8(v12);
    }

    v28 = (*((swift_isaMask & **(v0 + 336)) + 0x170) + **((swift_isaMask & **(v0 + 336)) + 0x170));
    v16 = swift_task_alloc();
    *(v0 + 464) = v16;
    *v16 = v0;
    v16[1] = sub_100136E10;

    return v28(v5);
  }

LABEL_21:
  sub_1000BCE18();
  v19 = swift_allocError();
  *v20 = 7;
  swift_willThrow();
  *(v0 + 504) = v19;
  v21 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v22 = Logger.logObject.getter();

  if (os_log_type_enabled(v22, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v22, v21, "Report to IDS finished with error %@", v23, 0xCu);
    sub_1000057C4(v24, &unk_100383290, &unk_1002D5BA0);
  }

  v26 = *(v0 + 336);

  v29 = (*((swift_isaMask & *v26) + 0x168) + **((swift_isaMask & *v26) + 0x168));
  v27 = swift_task_alloc();
  *(v0 + 512) = v27;
  *v27 = v0;
  v27[1] = sub_100137308;

  return v29(2);
}

uint64_t sub_100136E10()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_100137750;
  }

  else
  {
    v4 = sub_100136F3C;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_100136F3C()
{
  v1 = *(v0 + 530);
  v2 = *(v0 + 424);
  v3 = *(v0 + 336);

  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  v5 = (*((swift_isaMask & *v2) + 0xD8))(v4);
  *(v0 + 480) = v5;
  v8 = (*((swift_isaMask & *v3) + 0x168) + **((swift_isaMask & *v3) + 0x168));
  v6 = swift_task_alloc();
  *(v0 + 488) = v6;
  *v6 = v0;
  v6[1] = sub_1001370DC;

  return v8(v5);
}

uint64_t sub_1001370DC()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_100137A1C;
  }

  else
  {
    v4 = sub_100137208;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_100137208()
{
  (*(v0 + 392))(*(v0 + 368), *(v0 + 344));

  v1 = *(v0 + 8);
  v2 = *(v0 + 480);

  return v1(v2);
}

uint64_t sub_10013728C()
{
  (*(v0 + 392))(*(v0 + 368), *(v0 + 344));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100137308()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_100137988;
  }

  else
  {
    v4 = sub_100137434;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_100137434()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[43];
  sub_1000BCE18();
  swift_allocError();
  *v4 = 7;
  swift_willThrow();

  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10013750C(uint64_t a1)
{
  v2 = v1[55];
  v3 = v1[54];
  swift_willThrow();

  v1[63] = v1[56];
  v4 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();

  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v5, v4, "Report to IDS finished with error %@", v6, 0xCu);
    sub_1000057C4(v7, &unk_100383290, &unk_1002D5BA0);
  }

  v9 = v1[42];

  v12 = (*((swift_isaMask & *v9) + 0x168) + **((swift_isaMask & *v9) + 0x168));
  v10 = swift_task_alloc();
  v1[64] = v10;
  *v10 = v1;
  v10[1] = sub_100137308;

  return v12(2);
}

uint64_t sub_100137750()
{

  v0[63] = v0[59];
  v1 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();

  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Report to IDS finished with error %@", v3, 0xCu);
    sub_1000057C4(v4, &unk_100383290, &unk_1002D5BA0);
  }

  v6 = v0[42];

  v9 = (*((swift_isaMask & *v6) + 0x168) + **((swift_isaMask & *v6) + 0x168));
  v7 = swift_task_alloc();
  v0[64] = v7;
  *v7 = v0;
  v7[1] = sub_100137308;

  return v9(2);
}

uint64_t sub_100137988()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[43];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100137A1C()
{
  (*(v0 + 392))(*(v0 + 368), *(v0 + 344));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100137C10(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100145040;

  return sub_100135FF4();
}

uint64_t sub_100137CB8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_100137D90, v1, 0);
}

uint64_t sub_100137D90()
{
  v47 = v0;
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element);
  v2 = *v1;
  v3 = v1[1];
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 40;
  v5 = sub_100142D04(sub_1001439B4, v4, &off_100322530);

  if ((v5 & 1) == 0)
  {
    sub_1000BCE18();
    swift_allocError();
    v18 = 6;
LABEL_8:
    *v17 = v18;
    swift_willThrow();

    v19 = *(v0 + 8);
    v20 = 0;
LABEL_9:

    return v19(v20);
  }

  if ((*((swift_isaMask & **(v0 + 72)) + 0xC8))(v6) >= 999)
  {
    sub_1000BCE18();
    swift_allocError();
    v18 = 18;
    goto LABEL_8;
  }

  Date.init()();
  v7 = eligibilityDBDataLifetimeDays.unsafeMutableAddressor();
  result = swift_beginAccess();
  if (*v7 == 0x8000000000000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((-*v7 * 86400) >> 64 != (-86400 * *v7) >> 63)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  Date.addingTimeInterval(_:)();
  v14 = *(v12 + 8);
  v15 = v14(v9, v11);
  v16 = *((swift_isaMask & *v13) + 0xB0);
  (v16)(v15);
  sub_1000B8AD4(v10);
  v45 = v14;
  v21 = *(v0 + 64);

  v22 = *&v21[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result];
  v23 = v21;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v24, v25))
  {
    v43 = v22;
    v44 = v16;

LABEL_22:
    v34 = *(v0 + 96);
    v35 = *(v0 + 64);
    v44();
    v36 = v35 + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString;
    v37 = *(v35 + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString);
    v38 = *(v36 + 8);
    j___s10Foundation4DateV3nowACvgZ();
    sub_1000BA240(v2, v3, v43 == 0, v37, v38, v34, 0, 1);
    v39 = *(v0 + 112);
    v40 = *(v0 + 96);
    v41 = *(v0 + 80);

    v45(v40, v41);
    v45(v39, v41);

    v19 = *(v0 + 8);
    v20 = 1;
    goto LABEL_9;
  }

  v27 = swift_slowAlloc();
  v46[0] = swift_slowAlloc();
  *v27 = 136315650;
  *(v27 + 4) = sub_1000999E4(v2, v3, v46);
  *(v27 + 12) = 2080;
  if (v22 < 3)
  {
    v42 = v25;
    v43 = v22;
    v44 = v16;
    v28 = *&aSuccess_3[8 * v22];
    v29 = *(v0 + 64);
    v30 = sub_1000999E4(v28, 0xE700000000000000, v46);

    *(v27 + 14) = v30;
    *(v27 + 22) = 2080;
    if (*(v29 + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString + 8))
    {
      v31 = *(v29 + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString);
      v32 = *(v29 + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString + 8);
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    v33 = sub_1000999E4(v31, v32, v46);

    *(v27 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v24, v42, "Storing element %s with result %s failure %s", v27, 0x20u);
    swift_arrayDestroy();

    goto LABEL_22;
  }

  *(v0 + 56) = v22;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t sub_1001384C4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100138588;

  return sub_100137CB8(v5);
}

uint64_t sub_100138588(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10013873C(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((swift_isaMask & *v1) + 0x190))(v5);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = result;
  result = Date.init()();
  v10 = 3600 * (24 / v9);
  if ((v10 * a1) >> 64 != (v10 * a1) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 * a1 != 0x8000000000000000)
  {
    Date.addingTimeInterval(_:)();
    return (*(v4 + 8))(v7, v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10013890C()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_support);
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_100138A34;
  v2 = swift_continuation_init();
  v0[17] = sub_100095820(&unk_100387740, &qword_1002DC4A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100138BE0;
  v0[13] = &unk_1003225E8;
  v0[14] = v2;
  [v1 checkiCloudAnalyticsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100138A34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_100138B70;
  }

  else
  {
    v4 = sub_100138B54;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_100138B70(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_100138BE0(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000A0E50((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100095820(&qword_100382DD0, &unk_1002D7500);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100138E24(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100138ECC;

  return sub_1001388EC();
}

uint64_t sub_100138ECC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100139060(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return (_swift_task_switch)(sub_100139084, v2, 0);
}

uint64_t sub_100139084()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  (*((swift_isaMask & **(v0 + 32)) + 0xB0))();
  v3 = sub_1000B8B2C(v2, v1);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1001392EC(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;

  return (_swift_task_switch)(sub_10013937C, a3, 0);
}

uint64_t sub_10013937C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  v3 = sub_1000B8B2C(v2, v1);
  v4 = *(v0 + 24);
  v5 = v3;

  (v4)[2](v4, v5, 0);
  _Block_release(v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001394E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001395F4, v2, 0);
}

uint64_t sub_1001395F4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  (*((swift_isaMask & **(v0 + 32)) + 0xB0))();
  sub_1000B91C0(v2, v1);

  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_1000AB050(*(v0 + 80), v3, &qword_100383FB0, &unk_1002D6690);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    (*(v9 + 32))(*(v0 + 64), *(v0 + 72), v8);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v11 = v10;
    v12 = *(v9 + 8);
    result = v12(v7, v8);
    v14 = v11 / 3600.0 / 24.0;
    if (COERCE__INT64(fabs(v14)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        v15 = *(v0 + 64);
        v16 = *(v0 + 40);
        v6.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
        v12(v15, v16);
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  sub_1000057C4(*(v0 + 72), &qword_100383FB0, &unk_1002D6690);
  sub_100143A0C();
  v6.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
LABEL_7:
  sub_1000057C4(*(v0 + 80), &qword_100383FB0, &unk_1002D6690);

  v17 = *(v0 + 8);

  return v17(v6.super.super.isa);
}

uint64_t sub_100139A54(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100139B28;

  return sub_1001394E0(v4, v6);
}

uint64_t sub_100139B28(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](*(v5 + 24), a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100139CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  v5 = type metadata accessor for Date();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();

  return (_swift_task_switch)(sub_100139DAC, v3, 0);
}

uint64_t sub_100139DAC()
{
  result = (*((swift_isaMask & **(v0 + 360)) + 0xE0))();
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 352);
    v3 = *(v0 + 360);
    (*((swift_isaMask & *v3) + 0xB0))();
    v5 = (*((swift_isaMask & *v3) + 0x188))(v4);
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v8 = *(v0 + 368);
    v9 = (86400 / v2);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    v12 = *(v0 + 336);
    v13 = (*((swift_isaMask & **(v0 + 360)) + 0x110))(v5);
    v14 = sub_1000B9D70(v12, v10, v6, v11, v9, v13);
    (*(v7 + 8))(v6, v8);

    v16 = *(v0 + 336);
    v15 = *(v0 + 344);
    sub_100095820(&unk_100387750, &unk_1002D7630);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002D47D0;
    *(inited + 32) = 0x746E656D656C65;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v16;
    *(inited + 56) = v15;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x73656C706D6173;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = *(v14 + OBJC_IVAR____TtC13transparencyd20AggregateElementInfo_samples);
    *(inited + 120) = &type metadata for Int;
    *(inited + 128) = 0x73736563637573;
    *(inited + 136) = 0xE700000000000000;
    v18 = *((swift_isaMask & *v14) + 0x80);

    *(inited + 144) = v18(v19) & 1;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 176) = 0x736572756C696166;
    *(inited + 184) = 0xE800000000000000;
    *(inited + 192) = (*((swift_isaMask & *v14) + 0x98))() & 1;
    *(inited + 216) = &type metadata for Bool;
    *(inited + 224) = 0xD000000000000014;
    *(inited + 232) = 0x800000010029AA20;
    *(inited + 240) = (*((swift_isaMask & *v14) + 0xB0))() & 1;
    *(inited + 264) = &type metadata for Bool;
    *(inited + 272) = 0x52746E6573657270;
    *(inited + 280) = 0xEB00000000657461;
    v20 = (*((swift_isaMask & *v14) + 0xC8))();
    *(inited + 312) = &type metadata for Double;
    *(inited + 288) = v20;
    v21 = sub_1000BEA10(inited);
    swift_setDeallocating();
    sub_100095820(&qword_100384660, &qword_1002D7640);
    swift_arrayDestroy();

    v22 = *(v0 + 8);

    return v22(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10013A3CC(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_10013A4B0;

  return sub_100139CE8(v6, v8, a2);
}

uint64_t sub_10013A4B0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_10013A674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Date();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return (_swift_task_switch)(sub_10013A744, v3, 0);
}

uint64_t sub_10013A744()
{
  if ((*((swift_isaMask & **(v0 + 40)) + 0xC8))() < 999)
  {
    result = (*((swift_isaMask & **(v0 + 40)) + 0xE0))();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = *(v0 + 32);
    v3 = (86400 / result);
    if (v2)
    {
      if (v2 == 0xE400000000000000 && *(v0 + 24) == 1919247728 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = (*((swift_isaMask & **(v0 + 40)) + 0x128))();
      }

      else
      {
        v5 = (*((swift_isaMask & **(v0 + 40)) + 0x110))();
      }

      v31 = v5;
      v32 = *(v0 + 40);
      v33 = *(v0 + 16);
      (*((swift_isaMask & *v32) + 0xB0))(v4);
      (*((swift_isaMask & *v32) + 0x188))(v33);
      v34 = *(v0 + 72);
      v35 = *(v0 + 48);
      v36 = *(v0 + 56);
      v37 = sub_1000B9D70(*(v0 + 24), v2, v34, *(v0 + 16), v3, v31);
      (*(v36 + 8))(v34, v35);

      v28 = (*((swift_isaMask & *v37) + 0x80))(v38);

LABEL_26:

      v39 = *(v0 + 8);
      v40 = v28 & 1;
      goto LABEL_27;
    }

    v7 = *(v0 + 40);
    v42 = *((swift_isaMask & *v7) + 0xB0);
    v41 = *((swift_isaMask & *v7) + 0x188);
    v8 = (*(v0 + 56) + 8);
    v9 = &unk_100322558;
    v10 = 3;
    while (1)
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      v13 = *(v0 + 40);
      if (v12 == 1919247728 && v11 == 0xE400000000000000)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = *v13;
      v17 = swift_isaMask;
      if (v15)
      {
        goto LABEL_17;
      }

      v18 = *((swift_isaMask & v16) + 0x110);

      v20 = v18(v19);
LABEL_18:
      v24 = v21;
      v25 = *(v0 + 16);
      v42(v20);
      v41(v25);
      v26 = sub_1000B9D70(v12, v11, *(v0 + 64), *(v0 + 16), v3, v24);
      (*v8)(*(v0 + 64), *(v0 + 48));

      v28 = (*((swift_isaMask & *v26) + 0x80))(v27);

      v30 = v10-- != 0;
      if (v28)
      {
        v9 += 2;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    v16 = *v13;
    v17 = swift_isaMask;
LABEL_17:
    v22 = *((v16 & v17) + 0x128);

    v21 = v22(v23);
    goto LABEL_18;
  }

  sub_1000BCE18();
  swift_allocError();
  *v6 = 18;
  swift_willThrow();

  v39 = *(v0 + 8);
  v40 = 0;
LABEL_27:

  return v39(v40);
}

uint64_t sub_10013AE3C(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v4[4] = v8;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_10013AF2C;

  return sub_10013A674(a1, a2, v8);
}

uint64_t sub_10013AF2C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);

  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10013B0D8()
{
  v1 = v0;
  swift_beginAccess();

  sub_1000B89A0();

  v2 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10013B1D0()
{
  v1 = v0;
  swift_beginAccess();

  sub_1000B89A0();

  v2 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_10013B2CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return (_swift_task_switch)(sub_10013B2F0, v2, 0);
}

uint64_t sub_10013B2F0()
{
  *(v0 + 40) = (*((swift_isaMask & **(v0 + 32)) + 0xB0))();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10013B3E0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1000BA2B0(0x6F6973726556736FLL, 0xE90000000000006ELL, v2, v3);
}

uint64_t sub_10013B3E0()
{
  v2 = *v1;
  v2[7] = v0;

  if (!v0)
  {

    v4 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[4];

  return (_swift_task_switch)(sub_10013B51C, v3, 0);
}

uint64_t sub_10013B51C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013B70C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;

  return (_swift_task_switch)(sub_10013B79C, a3, 0);
}

uint64_t sub_10013B79C()
{
  *(v0 + 48) = (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10013B88C;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_1000BA2B0(0x6F6973726556736FLL, 0xE90000000000006ELL, v2, v3);
}

uint64_t sub_10013B88C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (!v0)
  {
    v4 = *(v2 + 24);

    (*(v4 + 16))(v4, 0);
    _Block_release(*(v2 + 24));
    v5 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v2 + 16);

  return (_swift_task_switch)(sub_10013BA04, v3, 0);
}

uint64_t sub_10013BA04()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10013BAD8()
{
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  v1 = sub_1000BA1B4(0x6F6973726556736FLL, 0xE90000000000006ELL);
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t sub_10013BD74(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return (_swift_task_switch)(sub_10013BDF0, a2, 0);
}

uint64_t sub_10013BDF0()
{
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  sub_1000BA1B4(0x6F6973726556736FLL, 0xE90000000000006ELL);
  v2 = v1;

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();

    v4 = v3;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = *(v0 + 24);
  (v5)[2](v5, v4, 0);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10013BF50(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return (_swift_task_switch)(sub_10013BF70, v1, 0);
}

uint64_t sub_10013BF70()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = (*((swift_isaMask & **(v0 + 32)) + 0xB0))();
  if (!v1)
  {
    v2 = 0xE300000000000000;
    v3 = 7562585;
    goto LABEL_5;
  }

  if (v1 == 2)
  {
    v2 = 0xE200000000000000;
    v3 = 28494;
LABEL_5:
    *(v0 + 48) = v2;
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_10013C0D0;

    return sub_1000BA2B0(0x6E4974706FLL, 0xE500000000000000, v3, v2);
  }

  *(v0 + 16) = *(v0 + 24);

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t sub_10013C0D0()
{
  v2 = *v1;
  v2[8] = v0;

  if (!v0)
  {

    v4 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[4];

  return (_swift_task_switch)(sub_10013C218, v3, 0);
}

uint64_t sub_10013C218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013C40C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_10013C4C8;

  return sub_10013BF50(a1);
}

uint64_t sub_10013C4C8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_10013C670()
{
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  v1 = sub_1000BA1B4(0x6E4974706FLL, 0xE500000000000000);
  v3 = v2;

  if (v3)
  {
    if (v1 == 7562585 && v3 == 0xE300000000000000)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v5 & 1);
}

uint64_t sub_10013C92C(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return (_swift_task_switch)(sub_10013C9A8, a2, 0);
}

uint64_t sub_10013C9A8()
{
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  v1 = sub_1000BA1B4(0x6E4974706FLL, 0xE500000000000000);
  v3 = v2;
  v4 = v1;

  if (v3)
  {
    if (v4 == 7562585 && v3 == 0xE300000000000000)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 24);

  (*(v7 + 16))(v7, v6 & 1, 0);
  _Block_release(*(v0 + 24));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10013CB40()
{
  *(v1 + 104) = v0;
  sub_100095820(&qword_100383FB0, &unk_1002D6690);
  *(v1 + 112) = swift_task_alloc();

  return (_swift_task_switch)(sub_10013CBDC, v0, 0);
}

uint64_t sub_10013CBDC()
{
  super_class = v0[6].super_class;
  v2 = *(super_class + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides);
  v3 = (*((swift_isaMask & *super_class) + 0xC8))();
  v4 = (*((swift_isaMask & *v2) + 0xE8))(v3);
  (*((swift_isaMask & *super_class) + 0xB0))();
  v5 = sub_1000BA1B4(0x6F7065527473616CLL, 0xEE00656D69547472);
  v7 = v6;

  if (!v7)
  {
    v11 = v0 + 4;
    receiver = v0[7].receiver;
    v19 = type metadata accessor for Date();
    v20 = *(*(v19 - 8) + 56);
    v20(receiver, 1, 1, v19);
    v15 = type metadata accessor for ReportTime(0);
    v21 = objc_allocWithZone(v15);
    v22 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
    v20(&v21[OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport], 1, 1, v19);
    swift_beginAccess();
    sub_1000E3408(receiver, &v21[v22]);
    swift_endAccess();
    *&v21[OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports] = v4;
    v0[4].receiver = v21;
    goto LABEL_9;
  }

  v0[6].receiver = 0;
  v10 = sub_1001431C0(v5, v7, &v0[6]);

  if (v10)
  {
    v11 = v0 + 5;
    v12 = v0[7].receiver;
    Date.init(timeIntervalSinceReferenceDate:)();
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);
    v14(v12, 0, 1, v13);
    v15 = type metadata accessor for ReportTime(0);
    v16 = objc_allocWithZone(v15);
    v17 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
    v14(&v16[OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport], 1, 1, v13);
    swift_beginAccess();
    sub_1000E3408(v12, &v16[v17]);
    swift_endAccess();
    *&v16[OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports] = v4;
    v0[5].receiver = v16;
LABEL_9:
    v23 = v0[7].receiver;
    v11->super_class = v15;
    v24 = [(objc_super *)v11 init];
    sub_1000057C4(v23, &qword_100383FB0, &unk_1002D6690);

    v25 = v0->super_class;

    return v25(v24);
  }

  sub_1000BCE18();
  swift_allocError();
  *v26 = 5;
  swift_willThrow();

  v8 = v0->super_class;

  return v8();
}

uint64_t sub_10013D138(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10013D1E0;

  return sub_10013CB40();
}

uint64_t sub_10013D1E0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10013D3A4()
{
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  v1 = sub_1000BA1B4(0xD000000000000012, 0x800000010029CD80);
  v3 = v2;

  if (v3)
  {
    v4 = v1 == 49 && v3 == 0xE100000000000000;
    if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 48 && v3 == 0xE100000000000000)
    {

      v5 = 2;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10013D6D0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10013D778;

  return sub_10013D384();
}

uint64_t sub_10013D778(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10013D90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return (_swift_task_switch)(sub_10013D934, v4, 0);
}

uint64_t sub_10013D934()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *((swift_isaMask & **(v0 + 48)) + 0xB0);
    v3 = v1;
    *(v0 + 56) = v2();
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_10013DAA8;
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);

    return sub_1000BA3B4(v7, v3, v5, v6);
  }

  else
  {
    v9 = *(v0 + 16);
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10013DAA8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_10013DC30;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10013DBCC;
    v3 = v5;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_10013DBCC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013DC30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013DE30(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = _Block_copy(a3);
  v4[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[3] = v8;
  v4[9] = v8;

  v9 = a1;

  return (_swift_task_switch)(sub_10013DF24, a4, 0);
}

uint64_t sub_10013DF24()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *((swift_isaMask & **(v0 + 40)) + 0xB0);
    v4 = v1;
    *(v0 + 80) = v3();
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_10013E16C;
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);

    return sub_1000BA3B4(v7, v4, v2, v6);
  }

  else
  {
    v9 = *(v0 + 56);

    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12 = *(v0 + 48);
    sub_1000ABF3C(*(v0 + 56), v12);
    v13 = (*(v11 + 48))(v12, 1, v10);
    isa = 0;
    if (v13 != 1)
    {
      v15 = *(v0 + 48);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v11 + 8))(v15, v10);
    }

    v16 = *(v0 + 64);
    (v16)[2](v16, isa, 0);
    _Block_release(v16);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10013E16C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_10013E3D8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_10013E29C;
    v3 = v5;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_10013E29C()
{
  v1 = v0[4];

  v2 = v0[6];
  sub_1000ABF3C(v0[7], v2);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  isa = 0;
  if (v5 != 1)
  {
    v7 = v0[6];
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v3);
  }

  v8 = v0[8];
  (v8)[2](v8, isa, 0);
  _Block_release(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10013E3D8()
{
  v1 = v0[8];
  v2 = v0[4];

  v3 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v3);

  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10013E4D4()
{
  (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xB0))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013E6E8(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return (_swift_task_switch)(sub_10013E764, a2, 0);
}

uint64_t sub_10013E764()
{
  v1 = v0[3];
  (*((swift_isaMask & **(v0[2] + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xB0))();

  v1[2](v1);
  _Block_release(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10013E848()
{
  (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xB8))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013EA5C(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return (_swift_task_switch)(sub_10013EAD8, a2, 0);
}

uint64_t sub_10013EAD8()
{
  v1 = v0[3];
  (*((swift_isaMask & **(v0[2] + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xB8))();

  v1[2](v1);
  _Block_release(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10013EB9C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return (_swift_task_switch)(sub_10013EBC0, v1, 0);
}

uint64_t sub_10013EBC0()
{
  (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xC8))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013EDE8(char a1, void *aBlock, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 32) = a1;
  *(v3 + 24) = _Block_copy(aBlock);

  return (_swift_task_switch)(sub_10013EE6C, a3, 0);
}

uint64_t sub_10013EE6C()
{
  v1 = *(v0 + 24);
  (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xC8))(*(v0 + 32));

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013EF34(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return (_swift_task_switch)(sub_10013EF58, v1, 0);
}

uint64_t sub_10013EF58()
{
  (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xC0))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013F180(char a1, void *aBlock, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 32) = a1;
  *(v3 + 24) = _Block_copy(aBlock);

  return (_swift_task_switch)(sub_10013F204, a3, 0);
}

uint64_t sub_10013F204()
{
  v1 = *(v0 + 24);
  (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xC0))(*(v0 + 32));

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013F2CC(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return (_swift_task_switch)(sub_10013F2F0, v1, 0);
}

uint64_t sub_10013F2F0()
{
  (*((swift_isaMask & **(*(v0 + 24) + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xD0))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013F518(const void *a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a2;
  *(v3 + 16) = a3;
  *(v3 + 32) = _Block_copy(a1);

  return (_swift_task_switch)(sub_10013F598, a2, 0);
}

uint64_t sub_10013F598()
{
  v1 = *(v0 + 32);
  (*((swift_isaMask & **(*(v0 + 24) + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides)) + 0xD0))(*(v0 + 16));

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013F660(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for Date();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return (_swift_task_switch)(sub_10013F728, v4, 0);
}

uint64_t sub_10013F728()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  (*((swift_isaMask & *v1) + 0xB0))();
  (*((swift_isaMask & *v1) + 0x188))(v2);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  sub_1000BA240(*(v0 + 16), *(v0 + 24), *(v0 + 72), 0, 0, v3, 0, 1);
  (*(v4 + 8))(v3, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10013FA48(uint64_t a1, uint64_t a2, char a3, const void *a4, uint64_t a5)
{
  *(v5 + 88) = a3;
  *(v5 + 32) = a2;
  *(v5 + 40) = a5;
  v8 = type metadata accessor for Date();
  *(v5 + 48) = v8;
  *(v5 + 56) = *(v8 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = _Block_copy(a4);
  *(v5 + 16) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 24) = v9;
  *(v5 + 80) = v9;

  return (_swift_task_switch)(sub_10013FB48, a5, 0);
}

uint64_t sub_10013FB48()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  (*((swift_isaMask & *v1) + 0xB0))();
  (*((swift_isaMask & *v1) + 0x188))(v2);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  sub_1000BA240(*(v0 + 16), *(v0 + 80), *(v0 + 88), 0, 0, v3, 0, 1);
  (*(v4 + 8))(v3, v5);
  v8 = *(v0 + 72);

  (*(v8 + 16))(v8, 0);
  _Block_release(*(v0 + 72));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10013FD24(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return (_swift_task_switch)(sub_10013FD44, v1, 0);
}

uint64_t sub_10013FD44()
{
  *(v0 + 32) = (*((swift_isaMask & **(v0 + 24)) + 0xB0))();
  Date.timeIntervalSinceReferenceDate.getter();
  v1 = Double.description.getter();
  v3 = v2;
  *(v0 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_10013FE64;

  return sub_1000BA2B0(0x6F7065527473616CLL, 0xEE00656D69547472, v1, v3);
}

uint64_t sub_10013FE64()
{
  v2 = *v1;
  v2[7] = v0;

  if (!v0)
  {

    v4 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[3];

  return (_swift_task_switch)(sub_10013FFAC, v3, 0);
}

uint64_t sub_10013FFAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001401A4(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for Date();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  return (_swift_task_switch)(sub_1001402A0, a3, 0);
}

uint64_t sub_1001402A0()
{
  *(v0 + 56) = (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  Date.timeIntervalSinceReferenceDate.getter();
  v1 = Double.description.getter();
  v3 = v2;
  *(v0 + 64) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1001403C4;

  return sub_1000BA2B0(0x6F7065527473616CLL, 0xEE00656D69547472, v1, v3);
}

uint64_t sub_1001403C4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  if (!v0)
  {
    v6 = v2[5];
    v5 = v2[6];
    v7 = v2[3];
    v8 = v2[4];

    (*(v8 + 8))(v6, v7);
    (*(v5 + 16))(v5, 0);
    _Block_release(v2[6]);

    v9 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  v4 = v2[2];

  return (_swift_task_switch)(sub_1001405B4, v4, 0);
}

uint64_t sub_1001405B4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  (*(v4 + 8))(v2, v3);
  v5 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v5);

  _Block_release(*(v0 + 48));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001406A4()
{
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  sub_1000B8958();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001408D8(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return (_swift_task_switch)(sub_100140954, a2, 0);
}

uint64_t sub_100140954()
{
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  sub_1000B8958();

  (*(*(v0 + 24) + 16))(*(v0 + 24), 0);
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100140A80()
{
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  sub_1000B89A0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100140C9C(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return (_swift_task_switch)(sub_100140D18, a2, 0);
}

uint64_t sub_100140D18()
{
  v1 = *(v0 + 24);
  (*((swift_isaMask & **(v0 + 16)) + 0xB0))();
  sub_1000B89A0();

  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100140DE8(uint64_t a1, double a2)
{
  *(v3 + 56) = v2;
  *(v3 + 48) = a2;
  *(v3 + 40) = a1;
  return (_swift_task_switch)(sub_100140E10, v2, 0);
}

uint64_t sub_100140E10()
{
  *(v0 + 64) = sub_100143A58(_swiftEmptyArrayStorage);
  v1 = *(v0 + 56);
  *(v0 + 72) = xmmword_1002DC390;
  *(v0 + 88) = 0xE400000000000000;
  v2 = *((swift_isaMask & *v1) + 0x248);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_100140F84;

  return v5(1919247728, 0xE400000000000000);
}

uint64_t sub_100140F84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (!v1)
  {
    v7 = *((swift_isaMask & **(v3 + 56)) + 0x250) + **((swift_isaMask & **(v3 + 56)) + 0x250);
    v5 = swift_task_alloc();
    *(v3 + 120) = v5;
    *v5 = v3;
    v5[1] = sub_1001411C0;

    __asm { BRAA            X3, X16 }
  }

  v4 = *(v3 + 56);

  return (_swift_task_switch)(sub_100141924, v4, 0);
}

uint64_t sub_1001411C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (!v1)
  {
    v5 = *((swift_isaMask & **(v3 + 56)) + 0x1B8);

    v8 = v5 + *v5;
    v6 = swift_task_alloc();
    *(v3 + 144) = v6;
    *v6 = v3;
    v6[1] = sub_100141414;

    __asm { BRAA            X3, X16 }
  }

  v4 = *(v3 + 56);

  return (_swift_task_switch)(sub_10014193C, v4, 0);
}

uint64_t sub_100141414(char a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = *(v4 + 56);
    swift_bridgeObjectRelease_n();

    v6 = sub_100141954;
    v7 = v5;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 160) = a1 & 1;
    v6 = sub_100141580;
    v7 = v8;
  }

  return (_swift_task_switch)(v6, v7, 0);
}

unint64_t sub_100141580()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = type metadata accessor for CheckupData();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC13transparencyd11CheckupData_element];
  *v9 = v5;
  v9[1] = v4;
  *&v8[OBJC_IVAR____TtC13transparencyd11CheckupData_errorHistogram] = v3;
  *&v8[OBJC_IVAR____TtC13transparencyd11CheckupData_resultsArray] = v2;
  v8[OBJC_IVAR____TtC13transparencyd11CheckupData_aggregateResult] = v1;
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;

  v10 = objc_msgSendSuper2((v0 + 16), "init");
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 32) = v6;
  v12 = v0 + 32;
  result = sub_10000574C(v5, v4);
  v15 = *(v6 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v5) = v14;
  if (*(*(v0 + 64) + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v27 = result;
    sub_100143054();
    result = v27;
    v22 = *(v0 + 88);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_12:
    v28 = *(v0 + 80);
    v24 = *(v0 + 32);
    v24[(result >> 6) + 8] |= 1 << result;
    v29 = (v24[6] + 16 * result);
    *v29 = v28;
    v29[1] = v22;
    *(v24[7] + 8 * result) = v10;
    v30 = v24[2];
    v17 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v17)
    {
      __break(1u);
      return result;
    }

    v24[2] = v31;
    goto LABEL_14;
  }

  v20 = *(v0 + 80);
  v19 = *(v0 + 88);
  sub_100142DB0(v18, isUniquelyReferenced_nonNull_native);
  result = sub_10000574C(v20, v19);
  if ((v5 & 1) != (v21 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v22 = *(v0 + 88);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v23 = result;

  v24 = *v12;
  v25 = *(*v12 + 56);
  v26 = *(v25 + 8 * v23);
  *(v25 + 8 * v23) = v10;

LABEL_14:
  v32 = *(v0 + 72) + 1;
  if (*(v0 + 72) == 3)
  {
    v33 = *(v0 + 8);

    return v33(v24);
  }

  else
  {
    *(v0 + 64) = v24;
    *(v0 + 72) = v32;
    v34 = *(v0 + 56);
    v35 = &off_100322530 + 2 * v32;
    v36 = v35[4];
    *(v0 + 80) = v36;
    v37 = v35[5];
    *(v0 + 88) = v37;
    v38 = *((swift_isaMask & *v34) + 0x248);

    v40 = (v38 + *v38);
    v39 = swift_task_alloc();
    *(v0 + 96) = v39;
    *v39 = v0;
    v39[1] = sub_100140F84;

    return v40(v36, v37);
  }
}

uint64_t sub_100141B04(uint64_t a1, void *aBlock, uint64_t a3, double a4)
{
  v4[2] = a3;
  v4[3] = _Block_copy(aBlock);

  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_100141BC8;

  return sub_100140DE8(a1, a4);
}

uint64_t sub_100141BC8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for CheckupData();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_100141D64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_100141E28, v2, 0);
}

uint64_t sub_100141E28()
{
  v1 = v0[4];
  (*((swift_isaMask & *v1) + 0xB0))();
  (*((swift_isaMask & *v1) + 0x188))(60);
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_1000BB13C(v0[2], v0[3], v2);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100141FCC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for Date();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return (_swift_task_switch)(sub_100142098, v4, 0);
}

uint64_t sub_100142098()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*((swift_isaMask & *v1) + 0xB0))();
  (*((swift_isaMask & *v1) + 0x188))(v2);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = sub_1000BB5C4(*(v0 + 16), *(v0 + 24), v3, *(v0 + 32), *(v0 + 40));
  (*(v4 + 8))(v3, v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

void sub_100142248()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_10014228C()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

unsigned __int8 *sub_100142304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100142890(result, v5);
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
      result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_100142890(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100142910(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100142910(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100099E24(v9, 0), v12 = sub_100142A68(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

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
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100142A68(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100142C88(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
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
          result = _StringObject.sharedUTF8.getter();
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

    result = sub_100142C88(v12, a6, a7);
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

    result = String.UTF8View._foreignIndex(after:)();
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

unint64_t sub_100142C88(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
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

uint64_t sub_100142D04(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

Swift::Int sub_100142DB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&qword_100387888, &qword_1002DCB88);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

id sub_100143054()
{
  v1 = v0;
  sub_100095820(&qword_100387888, &qword_1002DCB88);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

        result = v20;
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

BOOL sub_1001431C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

id sub_1001432B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v11 - 8);
  v12 = objc_opt_self();
  v13 = a3;
  v14 = _convertErrorToNSError(_:)();
  v15 = [v12 analyticsErrorData:v14];

  if (v15)
  {
    v32 = a4;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = 0;
    v18 = [v16 dataWithJSONObject:isa options:0 error:&v33];

    v19 = v33;
    if (v18)
    {
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      static String.Encoding.utf8.getter();
      v15 = String.init(data:encoding:)();
      v24 = v23;

      sub_1000956CC(v20, v22);
    }

    else
    {
      v25 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v15 = 0;
      v24 = 0;
    }

    a4 = v32;
  }

  else
  {

    v24 = 0;
  }

  sub_1000AB050(a4, v10, &qword_100383FB0, &unk_1002D6690);
  v26 = type metadata accessor for KTEligibilityStatusResult(0);
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 2;
  v28 = &v27[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v28 = v15;
  *(v28 + 1) = v24;
  v29 = &v27[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v29 = a1;
  *(v29 + 1) = a2;
  sub_1000AB050(v10, &v27[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v34.receiver = v27;
  v34.super_class = v26;

  v30 = objc_msgSendSuper2(&v34, "init");
  sub_1000057C4(v10, &qword_100383FB0, &unk_1002D6690);
  return v30;
}

id sub_1001435FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v9 - 8);
  v10 = objc_opt_self();
  v11 = a3;
  v12 = _convertErrorToNSError(_:)();
  v13 = [v10 analyticsErrorData:v12];

  if (v13)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = 0;
    v16 = [v14 dataWithJSONObject:isa options:0 error:&v32];

    v17 = v32;
    if (v16)
    {
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      static String.Encoding.utf8.getter();
      v21 = String.init(data:encoding:)();
      v13 = v22;

      sub_1000956CC(v18, v20);
    }

    else
    {
      v23 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v21 = 0;
      v13 = 0;
    }
  }

  else
  {

    v21 = 0;
  }

  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = type metadata accessor for KTEligibilityStatusResult(0);
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 2;
  v27 = &v26[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v27 = v21;
  v27[1] = v13;
  v28 = &v26[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v28 = a1;
  *(v28 + 1) = a2;
  sub_1000AB050(v8, &v26[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v33.receiver = v26;
  v33.super_class = v25;

  v29 = objc_msgSendSuper2(&v33, "init");
  sub_1000057C4(v8, &qword_100383FB0, &unk_1002D6690);
  return v29;
}

uint64_t sub_1001439B4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100143A0C()
{
  result = qword_100384440;
  if (!qword_100384440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100384440);
  }

  return result;
}

unint64_t sub_100143A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100387888, &qword_1002DCB88);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000574C(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100143B60()
{
  result = qword_100387760;
  if (!qword_100387760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387760);
  }

  return result;
}

unint64_t sub_100143BB8()
{
  result = qword_100387768;
  if (!qword_100387768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387768);
  }

  return result;
}

unint64_t sub_100143C10()
{
  result = qword_100387770;
  if (!qword_100387770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387770);
  }

  return result;
}

void sub_100143C8C(uint64_t a1)
{
  sub_1000B7104(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100143D78(uint64_t a1)
{
  sub_1000B7104(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100143E14()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A0E9C;

  return sub_100141B04(v2, v5, v4, v3);
}

uint64_t sub_100143ED8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_100140C9C(v2, v3);
}

uint64_t sub_100143F84()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0E9C;

  return sub_1001408D8(v2, v3);
}

uint64_t sub_100144030()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_1001401A4(v2, v3, v4);
}

uint64_t sub_1001440E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A0E9C;

  return sub_10013FA48(v2, v3, v4, v6, v5);
}