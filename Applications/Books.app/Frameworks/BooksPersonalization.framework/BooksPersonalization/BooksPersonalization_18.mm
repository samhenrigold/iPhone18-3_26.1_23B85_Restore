uint64_t sub_138C64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_138CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_138D90()
{
  result = qword_22DB30;
  if (!qword_22DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB30);
  }

  return result;
}

unint64_t sub_138DE8()
{
  result = qword_22DB38;
  if (!qword_22DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB38);
  }

  return result;
}

unint64_t sub_138E40()
{
  result = qword_22DB40;
  if (!qword_22DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB40);
  }

  return result;
}

unint64_t sub_138E98()
{
  result = qword_22DB48;
  if (!qword_22DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB48);
  }

  return result;
}

unint64_t sub_138EF0()
{
  result = qword_22DB50;
  if (!qword_22DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB50);
  }

  return result;
}

unint64_t sub_138F48()
{
  result = qword_22DB58;
  if (!qword_22DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB58);
  }

  return result;
}

unint64_t sub_138FA0()
{
  result = qword_22DB60;
  if (!qword_22DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB60);
  }

  return result;
}

unint64_t sub_138FF8()
{
  result = qword_22DB68;
  if (!qword_22DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB68);
  }

  return result;
}

unint64_t sub_139050()
{
  result = qword_22DB70;
  if (!qword_22DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB70);
  }

  return result;
}

unint64_t sub_1390A8()
{
  result = qword_22DB78;
  if (!qword_22DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB78);
  }

  return result;
}

unint64_t sub_139100()
{
  result = qword_22DB80;
  if (!qword_22DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB80);
  }

  return result;
}

unint64_t sub_139158()
{
  result = qword_22DB88;
  if (!qword_22DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB88);
  }

  return result;
}

uint64_t sub_1391AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E6F69746172 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

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

uint64_t sub_139300()
{
  if (*v0)
  {
    return 0x746E756F63;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_13932C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_139400(uint64_t a1)
{
  v2 = sub_139604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13943C(uint64_t a1)
{
  v2 = sub_139604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionMembershipInfo.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22DB90, &qword_1CDB50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  sub_2698(a1, a1[3]);
  sub_139604();
  sub_1B5884();
  v11 = 0;
  sub_1B5534();
  if (!v2)
  {
    v10 = 1;
    sub_1B5534();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_139604()
{
  result = qword_22DB98;
  if (!qword_22DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB98);
  }

  return result;
}

double CollectionMembershipInfo.hash(into:)()
{
  v1 = v0[1];
  sub_1B5804(*v0);
  sub_1B5804(v1);
  return result;
}

Swift::Int CollectionMembershipInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1B5804(v1);
  sub_1B5804(v2);
  return sub_1B5844();
}

uint64_t CollectionMembershipInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22DBA0, &qword_1CDB58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_2698(a1, a1[3]);
  sub_139604();
  sub_1B5864();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1B53F4();
    v13 = 1;
    v10 = sub_1B53F4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_139890(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B57F4();
  sub_1B5804(v2);
  sub_1B5804(v3);
  return sub_1B5844();
}

uint64_t StoreBook.Origin.hash(into:)(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_1B40C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StoreBook.Origin(0);
  __chkstk_darwin(v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13B7D4(v1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_E50D4(v14, v7);
    sub_1B5804(1uLL);
    sub_43050(v7, v5, &qword_229528, &qword_1BC5A0);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_1B5814(0);
    }

    else
    {
      (*(v9 + 32))(v11, v5, v8);
      sub_1B5814(1u);
      sub_13B9B8(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_1B4754();
      (*(v9 + 8))(v11, v8);
    }

    return sub_42F48(v7, &qword_229528, &qword_1BC5A0);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1B5804(0);
    sub_13B9B8(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1B4754();
    return (*(v9 + 8))(v11, v8);
  }
}

__n128 StoreBook.finishedInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StoreBook(0) + 28));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

__n128 StoreBook.wantToReadInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StoreBook(0) + 40));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

__n128 StoreBook.samplesInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StoreBook(0) + 44));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

int *StoreBook.init(storeID:purchaseDate:highWaterMarkReadingProgress:finishedInfo:wantToReadInfo:lastEngagedIntervalSinceReferenceDate:finishedIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 16);
  v18 = *a6;
  v19 = a6[1];
  v20 = *(a6 + 16);
  v21 = sub_1B40C4();
  (*(*(v21 - 8) + 32))(a7, a2, v21);
  v22 = type metadata accessor for StoreBook.Origin(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(a7, 0, 1, v22);
  result = type metadata accessor for StoreBook(0);
  *(a7 + result[5]) = a1;
  v24 = a7 + result[6];
  *v24 = a3;
  *(v24 + 8) = a4 & 1;
  v25 = a7 + result[7];
  *v25 = v15;
  *(v25 + 8) = v16;
  *(v25 + 16) = v17;
  v26 = a7 + result[10];
  *v26 = v18;
  *(v26 + 8) = v19;
  *(v26 + 16) = v20;
  v27 = a7 + result[11];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  *(a7 + result[8]) = a8;
  *(a7 + result[9]) = a9;
  return result;
}

int *StoreBook.init(storeID:creationDate:highWaterMarkReadingProgress:finishedInfo:wantToReadInfo:lastEngagedIntervalSinceReferenceDate:finishedIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v14 = *a5;
  v15 = a5[1];
  v16 = *(a5 + 16);
  v17 = *a6;
  v18 = a6[1];
  v19 = *(a6 + 16);
  sub_E50D4(a2, a7);
  v20 = type metadata accessor for StoreBook.Origin(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(a7, 0, 1, v20);
  result = type metadata accessor for StoreBook(0);
  *(a7 + result[5]) = a1;
  v22 = a7 + result[6];
  *v22 = a3;
  *(v22 + 8) = a4 & 1;
  v23 = a7 + result[7];
  *v23 = v14;
  *(v23 + 8) = v15;
  *(v23 + 16) = v16;
  v24 = a7 + result[10];
  *v24 = v17;
  *(v24 + 8) = v18;
  *(v24 + 16) = v19;
  v25 = a7 + result[11];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  *(a7 + result[8]) = a8;
  *(a7 + result[9]) = a9;
  return result;
}

int *StoreBook.init(storeID:finishedInfo:wantToReadInfo:samplesInfo:lastEngagedIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 16);
  v15 = *a4;
  v16 = a4[1];
  v23 = *(a4 + 16);
  v17 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  result = type metadata accessor for StoreBook(0);
  *(a5 + result[5]) = a1;
  v19 = a5 + result[6];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a5 + result[7];
  *v20 = v9;
  *(v20 + 8) = v10;
  *(v20 + 16) = v11;
  v21 = a5 + result[10];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  v22 = a5 + result[11];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v23;
  *(a5 + result[8]) = a6;
  *(a5 + result[9]) = 0xBFF0000000000000;
  return result;
}

int *StoreBook.init(storeID:finishedInfo:wantToReadInfo:samplesInfo:finishedIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 16);
  v15 = *a4;
  v16 = a4[1];
  v23 = *(a4 + 16);
  v17 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  result = type metadata accessor for StoreBook(0);
  *(a5 + result[5]) = a1;
  v19 = a5 + result[6];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a5 + result[7];
  *v20 = v9;
  *(v20 + 8) = v10;
  *(v20 + 16) = v11;
  v21 = a5 + result[10];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  v22 = a5 + result[11];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v23;
  *(a5 + result[8]) = 0xBFF0000000000000;
  *(a5 + result[9]) = a6;
  return result;
}

void StoreBook.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoreBook.Origin(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B0C(&qword_22BB20, &qword_1C59E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  sub_43050(v2, &v26 - v9, &qword_22BB20, &qword_1C59E0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_13B858(v10, v7);
    sub_1B5814(1u);
    StoreBook.Origin.hash(into:)(a1);
    sub_13B8BC(v7);
  }

  v11 = type metadata accessor for StoreBook(0);
  sub_1B5834(*(v2 + v11[5]));
  v12 = v2 + v11[6];
  if (*(v12 + 8) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v13 = *v12;
    sub_1B5814(1u);
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    sub_1B5834(v14);
  }

  v15 = v2 + v11[7];
  if (*(v15 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v17 = *v15;
    v16 = *(v15 + 8);
    sub_1B5814(1u);
    sub_1B5804(v17);
    sub_1B5804(v16);
  }

  v18 = *(v2 + v11[8]);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  sub_1B5834(*&v18);
  v19 = *(v2 + v11[9]);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  sub_1B5834(*&v19);
  v20 = v2 + v11[10];
  if (*(v20 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v22 = *v20;
    v21 = *(v20 + 8);
    sub_1B5814(1u);
    sub_1B5804(v22);
    sub_1B5804(v21);
  }

  v23 = v2 + v11[11];
  if (*(v23 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v25 = *v23;
    v24 = *(v23 + 8);
    sub_1B5814(1u);
    sub_1B5804(v25);
    sub_1B5804(v24);
  }
}

Swift::Int sub_13A614(uint64_t (*a1)(void *))
{
  sub_1B57F4();
  a1(v3);
  return sub_1B5844();
}

Swift::Int sub_13A674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1B57F4();
  a3(v5);
  return sub_1B5844();
}

Swift::Int sub_13A6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1B57F4();
  a4(v6);
  return sub_1B5844();
}

BOOL sub_13A7A0(void *a1, uint64_t *a2)
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

void *sub_13A7D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_13A7FC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_13A8E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t StoreBookForDeduplication.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StoreBookForDeduplication.author.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall StoreBookForDeduplication.init(storeID:title:author:)(BooksPersonalization::StoreBookForDeduplication *__return_ptr retstr, Swift::UInt64 storeID, Swift::String title, Swift::String author)
{
  retstr->storeID = storeID;
  retstr->title = title;
  retstr->author = author;
}

uint64_t static StoreBookForDeduplication.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1B5604() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B5604();
}

uint64_t StoreBookForDeduplication.hash(into:)(uint64_t a1)
{
  sub_1B5834(*v1);
  sub_1B4884();

  return sub_1B4884();
}

Swift::Int StoreBookForDeduplication.hashValue.getter()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B5834(v1);
  sub_1B4884();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_13AB24(uint64_t a1)
{
  v2 = *v1;
  sub_1B57F4();
  sub_1B5834(v2);
  sub_1B4884();
  sub_1B4884();
  return sub_1B5844();
}

void __swiftcall NextInSeriesProcessorMetadata.init(storeID:seriesID:seriesSortKey:isOwned:)(BooksPersonalization::NextInSeriesProcessorMetadata *__return_ptr retstr, Swift::UInt64 storeID, Swift::UInt64_optional seriesID, Swift::Int64_optional seriesSortKey, Swift::Bool isOwned)
{
  retstr->storeID = storeID;
  retstr->seriesID.value = seriesID.value;
  retstr->seriesID.is_nil = seriesID.is_nil;
  *(&retstr->seriesSortKey.value + 7) = seriesSortKey.value;
  LOBYTE(retstr[1].storeID) = seriesSortKey.is_nil;
  BYTE1(retstr[1].storeID) = isOwned;
}

void NextInSeriesProcessorMetadata.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  sub_1B5834(*v0);
  if (v2 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v1);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    goto LABEL_6;
  }

  sub_1B5814(0);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5834(v3);
LABEL_6:
  sub_1B5814(v5);
}

Swift::Int NextInSeriesProcessorMetadata.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_1B57F4();
  sub_1B5834(v2);
  if (v3 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v1);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    goto LABEL_6;
  }

  sub_1B5814(0);
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5834(v4);
LABEL_6:
  sub_1B5814(v6);
  return sub_1B5844();
}

Swift::Int sub_13AD40(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  sub_1B57F4();
  sub_1B5834(v3);
  if (v4 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v2);
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    goto LABEL_6;
  }

  sub_1B5814(0);
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5834(v5);
LABEL_6:
  sub_1B5814(v7);
  return sub_1B5844();
}

uint64_t _s20BooksPersonalization29NextInSeriesProcessorMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v4 = *(a2 + 32);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return *(a1 + 33) ^ *(a2 + 33) ^ 1u;
}

uint64_t _s20BooksPersonalization9StoreBookV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreBook.Origin(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B0C(&qword_22BB20, &qword_1C59E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_2B0C(&qword_22DD88, &qword_1CE230);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v37 - v13;
  v15 = *(v12 + 56);
  sub_43050(a1, &v37 - v13, &qword_22BB20, &qword_1C59E0);
  sub_43050(a2, &v14[v15], &qword_22BB20, &qword_1C59E0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_42F48(v14, &qword_22BB20, &qword_1C59E0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_43050(v14, v10, &qword_22BB20, &qword_1C59E0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_13B8BC(v10);
LABEL_6:
    sub_42F48(v14, &qword_22DD88, &qword_1CE230);
    return 0;
  }

  sub_13B858(&v14[v15], v7);
  v17 = _s20BooksPersonalization9StoreBookV6OriginO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_13B8BC(v7);
  sub_13B8BC(v10);
  sub_42F48(v14, &qword_22BB20, &qword_1C59E0);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v18 = type metadata accessor for StoreBook(0);
  if (*(a1 + v18[5]) != *(a2 + v18[5]))
  {
    return 0;
  }

  v19 = v18[6];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 8);
  if (v21)
  {
    if (!v23)
    {
      return v23;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v18[7];
  v25 = (a1 + v24);
  v26 = (a2 + v24);
  v27 = *(a2 + v24 + 16);
  if (*(a1 + v24 + 16))
  {
    if (!*(a2 + v24 + 16))
    {
      return 0;
    }
  }

  else
  {
    v23 = 0;
    if ((v27 & 1) != 0 || *v25 != *v26 || v25[1] != v26[1])
    {
      return v23;
    }
  }

  if (*(a1 + v18[8]) != *(a2 + v18[8]) || *(a1 + v18[9]) != *(a2 + v18[9]))
  {
    return 0;
  }

  v28 = v18[10];
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  v31 = *(a2 + v28 + 16);
  if (*(a1 + v28 + 16))
  {
    if (!*(a2 + v28 + 16))
    {
      return 0;
    }
  }

  else
  {
    v23 = 0;
    if ((v31 & 1) != 0 || *v29 != *v30 || v29[1] != v30[1])
    {
      return v23;
    }
  }

  v32 = v18[11];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 16);
  v35 = a2 + v32;
  if (v34)
  {
    if ((*(v35 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(v35 + 16) & 1) != 0 || *v33 != *v35 || v33[1] != *(v35 + 8))
  {
    return 0;
  }

  return 1;
}

uint64_t _s20BooksPersonalization9StoreBookV6OriginO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v3 - 8);
  v35 = &v34 - v4;
  v5 = sub_2B0C(&qword_22DD90, &qword_1CE238);
  __chkstk_darwin(v5);
  v36 = &v34 - v6;
  v7 = sub_1B40C4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for StoreBook.Origin(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = sub_2B0C(&qword_22DD98, &unk_1CE240);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v34 - v21;
  v23 = *(v20 + 56);
  sub_13B7D4(a1, &v34 - v21);
  sub_13B7D4(v37, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13B7D4(v22, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *(v5 + 48);
      v25 = v36;
      sub_E50D4(v16, v36);
      sub_E50D4(&v22[v23], v25 + v24);
      v26 = *(v8 + 48);
      if (v26(v25, 1, v7) == 1)
      {
        if (v26(v25 + v24, 1, v7) == 1)
        {
          sub_42F48(v25, &qword_229528, &qword_1BC5A0);
LABEL_18:
          sub_13B8BC(v22);
          v27 = 1;
          return v27 & 1;
        }
      }

      else
      {
        v29 = v35;
        sub_43050(v25, v35, &qword_229528, &qword_1BC5A0);
        if (v26(v25 + v24, 1, v7) != 1)
        {
          v31 = v34;
          (*(v8 + 32))(v34, v25 + v24, v7);
          sub_13B9B8(&qword_229270, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v32 = sub_1B4784();
          v33 = *(v8 + 8);
          v33(v31, v7);
          v33(v29, v7);
          sub_42F48(v25, &qword_229528, &qword_1BC5A0);
          if (v32)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        (*(v8 + 8))(v29, v7);
      }

      sub_42F48(v25, &qword_22DD90, &qword_1CE238);
LABEL_14:
      sub_13B8BC(v22);
      goto LABEL_15;
    }

    sub_42F48(v16, &qword_229528, &qword_1BC5A0);
LABEL_9:
    sub_42F48(v22, &qword_22DD98, &unk_1CE240);
LABEL_15:
    v27 = 0;
    return v27 & 1;
  }

  sub_13B7D4(v22, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 8))(v18, v7);
    goto LABEL_9;
  }

  (*(v8 + 32))(v12, &v22[v23], v7);
  v27 = sub_1B4074();
  v28 = *(v8 + 8);
  v28(v12, v7);
  v28(v18, v7);
  sub_13B8BC(v22);
  return v27 & 1;
}

uint64_t sub_13B7D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13B858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13B8BC(uint64_t a1)
{
  v2 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_13B91C()
{
  result = qword_22DBA8;
  if (!qword_22DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBA8);
  }

  return result;
}

uint64_t sub_13B9B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_13BA4C()
{
  result = qword_22DBC0;
  if (!qword_22DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBC0);
  }

  return result;
}

unint64_t sub_13BAA4()
{
  result = qword_22DBC8;
  if (!qword_22DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBC8);
  }

  return result;
}

unint64_t sub_13BAFC()
{
  result = qword_22DBD0;
  if (!qword_22DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBD0);
  }

  return result;
}

unint64_t sub_13BB54()
{
  result = qword_22DBD8;
  if (!qword_22DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBD8);
  }

  return result;
}

unint64_t sub_13BBAC()
{
  result = qword_22DBE0;
  if (!qword_22DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBE0);
  }

  return result;
}

unint64_t sub_13BC04()
{
  result = qword_22DBE8;
  if (!qword_22DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBE8);
  }

  return result;
}

uint64_t sub_13BC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22BB20, &qword_1C59E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_13BD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22BB20, &qword_1C59E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_13BD84(uint64_t a1)
{
  sub_13BFE0(319, &qword_22DC58, type metadata accessor for StoreBook.Origin);
  if (v1 <= 0x3F)
  {
    sub_13BE74(319, &qword_22DC60, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_13BE74(319, &unk_22DC68, &type metadata for CollectionMembershipInfo);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_13BE74(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B4EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_13BEC0(uint64_t a1)
{
  sub_13BF34();
  if (v1 <= 0x3F)
  {
    sub_13BF7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_13BF34()
{
  if (!qword_22DD30)
  {
    v0 = sub_1B40C4();
    if (!v1)
    {
      atomic_store(v0, &qword_22DD30);
    }
  }
}

void sub_13BF7C()
{
  if (!qword_22DD38)
  {
    sub_13BFE0(0, &qword_22DD40, &type metadata accessor for Date);
    if (!v1)
    {
      atomic_store(v0, &qword_22DD38);
    }
  }
}

void sub_13BFE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B4EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SaleOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SaleOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

__n128 sub_13C09C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_13C0B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_13C104(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchStoreBooks(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_441B4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of StoreBooksServiceType.earliestStorePurchaseTimestamp()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchStoreBooksForDeduplication()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7E684;

  return v7(a1, a2);
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchHiddenPurchaseIDs()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7E684;

  return v7(a1, a2);
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchNextInSeriesProcessorMetadata(storeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7E684;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchNextInSeriesProcessorMetadata(seriesIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7E684;

  return v9(a1, a2, a3);
}

unint64_t sub_13C844()
{
  result = qword_22DD70;
  if (!qword_22DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DD70);
  }

  return result;
}

unint64_t sub_13C89C()
{
  result = qword_22DD78;
  if (!qword_22DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DD78);
  }

  return result;
}

unint64_t sub_13C8F4()
{
  result = qword_22DD80;
  if (!qword_22DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DD80);
  }

  return result;
}

BooksPersonalization::Methodology_optional __swiftcall Methodology.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2137B0;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

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

  *v3 = v7;
  return result;
}

unint64_t sub_13C9C0()
{
  result = qword_22DDA0;
  if (!qword_22DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DDA0);
  }

  return result;
}

uint64_t sub_13CA14@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_2137B0;
  v8._object = v3;
  v5 = sub_1B52E4(v4, v8);

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

  *a2 = v7;
  return result;
}

unint64_t sub_13CB28()
{
  result = qword_22DDA8;
  if (!qword_22DDA8)
  {
    sub_1CC1C(&qword_22DDB0, &qword_1CE340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DDA8);
  }

  return result;
}

uint64_t sub_13CB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_13CC7C();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_13CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_13CC7C();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

unint64_t sub_13CC7C()
{
  result = qword_22DDB8;
  if (!qword_22DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DDB8);
  }

  return result;
}

uint64_t InternalGenreRecommendationResponse.configuration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x460uLL);
  memcpy(a1, (v1 + 8), 0x460uLL);
  return sub_84BC0(__dst, v4);
}

