uint64_t sub_16E1A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_16E298(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of BooksBySuggestedAuthorsServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

uint64_t StoreBookRating.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoreBookRating(0) + 24);

  return sub_16E4D8(v3, a1);
}

uint64_t type metadata accessor for StoreBookRating(uint64_t a1)
{
  result = qword_22ED30;
  if (!qword_22ED30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16E4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StoreBookRating.init(storeID:rating:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  v6 = a5 + *(type metadata accessor for StoreBookRating(0) + 24);

  return sub_E50D4(a4, v6);
}

void StoreBookRating.hash(into:)(uint64_t a1)
{
  v2 = sub_1B40C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_1B5834(*v1);
  if (*(v1 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v9 = *(v1 + 8);
    sub_1B5814(1u);
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    sub_1B5834(v10);
  }

  v11 = type metadata accessor for StoreBookRating(0);
  sub_16E4D8(v1 + *(v11 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1B5814(1u);
    sub_16F328(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1B4754();
    (*(v3 + 8))(v5, v2);
  }
}

Swift::Int StoreBookRating.hashValue.getter()
{
  v1 = sub_1B40C4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_1B57F4();
  sub_1B5834(*v0);
  if (*(v0 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v8 = *(v0 + 8);
    sub_1B5814(1u);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    sub_1B5834(v9);
  }

  v10 = type metadata accessor for StoreBookRating(0);
  sub_16E4D8(v0 + *(v10 + 24), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1B5814(1u);
    sub_16F328(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1B4754();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1B5844();
}

Swift::Int sub_16E9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B40C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  sub_1B57F4();
  sub_1B5834(*v2);
  if (*(v2 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v11 = *(v2 + 8);
    sub_1B5814(1u);
    if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    sub_1B5834(v12);
  }

  sub_16E4D8(v2 + *(a2 + 24), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1B5814(1u);
    sub_16F328(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1B4754();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1B5844();
}

BOOL _s20BooksPersonalization15StoreBookRatingV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B40C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_2B0C(&qword_22DD90, &qword_1CE238);
  v12 = __chkstk_darwin(v11);
  v14 = &v23 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = *(a2 + 16);
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
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v12;
  v17 = *(type metadata accessor for StoreBookRating(0) + 24);
  v18 = *(v16 + 48);
  sub_16E4D8(a1 + v17, v14);
  sub_16E4D8(a2 + v17, &v14[v18]);
  v19 = *(v5 + 48);
  if (v19(v14, 1, v4) != 1)
  {
    sub_16E4D8(v14, v10);
    if (v19(&v14[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v18], v4);
      sub_16F328(&qword_229270, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v21 = sub_1B4784();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v10, v4);
      sub_42F48(v14, &qword_229528, &qword_1BC5A0);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_42F48(v14, &qword_22DD90, &qword_1CE238);
    return 0;
  }

  if (v19(&v14[v18], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_42F48(v14, &qword_229528, &qword_1BC5A0);
  return 1;
}

uint64_t sub_16EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_16F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_16F0C4(uint64_t a1)
{
  sub_16F158();
  if (v1 <= 0x3F)
  {
    sub_16F1A8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_16F158()
{
  if (!qword_22DC60)
  {
    v0 = sub_1B4EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_22DC60);
    }
  }
}

void sub_16F1A8(uint64_t a1)
{
  if (!qword_22DD40)
  {
    sub_1B40C4();
    v1 = sub_1B4EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_22DD40);
    }
  }
}

uint64_t dispatch thunk of StoreBookRatingsServiceType.fetchStoreRatings(storeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_441B4;

  return v9(a1, a2, a3);
}

uint64_t sub_16F328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_16F370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_3741C(0, v1, 0);
  v3 = a1 + 64;
  result = sub_1B4F84();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 56) + 384 * result);
    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_3741C((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    _swiftEmptyArrayStorage[v13 + 4] = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_E56C8(result, v11, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_E56C8(result, v11, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_16F5A0(void *__src, uint64_t a2)
{
  v3[376] = v2;
  v3[375] = a2;
  v3[374] = __src;
  memcpy(v3 + 2, __src, 0x460uLL);

  return _swift_task_switch(sub_16F620, 0, 0);
}

uint64_t sub_16F620()
{
  v1 = *(v0 + 3008);
  memcpy((v0 + 2256), (*(v0 + 2992) + 88), 0x16BuLL);
  v3 = v1[5];
  v2 = v1[6];
  sub_2698(v1 + 2, v3);
  if (qword_228360 != -1)
  {
    swift_once();
  }

  v4 = qword_22F7B8;
  memcpy((v0 + 1136), *(v0 + 2992), 0x460uLL);
  v5 = swift_task_alloc();
  *(v0 + 3016) = v5;
  *v5 = v0;
  v5[1] = sub_16F744;
  v6 = *(v0 + 3000);

  return BookHistoryServiceType.fetchBookHistory(for:limit:configuration:)(v4, v6, (v0 + 1136), v3, v2);
}

uint64_t sub_16F744(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3024) = a1;
  *(v3 + 3032) = v1;

  if (v1)
  {
    v4 = sub_16FBDC;
  }

  else
  {
    v4 = sub_16F85C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_16F85C()
{
  v1 = v0[376];
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);

  v5 = sub_16F370(v4);
  v0[380] = v5;

  v8 = (*(v3 + 16) + **(v3 + 16));
  v6 = swift_task_alloc();
  v0[381] = v6;
  *v6 = v0;
  v6[1] = sub_16F9B8;

  return v8(v5, v2, v3);
}

uint64_t sub_16F9B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 3056) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    *(v4 + 3064) = a1;

    return _swift_task_switch(sub_16FB24, 0, 0);
  }
}

uint64_t sub_16FB24()
{
  v1 = v0[383];
  v2 = v0[378];

  sub_71E28((v0 + 13), (v0 + 328));
  v3 = sub_1705AC(v2, v1, v0 + 282);
  sub_72470((v0 + 13));
  swift_bridgeObjectRelease_n();

  v4 = v0[1];

  return v4(v3);
}

void *sub_16FBF4@<X0>(void *__src@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  memcpy(v65, __src, 0x179uLL);
  if (!*(a2 + 16))
  {
    goto LABEL_8;
  }

  v9 = v65[0];
  v10 = sub_43124(v65[0]);
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = *(a2 + 56) + 88 * v10;
  v13 = *(v12 + 16);
  v57 = *v12;
  v58 = v13;
  v15 = *(v12 + 48);
  v14 = *(v12 + 64);
  v16 = *(v12 + 80);
  v59 = *(v12 + 32);
  v62 = v16;
  v61 = v14;
  v60 = v15;
  sub_5EDD8(&v57, v64);
  if (qword_228360 != -1)
  {
    swift_once();
  }

  memcpy(v64, v65, 0x179uLL);
  BookHistory.pruned(to:)(qword_22F7B8, v63);
  if (sub_42D84(v63) == 1 || (memcpy(v64, v63, 0x179uLL), memcpy(v32, a3, 0x16BuLL), BookHistory.internalAffinitySource(with:)(v32, &v52), v18 = v55, v55 >> 1 == 0xFFFFFFFF))
  {
    sub_85554(&v57);
LABEL_8:
    sub_61554(v64);
    v19 = v64;
    return memcpy(a4, v19, 0x231uLL);
  }

  v66 = &v31;
  __chkstk_darwin(v17);
  sub_2B0C(&qword_22D2E0, &qword_1CB140);
  sub_12EAB4();
  v21 = sub_1B4AE4();
  memcpy(v51, __src, sizeof(v51));
  AuthorRecommendationSource.id.getter();
  v47 = v59;
  v48 = v60;
  v49 = v61;
  v50 = v62;
  v45 = v57;
  v46 = v58;
  memcpy(v44, v51, sizeof(v44));
  v39 = v52;
  v40 = v53;
  v41 = v54;
  v43 = v56;
  v42 = v18;
  sub_12700C(&v38);
  if (v4)
  {
    sub_5EDD8(&v57, v64);

    v22 = 12;
  }

  else
  {
    v22 = v38;
    sub_5EDD8(&v57, v64);
  }

  *&v64[40] = v47;
  *&v64[56] = v48;
  *&v64[72] = v49;
  *v64 = v9;
  *&v64[88] = v50;
  *&v64[8] = v45;
  *&v64[24] = v46;
  *&v64[128] = v54;
  *&v64[112] = v53;
  *&v64[96] = v52;
  *&v64[144] = v18;
  *&v64[152] = v56;
  result = memcpy(&v64[168], v44, 0x179uLL);
  *&v64[552] = v21;
  v64[560] = v22;
  v35 = v54;
  v36 = *&v64[144];
  v37 = *(&v56 + 1);
  v33 = v52;
  v34 = v53;
  if (v18 >> 1 != 0xFFFFFFFF)
  {
    v23 = v36 >> 62;
    sub_85554(&v57);
    v24 = v33;
    v25 = v34;
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        v26 = v33;
LABEL_20:
        sub_42CD4(&v33, v32);
        v28 = Array<A>.affinity.getter(v26);
        v30 = v29;

        if ((v30 & 1) != 0 || (v28 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          sub_2601C(v64);
          sub_61554(v32);
        }

        else
        {
          memcpy(v32, v64, 0x231uLL);
          AuthorRecommendationSource.id.getter();
        }

        v19 = v32;
        return memcpy(a4, v19, 0x231uLL);
      }

      v66 = *(&v35 + 1);
      v31 = v35;
    }

    else
    {
      v66 = *(&v35 + 1);
      v31 = v35;
    }

    sub_2B0C(&qword_229488, &qword_1BC520);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BCA80;
    *(v26 + 32) = v24;
    *(v26 + 48) = v25;
    v27 = v66;
    *(v26 + 64) = v31;
    *(v26 + 72) = v27;
    *(v26 + 80) = v18 & 1;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void *BookHistory.seedBook(using:metadata:configuration:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, __int128 *a3@<X1>, void *a4@<X8>)
{
  v7 = a3[3];
  v39 = a3[2];
  v40 = v7;
  v41 = a3[4];
  v42 = *(a3 + 10);
  v8 = a3[1];
  v37 = *a3;
  v38 = v8;
  memcpy(v36, __src, sizeof(v36));
  memcpy(v35, v4, 0x179uLL);
  memcpy(v34, v4, 0x179uLL);
  BookHistory.pruned(to:)(a2, v43);
  if (sub_42D84(v43) == 1 || (memcpy(v34, v43, 0x179uLL), memcpy(v28, v36, 0x16BuLL), BookHistory.internalAffinitySource(with:)(v28, &v29), v10 = v32, v32 >> 1 == 0xFFFFFFFF))
  {
    sub_61554(v34);
  }

  else
  {
    __chkstk_darwin(v9);
    sub_2B0C(&qword_22D2E0, &qword_1CB140);
    sub_12EAB4();
    v14 = sub_1B4AE4();
    v11 = v35[0];
    memcpy(v28, v4, 0x179uLL);
    AuthorRecommendationSource.id.getter();
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v22 = v37;
    v23 = v38;
    memcpy(v21, v28, sizeof(v21));
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v20 = v33;
    v19 = v10;
    sub_12700C(&v15);
    v12 = v15;
    sub_5EDD8(&v37, v34);
    *&v34[96] = v29;
    *&v34[112] = v30;
    *&v34[128] = v31;
    *&v34[152] = v33;
    *&v34[40] = v24;
    *&v34[56] = v25;
    *&v34[72] = v26;
    *&v34[8] = v22;
    *v34 = v11;
    *&v34[88] = v27;
    *&v34[24] = v23;
    *&v34[144] = v10;
    memcpy(&v34[168], v21, 0x179uLL);
    *&v34[552] = v14;
    v34[560] = v12;
    AuthorRecommendationSource.id.getter();
  }

  return memcpy(a4, v34, 0x231uLL);
}

uint64_t sub_170398(void *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_16F5A0(a1, a2);
}

uint64_t dispatch thunk of SeedBookServiceType.fetchSeedBooks(with:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1705AC(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = _swiftEmptyDictionarySingleton;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v35 = _swiftEmptyDictionarySingleton;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    memcpy(v34, (*(a1 + 56) + 384 * v15), 0x179uLL);
    v33 = v16;
    sub_16FBF4(v34, a2, a3, __src);
    if (v3)
    {
      break;
    }

    v10 &= v10 - 1;
    memcpy(v31, __src, 0x231uLL);
    if (sub_6153C(v31) == 1)
    {
      memcpy(__dst, __src, 0x231uLL);
      result = sub_170834(__dst);
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      memcpy(v29, __src, sizeof(v29));
      v17 = v5[2];
      if (v5[3] <= v17)
      {
        sub_17D114(v17 + 1, 1);
        v5 = v35;
      }

      result = sub_1B57E4();
      v18 = v5 + 8;
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~v5[(v20 >> 6) + 8]) == 0)
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        while (++v21 != v24 || (v23 & 1) == 0)
        {
          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = v18[v21];
          if (v26 != -1)
          {
            v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~v5[(v20 >> 6) + 8])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(v5[6] + 8 * v22) = v16;
      result = memcpy((v5[7] + 568 * v22), v29, 0x231uLL);
      ++v5[2];
      if (!v10)
      {
LABEL_7:
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v11)
          {
            goto LABEL_28;
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
        goto LABEL_30;
      }
    }
  }

LABEL_28:

  return v5;
}

uint64_t sub_170834(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229890, &qword_1BCCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_17089C@<X0>(char *a1@<X0>, char **a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  memcpy(__dst, v4, sizeof(__dst));
  v10 = v6;
  memcpy(v8, v5, 0x16BuLL);
  result = BookHistory.affinityInfos(for:with:)(&v10, v8);
  *a2 = result;
  return result;
}

uint64_t sub_170998(uint64_t a1, uint64_t a2)
{
  v2 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_170BA0(&v8 - v3);
  v5 = sub_1B3F34();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B3EC4();
    return (*(v6 + 8))(v4, v5);
  }

  return result;
}

uint64_t Package.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for Package(0) + 20));

  return v1;
}

uint64_t Package.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Package(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_170B8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_170BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v10 = 0;
  v3 = [v2 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:&v10];

  v4 = v10;
  if (v3)
  {
    sub_1B3EE4();
    v5 = v4;

    v6 = 0;
  }

  else
  {
    v7 = v10;
    sub_1B3E64();

    swift_willThrow();

    v6 = 1;
  }

  v8 = sub_1B3F34();
  return (*(*(v8 - 8) + 56))(a1, v6, 1, v8);
}

uint64_t type metadata accessor for Package(uint64_t a1)
{
  result = qword_22EED8;
  if (!qword_22EED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PackageService.fetchPackages(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_170D50, 0, 0);
}

uint64_t sub_170D50()
{
  v1 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = sub_2B0C(&qword_22EE70, &qword_1D09C8);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_170E70;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v3, 0, 0, &unk_1D09C0, v2, v1);
}

uint64_t sub_170E70()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_170F8C;
  }

  else
  {

    v2 = sub_77F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_170F8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_170FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[213] = a4;
  v4[212] = a3;
  v4[211] = a2;
  v4[210] = a1;
  v5 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  v4[214] = v5;
  v4[215] = *(v5 - 8);
  v4[216] = swift_task_alloc();
  v6 = type metadata accessor for Package(0);
  v4[217] = v6;
  v4[218] = *(v6 - 8);
  v4[219] = swift_task_alloc();
  v4[220] = swift_task_alloc();
  sub_2B0C(&qword_2296C0, &qword_1C3800);
  v4[221] = swift_task_alloc();
  v4[222] = swift_task_alloc();
  sub_2B0C(&qword_22F0F8, &qword_1D0BF0);
  v4[223] = swift_task_alloc();
  v7 = sub_2B0C(&qword_22F100, &qword_1D0BF8);
  v4[224] = v7;
  v4[225] = *(v7 - 8);
  v4[226] = swift_task_alloc();
  sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  v4[227] = swift_task_alloc();
  v8 = sub_1B3F34();
  v4[228] = v8;
  v9 = *(v8 - 8);
  v4[229] = v9;
  v4[230] = *(v9 + 64);
  v4[231] = swift_task_alloc();
  v4[232] = swift_task_alloc();
  v4[233] = swift_task_alloc();
  v4[234] = swift_task_alloc();
  v4[235] = swift_task_alloc();
  v4[236] = swift_task_alloc();

  return _swift_task_switch(sub_171318, 0, 0);
}

uint64_t sub_171318()
{
  v90 = v0;
  v0[203] = _swiftEmptyDictionarySingleton;
  v1 = [objc_opt_self() sharedSession];
  v0[237] = v1;
  v2 = [objc_opt_self() defaultManager];
  v0[238] = v2;
  v0[204] = 0;
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v0 + 204];
  v4 = v0[204];
  v88 = v0;
  if (!v3)
  {
    v29 = v4;
    sub_1B3E64();

    swift_willThrow();
    goto LABEL_30;
  }

  v5 = v3;
  sub_1B3EE4();
  v6 = v4;

  sub_1B3EC4();
  sub_1B3F04();
  v7 = sub_1B4794();

  v8 = [v2 fileExistsAtPath:v7];

  if ((v8 & 1) == 0)
  {
    sub_1B3EB4(v9);
    v11 = v10;
    v0[205] = 0;
    v12 = [v2 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v0 + 205];

    v13 = v0[205];
    if (!v12)
    {
      v65 = v0[236];
      v66 = v0[235];
      v67 = v0[229];
      v68 = v0[228];
      v69 = v13;
      sub_1B3E64();

      swift_willThrow();
      v70 = *(v67 + 8);
      v70(v66, v68);
      v70(v65, v68);
      goto LABEL_30;
    }

    v14 = v13;
  }

  v15 = v0[229];
  v16 = v0[228];
  v17 = v0[227];
  v18 = *(v0[212] + 16);
  v19 = v18[5];
  v20 = v18[6];
  sub_2698(v18 + 2, v19);
  v21 = *(v20 + 8);
  v22 = v20;
  v23 = v0;
  v21(__src, v19, v22);
  memcpy(v0 + 2, __src, 0x460uLL);
  sub_71E98((v23 + 88), (v23 + 142));
  sub_2B54((v0 + 2));

  sub_726C8((v0 + 88));
  sub_1B3F14();

  if ((*(v15 + 48))(v17, 1, v16) == 1)
  {
    v24 = v0[236];
    v25 = v0[235];
    v26 = v0[229];
    v27 = v0[228];
    sub_42F48(v0[227], &qword_22C1F8, &qword_1CFD60);
    sub_174654();
    swift_allocError();
    swift_willThrow();

    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v24, v27);
LABEL_30:

    v71 = v0[1];

    return v71();
  }

  v79 = v1;
  v30 = v0[230];
  v31 = v0[229];
  v32 = v0[213];
  v76 = *(v31 + 32);
  v76(v0[234], v0[227], v0[228]);
  v33 = v32 + 56;
  v34 = -1;
  v35 = -1 << *(v32 + 32);
  if (-v35 < 64)
  {
    v34 = ~(-1 << -v35);
  }

  v36 = v34 & *(v32 + 56);
  v37 = (63 - v35) >> 6;
  v77 = v32;
  v78 = v31;
  v73 = v30 + 7;

  v38 = 0;
  v74 = v37;
  v75 = v32 + 56;
  while (v36)
  {
LABEL_18:
    v42 = v88[235];
    v43 = v88[233];
    v44 = v88[232];
    v80 = v44;
    v45 = v88[228];
    v46 = v88[222];
    v82 = v46;
    v86 = v88[234];
    v87 = v88[221];
    v47 = (*(v77 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v36)))));
    v84 = v47[1];
    v85 = *v47;
    v81 = sub_1B4C54();
    v83 = *(v81 - 8);
    (*(v83 + 56))(v46, 1, 1, v81);
    v48 = *(v78 + 16);
    v48(v43, v42, v45);
    v48(v44, v86, v45);
    v49 = *(v78 + 80);
    v50 = (v49 + 32) & ~v49;
    v51 = (v50 + v73) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v49 + v51 + 16) & ~v49;
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    v76(v53 + v50, v43, v45);
    v54 = (v53 + v51);
    *v54 = v85;
    v54[1] = v84;
    v23 = v88;
    v76(v53 + v52, v80, v45);
    *(v53 + ((v52 + v73) & 0xFFFFFFFFFFFFFFF8)) = v79;
    sub_79E9C(v82, v87);
    LODWORD(v50) = (*(v83 + 48))(v87, 1, v81);

    v55 = v79;
    v56 = v88[221];
    if (v50 == 1)
    {
      sub_42F48(v88[221], &qword_2296C0, &qword_1C3800);
    }

    else
    {
      sub_1B4C44();
      (*(v83 + 8))(v56, v81);
    }

    v37 = v74;
    if (*(v53 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v57 = sub_1B4BC4();
      v59 = v58;
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0;
      v59 = 0;
    }

    v60 = *v88[211];

    if (v59 | v57)
    {
      v39 = v88 + 196;
      v88[196] = 0;
      v88[197] = 0;
      v88[198] = v57;
      v88[199] = v59;
    }

    else
    {
      v39 = 0;
    }

    v36 &= v36 - 1;
    v40 = v88[222];
    v88[200] = 1;
    v88[201] = v39;
    v88[202] = v60;
    swift_task_create();

    sub_42F48(v40, &qword_2296C0, &qword_1C3800);
    v33 = v75;
  }

  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
    }

    if (v41 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v41);
    ++v38;
    if (v36)
    {
      v38 = v41;
      goto LABEL_18;
    }
  }

  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  v61 = v23[203];
  v23[240] = _swiftEmptyDictionarySingleton;
  v23[239] = v61;
  v62 = swift_task_alloc();
  v23[241] = v62;
  *v62 = v23;
  v62[1] = sub_171CE4;
  v63 = v23[224];
  v64 = v23[223];

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v64, 0, 0, v63, v23 + 206);
}