uint64_t sub_13CD2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_13CD74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1096) = 0u;
    *(result + 1112) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1128) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 1128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of InternalGenreRecommendationServiceType.fetchRecommendedGenres(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BooksYouMightLikeServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_13D160(uint64_t a1, int a2)
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

uint64_t sub_13D1A8(uint64_t result, int a2, int a3)
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

uint64_t sub_13D208@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t ClientConverter.init(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B3B84();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B3C34();
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  __chkstk_darwin(v6);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1B3C14();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = __chkstk_darwin(v10);
  v64 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v48 - v15;
  v17 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  v19 = a1[3];
  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20;
  *(a2 + 24) = v19;
  *&v77 = v17;
  *(&v77 + 1) = v18;
  *&v78 = v20;
  *(&v78 + 1) = v19;
  sub_41BF8(v17, v18);
  sub_41BF8(v20, v19);
  CommonConverter.init(configuration:)(&v77, v81);
  v21 = v83;
  *(a2 + 64) = v82;
  *(a2 + 80) = v21;
  v22 = v85;
  *(a2 + 96) = v84;
  *(a2 + 112) = v22;
  v23 = v81[1];
  *(a2 + 32) = v81[0];
  *(a2 + 48) = v23;
  v65 = sub_1B3C84();
  v77 = v82;
  v78 = v83;
  v79 = v84;
  v80 = v85;
  v60 = sub_2B0C(&qword_22DDC0, &qword_1CE6B0);
  v24 = *(v11 + 72);
  v55 = *(v11 + 80);
  v58 = v24;
  v59 = ((v55 + 32) & ~v55) + 2 * v24;
  v57 = (v55 + 32) & ~v55;
  v25 = swift_allocObject();
  v56 = xmmword_1BFC80;
  *(v25 + 16) = xmmword_1BFC80;
  sub_41CDC(&v77, &v73);
  sub_1B3BE4();
  sub_1B3BF4();
  *&v73 = v25;
  v54 = sub_143274(&qword_22DDC8, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  v53 = sub_2B0C(&qword_22DDD0, &qword_1CE6B8);
  v52 = sub_13DAD4();
  sub_1B4F74();
  v26 = sub_1B3C64();
  v51 = *(v12 + 16);
  v51(v64, v16, v10);

  sub_1B3C24();
  v27 = swift_allocObject();
  v28 = v78;
  v27[1] = v77;
  v27[2] = v28;
  v29 = v80;
  v27[3] = v79;
  v27[4] = v29;
  *v9 = sub_41EC8;
  v9[1] = v27;
  v49 = enum case for JSONEncoder.DateEncodingStrategy.custom(_:);
  v30 = *(v67 + 104);
  v67 += 104;
  v50 = v30;
  v30(v9);
  sub_1B3C44();

  v31 = *(v12 + 8);
  v48 = v12 + 8;
  v31(v16, v10);
  *(a2 + 128) = v26;
  v32 = *(a2 + 80);
  v73 = *(a2 + 64);
  v74 = v32;
  v33 = *(a2 + 112);
  v75 = *(a2 + 96);
  v76 = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v56;
  sub_41CDC(&v73, &v69);
  sub_1B3BE4();
  sub_1B3C04();
  *&v69 = v34;
  sub_1B4F74();
  v35 = sub_1B3C64();
  v51(v64, v16, v10);

  sub_1B3C24();
  v36 = swift_allocObject();
  v37 = v74;
  v36[1] = v73;
  v36[2] = v37;
  v38 = v76;
  v36[3] = v75;
  v36[4] = v38;
  *v9 = sub_143F54;
  v9[1] = v36;
  v50(v9, v49, v66);
  sub_1B3C44();

  v31(v16, v10);
  *(a2 + 144) = v35;
  sub_1B3BD4();
  v39 = *(a2 + 80);
  v69 = *(a2 + 64);
  v70 = v39;
  v40 = *(a2 + 112);
  v71 = *(a2 + 96);
  v72 = v40;
  sub_41CDC(&v69, &v68);
  v41 = sub_1B3BB4();
  v42 = swift_allocObject();
  v43 = v70;
  v42[1] = v69;
  v42[2] = v43;
  v44 = v72;
  v42[3] = v71;
  v42[4] = v44;
  v46 = v61;
  v45 = v62;
  *v61 = sub_41E48;
  v46[1] = v42;
  (*(v45 + 104))(v46, enum case for JSONDecoder.DateDecodingStrategy.custom(_:), v63);

  sub_1B3B94();

  *(a2 + 136) = v41;
  return result;
}

unint64_t sub_13DAD4()
{
  result = qword_22DDD8;
  if (!qword_22DDD8)
  {
    sub_1CC1C(&qword_22DDD0, &qword_1CE6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DDD8);
  }

  return result;
}

uint64_t static APIClientHelpers.makeServerComponents(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2B0C(&qword_22C200, &unk_1CE6C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_1B3D54();
  v9 = sub_1B3D64();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v8, v9);
  }

  sub_42F48(v8, &qword_22C200, &unk_1CE6C0);
  type metadata accessor for ClientErrorPayload(0);
  sub_143274(&qword_22C208, type metadata accessor for ClientErrorPayload, &protocol conformance descriptor for ClientErrorPayload);
  swift_allocError();
  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t type metadata accessor for ClientErrorPayload(uint64_t a1)
{
  result = qword_22DEF0;
  if (!qword_22DEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static APIClientHelpers.createRequest(components:method:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1B3F34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3D34();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_42F48(v10, &qword_22C1F8, &qword_1CFD60);
    type metadata accessor for ClientErrorPayload(0);
    sub_143274(&qword_22C208, type metadata accessor for ClientErrorPayload, &protocol conformance descriptor for ClientErrorPayload);
    swift_allocError();
    v16 = v15;
    v17 = sub_1B3D64();
    (*(*(v17 - 8) + 16))(v16, a1, v17);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v19 = *(v12 + 32);
    v19(v14, v10, v11);
    v19(a4, v14, v11);
    v20 = type metadata accessor for ClientCurrency.Request(0);
    v21 = &a4[v20[7]];
    v25 = xmmword_1C6AD0;
    *v21 = xmmword_1C6AD0;
    v22 = &a4[v20[5]];
    *v22 = a2;
    *(v22 + 1) = a3;
    *&a4[v20[6]] = _swiftEmptyArrayStorage;
    v24 = *v21;
    v23 = *(v21 + 1);

    result = sub_85D94(v24, v23);
    *v21 = v25;
  }

  return result;
}

uint64_t static APIClientHelpers.validateContentTypeIfPresent(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);

  sub_41AEC(a1, a2, &v6);
}

uint64_t static APIClientHelpers.perform<A>(operation:for:makeRequest:makeCall:makeOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v12;
  *(v8 + 144) = v11;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a3;
  *(v8 + 104) = a4;
  *(v8 + 88) = a1;
  type metadata accessor for ClientCurrency.Request(0);
  *(v8 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_13E170, 0, 0);
}

uint64_t sub_13E170()
{
  (*(v0 + 104))();
  v1 = *(v0 + 96);
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  v8 = *(v0 + 120);
  v4 = swift_task_alloc();
  v5 = *(v0 + 152);
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  *(v0 + 184) = v4;
  *(v4 + 16) = v5;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_13E434;

  return sub_140A44(v0 + 56, &unk_1CE6E0, v3, sub_143060, v4);
}

uint64_t sub_13E434()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_13E86C;
  }

  else
  {

    v2 = sub_13E558;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_13E558()
{
  v1 = *(v0 + 160);
  v14 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  *(v0 + 208) = v5;
  *(v0 + 216) = v7;
  *(v0 + 224) = v6;
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  v9 = *(v0 + 136);
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  v10[2] = v2;
  v10[3] = v1;
  v10[4] = v3;
  v10[5] = v14;
  v10[6] = v4;
  v10[7] = v5;
  v10[8] = v7;
  v10[9] = v6;
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_13E6A4;
  v12 = *(v0 + 88);

  return static APIClientHelpers.wrappingErrors<A>(work:mapError:)(v12, &unk_1CE6F8, v8, sub_143158, v10);
}

uint64_t sub_13E6A4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_13E900;
  }

  else
  {

    v2 = sub_13E7C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_13E7C8()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[21];

  sub_41670(v1, v2);
  sub_14336C(v3, type metadata accessor for ClientCurrency.Request);

  v4 = v0[1];

  return v4();
}

uint64_t sub_13E86C()
{
  v1 = *(v0 + 168);

  sub_14336C(v1, type metadata accessor for ClientCurrency.Request);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_13E900()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[21];

  sub_41670(v2, v1);

  sub_14336C(v3, type metadata accessor for ClientCurrency.Request);

  v4 = v0[1];

  return v4();
}

uint64_t GeneralClientError.operationId.getter()
{
  v0 = sub_143198();

  return v0;
}

uint64_t GeneralClientError.input.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t GeneralClientError.input.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 40);

  return v6(v2 + v4, a1, AssociatedTypeWitness);
}

void GeneralClientError.response.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_143210(v4, v5, v6, v7);
}

__n128 GeneralClientError.response.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 44);
  sub_FA268(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  return result;
}

uint64_t GeneralClientError.underlyingError.getter(uint64_t a1)
{
  v1 = sub_14318C(a1);
  swift_errorRetain();
  return v1;
}

uint64_t GeneralClientError.underlyingError.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);

  *(v2 + v4) = a1;
  return result;
}

uint64_t GeneralClientError.init(operationId:input:request:response:underlyingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v15 = type metadata accessor for GeneralClientError(0, a7, a8, a4);
  v16 = v15[10];
  v17 = type metadata accessor for ClientCurrency.Request(0);
  v26 = a5[1];
  v27 = *a5;
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = &a9[v15[11]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = v15[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(&a9[v19], a3, AssociatedTypeWitness);
  sub_FA1F8(a4, &a9[v16]);
  sub_FA268(*v18, *(v18 + 1), *(v18 + 2), *(v18 + 3));
  *v18 = v27;
  *(v18 + 1) = v26;
  v31 = a6;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v29, v32);
    v22 = v33;
    v23 = v34;
    sub_2698(v32, v33);
    v24 = (*(v23 + 48))(v22, v23);

    sub_42F48(a4, &qword_22C1B0, &qword_1C6CE0);
    (*(v21 + 8))(a3, AssociatedTypeWitness);
    *&a9[v15[12]] = v24;
    return sub_2BF8(v32);
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_42F48(a4, &qword_22C1B0, &qword_1C6CE0);
    (*(v21 + 8))(a3, AssociatedTypeWitness);
    result = sub_42F48(v29, &qword_22C1C8, &qword_1CE710);
    *&a9[v15[12]] = a6;
  }

  return result;
}

uint64_t GeneralClientError.description.getter(int *a1)
{
  v2 = v1;
  v4 = 0x3E6C696E3CLL;
  v5 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v22 - v10;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1B5084(90);
  v25 = v22;
  v26 = v23;
  v27._countAndFlagsBits = 0xD00000000000001CLL;
  v27._object = 0x80000000001D80C0;
  sub_1B48D4(v27);
  sub_1B48D4(*v1);
  v28._countAndFlagsBits = 0x3A7475706E69202CLL;
  v28._object = 0xE900000000000020;
  sub_1B48D4(v28);
  (*(v9 + 16))(v11, v1 + a1[9], AssociatedTypeWitness);
  v29._countAndFlagsBits = sub_1B4834();
  sub_1B48D4(v29);

  v30._countAndFlagsBits = 0x736575716572202CLL;
  v30._object = 0xEB00000000203A74;
  sub_1B48D4(v30);
  sub_43050(v1 + a1[10], v7, &qword_22C1B0, &qword_1C6CE0);
  v12 = type metadata accessor for ClientCurrency.Request(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_42F48(v7, &qword_22C1B0, &qword_1C6CE0);
    v13 = 0xE500000000000000;
    v14._countAndFlagsBits = 0x3E6C696E3CLL;
  }

  else
  {
    v15 = ClientCurrency.Request.description.getter();
    v13 = v16;
    sub_14336C(v7, type metadata accessor for ClientCurrency.Request);
    v14._countAndFlagsBits = v15;
  }

  v14._object = v13;
  sub_1B48D4(v14);

  v31._countAndFlagsBits = 0x6E6F70736572202CLL;
  v31._object = 0xEC000000203A6573;
  sub_1B48D4(v31);
  v17 = v2 + a1[11];
  v18 = *(v17 + 1);
  if (v18)
  {
    v22 = *v17;
    v23 = v18;
    v24 = *(v17 + 1);
    v4 = ClientCurrency.Response.description.getter();
    v20 = v19;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v32._countAndFlagsBits = v4;
  v32._object = v20;
  sub_1B48D4(v32);

  v33._object = 0x80000000001D80E0;
  v33._countAndFlagsBits = 0xD000000000000014;
  sub_1B48D4(v33);
  v34._countAndFlagsBits = sub_13F6C8(a1);
  sub_1B48D4(v34);

  return v25;
}

uint64_t ClientCurrency.Request.description.getter()
{
  v1 = sub_1B4824();
  __chkstk_darwin(v1 - 8);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1B5084(51);
  v18._countAndFlagsBits = 0x203A4C5255;
  v2 = 0xE500000000000000;
  v18._object = 0xE500000000000000;
  sub_1B48D4(v18);
  v19._countAndFlagsBits = sub_1B3E94();
  sub_1B48D4(v19);

  v20._countAndFlagsBits = 0x646F6874656D202CLL;
  v20._object = 0xEA0000000000203ALL;
  sub_1B48D4(v20);
  v3 = type metadata accessor for ClientCurrency.Request(0);
  sub_1B48D4(*(v0 + v3[5]));
  v21._countAndFlagsBits = 0x726564616568202CLL;
  v21._object = 0xEB00000000203A73;
  sub_1B48D4(v21);
  v15[0] = *(v0 + v3[6]);
  v22._countAndFlagsBits = CommonCurrency.Headers.description.getter();
  sub_1B48D4(v22);

  v23._object = 0x80000000001D8100;
  v23._countAndFlagsBits = 0xD000000000000011;
  sub_1B48D4(v23);
  v4 = v0 + v3[7];
  v5 = *(v4 + 8);
  if (v5 >> 60 == 15)
  {
    v6._countAndFlagsBits = 0x3E6C696E3CLL;
  }

  else
  {
    v7 = *v4;
    sub_4161C(*v4, *(v4 + 8));
    sub_2FC40(256, v7, v5, v15);
    v9 = v15[0];
    v8 = v15[1];
    sub_1B4804();
    v10 = sub_1B47E4();
    if (v11 || (sub_1B4814(), v10 = sub_1B47E4(), v11))
    {
      v2 = v11;
      v12 = v10;
    }

    else
    {
      v12 = sub_1B3F54();
      v2 = v14;
    }

    sub_41670(v9, v8);
    v6._countAndFlagsBits = v12;
  }

  v6._object = v2;
  sub_1B48D4(v6);

  return v16;
}

uint64_t ClientCurrency.Response.description.getter()
{
  v1 = sub_1B4824();
  __chkstk_darwin(v1 - 8);
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B5084(33);

  v13 = 0x203A737574617473;
  v14 = 0xE800000000000000;
  v15._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v15);

  v16._countAndFlagsBits = 0x726564616568202CLL;
  v16._object = 0xEB00000000203A73;
  sub_1B48D4(v16);
  v12[0] = v2;
  v17._countAndFlagsBits = CommonCurrency.Headers.description.getter();
  sub_1B48D4(v17);

  v18._countAndFlagsBits = 0x203A79646F62202CLL;
  v18._object = 0xE800000000000000;
  sub_1B48D4(v18);
  sub_4161C(v3, v4);
  sub_2FC40(256, v3, v4, v12);
  v6 = v12[0];
  v5 = v12[1];
  sub_1B4804();
  v7 = sub_1B47E4();
  if (!v8)
  {
    sub_1B4814();
    v7 = sub_1B47E4();
    if (!v8)
    {
      v7 = sub_1B3F54();
    }
  }

  v9 = v7;
  v10 = v8;
  sub_41670(v6, v5);
  v19._countAndFlagsBits = v9;
  v19._object = v10;
  sub_1B48D4(v19);

  return v13;
}