uint64_t sub_171CE4()
{
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v2 = sub_1726BC;
  }

  else
  {
    v2 = sub_171E24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_171E24()
{
  v1 = *(v0 + 1784);
  if ((*(*(v0 + 1720) + 48))(v1, 1, *(v0 + 1712)) == 1)
  {
    v2 = *(v0 + 1904);
    (*(*(v0 + 1800) + 8))(*(v0 + 1808), *(v0 + 1792));
    sub_1B3EB4(v3);
    v5 = v4;
    sub_2B0C(&qword_22F110, &qword_1D0C18);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BCA80;
    *(v6 + 32) = NSURLIsDirectoryKey;
    type metadata accessor for URLResourceKey(0);
    v7 = NSURLIsDirectoryKey;
    isa = sub_1B4AA4().super.isa;

    *(v0 + 1656) = 0;
    v9 = [v2 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:isa options:0 error:v0 + 1656];

    v10 = *(v0 + 1656);
    if (v9)
    {
      v11 = *(v0 + 1936);
      v12 = sub_1B4AC4();
      v13 = v10;

      v14 = sub_174920(v12, (v0 + 1624));

      v16 = v14[2];
      if (v16)
      {
        v17 = 0;
        v18 = *(v0 + 1832);
        v19 = (v18 + 8);
        while (v17 < v14[2])
        {
          v20 = *(v0 + 1904);
          (*(*(v0 + 1832) + 16))(*(v0 + 1848), v14 + ((*(*(v0 + 1832) + 80) + 32) & ~*(*(v0 + 1832) + 80)) + *(v18 + 72) * v17, *(v0 + 1824));
          sub_1B3EB4(v21);
          v23 = v22;
          *(v0 + 1664) = 0;
          LODWORD(v20) = [v20 removeItemAtURL:v22 error:v0 + 1664];

          v24 = *(v0 + 1664);
          if (!v20)
          {
            v64 = *(v0 + 1904);
            v65 = *(v0 + 1896);
            v78 = *(v0 + 1880);
            v79 = *(v0 + 1888);
            v77 = *(v0 + 1872);
            v66 = *(v0 + 1848);
            v67 = *(v0 + 1824);
            v68 = v24;

            sub_1B3E64();

            swift_willThrow();
            v69 = *v19;
            (*v19)(v66, v67);
            v69(v77, v67);
            v69(v78, v67);
            v69(v79, v67);
            goto LABEL_22;
          }

          v11 = *(v0 + 1848);
          v12 = *(v0 + 1824);
          ++v17;
          v25 = *v19;
          v26 = v24;
          v15 = v25(v11, v12);
          if (v16 == v17)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_8:
      v27 = *(v0 + 1920);
      v28 = *(v0 + 1896);
      v29 = *(v0 + 1888);
      v30 = *(v0 + 1880);
      v31 = *(v0 + 1872);
      v32 = *(v0 + 1832);
      v33 = *(v0 + 1824);
      v34 = *(v0 + 1680);

      v35 = *(v32 + 8);
      v35(v31, v33);
      v35(v30, v33);
      v35(v29, v33);
      *v34 = v27;

      v36 = *(v0 + 8);
    }

    else
    {
      v52 = *(v0 + 1904);
      v53 = *(v0 + 1896);
      v54 = *(v0 + 1888);
      v55 = *(v0 + 1880);
      v56 = *(v0 + 1872);
      v57 = *(v0 + 1832);
      v58 = *(v0 + 1824);
      v59 = v10;
      sub_1B3E64();

      swift_willThrow();
      v60 = *(v57 + 8);
      v60(v56, v58);
      v60(v55, v58);
      v60(v54, v58);
LABEL_22:

      v36 = *(v0 + 8);
    }

    return v36();
  }

  v37 = *(v0 + 1744);
  v38 = *(v0 + 1736);
  v39 = *(v0 + 1728);
  sub_174CF0(v1, v39);
  if ((*(v37 + 48))(v39, 1, v38) == 1)
  {
    sub_42F48(*(v0 + 1728), &qword_22EE68, &qword_1D09B0);
LABEL_29:
    v73 = swift_task_alloc();
    *(v0 + 1928) = v73;
    *v73 = v0;
    v73[1] = sub_171CE4;
    v74 = *(v0 + 1792);
    v75 = *(v0 + 1784);

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v75, 0, 0, v74, v0 + 1648);
  }

  v40 = *(v0 + 1912);
  v12 = *(v0 + 1760);
  v41 = *(v0 + 1752);
  v42 = *(v0 + 1736);
  sub_174D60(*(v0 + 1728), v12);
  v43 = (v12 + *(v42 + 20));
  v11 = *v43;
  v14 = v43[1];
  sub_174DC4(v12, v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 1672) = v40;
  v15 = sub_3A678(v11, v14);
  v46 = *(v40 + 16);
  v47 = (v45 & 1) == 0;
  v48 = __OFADD__(v46, v47);
  v49 = v46 + v47;
  if (v48)
  {
    goto LABEL_33;
  }

  LOBYTE(v12) = v45;
  if (*(*(v0 + 1912) + 24) >= v49)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_34:
      v76 = v15;
      sub_1880A0();
      v15 = v76;
    }

LABEL_19:
    v61 = *(v0 + 1672);
    v62 = *(v0 + 1752);
    v63 = *(v0 + 1744);
    if (v12)
    {
      sub_174E84(*(v0 + 1752), v61[7] + *(v63 + 72) * v15);
    }

    else
    {
      v61[(v15 >> 6) + 8] |= 1 << v15;
      v70 = (v61[6] + 16 * v15);
      *v70 = v11;
      v70[1] = v14;
      sub_174D60(v62, v61[7] + *(v63 + 72) * v15);
      v71 = v61[2];
      v48 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v48)
      {
        __break(1u);
      }

      v61[2] = v72;
    }

    sub_174E28(*(v0 + 1760));
    *(v0 + 1624) = v61;
    *(v0 + 1920) = v61;
    *(v0 + 1912) = v61;
    goto LABEL_29;
  }

  sub_183B7C(v49, isUniquelyReferenced_nonNull_native);
  v15 = sub_3A678(v11, v14);
  if ((v12 & 1) == (v50 & 1))
  {
    goto LABEL_19;
  }

  return sub_1B5784();
}

uint64_t sub_1726BC()
{
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1832);
  v6 = *(v0 + 1824);
  v7 = *(v0 + 1808);
  v8 = *(v0 + 1800);
  v9 = *(v0 + 1792);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  v10(v2, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1728B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7A038;

  return sub_170FF0(a1, a2, v7, v6);
}

uint64_t sub_172964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a1;
  v8[4] = a4;
  v9 = sub_1B3B64();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = sub_1B3F34();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return _swift_task_switch(sub_172AD8, 0, 0);
}

uint64_t sub_172AD8()
{
  sub_1B3EC4();
  v1 = objc_opt_self();
  v0[18] = v1;
  v2 = [v1 defaultManager];
  sub_1B3F04();
  v3 = sub_1B4794();

  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[3];
    (*(v0[13] + 32))(v7, v0[17], v0[12]);
    v8 = type metadata accessor for Package(0);
    v9 = (v7 + *(v8 + 20));
    *v9 = v6;
    v9[1] = v5;
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[16];
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[12];
    sub_1B3EC4();
    (*(v14 + 16))(v13, v12, v15);
    sub_1B3B14();
    v16 = swift_task_alloc();
    v0[19] = v16;
    *v16 = v0;
    v16[1] = sub_172D90;
    v17 = v0[15];
    v18 = v0[11];

    return NSURLSession.download(for:delegate:)(v17, v18, 0);
  }
}

uint64_t sub_172D90(void *a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_173224;
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_172F5C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_172F5C()
{
  v1 = [*(v0 + 144) defaultManager];
  sub_1B3EB4(v2);
  v4 = v3;
  sub_1B3EB4(v5);
  v7 = v6;
  *(v0 + 16) = 0;
  v8 = [v1 moveItemAtURL:v4 toURL:v6 error:v0 + 16];

  v9 = *(v0 + 16);
  v10 = *(v0 + 136);
  v11 = *(v0 + 128);
  v12 = *(v0 + 120);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  if (v8)
  {
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v15 = *(v0 + 24);
    v16 = *(v14 + 8);
    v17 = v9;
    v16(v12, v13);
    v16(v11, v13);
    (*(v14 + 32))(v15, v10, v13);
    v18 = type metadata accessor for Package(0);
    v19 = (v15 + *(v18 + 20));
    *v19 = v24;
    v19[1] = v25;
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v21 = v9;
    sub_1B3E64();

    swift_willThrow();
    v22 = *(v14 + 8);
    v22(v12, v13);
    v22(v11, v13);
    v22(v10, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_173224()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  v3(v0[16], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t PackageService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1733DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Package(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_173438(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_17345C, 0, 0);
}

uint64_t sub_17345C()
{
  v1 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = sub_2B0C(&qword_22EE70, &qword_1D09C8);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_17357C;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v3, 0, 0, &unk_1D0BE8, v2, v1);
}

uint64_t sub_17357C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_174F50;
  }

  else
  {

    v2 = sub_174F58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1736AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B3F34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_173780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B3F34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_17383C(uint64_t a1)
{
  result = sub_1B3F34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_173914(uint64_t a1)
{
  *(v2 + 2688) = a1;
  *(v2 + 2696) = *v1;
  return _swift_task_switch(sub_17393C, 0, 0);
}

uint64_t sub_17393C()
{
  v1 = *(v0 + 2696);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 2704) = v4;
  *v4 = v0;
  v4[1] = sub_173A6C;

  return v6(v0 + 16, v2, v3);
}

uint64_t sub_173A6C()
{
  *(*v1 + 2712) = v0;

  if (v0)
  {
    v2 = sub_173C14;
  }

  else
  {
    v2 = sub_173B80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_173B80()
{
  v1 = v0[336];
  memcpy(v0 + 142, v0 + 2, 0x460uLL);
  sub_71E98((v0 + 228), (v0 + 282));
  sub_2B54((v0 + 142));
  memcpy(v1, v0 + 228, 0x1B0uLL);
  v2 = v0[1];

  return v2();
}

void *sub_173C2C()
{
  sub_2698((v0 + 16), *(v0 + 40));
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (result)
  {
    sub_2698((v0 + 16), *(v0 + 40));
    sub_2B0C(&qword_22E5C8, &qword_1D0BC0);
    result = sub_1B4264();
    if (v5)
    {
      v2 = sub_264B8(&v4, v6);
      __chkstk_darwin(v2);
      sub_2B0C(&qword_22F0F0, &unk_1D0BC8);
      swift_allocObject();
      v3 = sub_1B4354();

      sub_2BF8(v6);
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

uint64_t sub_173D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = sub_1B4C54();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_404C4(a6, v20);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  sub_264B8(v20, (v17 + 5));
  v17[10] = sub_1744E8;
  v17[11] = v15;
  v17[12] = a3;
  v17[13] = a4;

  sub_16AB6C(0, 0, v14, &unk_1D0BE0, v17);
}

uint64_t sub_173F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v14;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v9 = sub_1B45D4();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v12 = (&async function pointer to dispatch thunk of ComputeService.startup() + async function pointer to dispatch thunk of ComputeService.startup());
  v10 = swift_task_alloc();
  v8[10] = v10;
  *v10 = v8;
  v10[1] = sub_17402C;

  return v12();
}

uint64_t sub_17402C()
{

  return _swift_task_switch(sub_174128, 0, 0);
}

uint64_t sub_174128()
{
  sub_2698(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1741D0;
  v2 = *(v0 + 72);

  return sub_85E74(v2, 1);
}

uint64_t sub_1741D0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_174368;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3 = sub_1742FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1742FC()
{
  (*(v0 + 24))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_174368()
{
  (*(v0 + 40))(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_17440C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StartupTaskExecutionPhase.afterLaunching(_:);
  v3 = sub_1B4324();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1744B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_174510()
{
  swift_unknownObjectRelease();

  sub_2BF8((v0 + 40));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_174568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226C;

  return sub_173F18(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

unint64_t sub_174654()
{
  result = qword_22F108;
  if (!qword_22F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F108);
  }

  return result;
}

uint64_t sub_1746A8()
{
  v1 = sub_1B3F34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v3 + ((v5 + v4) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3;
  v7 = (v5 + v6) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v4, v1);

  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_1747C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B3F34() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v7 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 16) & ~v6;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v9);
  v14 = *(v1 + v9 + 8);
  v15 = *(v1 + ((v10 + v8) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_226C;

  return sub_172964(a1, v11, v12, v1 + v7, v13, v14, v1 + v10, v15);
}

void *sub_174920(uint64_t a1, uint64_t *a2)
{
  v41 = a2;
  v3 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  __chkstk_darwin(v3 - 8);
  v40 = &v35 - v4;
  v5 = sub_1B3F34();
  v6 = __chkstk_darwin(v5);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v35 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = *(v8 + 16);
    v11 = v8 + 16;
    v13 = *(v11 + 56);
    v37 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v38 = v12;
    v14 = a1 + v37;
    v36 = (v11 - 8);
    v42 = (v11 + 16);
    v15 = _swiftEmptyArrayStorage;
    v39 = v11;
    while (1)
    {
      v21 = v5;
      v38(v44, v14, v5);
      v22 = sub_1B3EA4();
      v24 = *v41;
      if (!*(*v41 + 16))
      {
        break;
      }

      v25 = sub_3A678(v22, v23);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        goto LABEL_9;
      }

      v16 = *(v24 + 56);
      v17 = type metadata accessor for Package(0);
      v18 = *(v17 - 8);
      v19 = v16 + *(v18 + 72) * v25;
      v20 = v40;
      sub_174DC4(v19, v40);
      (*(v18 + 56))(v20, 0, 1, v17);
      sub_42F48(v20, &qword_22EE68, &qword_1D09B0);
      v5 = v21;
      (*v36)(v44, v21);
LABEL_4:
      v14 += v13;
      if (!--v10)
      {
        return v15;
      }
    }

LABEL_9:
    v28 = type metadata accessor for Package(0);
    v29 = v40;
    (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
    sub_42F48(v29, &qword_22EE68, &qword_1D09B0);
    v30 = *v42;
    v5 = v21;
    (*v42)(v43, v44, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_37A78(0, v15[2] + 1, 1);
      v5 = v21;
      v15 = v45;
    }

    v33 = v15[2];
    v32 = v15[3];
    if (v33 >= v32 >> 1)
    {
      sub_37A78((v32 > 1), v33 + 1, 1);
      v5 = v21;
      v15 = v45;
    }

    v15[2] = v33 + 1;
    v30(v15 + v37 + v33 * v13, v43, v5);
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_174CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22EE68, &qword_1D09B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_174D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Package(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_174DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Package(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_174E28(uint64_t a1)
{
  v2 = type metadata accessor for Package(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_174E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Package(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_174EFC()
{
  result = qword_22F118;
  if (!qword_22F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F118);
  }

  return result;
}

uint64_t dispatch thunk of MediaTypeRecommendationServiceType.fetchRecommendedMediaType()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7A038;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MediaTypeRecommendationServiceType.fetchRecommendedMediaType(from:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_226C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MediaTypeRecommendationSubserviceType.fetchRecommendedMediaType(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_7A038;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MangaYouMightLikeServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

BooksPersonalization::StoreBookTaste_optional __swiftcall StoreBookTaste.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BooksPersonalization::StoreBookTasteInfo __swiftcall StoreBookTasteInfo.init(taste:explicitlyDeclined:)(BooksPersonalization::StoreBookTaste taste, Swift::Bool explicitlyDeclined)
{
  *v2 = *taste;
  v2[1] = explicitlyDeclined;
  result.taste = taste;
  return result;
}

unint64_t sub_17548C()
{
  result = qword_22F120;
  if (!qword_22F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoreBookTasteInfo(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreBookTasteInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of StoreBookTastesServiceType.fetchStoreTastes(storeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_441B4;

  return v9(a1, a2, a3);
}

unint64_t sub_17577C()
{
  v1 = *v0;
  v2 = 0x65726E654778616DLL;
  v3 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000001ALL;
  }

  v4 = 0xD000000000000023;
  if (v1 == 1)
  {
    v4 = 0x6F6874754178616DLL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_175850@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_176168(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_175878(uint64_t a1)
{
  v2 = sub_175B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1758B4(uint64_t a1)
{
  v2 = sub_175B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.SeedBookRecommendationConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22F128, &qword_1D0FA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v18[5] = v1[2];
  v18[6] = v7;
  v9 = v1[5];
  v18[3] = v1[4];
  v18[4] = v8;
  v10 = v1[6];
  v11 = v1[7];
  v18[1] = v9;
  v18[2] = v10;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  sub_2698(v13, v12);
  sub_175B30();
  sub_1B5884();
  v25 = 0;
  v16 = v19;
  sub_1B5534();
  if (v16)
  {
    return (*(v4 + 8))(v6, v15);
  }

  v19 = v11;
  v24 = 1;
  sub_1B5534();
  v23 = 2;
  sub_1B54F4();
  v22 = 3;
  sub_1B54F4();
  v21 = 4;
  sub_1B54F4();
  v20 = 5;
  sub_1B5534();
  return (*(v4 + 8))(v6, v15);
}

unint64_t sub_175B30()
{
  result = qword_22F130;
  if (!qword_22F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F130);
  }

  return result;
}

uint64_t WorkServiceConfiguration.SeedBookRecommendationConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22F138, &qword_1D0FA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_2698(a1, a1[3]);
  sub_175B30();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1B53F4();
  LOBYTE(v32[0]) = 1;
  v26 = sub_1B53F4();
  LOBYTE(v32[0]) = 2;
  *&v25 = sub_1B53B4();
  *(&v25 + 1) = v10;
  LOBYTE(v32[0]) = 3;
  v11 = sub_1B53B4();
  *(&v24 + 1) = v12;
  *&v24 = v11;
  LOBYTE(v32[0]) = 4;
  v23 = sub_1B53B4();
  v14 = v13;
  v37 = 5;
  v15 = sub_1B53F4();
  (*(v6 + 8))(v8, v5);
  v17 = *(&v25 + 1);
  v16 = v26;
  *&v27 = v9;
  *(&v27 + 1) = v26;
  v18 = v25;
  v28 = v25;
  v29 = v24;
  *&v30 = v23;
  *(&v30 + 1) = v14;
  v31 = v15;
  *(a2 + 64) = v15;
  v19 = v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v19;
  v20 = v28;
  *a2 = v27;
  *(a2 + 16) = v20;
  sub_175F10(&v27, v32);
  sub_2BF8(a1);
  v32[0] = v9;
  v32[1] = v16;
  v32[2] = v18;
  v32[3] = v17;
  v33 = v24;
  v34 = v23;
  v35 = v14;
  v36 = v15;
  return sub_175F48(v32);
}

uint64_t sub_175FA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_175FF0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_176064()
{
  result = qword_22F140;
  if (!qword_22F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F140);
  }

  return result;
}

unint64_t sub_1760BC()
{
  result = qword_22F148;
  if (!qword_22F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F148);
  }

  return result;
}

unint64_t sub_176114()
{
  result = qword_22F150;
  if (!qword_22F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22F150);
  }

  return result;
}

uint64_t sub_176168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726E654778616DLL && a2 == 0xEB00000000734449;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6874754178616DLL && a2 == 0xEC00000073444972 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000023 && 0x80000000001D8A70 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D7730 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000000001D8AA0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000000001D8AC0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

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

uint64_t sub_176370()
{
  v0 = sub_1B3CE4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5EA10(v2, qword_22F158);
  sub_50E58(v0, qword_22F158);
  sub_1B3CD4();
  sub_1B3C94();
  sub_1B3CC4();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1B3CB4();
  sub_1B3CC4();
  v5(v4, v0);
  sub_1B3CA4();
  sub_1B3CC4();
  return (v5)(v4, v0);
}

Swift::String __swiftcall AggregateFlattener.flatten(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    do
    {
      sub_404C4(v6, v14);
      v7 = v15;
      v8 = v16;
      sub_2698(v14, v15);
      countAndFlagsBits = (*(v8 + 8))(countAndFlagsBits, object, v7, v8);
      v10 = v9;

      sub_2BF8(v14);
      v6 += 40;
      object = v10;
      --v5;
    }

    while (v5);
  }

  else
  {

    v10 = object;
  }

  v11 = countAndFlagsBits;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t _s20BooksPersonalization24StringOperationFlattenerC7flatten6stringS2S_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B3CE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  if (qword_228340 != -1)
  {
    swift_once();
  }

  v8 = sub_50E58(v4, qword_22F158);
  (*(v5 + 16))(v7, v8, v4);
  sub_402F4();
  sub_1B4EE4();
  (*(v5 + 8))(v7, v4);
  isa = sub_1B4AA4().super.isa;

  v10 = sub_1B4794();
  v11 = [(objc_class *)isa componentsJoinedByString:v10, v14, v15];

  sub_1B47C4();
  v12 = sub_1B4844();

  return v12;
}

uint64_t sub_176828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_17686C(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229708, &unk_1BCB60);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v36 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v5 = __chkstk_darwin(v36);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v31 - v8;
  v9 = _swiftEmptyDictionarySingleton;
  v38 = _swiftEmptyDictionarySingleton;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v35 = (v7 + 48);
  v31 = v7;
  v34 = (v7 + 32);

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (v15 << 9) | (8 * v17);
    v19 = *(*(a1 + 48) + v18);
    v37 = *(*(a1 + 56) + v18);

    sub_2B0C(&qword_229710, &unk_1D32C0);
    sub_179FD4();
    sub_1B43C4();
    if ((*v35)(v4, 1, v36) == 1)
    {
      result = sub_17A038(v4);
    }

    else
    {
      v20 = *v34;
      (*v34)(v33, v4, v36);
      v20(v32, v33, v36);
      v21 = v9[2];
      if (v9[3] <= v21)
      {
        sub_17DB3C(v21 + 1, 1);
        v9 = v38;
      }

      result = sub_1B57E4();
      v22 = v9 + 8;
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~v9[(v24 >> 6) + 8]) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = v22[v25];
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~v9[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(v9[6] + 8 * v26) = v19;
      result = (v20)(v9[7] + *(v31 + 72) * v26, v32, v36);
      ++v9[2];
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v9;
    }

    v12 = *(a1 + 64 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_176C28(uint64_t a1, const void *a2)
{
  v3[683] = v2;
  v3[677] = a2;
  v3[671] = a1;
  v3[689] = sub_2B0C(&qword_22E178, &unk_1CF3C0);
  v3[695] = swift_task_alloc();
  v3[696] = swift_task_alloc();
  memcpy(v3 + 167, a2, 0x460uLL);

  return _swift_task_switch(sub_176CF0, 0, 0);
}

uint64_t sub_176CF0()
{
  v1 = *(v0 + 5464);
  v2 = *(v0 + 5416);
  v3 = *(v0 + 5368);
  v4 = sub_177B34(*(v0 + 1960) & 1, v3);
  v5 = swift_allocObject();
  *(v0 + 5576) = v5;
  v5[2] = v1;
  v5[3] = v3;
  memcpy(v5 + 4, v2, 0x460uLL);

  sub_84BC0(v0 + 1336, v0 + 2456);
  *(v0 + 5584) = sub_2B0C(&qword_22A410, &qword_1C0110);
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  *(v0 + 5592) = v6;
  v6[2] = v1;
  v6[3] = v4;
  memcpy(v6 + 4, (v0 + 1336), 0x460uLL);

  sub_84BC0(v0 + 1336, v0 + 3576);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 656, v0 + 5272, sub_176E98, v0 + 1296);
}

uint64_t sub_176E98()
{
  v1[700] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 659, sub_17774C, v1 + 604);
  }

  else
  {
    v1[701] = v1[659];

    return _swift_asyncLet_get_throwing(v1 + 2, v1 + 653, sub_176F5C, v1 + 648);
  }
}

uint64_t sub_176F5C()
{
  *(v1 + 5616) = v0;
  if (v0)
  {
    v2 = sub_17783C;
  }

  else
  {
    v2 = sub_176F90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_176F90()
{
  v59 = v0;
  v1 = (v0 + 587);
  v2 = v0 + 609;
  v3 = v0 + 665;
  v4 = v0[653];
  v5 = *(v4 + 64);
  v51 = v4 + 64;
  v54 = v0[689];
  v55 = v4;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v5;
  v50 = (63 - v7) >> 6;
  isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  v52 = v0;
  v53 = v0 + 665;
  while (1)
  {
    v57 = v14;
    if (!v8)
    {
      break;
    }

LABEL_10:
    v16 = v0[696];
    v17 = v0[695];
    v18 = __clz(__rbit64(v8)) | (v13 << 6);
    v56 = *(v55 + 48);
    v19 = sub_1B40F4();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v16, v56 + *(v20 + 72) * v18, v19);
    *(v16 + *(v54 + 48)) = *(*(v55 + 56) + 8 * v18);
    sub_179858(v16, v17);
    v21 = *(v17 + *(v54 + 48));
    v22 = *(v20 + 8);

    isUniquelyReferenced_nonNull_native = v22(v17, v19);
    v23 = *(v21 + 16);
    v14 = v57;
    v24 = *(v57 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return _swift_asyncLet_get_throwing(isUniquelyReferenced_nonNull_native, v10, v11, v12);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 > *(v57 + 3) >> 1)
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      isUniquelyReferenced_nonNull_native = sub_33358(isUniquelyReferenced_nonNull_native, v26, 1, v57);
      v14 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v53;
    v8 &= v8 - 1;
    if (*(v21 + 16))
    {
      if ((*(v14 + 3) >> 1) - *(v14 + 2) < v23)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      v0 = v52;
      if (v23)
      {
        v27 = *(v14 + 2);
        v28 = __OFADD__(v27, v23);
        v29 = v27 + v23;
        if (v28)
        {
          goto LABEL_34;
        }

        *(v14 + 2) = v29;
      }
    }

    else
    {

      v0 = v52;
      if (v23)
      {
        goto LABEL_32;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v15 >= v50)
    {
      break;
    }

    v8 = *(v51 + 8 * v15);
    ++v13;
    if (v8)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  *v3 = _swiftEmptyDictionarySingleton;
  v30 = *(v14 + 2);
  if (v30)
  {
    v31 = v14 + 32;
    do
    {
      *v1 = *v31;
      v32 = *(v31 + 1);
      v33 = *(v31 + 2);
      v34 = *(v31 + 4);
      *(v1 + 48) = *(v31 + 3);
      *(v1 + 64) = v34;
      *(v1 + 16) = v32;
      *(v1 + 32) = v33;
      v35 = *(v31 + 5);
      v36 = *(v31 + 6);
      v37 = *(v31 + 7);
      v38 = *(v31 + 128);
      *(v1 + 128) = v38;
      *(v1 + 96) = v36;
      *(v1 + 112) = v37;
      *(v1 + 80) = v35;
      v39 = *(v1 + 48);
      *(v2 + 2) = *(v1 + 32);
      *(v2 + 3) = v39;
      v40 = *(v1 + 16);
      *v2 = *v1;
      *(v2 + 1) = v40;
      *(v2 + 128) = v38;
      v41 = *(v1 + 112);
      *(v2 + 6) = *(v1 + 96);
      *(v2 + 7) = v41;
      v42 = *(v1 + 80);
      *(v2 + 4) = *(v1 + 64);
      *(v2 + 5) = v42;
      sub_429F8(v1, (v0 + 631));
      v43 = sub_1786C4(v2);
      v44 = swift_task_alloc();
      *(v44 + 16) = v3;
      *(v44 + 24) = v2;
      sub_157E64(sub_179C84, v44, v43);

      sub_5C740(v1);

      v31 += 17;
      --v30;
    }

    while (v30);
    v45 = *v3;
  }

  else
  {
    v45 = _swiftEmptyDictionarySingleton;
  }

  v46 = v0[701];
  v47 = sub_17686C(v45);

  memcpy(__dst, v0 + 167, 0x460uLL);
  v0[703] = sub_178938(v46, v47, __dst);

  sub_2B0C(&qword_22F358, &qword_1D12E8);
  v48 = swift_allocObject();
  v0[704] = v48;
  *(v48 + 16) = xmmword_1BFC80;
  v11 = sub_177414;
  isUniquelyReferenced_nonNull_native = (v0 + 2);
  v10 = v0 + 653;
  v12 = v0 + 666;

  return _swift_asyncLet_get_throwing(isUniquelyReferenced_nonNull_native, v10, v11, v12);
}

uint64_t sub_177414()
{
  *(v1 + 5640) = v0;
  if (v0)
  {

    v2 = sub_1779A0;
  }

  else
  {
    v2 = sub_177494;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_177494()
{
  v16 = v0;
  v1 = v0[704];
  v2 = v0[703];
  v3 = v0[671];
  *(v1 + 32) = v0[653];
  *(v1 + 40) = v2;
  v4 = _swiftEmptyDictionarySingleton;
  v15[0] = _swiftEmptyDictionarySingleton;
  v5 = *(v3 + 16);

  if (!v5)
  {
LABEL_10:
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v0[706] = v4;

    return _swift_asyncLet_finish(v0 + 82, v0 + 659, sub_177658, v0 + 684);
  }

  v6 = v0[705];
  v7 = v0[704];
  v8 = v0[671];
  v9 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 72);
  sub_178B60(v15, v8 + v10, v7);
  if (!v6)
  {
    for (i = v11 + v10; --v5; i = v13)
    {
      v13 = i + v11;
      sub_178B60(v15, v0[671] + i, v0[704]);
    }

    v4 = v15[0];
    goto LABEL_10;
  }
}

uint64_t sub_1776B8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 5648);

  return v1(v2);
}

uint64_t sub_1777AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_17783C()
{

  return _swift_asyncLet_finish(v0 + 656, v0 + 5272, sub_1778B0, v0 + 5232);
}

uint64_t sub_177910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1779A0()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_asyncLet_finish(v0 + 656, v0 + 5272, sub_177A44, v0 + 5376);
}

uint64_t sub_177AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_177B34(char a1, uint64_t a2)
{
  v82 = sub_1B40F4();
  v4 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v80 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v62 - v10;
  if ((a1 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = *(a2 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v83 = _swiftEmptyArrayStorage;
  sub_37768(0, v12, 0);
  v14 = 0;
  v63 = 0;
  v13 = v83;
  v67 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v68 = v12;
  v69 = a2 + v67;
  v15 = (v4 + 16);
  v65 = (v4 + 8);
  v66 = (v4 + 16);
  v16 = *(v7 + 72);
  v64 = v16;
  while (1)
  {
    v17 = v80;
    sub_8478C(v69 + v16 * v14, v80);
    v18 = *v15;
    (*v15)(v81, v17, v82);
    v19 = *(v17 + v6[5]);
    v20 = *(v19 + 32);
    v21 = v20 & 0x3F;
    v77 = ((1 << v20) + 63) >> 6;
    v22 = 8 * v77;

    v78 = v14;
    v79 = v13;
    if (v21 <= 0xD)
    {
      goto LABEL_5;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_5:
      v76 = v18;
      __chkstk_darwin(v23);
      bzero(&v62 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0), v22);
      v24 = 0;
      v25 = 0;
      v26 = 1 << *(v19 + 32);
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v28 = v27 & *(v19 + 56);
      v29 = (v26 + 63) >> 6;
      while (v28)
      {
        v30 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v31 = v30 | (v25 << 6);
LABEL_16:
        v34 = *(*(v19 + 48) + 568 * v31 + 64);
        if (v34 != 2 && (v34 & 1) != 0)
        {
          *(&v62 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v31;
          if (__OFADD__(v24++, 1))
          {
            goto LABEL_33;
          }
        }
      }

      v32 = v25;
      while (1)
      {
        v25 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v25 >= v29)
        {
          v77 = sub_3D37C((&v62 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0)), v77, v24, v19);
          v18 = v76;
          goto LABEL_22;
        }

        v33 = *(v19 + 56 + 8 * v25);
        ++v32;
        if (v33)
        {
          v28 = (v33 - 1) & v33;
          v31 = __clz(__rbit64(v33)) | (v25 << 6);
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }

    v57 = swift_slowAlloc();

    v58 = v63;
    v59 = sub_1798C8(v57, v77, v19, sub_178130);
    v63 = v58;
    if (v58)
    {
      break;
    }

    v60 = v59;
    swift_bridgeObjectRelease_n();

    v77 = v60;
LABEL_22:
    v36 = v11;
    v37 = v81;
    v38 = v11;
    v39 = v82;
    v18(v36, v81, v82);
    v40 = v80;
    v41 = (v80 + v6[6]);
    v42 = *v41;
    v43 = v41[1];
    v44 = (v80 + v6[7]);
    v45 = *v44;
    v46 = v44[1];
    v75 = v42;
    v76 = v45;
    LODWORD(v42) = *(v80 + v6[8]);
    v74 = *(v80 + v6[9]);
    v47 = *(v80 + v6[10]);
    v71 = *(v80 + v6[11]);
    v72 = v42;
    v48 = v6[14];
    v70 = *(v80 + v6[13]);
    v73 = *(v80 + v48);
    v49 = *v65;

    v50 = v39;
    v11 = v38;
    v49(v37, v50);
    sub_155848(v40);
    *&v38[v6[5]] = v77;
    v51 = &v38[v6[6]];
    v52 = v76;
    *v51 = v75;
    *(v51 + 1) = v43;
    v53 = &v38[v6[7]];
    *v53 = v52;
    *(v53 + 1) = v46;
    v38[v6[8]] = v72;
    v38[v6[9]] = v74;
    *&v38[v6[10]] = v47;
    v38[v6[11]] = v71;
    *&v38[v6[12]] = _swiftEmptySetSingleton;
    *&v38[v6[13]] = v70;
    *&v38[v6[14]] = v73;
    v13 = v79;
    v83 = v79;
    v55 = v79[2];
    v54 = v79[3];
    if (v55 >= v54 >> 1)
    {
      sub_37768((v54 > 1), v55 + 1, 1);
      v13 = v83;
    }

    v14 = v78 + 1;
    v13[2] = v55 + 1;
    v56 = v13 + v67 + v55 * v64;
    v16 = v64;
    sub_84A24(v11, v56);
    v15 = v66;
    if (v14 == v68)
    {
      return v13;
    }
  }

  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

uint64_t sub_178150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[145] = a4;
  v4[144] = a3;
  v4[143] = a2;
  v4[142] = a1;
  return _swift_task_switch(sub_17817C, 0, 0);
}

uint64_t sub_17817C()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v2[5];
  v4 = v2[6];
  sub_2698(v2 + 2, v3);
  memcpy(v0 + 2, v1, 0x460uLL);
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[146] = v5;
  *v5 = v0;
  v5[1] = sub_1782D0;
  v6 = v0[144];

  return v8(v6, v0 + 2, v3, v4);
}

uint64_t sub_1782D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1176) = v1;

  if (v1)
  {
    v5 = sub_17A0A8;
  }

  else
  {
    *(v4 + 1184) = a1;
    v5 = sub_17A0A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1783F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[145] = a4;
  v4[144] = a3;
  v4[143] = a2;
  v4[142] = a1;
  return _swift_task_switch(sub_178424, 0, 0);
}

uint64_t sub_178424()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v2[10];
  v4 = v2[11];
  sub_2698(v2 + 7, v3);
  memcpy(v0 + 2, v1, 0x460uLL);
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[146] = v5;
  *v5 = v0;
  v5[1] = sub_178578;
  v6 = v0[144];

  return v8(v6, v0 + 2, v3, v4);
}

uint64_t sub_178578(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1176) = v1;

  if (v1)
  {
    v5 = sub_2680;
  }

  else
  {
    *(v4 + 1184) = a1;
    v5 = sub_1786A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

char *sub_1786C4(char *result)
{
  v1 = *(result + 6);
  if (v1)
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while (v4)
    {
LABEL_11:
      v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
      v10 = *(v9 + 16);
      v11 = *(v7 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v12 > *(v7 + 3) >> 1)
      {
        if (v11 <= v12)
        {
          v13 = v11 + v10;
        }

        else
        {
          v13 = v11;
        }

        result = sub_33128(result, v13, 1, v7);
        v7 = result;
      }

      v4 &= v4 - 1;
      if (*(v9 + 16))
      {
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v10)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = *(v7 + 2);
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_33;
          }

          *(v7 + 2) = v16;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v6;
      if (v4)
      {
        v6 = v8;
        goto LABEL_11;
      }
    }

    v17 = *(v7 + 2);
    if (v17)
    {
      sub_3741C(0, v17, 0);
      v18 = _swiftEmptyArrayStorage[2];
      v19 = 32;
      do
      {
        v20 = *&v7[v19];
        v21 = _swiftEmptyArrayStorage[3];
        if (v18 >= v21 >> 1)
        {
          sub_3741C((v21 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        _swiftEmptyArrayStorage[v18 + 4] = v20;
        v19 += 568;
        ++v18;
        --v17;
      }

      while (v17);
    }

    v22 = sub_40854(_swiftEmptyArrayStorage);

    return v22;
  }

  else
  {
LABEL_34:
    __break(1u);
  }

  return result;
}

__int128 *sub_178938(uint64_t a1, uint64_t a2, const void *a3)
{
  v21 = a1;
  v23 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v20 - v6;
  memcpy(v25, a3, 0x460uLL);
  v8 = *(a2 + 64);
  v24 = _swiftEmptyArrayStorage;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v8;
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_5F548(v7))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v5 + 16))(v7, *(a2 + 56) + *(v5 + 72) * (v16 | (v15 << 6)), v23);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v17 = v24;

      v18 = v22;

      sub_84BC0(v25, &v24);
      v19 = sub_179CD8(v21, a2, v17, v18, v25);
      sub_2B54(v25);

      swift_bridgeObjectRelease_n();

      return v19;
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_178B60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B40F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v36 = v7 + 16;
  v37 = v11;
  v35 = v10;
  (v10)(v9, a2);
  v12 = *(a3 + 16);
  if (!v12)
  {
    v13 = 0;
LABEL_19:
    (*(v7 + 8))(v9, v37);
    return sub_CC294(v13, 0);
  }

  v13 = 0;
  v14 = (a3 + 32);
  while (1)
  {
    v15 = *v14;
    if (!*(*v14 + 16))
    {
      goto LABEL_4;
    }

    v16 = sub_3AC78(v9);
    if (v17)
    {
      break;
    }

LABEL_4:
    ++v14;
    if (!--v12)
    {
      goto LABEL_19;
    }
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  sub_CC294(v13, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *a1;
  v20 = v38;
  v21 = sub_3AC78(v9);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (!v25)
  {
    v27 = v22;
    if (v20[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v32 = v21;
      sub_185F44();
      v21 = v32;
      v20 = v38;
      *a1 = v38;
      if ((v27 & 1) == 0)
      {
LABEL_13:
        v20[(v21 >> 6) + 8] |= 1 << v21;
        v29 = v21;
        v35(v20[6] + *(v7 + 72) * v21, v9, v37);
        *(v20[7] + 8 * v29) = _swiftEmptyArrayStorage;
        v30 = v20[2];
        v25 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v20[2] = v31;
      }
    }

    else
    {
      sub_17F10C(v26, isUniquelyReferenced_nonNull_native);
      v20 = v38;
      v21 = sub_3AC78(v9);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      *a1 = v20;
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_5FB40(v18);
    v13 = sub_BFFBC;
    goto LABEL_4;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_178E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char **a5@<X8>)
{
  v6 = v5;
  v12 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  result = __chkstk_darwin(v12);
  v16 = &v79 - v15;
  v17 = *a1;
  v18 = *(*a1 + 16);
  v19 = _swiftEmptyArrayStorage;
  if (!v18)
  {
    goto LABEL_49;
  }

  v87 = v16;
  v88 = v14;
  v89 = result;
  v90 = a4;
  v95 = a2;
  v91 = a3;
  v20 = 0;
  v86 = v14 + 16;
  v85 = v14 + 8;
  v21 = v17 + 32;
  v93 = v18 - 1;
  v92 = xmmword_1BCA80;
  v97 = v17;
  v115 = v18;
  v94 = v17 + 32;
  do
  {
    v96 = v19;
    v22 = (v21 + 136 * v20);
    v23 = v20;
    while (1)
    {
      if (v23 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v106 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[4];
      v109 = v22[3];
      v110 = v26;
      v107 = v24;
      v108 = v25;
      v27 = v22[5];
      v28 = v22[6];
      v29 = v22[7];
      v114 = *(v22 + 128);
      v112 = v28;
      v113 = v29;
      v111 = v27;
      v30 = v109;
      if (!v109)
      {
        goto LABEL_52;
      }

      if (*(v109 + 16))
      {
        break;
      }

LABEL_6:
      ++v23;
      v22 = (v22 + 136);
      if (v18 == v23)
      {
        v19 = v96;
        goto LABEL_49;
      }
    }

    v98 = v106;
    v99 = BYTE8(v106);
    v100 = BYTE8(v107);
    v101 = v107;
    v102 = v108;
    sub_429F8(&v106, v105);
    sub_42BA4(&v106, v105);
    v31 = sub_3AB0C(0);
    if ((v32 & 1) == 0 || (v33 = *(*(v30 + 56) + 8 * v31), !*(v33 + 16)))
    {
      sub_43FF4(&v106);
      result = sub_5C740(&v106);
LABEL_5:
      v18 = v115;
      goto LABEL_6;
    }

    memcpy(v105, (v33 + 32), 0x231uLL);
    v34 = v105[18];
    if (v105[18] >> 1 == 0xFFFFFFFF)
    {
      sub_4299C(v105, v104);
      sub_43FF4(&v106);
      sub_5C740(&v106);
      result = sub_2601C(v105);
      v17 = v97;
      goto LABEL_5;
    }

    v35 = v105[12];
    if ((v105[18] >> 62) <= 1)
    {
      v80 = v105[13];
      v81 = v105[16];
      v82 = v105[14];
      *&v83 = v105[17];
      *&v84 = v105[15];
      goto LABEL_18;
    }

    if (v105[18] >> 62 == 2)
    {
      *&v84 = v105[15];
      v82 = v105[14];
      *&v83 = v105[17];
      v80 = v105[13];
      v81 = v105[16];
LABEL_18:
      sub_2B0C(&qword_229488, &qword_1BC520);
      v36 = swift_allocObject();
      *(v36 + 16) = v92;
      v37 = v80;
      *(v36 + 32) = v35;
      *(v36 + 40) = v37;
      v38 = v84;
      *(v36 + 48) = v82;
      *(v36 + 56) = v38;
      v39 = v83;
      *(v36 + 64) = v81;
      *(v36 + 72) = v39;
      *(v36 + 80) = v34 & 1;
    }

    else
    {
      v36 = v105[12];
    }

    sub_4299C(v105, v104);
    sub_169DD8(&v105[12], v104);
    v40 = COERCE_DOUBLE(Array<A>.affinity.getter(v36));
    v42 = v41;

    if (v42)
    {
      v43 = 0.0;
    }

    else
    {
      v43 = v40;
    }

    v44 = v95;
    if (*(v95 + 16))
    {
      v45 = sub_43124(v105[0]);
      if (v46)
      {
        v47 = *(v44 + 56);
        v48 = v87;
        v49 = v88;
        v50 = v89;
        (*(v88 + 16))(v87, v47 + *(v88 + 72) * v45, v89);
        sub_1B4394();
        sub_2601C(v105);
        (*(v49 + 8))(v48, v50);
        v51 = v104[0];
        v52 = *(v104[0] + 16);
        if (!v52)
        {
          goto LABEL_26;
        }

LABEL_29:
        v81 = a5;
        v82 = v6;
        v104[0] = _swiftEmptyArrayStorage;
        *&v83 = v51;
        *&v84 = v52;
        sub_37708(0, v52, 0);
        v56 = v84;
        result = v83;
        v57 = 0;
        v53 = v104[0];
        v58 = (v83 + 80);
        while (v57 < *(result + 16))
        {
          if (!*v58)
          {
            goto LABEL_53;
          }

          v59 = *(v58 - 1);
          v104[0] = v53;
          v61 = *(v53 + 2);
          v60 = *(v53 + 3);
          if (v61 >= v60 >> 1)
          {
            sub_37708((v60 > 1), v61 + 1, 1);
            v56 = v84;
            result = v83;
            v53 = v104[0];
          }

          ++v57;
          *(v53 + 2) = v61 + 1;
          v53[v61 + 4] = v59;
          v58 += 17;
          if (v56 == v57)
          {

            a5 = v81;
            v6 = v82;
            v54 = *(v53 + 2);
            if (!v54)
            {
              goto LABEL_27;
            }

            goto LABEL_36;
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }
    }

    sub_2601C(v105);

    v52 = *(v51 + 16);
    if (v52)
    {
      goto LABEL_29;
    }

LABEL_26:

    v53 = _swiftEmptyArrayStorage;
    v54 = _swiftEmptyArrayStorage[2];
    if (v54)
    {
LABEL_36:
      v62 = v53[4];
      v63 = v54 - 1;
      if (v63)
      {
        v64 = v53 + 5;
        do
        {
          v65 = *v64++;
          v66 = v65;
          if (v62 < v65)
          {
            v62 = v66;
          }

          --v63;
        }

        while (v63);
      }

      v55 = fmin(v62 * *(v90 + 432), 1.0);
    }

    else
    {
LABEL_27:

      v55 = 1.0;
    }

    v83 = v113;
    v84 = v112;
    LODWORD(v82) = v114;
    v67 = v111;
    v68 = v110;

    v79 = *(&v68 + 1);

    v80 = v67;

    v81 = *(&v67 + 1);

    sub_43688(v101, v100);
    sub_43FF4(&v106);
    sub_5C740(&v106);
    result = swift_isUniquelyReferenced_nonNull_native();
    v69 = a5;
    if ((result & 1) == 0)
    {
      result = sub_33358(0, *(v96 + 2) + 1, 1, v96);
      v96 = result;
    }

    v70 = v96;
    v72 = *(v96 + 2);
    v71 = *(v96 + 3);
    if (v72 >= v71 >> 1)
    {
      result = sub_33358((v71 > 1), v72 + 1, 1, v96);
      v70 = result;
    }

    *(v70 + 2) = v72 + 1;
    v73 = &v70[136 * v72];
    *(v73 + 4) = v98;
    v20 = v23 + 1;
    v73[40] = v99;
    v74 = *(v104 + 3);
    *(v73 + 41) = v104[0];
    *(v73 + 11) = v74;
    *(v73 + 6) = v101;
    v73[56] = v100;
    v75 = *v103;
    *(v73 + 15) = *&v103[3];
    *(v73 + 57) = v75;
    *(v73 + 8) = v102;
    *(v73 + 9) = v55;
    *(v73 + 10) = v30;
    *(v73 + 11) = v43 * v55;
    v77 = v79;
    v76 = v80;
    *(v73 + 12) = v68;
    *(v73 + 13) = v77;
    *(v73 + 14) = v76;
    *(v73 + 15) = v81;
    v78 = v83;
    *(v73 + 8) = v84;
    *(v73 + 9) = v78;
    v73[160] = v82;
    v21 = v94;
    v19 = v70;
    a5 = v69;
    v17 = v97;
    v18 = v115;
  }

  while (v93 != v23);
LABEL_49:
  *a5 = v19;
  return result;
}

uint64_t sub_179514(uint64_t a1, const void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_176C28(a1, a2);
}

uint64_t sub_1795C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7A038;

  return sub_178150(a1, v4, v5, v1 + 32);
}

uint64_t sub_179670()
{

  if (v0[117])
  {
  }

  if (v0[120])
  {
  }

  if (v0[128])
  {
  }

  if (v0[138])
  {
  }

  return _swift_deallocObject(v0, 1152, 7);
}

uint64_t sub_1797A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226C;

  return sub_1783F8(a1, v4, v5, v1 + 32);
}

uint64_t sub_179858(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22E178, &unk_1CF3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_1798C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_179958(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_179958(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v26 = a4;
  v21 = result;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 568 * v15);
    memcpy(__dst, v16, 0x231uLL);
    memcpy(__src, v16, 0x231uLL);
    sub_4299C(__dst, v23);
    v17 = v26(__src);
    if (v4)
    {
      memcpy(v23, __src, 0x231uLL);
      return sub_2601C(v23);
    }

    v18 = v17;
    memcpy(v23, __src, 0x231uLL);
    result = sub_2601C(v23);
    if (v18)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_3D37C(v21, a2, v22, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_179B18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v23 = result;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(a3 + 48) + 40 * v16;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = *(v17 + 32);
    v24 = *v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    result = a4(&v24);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_3D908(v23, a2, v28, a3);
      }
    }
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
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_179C84(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v3 + 112);
  v10[6] = *(v3 + 96);
  v10[7] = v5;
  v11 = *(v3 + 128);
  v6 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v6;
  v7 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v7;
  v8 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v8;
  return sub_159A24(v4, v2, v10);
}

uint64_t sub_179CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v44 = a2;
  v45 = a3;
  v6 = sub_1B40F4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v36 - v11;
  sub_2B0C(&qword_22E180, &unk_1D1530);
  result = sub_1B5294();
  v13 = 0;
  v42 = result;
  v43 = a1;
  v14 = *(a1 + 64);
  v37 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v48 = v7;
  v38 = result + 64;
  v39 = v7 + 32;
  v40 = v7 + 16;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v49 = (v17 - 1) & v17;
LABEL_10:
      v22 = v19 | (v13 << 6);
      v23 = v43;
      v24 = v48;
      v25 = *(v48 + 72) * v22;
      v26 = v41;
      (*(v48 + 16))(v41, *(v43 + 48) + v25, v6);
      v27 = *(v23 + 56);
      v28 = v6;
      v52 = *(v27 + 8 * v22);
      v29 = *(v24 + 32);
      v29(v10, v26, v6);

      v30 = v50;
      sub_178E2C(&v52, v44, v45, v47, &v51);
      v50 = v30;
      if (v30)
      {
        break;
      }

      *(v38 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v31 = v42;
      result = (v29)(*(v42 + 48) + v25, v10, v28);
      *(*(v31 + 56) + 8 * v22) = v51;
      v32 = *(v31 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_17;
      }

      result = v31;
      v6 = v28;
      *(result + 16) = v34;
      v17 = v49;
      if (!v49)
      {
        goto LABEL_5;
      }
    }

    v35 = v42;

    (*(v48 + 8))(v10, v6);

    return v35;
  }

  else
  {
LABEL_5:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        return result;
      }

      v21 = *(v37 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v49 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_179FD4()
{
  result = qword_229718;
  if (!qword_229718)
  {
    sub_1CC1C(&qword_229710, &unk_1D32C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229718);
  }

  return result;
}

uint64_t sub_17A038(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229708, &unk_1BCB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_17A0D0(uint64_t a1)
{
  v4 = *(v1 + 8);

  return v4(v2);
}

uint64_t dispatch thunk of BooksByAuthorsServiceType.fetchBooks(by:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

void *sub_17A308(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A770, &qword_1C0558);
  result = sub_1B4264();
  if (v16)
  {
    v2 = sub_40474(v15, v16);
    __chkstk_darwin(v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for BooksBackendDiversifier();
    v14[3] = v7;
    v14[4] = &off_218F58;
    v14[0] = v6;
    type metadata accessor for DefaultBookClusteringService();
    v8 = swift_allocObject();
    v9 = sub_40474(v14, v7);
    __chkstk_darwin(v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_218F58;
    v8[2] = v13;
    sub_2BF8(v14);
    sub_2BF8(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_17A510(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v4)
  {
    type metadata accessor for AllCollectionTypesFillingClusteringService();
    v2 = swift_allocObject();
    sub_264B8(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17A5A8()
{
  type metadata accessor for SeedBasedRecommendationServiceResolver();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyDictionarySingleton;
  return result;
}

void *sub_17A5DC(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C060, &unk_1CEC20);
  result = sub_1B4254();
  if (result)
  {
    v2 = result;
    type metadata accessor for DelegatingCollectionService();
    result = swift_allocObject();
    result[4] = _swiftEmptyDictionarySingleton;
    result[5] = _swiftEmptyDictionarySingleton;
    result[6] = _swiftEmptyDictionarySingleton;
    result[7] = _swiftEmptyDictionarySingleton;
    result[8] = _swiftEmptyDictionarySingleton;
    result[2] = v2;
    result[3] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_17A68C(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  result = sub_1B4264();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22F528, &qword_1D1458);
  result = sub_1B4264();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FF0, qword_1BB3D0);
  result = sub_1B4264();
  if (v5)
  {
    type metadata accessor for SeedBasedMoreFromYourAuthorsService();
    v3 = swift_allocObject();
    sub_264B8(&v8, v3 + 16);
    sub_264B8(&v6, v3 + 56);
    sub_264B8(&v4, v3 + 96);
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_17A7F0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
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

void *sub_17A874(void *a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1B4794();
  v4 = [v2 BOOLForKey:v3];

  sub_2698(a1, a1[3]);
  if (v4)
  {
    v5 = type metadata accessor for AllCollectionTypesFillingClusteringService();
    result = sub_1B4254();
    if (!result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v69[3] = v5;
    v69[4] = &off_216F18;
    v69[0] = result;
LABEL_6:
    sub_404C4(v69, &v67);
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22A308, &unk_1C65B0);
    result = sub_1B4264();
    if (v66)
    {
      sub_2698(a1, a1[3]);
      type metadata accessor for DelegatingMediaTypesRecommendationService(0);
      result = sub_1B4254();
      if (result)
      {
        v7 = result;
        sub_2698(a1, a1[3]);
        sub_2B0C(&qword_22A100, &qword_1D1440);
        result = sub_1B4264();
        if (v64)
        {
          sub_2698(a1, a1[3]);
          sub_2B0C(&qword_22F4B0, &qword_1D13C0);
          result = sub_1B4264();
          if (v62)
          {
            sub_2698(a1, a1[3]);
            sub_2B0C(&qword_22A7F0, &unk_1C05F0);
            result = sub_1B4264();
            if (v60)
            {
              sub_2698(a1, a1[3]);
              sub_2B0C(&qword_228FF0, qword_1BB3D0);
              result = sub_1B4264();
              if (v58)
              {
                sub_2698(a1, a1[3]);
                sub_2B0C(&qword_22C080, &qword_1C65E0);
                result = sub_1B4264();
                if (v56)
                {
                  v44 = v7;
                  sub_2698(a1, a1[3]);
                  sub_2B0C(&qword_22A760, &qword_1CFD50);
                  result = sub_1B4264();
                  if (v54)
                  {
                    v8 = sub_40474(v61, v62);
                    v43[6] = v43;
                    __chkstk_darwin(v8);
                    v10 = (v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v11 + 16))(v10);
                    v12 = sub_40474(v59, v60);
                    v43[5] = v43;
                    __chkstk_darwin(v12);
                    v14 = (v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v15 + 16))(v14);
                    v16 = sub_40474(v55, v56);
                    v43[4] = v43;
                    __chkstk_darwin(v16);
                    v18 = (v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v19 + 16))(v18);
                    v20 = *v10;
                    v21 = *v14;
                    v22 = *v18;
                    v23 = type metadata accessor for GenreMetadataServiceDepthMapGenerator(0);
                    v52[3] = v23;
                    v52[4] = &off_216FF0;
                    v52[0] = v20;
                    v24 = type metadata accessor for SeedBasedRecommendationServiceResolver();
                    v50 = v24;
                    v51 = &off_220D90;
                    v49[0] = v21;
                    v25 = type metadata accessor for DelegatingCollectionService();
                    v47 = v25;
                    v48 = &off_2207B8;
                    v46[0] = v22;
                    v26 = type metadata accessor for InternalCollectionRecommendationService(0);
                    v27 = swift_allocObject();
                    v28 = sub_40474(v52, v23);
                    v43[3] = v43;
                    __chkstk_darwin(v28);
                    v30 = (v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v31 + 16))(v30);
                    v32 = sub_40474(v49, v50);
                    v43[2] = v43;
                    __chkstk_darwin(v32);
                    v34 = (v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v35 + 16))(v34);
                    v36 = sub_40474(v46, v47);
                    v43[1] = v43;
                    __chkstk_darwin(v36);
                    v38 = (v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v39 + 16))(v38);
                    v40 = *v30;
                    v41 = *v34;
                    v42 = *v38;
                    v27[21] = v23;
                    v27[22] = &off_216FF0;
                    v27[18] = v40;
                    v27[26] = v24;
                    v27[27] = &off_220D90;
                    v27[23] = v41;
                    v27[36] = v25;
                    v27[37] = &off_2207B8;
                    v27[33] = v42;
                    v45 = v26;
                    sub_2B0C(&qword_22F520, &unk_1D1448);
                    sub_1B4834();
                    sub_1B4634();
                    sub_264B8(&v67, (v27 + 7));
                    sub_264B8(&v65, (v27 + 2));
                    v27[12] = v44;
                    sub_264B8(&v63, (v27 + 13));
                    sub_264B8(&v57, (v27 + 28));
                    sub_264B8(&v53, (v27 + 38));
                    sub_2BF8(v46);
                    sub_2BF8(v49);
                    sub_2BF8(v52);
                    sub_2BF8(v55);
                    sub_2BF8(v59);
                    sub_2BF8(v61);
                    sub_2BF8(v69);
                    return v27;
                  }

                  goto LABEL_22;
                }

LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_2B0C(&qword_22F4A0, &qword_1D13A8);
  result = sub_1B4264();
  if (v68)
  {
    sub_264B8(&v67, v69);
    goto LABEL_6;
  }

LABEL_24:
  __break(1u);
  return result;
}

void *sub_17B180@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22F510, &qword_1D1428);
  result = sub_1B4264();
  if (v7)
  {
    v4 = type metadata accessor for GenreMetadataServiceDepthMapGenerator(0);
    v5 = swift_allocObject();
    sub_2B0C(&qword_22F518, &unk_1D1430);
    sub_1B4834();
    sub_1B4634();
    result = sub_264B8(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_216FF0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17B288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6[2] = a1;
  v3 = sub_2A16C(sub_189474, v6, &off_213EE0);
  v4 = type metadata accessor for FallingBackSuggestionsService();
  result = swift_allocObject();
  *(result + 16) = v3;
  a2[3] = v4;
  a2[4] = &off_220858;
  *a2 = result;
  return result;
}

uint64_t sub_17B314@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2698(a2, a2[3]);
  sub_2B0C(&qword_2291F8, &unk_1CFD30);
  sub_1B4244();

  if (v6)
  {
    return sub_264B8(&v5, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_17B464(uint64_t a1, void *a2)
{
  sub_2B0C(&qword_22A778, &unk_1C0560);
  v4 = 0;
  for (i = 0; ; i = 1)
  {
    v8 = v4;
    v9 = *(&off_213F08 + i + 32);
    sub_2698(a2, a2[3]);
    sub_1B4244();

    if (!v25)
    {
      break;
    }

    sub_264B8(&v24, v26);
    swift_beginAccess();
    sub_404C4(v26, &v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 16);
    v12 = sub_3B0C8(v9);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      break;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_1838B8(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_3B0C8(v9);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v20 = v11;
      if (v18)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_187F20();
    v12 = v23;
    v20 = v11;
    if (v18)
    {
LABEL_2:
      v6 = (v20[7] + 40 * v12);
      sub_2BF8(v6);
      sub_264B8(&v24, v6);
      goto LABEL_3;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    *(v20[6] + v12) = v9;
    sub_264B8(&v24, v20[7] + 40 * v12);
    v21 = v20[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_17;
    }

    v20[2] = v22;
LABEL_3:
    *(a1 + 16) = v20;
    swift_endAccess();
    result = sub_2BF8(v26);
    v4 = 1;
    if (v8)
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

unint64_t sub_17B6B4(void *a1, void *a2)
{
  v4 = 109;
  sub_2B0C(&qword_22F4B8, &qword_1D13C8);
  LOBYTE(v5) = 1;
  v6 = a2[3];
  sub_2698(a2, v6);
  v94 = "preferSaleTypeToGenreOrder";
  v7 = "";
  sub_1B4244();

  if (!v97)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_264B8(&v96, v98);
  swift_beginAccess();
  sub_404C4(v98, &v96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = a1[3];
  v95 = v10;
  a1[3] = 0x8000000000000000;
  v11 = sub_3B20C(1u);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v6) = v12;
  if (v10[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

LABEL_10:
    v20 = v11;
    sub_1861EC(&qword_22F4D8, &qword_1D13E8, sub_43178);
    v11 = v20;
    v18 = v10;
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_18355C(v16, isUniquelyReferenced_nonNull_native, &qword_22F4D8, &qword_1D13E8, sub_43178);
  v11 = sub_3B20C(1u);
  if ((v6 & 1) != (v17 & 1))
  {
    goto LABEL_43;
  }

LABEL_7:
  v18 = v10;
  if (v6)
  {
LABEL_8:
    v19 = (v18[7] + 40 * v11);
    sub_2BF8(v19);
    sub_264B8(&v96, v19);
    goto LABEL_13;
  }

LABEL_11:
  v18[(v11 >> 6) + 8] |= 1 << v11;
  *(v18[6] + v11) = 1;
  v21 = sub_264B8(&v96, v18[7] + 40 * v11);
  v22 = v18[2];
  v15 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18[2] = v23;
LABEL_13:
  a1[3] = v18;
  swift_endAccess();
  sub_2BF8(v98);
  sub_2B0C(&qword_22F4C0, &qword_1D13D0);
  LOBYTE(v5) = 1;
  v6 = a2[3];
  sub_2698(a2, v6);
  sub_1B4244();

  if (!v97)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_264B8(&v96, v98);
  swift_beginAccess();
  sub_404C4(v98, &v96);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v25 = a1[4];
  v95 = v25;
  a1[4] = 0x8000000000000000;
  v21 = sub_3B20C(1u);
  v27 = v25[2];
  v28 = (v26 & 1) == 0;
  v15 = __OFADD__(v27, v28);
  v29 = v27 + v28;
  if (v15)
  {
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v6) = v26;
  if (v25[3] >= v29)
  {
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_23:
    v33 = v21;
    sub_1861EC(&qword_22F4E0, &qword_1D13F0, sub_43178);
    v21 = v33;
    v31 = v95;
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  sub_18355C(v29, v24, &qword_22F4E0, &qword_1D13F0, sub_43178);
  v21 = sub_3B20C(1u);
  if ((v6 & 1) != (v30 & 1))
  {
    goto LABEL_43;
  }

LABEL_19:
  v31 = v25;
  if (v6)
  {
LABEL_20:
    v32 = (v31[7] + 40 * v21);
    sub_2BF8(v32);
    sub_264B8(&v96, v32);
    goto LABEL_26;
  }

LABEL_24:
  v31[(v21 >> 6) + 8] |= 1 << v21;
  *(v31[6] + v21) = 1;
  v34 = sub_264B8(&v96, v31[7] + 40 * v21);
  v35 = v31[2];
  v15 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31[2] = v36;
LABEL_26:
  a1[4] = v31;
  swift_endAccess();
  sub_2BF8(v98);
  sub_2B0C(&qword_22F4C8, &qword_1D13D8);
  LOBYTE(v5) = 1;
  v6 = a2[3];
  sub_2698(a2, v6);
  sub_1B4244();

  if (!v97)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  sub_264B8(&v96, v98);
  swift_beginAccess();
  sub_404C4(v98, &v96);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = a1[5];
  v95 = v38;
  a1[5] = 0x8000000000000000;
  v34 = sub_3B20C(1u);
  v40 = v38[2];
  v41 = (v39 & 1) == 0;
  v15 = __OFADD__(v40, v41);
  v42 = v40 + v41;
  if (v15)
  {
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v6) = v39;
  if (v38[3] >= v42)
  {
    if (v37)
    {
      goto LABEL_32;
    }

LABEL_36:
    v46 = v34;
    sub_1861EC(&qword_22F4E8, &qword_1D13F8, sub_43178);
    v34 = v46;
    v44 = v95;
    if (v6)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  sub_18355C(v42, v37, &qword_22F4E8, &qword_1D13F8, sub_43178);
  v34 = sub_3B20C(1u);
  if ((v6 & 1) != (v43 & 1))
  {
    goto LABEL_43;
  }

LABEL_32:
  v44 = v38;
  if (v6)
  {
LABEL_33:
    v45 = (v44[7] + 40 * v34);
    sub_2BF8(v45);
    sub_264B8(&v96, v45);
    goto LABEL_39;
  }

LABEL_37:
  v44[(v34 >> 6) + 8] |= 1 << v34;
  *(v44[6] + v34) = 1;
  v47 = sub_264B8(&v96, v44[7] + 40 * v34);
  v48 = v44[2];
  v15 = __OFADD__(v48, 1);
  v49 = v48 + 1;
  if (v15)
  {
    goto LABEL_48;
  }

  v44[2] = v49;
LABEL_39:
  a1[5] = v44;
  swift_endAccess();
  sub_2BF8(v98);
  sub_2B0C(&qword_22F4D0, &qword_1D13E0);
  LOBYTE(v5) = 1;
  sub_2698(a2, a2[3]);
  sub_1B4244();

  if (v97)
  {
    sub_264B8(&v96, v98);
    swift_beginAccess();
    sub_404C4(v98, &v96);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v50 = a1[6];
    v95 = v50;
    a1[6] = 0x8000000000000000;
    v47 = sub_3B20C(1u);
    v52 = v50[2];
    v53 = (v51 & 1) == 0;
    v15 = __OFADD__(v52, v53);
    v54 = v52 + v53;
    if (!v15)
    {
      v4 = v51;
      if (v50[3] >= v54)
      {
        goto LABEL_44;
      }

      sub_18355C(v54, v6, &qword_22F4F0, &qword_1D1400, sub_43178);
      v47 = sub_3B20C(1u);
      if ((v4 & 1) == (v55 & 1))
      {
        goto LABEL_45;
      }

LABEL_43:
      while (2)
      {
        v47 = sub_1B5784();
        __break(1u);
LABEL_44:
        if (v6)
        {
LABEL_45:
          v56 = v95;
          if (v4)
          {
LABEL_46:
            v57 = (v56[7] + 40 * v47);
            sub_2BF8(v57);
            sub_264B8(&v96, v57);
LABEL_52:
            a1[6] = v56;
            swift_endAccess();
            sub_2BF8(v98);
            v4 = sub_2B0C(&qword_22F4A8, &unk_1D13B0);
            v61 = 0;
            v62 = 0;
            v94 |= 0x8000000000000000;
            v63 = v7 | 0x8000000000000000;
            while (1)
            {
              LOBYTE(v6) = v61;
              v65 = *(&off_213FD0 + v62 + 32);
              sub_2698(a2, a2[3]);
              v66 = v94;
              if (v65 != 3)
              {
                v66 = 0xE400000000000000;
              }

              if (v65 == 2)
              {
                v66 = 0xEB0000000079726FLL;
              }

              v67 = 0xE800000000000000;
              if (!v65)
              {
                v67 = v63;
              }

              if (v65 <= 1)
              {
                v7 = v67;
              }

              else
              {
                v7 = v66;
              }

              sub_1B4244();

              if (!v97)
              {
                goto LABEL_104;
              }

              sub_264B8(&v96, v98);
              swift_beginAccess();
              sub_404C4(v98, &v96);
              v5 = swift_isUniquelyReferenced_nonNull_native();
              v68 = a1[7];
              v95 = v68;
              a1[7] = 0x8000000000000000;
              result = sub_3B20C(v65);
              v70 = v68[2];
              v71 = (v69 & 1) == 0;
              v15 = __OFADD__(v70, v71);
              v72 = v70 + v71;
              if (v15)
              {
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

              v73 = v69;
              if (v68[3] < v72)
              {
                break;
              }

              if (v5)
              {
                goto LABEL_70;
              }

              v78 = result;
              sub_1861EC(&qword_22F4F8, &qword_1D1408, sub_43178);
              result = v78;
              v75 = v68;
              if ((v73 & 1) == 0)
              {
LABEL_71:
                v75[(result >> 6) + 8] |= 1 << result;
                *(v75[6] + result) = v65;
                result = sub_264B8(&v96, v75[7] + 40 * result);
                v76 = v75[2];
                v15 = __OFADD__(v76, 1);
                v77 = v76 + 1;
                if (v15)
                {
                  goto LABEL_101;
                }

                v75[2] = v77;
                goto LABEL_54;
              }

LABEL_53:
              v64 = (v75[7] + 40 * result);
              sub_2BF8(v64);
              sub_264B8(&v96, v64);
LABEL_54:
              a1[7] = v75;
              swift_endAccess();
              sub_2BF8(v98);
              v61 = 1;
              v62 = 1;
              if (v6)
              {
                v4 = sub_2B0C(&qword_2291F8, &unk_1CFD30);
                v6 = 0;
                while (1)
                {
                  v80 = *(&off_213FF8 + v6++ + 32);
                  sub_2698(a2, a2[3]);
                  v81 = v94;
                  if (v80 != 3)
                  {
                    v81 = 0xE400000000000000;
                  }

                  if (v80 == 2)
                  {
                    v81 = 0xEB0000000079726FLL;
                  }

                  v82 = 0xE800000000000000;
                  if (!v80)
                  {
                    v82 = v63;
                  }

                  if (v80 <= 1)
                  {
                    v7 = v82;
                  }

                  else
                  {
                    v7 = v81;
                  }

                  sub_1B4244();

                  if (!v97)
                  {
                    goto LABEL_105;
                  }

                  sub_264B8(&v96, v98);
                  swift_beginAccess();
                  sub_404C4(v98, &v96);
                  v5 = swift_isUniquelyReferenced_nonNull_native();
                  v83 = a1[8];
                  v95 = v83;
                  a1[8] = 0x8000000000000000;
                  result = sub_3B20C(v80);
                  v85 = v83[2];
                  v86 = (v84 & 1) == 0;
                  v15 = __OFADD__(v85, v86);
                  v87 = v85 + v86;
                  if (v15)
                  {
                    goto LABEL_100;
                  }

                  v88 = v84;
                  if (v83[3] < v87)
                  {
                    break;
                  }

                  if (v5)
                  {
                    goto LABEL_93;
                  }

                  v93 = result;
                  sub_1861EC(&qword_22F500, &unk_1D1410, sub_43178);
                  result = v93;
                  v90 = v83;
                  if (v88)
                  {
LABEL_76:
                    v79 = (v90[7] + 40 * result);
                    sub_2BF8(v79);
                    sub_264B8(&v96, v79);
                    goto LABEL_77;
                  }

LABEL_94:
                  v90[(result >> 6) + 8] |= 1 << result;
                  *(v90[6] + result) = v80;
                  result = sub_264B8(&v96, v90[7] + 40 * result);
                  v91 = v90[2];
                  v15 = __OFADD__(v91, 1);
                  v92 = v91 + 1;
                  if (v15)
                  {
                    goto LABEL_102;
                  }

                  v90[2] = v92;
LABEL_77:
                  a1[8] = v90;
                  swift_endAccess();
                  result = sub_2BF8(v98);
                  if (v6 == 4)
                  {
                    return result;
                  }
                }

                sub_18355C(v87, v5, &qword_22F500, &unk_1D1410, sub_43178);
                result = sub_3B20C(v80);
                if ((v88 & 1) != (v89 & 1))
                {
                  goto LABEL_43;
                }

LABEL_93:
                v90 = v83;
                if (v88)
                {
                  goto LABEL_76;
                }

                goto LABEL_94;
              }
            }

            sub_18355C(v72, v5, &qword_22F4F8, &qword_1D1408, sub_43178);
            result = sub_3B20C(v65);
            if ((v73 & 1) != (v74 & 1))
            {
              continue;
            }

LABEL_70:
            v75 = v68;
            if ((v73 & 1) == 0)
            {
              goto LABEL_71;
            }

            goto LABEL_53;
          }

          goto LABEL_50;
        }

        break;
      }

LABEL_49:
      v58 = v47;
      sub_1861EC(&qword_22F4F0, &qword_1D1400, sub_43178);
      v47 = v58;
      v56 = v95;
      if (v4)
      {
        goto LABEL_46;
      }

LABEL_50:
      v56[(v47 >> 6) + 8] |= 1 << v47;
      *(v56[6] + v47) = v5;
      result = sub_264B8(&v96, v56[7] + 40 * v47);
      v59 = v56[2];
      v15 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (!v15)
      {
        v56[2] = v60;
        goto LABEL_52;
      }

LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_109:
  __break(1u);
  return result;
}

uint64_t sub_17C6A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_1B41D4();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4204();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2B0C(&qword_22F5D8, &qword_1D15B8);
  v47 = v4;
  result = sub_1B52A4();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1895D4(&qword_2294B8, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
      result = sub_1B4744();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_17CB48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_2297B0, &unk_1D14D0);
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v4;
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
      memcpy(__src, (*(v5 + 56) + 384 * v19), sizeof(__src));
      result = sub_1B57E4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = memcpy((*(v7 + 56) + 384 * v15), __src, 0x179uLL);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    if (v29)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_17CDCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StoreBook(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_2B0C(&qword_22F560, &qword_1D14C8);
  v37 = v4;
  result = sub_1B52A4();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_18956C(v25, v7, type metadata accessor for StoreBook);
      }

      else
      {
        sub_189504(v25, v7, type metadata accessor for StoreBook);
      }

      result = sub_1B57E4();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_18956C(v7, *(v10 + 56) + v24 * v18, type metadata accessor for StoreBook);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_17D114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22E250, &qword_1D14F0);
  v38 = v4;
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v23 = *(*(v5 + 48) + 8 * v22);
      if (v38)
      {
        v24 = *(v5 + 56) + 568 * v22;
        v48 = *v24;
        v39 = *(v24 + 16);
        v42 = *(v24 + 32);
        v25 = *(v24 + 40);
        v43 = *(v24 + 64);
        v44 = *(v24 + 48);
        v40 = *(v24 + 8);
        v41 = *(v24 + 80);
        v45 = *(v24 + 88);
        v26 = *(v24 + 144);
        v53 = *(v24 + 128);
        v54 = v26;
        v55 = *(v24 + 160);
        v27 = *(v24 + 96);
        v52 = *(v24 + 112);
        v51 = v27;
        memcpy(__src, (v24 + 168), sizeof(__src));
        v46 = *(v24 + 552);
        v47 = *(v24 + 560);
        v5 = v37;
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 568 * v22), sizeof(__dst));
        v47 = __dst[560];
        v48 = *__dst;
        v45 = *&__dst[88];
        v46 = *&__dst[552];
        v43 = *&__dst[64];
        v44 = *&__dst[48];
        v42 = *&__dst[32];
        v25 = __dst[40];
        v39 = *&__dst[16];
        v40 = __dst[8];
        v41 = __dst[80];
        sub_4299C(__dst, v49);
        v53 = *&__dst[128];
        v54 = *&__dst[144];
        v55 = *&__dst[160];
        v52 = *&__dst[112];
        v51 = *&__dst[96];
        memcpy(__src, &__dst[168], sizeof(__src));
      }

      result = sub_1B57E4();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      __dst[0] = v25;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v23;
      v16 = *(v7 + 56) + 568 * v15;
      *v16 = v48;
      *(v16 + 8) = v40;
      *(v16 + 16) = v39;
      *(v16 + 32) = v42;
      *(v16 + 40) = v25;
      *(v16 + 48) = v44;
      *(v16 + 64) = v43;
      *(v16 + 80) = v41;
      *(v16 + 88) = v45;
      v17 = v54;
      *(v16 + 128) = v53;
      *(v16 + 144) = v17;
      *(v16 + 160) = v55;
      v18 = v52;
      *(v16 + 96) = v51;
      *(v16 + 112) = v18;
      result = memcpy((v16 + 168), __src, 0x179uLL);
      *(v16 + 552) = v46;
      *(v16 + 560) = v47;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_17D558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22D6B0, &unk_1CCC60);
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_17D85C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_2290B8, &qword_1BB480);
  v38 = v4;
  result = sub_1B52A4();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_43050(v27, &v39, &qword_229010, &unk_1D15F0);
      }

      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_17DB74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_229700, &qword_1BCB58);
  v43 = v4;
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
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
      v23 = *(*(v5 + 48) + 8 * v22);
      v24 = *(v5 + 56) + 136 * v22;
      if (v43)
      {
        v25 = *(v24 + 16);
        v58 = *v24;
        v59 = v25;
        v26 = *(v24 + 48);
        v60 = *(v24 + 32);
        v61 = v26;
        v44 = *(v24 + 64);
        v45 = *(v24 + 80);
        v46 = *(v24 + 112);
        v47 = *(v24 + 96);
        v27 = *(v24 + 128);
      }

      else
      {
        v49 = *v24;
        v28 = *(v24 + 64);
        v30 = *(v24 + 16);
        v29 = *(v24 + 32);
        v52 = *(v24 + 48);
        v53 = v28;
        v50 = v30;
        v51 = v29;
        v32 = *(v24 + 96);
        v31 = *(v24 + 112);
        v33 = *(v24 + 80);
        v57 = *(v24 + 128);
        v55 = v32;
        v56 = v31;
        v54 = v33;
        v46 = v31;
        v47 = v32;
        v27 = v57;
        v44 = v53;
        v45 = v33;
        sub_429F8(&v49, v48);
        v58 = v49;
        v59 = v50;
        v60 = v51;
        v61 = v52;
      }

      result = sub_1B57E4();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v23;
      v16 = *(v7 + 56) + 136 * v15;
      v17 = v59;
      *v16 = v58;
      *(v16 + 16) = v17;
      v18 = v61;
      *(v16 + 32) = v60;
      *(v16 + 48) = v18;
      *(v16 + 64) = v44;
      *(v16 + 80) = v45;
      *(v16 + 96) = v47;
      *(v16 + 112) = v46;
      *(v16 + 128) = v27;
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

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_17DED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v45 = sub_2B0C(a3, a4);
  v11 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v39 - v12;
  v13 = *v6;
  sub_2B0C(a5, a6);
  v42 = v10;
  result = sub_1B52A4();
  v15 = result;
  if (*(v13 + 16))
  {
    v39 = v6;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v11 + 16);
    v41 = v11;
    v43 = (v11 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(*(v13 + 48) + v27);
      v29 = *(v11 + 72);
      v30 = *(v13 + 56) + v29 * v27;
      if (v42)
      {
        (*v43)(v44, v30, v45);
      }

      else
      {
        (*v40)(v44, v30, v45);
      }

      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v15 + 48) + v23) = v28;
      result = (*v43)(*(v15 + 56) + v29 * v23, v44, v45);
      ++*(v15 + 16);
      v11 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v9 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v9 = v39;
    if (v38 >= 64)
    {
      bzero((v13 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_17E28C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_2B0C(a3, a4);
  v32 = v6;
  result = sub_1B52A4();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_17E550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F558, &qword_1D14C0);
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (1)
    {
      if (v12)
      {
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = v17 | (v8 << 6);
        if (v4)
        {
LABEL_10:
          v19 = *(*(v5 + 48) + 8 * v18);
          v20 = (*(v5 + 56) + (v18 << 6));
          v40 = *v20;
          v41 = v20[1];
          v42 = v20[2];
          v43 = v20[3];
          goto LABEL_17;
        }
      }

      else
      {
        v21 = v8;
        do
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v8 >= v13)
          {
            if (v4)
            {
              v34 = 1 << *(v5 + 32);
              if (v34 >= 64)
              {
                bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v9 = -1 << v34;
              }

              *(v5 + 16) = 0;
            }

            v3 = v35;
            goto LABEL_33;
          }

          v22 = v9[v8];
          ++v21;
        }

        while (!v22);
        v12 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }
      }

      v19 = *(*(v5 + 48) + 8 * v18);
      v23 = (*(v5 + 56) + (v18 << 6));
      v25 = v23[2];
      v24 = v23[3];
      v26 = v23[1];
      v36 = *v23;
      v37 = v26;
      v38 = v25;
      v39 = v24;
      sub_42BA4(&v36, &v40);
      v40 = v36;
      v41 = v37;
      v42 = v38;
      v43 = v39;
LABEL_17:
      result = sub_1B57E4();
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
      *(*(v7 + 48) + 8 * v15) = v19;
      v16 = (*(v7 + 56) + (v15 << 6));
      *v16 = v40;
      v16[1] = v41;
      v16[2] = v42;
      v16[3] = v43;
      ++*(v7 + 16);
    }
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_17E830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v60 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v71 = &v55 - v6;
  v7 = *v2;
  sub_2B0C(&qword_229730, &qword_1BCB88);
  v62 = v4;
  v75 = sub_1B52A4();
  if (*(v7 + 16))
  {
    v56 = v2;
    v8 = 0;
    v61 = v7;
    result = v7 + 64;
    v10 = 1 << *(v7 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v7 + 64);
    v57 = (v10 + 63) >> 6;
    v58 = v7 + 64;
    v59 = v75 + 64;
    while (v12)
    {
      v22 = __clz(__rbit64(v12));
      v23 = (v12 - 1) & v12;
LABEL_15:
      v26 = v22 | (v8 << 6);
      v65 = v23;
      if (v62)
      {
        v27 = *(v61 + 48) + 568 * v26;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = *(v27 + 32);
        v32 = *(v27 + 40);
        v33 = *(v27 + 48);
        v74 = *(v27 + 64);
        v72 = v30;
        v73 = v33;
        v34 = *(v27 + 80);
        v69 = *(v27 + 88);
        v70 = v31;
        v35 = *(v27 + 144);
        v81 = *(v27 + 128);
        v82 = v35;
        v83 = *(v27 + 160);
        v36 = *(v27 + 112);
        v79 = *(v27 + 96);
        v80 = v36;
        memcpy(v84, (v27 + 168), sizeof(v84));
        v66 = *(v27 + 552);
        v67 = *(v27 + 560);
        v37 = *(v61 + 56);
        v64 = *(v60 + 72);
        sub_189494(v37 + v64 * v26, v71);
      }

      else
      {
        memcpy(v78, (*(v61 + 48) + 568 * v26), sizeof(v78));
        v38 = *(v61 + 56);
        v64 = *(v60 + 72);
        sub_43050(v38 + v64 * v26, v71, &qword_229728, &unk_1D14A0);
        v67 = v78[560];
        v28 = *v78;
        v66 = *&v78[552];
        v73 = *&v78[48];
        v74 = *&v78[64];
        v34 = v78[80];
        v69 = *&v78[88];
        v70 = *&v78[32];
        v32 = v78[40];
        v72 = *&v78[16];
        v29 = v78[8];
        sub_4299C(v78, v77);
        v81 = *&v78[128];
        v82 = *&v78[144];
        v83 = *&v78[160];
        v79 = *&v78[96];
        v80 = *&v78[112];
        memcpy(v84, &v78[168], sizeof(v84));
      }

      v76 = v32;
      v39 = v75;
      v68 = v28;
      *v78 = v28;
      v78[8] = v29;
      *&v78[16] = v72;
      v40 = v70;
      *&v78[32] = v70;
      v63 = v32;
      v78[40] = v32;
      *&v78[48] = v73;
      *&v78[64] = v74;
      v78[80] = v34;
      v41 = v69;
      *&v78[88] = v69;
      *&v78[128] = v81;
      *&v78[144] = v82;
      *&v78[160] = v83;
      *&v78[96] = v79;
      *&v78[112] = v80;
      memcpy(&v78[168], v84, 0x179uLL);
      v42 = v66;
      *&v78[552] = v66;
      v43 = v67;
      v78[560] = v67;
      sub_1B57F4();
      SeedBook.hash(into:)(v77);
      result = sub_1B5844();
      v44 = -1 << *(v39 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      v47 = v43;
      v48 = v40;
      if (((-1 << v45) & ~*(v59 + 8 * (v45 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v44) >> 6;
        v14 = v68;
        v16 = v73;
        v15 = v74;
        v17 = v72;
        while (++v46 != v50 || (v49 & 1) == 0)
        {
          v51 = v46 == v50;
          if (v46 == v50)
          {
            v46 = 0;
          }

          v49 |= v51;
          v52 = *(v59 + 8 * v46);
          if (v52 != -1)
          {
            v13 = __clz(__rbit64(~v52)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v45) & ~*(v59 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      v14 = v68;
      v16 = v73;
      v15 = v74;
      v17 = v72;
LABEL_7:
      *(v59 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = v75;
      v19 = *(v75 + 48) + 568 * v13;
      *v19 = v14;
      *(v19 + 8) = v29;
      *(v19 + 16) = v17;
      *(v19 + 32) = v48;
      *(v19 + 40) = v63;
      *(v19 + 48) = v16;
      *(v19 + 64) = v15;
      *(v19 + 80) = v34;
      *(v19 + 88) = v41;
      v20 = v82;
      *(v19 + 128) = v81;
      *(v19 + 144) = v20;
      *(v19 + 160) = v83;
      v21 = v80;
      *(v19 + 96) = v79;
      *(v19 + 112) = v21;
      memcpy((v19 + 168), v84, 0x179uLL);
      *(v19 + 552) = v42;
      *(v19 + 560) = v47;
      sub_189494(v71, *(v18 + 56) + v64 * v13);
      ++*(v18 + 16);
      v12 = v65;
      result = v58;
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v57)
      {
        break;
      }

      v25 = *(result + 8 * v8);
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v56;
      goto LABEL_35;
    }

    v53 = v61;
    v54 = 1 << *(v61 + 32);
    v3 = v56;
    if (v54 >= 64)
    {
      bzero(result, ((v54 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *result = -1 << v54;
    }

    *(v53 + 16) = 0;
  }

LABEL_35:
  *v3 = v75;
  return result;
}

uint64_t sub_17EDE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F538, &qword_1D1468);
  result = sub_1B52A4();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_264B8(v21, v30);
      }

      else
      {
        sub_404C4(v21, v30);
      }

      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_264B8(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_17F10C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B40F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2B0C(&qword_22E180, &unk_1D1530);
  v39 = v4;
  result = sub_1B52A4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1895D4(&qword_229338, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_1B4744();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_17F4E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F540, &unk_1D1470);
  result = sub_1B52A4();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_264B8(v21, v30);
      }

      else
      {
        sub_404C4(v21, v30);
      }

      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_264B8(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_17F7E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22BD20, &qword_1C6110);
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      result = sub_1B57E4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_17FA44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F5C8, &qword_1D15A8);
  v36 = v4;
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 56 * v20;
      v38 = *(v22 + 8);
      v39 = *v22;
      v40 = *(v22 + 16);
      v23 = *(v22 + 24);
      v24 = *(v22 + 32);
      v37 = *(v22 + 40);
      v25 = *(v22 + 48);
      if ((v36 & 1) == 0)
      {
        sub_43688(v40, v23);
      }

      result = sub_1B57E4();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 56 * v15;
      *v16 = v39;
      *(v16 + 8) = v38;
      *(v16 + 16) = v40;
      *(v16 + 24) = v23;
      *(v16 + 32) = v24;
      *(v16 + 40) = v37;
      *(v16 + 48) = v25;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

uint64_t sub_17FD40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_2297C0, &qword_1BCC38);
  v39 = v4;
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v22 = *(v5 + 56) + 88 * v20;
      if (v39)
      {
        v23 = *v22;
        v40 = *(v22 + 8);
        v42 = *(v22 + 24);
        v24 = *(v22 + 32);
        v43 = *(v22 + 56);
        v44 = *(v22 + 40);
        v41 = *(v22 + 72);
        v25 = *(v22 + 80);
      }

      else
      {
        v25 = *(v22 + 80);
        v27 = *(v22 + 48);
        v26 = *(v22 + 64);
        *v47 = *(v22 + 32);
        *&v47[16] = v27;
        *&v47[32] = v26;
        v28 = *(v22 + 16);
        *v46 = *v22;
        *&v46[16] = v28;
        v48 = v25;
        v43 = *&v47[24];
        v44 = *&v47[8];
        v41 = BYTE8(v26);
        v42 = *(&v28 + 1);
        v24 = v47[0];
        v40 = *&v46[8];
        v23 = v46[0];
        sub_5EDD8(v46, v45);
      }

      result = sub_1B57E4();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v46[0] = v24;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 88 * v15;
      *v16 = v23;
      *(v16 + 8) = v40;
      *(v16 + 24) = v42;
      *(v16 + 32) = v24;
      *(v16 + 40) = v44;
      *(v16 + 56) = v43;
      *(v16 + 72) = v41;
      *(v16 + 80) = v25;
      ++*(v7 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_180090(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_2297B8, &qword_1BCC30);
  v34 = v4;
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_1B57E4();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18033C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1B40F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_2B0C(a3, a4);
  v43 = v8;
  result = sub_1B52A4();
  v15 = result;
  if (*(v13 + 16))
  {
    v46 = v12;
    v47 = v9;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    v42 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v45 = *(v10 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
        v48 = *(*(v13 + 56) + 16 * v27);
      }

      else
      {
        (*v40)(v46, v29, v47);
        v48 = *(*(v13 + 56) + 16 * v27);
      }

      sub_1895D4(&qword_229338, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_1B4744();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v10 = v41;
        v13 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v10 = v41;
      v13 = v42;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v45 * v23, v46, v47);
      *(*(v15 + 56) + 16 * v23) = v48;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_180744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_2B0C(a3, a4);
  result = sub_1B52A4();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v5;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v23;
      }

      result = sub_1B57E4();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v33;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1809A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22D6F0, &unk_1CCCA0);
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_180C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22D6E8, &qword_1D1570);
  v32 = v4;
  v6 = sub_1B52A4();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

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
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    if ((v32 & 1) == 0)
    {
    }

    sub_1B57F4();
    sub_1B4884();

    v15 = sub_1B5844();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_36;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x1810A0);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v32)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1810FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_2B0C(a3, a4);
  v8 = sub_1B52A4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v50 = v8;
    v51 = v7;
    v49 = (v7 + 64);
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 64);
    v47 = v4;
    v48 = (v11 + 63) >> 6;
    v14 = v8 + 64;
    while (v13)
    {
      v24 = __clz(__rbit64(v13));
      v25 = (v13 - 1) & v13;
LABEL_15:
      v29 = v24 | (v10 << 6);
      v53 = v25;
      if (v6)
      {
        v30 = *(v51 + 48) + 568 * v29;
        v31 = *v30;
        v32 = *(v30 + 8);
        v33 = *(v30 + 32);
        v34 = *(v30 + 40);
        v60 = *(v30 + 64);
        v58 = *(v30 + 16);
        v59 = *(v30 + 48);
        v54 = *(v30 + 80);
        v55 = *(v30 + 88);
        v35 = *(v30 + 144);
        v65 = *(v30 + 128);
        v66 = v35;
        v67 = *(v30 + 160);
        v36 = *(v30 + 112);
        v63 = *(v30 + 96);
        v64 = v36;
        memcpy(__src, (v30 + 168), sizeof(__src));
        v57 = *(v30 + 552);
        v56 = *(v30 + 560);
        v37 = v31;
        v52 = *(*(v51 + 56) + 8 * v29);
      }

      else
      {
        memcpy(__dst, (*(v51 + 48) + 568 * v29), sizeof(__dst));
        v38 = *(*(v51 + 56) + 8 * v29);
        v56 = __dst[560];
        v37 = *__dst;
        v57 = *&__dst[552];
        v55 = *&__dst[88];
        v59 = *&__dst[48];
        v60 = *&__dst[64];
        v54 = __dst[80];
        v33 = *&__dst[32];
        v34 = __dst[40];
        v58 = *&__dst[16];
        v32 = __dst[8];
        sub_4299C(__dst, v61);
        v65 = *&__dst[128];
        v66 = *&__dst[144];
        v67 = *&__dst[160];
        v63 = *&__dst[96];
        v64 = *&__dst[112];
        memcpy(__src, &__dst[168], sizeof(__src));
        v52 = v38;
      }

      v9 = v50;
      *__dst = v37;
      __dst[8] = v32;
      *&__dst[16] = v58;
      *&__dst[32] = v33;
      __dst[40] = v34;
      *&__dst[48] = v59;
      *&__dst[64] = v60;
      __dst[80] = v54;
      *&__dst[88] = v55;
      *&__dst[128] = v65;
      *&__dst[144] = v66;
      *&__dst[160] = v67;
      *&__dst[96] = v63;
      *&__dst[112] = v64;
      memcpy(&__dst[168], __src, 0x179uLL);
      *&__dst[552] = v57;
      __dst[560] = v56;
      sub_1B57F4();
      SeedBook.hash(into:)(v61);
      result = sub_1B5844();
      v39 = -1 << *(v50 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v14 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v18 = v59;
        v17 = v60;
        v19 = v32;
        v20 = v58;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v14 + 8 * v41);
          if (v45 != -1)
          {
            v15 = v37;
            v16 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = v37;
      v16 = __clz(__rbit64((-1 << v40) & ~*(v14 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v18 = v59;
      v17 = v60;
      v19 = v32;
      v20 = v58;
LABEL_7:
      *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = *(v50 + 48) + 568 * v16;
      *v21 = v15;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
      *(v21 + 32) = v33;
      *(v21 + 40) = v34;
      *(v21 + 48) = v18;
      *(v21 + 64) = v17;
      *(v21 + 80) = v54;
      *(v21 + 88) = v55;
      v22 = v66;
      *(v21 + 128) = v65;
      *(v21 + 144) = v22;
      *(v21 + 160) = v67;
      v23 = v64;
      *(v21 + 96) = v63;
      *(v21 + 112) = v23;
      memcpy((v21 + 168), __src, 0x179uLL);
      *(v21 + 552) = v57;
      *(v21 + 560) = v56;
      v13 = v53;
      *(*(v50 + 56) + 8 * v16) = v52;
      ++*(v50 + 16);
    }

    v26 = v10;
    result = v49;
    while (1)
    {
      v10 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v48)
      {
        break;
      }

      v28 = v49[v10];
      ++v26;
      if (v28)
      {
        v24 = __clz(__rbit64(v28));
        v25 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v47;
      goto LABEL_35;
    }

    v46 = 1 << *(v51 + 32);
    v5 = v47;
    if (v46 >= 64)
    {
      bzero(v49, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v46;
    }

    *(v51 + 16) = 0;
  }

LABEL_35:
  *v5 = v9;
  return result;
}

uint64_t sub_1815F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F570, &qword_1D14E8);
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      result = sub_1B57E4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_18186C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_2B0C(a3, a4);
  result = sub_1B52A4();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v6;
    v33 = v5;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      result = sub_1B57E4();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v7 + 32);
      if (v31 >= 64)
      {
        bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v31;
      }

      *(v7 + 16) = 0;
    }

    v5 = v33;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}