uint64_t sub_13F6C8(uint64_t a1)
{
  v3 = sub_1B5134();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B0C(&qword_22DF28, &qword_1CEB88);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_1B5144();
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  v10 = __chkstk_darwin(v8);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v64 = &v58 - v13;
  v14 = sub_1B5104();
  v66 = *(v14 - 8);
  v67 = v14;
  __chkstk_darwin(v14);
  v65 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2B0C(&qword_22DF30, &qword_1CEB90);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v19 = sub_1B5114();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = (&v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v25 = &v58 - v24;
  v62 = a1;
  v63 = v1;
  v26 = *(v1 + *(a1 + 48));
  *&v70 = v26;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  v27 = swift_dynamicCast();
  v28 = *(v20 + 56);
  if (v27)
  {
    v28(v18, 0, 1, v19);
    (*(v20 + 32))(v25, v18, v19);
    (*(v20 + 16))(v23, v25, v19);
    v29 = (*(v20 + 88))(v23, v19);
    v30 = v20;
    if (v29 == enum case for DecodingError.typeMismatch(_:))
    {
      (*(v20 + 96))(v23, v19);
      v31 = sub_2B0C(&qword_22ADB8, &qword_1C2520);
      v32 = v65;
      v33 = v66;
      v34 = v67;
      (*(v66 + 32))(v65, v23 + *(v31 + 48), v67);
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_1B5084(23);

      strcpy(&v70, "typeMismatch ");
      HIWORD(v70) = -4864;
      v74._countAndFlagsBits = sub_1B58B4();
      sub_1B48D4(v74);

      v35._countAndFlagsBits = 0x206E69202D20;
      v35._object = 0xE600000000000000;
    }

    else
    {
      if (v29 != enum case for DecodingError.valueNotFound(_:))
      {
        if (v29 == enum case for DecodingError.keyNotFound(_:))
        {
          (*(v20 + 96))(v23, v19);
          v53 = *(sub_2B0C(&qword_22DF38, &qword_1CEB98) + 48);
          sub_264B8(v23, &v70);
          v54 = v65;
          v55 = v66;
          v56 = *(v66 + 32);
          v69 = v25;
          v57 = v67;
          v56(v65, v23 + v53, v67);
          v72 = 0;
          v73 = 0xE000000000000000;
          sub_1B5084(19);
          v82._countAndFlagsBits = 0x6F46746F4E79656BLL;
          v82._object = 0xEC00000020646E75;
          sub_1B48D4(v82);
          sub_2698(&v70, v71);
          sub_1B55E4();
          v83._countAndFlagsBits = 2108704;
          v83._object = 0xE300000000000000;
          sub_1B48D4(v83);
          v84._countAndFlagsBits = sub_1B50F4();
          sub_1B48D4(v84);

          v49 = v72;
          v50 = v73;
          v25 = v69;
          (*(v55 + 8))(v54, v57);
          sub_2BF8(&v70);
          goto LABEL_11;
        }

        if (v29 != enum case for DecodingError.dataCorrupted(_:))
        {
          strcpy(&v70, "unknown: ");
          WORD5(v70) = 0;
          HIDWORD(v70) = -385875968;
          swift_getWitnessTable();
          v85._countAndFlagsBits = sub_1B5794();
          sub_1B48D4(v85);

          v50 = *(&v70 + 1);
          v49 = v70;
          (*(v20 + 8))(v23, v19);
          goto LABEL_11;
        }

        (*(v20 + 96))(v23, v19);
        v32 = v65;
        v33 = v66;
        v34 = v67;
        (*(v66 + 32))(v65, v23, v67);
        *&v70 = 0;
        *(&v70 + 1) = 0xE000000000000000;
        sub_1B5084(18);

        *&v70 = 0xD000000000000010;
        *(&v70 + 1) = 0x80000000001D8230;
LABEL_10:
        v78._countAndFlagsBits = sub_1B50F4();
        sub_1B48D4(v78);

        v50 = *(&v70 + 1);
        v49 = v70;
        (*(v33 + 8))(v32, v34);
LABEL_11:
        *&v70 = 0;
        *(&v70 + 1) = 0xE000000000000000;
        sub_1B5084(22);

        *&v70 = 0xD000000000000014;
        *(&v70 + 1) = 0x80000000001D8210;
        v79._countAndFlagsBits = v49;
        v79._object = v50;
        sub_1B48D4(v79);

        v51 = v70;
        (*(v30 + 8))(v25, v19);
        return v51;
      }

      (*(v20 + 96))(v23, v19);
      v48 = sub_2B0C(&qword_22ADB8, &qword_1C2520);
      v32 = v65;
      v33 = v66;
      v34 = v67;
      (*(v66 + 32))(v65, v23 + *(v48 + 48), v67);
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_1B5084(21);

      strcpy(&v70, "valueNotFound ");
      HIBYTE(v70) = -18;
      v77._countAndFlagsBits = sub_1B58B4();
      sub_1B48D4(v77);

      v35._countAndFlagsBits = 2108704;
      v35._object = 0xE300000000000000;
    }

    sub_1B48D4(v35);
    goto LABEL_10;
  }

  v28(v18, 1, 1, v19);
  sub_42F48(v18, &qword_22DF30, &qword_1CEB90);
  *&v70 = v26;
  swift_errorRetain();
  v36 = v68;
  v37 = swift_dynamicCast();
  v38 = v69;
  v39 = *(v69 + 7);
  if (v37)
  {
    v39(v7, 0, 1, v36);
    v40 = v64;
    (*(v38 + 4))(v64, v7, v36);
    (*(v38 + 2))(v12, v40, v36);
    if ((*(v38 + 11))(v12, v36) == enum case for EncodingError.invalidValue(_:))
    {
      (*(v38 + 12))(v12, v36);
      v41 = *(sub_2B0C(&qword_229070, &qword_1BB450) + 48);
      sub_430B8(v12, &v70);
      v42 = v60;
      v43 = v12 + v41;
      v44 = v59;
      v45 = v61;
      (*(v60 + 32))(v59, v43, v61);
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1B5084(20);
      v75._countAndFlagsBits = 0x5664696C61766E69;
      v75._object = 0xED00002065756C61;
      sub_1B48D4(v75);
      sub_1B51F4();
      v76._countAndFlagsBits = 2108704;
      v76._object = 0xE300000000000000;
      sub_1B48D4(v76);
      sub_1B51F4();
      v47 = v72;
      v46 = v73;
      (*(v42 + 8))(v44, v45);
      sub_2BF8(&v70);
    }

    else
    {
      strcpy(&v70, "unknown: ");
      WORD5(v70) = 0;
      HIDWORD(v70) = -385875968;
      swift_getWitnessTable();
      v80._countAndFlagsBits = sub_1B5794();
      sub_1B48D4(v80);

      v46 = *(&v70 + 1);
      v47 = v70;
      (*(v38 + 1))(v12, v36);
    }

    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_1B5084(22);

    *&v70 = 0xD000000000000014;
    *(&v70 + 1) = 0x80000000001D81F0;
    v81._countAndFlagsBits = v47;
    v81._object = v46;
    sub_1B48D4(v81);

    v51 = v70;
    (*(v38 + 1))(v40, v36);
  }

  else
  {
    v39(v7, 1, 1, v36);
    sub_42F48(v7, &qword_22DF28, &qword_1CEB88);
    swift_getErrorValue();
    return sub_1B5794();
  }

  return v51;
}

uint64_t sub_1402D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ClientError.errorDescription.getter(a1, WitnessTable);
}

unint64_t ClientErrorPayload.description.getter()
{
  v1 = v0;
  v2 = sub_1B3D64();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ClientErrorPayload(0);
  __chkstk_darwin(v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_143EB0(v1, v8, type metadata accessor for ClientErrorPayload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = *v8;
      v13 = v8[1];
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_1B5084(27);

      v14 = "Unexpected content-type: ";
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v17 = *v8;
        v18 = v8[1];
        v20 = 0;
        v21 = 0xE000000000000000;
        sub_1B5084(46);

        v20 = 0xD00000000000001FLL;
        v21 = 0x80000000001D8120;
        v25._countAndFlagsBits = v17;
        v25._object = v18;
        sub_1B48D4(v25);

        v26._countAndFlagsBits = 0x73206D6F72662027;
        v26._object = 0xED0000676E697274;
        sub_1B48D4(v26);
        return v20;
      }

      v12 = *v8;
      v13 = v8[1];
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_1B5084(27);

      v14 = "Required header missing: ";
    }

    v15 = (v14 - 32) | 0x8000000000000000;
    v16 = 0xD000000000000019;
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v12 = *v8;
    v13 = v8[1];
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1B5084(22);

    v15 = 0x80000000001D81D0;
    v16 = 0xD000000000000014;
LABEL_11:
    v20 = v16;
    v21 = v15;
    v23._countAndFlagsBits = v12;
    v23._object = v13;
    sub_1B48D4(v23);

    return v20;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1B5084(26);

    v20 = 0xD000000000000018;
    v21 = 0x80000000001D81B0;
    sub_143274(qword_22DDE0, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
    v22._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v22);

    v10 = v20;
    (*(v3 + 8))(v5, v2);
    return v10;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1B5084(42);

  v20 = 0xD000000000000028;
  v21 = 0x80000000001D8180;
  swift_getErrorValue();
  v24._countAndFlagsBits = sub_1B5794();
  sub_1B48D4(v24);

  return v20;
}

uint64_t sub_140710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v27 = a4;
  v28 = a1;
  v29 = a3;
  v30 = a7;
  v10 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v25 - v15;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[2];
  v20 = a2[3];
  v21 = (*(a6 + 24))(a5, a6);
  v25 = v22;
  v26 = v21;
  (*(v14 + 16))(v16, v27, AssociatedTypeWitness);
  sub_43050(v28, v12, &qword_22C1B0, &qword_1C6CE0);
  *&v31 = v17;
  *(&v31 + 1) = v18;
  v32 = v19;
  v33 = v20;
  sub_143210(v17, v18, v19, v20);
  v23 = v29;
  swift_errorRetain();
  return GeneralClientError.init(operationId:input:request:response:underlyingError:)(v26, v25, v16, v12, &v31, v23, a5, a6, v30);
}

uint64_t sub_1408EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  v13 = type metadata accessor for ClientCurrency.Request(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v15 = type metadata accessor for GeneralClientError(0, a3, a4, v14);
  memset(v18, 0, sizeof(v18));
  a5[3] = v15;
  a5[4] = swift_getWitnessTable();
  v16 = sub_40528(a5);
  sub_140710(v12, v18, a1, a2, a3, a4, v16);
  return sub_42F48(v12, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_140A44(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v5;
  v7[1] = sub_140B40;

  return v9(a1);
}

uint64_t sub_140B40()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_140C74, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_140C74()
{
  (*(v0 + 56))(*(v0 + 80));
  v1 = *(v0 + 40);
  v2 = sub_2698((v0 + 16), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  if (sub_1B55C4())
  {
    (*(v3 + 8))(v4, v1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v5, v4, v1);
  }

  swift_willThrow();

  sub_2BF8((v0 + 16));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t static APIClientHelpers.wrappingErrors<A>(work:mapError:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v5;
  v7[1] = sub_140F08;

  return v9(a1);
}

uint64_t sub_140F08()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_143F50, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_14103C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_226C;

  return v9(a1, a4);
}

uint64_t sub_141144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - v13;
  sub_143EB0(a3, v20 - v13, type metadata accessor for ClientCurrency.Request);
  v15 = type metadata accessor for ClientCurrency.Request(0);
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v17 = type metadata accessor for GeneralClientError(0, a4, a5, v16);
  memset(v20, 0, sizeof(v20));
  a6[3] = v17;
  a6[4] = swift_getWitnessTable();
  v18 = sub_40528(a6);
  sub_140710(v14, v20, a1, a2, a4, a5, v18);
  return sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_1412C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1412F8, 0, 0);
}

uint64_t sub_1412F8()
{
  v7 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v5[0] = *(v0 + 40);
  v5[1] = v1;
  v6 = *(v0 + 56);
  v2(v5);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_141390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v26 = a2;
  v18 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v25 - v19;
  sub_143EB0(a3, &v25 - v19, type metadata accessor for ClientCurrency.Request);
  v21 = type metadata accessor for ClientCurrency.Request(0);
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  a9[3] = type metadata accessor for GeneralClientError(0, a8, a10, v22);
  a9[4] = swift_getWitnessTable();
  v23 = sub_40528(a9);

  sub_4161C(a6, a7);
  sub_140710(v20, &v27, a1, v26, a8, a10, v23);
  sub_FA268(v27, v28, v29, v30);
  return sub_42F48(v20, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t URLComponents.addQueryItem<A>(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a2;
  v7 = sub_1B4EA4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v19 - v10;
  v12 = *(a4 - 8);
  __chkstk_darwin(v9);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a3, v7);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v14, v11, a4);
  v16 = sub_1B3D14();
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  sub_2B0C(&qword_2294A0, &qword_1BC538);
  sub_1B3D04();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BCA80;
  sub_1B5594();
  sub_1B3CF4();

  v19[1] = v17;
  sub_606B4(v18);
  sub_1B3D24();
  return (*(v12 + 8))(v14, a4);
}

{
  v22 = a2;
  v23 = a5;
  v21 = a1;
  v20 = sub_1B4EA4();
  v7 = *(v20 - 8);
  v8 = __chkstk_darwin(v20);
  v10 = &v18 - v9;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v8);
  v24 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    if (sub_1B4B74())
    {
      v18 = v12;
      v14 = 0;
      v19 = (v11 + 16);
      v15 = (v7 + 8);
      while (1)
      {
        v16 = sub_1B4B44();
        sub_1B4B04();
        if (v16)
        {
          (*(v11 + 16))(v24, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14, a4);
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          result = sub_1B50A4();
          if (v18 != 8)
          {
            __break(1u);
            return result;
          }

          v25 = result;
          (*v19)(v24, &v25, a4);
          swift_unknownObjectRelease();
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_11:
            __break(1u);
          }
        }

        (*(v11 + 32))(v10, v24, a4);
        (*(v11 + 56))(v10, 0, 1, a4);
        URLComponents.addQueryItem<A>(name:value:)(v21, v22, v10, a4, v23);
        (*v15)(v10, v20);
        ++v14;
        if (v17 == sub_1B4B74())
        {
        }
      }
    }
  }

  return result;
}

uint64_t ClientConverter.common.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v10 = v1[4];
  v11 = v2;
  v4 = v1[7];
  v12 = v1[6];
  v3 = v12;
  v13 = v4;
  v6 = v1[3];
  v9[0] = v1[2];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1432BC(v9, &v8);
}

__n128 ClientConverter.common.setter(uint64_t a1)
{
  v3 = v1[5];
  v10[2] = v1[4];
  v10[3] = v3;
  v4 = v1[7];
  v10[4] = v1[6];
  v10[5] = v4;
  v5 = v1[3];
  v10[0] = v1[2];
  v10[1] = v5;
  sub_143318(v10);
  v6 = *(a1 + 48);
  v1[4] = *(a1 + 32);
  v1[5] = v6;
  v7 = *(a1 + 80);
  v1[6] = *(a1 + 64);
  v1[7] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v9;
  return result;
}

uint64_t ClientConverter.encoder.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t ClientConverter.decoder.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t ClientConverter.headerEncoder.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t ClientConverter.addQueryItem<A>(name:value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return URLComponents.addQueryItem<A>(name:value:)(a1, a2, a3, a5, a6);
}

{
  return URLComponents.addQueryItem<A>(name:value:)(a1, a2, a3, a5, a6);
}

uint64_t ClientConverter.addQueryItem(name:value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[2] = a2;
  v28[3] = a4;
  v28[1] = a1;
  v6 = type metadata accessor for DateConfiguration.EncoderInput(0);
  __chkstk_darwin(v6 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_1B40C4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[9];
  v34 = v4[8];
  v35 = v16;
  v17 = v4[11];
  v30 = v4[10];
  v31 = v17;
  v18 = v4[13];
  v29 = v4[12];
  v32 = v4[15];
  v33 = v18;
  sub_43050(a3, v11, &qword_229528, &qword_1BC5A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_42F48(v11, &qword_229528, &qword_1BC5A0);
  }

  (*(v13 + 32))(v15, v11, v12);
  (*(v13 + 16))(v8, v15, v12);
  sub_41BF8(v34, v35);
  v21 = v30;
  v20 = v31;
  sub_41BF8(v30, v31);

  v22 = v36;
  v23 = v29(v8);
  if (v22)
  {
    sub_14336C(v8, type metadata accessor for DateConfiguration.EncoderInput);
    (*(v13 + 8))(v15, v12);
    sub_41C08(v34, v35);
    sub_41C08(v21, v20);
  }

  else
  {
    v36 = v24;
    v29 = v23;
    sub_14336C(v8, type metadata accessor for DateConfiguration.EncoderInput);
    sub_41C08(v34, v35);
    sub_41C08(v21, v20);

    v25 = sub_1B3D14();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    sub_2B0C(&qword_2294A0, &qword_1BC538);
    sub_1B3D04();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BCA80;
    sub_1B3CF4();
    v37 = v26;
    sub_606B4(v27);
    sub_1B3D24();

    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t ClientConverter.getComplexHeaderRequired<A>(_:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X5>)
{
  v26 = a5;
  v12 = sub_1B4EA4();
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = *(a3 + 8);
  v24[0] = *a3;
  v24[1] = v15;
  v25 = *(a3 + 16);
  result = ClientConverter.getComplexHeaderOptional<A>(_:in:as:)(a1, a2, v24, a4, a6, (&v22 - v13));
  if (!v6)
  {
    v17 = v23;
    v18 = a2;
    v19 = v26;
    v20 = *(a4 - 8);
    if ((*(v20 + 48))(v14, 1, a4) == 1)
    {
      (*(v17 + 8))(v14, v12);
      sub_41710();
      swift_allocError();
      *v21 = a1;
      *(v21 + 8) = v18;
      *(v21 + 16) = 2;
      swift_willThrow();
    }

    else
    {
      return (*(v20 + 32))(v19, v14, a4);
    }
  }

  return result;
}

uint64_t ClientConverter.getComplexHeaderOptional<A>(_:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v26[2] = a5;
  v12 = sub_1B4824();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 8);
  v26[1] = *(v6 + 136);
  v26[5] = v16;

  v17._countAndFlagsBits = a1;
  v17._object = a2;
  object = CommonCurrency.Headers.firstValue(name:)(v17).value._object;

  if (!object)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  v26[0] = a4;
  sub_1B4804();
  v19 = sub_1B47D4();
  v21 = v20;

  (*(v13 + 8))(v15, v12);
  if (v21 >> 60 == 15)
  {
    sub_41710();
    swift_allocError();
    *v22 = a1;
    *(v22 + 8) = a2;
    *(v22 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v24 = v26[0];
    v25 = v26[3];
    sub_1B3BA4();
    result = sub_85D94(v19, v21);
    if (!v25)
    {
      return (*(*(v24 - 8) + 56))(a6, 0, 1, v24);
    }
  }

  return result;
}

uint64_t ClientConverter.getPrimitiveHeaderOptional<A>(_:in:as:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{

  CommonCurrency.Headers.getPrimitiveOptional<A>(_:as:)(a1, a3, a5);
}

uint64_t ClientConverter.getPrimitiveHeaderRequired<A>(_:in:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v11 = sub_1B4EA4();
  v22 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = a3[1];
  v23 = *a3;
  v24 = v14;
  v25 = *(a3 + 1);
  result = ClientConverter.getPrimitiveHeaderOptional<A>(_:in:as:)(a1, a4, &v21 - v12);
  if (!v6)
  {
    v16 = v22;
    v17 = a2;
    v18 = v26;
    v19 = *(a4 - 8);
    if ((*(v19 + 48))(v13, 1, a4) == 1)
    {
      (*(v16 + 8))(v13, v11);
      sub_41710();
      swift_allocError();
      *v20 = a1;
      *(v20 + 8) = v17;
      *(v20 + 16) = 2;
      swift_willThrow();
    }

    else
    {
      return (*(v19 + 32))(v18, v13, a4);
    }
  }

  return result;
}

uint64_t ClientConverter.getPrimitiveHeaderOptional(_:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v6 = v5;
  v9 = v4[8];
  v10 = v4[9];
  v11 = v4[10];
  v12 = v4[11];
  v19 = v4[14];
  v20.value._countAndFlagsBits = *(a3 + 8);

  v13._countAndFlagsBits = a1;
  v13._object = a2;
  v14 = CommonCurrency.Headers.firstValue(name:)(v13);

  if (v14.value._object)
  {
    v20 = v14;
    sub_41BF8(v9, v10);
    sub_41BF8(v11, v12);

    v19(&v20);

    sub_41C08(v9, v10);
    sub_41C08(v11, v12);

    if (v6)
    {
      return result;
    }

    v16 = v21;
    v17 = 0;
  }

  else
  {
    v16 = v21;
    v17 = 1;
  }

  v18 = sub_1B40C4();
  return (*(*(v18 - 8) + 56))(v16, v17, 1, v18);
}

uint64_t ClientConverter.addComplexHeader<A>(name:value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 112);
  v16[6] = *(v6 + 96);
  v16[7] = v7;
  v16[8] = *(v6 + 128);
  v17 = *(v6 + 144);
  v8 = *(v6 + 48);
  v16[2] = *(v6 + 32);
  v16[3] = v8;
  v9 = *(v6 + 80);
  v16[4] = *(v6 + 64);
  v16[5] = v9;
  v10 = *(v6 + 16);
  v16[0] = *v6;
  v16[1] = v10;
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = v16;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a4;
  sub_1B4EA4();
  v11 = sub_2B0C(&qword_229560, &unk_1BFC70);
  return sub_13D208(sub_1433CC, v13, v11, &type metadata for () + 8, &v14, &v15);
}

uint64_t sub_142A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v11 = sub_1B4824();
  __chkstk_darwin(v11 - 8);
  result = sub_1B3C54();
  if (v8)
  {
    goto LABEL_2;
  }

  v14 = result;
  v15 = v13;
  v29 = a3;
  sub_1B4804();
  v16 = sub_1B47E4();
  if (!v17)
  {
    sub_41710();
    v27 = swift_allocError();
    *v28 = a3;
    *(v28 + 8) = a4;
    *(v28 + 16) = 4;
    swift_willThrow();

    result = sub_41670(v14, v15);
    v8 = v27;
LABEL_2:
    *a8 = v8;
    return result;
  }

  v18 = v16;
  v19 = v17;
  v20 = *(type metadata accessor for ClientCurrency.Request(0) + 24);
  v21 = *(a5 + v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + v20) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_3324C(0, *(v21 + 2) + 1, 1, v21);
    *(a5 + v20) = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    *(a5 + v20) = sub_3324C((v23 > 1), v24 + 1, 1, v21);
  }

  result = sub_41670(v14, v15);
  v25 = *(a5 + v20);
  *(v25 + 16) = v24 + 1;
  v26 = (v25 + 32 * v24);
  v26[4] = v29;
  v26[5] = a4;
  v26[6] = v18;
  v26[7] = v19;
  return result;
}

uint64_t ClientConverter.addPrimitiveHeader(name:value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v34 = a1;
  v6 = type metadata accessor for DateConfiguration.EncoderInput(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_1B40C4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[9];
  v42 = v4[8];
  v43 = v16;
  v17 = v4[11];
  v38 = v4[10];
  v39 = v17;
  v18 = v4[13];
  v37 = v4[12];
  v40 = v4[15];
  v41 = v18;
  sub_43050(a3, v11, &qword_229528, &qword_1BC5A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_42F48(v11, &qword_229528, &qword_1BC5A0);
  }

  (*(v13 + 32))(v15, v11, v12);
  (*(v13 + 16))(v8, v15, v12);
  sub_41BF8(v42, v43);
  v21 = v38;
  v20 = v39;
  sub_41BF8(v38, v39);

  v22 = v44;
  v23 = v37(v8);
  if (v22)
  {
    sub_14336C(v8, type metadata accessor for DateConfiguration.EncoderInput);
    (*(v13 + 8))(v15, v12);
    sub_41C08(v42, v43);
    sub_41C08(v21, v20);
  }

  else
  {
    v37 = v24;
    v44 = v23;
    sub_14336C(v8, type metadata accessor for DateConfiguration.EncoderInput);
    sub_41C08(v42, v43);
    sub_41C08(v21, v20);

    v25 = *(type metadata accessor for ClientCurrency.Request(0) + 24);
    v26 = v35;
    v27 = *(v35 + v25);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + v25) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_3324C(0, *(v27 + 2) + 1, 1, v27);
      *(v26 + v25) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_3324C((v29 > 1), v30 + 1, 1, v27);
      *(v26 + v25) = v27;
    }

    result = (*(v13 + 8))(v15, v12);
    *(v27 + 2) = v30 + 1;
    v31 = &v27[32 * v30];
    v32 = v36;
    *(v31 + 4) = v34;
    *(v31 + 5) = v32;
    v33 = v37;
    *(v31 + 6) = v44;
    *(v31 + 7) = v33;
    *(v26 + v25) = v27;
  }

  return result;
}

uint64_t sub_14306C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226C;

  return sub_1412C8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1431A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_143210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_4161C(a3, a4);
  }
}

uint64_t sub_143274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_14336C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1433F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_143510(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_143C10(319);
    if (v2 <= 0x3F)
    {
      sub_143C68();
      if (v3 <= 0x3F)
      {
        sub_143CB8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1435E8(int *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1B3F34() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  if (v13 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v16 & 0xF8 | 7;
  v20 = v17 + 7;
  if (v18 >= a2)
  {
    goto LABEL_33;
  }

  v21 = ((((v15 + v19 + ((v14 + 16) & ~v14)) & ~v19) + (((((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v18 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v18 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if ((v13 & 0x80000000) != 0)
  {
    v31 = (a1 + v14 + 16) & ~v14;
    if (v7 == v18)
    {
      v32 = *(v6 + 48);

      return v32(v31, v7, AssociatedTypeWitness);
    }

    else
    {
      v33 = (v31 + v15 + v19) & ~v19;
      if (v10 < 0x7FFFFFFF)
      {
        v35 = *(((v20 + v33) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v35 >= 0xFFFFFFFF)
        {
          LODWORD(v35) = -1;
        }

        v34 = v35 + 1;
      }

      else
      {
        v34 = (*(v9 + 48))(v33);
      }

      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v30 = *(a1 + 1);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }
}

void sub_1438B4(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v35 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1B3F34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = v15 - 1;
  if (v9 > v15 - 1)
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = *(*(v10 - 8) + 64) + 7;
  v20 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = ((((v14 + v18 + ((v13 + 16) & ~v13)) & ~v18) + v20 + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 >= a3)
  {
    v24 = 0;
    v25 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((v14 + v18 + ((v13 + 16) & ~v13)) & ~v18) + v20 + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a3 - v17 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_22:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

LABEL_38:
        if ((v16 & 0x80000000) != 0)
        {
          v28 = (a1 + v13 + 16) & ~v13;
          if (v9 == v17)
          {
            v29 = *(v35 + 56);

            v29(v28, a2, v9, AssociatedTypeWitness);
          }

          else
          {
            v30 = ((v28 + v14 + v18) & ~v18);
            v31 = a2 - v15;
            if (a2 >= v15)
            {
              if ((((((v19 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
              {
                bzero(((v28 + v14 + v18) & ~v18), v20);
                *v30 = v31;
              }
            }

            else
            {
              v32 = (a2 + 1);
              if (v12 < 0x7FFFFFFF)
              {
                v34 = ((v30 + v19) & 0xFFFFFFFFFFFFFFF8);
                if ((v32 & 0x80000000) != 0)
                {
                  *v34 = (a2 - 0x7FFFFFFF);
                  v34[1] = 0;
                }

                else
                {
                  v34[1] = a2;
                }
              }

              else
              {
                v33 = *(v11 + 56);

                v33(v30, v32);
              }
            }
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }
  }

  if (((((v14 + v18 + ((v13 + 16) & ~v13)) & ~v18) + v20 + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((((v14 + v18 + ((v13 + 16) & ~v13)) & ~v18) + v20 + 39) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v27 = ~v17 + a2;
    bzero(a1, ((((v14 + v18 + ((v13 + 16) & ~v13)) & ~v18) + v20 + 39) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

void sub_143C10(uint64_t a1)
{
  if (!qword_22DE68)
  {
    type metadata accessor for ClientCurrency.Request(255);
    v1 = sub_1B4EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_22DE68);
    }
  }
}

void sub_143C68()
{
  if (!qword_22DE70)
  {
    v0 = sub_1B4EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_22DE70);
    }
  }
}

unint64_t sub_143CB8()
{
  result = qword_22DE78;
  if (!qword_22DE78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_22DE78);
  }

  return result;
}

unint64_t sub_143D1C(uint64_t a1)
{
  result = sub_1B3D64();
  if (v2 <= 0x3F)
  {
    result = sub_143CB8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_143DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_143DF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_143E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_143EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_143F88@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AttributeScorer();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_21C750;
  *a1 = result;
  return result;
}

uint64_t sub_144030@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2698(a1, a1[3]);
  v7 = a2(0);
  result = sub_1B4254();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1440B4(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (v7)
  {
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22DFD8, &qword_1CEBF8);
    result = sub_1B4264();
    if (v5)
    {
      type metadata accessor for DefaultGenreCollectionRecommendationService();
      v3 = swift_allocObject();
      sub_264B8(&v6, v3 + 16);
      sub_264B8(&v4, v3 + 56);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1441A4(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C060, &unk_1CEC20);
  result = sub_1B4254();
  if (result)
  {
    v3 = result;
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22A308, &unk_1C65B0);
    result = sub_1B4264();
    if (v6)
    {
      type metadata accessor for DelegatingGenreRecommendationService();
      v4 = swift_allocObject();
      *(v4 + 64) = _swiftEmptyDictionarySingleton;
      *(v4 + 16) = v3;
      sub_264B8(&v5, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_14429C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  result = sub_1B4264();
  if (v10)
  {
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_228FF0, qword_1BB3D0);
    result = sub_1B4264();
    if (v8)
    {
      v5 = type metadata accessor for SeedBookGenreRecommendationService();
      v6 = swift_allocObject();
      sub_264B8(&v9, v6 + 16);
      result = sub_264B8(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &off_21C730;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1443A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22DFF0, &unk_1CEC10);
  result = sub_1B4244();
  if (v10)
  {
    sub_2698(a1, a1[3]);
    result = sub_1B4244();
    if (v8)
    {
      v5 = type metadata accessor for CombinedGenreRecommendationService();
      v6 = swift_allocObject();
      sub_264B8(&v9, v6 + 16);
      result = sub_264B8(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &off_21C698;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1444DC(uint64_t a1, void *a2)
{
  sub_2B0C(&qword_22DFF0, &unk_1CEC10);
  v4 = 0;
  while (1)
  {
    v7 = *(&off_213850 + v4++ + 32);
    sub_2698(a2, a2[3]);
    sub_1B4244();

    if (!v23)
    {
      break;
    }

    sub_264B8(&v22, v24);
    swift_beginAccess();
    sub_404C4(v24, &v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    v10 = sub_3AE10(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_181AC8(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_3AE10(v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v18 = v9;
      if (v16)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v21 = v10;
    sub_1874BC();
    v10 = v21;
    v18 = v9;
    if (v16)
    {
LABEL_2:
      v5 = (v18[7] + 40 * v10);
      sub_2BF8(v5);
      sub_264B8(&v22, v5);
      goto LABEL_3;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    *(v18[6] + v10) = v7;
    sub_264B8(&v22, v18[7] + 40 * v10);
    v19 = v18[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v20;
LABEL_3:
    *(a1 + 64) = v18;
    swift_endAccess();
    result = sub_2BF8(v24);
    if (v4 == 5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_1447DC(uint64_t a1)
{
  v2 = sub_1B4274();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v19 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4344();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  sub_1B4304();

  v8 = enum case for Scope.singleton(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for Scope.singleton(_:), v4);
  sub_1B4214();

  v10 = *(v5 + 8);
  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22DFD8, &qword_1CEBF8);
  sub_1B4304();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22DFE0, &qword_1CEC00);
  sub_1B4304();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22DFE8, &qword_1CEC08);
  sub_1B4304();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4294();
  type metadata accessor for DefaultGenreCollectionRecommendationService();
  sub_1B42F4();

  v9(v7, v8, v4);
  v17 = v9;
  sub_1B4214();

  v10(v7, v4);
  v16[1] = a1;
  sub_1B4294();
  v18 = type metadata accessor for DelegatingGenreRecommendationService();
  sub_1B42F4();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4294();
  sub_2B0C(&qword_22DFF0, &unk_1CEC10);
  sub_1B4304();

  v11 = v17;
  v17(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4294();
  sub_1B4304();

  v11(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B42A4();
  sub_2698(v22, v22[3]);
  v13 = v19;
  v12 = v20;
  v14 = v21;
  (*(v20 + 104))(v19, enum case for CallbackScope.any(_:), v21);
  sub_1B4314();
  (*(v12 + 8))(v13, v14);
  return sub_2BF8(v22);
}

uint64_t ConfigReader.configuration<A>(preferredLanguageTags:configName:type:)(uint64_t a1, uint64_t x1_0, uint64_t x2_0)
{
  v9 = v8;
  v20 = *v7;
  if (!sub_1450A4(a1, x1_0, x2_0))
  {
    sub_145820();
    swift_allocError();
    v9 = 0;
LABEL_8:
    *v18 = v9;
    return swift_willThrow();
  }

  v10 = objc_opt_self();
  isa = sub_1B4694().super.isa;

  v20 = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:&v20];

  v13 = v20;
  if (!v12)
  {
    v19 = v13;
    v9 = sub_1B3E64();

    swift_willThrow();
    goto LABEL_7;
  }

  v14 = sub_1B3F94();
  v16 = v15;

  sub_1B3BD4();
  swift_allocObject();
  sub_1B3BC4();
  sub_1B3BA4();

  result = sub_41670(v14, v16);
  if (v8)
  {
LABEL_7:
    sub_145820();
    swift_allocError();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1450A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  if (*(*v3 + 16) && (v8 = sub_3A678(a2, a3), (v9 & 1) != 0))
  {
    sub_430C8(*(v7 + 56) + 32 * v8, v73);
    sub_2B0C(&qword_22E008, &qword_1CECE8);
    if (swift_dynamicCast())
    {
      v10 = v72;
    }

    else
    {
      v10 = 0;
    }

    if (!*(v7 + 16))
    {
      return v10;
    }
  }

  else
  {
    v10 = 0;
    if (!*(v7 + 16))
    {
      return v10;
    }
  }

  v11 = sub_3A678(0x65676175676E616CLL, 0xEF736769666E6F43);
  if ((v12 & 1) == 0)
  {
    return v10;
  }

  sub_430C8(*(v7 + 56) + 32 * v11, v73);
  sub_2B0C(&qword_22E000, &qword_1CECE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v10;
  }

  v69 = a1;
  v68 = v10;
  v13 = _swiftEmptyArrayStorage;
  v14 = sub_131038(_swiftEmptyArrayStorage);
  v15 = *(v72 + 16);
  if (v15)
  {
    v67 = 0;
    v70 = 0;
    v16 = v72 + 32;
    while (1)
    {
      v17 = *v16;
      if (*(*v16 + 16))
      {

        v18 = sub_3A678(0x65676175676E616CLL, 0xEB00000000676154);
        if (v19)
        {
          sub_430C8(*(v17 + 56) + 32 * v18, v73);
          if (swift_dynamicCast())
          {
            v71 = sub_1B4844();
            v21 = v20;

            if (!*(v17 + 16) || (v22 = sub_3A678(a2, a3), (v23 & 1) == 0))
            {

              goto LABEL_14;
            }

            sub_430C8(*(v17 + 56) + 32 * v22, v73);

            sub_2B0C(&qword_22E008, &qword_1CECE8);
            if (swift_dynamicCast())
            {

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v73[0] = v14;
              sub_5487C(v72, v71, v21, isUniquelyReferenced_nonNull_native);

              v14 = v73[0];
              sub_145894(45, 0xE100000000000000, v71, v21);
              sub_1B4964();
              v66 = sub_1B4EB4();
              v26 = v25;

              if (*(v14 + 16) && (sub_3A678(v66, v26), (v27 & 1) != 0))
              {
              }

              else
              {
                v28 = swift_isUniquelyReferenced_nonNull_native();
                v73[0] = v14;
                sub_5487C(v72, v66, v26, v28);

                v14 = v73[0];
              }

              if (!v70)
              {
                v67 = v71;
                v70 = v21;
                goto LABEL_14;
              }
            }
          }
        }
      }

LABEL_14:
      v16 += 8;
      if (!--v15)
      {
        goto LABEL_31;
      }
    }
  }

  v67 = 0;
  v70 = 0;
LABEL_31:

  v29 = *(v69 + 16);
  if (v29)
  {
    v73[0] = _swiftEmptyArrayStorage;
    sub_3747C(0, v29, 0);
    v13 = v73[0];
    v30 = v69 + 40;
    do
    {
      v31 = sub_1B4844();
      v73[0] = v13;
      v34 = v13[2];
      v33 = v13[3];
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v37 = v31;
        v38 = v32;
        sub_3747C((v33 > 1), v34 + 1, 1);
        v32 = v38;
        v31 = v37;
        v13 = v73[0];
      }

      v13[2] = v35;
      v36 = &v13[2 * v34];
      v36[4] = v31;
      v36[5] = v32;
      v30 += 16;
      --v29;
    }

    while (v29);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage[2];
    if (!v35)
    {
LABEL_48:

      if (*(v7 + 16))
      {
        v53 = sub_3A678(0xD000000000000013, 0x80000000001D8290);
        if (v54)
        {
          sub_430C8(*(v7 + 56) + 32 * v53, v73);
          if (swift_dynamicCast())
          {
            v55 = sub_1B4844();
            v57 = v56;

            if (*(v14 + 16))
            {
              v58 = sub_3A678(v55, v57);
              v60 = v59;

              if (v60)
              {
                v10 = *(*(v14 + 56) + 8 * v58);

                return v10;
              }
            }

            else
            {
            }
          }
        }
      }

      if (!v70)
      {

        return v68;
      }

      if (*(v14 + 16))
      {
        v62 = sub_3A678(v67, v70);
        v64 = v63;

        if (v64)
        {
          v10 = *(*(v14 + 56) + 8 * v62);

          return v10;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  v39 = 0;
  v40 = v13 + 5;
  v41 = v35 - 1;
  while (1)
  {
    v43 = *(v40 - 1);
    v42 = *v40;
    v44 = *(v14 + 16);

    if (v44)
    {
      v45 = sub_3A678(v43, v42);
      if (v46)
      {
        v61 = *(*(v14 + 56) + 8 * v45);

        goto LABEL_56;
      }
    }

    sub_145894(45, 0xE100000000000000, v43, v42);
    sub_1B4964();
    v47 = sub_1B4EB4();
    v49 = v48;

    if (!*(v14 + 16))
    {

      if (v41 == v39)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v50 = sub_3A678(v47, v49);
    v52 = v51;

    if (v52)
    {
      break;
    }

    if (v41 == v39)
    {
      goto LABEL_48;
    }

LABEL_46:
    ++v39;
    v40 += 2;
    if (v39 >= v13[2])
    {
      __break(1u);
      goto LABEL_48;
    }
  }

  v61 = *(*(v14 + 56) + 8 * v50);

LABEL_56:

  return v61;
}

unint64_t sub_145820()
{
  result = qword_22DFF8;
  if (!qword_22DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DFF8);
  }

  return result;
}

unint64_t sub_145894(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_1B4944() != a1 || v9 != a2)
  {
    v10 = sub_1B5604();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1B48A4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

BooksPersonalization::CollectionType_optional __swiftcall CollectionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213968;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t CollectionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x736B6F6F62;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x6974736567677573;
  }

  v4 = 0x756F59726F66;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

void sub_145AF8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x736B6F6F62;
  v5 = 0x80000000001D47A0;
  v6 = 0xD000000000000013;
  if (v2 != 5)
  {
    v6 = 0x6974736567677573;
    v5 = 0xEB00000000736E6FLL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x756F59726F66;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000000001D4780;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000000001D4740;
  v10 = 0xD000000000000017;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x80000000001D4760;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_145C04(uint64_t a1)
{
  sub_1B4884();
}

unint64_t sub_145DEC()
{
  result = qword_22E010;
  if (!qword_22E010)
  {
    sub_1CC1C(&qword_22E018, &qword_1CED28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E010);
  }

  return result;
}

unint64_t sub_145E54()
{
  result = qword_22E020;
  if (!qword_22E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E020);
  }

  return result;
}

unint64_t sub_145EAC()
{
  result = qword_22E028;
  if (!qword_22E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E028);
  }

  return result;
}

unint64_t sub_145F10()
{
  result = qword_22E030;
  if (!qword_22E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E030);
  }

  return result;
}

char *Array<A>.affinity.getter(char *result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 2);
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = &v1[56 * v2];
  while (1)
  {
    if (v3 == v2)
    {
      v12 = *(v4 + 2);
      if (!v12)
      {

        return 0;
      }

      if (v12 > 3)
      {
        v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
        v15 = (v4 + 48);
        v14 = 0.0;
        v16 = v12 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v14 = v14 + *(v15 - 2) + *(v15 - 1) + *v15 + v15[1];
          v15 += 4;
          v16 -= 4;
        }

        while (v16);
        if (v12 == v13)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v13 = 0;
        v14 = 0.0;
      }

      v17 = v12 - v13;
      v18 = &v4[8 * v13 + 32];
      do
      {
        v19 = *v18++;
        v14 = v14 + v19;
        --v17;
      }

      while (v17);
LABEL_21:

      return *&v14;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_23;
    }

    v7 = v5[80];
    ++v2;
    v5 += 56;
    if ((v7 & 1) == 0)
    {
      v8 = *(v5 + 1);
      v9 = exp2(-*(v5 + 2) / *v5);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_337AC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        result = sub_337AC((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v11 + 1;
      *&v4[8 * v11 + 32] = v8 * v9;
      v2 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *Array<A>.rawAffinity.getter(char *result)
{
  v1 = 0;
  v2 = *(result + 2);
  v3 = result + 80;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = &v3[56 * v1];
  while (1)
  {
    if (v2 == v1)
    {
      v11 = *(v4 + 2);
      if (!v11)
      {

        return 0;
      }

      if (v11 > 3)
      {
        v12 = v11 & 0x7FFFFFFFFFFFFFFCLL;
        v14 = (v4 + 48);
        v13 = 0.0;
        v15 = v11 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v13 = v13 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
          v14 += 4;
          v15 -= 4;
        }

        while (v15);
        if (v11 == v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v12 = 0;
        v13 = 0.0;
      }

      v16 = v11 - v12;
      v17 = &v4[8 * v12 + 32];
      do
      {
        v18 = *v17++;
        v13 = v13 + v18;
        --v16;
      }

      while (v16);
LABEL_21:

      return *&v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_23;
    }

    v7 = *v5;
    v5 += 56;
    ++v1;
    if ((v7 & 1) == 0)
    {
      v8 = *(v5 - 9);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_337AC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_337AC((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

__n128 FeatureAffinityInfo.datedRawAffinity.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[0];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

unint64_t sub_1462C0()
{
  v1 = 0x746867696577;
  v2 = 0x6566694C666C6168;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_146338@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1474B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_146360(uint64_t a1)
{
  v2 = sub_146FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14639C(uint64_t a1)
{
  v2 = sub_146FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FeatureAffinityInfo.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22E038, &qword_1CEE90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = v7;
  v19 = *(v1 + 48);
  sub_2698(a1, a1[3]);
  sub_146FC8();
  sub_1B5884();
  LOBYTE(v16) = 0;
  v8 = v15;
  sub_1B54F4();
  if (!v8)
  {
    v9 = v19;
    v11 = v13;
    v10 = v14;
    LOBYTE(v16) = 1;
    sub_1B5514();
    LOBYTE(v16) = 2;
    sub_1B5514();
    v16 = v10;
    v17 = v11;
    v18 = v9;
    v20 = 3;
    sub_14701C();
    sub_1B54B4();
  }

  return (*(v4 + 8))(v6, v3);
}

void FeatureAffinityInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_1B4884();
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  sub_1B5834(*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  sub_1B5834(*&v8);
  if (v6 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    sub_1B5834(v9);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    sub_1B5834(v10);
  }
}

Swift::Int FeatureAffinityInfo.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);
  v5[9] = *v0;
  v5[10] = v1;
  v3 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = v3;
  v8 = v2;
  sub_1B57F4();
  FeatureAffinityInfo.hash(into:)(v5);
  return sub_1B5844();
}

uint64_t FeatureAffinityInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22E050, &qword_1CEE98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_2698(a1, a1[3]);
  sub_146FC8();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_1B53B4();
  v11 = v10;
  v12 = v9;
  LOBYTE(v20) = 1;
  sub_1B53D4();
  v14 = v13;
  LOBYTE(v20) = 2;
  sub_1B53D4();
  v16 = v15;
  v22 = 3;
  sub_147070();
  sub_1B5374();
  (*(v6 + 8))(v8, v5);
  v18 = v21;
  v19 = v20;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v19;
  *(a2 + 48) = v18;

  sub_2BF8(a1);
}

Swift::Int sub_1469A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  v6[9] = *v1;
  v6[10] = v2;
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  v9 = v3;
  sub_1B57F4();
  FeatureAffinityInfo.hash(into:)(v6);
  return sub_1B5844();
}

uint64_t sub_1469FC()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x7974696E69666661;
  }
}

uint64_t sub_146A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974696E69666661 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000000001D82F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_146B20(uint64_t a1)
{
  v2 = sub_1470C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_146B5C(uint64_t a1)
{
  v2 = sub_1470C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DatedAffinity.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22E060, &qword_1CEEA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_2698(a1, a1[3]);
  sub_1470C4();
  sub_1B5884();
  v8[15] = 0;
  sub_1B5514();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B5514();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DatedAffinity.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22E070, &qword_1CEEA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_2698(a1, a1[3]);
  sub_1470C4();
  sub_1B5864();
  if (!v2)
  {
    v16 = 0;
    sub_1B53D4();
    v10 = v9;
    v15 = 1;
    sub_1B53D4();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return sub_2BF8(a1);
}

uint64_t _s20BooksPersonalization19FeatureAffinityInfoV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v8 || v2 != v7)
    {
      return 0;
    }

LABEL_14:
    if (v6)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      if (v4 != v9 || v5 != v10)
      {
        return 0;
      }
    }

    return 1;
  }

  v13 = sub_1B5604();
  result = 0;
  if ((v13 & 1) != 0 && v3 == v8 && v2 == v7)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_146FC8()
{
  result = qword_22E040;
  if (!qword_22E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E040);
  }

  return result;
}

unint64_t sub_14701C()
{
  result = qword_22E048;
  if (!qword_22E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E048);
  }

  return result;
}

unint64_t sub_147070()
{
  result = qword_22E058;
  if (!qword_22E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E058);
  }

  return result;
}

unint64_t sub_1470C4()
{
  result = qword_22E068;
  if (!qword_22E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E068);
  }

  return result;
}

unint64_t sub_14711C()
{
  result = qword_22E078;
  if (!qword_22E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E078);
  }

  return result;
}

unint64_t sub_147174()
{
  result = qword_22E080;
  if (!qword_22E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E080);
  }

  return result;
}

uint64_t sub_1471C8(uint64_t a1, int a2)
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

uint64_t sub_147210(uint64_t result, int a2, int a3)
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

unint64_t sub_1472A4()
{
  result = qword_22E088;
  if (!qword_22E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E088);
  }

  return result;
}

unint64_t sub_1472FC()
{
  result = qword_22E090;
  if (!qword_22E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E090);
  }

  return result;
}

unint64_t sub_147354()
{
  result = qword_22E098;
  if (!qword_22E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E098);
  }

  return result;
}

unint64_t sub_1473AC()
{
  result = qword_22E0A0;
  if (!qword_22E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E0A0);
  }

  return result;
}

unint64_t sub_147404()
{
  result = qword_22E0A8;
  if (!qword_22E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E0A8);
  }

  return result;
}

unint64_t sub_14745C()
{
  result = qword_22E0B0;
  if (!qword_22E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E0B0);
  }

  return result;
}

uint64_t sub_1474B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000001D82B0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6566694C666C6168 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D82D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1B5604();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_147624(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 320);
  v4 = *(v1 + 48);
  v41 = *(v1 + 96);
  v40 = *(v1 + 104);
  v39 = *(v1 + 112);
  v38 = *(v1 + 120);
  v37 = *(v1 + 128);
  v36 = *(v1 + 136);
  v35 = *(v1 + 144);
  v34 = *(v1 + 152);
  v33 = *(v1 + 160);
  v32 = *(v1 + 168);
  v31 = *(v1 + 176);
  v30 = *(v1 + 184);
  v29 = *(v1 + 192);
  v28 = *(v1 + 200);
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  v27 = v7 & 1;
  v8 = *(v1 + 296);
  v26 = *(v1 + 304);
  v25 = *(v1 + 312);
  v24 = *(v1 + 320);
  v23 = *(v1 + 328);
  v9 = v3 * *(v1 + 64) + v4;
  v10 = v3 * *(v1 + 280) + *(v1 + 264);
  v11 = *(a1 + 312) * *(v1 + 224) + *(v1 + 208);
  if (*(v1 + 56) < v9)
  {
    v9 = *(v1 + 56);
  }

  v42 = *(v1 + 80);
  if (v42)
  {
    v4 = v9;
  }

  v22 = v4;
  if (*(v1 + 272) < v10)
  {
    v10 = *(v1 + 272);
  }

  v12 = v10;
  if ((v8 & 1) == 0)
  {
    v12 = *(v1 + 264);
  }

  v21 = v12;
  if (*(v1 + 216) < v11)
  {
    v11 = *(v1 + 216);
  }

  if ((v5 & 1) == 0)
  {
    v11 = *(v1 + 208);
  }

  v13 = v11;
  v14 = (v5 != 255) & (v7 | (v11 < v6));
  v15 = _swiftEmptyArrayStorage;
  do
  {
    switch(*(&off_20E7A8 + v2 + 32))
    {
      case 1:
        v16 = v22;
        if (v42 != 255)
        {
          goto LABEL_42;
        }

        break;
      case 3:
        v16 = v41;
        if ((v40 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 4:
        v16 = v39;
        if ((v38 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 5:
        v16 = v37;
        if ((v36 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 6:
        v16 = v35;
        if ((v34 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 7:
        v16 = v33;
        if ((v32 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 8:
        v16 = v31;
        if ((v30 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 9:
        v16 = v29;
        if ((v28 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 0xA:
        v16 = v13;
        if (v14)
        {
          goto LABEL_42;
        }

        break;
      case 0xB:
        v16 = v6;
        if ((v27 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 0xC:
        v16 = v21;
        if (v8 != 255)
        {
          goto LABEL_42;
        }

        break;
      case 0xD:
        v16 = v26;
        if ((v25 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 0xE:
        v16 = v24;
        if ((v23 & 1) == 0)
        {
LABEL_42:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_337AC(0, *(v15 + 2) + 1, 1, v15);
          }

          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          if (v18 >= v17 >> 1)
          {
            v15 = sub_337AC((v17 > 1), v18 + 1, 1, v15);
          }

          *(v15 + 2) = v18 + 1;
          *&v15[8 * v18 + 32] = v16;
        }

        break;
      default:
        break;
    }

    ++v2;
  }

  while (v2 != 18);
  v19 = sub_BF11C(v15);

  return v19;
}

uint64_t BookHistory.isEmpty.getter()
{
  v1 = 0;
  v2 = v0[16];
  v3 = v0[32];
  v4 = v0[80];
  v5 = v0[104];
  v6 = v0[120];
  v7 = v0[136];
  v8 = v0[152];
  v9 = v0[168];
  v10 = v0[184];
  v11 = v0[200];
  v12 = v0[240];
  v13 = v0[256];
  v14 = v0[296];
  v15 = v0[312];
  v16 = v0[328];
  v17 = v0[344];
  v18 = v0[360];
  v19 = v0[376];
  while (2)
  {
    v20 = &off_20E7A8 + v1++;
    switch(v20[32])
    {
      case 1:
        if (v4 == 255)
        {
          goto LABEL_3;
        }

        return 0;
      case 2:
        if ((v3 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 3:
        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 4:
        if ((v6 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 5:
        if ((v7 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 6:
        if ((v8 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 7:
        if ((v9 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 8:
        if ((v10 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 9:
        if ((v11 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 10:
        if (v12 != 255)
        {
          return 0;
        }

        goto LABEL_3;
      case 11:
        if ((v13 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 12:
        if (v14 != 255)
        {
          return 0;
        }

        goto LABEL_3;
      case 13:
        if ((v15 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 14:
        if ((v16 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 15:
        if ((v17 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 16:
        if (v18)
        {
          goto LABEL_3;
        }

        return 0;
      case 17:
        if ((v19 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      default:
        if (!v2)
        {
          return 0;
        }

LABEL_3:
        if (v1 != 18)
        {
          continue;
        }

        return 1;
    }
  }
}

Swift::Bool __swiftcall BookHistory.hasValue(for:)(BooksPersonalization::BookHistory::Feature a1)
{
  switch(*a1)
  {
    case 1:
      v3 = v1[80];
      return v3 != 255;
    case 2:
      v2 = v1[32];
      return (v2 ^ 1) & 1;
    case 3:
      v2 = v1[104];
      return (v2 ^ 1) & 1;
    case 4:
      v2 = v1[120];
      return (v2 ^ 1) & 1;
    case 5:
      v2 = v1[136];
      return (v2 ^ 1) & 1;
    case 6:
      v2 = v1[152];
      return (v2 ^ 1) & 1;
    case 7:
      v2 = v1[168];
      return (v2 ^ 1) & 1;
    case 8:
      v2 = v1[184];
      return (v2 ^ 1) & 1;
    case 9:
      v2 = v1[200];
      return (v2 ^ 1) & 1;
    case 0xA:
      v3 = v1[240];
      return v3 != 255;
    case 0xB:
      v2 = v1[256];
      return (v2 ^ 1) & 1;
    case 0xC:
      v3 = v1[296];
      return v3 != 255;
    case 0xD:
      v2 = v1[312];
      return (v2 ^ 1) & 1;
    case 0xE:
      v2 = v1[328];
      return (v2 ^ 1) & 1;
    case 0xF:
      v2 = v1[344];
      return (v2 ^ 1) & 1;
    case 0x10:
      v2 = v1[360];
      return (v2 ^ 1) & 1;
    case 0x11:
      v2 = v1[376];
      return (v2 ^ 1) & 1;
    default:
      v2 = v1[16];
      return (v2 ^ 1) & 1;
  }
}

uint64_t sub_147C40(uint64_t a1)
{
  v2 = *(v1 + 152);
  if ((v2 & 1) == 0)
  {
LABEL_14:
    v31 = 1;
    return v31 & 1;
  }

  v3 = *(a1 + 64);
  v62 = *(a1 + 80);
  v63 = *(a1 + 72);
  v4 = *(a1 + 96);
  v60 = *(a1 + 104);
  v61 = *(a1 + 88);
  v5 = *(a1 + 312);
  v7 = *(v1 + 27);
  v6 = *(v1 + 28);
  v8 = *(v1 + 29);
  v9 = *(v1 + 240);
  v10 = *(v1 + 31);
  v11 = *(v1 + 256);
  v12 = *(v1 + 42);
  v13 = *(v1 + 344);
  v14 = *(v1 + 46);
  v15 = *(v1 + 376);
  v16 = *(v1 + 296);
  v17 = v1[7];
  v76 = v1[6];
  v77 = v17;
  v78 = v1[8];
  v79 = *(v1 + 18);
  v18 = v1[3];
  v72 = v1[2];
  v73 = v18;
  v19 = v1[5];
  v74 = v1[4];
  v75 = v19;
  v20 = v1[1];
  v70 = *v1;
  v71 = v20;
  v55 = v2;
  v80 = v2;
  v81 = *(v1 + 153);
  v82 = *(v1 + 169);
  *v83 = *(v1 + 185);
  v21 = *(v1 + 26);
  *&v83[15] = *(v1 + 25);
  v84 = v21;
  v52 = v21;
  v53 = v7;
  v85 = v7;
  v86 = v6;
  v54 = v6;
  v56 = v8;
  v87 = v8;
  v57 = v9;
  v58 = v11;
  v88 = v9;
  *v89 = *(v1 + 241);
  *&v89[3] = *(v1 + 61);
  v59 = v10;
  v90 = v10;
  v91 = v11;
  v22 = *(v1 + 273);
  v92 = *(v1 + 257);
  *v93 = v22;
  v23 = (v1 + 257);
  *&v93[15] = *(v1 + 36);
  v94 = v16;
  v24 = *(v1 + 313);
  v95 = *(v1 + 297);
  *v96 = v24;
  *&v96[15] = *(v1 + 41);
  v25 = v12;
  v97 = v12;
  v26 = v13;
  v98 = v13;
  v27 = *(v1 + 45);
  *v99 = *(v1 + 345);
  *&v99[15] = v27;
  v28 = v14;
  v100 = v14;
  v29 = v15;
  v101 = v15;
  v30 = sub_DF2A8();
  v31 = 0;
  if ((v30 & 1) == 0)
  {
    v32 = (v1 + 297);
    if (v16 == 255)
    {
      if (v57 == 255)
      {
        goto LABEL_10;
      }

      v33 = v52;
      if (v57)
      {
        v33 = v53;
        if (v5 * v54 + v52 <= v53)
        {
          v33 = v5 * v54 + v52;
        }
      }

      v31 = 0;
      if ((v58 & 1) == 0 && v33 >= v59)
      {
LABEL_10:
        v34 = v1[7];
        v76 = v1[6];
        v77 = v34;
        v78 = v1[8];
        v79 = *(v1 + 18);
        v35 = v1[3];
        v72 = v1[2];
        v73 = v35;
        v36 = v1[5];
        v74 = v1[4];
        v75 = v36;
        v37 = v1[1];
        v70 = *v1;
        v71 = v37;
        v80 = v55;
        v81 = *(v1 + 153);
        v82 = *(v1 + 169);
        *v83 = *(v1 + 185);
        *&v83[15] = *(v1 + 25);
        v84 = v52;
        v85 = v53;
        v86 = v54;
        v87 = v56;
        v88 = v57;
        *v89 = *(v1 + 241);
        *&v89[3] = *(v1 + 61);
        v90 = v59;
        v91 = v58;
        v38 = *(v1 + 273);
        v92 = *v23;
        *v93 = v38;
        *&v93[15] = *(v1 + 36);
        v94 = -1;
        v39 = *(v1 + 313);
        v95 = *v32;
        *v96 = v39;
        *&v96[15] = *(v1 + 41);
        v97 = v25;
        v98 = v26;
        v40 = *(v1 + 45);
        *v99 = *(v1 + 345);
        *&v99[15] = v40;
        v100 = v28;
        v101 = v29;
        if (v26)
        {
          v41 = 0;
        }

        else
        {
          v41 = v25;
        }

        v64 = v3;
        v65 = v63;
        v66 = v62;
        v67 = v61;
        v68 = v4;
        v69 = v60;
        sub_14A79C(v41, v63, &v64);
        if (v42)
        {
          goto LABEL_14;
        }

        v44 = v1[7];
        v76 = v1[6];
        v77 = v44;
        v78 = v1[8];
        v79 = *(v1 + 18);
        v45 = v1[3];
        v72 = v1[2];
        v73 = v45;
        v46 = v1[5];
        v74 = v1[4];
        v75 = v46;
        v47 = v1[1];
        v70 = *v1;
        v71 = v47;
        v80 = v55;
        v81 = *(v1 + 153);
        v82 = *(v1 + 169);
        *v83 = *(v1 + 185);
        *&v83[15] = *(v1 + 25);
        v84 = v52;
        v85 = v53;
        v86 = v54;
        v87 = v56;
        v88 = v57;
        *v89 = *(v1 + 241);
        *&v89[3] = *(v1 + 61);
        v90 = v59;
        v91 = v58;
        v48 = *(v1 + 273);
        v92 = *v23;
        *v93 = v48;
        *&v93[15] = *(v1 + 36);
        v94 = -1;
        v49 = *(v1 + 313);
        v95 = *v32;
        *v96 = v49;
        *&v96[15] = *(v1 + 41);
        v97 = v25;
        v98 = v26;
        v50 = *(v1 + 45);
        *v99 = *(v1 + 345);
        *&v99[15] = v50;
        v100 = v28;
        v101 = v29;
        if (v29)
        {
          v51 = 0;
        }

        else
        {
          v51 = v28;
        }

        v64 = v3;
        v65 = v63;
        v66 = v62;
        v67 = v61;
        v68 = v4;
        v69 = v60;
        sub_14A79C(v51, v62, &v64);
      }
    }
  }

  return v31 & 1;
}

char *BookHistory.affinity(with:)(__int128 *a1)
{
  BookHistory.internalAffinitySource(with:)(a1, v11);
  v1 = v12;
  if (v12 >> 1 == 0xFFFFFFFF)
  {
    return 0;
  }

  v3 = v11[0];
  v4 = v11[1];
  v6 = v11[2];
  v5 = v11[3];
  v8 = v11[4];
  v7 = v11[5];
  if ((v12 >> 62) > 2)
  {
    v9 = v11[0];
  }

  else
  {
    sub_2B0C(&qword_229488, &qword_1BC520);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BCA80;
    *(v9 + 32) = v3;
    *(v9 + 40) = v4;
    *(v9 + 48) = v6;
    *(v9 + 56) = v5;
    *(v9 + 64) = v8;
    *(v9 + 72) = v7;
    *(v9 + 80) = v1 & 1;
  }

  v10 = Array<A>.affinity.getter(v9);

  return v10;
}

uint64_t sub_1481B0@<X0>(double a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if (a3)
  {
    v11 = 0;
    v12 = 0xA300000000000000;
    result = 9732322;
  }

  else
  {
    v11 = a2;
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BCA80;
    *(v14 + 56) = &type metadata for Double;
    *(v14 + 64) = &protocol witness table for Double;
    *(v14 + 32) = a1;
    result = sub_1B47F4();
  }

  v15 = a1 * a5;
  *a4 = result;
  *(a4 + 8) = v12;
  if (a3)
  {
    v15 = 0.0;
  }

  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = v15;
  *(a4 + 40) = v11;
  *(a4 + 48) = a3 & 1;
  return result;
}

void *BookHistory.pruned(to:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 1);
  v123 = *v2;
  v5 = *(v2 + 16);
  v6 = *(v2 + 3);
  v102 = *(v2 + 32);
  v7 = *(v2 + 6);
  v91 = v2[7];
  v92 = v2[5];
  v89 = v2[9];
  v90 = v2[8];
  v124 = *(v2 + 80);
  v8 = v2[11];
  v9 = v2[12];
  v10 = *(v2 + 14);
  v86 = *(v2 + 120);
  v87 = *(v2 + 104);
  v11 = *(v2 + 16);
  v12 = *(v2 + 18);
  v82 = *(v2 + 152);
  v83 = *(v2 + 136);
  v80 = *(v2 + 168);
  v105 = *(v2 + 20);
  v107 = *(v2 + 22);
  v78 = *(v2 + 184);
  v76 = *(v2 + 200);
  v13 = *(v2 + 26);
  v97 = v2[28];
  v98 = v2[27];
  v14 = *(v2 + 33);
  v109 = *(v2 + 24);
  v111 = *(v2 + 31);
  v95 = v2[34];
  v96 = v2[29];
  v93 = v2[36];
  v94 = v2[35];
  v99 = *(v2 + 296);
  v100 = *(v2 + 240);
  v73 = *(v2 + 312);
  v74 = *(v2 + 256);
  v113 = *(v2 + 38);
  v115 = *(v2 + 40);
  v71 = *(v2 + 344);
  v72 = *(v2 + 328);
  v117 = v2[42];
  v119 = v2[44];
  v121 = v2[46];
  v69 = *(v2 + 376);
  v70 = *(v2 + 360);
  v15 = sub_2A978(0, a1);
  if (v15)
  {
    v16 = v4;
  }

  else
  {
    v16 = 0.0;
  }

  v104 = v16;
  v17 = !v15;
  v103 = sub_2A978(2u, a1);
  if (v103)
  {
    v18 = v6;
  }

  else
  {
    v18 = 0.0;
  }

  v101 = v18;
  if (!sub_2A978(1u, a1))
  {
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v7 = 0.0;
    v124 = 255;
  }

  v19 = v17 | v5;
  v20 = sub_2A978(3u, a1);
  v85 = v20;
  if (v20)
  {
    v21 = v8;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v9;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  v68 = v21;
  v23 = sub_2A978(4u, a1);
  if (v23)
  {
    v24 = v10;
  }

  else
  {
    v24 = 0.0;
  }

  v88 = v24;
  v25 = sub_2A978(5u, a1);
  if (v25)
  {
    v26 = v11;
  }

  else
  {
    v26 = 0.0;
  }

  v84 = v26;
  v27 = sub_2A978(6u, a1);
  if (v27)
  {
    v28 = v12;
  }

  else
  {
    v28 = 0.0;
  }

  v81 = v28;
  v79 = sub_2A978(7u, a1);
  v29 = v105;
  if (!v79)
  {
    v29 = 0.0;
  }

  v106 = v29;
  v77 = sub_2A978(8u, a1);
  v30 = v107;
  if (!v77)
  {
    v30 = 0.0;
  }

  v108 = v30;
  v75 = sub_2A978(9u, a1);
  v31 = v109;
  if (!v75)
  {
    v31 = 0.0;
  }

  v110 = v31;
  if (!sub_2A978(0xAu, a1))
  {
    v97 = 0;
    v98 = 0;
    v96 = 0;
    v100 = 255;
    v13 = 0.0;
  }

  v32 = sub_2A978(0xBu, a1);
  v33 = v111;
  if (!v32)
  {
    v33 = 0.0;
  }

  v112 = v33;
  if (!sub_2A978(0xCu, a1))
  {
    v94 = 0;
    v95 = 0;
    v93 = 0;
    v99 = 255;
    v14 = 0.0;
  }

  v34 = sub_2A978(0xDu, a1);
  v35 = v113;
  if (!v34)
  {
    v35 = 0.0;
  }

  v114 = v35;
  v36 = sub_2A978(0xEu, a1);
  v37 = v115;
  if (!v36)
  {
    v37 = 0.0;
  }

  v116 = v37;
  v38 = sub_2A978(0xFu, a1);
  v39 = v117;
  if (!v38)
  {
    v39 = 0;
  }

  v118 = v39;
  v40 = sub_2A978(0x10u, a1);
  v41 = v119;
  if (!v40)
  {
    v41 = 0;
  }

  v120 = v41;
  v42 = sub_2A978(0x11u, a1);
  if (v42)
  {
    v43 = v121;
  }

  else
  {
    v43 = 0;
  }

  if ((v19 & 1) == 0 && (v104 < 0.0 || v104 > 1.0))
  {
    sub_E1C20();
    swift_allocError();
    v45 = 0;
    *v44 = v123;
    *(v44 + 8) = v104;
    goto LABEL_73;
  }

  v141 = v19 & 1;
  if (((!v103 | v102) & 1) == 0 && (v101 < 0.0 || v101 > 1.0))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v101;
    v45 = 1;
    goto LABEL_73;
  }

  v140 = (!v103 | v102) & 1;
  if (v124 != 255 && v7 < 0.0)
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v7;
    v45 = 2;
LABEL_73:
    *(v44 + 16) = v45;
    swift_willThrow();
    if (qword_228358 != -1)
    {
      swift_once();
    }

    v52 = sub_1B4644();
    sub_50E58(v52, qword_260C80);
    swift_errorRetain();
    v53 = sub_1B4624();
    v54 = sub_1B4D94();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&dword_0, v53, v54, "failed to prune with error %@", v55, 0xCu);
      sub_42F48(v56, &qword_22B250, &qword_1C3850);
    }

    else
    {
    }

    goto LABEL_78;
  }

  v46 = !v23 | v86;
  v139 = (!v85 | v87) & 1;
  if (!(v46 & 1 | (v88 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v88;
    v45 = 4;
    goto LABEL_73;
  }

  v47 = !v25 | v83;
  v138 = v46 & 1;
  if (!(v47 & 1 | (v84 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v84;
    v45 = 5;
    goto LABEL_73;
  }

  v48 = !v27 | v82;
  v137 = v47 & 1;
  if (!(v48 & 1 | (v81 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v81;
    v45 = 6;
    goto LABEL_73;
  }

  v49 = !v79 | v80;
  v136 = v48 & 1;
  if (!(v49 & 1 | (v106 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v106;
    v45 = 7;
    goto LABEL_73;
  }

  v50 = !v77 | v78;
  v135 = v49 & 1;
  if (!(v50 & 1 | (v108 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v108;
    v45 = 8;
    goto LABEL_73;
  }

  v51 = !v75 | v76;
  v134 = v50 & 1;
  if (!(v51 & 1 | (v110 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v110;
    v45 = 9;
    goto LABEL_73;
  }

  v133 = v51 & 1;
  if (v100 != 255 && v13 < 0.0)
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v13;
    v45 = 10;
    goto LABEL_73;
  }

  v59 = !v32 | v74;
  if (!(v59 & 1 | (v112 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v112;
    v45 = 11;
    goto LABEL_73;
  }

  v132 = v59 & 1;
  if (v99 != 255 && v14 < 0.0)
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v14;
    v45 = 12;
    goto LABEL_73;
  }

  v60 = !v34 | v73;
  v61 = v114;
  if (!(v60 & 1 | (v114 >= 0.0)) || (v62 = !v36 | v72, v131 = v60 & 1, v61 = v116, !(v62 & 1 | (v116 >= 0.0))))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v61;
    v45 = 13;
    goto LABEL_73;
  }

  v63 = !v38 | v71;
  v130 = v62 & 1;
  if (!(v63 & 1 | (v118 >= 0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v118;
    v45 = 15;
    goto LABEL_73;
  }

  v64 = !v40 | v70;
  v129 = v63 & 1;
  if (!(v64 & 1 | (v120 >= 0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v120;
    v45 = 16;
    goto LABEL_73;
  }

  v65 = !v42 | v69;
  v128 = v64 & 1;
  if (!(v65 & 1 | (v43 >= 0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v43;
    v45 = 17;
    goto LABEL_73;
  }

  v66 = v65 & 1;
  v127 = v65 & 1;
  *__src = v123;
  *&__src[1] = v104;
  LOBYTE(__src[2]) = v141;
  *&__src[3] = v101;
  LOBYTE(__src[4]) = v140;
  __src[5] = v92;
  *&__src[6] = v7;
  __src[7] = v91;
  __src[8] = v90;
  __src[9] = v89;
  LOBYTE(__src[10]) = v124;
  __src[11] = v68;
  __src[12] = v67;
  LOBYTE(__src[13]) = v139;
  *&__src[14] = v88;
  LOBYTE(__src[15]) = v138;
  *&__src[16] = v84;
  LOBYTE(__src[17]) = v137;
  *&__src[18] = v81;
  LOBYTE(__src[19]) = v136;
  *&__src[20] = v106;
  LOBYTE(__src[21]) = v135;
  *&__src[22] = v108;
  LOBYTE(__src[23]) = v134;
  *&__src[24] = v110;
  LOBYTE(__src[25]) = v133;
  *&__src[26] = v13;
  __src[27] = v98;
  __src[28] = v97;
  __src[29] = v96;
  LOBYTE(__src[30]) = v100;
  *&__src[31] = v112;
  LOBYTE(__src[32]) = v132;
  *&__src[33] = v14;
  __src[34] = v95;
  __src[35] = v94;
  __src[36] = v93;
  LOBYTE(__src[37]) = v99;
  *&__src[38] = v114;
  LOBYTE(__src[39]) = v131;
  *&__src[40] = v116;
  LOBYTE(__src[41]) = v130;
  __src[42] = v118;
  LOBYTE(__src[43]) = v129;
  __src[44] = v120;
  LOBYTE(__src[45]) = v128;
  __src[46] = v43;
  LOBYTE(__src[47]) = v65 & 1;
  if ((BookHistory.isEmpty.getter() & 1) == 0)
  {
    *v125 = v123;
    *&v125[1] = v104;
    LOBYTE(v125[2]) = v141;
    *&v125[3] = v101;
    LOBYTE(v125[4]) = v140;
    v125[5] = v92;
    v125[7] = v91;
    v125[8] = v90;
    v125[9] = v89;
    LOBYTE(v125[10]) = v124;
    v125[11] = v68;
    v125[12] = v67;
    LOBYTE(v125[13]) = v139;
    *&v125[14] = v88;
    *&v125[6] = v7;
    LOBYTE(v125[15]) = v138;
    *&v125[16] = v84;
    LOBYTE(v125[17]) = v137;
    *&v125[18] = v81;
    LOBYTE(v125[19]) = v136;
    *&v125[20] = v106;
    LOBYTE(v125[21]) = v135;
    *&v125[22] = v108;
    LOBYTE(v125[23]) = v134;
    *&v125[24] = v110;
    LOBYTE(v125[25]) = v133;
    *&v125[26] = v13;
    v125[27] = v98;
    v125[28] = v97;
    v125[29] = v96;
    LOBYTE(v125[30]) = v100;
    *&v125[31] = v112;
    LOBYTE(v125[32]) = v132;
    *&v125[33] = v14;
    v125[34] = v95;
    v125[35] = v94;
    v125[36] = v93;
    LOBYTE(v125[37]) = v99;
    *&v125[38] = v114;
    LOBYTE(v125[39]) = v131;
    *&v125[40] = v116;
    LOBYTE(v125[41]) = v130;
    v125[42] = v118;
    LOBYTE(v125[43]) = v129;
    v125[44] = v120;
    LOBYTE(v125[45]) = v128;
    v125[46] = v43;
    LOBYTE(v125[47]) = v66;
    AuthorRecommendationSource.id.getter();
    memcpy(__src, v125, 0x179uLL);
    return memcpy(a2, __src, 0x179uLL);
  }

LABEL_78:
  sub_5CB94(__src);
  return memcpy(a2, __src, 0x179uLL);
}

void BookHistory.internalAffinitySource(with:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v185 = *a1;
  v186 = v4;
  v5 = a1[3];
  v187 = a1[2];
  v188 = v5;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = *(a1 + 12);
  v80 = *(a1 + 11);
  v81 = *(a1 + 13);
  v10 = *(a1 + 14);
  v11 = *(a1 + 15);
  v12 = *(a1 + 16);
  v13 = *(a1 + 17);
  v14 = a1[10];
  v181 = a1[9];
  v182 = v14;
  v15 = a1[12];
  v183 = a1[11];
  v184 = v15;
  v16 = *(a1 + 27);
  v79 = *(a1 + 26);
  v17 = a1[17];
  v177 = a1[16];
  v178 = v17;
  v179 = a1[18];
  v180 = *(a1 + 38);
  v18 = a1[15];
  v175 = a1[14];
  v176 = v18;
  v19 = *(a1 + 39);
  *(v174 + 11) = *(a1 + 347);
  v20 = a1[21];
  v173 = a1[20];
  v174[0] = v20;
  v21 = v2[1];
  v202 = *v2;
  v203 = v21;
  v22 = *(v2 + 11);
  v207 = *(v2 + 10);
  v23 = v2[4];
  v205 = v2[3];
  v206 = v23;
  v204 = v2[2];
  v96 = *(v2 + 12);
  v97 = v22;
  v99 = *(v2 + 104);
  v24 = *(v2 + 105);
  *(v201 + 3) = *(v2 + 27);
  v201[0] = v24;
  v25 = *(v2 + 14);
  v26 = *(v2 + 120);
  v27 = *(v2 + 121);
  *(v200 + 3) = *(v2 + 31);
  v200[0] = v27;
  v102 = *(v2 + 16);
  v103 = v25;
  LOBYTE(v25) = *(v2 + 136);
  v28 = *(v2 + 137);
  *(v199 + 7) = *(v2 + 18);
  v199[0] = v28;
  v87 = *(v2 + 152);
  v29 = *(v2 + 153);
  v30 = *(v2 + 169);
  v31 = *(v2 + 185);
  v32 = *(v2 + 26);
  *(v198 + 15) = *(v2 + 25);
  v198[0] = v31;
  v197 = v30;
  v196 = v29;
  v94 = *(v2 + 27);
  v95 = v32;
  v93 = *(v2 + 28);
  v86 = *(v2 + 29);
  v92 = *(v2 + 240);
  LODWORD(v28) = *(v2 + 241);
  *(v195 + 3) = *(v2 + 61);
  v195[0] = v28;
  v91 = *(v2 + 31);
  v33 = *(v2 + 256);
  v34 = *(v2 + 257);
  v35 = *(v2 + 273);
  *&v194[15] = *(v2 + 36);
  *v194 = v35;
  v193 = v34;
  v85 = *(v2 + 296);
  v36 = *(v2 + 297);
  v37 = *(v2 + 313);
  v101 = *(v2 + 42);
  *(v192 + 15) = *(v2 + 41);
  v192[0] = v37;
  v191 = v36;
  v89 = *(v2 + 344);
  v90 = v33;
  LODWORD(v28) = *(v2 + 345);
  *(v190 + 3) = *(v2 + 87);
  v190[0] = v28;
  v98 = *(v2 + 44);
  v100 = *(v2 + 360);
  LODWORD(v28) = *(v2 + 361);
  *(v189 + 3) = *(v2 + 91);
  v189[0] = v28;
  v88 = LOBYTE(v25);
  if ((LOBYTE(v25) & 1) == 0)
  {
    if ((v26 & 1) != 0 || v102 < v103)
    {
      LOBYTE(v132) = 0;
      *a2 = xmmword_1CF300;
      *(a2 + 16) = v12;
      *(a2 + 24) = v13;
      *(a2 + 32) = v12;
      *(a2 + 40) = v102;
      *(a2 + 48) = 0;
      *(a2 + 55) = 0;
      *(a2 + 53) = 0;
      *(a2 + 49) = 0;
      return;
    }

    goto LABEL_50;
  }

  if ((v26 & 1) == 0)
  {
LABEL_50:
    LOBYTE(v132) = 0;
    *a2 = xmmword_1CF300;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
    *(a2 + 40) = v103;
    *(a2 + 48) = 0;
    *(a2 + 53) = 0;
    *(a2 + 49) = 0;
    *(a2 + 55) = 64;
    return;
  }

  if ((v99 & 1) == 0)
  {
    sub_1481B0(v97, v96, 0, &v132, v79, v16);
    v56 = v132;
    v57 = v133;
    v58 = v134;
    LOBYTE(v132) = v135;
    v59 = v135 & 1 | 0x8000000000000000;
    *a2 = v56;
    *(a2 + 16) = v57;
    *(a2 + 32) = v58;
    *(a2 + 48) = v59;
    *(a2 + 56) = v97;
    *(a2 + 64) = v96;
    return;
  }

  v74 = a2;
  v38 = 0;
  v39 = v32;
  v40 = v19 * v93 + v32;
  v84 = *(v2 + 46);
  if (v40 > v94)
  {
    v40 = v94;
  }

  if (v92)
  {
    v39 = v40;
  }

  v76 = (v92 != 255) & (v33 | (v39 < v91));
  v83 = *(v2 + 376);
  v41 = _swiftEmptyArrayStorage;
  v75 = v80;
  v77 = v8;
  v78 = v7;
  v82 = v26;
  do
  {
    v137 = v207;
    *&v141[3] = *(v201 + 3);
    *v141 = v201[0];
    *v144 = v200[0];
    *&v144[3] = *(v200 + 3);
    *v147 = v199[0];
    *&v147[7] = *(v199 + 7);
    *&v151[15] = *(v198 + 15);
    *&v157[3] = *(v195 + 3);
    *v157 = v195[0];
    *&v161[15] = *&v194[15];
    *&v164[15] = *(v192 + 15);
    *&v167[3] = *(v190 + 3);
    *v167 = v190[0];
    *&v170[3] = *(v189 + 3);
    *v170 = v189[0];
    v127 = v180;
    v42 = *(&off_20EA98 + v38 + 32);
    v134 = v204;
    v135 = v205;
    v136 = v206;
    v132 = v202;
    v133 = v203;
    v138 = v97;
    v139 = v96;
    v140 = v99;
    v142 = v103;
    v143 = v26;
    v145 = v102;
    v146 = v88;
    v148 = v87;
    *v151 = v198[0];
    v150 = v197;
    v149 = v196;
    v152 = v95;
    v153 = v94;
    v154 = v93;
    v155 = v86;
    v156 = v92;
    v158 = v91;
    v159 = v90;
    v160 = v193;
    *v161 = *v194;
    v162 = v85;
    v163 = v191;
    *v164 = v192[0];
    v165 = v101;
    v166 = v89;
    v168 = v98;
    v169 = v100;
    v171 = v84;
    v172 = v83;
    v104 = v42;
    v131 = v42;
    v105[0] = v185;
    v105[1] = v186;
    v105[2] = v187;
    v105[3] = v188;
    v106 = v6;
    v107 = v7;
    v108 = v8;
    v109 = v80;
    v110 = v9;
    v111 = v81;
    v112 = v10;
    v113 = v11;
    v114 = v12;
    v115 = v13;
    v116 = v181;
    v117 = v182;
    v118 = v183;
    v119 = v184;
    v120 = v79;
    v121 = v16;
    v124 = v177;
    v125 = v178;
    v126 = v179;
    v122 = v175;
    v123 = v176;
    v128 = v19;
    *&v130[11] = *(v174 + 11);
    v129 = v173;
    *v130 = v174[0];
    v43 = BookHistory.affinityInfosExcludingDecline(for:with:)(&v131, v105);
    if ((v87 & 1) == 0)
    {
      goto LABEL_36;
    }

    v134 = v204;
    v135 = v205;
    v136 = v206;
    v132 = v202;
    v133 = v203;
    v137 = v207;
    v138 = v97;
    v139 = v96;
    v140 = v99;
    *&v141[3] = *(v201 + 3);
    *v141 = v201[0];
    v142 = v103;
    v143 = v82;
    *v144 = v200[0];
    *&v144[3] = *(v200 + 3);
    v145 = v102;
    v146 = v88;
    *v147 = v199[0];
    *&v147[7] = *(v199 + 7);
    v148 = v87;
    *&v151[15] = *(v198 + 15);
    *v151 = v198[0];
    v150 = v197;
    v149 = v196;
    v152 = v95;
    v153 = v94;
    v154 = v93;
    v155 = v86;
    v156 = v92;
    *&v157[3] = *(v195 + 3);
    *v157 = v195[0];
    v158 = v91;
    v159 = v90;
    *&v161[15] = *&v194[15];
    v160 = v193;
    *v161 = *v194;
    v162 = v85;
    *&v164[15] = *(v192 + 15);
    v163 = v191;
    *v164 = v192[0];
    v165 = v101;
    v166 = v89;
    *&v167[3] = *(v190 + 3);
    *v167 = v190[0];
    v168 = v98;
    v169 = v100;
    *&v170[3] = *(v189 + 3);
    *v170 = v189[0];
    v171 = v84;
    v172 = v83;
    if (sub_DF2A8() & 1 | (v85 != 255) | v76 & 1)
    {
      goto LABEL_41;
    }

    if (!(v89 & 1 | (v101 < 1)))
    {
      if (!v78)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        return;
      }

      if (!(v101 % v78))
      {
        v46 = round(pow(v9, (v101 / v78 - 1)) * v75);
        if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_69;
        }

        if (v46 <= -9.22337204e18)
        {
          goto LABEL_70;
        }

        if (v46 >= 9.22337204e18)
        {
          goto LABEL_71;
        }

        v47 = v46;
        if (v81 < v46)
        {
          v47 = v81;
        }

        if (v100)
        {
          if (v47 > 0)
          {
            goto LABEL_36;
          }
        }

        else if (v98 < v47)
        {
          goto LABEL_36;
        }
      }
    }

    if (!(v83 & 1 | (v84 < 1)))
    {
      if (!v77)
      {
        goto LABEL_68;
      }

      if (!(v84 % v77))
      {
        v44 = round(pow(v9, (v84 / v77 - 1)) * v75);
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_72;
        }

        if (v44 <= -9.22337204e18)
        {
          goto LABEL_73;
        }

        if (v44 >= 9.22337204e18)
        {
          goto LABEL_74;
        }

        v45 = v44;
        if (v81 < v44)
        {
          v45 = v81;
        }

        if (v100)
        {
          if (v45 < 1)
          {
            goto LABEL_41;
          }
        }

        else if (v98 >= v45)
        {
          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_3413C(0, *(v43 + 2) + 1, 1, v43);
        }

        v49 = *(v43 + 2);
        v48 = *(v43 + 3);
        if (v49 >= v48 >> 1)
        {
          v43 = sub_3413C((v48 > 1), v49 + 1, 1, v43);
        }

        *(v43 + 2) = v49 + 1;
        v50 = &v43[56 * v49];
        *(v50 + 4) = 1702195828;
        *(v50 + 5) = 0xE400000000000000;
        *(v50 + 6) = v6;
        *(v50 + 7) = 0x7FEFFFFFFFFFFFFFLL;
        *(v50 + 8) = v6;
        *(v50 + 9) = 0;
        v50[80] = 0;
      }
    }

LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_34008(0, v41[2] + 1, 1, v41);
    }

    v52 = v41[2];
    v51 = v41[3];
    v53 = v52 + 1;
    v8 = v77;
    v7 = v78;
    if (v52 >= v51 >> 1)
    {
      v55 = sub_34008((v51 > 1), v52 + 1, 1, v41);
      v8 = v77;
      v7 = v78;
      v41 = v55;
    }

    ++v38;
    v41[2] = v53;
    v54 = &v41[2 * v52];
    *(v54 + 32) = v104;
    v54[5] = v43;
    v26 = v82;
  }

  while (v38 != 8);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = v41 + 5;
  v64 = -1.79769313e308;
  while (2)
  {
    v65 = &v63[2 * v62];
    v66 = v62;
    while (1)
    {
      if (v66 > v52)
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v62 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_66;
      }

      v67 = *v65;
      v68 = *(v65 - 8);

      v70 = COERCE_DOUBLE(Array<A>.affinity.getter(v69));
      if ((v71 & 1) == 0)
      {
        v72 = v70;
        if (v64 < v70)
        {
          break;
        }
      }

      ++v66;
      v65 += 2;
      if (v62 == v53)
      {
        v68 = v61;
        v67 = v60;
        goto LABEL_61;
      }
    }

    v64 = v72;
    v60 = v67;
    v61 = v68;
    v63 = v41 + 5;
    if (v62 != v53)
    {
      continue;
    }

    break;
  }

LABEL_61:

  if (v67)
  {
    *v74 = v67;
    *(v74 + 8) = v68;
    v73 = 0xC000000000000000;
  }

  else
  {
    *(v74 + 16) = 0u;
    *(v74 + 32) = 0u;
    *v74 = 0u;
    v73 = 0x1FFFFFFFELL;
    *(v74 + 56) = 0;
    *(v74 + 64) = 0;
  }

  *(v74 + 48) = v73;
}

char *BookHistory.affinityInfos(for:with:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v4;
  v5 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v5;
  v6 = *(a2 + 64);
  memcpy(v16, (a2 + 72), sizeof(v16));
  v20 = v3;
  v7 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v7;
  v8 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v8;
  v18 = v6;
  memcpy(v19, (a2 + 72), sizeof(v19));
  v9 = BookHistory.affinityInfosExcludingDecline(for:with:)(&v20, v17);
  v15 = v6;
  if (sub_147C40(v14))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_3413C(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_3413C((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[56 * v11];
    *(v12 + 4) = 1702195828;
    *(v12 + 5) = 0xE400000000000000;
    *(v12 + 6) = v6;
    *(v12 + 7) = 0x7FEFFFFFFFFFFFFFLL;
    *(v12 + 8) = v6;
    *(v12 + 9) = 0;
    v12[80] = 0;
  }

  return v9;
}

char *BookHistory.affinityInfosExcludingDecline(for:with:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 144);
  v13 = *(a2 + 152);
  v14 = *(a2 + 160);
  v137 = *(a2 + 168);
  v16 = *(a2 + 176);
  v15 = *(a2 + 184);
  v17 = *(a2 + 224);
  v18 = *(a2 + 232);
  v19 = *(a2 + 240);
  v20 = *(a2 + 248);
  v21 = *(a2 + 256);
  v22 = *(a2 + 264);
  v24 = *(a2 + 312);
  v23 = *(a2 + 320);
  v25 = *v2;
  v26 = *(v2 + 8);
  v27 = *(v2 + 16);
  v28 = *(v2 + 24);
  v29 = *(v2 + 32);
  v212 = v29;
  v30 = *(v2 + 40);
  v31 = *(v2 + 48);
  v32 = *(v2 + 56);
  v33 = *(v2 + 64);
  v34 = *(v2 + 80);
  v35 = *(v2 + 160);
  v36 = *(v2 + 168);
  v211 = v36;
  v37 = *(v2 + 192);
  v38 = *(v2 + 200);
  v39 = *(v2 + 208);
  v40 = *(v2 + 216);
  v41 = *(v2 + 224);
  v42 = *(v2 + 240);
  v43 = *(v2 + 248);
  v44 = *(v2 + 256);
  v46 = *(v2 + 264);
  v45 = *(v2 + 272);
  v47 = *(v2 + 280);
  v48 = *(v2 + 296);
  v49 = *(v2 + 304);
  v50 = *(v2 + 312);
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        if (v42 == 255)
        {
          v68 = v20;
          v70 = 0.0;
          v69 = 2;
        }

        else
        {
          v67 = *(v2 + 208);
          if (v42)
          {
            v67 = *(v2 + 216);
            if (v24 * v41 + v39 <= v40)
            {
              v67 = v24 * v41 + v39;
            }
          }

          v68 = v20;
          if (v44 & 1 | (v67 < v43))
          {
            v69 = 1;
          }

          else
          {
            v69 = 2;
          }

          if (v44 & 1 | (v67 < v43))
          {
            v70 = v67;
          }

          else
          {
            v70 = 0.0;
          }
        }

        sub_2B0C(&qword_229488, &qword_1BC520);
        result = swift_allocObject();
        *(result + 1) = xmmword_1BCA80;
        v102 = 1702195828;
        if ((v69 & 1) == 0)
        {
          v102 = 0x65736C6166;
        }

        v103 = 0xE500000000000000;
        if (v69)
        {
          v103 = 0xE400000000000000;
        }

        v61 = v19;
        if ((v69 & 1) == 0)
        {
          v61 = 0;
        }

        if (v69 == 2)
        {
          v102 = 9732322;
          v103 = 0xA300000000000000;
        }

        *(result + 4) = v102;
        *(result + 5) = v103;
        v57 = v69 == 2;
        if (v69 == 2)
        {
          v60 = 0.0;
        }

        else
        {
          v60 = v70;
        }

        *(result + 6) = v19;
        *(result + 7) = v68;
        if (v69 == 2)
        {
          v61 = 0;
        }
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        result = swift_allocObject();
        *(result + 1) = xmmword_1BCA80;
        v57 = v50 & 1;
        if (v50)
        {
          v60 = 0.0;
        }

        else
        {
          v60 = v49;
        }

        v99 = 1702195828;
        if (v50)
        {
          v99 = 9732322;
        }

        v100 = 0xE400000000000000;
        if (v50)
        {
          v100 = 0xA300000000000000;
        }

        *(result + 4) = v99;
        *(result + 5) = v100;
        v61 = v21;
        *(result + 6) = v21;
        *(result + 7) = v22;
        if (v50)
        {
          v61 = 0;
        }
      }
    }

    else
    {
      if (v3 != 4)
      {
        if (v48 == 255)
        {
          v93 = v18;
          v46 = 0.0;
          v94 = 0xA300000000000000;
          v95 = 9732322;
        }

        else if ((v48 & 1) != 0 && (v46 = v23 * v47 + v46, v46 > v45))
        {
          v93 = v18;
          v94 = 0xE400000000000000;
          v95 = 1702195828;
          v46 = v45;
        }

        else
        {
          v93 = v18;
          v94 = 0xE400000000000000;
          v95 = 1702195828;
        }

        sub_2B0C(&qword_229488, &qword_1BC520);
        result = swift_allocObject();
        *(result + 1) = xmmword_1BCA80;
        v57 = v48 == 255;
        v104 = v17;
        if (v48 == 255)
        {
          v104 = 0;
        }

        *(result + 4) = v95;
        *(result + 5) = v94;
        *(result + 6) = v17;
        *(result + 7) = v93;
        *(result + 8) = v104;
        *(result + 9) = v46;
        goto LABEL_92;
      }

      sub_2B0C(&qword_229488, &qword_1BC520);
      result = swift_allocObject();
      *(result + 1) = xmmword_1BCA80;
      v57 = v38 & 1;
      v58 = 1702195828;
      if (v38)
      {
        v58 = 9732322;
      }

      v59 = 0xE400000000000000;
      if (v38)
      {
        v59 = 0xA300000000000000;
      }

      *(result + 4) = v58;
      *(result + 5) = v59;
      if (v38)
      {
        v60 = 0.0;
      }

      else
      {
        v60 = v37;
      }

      if (v38)
      {
        v61 = 0;
      }

      else
      {
        v61 = v14;
      }

      *(result + 6) = v14;
      *(result + 7) = v137;
    }

    goto LABEL_91;
  }

  v134 = v28;
  v135 = v14;
  v51 = v12;
  v52 = *(v2 + 176);
  v136 = *(v2 + 184);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v138 = v33;
      v62 = v24;
      v63 = v16;
      v64 = v15;
      sub_2B0C(&qword_229488, &qword_1BC520);
      result = swift_allocObject();
      v65 = 0.0;
      *(result + 1) = xmmword_1BCA80;
      v66 = 2;
      if (v34 != 255 && (v136 & 1) != 0)
      {
        v66 = (v38 & 1) != 0 ? 1 : 2;
        v65 = (v38 & 1) != 0 ? v31 : 0.0;
        if (v38 & 1) != 0 && (v34)
        {
          if (v62 * v138 + v31 <= v32)
          {
            v65 = v62 * v138 + v31;
            v66 = 1;
          }

          else
          {
            v66 = 1;
            v65 = v32;
          }
        }
      }

      v118 = 1702195828;
      if ((v66 & 1) == 0)
      {
        v118 = 0x65736C6166;
      }

      v119 = 0xE500000000000000;
      if (v66)
      {
        v119 = 0xE400000000000000;
      }

      v120 = v63;
      if ((v66 & 1) == 0)
      {
        v120 = 0;
      }

      v121 = v66 == 2;
      v122 = 9732322;
      if (!v121)
      {
        v122 = v118;
      }

      v123 = 0xA300000000000000;
      if (!v121)
      {
        v123 = v119;
      }

      *(result + 4) = v122;
      *(result + 5) = v123;
      if (v121)
      {
        v65 = 0.0;
        v124 = 0;
      }

      else
      {
        v124 = v120;
      }

      *(result + 6) = v63;
      *(result + 7) = v64;
      *(result + 8) = v124;
      *(result + 9) = v65;
      v57 = v121;
      goto LABEL_92;
    }

    v96 = *(v2 + 176);
    sub_2B0C(&qword_229488, &qword_1BC520);
    result = swift_allocObject();
    *(result + 1) = xmmword_1BCA80;
    v57 = v136 & 1;
    v97 = 1702195828;
    if (v136)
    {
      v97 = 9732322;
    }

    v98 = 0xE400000000000000;
    if (v136)
    {
      v98 = 0xA300000000000000;
    }

    *(result + 4) = v97;
    *(result + 5) = v98;
    if (v136)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = v96;
    }

    if (v136)
    {
      v61 = 0;
    }

    else
    {
      v61 = v51;
    }

    *(result + 6) = v51;
    *(result + 7) = v13;
LABEL_91:
    *(result + 8) = v61;
    *(result + 9) = v60;
LABEL_92:
    result[80] = v57;
    return result;
  }

  if (v3)
  {
    v71 = v35;
    *v198 = *(v2 + 257);
    *v204 = *(v2 + 297);
    v167 = v25;
    v168 = v26;
    LOBYTE(v169) = v27;
    *(&v169 + 1) = *(v2 + 17);
    HIDWORD(v169) = *(v2 + 20);
    LOBYTE(v171) = v29;
    *(&v171 + 1) = *(v2 + 33);
    HIDWORD(v171) = *(v2 + 36);
    v172 = v30;
    v173 = v31;
    v174 = v32;
    v176 = v34;
    *v183 = *(v2 + 169);
    *&v186[3] = *(v2 + 188);
    *v186 = *(v2 + 185);
    *&v189[3] = *(v2 + 204);
    *v189 = *(v2 + 201);
    *&v195[3] = *(v2 + 244);
    *v195 = *(v2 + 241);
    v178 = *(v2 + 97);
    v179 = *(v2 + 113);
    *v180 = *(v2 + 129);
    v177 = *(v2 + 81);
    v182 = v36;
    *&v183[3] = *(v2 + 172);
    v184 = v52;
    v185 = v136;
    v187 = v37;
    v188 = v38;
    v190 = v39;
    v191 = v40;
    v72 = *(v2 + 232);
    v192 = v41;
    v193 = v72;
    v194 = v42;
    v196 = v43;
    v197 = v44;
    *&v198[3] = *(v2 + 260);
    v73 = *(v2 + 288);
    v201 = v47;
    v202 = v73;
    v203 = v48;
    *&v204[3] = *(v2 + 300);
    v205 = v49;
    v206 = v50;
    v74 = *(v2 + 144);
    v75 = *(v2 + 313);
    v76 = *(v2 + 329);
    v77 = *(v2 + 361);
    v209 = *(v2 + 345);
    v210 = v77;
    v207 = v75;
    v208 = v76;
    v166 = 5;
    v145 = v12;
    v146 = v13;
    v147 = v135;
    v148 = v137;
    *&v165[15] = *(a2 + 359);
    v78 = *(a2 + 344);
    v164 = *(a2 + 328);
    *v165 = v78;
    v79 = *(a2 + 96);
    v80 = *(a2 + 112);
    v81 = *(a2 + 128);
    v83 = *(a2 + 64);
    v82 = *(a2 + 80);
    v84 = *(a2 + 192);
    v85 = *(a2 + 208);
    v86 = *(a2 + 272);
    v87 = *(a2 + 288);
    v161 = *(a2 + 304);
    v175 = v33;
    *&v180[15] = v74;
    v199 = v46;
    v200 = v45;
    *v139 = v5;
    *&v139[1] = v4;
    *&v139[2] = v7;
    *&v139[3] = v6;
    v170 = v134;
    v181 = v35;
    *&v139[4] = v8;
    *&v139[5] = v9;
    *&v139[6] = v10;
    *&v139[7] = v11;
    v88 = v11;
    v142 = v79;
    v143 = v80;
    v144 = v81;
    v141 = v82;
    v140 = v83;
    v149 = v16;
    v150 = v15;
    v151 = v84;
    v152 = v85;
    v153 = v17;
    v154 = v18;
    v155 = v19;
    v156 = v20;
    v157 = v21;
    v158 = v22;
    v159 = v86;
    v160 = v87;
    v162 = v24;
    v163 = v23;
    v89 = BookHistory.affinityInfos(for:with:)(&v166, v139);
    if (v212 & 1) != 0 || (v211)
    {
      v90 = 0.0;
      v91 = 0;
      v92 = 1;
    }

    else
    {
      v92 = 0;
      if (v9 > v134)
      {
        v110 = v8 * v134;
      }

      else
      {
        v110 = v8 + v10;
      }

      v90 = v110;
      v91 = v71;
    }

    sub_1481B0(v90, v91, v92, &v167, 1.0, v88);
    v111 = v168;
    if ((LOBYTE(v173) & 1) == 0)
    {
      v112 = v167;
      v113 = v169;
      v114 = v170;
      v115 = v171;
      v116 = v172;
      sub_2B0C(&qword_229488, &qword_1BC520);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_1BCA80;
      *(v117 + 32) = v112;
      *(v117 + 40) = v111;
      *(v117 + 48) = v113;
      *(v117 + 56) = v114;
      *(v117 + 64) = v115;
      *(v117 + 72) = v116;
      *(v117 + 80) = 0;
      v167 = v89;
      sub_60824(v117);
      return v167;
    }

    goto LABEL_143;
  }

  if (*(v2 + 184))
  {
    if (*(v2 + 200))
    {
      if (v34 == 255)
      {
        return _swiftEmptyArrayStorage;
      }

      v53 = v16;
      v54 = v15;
      if (v34)
      {
        v55 = v24 * v33;
        if (v55 + v31 <= v32)
        {
          v32 = v55 + v31;
        }
      }

      else
      {
        v32 = v31;
      }

      if (v36)
      {
        v105 = *&v32;
      }

      else
      {
        v105 = v35;
      }

      v106 = 1.0;
      v101 = 0x80;
      goto LABEL_137;
    }

    v101 = 0;
    v12 = v135;
    v13 = v137;
    v52 = v37;
  }

  else
  {
    v101 = 64;
  }

  if (v36)
  {
    v105 = *&v52;
  }

  else
  {
    v105 = v35;
  }

  if (v34 != 255)
  {
    v106 = 1.0;
    if (!v30)
    {
      v32 = v52;
      v54 = v13;
      v53 = v12;
LABEL_137:
      v108 = 0;
      v125 = v5 * v106;
      v126 = v5 + v7;
      if (v4 > v106)
      {
        v127 = v125;
      }

      else
      {
        v127 = v126;
      }

      v107 = v127;
      v109 = v105;
      goto LABEL_141;
    }
  }

  v107 = 0.0;
  v108 = 1;
  v32 = v52;
  v54 = v13;
  v53 = v12;
  if (v27)
  {
    v109 = 0;
    goto LABEL_141;
  }

  v106 = v26;
  v109 = 0;
  if (v26 > 0.0)
  {
    goto LABEL_137;
  }

LABEL_141:
  sub_1481B0(v107, v109, v108, &v167, 1.0, v6);
  v128 = v168;
  if (LOBYTE(v173))
  {
    sub_14A870(1702195828, 0xE400000000000000, v53, v54, v53, *&v32, v101);
LABEL_143:

    return _swiftEmptyArrayStorage;
  }

  v129 = v167;
  v130 = v169;
  v131 = v170;
  v132 = v171;
  v133 = v172;
  sub_2B0C(&qword_229488, &qword_1BC520);
  result = swift_allocObject();
  *(result + 1) = xmmword_1BFC80;
  *(result + 4) = 1702195828;
  *(result + 5) = 0xE400000000000000;
  *(result + 6) = v53;
  *(result + 7) = v54;
  *(result + 8) = v53;
  *(result + 9) = v32;
  result[80] = 0;
  *(result + 11) = v129;
  *(result + 12) = v128;
  *(result + 13) = v130;
  *(result + 14) = v131;
  *(result + 15) = v132;
  *(result + 16) = v133;
  result[136] = 0;
  return result;
}

char *BookHistory.rawAffinity(with:)(__int128 *a1)
{
  BookHistory.internalAffinitySource(with:)(a1, v11);
  v16 = v11[2];
  v17 = v12;
  v18 = v13;
  v14 = v11[0];
  v15 = v11[1];
  v1 = v12;
  if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    return 0;
  }

  v3 = v14;
  v4 = v15;
  v5 = v16;
  if ((v12 >> 62) > 2)
  {
    v6 = v14;
  }

  else
  {
    sub_2B0C(&qword_229488, &qword_1BC520);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BCA80;
    *(v6 + 32) = v3;
    *(v6 + 48) = v4;
    *(v6 + 64) = v5;
    *(v6 + 80) = v1 & 1;
  }

  sub_42CD4(&v14, &v10);
  v7 = Array<A>.rawAffinity.getter(v6);
  v9 = v8;
  sub_42F48(v11, &qword_22A4E0, &unk_1C01D0);

  if (v9)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void sub_14A79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 1)
  {
    if (a2)
    {
      if (a1 % a2)
      {
        return;
      }

      v3 = round(pow(*(a3 + 32), (a1 / a2 - 1)) * *(a3 + 24));
      if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v3 > -9.22337204e18)
        {
          if (v3 < 9.22337204e18)
          {
            return;
          }

LABEL_12:
          __break(1u);
          return;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_14A870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xFDu)
  {
    return sub_14A884(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_14A884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xBFu)
  {
  }

  return result;
}

void *sub_14A89C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v5 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v53 = _swiftEmptyArrayStorage;
  sub_37768(0, v9, 0);
  v10 = v53;
  v45 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v46 = v8;
  v11 = a1 + v45;
  v44 = *(v6 + 72);
  while (1)
  {
    v50 = v10;
    v51 = v9;
    v12 = *(v11 + v5[5]);
    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

    v14 = _swiftEmptyArrayStorage;
LABEL_7:
    v52[0] = v14;
    sub_14B0F4(v52, sub_56BA8, &type metadata for SeedBook, sub_152180, sub_151780);
    if (v3)
    {
      goto LABEL_12;
    }

    sub_2B0C(&qword_22AA48, &qword_1CD280);
    sub_42094(&qword_22B470, &qword_22AA48, &qword_1CD280, &protocol conformance descriptor for [A]);
    v17 = sub_1B4984();

    __chkstk_darwin(v18);
    v19 = v47;
    *(&v43 - 2) = v11;
    *(&v43 - 1) = v19;
    v20 = sub_1AA034(sub_155AB8, (&v43 - 4), v17);

    v52[0] = v20;
    v21 = sub_1B4984();
    v3 = 0;

    v22 = sub_40D04(v21);

    v23 = sub_1B40F4();
    v24 = v46;
    (*(*(v23 - 8) + 16))(v46, v11, v23);
    v25 = (v11 + v5[6]);
    v27 = *v25;
    v26 = v25[1];
    v28 = (v11 + v5[7]);
    v29 = *(v11 + v5[8]);
    v30 = *(v11 + v5[9]);
    v31 = *(v11 + v5[10]);
    v32 = *(v11 + v5[11]);
    v33 = *(v11 + v5[13]);
    v34 = *(v11 + v5[14]);
    v35 = *v28;
    v36 = v28[1];
    *(v24 + v5[5]) = v22;
    v37 = (v24 + v5[6]);
    *v37 = v27;
    v37[1] = v26;
    v38 = (v24 + v5[7]);
    *v38 = v35;
    v38[1] = v36;
    *(v24 + v5[8]) = v29;
    *(v24 + v5[9]) = v30;
    *(v24 + v5[10]) = v31;
    *(v24 + v5[11]) = v32;
    *(v24 + v5[12]) = _swiftEmptySetSingleton;
    *(v24 + v5[13]) = v33;
    *(v24 + v5[14]) = v34;
    v10 = v50;
    v53 = v50;
    v39 = v50[2];
    v40 = v50[3];

    if (v39 >= v40 >> 1)
    {
      sub_37768((v40 > 1), v39 + 1, 1);
      v10 = v53;
    }

    v10[2] = v39 + 1;
    v41 = v44;
    sub_84A24(v24, v10 + v45 + v39 * v44);
    v11 += v41;
    v9 = v51 - 1;
    if (v51 == 1)
    {
      return v10;
    }
  }

  v14 = sub_351DC(*(v12 + 16), 0);
  v15 = sub_3EF0C(v52, v14 + 32, v13, v12);
  v16 = v52[0];
  v48 = v52[1];
  v49 = v15;

  sub_417B8(v16);
  if (v49 == v13)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_12:

  __break(1u);
  return result;
}

Swift::Int sub_14AD54(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B58(v2);
  }

  v3 = *(v2 + 2);
  v41[0] = (v2 + 32);
  v41[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 168;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 136;
          if (*v12 >= *(v12 - 17))
          {
            break;
          }

          v32 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v35 = *(v12 + 3);
          v36 = v16;
          v33 = v14;
          v34 = v15;
          v17 = *(v12 + 5);
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v40 = v12[128];
          v38 = v18;
          v39 = v19;
          v37 = v17;
          v20 = *(v12 - 88);
          *(v12 + 2) = *(v12 - 104);
          *(v12 + 3) = v20;
          *(v12 + 16) = *(v12 - 1);
          v21 = *(v12 - 24);
          *(v12 + 6) = *(v12 - 40);
          *(v12 + 7) = v21;
          v22 = *(v12 - 56);
          *(v12 + 4) = *(v12 - 72);
          *(v12 + 5) = v22;
          v23 = *(v12 - 120);
          *v12 = *v13;
          *(v12 + 1) = v23;
          *v13 = v32;
          v24 = v33;
          v25 = v34;
          v26 = v36;
          *(v12 - 88) = v35;
          *(v12 - 72) = v26;
          *(v12 - 120) = v24;
          *(v12 - 104) = v25;
          v27 = v37;
          v28 = v38;
          v29 = v39;
          *(v12 - 8) = v40;
          *(v12 - 40) = v28;
          *(v12 - 24) = v29;
          *(v12 - 56) = v27;
          v12 -= 136;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 136;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v32 = v7 + 4;
    *(&v32 + 1) = v6;
    sub_151B2C(&v32, v31, v41, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_14AF70(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56BA8(v2);
  }

  v3 = *(v2 + 2);
  v16[0] = (v2 + 32);
  v16[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v14 = v1;
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (*(v12 + 75) >= *(v12 + 4))
          {
            break;
          }

          memcpy(__dst, v12 + 600, 0x231uLL);
          memcpy(v12 + 600, v12 + 32, 0x238uLL);
          result = memcpy(v12 + 32, __dst, 0x231uLL);
          v12 -= 568;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 568;
        --v8;
      }

      while (v9 != v3);
      v1 = v14;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    __dst[0] = v7 + 4;
    __dst[1] = v6;
    sub_152D5C(__dst, v17, v16, v5);
    v7[2] = 0;
  }

  *v1 = v2;
  return result;
}

Swift::Int sub_14B0F4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_151670(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_14B190()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[18];
  v5 = *(v0 + 7);
  v32 = *(v0 + 6);
  v33 = v5;
  v34 = *(v0 + 8);
  v35 = v4;
  v36 = *(v0 + 19);
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    v6 = 0x3E6C696E3CLL;
    v7 = 0xE500000000000000;
    goto LABEL_13;
  }

  v8 = v32;
  v9 = v33;
  v10 = v34;
  if ((v4 >> 62) > 1)
  {
    if (v4 >> 62 != 2)
    {
      v11 = v32;
      goto LABEL_9;
    }

    v25 = *(&v34 + 1);
    v26 = *(&v33 + 1);
  }

  else
  {
    v25 = *(&v34 + 1);
    v26 = *(&v33 + 1);
  }

  sub_2B0C(&qword_229488, &qword_1BC520);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BCA80;
  *(v11 + 32) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v26;
  *(v11 + 64) = v10;
  *(v11 + 72) = v25;
  *(v11 + 80) = v4 & 1;
LABEL_9:
  sub_42CD4(&v32, v27);
  v12 = COERCE_DOUBLE(Array<A>.affinity.getter(v11));
  v14 = v13;

  if (v14)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v12;
  }

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BCA80;
  *(v16 + 56) = &type metadata for Double;
  *(v16 + 64) = &protocol witness table for Double;
  *(v16 + 32) = v15;
  v6 = sub_1B47F4();
  v7 = v17;
LABEL_13:
  *&v27[0] = v2;
  v30 = sub_1B5594();
  v31 = v18;
  v37._countAndFlagsBits = 58;
  v37._object = 0xE100000000000000;
  sub_1B48D4(v37);
  if (v3)
  {
    v19._countAndFlagsBits = 0x6F6F626F69647561;
  }

  else
  {
    v19._countAndFlagsBits = 0x6B6F6F6265;
  }

  if (v3)
  {
    v20 = 0xE90000000000006BLL;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v19._object = v20;
  sub_1B48D4(v19);

  v38._countAndFlagsBits = 58;
  v38._object = 0xE100000000000000;
  sub_1B48D4(v38);
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    object = 0xE300000000000000;
    v22._countAndFlagsBits = 7104878;
  }

  else
  {
    v23 = v1[7];
    v27[0] = v1[6];
    v27[1] = v23;
    v27[2] = v1[8];
    v28 = v4;
    v29 = *(v1 + 152);
    v22._countAndFlagsBits = sub_150AB0();
    object = v22._object;
  }

  v22._object = object;
  sub_1B48D4(v22);

  v39._countAndFlagsBits = 58;
  v39._object = 0xE100000000000000;
  sub_1B48D4(v39);
  v40._countAndFlagsBits = v6;
  v40._object = v7;
  sub_1B48D4(v40);

  return v30;
}

uint64_t sub_14B460()
{
  sub_768DC();
  result = sub_1B4E94();
  qword_260C58 = result;
  return result;
}

uint64_t sub_14B4C8()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C60);
  sub_50E58(v0, qword_260C60);
  if (qword_2282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_260C58;
  return sub_1B4654();
}

uint64_t sub_14B554(uint64_t a1, const void *a2)
{
  v3[144] = v2;
  v3[143] = a1;
  memcpy(v3 + 2, a2, 0x460uLL);

  return _swift_task_switch(sub_14B5C8, 0, 0);
}

uint64_t sub_14B5C8()
{
  v11 = v0;
  v1 = v0[144];
  v2 = v0[143];
  v10 = _swiftEmptyDictionarySingleton;
  v3 = sub_14A89C(v2, &v10);
  v0[145] = v3;
  v4 = v10;
  v0[146] = v10;

  v5 = sub_2B0C(&qword_229360, &qword_1BC400);
  v6 = sub_2B0C(&qword_22A410, &qword_1C0110);
  v7 = swift_task_alloc();
  v0[147] = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v0 + 2;
  v8 = swift_task_alloc();
  v0[148] = v8;
  *v8 = v0;
  v8[1] = sub_14B730;
  v13 = v6;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 142, v5, v6, 0, 0, &unk_1CF3B8, v7, v5);
}

uint64_t sub_14B730()
{
  *(*v1 + 1192) = v0;

  if (v0)
  {

    v2 = sub_14B944;
  }

  else
  {

    v2 = sub_14B8B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_14B8B4()
{
  v1 = sub_14D384(v0[146], v0[142]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_14B95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[295] = a6;
  v6[294] = a5;
  v6[293] = a3;
  v6[292] = a2;
  v6[291] = a1;
  v7 = sub_2B0C(&qword_229360, &qword_1BC400);
  v6[296] = v7;
  v6[297] = *(v7 - 8);
  v6[298] = swift_task_alloc();
  v6[299] = swift_task_alloc();
  v6[300] = swift_task_alloc();
  sub_2B0C(&qword_22A4C8, &qword_1CF3D0);
  v6[301] = swift_task_alloc();
  v8 = sub_2B0C(&qword_22A4D0, &unk_1C01A0);
  v6[302] = v8;
  v6[303] = *(v8 - 8);
  v6[304] = swift_task_alloc();
  v9 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v6[305] = v9;
  v6[306] = *(v9 + 64);
  v6[307] = swift_task_alloc();
  sub_2B0C(&qword_2296C0, &qword_1C3800);
  v6[308] = swift_task_alloc();
  v6[309] = swift_task_alloc();

  return _swift_task_switch(sub_14BB94, 0, 0);
}

uint64_t sub_14BB94()
{
  v1 = *(v0 + 2344);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 2440);
    v31 = **(v0 + 2336);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v29 = *(v3 + 72);
    v30 = v4;
    v28 = (*(v0 + 2448) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_1B4C54();
    v7 = *(v6 - 8);
    v27 = *(v7 + 56);
    v26 = (v7 + 48);
    v25 = (v7 + 8);
    do
    {
      v32 = v2;
      v10 = *(v0 + 2472);
      v11 = *(v0 + 2464);
      v12 = *(v0 + 2456);
      v13 = *(v0 + 2360);
      v14 = *(v0 + 2352);
      v27(v10, 1, 1, v6);
      sub_8478C(v5, v12);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      sub_84A24(v12, v15 + v30);
      *(v15 + v28) = v14;
      memcpy((v15 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)), v13, 0x460uLL);
      sub_43050(v10, v11, &qword_2296C0, &qword_1C3800);
      LODWORD(v11) = (*v26)(v11, 1, v6);

      v16 = *(v0 + 2464);
      v17 = *(v0 + 2360);
      if (v11 == 1)
      {
        sub_84BC0(v17, v0 + 16);
        sub_42F48(v16, &qword_2296C0, &qword_1C3800);
      }

      else
      {
        sub_84BC0(v17, v0 + 1136);
        sub_1B4C44();
        (*v25)(v16, v6);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1B4BC4();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if (v20 | v18)
      {
        v8 = v0 + 2256;
        *(v0 + 2256) = 0;
        *(v0 + 2264) = 0;
        *(v0 + 2272) = v18;
        *(v0 + 2280) = v20;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 2472);
      *(v0 + 2288) = 1;
      *(v0 + 2296) = v8;
      *(v0 + 2304) = v31;
      swift_task_create();

      sub_42F48(v9, &qword_2296C0, &qword_1C3800);
      v5 += v29;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  *(v0 + 2480) = _swiftEmptyDictionarySingleton;
  v21 = swift_task_alloc();
  *(v0 + 2488) = v21;
  *v21 = v0;
  v21[1] = sub_14BF94;
  v22 = *(v0 + 2416);
  v23 = *(v0 + 2408);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v23, 0, 0, v22, v0 + 2312);
}