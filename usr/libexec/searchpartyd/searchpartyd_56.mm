uint64_t sub_10062AF44(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_10001E524(a1, a2);
  }

  return a1;
}

uint64_t sub_10062AF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconEstimatedLocation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062AFF4(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1005E4220(a1, v1 + v5);
}

unint64_t sub_10062B0D0()
{
  result = qword_1016A5908;
  if (!qword_1016A5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5908);
  }

  return result;
}

uint64_t sub_10062B124(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationFetcher(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1005F5558(a1, v1 + v5, v1 + v6);
}

void sub_10062B250(uint64_t a1)
{
  v3 = *(type metadata accessor for LocationFetcher(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1005DFC44(a1, v1 + v4, v6, v7);
}

void sub_10062B2F8(uint64_t *a1)
{
  v3 = *(type metadata accessor for LocationFetcher(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_1005DFDCC(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_10062B3A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v46 = type metadata accessor for UUID();
  v10 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A5990, &qword_1013B3498);
  __chkstk_darwin(v13 - 8);
  v15 = v42 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v47 = a1;
  v48 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v49 = v17;
  v50 = 0;
  v51 = v20 & v18;
  v52 = a2;
  v53 = a3;
  v44 = v10;
  v45 = (v10 + 32);
  v43 = (v10 + 8);

  v42[1] = a3;

  while (1)
  {
    sub_10061DD1C(v15);
    v22 = sub_1000BC4D4(&qword_1016A5998, &unk_1013B34A0);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_1000128F8(v47);
    }

    v23 = a4;
    v24 = *(v22 + 48);
    v25 = *v45;
    (*v45)(v12, v15, v46);
    v26 = *&v15[v24];
    v27 = *a5;
    v29 = sub_1000210EC(v12);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v23 & 1) == 0)
      {
        sub_101008794();
      }
    }

    else
    {
      sub_100FED8A4(v32, v23 & 1);
      v34 = sub_1000210EC(v12);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_20;
      }

      v29 = v34;
    }

    v36 = a5;
    v37 = *a5;
    if (v33)
    {
      v54 = *(v37[7] + 8 * v29);

      sub_100399E1C(v26);
      v21 = v54;
      (*v43)(v12, v46);
      *(v37[7] + 8 * v29) = v21;
    }

    else
    {
      v37[(v29 >> 6) + 8] |= 1 << v29;
      v25((v37[6] + *(v44 + 72) * v29), v12, v46);
      *(v37[7] + 8 * v29) = v26;
      v38 = v37[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_19;
      }

      v37[2] = v40;
    }

    a4 = 1;
    a5 = v36;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10062B710(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A5910, &qword_1013B33A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_10061E100(v14);
    v21 = sub_1000BC4D4(&qword_10169C9D8, &qword_1013B3280);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_1000128F8(v43);
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v42);
    v24 = *&v14[v22];
    v25 = *v50;
    v27 = sub_1000210EC(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_101007198();
      }
    }

    else
    {
      sub_100FEA770(v30, a4 & 1);
      v32 = sub_1000210EC(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v50;
    if (v31)
    {
      (*v40)(v11, v42);
      *(v34[7] + 8 * v27) = v24;

      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v41 + 72) * v27), v11, v42);
      *(v34[7] + 8 * v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10062BA54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocationFetcher(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for BeaconKeyManager.IndexInformation(0) - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for Date() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for RawSearchResult(0) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100014744;

  return sub_1005EE304(a1, v16, v17, v1 + v6, v1 + v7, v1 + v9, v1 + v12, v1 + v15);
}

uint64_t sub_10062BC7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocationFetcher(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = *(v1 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_1005F6644(a1, v8, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_10062BDD0@<X0>(_BYTE *a1@<X8>)
{
  result = Future.finish(error:)();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10062BE04()
{
  result = qword_1016A5958;
  if (!qword_1016A5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5958);
  }

  return result;
}

unint64_t sub_10062BE58()
{
  result = qword_1016A5960;
  if (!qword_1016A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5960);
  }

  return result;
}

unint64_t sub_10062BEB8()
{
  result = qword_1016A5968;
  if (!qword_1016A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5968);
  }

  return result;
}

uint64_t sub_10062BF0C(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_10062BF70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_10062C000(_BYTE *a1)
{
  if (v1[20])
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[19])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (v1[18])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1005E8F1C(a1, v1[16], v4 | v1[17] | v3 | v2);
}

uint64_t sub_10062C0A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result != 2)
  {
    sub_100016590(a3, a4);

    return sub_100016590(a5, a6);
  }

  return result;
}

uint64_t sub_10062C28C()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;

  sub_100007BAC((v4 + 24));
  v5 = v1[10];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10062C408(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(type metadata accessor for LocationFetcher(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1005CB9A8(a1, a2, a3, *(v3 + 16), *(v3 + 24), (v3 + v8), *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10062C50C()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  sub_100007BAC((v4 + 24));
  v5 = v1[10];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10062C650()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10062C690()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100007BAC((v0 + v2 + 24));
  v4 = v1[10];
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10062C7D8()
{
  v2 = *(type metadata accessor for LocationFetcher(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1005D6BE4(v4, v5, v6, v0 + v3);
}

void sub_10062C8C8(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LocationFetcher(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1005DB724(v1 + v4, v7, a1);
}

uint64_t sub_10062C99C()
{
  v2 = *(type metadata accessor for LocationFetcher(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1005D4A30(v4, v5, v6, v0 + v3);
}

void sub_10062CA88(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100E6FCC4(v4, v5, a1);
}

char *sub_10062CAFC@<X0>(char **a1@<X8>)
{
  v3 = *(type metadata accessor for LocationFetcher(0) - 8);
  result = sub_1005CEE64(*(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

uint64_t sub_10062CBB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10062CC18(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_100016590(result, a2);
  }

  return result;
}

uint64_t sub_10062CC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10062CD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10062CDC4()
{
  result = qword_1016A5BF0;
  if (!qword_1016A5BF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016A5BF0);
  }

  return result;
}

void sub_10062CE28(uint64_t a1)
{
  if (!qword_1016A5BF8)
  {
    type metadata accessor for UUID();
    sub_100008BB8(255, &unk_1016A5C00, SPLastOnlineLocationInfo_ptr);
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016A5BF8);
    }
  }
}

unint64_t sub_10062CEE8()
{
  result = qword_1016A5C50;
  if (!qword_1016A5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5C50);
  }

  return result;
}

uint64_t sub_10062CFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  return _swift_task_switch(sub_10062CFF8, a4, 0);
}

uint64_t sub_10062CFF8()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 104) = *(v1 + 112);

  return _swift_task_switch(sub_10062D080, 0, 0);
}

uint64_t sub_10062D080()
{
  if (*(*(v0 + 104) + 16) && (v1 = sub_100771D58(*(v0 + 72), *(v0 + 80)), (v2 & 1) != 0))
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 88);
    v5 = *(*(v0 + 104) + 56) + 16 * v1;
    v6 = *v5;
    *(v0 + 112) = *(v5 + 8);

    *(v0 + 40) = v4;
    *(v0 + 48) = v3;
    v10 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_10062D218;

    return v10();
  }

  else
  {

    **(v0 + 56) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10062D218()
{

  return _swift_task_switch(sub_10062D330, 0, 0);
}

uint64_t sub_10062D370@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  __chkstk_darwin(RequestBeacon);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_10062E71C(v13, v11, type metadata accessor for FetchRequestBeacon);
      v15 = *&v11[*(RequestBeacon + 36)];
      if (*(v15 + 16))
      {
        v16 = sub_100772794(a1, a2);
        if (v17)
        {
          break;
        }
      }

      sub_10062E784(v11, type metadata accessor for FetchRequestBeacon);
      v13 += v14;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    v18 = (*(v15 + 56) + 32 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = sub_1000BC4D4(&qword_1016A5948, &qword_1013B3450);
    v24 = (a4 + *(v23 + 48));
    v25 = (a4 + *(v23 + 64));
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(a4, v11, v26);
    sub_100017D5C(v19, v20);
    sub_100017D5C(v21, v22);
    sub_10062E784(v11, type metadata accessor for FetchRequestBeacon);
    sub_100017D5C(v19, v20);
    sub_100017D5C(v21, v22);
    sub_100016590(v21, v22);
    sub_100016590(v19, v20);
    *v24 = v19;
    v24[1] = v20;
    *v25 = v21;
    v25[1] = v22;
    return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
  }

  else
  {
LABEL_7:
    v28 = sub_1000BC4D4(&qword_1016A5948, &qword_1013B3450);
    return (*(*(v28 - 8) + 56))(a4, 1, 1, v28);
  }
}

uint64_t sub_10062D61C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  __chkstk_darwin(RequestBeacon);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_10062E71C(v13, v11, type metadata accessor for FetchRequestBeacon);
      v15 = *&v11[*(RequestBeacon + 28)];
      if (*(v15 + 16))
      {
        v16 = sub_100772794(a1, a2);
        if (v17)
        {
          break;
        }
      }

      sub_10062E784(v11, type metadata accessor for FetchRequestBeacon);
      v13 += v14;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    v18 = *(v15 + 56) + 16 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = sub_1000BC4D4(&qword_1016A5930, &qword_1013B33D0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 64);
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 16))(a4, v11, v24);
    sub_10062E784(v11, type metadata accessor for FetchRequestBeacon);
    *(a4 + v22) = v19;
    *(a4 + v23) = v20;
    return (*(*(v21 - 8) + 56))(a4, 0, 1, v21);
  }

  else
  {
LABEL_7:
    v26 = sub_1000BC4D4(&qword_1016A5930, &qword_1013B33D0);
    return (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }
}

char *sub_10062D878(uint64_t a1)
{
  v94 = type metadata accessor for UUID();
  v2 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for OwnedBeaconRecord(0);
  v4 = __chkstk_darwin(v103);
  v100 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v99 = &v91 - v7;
  __chkstk_darwin(v6);
  v9 = &v91 - v8;
  v107 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v102 = *(v107 - 8);
  v10 = __chkstk_darwin(v107);
  v106 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v105 = &v91 - v13;
  __chkstk_darwin(v12);
  v109 = &v91 - v14;
  v111 = type metadata accessor for SharedBeaconRecord(0);
  v15 = __chkstk_darwin(v111);
  v101 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v91 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v91 - v21;
  __chkstk_darwin(v20);
  v25 = *(a1 + 16);
  if (v25)
  {
    v112 = &v91 - v23;
    v98 = v9;
    v26 = a1 + 32;
    v92 = (v2 + 8);
    v27 = _swiftEmptyArrayStorage;
    *&v24 = 141558275;
    v91 = v24;
    v104 = _swiftEmptyArrayStorage;
    v110 = _swiftEmptyArrayStorage;
    v28 = _swiftEmptyArrayStorage;
    v29 = v109;
    v30 = v111;
    v96 = v19;
    v108 = v22;
    do
    {
      sub_10001F280(v26, &v118);
      sub_10001F280(&v118, v117);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v31 = v112;
      if (swift_dynamicCast())
      {
        sub_10002AB0C(v31, v22, type metadata accessor for SharedBeaconRecord);
        v32 = v22[*(v30 + 64)];
        if (v32 == 5)
        {
          sub_10062E71C(v22, v19, type metadata accessor for SharedBeaconRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1000084AC(0, v110[2] + 1, 1, v110);
          }

          v34 = v110[2];
          v33 = v110[3];
          if (v34 >= v33 >> 1)
          {
            v110 = sub_1000084AC((v33 > 1), v34 + 1, 1, v110);
          }

          sub_10062E784(v22, type metadata accessor for SharedBeaconRecord);
          sub_100007BAC(&v118);
          v35 = v111;
          v115 = v111;
          v116 = sub_10062E7E4(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
          v36 = sub_1000280DC(&v114);
          sub_10062E71C(v19, v36, type metadata accessor for SharedBeaconRecord);
          v37 = v110;
          v110[2] = v34 + 1;
          sub_100031694(&v114, &v37[5 * v34 + 4]);
          v30 = v35;
          v22 = v108;
          sub_10062E784(v19, type metadata accessor for SharedBeaconRecord);
          v29 = v109;
        }

        else if (v32 == 4 || v32 == 2)
        {
          sub_10062E71C(v22, v101, type metadata accessor for SharedBeaconRecord);
          v42 = v104;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1000084AC(0, v42[2] + 1, 1, v42);
          }

          v44 = v42[2];
          v43 = v42[3];
          if (v44 >= v43 >> 1)
          {
            v104 = sub_1000084AC((v43 > 1), v44 + 1, 1, v42);
          }

          else
          {
            v104 = v42;
          }

          sub_10062E784(v22, type metadata accessor for SharedBeaconRecord);
          sub_100007BAC(&v118);
          v45 = v111;
          v115 = v111;
          v116 = sub_10062E7E4(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
          v46 = sub_1000280DC(&v114);
          v47 = v101;
          sub_10062E71C(v101, v46, type metadata accessor for SharedBeaconRecord);
          v48 = v104;
          v104[2] = v44 + 1;
          sub_100031694(&v114, &v48[5 * v44 + 4]);
          v30 = v45;
          v22 = v108;
          sub_10062E784(v47, type metadata accessor for SharedBeaconRecord);
          v29 = v109;
          v19 = v96;
        }

        else
        {
          sub_10062E784(v22, type metadata accessor for SharedBeaconRecord);
          sub_100007BAC(&v118);
        }
      }

      else if (swift_dynamicCast())
      {
        v38 = v105;
        sub_10002AB0C(v29, v105, type metadata accessor for LocalFindableAccessoryRecord);
        sub_10062E71C(v38, v106, type metadata accessor for LocalFindableAccessoryRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100A5D050(0, v27[2] + 1, 1, v27);
        }

        v40 = v27[2];
        v39 = v27[3];
        if (v40 >= v39 >> 1)
        {
          v27 = sub_100A5D050((v39 > 1), v40 + 1, 1, v27);
        }

        sub_10062E784(v105, type metadata accessor for LocalFindableAccessoryRecord);
        sub_100007BAC(&v118);
        v27[2] = v40 + 1;
        sub_10002AB0C(v106, v27 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v40, type metadata accessor for LocalFindableAccessoryRecord);
        v30 = v111;
      }

      else
      {
        v49 = v98;
        if (swift_dynamicCast())
        {
          v50 = v99;
          sub_10002AB0C(v49, v99, type metadata accessor for OwnedBeaconRecord);
          sub_10062E71C(v50, v100, type metadata accessor for OwnedBeaconRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1000084AC(0, v28[2] + 1, 1, v28);
          }

          v52 = v28[2];
          v51 = v28[3];
          if (v52 >= v51 >> 1)
          {
            v28 = sub_1000084AC((v51 > 1), v52 + 1, 1, v28);
          }

          sub_10062E784(v99, type metadata accessor for OwnedBeaconRecord);
          sub_100007BAC(&v118);
          v115 = v103;
          v116 = sub_10062E7E4(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
          v53 = sub_1000280DC(&v114);
          v54 = v100;
          sub_10062E71C(v100, v53, type metadata accessor for OwnedBeaconRecord);
          v28[2] = v52 + 1;
          sub_100031694(&v114, &v28[5 * v52 + 4]);
          sub_10062E784(v54, type metadata accessor for OwnedBeaconRecord);
          v22 = v108;
          v29 = v109;
          v30 = v111;
        }

        else
        {
          v97 = v27;
          if (qword_1016947F0 != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          sub_1000076D4(v55, qword_10177AF88);
          sub_10001F280(&v118, &v114);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v95 = v28;
            v59 = v58;
            v113 = swift_slowAlloc();
            v60 = v113;
            *v59 = v91;
            *(v59 + 4) = 1752392040;
            *(v59 + 12) = 2081;
            v62 = v115;
            v61 = v116;
            sub_1000035D0(&v114, v115);
            v63 = v93;
            (*(*(*(v61 + 8) + 8) + 32))(v62);
            sub_10062E7E4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v64 = v94;
            v65 = dispatch thunk of CustomStringConvertible.description.getter();
            v67 = v66;
            v68 = v64;
            v22 = v108;
            (*v92)(v63, v68);
            sub_100007BAC(&v114);
            v69 = sub_1000136BC(v65, v67, &v113);
            v29 = v109;

            *(v59 + 14) = v69;
            _os_log_impl(&_mh_execute_header, v56, v57, "Failed to map group for beacon record: %{private,mask.hash}s.", v59, 0x16u);
            sub_100007BAC(v60);
            v19 = v96;

            v28 = v95;

            v70 = &v118;
          }

          else
          {

            sub_100007BAC(&v118);
            v70 = &v114;
          }

          sub_100007BAC(v70);
          v30 = v111;
          v27 = v97;
        }
      }

      sub_100007BAC(v117);
      v26 += 40;
      --v25;
    }

    while (v25);
    v71 = v104;
    if (v104[2])
    {
      v72 = sub_100A5CF44(0, 1, 1, _swiftEmptyArrayStorage);
      v74 = *(v72 + 2);
      v73 = *(v72 + 3);
      if (v74 >= v73 >> 1)
      {
        v72 = sub_100A5CF44((v73 > 1), v74 + 1, 1, v72);
      }

      *(v72 + 2) = v74 + 1;
      v75 = &v72[16 * v74];
      *(v75 + 4) = v71;
      v75[40] = 1;
    }

    else
    {

      v72 = _swiftEmptyArrayStorage;
    }

    v80 = v110;
    if (v110[2])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_100A5CF44(0, *(v72 + 2) + 1, 1, v72);
      }

      v82 = *(v72 + 2);
      v81 = *(v72 + 3);
      if (v82 >= v81 >> 1)
      {
        v72 = sub_100A5CF44((v81 > 1), v82 + 1, 1, v72);
      }

      *(v72 + 2) = v82 + 1;
      v83 = &v72[16 * v82];
      *(v83 + 4) = v80;
      v83[40] = 3;
      if (v27[2])
      {
LABEL_56:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_100A5CF44(0, *(v72 + 2) + 1, 1, v72);
        }

        v85 = *(v72 + 2);
        v84 = *(v72 + 3);
        if (v85 >= v84 >> 1)
        {
          v72 = sub_100A5CF44((v84 > 1), v85 + 1, 1, v72);
        }

        *(v72 + 2) = v85 + 1;
        v86 = &v72[16 * v85];
        *(v86 + 4) = v27;
        v86[40] = 2;
        if (v28[2])
        {
          goto LABEL_61;
        }

        goto LABEL_68;
      }
    }

    else
    {

      if (v27[2])
      {
        goto LABEL_56;
      }
    }

    if (v28[2])
    {
LABEL_61:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_100A5CF44(0, *(v72 + 2) + 1, 1, v72);
      }

      v88 = *(v72 + 2);
      v87 = *(v72 + 3);
      if (v88 >= v87 >> 1)
      {
        v72 = sub_100A5CF44((v87 > 1), v88 + 1, 1, v72);
      }

      *(v72 + 2) = v88 + 1;
      v89 = &v72[16 * v88];
      *(v89 + 4) = v28;
      v89[40] = 0;
      return v72;
    }

LABEL_68:

    return v72;
  }

  if (qword_1016947F0 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_1000076D4(v76, qword_10177AF88);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&_mh_execute_header, v77, v78, "Skipping fetching locations from server. No beacons remaining to fetch.", v79, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10062E71C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10062E784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10062E7E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for KeyMapGenerator.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyMapGenerator.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10062E8EC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A5D30);
  v1 = sub_1000076D4(v0, qword_1016A5D30);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C0F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10062E9B4()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[5] = v2;
  v0[6] = _swiftEmptyDictionarySingleton;
  v0[7] = &_swiftEmptySetSingleton;
  type metadata accessor for DeviceIdentityUtility(0);
  v0[9] = 0;
  v0[10] = 0;
  v0[8] = 0;
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 8;
  v1[11] = v3;
  sub_1000BC4D4(&qword_1016A6018, &unk_1013B3B50);
  swift_allocObject();
  v1[12] = PassthroughSubject.init()();
  *(v1 + 104) = 0;
  v6 = qword_1016A5D48;
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C0F0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "AccessoryDiscoverySession.init()", v11, 2u);
  }

  return sub_100F04FA4();
}

uint64_t sub_10062EBF4()
{

  return sub_10000B3A8(v0 + qword_1016A5D48, &qword_1016A40D0, &unk_10138BE70);
}

uint64_t sub_10062EC68()
{
  v1 = v0;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AccessoryDiscoverySession.deinit", v5, 2u);
  }

  sub_10000B3A8(v1 + qword_1016A5D48, &qword_1016A40D0, &unk_10138BE70);
  return v1;
}

uint64_t sub_10062EDC0()
{
  sub_10062EC68();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDiscoverySession(uint64_t a1)
{
  result = qword_1016A5D78;
  if (!qword_1016A5D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10062EE64(uint64_t a1)
{
  sub_10063E9D0(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_10062EF30()
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C0F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Stop scanning", v3, 2u);
  }

  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  unsafeFromAsyncTask<A>(_:)();
  v4 = *&v13[0];
  if (*&v13[0])
  {
    sub_10131ECB4();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v15 = -1;

    PassthroughSubject.send(completion:)();

    sub_10000B3A8(v13, &unk_1016B1CB0, &qword_1013FB750);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (LOBYTE(v13[0]) == 1)
    {
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Found pending scanning request. Starting discovery session...", v7, 2u);
      }

      sub_10062FBD0();
    }
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v8 = 16;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 11;
    swift_willThrow();

    if (qword_101694810 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0, qword_1016A5D30);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v13[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000136BC(0x6E616353706F7473, 0xEE002928676E696ELL, v13);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Missing CentralManager!", v11, 0xCu);
      sub_100007BAC(v12);
    }
  }
}

uint64_t sub_10062F30C(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016A6018, &unk_1013B3B50);
  swift_allocObject();
  *(v1 + 96) = PassthroughSubject.init()();

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v8 == 1)
  {
    sub_10062FBD0();
  }

  else
  {
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177C0F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Existing discovery session in progress!", v5, 2u);
    }

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  sub_1000041A4(&qword_1016A63B0, &qword_1016A6018, &unk_1013B3B50, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v6 = Publisher.eraseToAnyPublisher()();

  return v6;
}

uint64_t sub_10062F528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = qword_1016A5D48;
  swift_beginAccess();
  sub_1000E193C(v8, a1 + v11);
  result = swift_endAccess();
  *a3 = *(a1 + 72) == 0;
  return result;
}

void sub_10062F678()
{
  v1 = sub_1000BC4D4(&qword_1016A6380, &qword_1013B3CF8);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - v4;
  if (!*(v0 + 64))
  {
    v6 = v3;
    sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
    unsafeFromAsyncTask<A>(_:)();
    v7 = v17;
    if (v17)
    {
      v8 = v0;
      v17 = sub_10131A394();
      sub_1000BC4D4(&qword_1016A6388, &unk_1013B3D00);
      sub_1000041A4(&qword_1016A6390, &qword_1016A6388, &unk_1013B3D00, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_10063F9D8(&qword_1016A6398, type metadata accessor for CBManagerState, &unk_101386D24);
      Publisher<>.removeDuplicates()();

      swift_allocObject();
      swift_weakInit();
      sub_1000041A4(&unk_1016A63A0, &qword_1016A6380, &qword_1013B3CF8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
      v9 = Publisher<>.sink(receiveValue:)();

      (*(v2 + 8))(v5, v6);
      *(v8 + 64) = v9;
    }

    else
    {
      sub_100101B58();
      swift_allocError();
      *v10 = 16;
      *(v10 + 8) = 0u;
      *(v10 + 24) = 0u;
      *(v10 + 40) = 11;
      swift_willThrow();

      if (qword_101694810 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_1016A5D30);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1000136BC(0xD000000000000022, 0x800000010135BAF0, &v17);
        _os_log_impl(&_mh_execute_header, v12, v13, "%s Missing CentralManager!", v14, 0xCu);
        sub_100007BAC(v15);
      }
    }
  }
}

void *sub_10062FA44(void *result, uint64_t a2)
{
  if (*result == 4)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      type metadata accessor for SPAccessoryDiscoverySessionError(0);
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10063F9D8(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
      _BridgedStoredNSError.init(_:userInfo:)();
      sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
      v2 = OS_dispatch_queue.sync<A>(execute:)();
      __chkstk_darwin(v2);
      os_activity(name:block:)();
    }
  }

  return result;
}

void sub_10062FBD0()
{
  v1 = sub_1000BC4D4(&qword_1016A61B0, &qword_1013B3C18);
  v77 = *(v1 - 8);
  v78 = v1;
  __chkstk_darwin(v1);
  v76 = &v63 - v2;
  v3 = sub_1000BC4D4(&qword_1016A61B8, &qword_1013B3C20);
  v80 = *(v3 - 8);
  v81 = v3;
  __chkstk_darwin(v3);
  v79 = &v63 - v4;
  v5 = sub_1000BC4D4(&qword_1016A6340, &qword_1013B3CD8);
  v83 = *(v5 - 8);
  v84 = v5;
  __chkstk_darwin(v5);
  v82 = &v63 - v6;
  v7 = sub_1000BC4D4(&qword_1016A6348, &qword_1013B3CE0);
  v86 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v63 - v8;
  v10 = sub_1000BC4D4(&qword_1016A6350, &unk_1013B3CE8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v85 = &v63 - v12;
  v13 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v74 = *(v13 - 8);
  v14 = *(v74 + 64);
  v15 = __chkstk_darwin(v13);
  v75 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v63 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v63 - v20;
  __chkstk_darwin(v19);
  v23 = &v63 - v22;
  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  unsafeFromAsyncTask<A>(_:)();
  if (v88[0])
  {
    v66 = v88[0];
    v70 = v11;
    v72 = v7;
    v24 = *(v0 + 40);
    v73 = v0;
    v68 = v24;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v67 = 0;
    sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138B360;
    *(v25 + 56) = &type metadata for BAServiceIdentifier;
    *(v25 + 64) = &off_10162CAF0;
    *(v25 + 96) = &type metadata for BAServiceIdentifier;
    *(v25 + 104) = &off_10162CAF0;
    *(v25 + 72) = 1;
    *(v25 + 32) = 0;
    *(v25 + 136) = &type metadata for PoshServiceIdentifier;
    *(v25 + 144) = &off_10162CAC0;
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v69 = v9;
    v71 = v10;
    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C0F0);
    v87 = v23;
    sub_1000D2A70(v23, v21, &qword_1016A40D0, &unk_10138BE70);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      LODWORD(v65) = v28;
      v29 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v88[0] = v64;
      *v29 = 136315651;
      sub_1000BC4D4(&unk_1016CDCD0, &qword_1013B3C48);
      v30 = Array.description.getter();
      v32 = sub_1000136BC(v30, v31, v88);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2160;
      *(v29 + 14) = 1752392040;
      *(v29 + 22) = 2081;
      sub_1000D2A70(v21, v18, &qword_1016A40D0, &unk_10138BE70);
      v33 = type metadata accessor for MACAddress();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v18, 1, v33) == 1)
      {
        sub_10000B3A8(v18, &qword_1016A40D0, &unk_10138BE70);
        v35 = 0;
        v36 = 0xE000000000000000;
      }

      else
      {
        v35 = MACAddress.description.getter();
        v36 = v43;
        (*(v34 + 8))(v18, v33);
      }

      sub_10000B3A8(v21, &qword_1016A40D0, &unk_10138BE70);
      v44 = sub_1000136BC(v35, v36, v88);

      *(v29 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v27, v65, "Call centralManager.startScanning for %s macAddress: %{private,mask.hash}s", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000B3A8(v21, &qword_1016A40D0, &unk_10138BE70);
    }

    v45 = v66;
    v65 = sub_10131E64C(v25);
    v88[0] = v65;
    sub_1000BC4D4(&qword_1016A61D8, &qword_1013B3C40);
    v64 = type metadata accessor for Peripheral(0);
    sub_1000041A4(&qword_1016A61E0, &qword_1016A61D8, &qword_1013B3C40, &protocol conformance descriptor for AnyPublisher<A, B>);
    v46 = v76;
    Publisher.compactMap<A>(_:)();
    sub_1000041A4(&qword_1016A61E8, &qword_1016A61B0, &qword_1013B3C18, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v47 = v78;
    v48 = v79;
    Publisher.filter(_:)();
    (*(v77 + 8))(v46, v47);
    v49 = v75;
    sub_1000D2A70(v87, v75, &qword_1016A40D0, &unk_10138BE70);
    v50 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v51 = swift_allocObject();
    sub_1000E18CC(v49, v51 + v50);
    *(v51 + ((v14 + v50 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
    sub_1000041A4(&qword_1016A61F0, &qword_1016A61B8, &qword_1013B3C20, &protocol conformance descriptor for Publishers.Filter<A>);
    v52 = v45;
    v53 = v81;
    v54 = v82;
    Publisher.first(where:)();

    (*(v80 + 8))(v48, v53);
    *(swift_allocObject() + 16) = v52;
    v55 = v52;
    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    sub_1000041A4(&qword_1016A6358, &qword_1016A6340, &qword_1013B3CD8, &protocol conformance descriptor for Publishers.FirstWhere<A>);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
    v56 = v69;
    v57 = v84;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    (*(v83 + 8))(v54, v57);
    *(swift_allocObject() + 16) = v25;
    static Subscribers.Demand.unlimited.getter();
    sub_1000041A4(&qword_1016A6360, &qword_1016A6348, &qword_1013B3CE0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v58 = v85;
    v59 = v72;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v86 + 8))(v56, v59);
    sub_1000041A4(&qword_1016A6368, &qword_1016A6350, &unk_1013B3CE8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v60 = v71;
    v61 = Publisher.eraseToAnyPublisher()();
    v62 = (*(v70 + 8))(v58, v60);
    __chkstk_darwin(v62);
    *(&v63 - 2) = v73;
    *(&v63 - 1) = v61;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    sub_10000B3A8(v87, &qword_1016A40D0, &unk_10138BE70);
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v37 = 16;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    *(v37 + 40) = 11;
    swift_willThrow();

    if (qword_101694810 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_1016A5D30);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v88[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1000136BC(0xD000000000000018, 0x800000010135BA90, v88);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s Missing CentralManager!", v41, 0xCu);
      sub_100007BAC(v42);
    }
  }
}

uint64_t sub_100630974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v4 - 8);
  v6 = &v10[-v5];
  v7 = qword_1016A5D48;
  swift_beginAccess();
  sub_1000D2A70(a1 + v7, a2, &qword_1016A40D0, &unk_10138BE70);
  *(a1 + 104) = 0;
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  swift_beginAccess();
  sub_1000E193C(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_100630AC8(uint64_t *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for UUID();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = __chkstk_darwin(v6);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for MACAddress();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v44 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = *a1;
  sub_1000D2A70(a2, v13, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &qword_1016A40D0, &unk_10138BE70);
    v21 = 1;
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C0F0);
    sub_100A245E8(0xD000000000000016, 0x800000010135BAB0);
    __chkstk_darwin(v23);
    *(&v44 - 2) = v19;
    *(&v44 - 1) = a3;
    sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
    Lock.callAsFunction<A>(_:)();
    v24 = v48;
    if (v48)
    {
      sub_100A245E8(0xD000000000000015, 0x800000010135BAD0);
      v25 = [*(v20 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = [*&v24[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      v27 = v45;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = static UUID.== infix(_:_:)();
      v28 = *(v46 + 8);
      v29 = v27;
      v30 = v47;
      v28(v29, v47);
      v28(v10, v30);
      (*(v15 + 8))(v19, v14);
    }

    else
    {
      v31 = v44;
      (*(v15 + 16))(v44, v19, v14);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v48 = v35;
        *v34 = 141558275;
        *(v34 + 4) = 1752392040;
        *(v34 + 12) = 2081;
        sub_10063F9D8(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v31;
        v39 = v38;
        v40 = *(v15 + 8);
        v40(v37, v14);
        v41 = sub_1000136BC(v36, v39, &v48);

        *(v34 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v32, v33, "Missing peripheral for %{private,mask.hash}s", v34, 0x16u);
        sub_100007BAC(v35);

        v40(v19, v14);
      }

      else
      {

        v42 = *(v15 + 8);
        v42(v31, v14);
        v42(v19, v14);
      }

      v21 = 0;
    }
  }

  return v21 & 1;
}

uint64_t sub_1006310A0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_1000BC4D4(&qword_1016A6210, &qword_1013B3C50);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v29 = v27 - v5;
  v6 = sub_1000BC4D4(&qword_1016A6218, &qword_1013B3C58);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin(v6);
  v30 = v27 - v8;
  v9 = sub_1000BC4D4(&qword_1016A6220, &qword_1013B3C60);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  __chkstk_darwin(v9);
  v31 = v27 - v11;
  v12 = sub_1000BC4D4(&qword_1016A6228, &unk_1013B3C68);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  __chkstk_darwin(v12);
  v32 = v27 - v14;
  v41 = sub_10063EEE4(a2);

  v27[1] = static Subscribers.Demand.unlimited.getter();
  v27[0] = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  sub_100008BB8(0, &unk_1016A6230, SPDiscoveredAccessory_ptr);
  sub_1000BC4D4(&qword_101699548, &unk_101391A70);
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70, &protocol conformance descriptor for AnyPublisher<A, B>);
  v15 = v28;
  v16 = v29;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v17 = v15;

  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_1016A6248, &qword_1016A6210, &qword_1013B3C50, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v18 = v30;
  v19 = v33;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v34 + 8))(v16, v19);
  sub_1000BC4D4(&qword_1016A6080, &qword_1013B3BB0);
  sub_1000041A4(&qword_1016A6250, &qword_1016A6218, &qword_1013B3C58, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v20 = v31;
  v21 = v35;
  Publisher.map<A>(_:)();
  (*(v36 + 8))(v18, v21);
  sub_1000BC4D4(&qword_1016A6258, &qword_1013B3C78);
  sub_1000041A4(&qword_1016A6260, &qword_1016A6220, &qword_1013B3C60, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A6268, &qword_1016A6258, &qword_1013B3C78, &protocol conformance descriptor for Just<A>);
  v22 = v32;
  v23 = v37;
  Publisher.catch<A>(_:)();
  (*(v38 + 8))(v20, v23);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&unk_1016A6270, &qword_1016A6228, &unk_1013B3C68, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v24 = v39;
  v25 = Publisher<>.sink(receiveValue:)();

  (*(v40 + 8))(v22, v24);
  *(v17 + 72) = v25;
}

void sub_1006316D0(uint64_t a1, uint64_t a2)
{
  sub_1000D2A70(a1, &v23, &qword_1016A6080, &qword_1013B3BB0);
  if (v25)
  {
    v21 = v23;
    v22[0] = *v24;
    *(v22 + 9) = *&v24[9];
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177C0F0);
    sub_100101AA8(&v21, v20);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = sub_1013181BC();
      v9 = v8;
      sub_100101B04(v20);
      v10 = sub_1000136BC(v7, v9, &v19);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Peripheral discovery error %{public}s", v5, 0xCu);
      sub_100007BAC(v6);
    }

    else
    {

      sub_100101B04(v20);
    }

    sub_100101B04(&v21);
  }

  else
  {
    v11 = v23;
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C0F0);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Discovered %{public}@", v16, 0xCu);
      sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v20[0] = v13;
      PassthroughSubject.send(_:)();
    }

    else
    {
    }
  }
}

void sub_1006319E8()
{
  v1 = sub_1000BC4D4(&qword_1016A61B0, &qword_1013B3C18);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v45 - v3;
  v5 = sub_1000BC4D4(&qword_1016A61B8, &qword_1013B3C20);
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v7 = v45 - v6;
  v8 = sub_1000BC4D4(&qword_1016A61C0, &qword_1013B3C28);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v64 = v45 - v10;
  v11 = sub_1000BC4D4(&qword_1016A61C8, &unk_1013B3C30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v63 = v45 - v13;
  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  unsafeFromAsyncTask<A>(_:)();
  v14 = v65[0];
  if (v65[0])
  {
    v56 = v12;
    v57 = v9;
    v58 = v11;
    v15 = *(v0 + 40);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (LOBYTE(v65[0]) == 1)
    {
      v54 = v4;
      v60 = v2;
      sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10138B360;
      *(v16 + 56) = &type metadata for BAServiceIdentifier;
      *(v16 + 64) = &off_10162CAF0;
      *(v16 + 96) = &type metadata for BAServiceIdentifier;
      *(v16 + 104) = &off_10162CAF0;
      *(v16 + 72) = 1;
      *(v16 + 32) = 0;
      *(v16 + 136) = &type metadata for PoshServiceIdentifier;
      *(v16 + 144) = &off_10162CAC0;
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v51 = v8;
      v52 = 0;
      v53 = v15;
      v59 = v1;
      v55 = v0;
      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177C0F0);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v65[0] = v21;
        *v20 = 136315138;
        sub_1000BC4D4(&unk_1016CDCD0, &qword_1013B3C48);
        v22 = Array.description.getter();
        v24 = sub_1000136BC(v22, v23, v65);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Call centralManager.startScanning for %s", v20, 0xCu);
        sub_100007BAC(v21);
      }

      v50 = sub_10131E64C(v16);
      v65[0] = v50;
      v48 = sub_1000BC4D4(&qword_1016A61D8, &qword_1013B3C40);
      v45[1] = type metadata accessor for Peripheral(0);
      v47 = sub_1000041A4(&qword_1016A61E0, &qword_1016A61D8, &qword_1013B3C40, &protocol conformance descriptor for AnyPublisher<A, B>);
      v25 = v54;
      Publisher.compactMap<A>(_:)();
      sub_1000041A4(&qword_1016A61E8, &qword_1016A61B0, &qword_1013B3C18, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
      v26 = v59;
      Publisher.filter(_:)();
      v27 = *(v60 + 8);
      v60 += 8;
      v49 = v27;
      v27(v25, v26);
      *(swift_allocObject() + 16) = v14;
      v46 = v14;
      static Subscribers.Demand.unlimited.getter();
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      sub_1000041A4(&qword_1016A61F0, &qword_1016A61B8, &qword_1013B3C20, &protocol conformance descriptor for Publishers.Filter<A>);
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
      v28 = v64;
      v29 = v62;
      Publisher<>.flatMap<A>(maxPublishers:_:)();

      (*(v61 + 8))(v7, v29);
      *(swift_allocObject() + 16) = v16;
      static Subscribers.Demand.unlimited.getter();
      sub_1000041A4(&qword_1016A61F8, &qword_1016A61C0, &qword_1013B3C28, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
      v30 = v63;
      v31 = v51;
      Publisher.flatMap<A, B>(maxPublishers:_:)();

      (*(v57 + 8))(v28, v31);
      sub_1000041A4(&unk_1016A6200, &qword_1016A61C8, &unk_1013B3C30, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
      v32 = v58;
      v33 = Publisher.eraseToAnyPublisher()();
      (*(v56 + 8))(v30, v32);
      v65[0] = v50;
      v34 = Publisher.compactMap<A>(_:)();
      __chkstk_darwin(v34);
      v45[-4] = v55;
      v45[-3] = v33;
      v45[-2] = v25;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      v49(v25, v59);
    }

    else
    {
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000076D4(v41, qword_10177C0F0);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Scanning in progress. Will try again once existing session stops scanning.", v44, 2u);
      }

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v35 = 16;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    *(v35 + 40) = 11;
    swift_willThrow();

    if (qword_101694810 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_1016A5D30);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v65[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x800000010135BA00, v65);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s Missing CentralManager!", v39, 0xCu);
      sub_100007BAC(v40);
    }
  }
}

uint64_t sub_1006324E8(void *a1, uint64_t a2)
{
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v3 & 1;
}

uint64_t sub_100632574@<X0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v6 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v7 = sub_10131F050(v3, v6);

  *a2 = v7;
  return result;
}

uint64_t *sub_100632658@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    v4 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    result = (v3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_100632694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v30 = a1;
  v4 = sub_1000BC4D4(&qword_1016A6210, &qword_1013B3C50);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  __chkstk_darwin(v4);
  v7 = v29 - v6;
  v8 = sub_1000BC4D4(&qword_1016A6218, &qword_1013B3C58);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  __chkstk_darwin(v8);
  v32 = v29 - v10;
  v11 = sub_1000BC4D4(&qword_1016A6220, &qword_1013B3C60);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  __chkstk_darwin(v11);
  v33 = v29 - v13;
  v14 = sub_1000BC4D4(&qword_1016A6228, &unk_1013B3C68);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  __chkstk_darwin(v14);
  v34 = v29 - v16;
  v31 = sub_10063EEE4(a2);
  v44 = v31;

  v29[2] = static Subscribers.Demand.unlimited.getter();
  v29[1] = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  sub_100008BB8(0, &unk_1016A6230, SPDiscoveredAccessory_ptr);
  sub_1000BC4D4(&qword_101699548, &unk_101391A70);
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70, &protocol conformance descriptor for AnyPublisher<A, B>);
  v17 = v30;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v18 = v17;

  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_1016A6248, &qword_1016A6210, &qword_1013B3C50, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v19 = v32;
  v20 = v35;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v36 + 8))(v7, v20);
  sub_1000BC4D4(&qword_1016A6080, &qword_1013B3BB0);
  sub_1000041A4(&qword_1016A6250, &qword_1016A6218, &qword_1013B3C58, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v21 = v33;
  v22 = v37;
  Publisher.map<A>(_:)();
  (*(v38 + 8))(v19, v22);
  sub_1000BC4D4(&qword_1016A6258, &qword_1013B3C78);
  sub_1000041A4(&qword_1016A6260, &qword_1016A6220, &qword_1013B3C60, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A6268, &qword_1016A6258, &qword_1013B3C78, &protocol conformance descriptor for Just<A>);
  v23 = v34;
  v24 = v39;
  Publisher.catch<A>(_:)();
  (*(v40 + 8))(v21, v24);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&unk_1016A6270, &qword_1016A6228, &unk_1013B3C68, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v25 = v41;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v42 + 8))(v23, v25);
  *(v18 + 72) = v26;

  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016A61B0, &qword_1013B3C18);
  sub_1000041A4(&qword_1016A61E8, &qword_1016A61B0, &qword_1013B3C18, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v27 = Publisher<>.sink(receiveValue:)();

  *(v18 + 80) = v27;
}

uint64_t sub_100632D6C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char a4@<W3>, uint64_t *a6@<X8>)
{
  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a4;
  sub_1000BC4D4(&qword_1016A6030, &unk_1013B3B70);
  swift_allocObject();
  v11 = v9;

  Future.init(_:)();
  sub_1000041A4(&unk_1016A6038, &qword_1016A6030, &unk_1013B3B70, &protocol conformance descriptor for Future<A, B>);
  v12 = Publisher.eraseToAnyPublisher()();

  *a6 = v12;
  return result;
}

uint64_t sub_100632E7C@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v20[1] = a5;
  v20[2] = a6;
  v22 = a7;
  v9 = *a2;
  v21 = sub_1000BC4D4(&qword_1016A6280, &qword_1013B3C80);
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = v20 - v11;
  v13 = *a1;
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = v9;
  sub_1000BC4D4(&qword_1016A6288, &unk_1013B3C88);
  swift_allocObject();
  v15 = v13;

  v23 = Future.init(_:)();
  *(swift_allocObject() + 16) = v15;
  sub_100008BB8(0, &unk_1016A6230, SPDiscoveredAccessory_ptr);
  sub_1000041A4(&qword_1016A6290, &qword_1016A6288, &unk_1013B3C88, &protocol conformance descriptor for Future<A, B>);
  v16 = v15;
  Publisher.map<A>(_:)();

  sub_1000041A4(&qword_1016A6298, &qword_1016A6280, &qword_1013B3C80, &protocol conformance descriptor for Publishers.Map<A, B>);
  v17 = v21;
  v18 = Publisher.eraseToAnyPublisher()();
  result = (*(v10 + 8))(v12, v17);
  *v22 = v18;
  return result;
}

void sub_1006330F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000D2A70(a1, &v36, &qword_1016A6080, &qword_1013B3BB0);
  if ((v38 & 1) == 0)
  {
    v11 = v36;
    v12 = [v36 discoveredMetadata];
    v13 = [v12 productData];

    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100314594(v14, v16);
    if (v18 >> 60 != 15)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_100313A28(v17, v18);
      sub_100313B54(v19, v20);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (BYTE4(v34))
      {
        v22 = 0;
      }

      else
      {
        v22 = v34;
      }

      if (sub_100E0EA64(v21, v22))
      {
        if (qword_101694EC0 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000076D4(v23, qword_10177C0F0);
        v24 = v11;
        v11 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          *(v26 + 4) = v24;
          *v27 = v24;
          v28 = v24;
          _os_log_impl(&_mh_execute_header, v11, v25, "Ignoring Apple audio accessory %@.", v26, 0xCu);
          sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

          sub_100006654(v19, v20);

          return;
        }

        sub_100006654(v19, v20);

LABEL_21:
        return;
      }

      sub_100006654(v19, v20);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *&v32[-16] = __chkstk_darwin(Strong);
      *&v32[-8] = v11;
      sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
      v30 = OS_dispatch_queue.sync<A>(execute:)();
      v31 = v33[0];
      __chkstk_darwin(v30);
      *&v32[-16] = v31;
      *&v32[-8] = v11;
      os_activity(name:block:)();

      return;
    }

    goto LABEL_21;
  }

  v34 = v36;
  v35[0] = *v37;
  *(v35 + 9) = *&v37[9];
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  sub_100101AA8(&v34, v33);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_100101B58();
    swift_allocError();
    sub_100101AA8(v33, v9);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_100101B04(v33);
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Peripheral discovery error: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {

    sub_100101B04(v33);
  }

  sub_100101B04(&v34);
}

uint64_t sub_10063362C(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0F0);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoverySession Lost %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10063E8C4(v4);
  }

  return result;
}

uint64_t sub_1006337A8@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a3;
  v5 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = *a1;
  v26[3] = &type metadata for BAServiceIdentifier;
  v26[4] = &off_10162CAF0;
  LOBYTE(v26[0]) = 0;
  v14 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v15 = *&v13[v14];
  v25 = v26;

  v16 = sub_1012BBDB4(sub_1001DB3F8, v24, v15);

  sub_100007BAC(v26);
  if (v16)
  {
    v17 = sub_10039CF6C(a2);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v26[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v19 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v26[0] = v13;
    type metadata accessor for Peripheral(0);
    v21 = v13;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v6 + 8))(v8, v5);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v19 = Publisher.eraseToAnyPublisher()();
    result = (*(v10 + 8))(v12, v9);
  }

  *v23 = v19;
  return result;
}

uint64_t sub_100633B18@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a3;
  v5 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = *a1;
  v26[3] = &type metadata for BAServiceIdentifier;
  v26[4] = &off_10162CAF0;
  LOBYTE(v26[0]) = 1;
  v14 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v15 = *&v13[v14];
  v25 = v26;

  v16 = sub_1012BBDB4(sub_1001DB3F8, v24, v15);

  sub_100007BAC(v26);
  if (v16)
  {
    v17 = sub_10039C428(a2);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v26[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v19 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v26[0] = v13;
    type metadata accessor for Peripheral(0);
    v21 = v13;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v6 + 8))(v8, v5);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v19 = Publisher.eraseToAnyPublisher()();
    result = (*(v10 + 8))(v12, v9);
  }

  *v23 = v19;
  return result;
}

uint64_t sub_100633E8C@<X0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21[-v10];
  v12 = *a1;
  v23[3] = &type metadata for PoshServiceIdentifier;
  v23[4] = &off_10162CAC0;
  v13 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v14 = *&v12[v13];
  v22 = v23;

  v15 = sub_1012BBDB4(sub_1001DB3F8, v21, v14);

  sub_100007BAC(v23);
  if (v15)
  {
    sub_1000BC4D4(&unk_1016A6320, &qword_1013B3CD0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    *(v16 + 56) = &type metadata for PoshCharacteristicIdentifier;
    *(v16 + 64) = &off_10162CAB0;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v23[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v18 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v23[0] = v12;
    type metadata accessor for Peripheral(0);
    v20 = v12;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v7, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v18 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v18;
  return result;
}

uint64_t sub_100634228(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a3;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = a4;
  *(v14 + 64) = a5;
  v15 = a3;

  sub_10025EDD4(0, 0, v12, &unk_1013B3CC0, v14);
}

uint64_t sub_100634368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 62) = a8;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  v9 = type metadata accessor for CentralManager.Error();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  type metadata accessor for Endianness();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = type metadata accessor for RawAccessoryMetadata(0);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v10 = type metadata accessor for MACAddress();
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 - 8);
  *(v8 + 256) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 264) = v11;
  *(v8 + 272) = *(v11 - 8);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1006345B0, 0, 0);
}

uint64_t sub_1006345B0()
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[36] = sub_1000076D4(v1, qword_10177C0F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reading posh metadata...", v4, 2u);
  }

  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[31];
  v11 = v0[11];

  v12 = [objc_allocWithZone(SPDiscoveredAccessory) init];
  v0[37] = v12;
  v13 = [*(v11 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v5, v8);
  [v12 setIdentifier:isa];

  sub_100A22DF0(v7);
  v15 = MACAddress.data.getter();
  v17 = v16;
  (*(v10 + 8))(v7, v9);
  v18 = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v15, v17);
  [v12 setMacAddress:v18];

  type metadata accessor for AccessoryMetadataManager();
  v19 = swift_task_alloc();
  v0[38] = v19;
  *v19 = v0;
  v19[1] = sub_100634830;
  v20 = v0[29];
  v21 = v0[11];

  return sub_10037EC80(v20, v21);
}

uint64_t sub_100634830()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_100635CB8;
  }

  else
  {
    v2 = sub_100634944;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100634944()
{
  v164 = v0;
  v1 = *(v0 + 296);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = sub_100233168();
  [v1 setDiscoveredMetadata:v4];
  sub_10063F714(v2, v3, type metadata accessor for RawAccessoryMetadata);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 224);
  if (v7)
  {
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v163 = v11;
    *v10 = 136446210;
    if (*(v8 + *(v9 + 20) + 8) >> 60 == 15)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      v12 = Data.hexString.getter();
      v13 = v14;
    }

    sub_10063F77C(*(v0 + 224), type metadata accessor for RawAccessoryMetadata);
    v15 = sub_1000136BC(v12, v13, &v163);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "productData: %{public}s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    sub_10063F77C(v8, type metadata accessor for RawAccessoryMetadata);
  }

  sub_10063F714(*(v0 + 232), *(v0 + 216), type metadata accessor for RawAccessoryMetadata);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 216);
  if (v18)
  {
    v20 = *(v0 + 152);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v163 = v22;
    *v21 = 136446210;
    if (*(v19 + *(v20 + 24) + 8) >> 60 == 15)
    {
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    else
    {
      v23 = Data.hexString.getter();
      v24 = v25;
    }

    sub_10063F77C(*(v0 + 216), type metadata accessor for RawAccessoryMetadata);
    v26 = sub_1000136BC(v23, v24, &v163);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "manufacturerName: %{public}s", v21, 0xCu);
    sub_100007BAC(v22);
  }

  else
  {

    sub_10063F77C(v19, type metadata accessor for RawAccessoryMetadata);
  }

  sub_10063F714(*(v0 + 232), *(v0 + 208), type metadata accessor for RawAccessoryMetadata);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 208);
  if (v29)
  {
    v31 = *(v0 + 152);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v163 = v33;
    *v32 = 136446210;
    if (*(v30 + *(v31 + 28) + 8) >> 60 == 15)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      v34 = Data.hexString.getter();
      v35 = v36;
    }

    sub_10063F77C(*(v0 + 208), type metadata accessor for RawAccessoryMetadata);
    v37 = sub_1000136BC(v34, v35, &v163);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "modelName: %{public}s", v32, 0xCu);
    sub_100007BAC(v33);
  }

  else
  {

    sub_10063F77C(v30, type metadata accessor for RawAccessoryMetadata);
  }

  sub_10063F714(*(v0 + 232), *(v0 + 200), type metadata accessor for RawAccessoryMetadata);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 200);
  if (v40)
  {
    v42 = *(v0 + 152);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v163 = v44;
    *v43 = 136446210;
    if (*(v41 + *(v42 + 36) + 8) >> 60 == 15)
    {
      v45 = 0;
      v46 = 0xE000000000000000;
    }

    else
    {
      v45 = Data.hexString.getter();
      v46 = v47;
    }

    sub_10063F77C(*(v0 + 200), type metadata accessor for RawAccessoryMetadata);
    v48 = sub_1000136BC(v45, v46, &v163);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "accessoryCategory: %{public}s", v43, 0xCu);
    sub_100007BAC(v44);
  }

  else
  {

    sub_10063F77C(v41, type metadata accessor for RawAccessoryMetadata);
  }

  sub_10063F714(*(v0 + 232), *(v0 + 192), type metadata accessor for RawAccessoryMetadata);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 192);
  if (v51)
  {
    v53 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v163 = v55;
    *v54 = 136446210;
    if (*(v52 + *(v53 + 40) + 8) >> 60 == 15)
    {
      v56 = 0;
      v57 = 0xE000000000000000;
    }

    else
    {
      v56 = Data.hexString.getter();
      v57 = v58;
    }

    sub_10063F77C(*(v0 + 192), type metadata accessor for RawAccessoryMetadata);
    v59 = sub_1000136BC(v56, v57, &v163);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v49, v50, "accessoryCapabilities: %{public}s", v54, 0xCu);
    sub_100007BAC(v55);
  }

  else
  {

    sub_10063F77C(v52, type metadata accessor for RawAccessoryMetadata);
  }

  sub_10063F714(*(v0 + 232), *(v0 + 184), type metadata accessor for RawAccessoryMetadata);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 184);
  if (v62)
  {
    v64 = *(v0 + 152);
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v163 = v66;
    *v65 = 136446210;
    if (*(v63 + *(v64 + 44) + 8) >> 60 == 15)
    {
      v67 = 0;
      v68 = 0xE000000000000000;
    }

    else
    {
      v67 = Data.hexString.getter();
      v68 = v69;
    }

    sub_10063F77C(*(v0 + 184), type metadata accessor for RawAccessoryMetadata);
    v70 = sub_1000136BC(v67, v68, &v163);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v60, v61, "firmwareVersion: %{public}s", v65, 0xCu);
    sub_100007BAC(v66);
  }

  else
  {

    sub_10063F77C(v63, type metadata accessor for RawAccessoryMetadata);
  }

  sub_10063F714(*(v0 + 232), *(v0 + 176), type metadata accessor for RawAccessoryMetadata);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  v73 = os_log_type_enabled(v71, v72);
  v74 = *(v0 + 176);
  if (v73)
  {
    v75 = *(v0 + 152);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v163 = v77;
    *v76 = 136446210;
    if (*(v74 + *(v75 + 48) + 8) >> 60 == 15)
    {
      v78 = 0;
      v79 = 0xE000000000000000;
    }

    else
    {
      v78 = Data.hexString.getter();
      v79 = v80;
    }

    sub_10063F77C(*(v0 + 176), type metadata accessor for RawAccessoryMetadata);
    v81 = sub_1000136BC(v78, v79, &v163);

    *(v76 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v71, v72, "protocolVersion: %{public}s", v76, 0xCu);
    sub_100007BAC(v77);
  }

  else
  {

    sub_10063F77C(v74, type metadata accessor for RawAccessoryMetadata);
  }

  v82 = *(v0 + 232);
  v83 = *(v0 + 152);
  v84 = v82 + *(v83 + 60);
  v85 = *(v84 + 8);
  if (v85 >> 60 == 15)
  {
    goto LABEL_46;
  }

  v86 = *v84;
  sub_100017D5C(*v84, *(v84 + 8));
  sub_100017D5C(v86, v85);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (*(v0 + 59) == 1)
  {
    sub_100006654(v86, v85);
    v82 = *(v0 + 232);
LABEL_46:
    sub_10063F714(v82, *(v0 + 160), type metadata accessor for RawAccessoryMetadata);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = *(v0 + 160);
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 136315138;
      v92 = *(v89 + *(v83 + 60) + 8) >> 60;
      v161 = v4;
      v163 = v91;
      if (v92 == 15)
      {
        v93 = 0;
        v94 = 0xE000000000000000;
      }

      else
      {
        v93 = Data.hexString.getter();
        v94 = v110;
      }

      v111 = *(v0 + 296);
      v112 = *(v0 + 232);
      sub_10063F77C(*(v0 + 160), type metadata accessor for RawAccessoryMetadata);
      v113 = sub_1000136BC(v93, v94, &v163);

      *(v90 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v87, v88, "Could not convert batteryState data to UInt8 [%s]", v90, 0xCu);
      sub_100007BAC(v91);

      v97 = v112;
    }

    else
    {
      v95 = *(v0 + 232);
      v96 = *(v0 + 160);

      sub_10063F77C(v95, type metadata accessor for RawAccessoryMetadata);
      v97 = v96;
    }

    goto LABEL_66;
  }

  v98 = *(v0 + 58);
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v162 = v4;
    if (v98 >= 3)
    {
      v98 = 3;
    }

    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v163 = v102;
    v103 = 0xE700000000000000;
    *v101 = 136446210;
    v104 = 0x64657265776F70;
    v105 = 0xEB00000000656C62;
    v106 = 0x6167726168636572;
    if (v98 != 2)
    {
      v106 = 0x6E776F6E6B6E75;
      v105 = 0xE700000000000000;
    }

    if (v98)
    {
      v104 = 0x61686365526E6F6ELL;
      v103 = 0xEE00656C62616772;
    }

    if (v98 <= 1)
    {
      v107 = v104;
    }

    else
    {
      v107 = v106;
    }

    if (v98 <= 1)
    {
      v108 = v103;
    }

    else
    {
      v108 = v105;
    }

    v109 = sub_1000136BC(v107, v108, &v163);

    *(v101 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v99, v100, "batteryType: %{public}s", v101, 0xCu);
    sub_100007BAC(v102);

    v4 = v162;
  }

  else
  {
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v116 = qword_10177C218;
  v117 = [objc_opt_self() sharedInstance];
  v118 = [v117 isInternalBuild];

  if (v118)
  {
    v119 = String._bridgeToObjectiveC()();
    v120 = [v116 BOOLForKey:v119];
  }

  else
  {
    v120 = 0;
  }

  v121 = *(v0 + 232);
  v122 = *(v0 + 152);
  v123 = v121 + *(v122 + 64);
  v124 = *(v123 + 8);
  if (v124 >> 60 == 15)
  {
LABEL_78:
    sub_10063F714(v121, *(v0 + 168), type metadata accessor for RawAccessoryMetadata);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = *(v0 + 168);
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v129 = 136315138;
      v131 = *(v128 + *(v122 + 64) + 8) >> 60;
      v163 = v130;
      if (v131 == 15)
      {
        v132 = 0;
        v133 = 0xE000000000000000;
      }

      else
      {
        v132 = Data.hexString.getter();
        v133 = v155;
      }

      bufa = *(v0 + 296);
      v160 = *(v0 + 232);
      sub_10063F77C(*(v0 + 168), type metadata accessor for RawAccessoryMetadata);
      v156 = sub_1000136BC(v132, v133, &v163);

      *(v129 + 4) = v156;
      _os_log_impl(&_mh_execute_header, v126, v127, "Could not convert batteryLevel data to UInt8 [%s]", v129, 0xCu);
      sub_100007BAC(v130);

      sub_100006654(v86, v85);
      v97 = v160;
    }

    else
    {
      v134 = *(v0 + 296);
      v135 = *(v0 + 232);
      v136 = *(v0 + 168);
      sub_100006654(v86, v85);

      sub_10063F77C(v135, type metadata accessor for RawAccessoryMetadata);
      v97 = v136;
    }

    goto LABEL_66;
  }

  v125 = *v123;
  sub_100017D5C(*v123, *(v123 + 8));
  sub_100017D5C(v125, v124);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (*(v0 + 61) == 1)
  {
    sub_100006654(v125, v124);
    v121 = *(v0 + 232);
    goto LABEL_78;
  }

  v137 = *(v0 + 60);
  [*(v0 + 296) setIsBatteryTooLow:v120 | (v137 < 4) & (8u >> (v137 & 0xF))];
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v138, v139))
  {
    if (v137 >= 4)
    {
      v137 = 4;
    }

    buf = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v163 = v159;
    v140 = 0xE400000000000000;
    v141 = 1819047270;
    *buf = 136446210;
    v142 = 0xE300000000000000;
    v143 = 7827308;
    v144 = 0xED0000776F4C796CLL;
    v145 = 0x6C61636974697263;
    if (v137 != 3)
    {
      v145 = 0x6E776F6E6B6E75;
      v144 = 0xE700000000000000;
    }

    if (v137 != 2)
    {
      v143 = v145;
      v142 = v144;
    }

    if (v137)
    {
      v141 = 0x6D756964656DLL;
      v140 = 0xE600000000000000;
    }

    if (v137 <= 1)
    {
      v146 = v141;
    }

    else
    {
      v146 = v143;
    }

    if (v137 <= 1)
    {
      v147 = v140;
    }

    else
    {
      v147 = v142;
    }

    v148 = v139;
    v149 = v4;
    v150 = sub_1000136BC(v146, v147, &v163);

    *(buf + 4) = v150;
    v4 = v149;
    _os_log_impl(&_mh_execute_header, v138, v148, "batteryState: %{public}s", buf, 0xCu);
    sub_100007BAC(v159);
  }

  v151 = *(v0 + 296);
  v152 = *(v0 + 232);
  v153 = *(v0 + 96);
  *(v0 + 16) = v151;
  *(v0 + 57) = 0;
  v154 = v151;
  v153(v0 + 16);

  sub_100006654(v125, v124);
  sub_100006654(v86, v85);
  sub_10000B3A8(v0 + 16, &qword_1016A6080, &qword_1013B3BB0);
  v97 = v152;
LABEL_66:
  sub_10063F77C(v97, type metadata accessor for RawAccessoryMetadata);

  v114 = *(v0 + 8);

  return v114();
}

uint64_t sub_100635CB8()
{
  v1 = *(v0 + 312);

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 128) + 88))(*(v0 + 136), *(v0 + 120)) == enum case for CentralManager.Error.missingService(_:))
    {

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Missing Posh service, reading Hawkeye AIS...", v4, 2u);
      }

      v5 = *(v0 + 62);
      v6 = *(v0 + 88);

      *(v0 + 80) = sub_1006360E0(v6, v5);
      sub_1000BC4D4(&qword_101699548, &unk_101391A70);
      sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70, &protocol conformance descriptor for AnyPublisher<A, B>);
      Publisher.oneshot(_:)();

      goto LABEL_10;
    }

    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error reading metadata: %{public}@. Fallback to Hawkeye AIS...", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  v12 = *(v0 + 88);

  *(v0 + 72) = sub_1006360E0(v12, 0);
  sub_1000BC4D4(&qword_101699548, &unk_101391A70);
  sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.oneshot(_:)();

LABEL_10:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1006360E0(void *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for MACAddress();
  v41 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C0F0);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v16 = 136315394;
    v17 = [*&v13[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    v37 = v15;
    v18 = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10063F9D8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v7;
    v20 = v6;
    v21 = v3;
    v22 = a2;
    v24 = v23;
    (*(v39 + 8))(v11, v9);
    v25 = sub_1000136BC(v19, v24, &v42);
    a2 = v22;
    v3 = v21;
    v6 = v20;

    *(v16 + 4) = v25;
    *(v16 + 12) = 2080;
    v26 = v40;
    sub_100A22DF0(v40);
    v27 = MACAddress.hexString.getter();
    v29 = v28;
    (*(v41 + 8))(v26, v36);
    v30 = sub_1000136BC(v27, v29, &v42);

    *(v16 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v14, v37, "createAccessory from peripheral: %s [%s]", v16, 0x16u);
    swift_arrayDestroy();
  }

  v31 = swift_allocObject();
  *(v31 + 16) = v13;
  *(v31 + 24) = v3;
  *(v31 + 32) = a2 & 1;
  *(v31 + 40) = v6;
  sub_1000BC4D4(&qword_1016A6030, &unk_1013B3B70);
  swift_allocObject();
  v32 = v13;

  v42 = Future.init(_:)();
  sub_1000041A4(&unk_1016A6038, &qword_1016A6030, &unk_1013B3B70, &protocol conformance descriptor for Future<A, B>);
  v33 = Publisher.eraseToAnyPublisher()();

  return v33;
}

uint64_t sub_100636570(void (*a1)(void), uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6)
{
  v134 = a6;
  v133 = a5;
  v136 = a4;
  v137 = a2;
  v117 = sub_1000BC4D4(&qword_1016A6048, &qword_101409EA0);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v114 - v8;
  v124 = sub_1000BC4D4(&qword_1016A6050, &qword_1013B3B80);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v114 - v9;
  v126 = sub_1000BC4D4(&qword_1016A6058, &qword_1013B3B88);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v114 - v10;
  v129 = sub_1000BC4D4(&qword_1016A6060, &qword_1013B3B90);
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v114 - v11;
  v132 = sub_1000BC4D4(&qword_1016A6068, &qword_1013B3B98);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v114 - v12;
  v146 = sub_1000BC4D4(&qword_1016A6070, &unk_1013B3BA0);
  v143 = *(v146 - 8);
  v13 = __chkstk_darwin(v146);
  v147 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v144 = &v114 - v16;
  __chkstk_darwin(v15);
  v119 = &v114 - v17;
  v139 = sub_1000BC4D4(&qword_1016A6078, &unk_101409ED0);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v120 = &v114 - v18;
  v19 = type metadata accessor for MACAddress();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_allocWithZone(SPDiscoveredAccessory) init];
  v28 = [*&a3[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v24 + 8))(v26, v23);
  [v27 setIdentifier:isa];

  v30 = v27;
  sub_100A22DF0(v22);
  v31 = MACAddress.data.getter();
  v33 = v32;
  (*(v20 + 8))(v22, v19);
  v34 = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v31, v33);
  [v27 setMacAddress:v34];

  v152 = &type metadata for BAServiceIdentifier;
  v153 = &off_10162CAF0;
  LOBYTE(v151) = 0;
  v35 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v135 = a3;
  v36 = *&a3[v35];
  v149 = &v151;

  v37 = sub_1012BBDB4(sub_1001DB280, v148, v36);

  sub_100007BAC(&v151);
  if (v37)
  {
    v114 = v30;
    v118 = a1;
    if (qword_101694EC0 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v38 = type metadata accessor for Logger();
      sub_1000076D4(v38, qword_10177C0F0);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      v41 = os_log_type_enabled(v39, v40);
      v145 = v37;
      if (v41)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v151 = v43;
        *v42 = 136315138;

        v44 = sub_101103B5C();
        v46 = v45;

        v47 = sub_1000136BC(v44, v46, &v151);

        *(v42 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "AccessoryInformationService: %s", v42, 0xCu);
        sub_100007BAC(v43);
      }

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v151 = v51;
        *v50 = 136315138;
        swift_beginAccess();
        type metadata accessor for Characteristic();
        sub_10063F9D8(&qword_1016A5B28, type metadata accessor for Characteristic, &unk_1013D4780);

        v52 = Set.description.getter();
        v54 = v53;

        v55 = sub_1000136BC(v52, v54, &v151);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "  characteristics: %s", v50, 0xCu);
        sub_100007BAC(v51);
      }

      isUniquelyReferenced_nonNull_native = swift_beginAccess();
      v57 = 0;
      v58 = _swiftEmptyArrayStorage;
      v37 = &type metadata for BACharacteristicIdentifier.AccessoryInformation;
      do
      {
        v60 = *(&off_101609968 + v57 + 32);
        v152 = &type metadata for BACharacteristicIdentifier.AccessoryInformation;
        v153 = &off_10162CAE0;
        LOBYTE(v151) = v60;
        Description = v145[2].Description;
        __chkstk_darwin(isUniquelyReferenced_nonNull_native);
        *(&v114 - 2) = &v151;

        v62 = sub_1012BBE10(sub_1001DB2A0, (&v114 - 4), Description);

        isUniquelyReferenced_nonNull_native = sub_100007BAC(&v151);
        if (v62)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100A5D53C(0, v58[2] + 1, 1, v58);
            v58 = isUniquelyReferenced_nonNull_native;
          }

          v64 = v58[2];
          v63 = v58[3];
          if (v64 >= v63 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100A5D53C((v63 > 1), v64 + 1, 1, v58);
            v58 = isUniquelyReferenced_nonNull_native;
          }

          v58[2] = v64 + 1;
          v59 = &v58[2 * v64];
          *(v59 + 32) = v60;
          v59[5] = v62;
        }

        ++v57;
      }

      while (v57 != 9);
      v65 = v58[2];
      if (!v65)
      {
        break;
      }

      v151 = _swiftEmptyArrayStorage;
      sub_101124F10(0, v65, 0);
      v66 = 0;
      v140 = (v143 + 32);
      v67 = v151;
      v68 = v58 + 5;
      v69 = v147;
      v142 = v58;
      v141 = v65;
      while (v66 < v58[2])
      {
        v70 = *(v68 - 8);
        v71 = *v68;
        sub_1000BC4D4(&qword_1016A6088, &qword_1013B3BB8);
        swift_allocObject();
        swift_retain_n();
        v72 = Future.init(_:)();
        v147 = v67;
        v150 = v72;
        sub_1000041A4(&unk_1016A6090, &qword_1016A6088, &qword_1013B3BB8, &protocol conformance descriptor for Future<A, B>);
        v73 = Publisher.eraseToAnyPublisher()();

        v150 = v73;
        v74 = swift_allocObject();
        *(v74 + 16) = v70;
        *(v74 + 24) = v71;

        sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
        sub_1000BC4D4(&unk_1016A60A0, &unk_10139FD40);
        sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
        v67 = v147;
        Publisher.map<A>(_:)();

        v151 = v67;
        v76 = *(v67 + 2);
        v75 = *(v67 + 3);
        if (v76 >= v75 >> 1)
        {
          sub_101124F10((v75 > 1), v76 + 1, 1);
          v67 = v151;
        }

        ++v66;
        *(v67 + 2) = v76 + 1;
        v77 = v143;
        v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v79 = &v67[v78 + *(v143 + 72) * v76];
        v37 = v146;
        (*(v143 + 32))(v79, v69, v146);
        v68 += 2;
        v58 = v142;
        if (v141 == v66)
        {

          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }

    v77 = v143;
    v78 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v67 = _swiftEmptyArrayStorage;
    v37 = v146;
LABEL_24:
    v81 = *(v67 + 2);
    v82 = v137;
    v83 = v118;
    if (v81)
    {
      v84 = *(v77 + 16);
      v85 = v119;
      v143 = v77 + 16;
      v142 = v84;
      (v84)(v119, &v67[v78], v37);
      v86 = sub_1000BC4D4(&qword_1016A60B0, &qword_1013B3BD0);
      v87 = v120;
      v141 = v86;
      Publishers.Map.map<A>(_:)();
      v88 = v85;
      v89 = v77 + 8;
      v140 = *(v77 + 8);
      v140(v88, v37);
      sub_1000BC4D4(&qword_1016A60B8, &qword_1013B3BD8);
      v90 = swift_allocObject();
      (*(v138 + 32))(&v90[*(*v90 + class metadata base offset for PublisherBox + 16)], v87, v139);
      v91 = v81 - 1;
      if (v91)
      {
        v92 = (v115 + 8);
        v93 = *(v77 + 72);
        v147 = v67;
        v139 = v93;
        v94 = &v67[v93 + v78];
        v95 = v117;
        v96 = v116;
        v138 = v89;
        v97 = v144;
        do
        {
          (v142)(v97, v94, v37);
          v151 = v90;
          sub_1000BC4D4(&qword_1016A60C0, &qword_1013B3BE0);
          sub_1000041A4(&qword_1016A60C8, &qword_1016A60C0, &qword_1013B3BE0, &protocol conformance descriptor for AnyPublisher<A, B>);
          sub_1000041A4(&qword_1016A60D0, &qword_1016A6070, &unk_1013B3BA0, &protocol conformance descriptor for Publishers.Map<A, B>);
          v37 = v146;
          Publisher.zip<A, B>(_:_:)();

          sub_1000041A4(&qword_1016A60D8, &qword_1016A6048, &qword_101409EA0, &protocol conformance descriptor for Publishers.Map<A, B>);
          v98 = Publisher.eraseToAnyPublisher()();
          v97 = v144;
          v90 = v98;
          (*v92)(v96, v95);
          v140(v97, v37);
          v94 += v139;
          --v91;
        }

        while (v91);

        v82 = v137;
        v83 = v118;
      }

      else
      {
      }

      v151 = v90;
      sub_1000BC4D4(&qword_1016A60C0, &qword_1013B3BE0);
      sub_100008BB8(0, &qword_1016A60E0, SPDiscoveredAccessoryMetadata_ptr);
      sub_1000041A4(&qword_1016A60C8, &qword_1016A60C0, &qword_1013B3BE0, &protocol conformance descriptor for AnyPublisher<A, B>);
      v99 = v121;
      Publisher.tryMap<A>(_:)();
      sub_1000041A4(&qword_1016A60E8, &qword_1016A6050, &qword_1013B3B80, &protocol conformance descriptor for Publishers.TryMap<A, B>);
      sub_100101B58();
      v100 = v123;
      v101 = v124;
      Publisher.mapError<A>(_:)();
      (*(v122 + 8))(v99, v101);
      sub_1000BC4D4(&qword_1016A60F8, &qword_1013B3BE8);
      sub_1000041A4(&qword_1016A6100, &qword_1016A6058, &qword_1013B3B88, &protocol conformance descriptor for Publishers.MapError<A, B>);
      v102 = v127;
      v103 = v126;
      Publisher.map<A>(_:)();
      (*(v125 + 8))(v100, v103);
      sub_1000BC4D4(&qword_1016A6108, &unk_1013B3BF0);
      sub_1000041A4(&qword_1016A6110, &qword_1016A6060, &qword_1013B3B90, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_1016A6118, &qword_1016A6108, &unk_1013B3BF0, &protocol conformance descriptor for Just<A>);
      v104 = v130;
      v105 = v129;
      Publisher.catch<A>(_:)();
      (*(v128 + 8))(v102, v105);
      v106 = swift_allocObject();
      swift_weakInit();
      v107 = swift_allocObject();
      *(v107 + 16) = v106;
      v108 = v114;
      *(v107 + 24) = v114;
      *(v107 + 32) = v83;
      *(v107 + 40) = v82;
      *(v107 + 48) = v133 & 1;
      v109 = v135;
      v110 = v134;
      *(v107 + 56) = v135;
      *(v107 + 64) = v110;
      sub_1000041A4(&unk_1016A6120, &qword_1016A6068, &qword_1013B3B98, &protocol conformance descriptor for Publishers.Catch<A, B>);
      v111 = v108;

      v112 = v109;
      v113 = v132;
      Publisher<>.sink(receiveValue:)();

      (*(v131 + 8))(v104, v113);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v152 = &type metadata for BAServiceIdentifier;
    v153 = &off_10162CAF0;
    LOBYTE(v151) = 0;
    v154 = 257;
    a1(&v151);

    return sub_10000B3A8(&v151, &qword_1016A6080, &qword_1013B3BB0);
  }

  return result;
}

uint64_t sub_100637B2C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  sub_1000BC4D4(&qword_1016A61A8, &qword_1013B3C10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  *a2 = v7;

  return sub_100017D5C(v5, v6);
}

void *sub_100637BC4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  sub_1000BC4D4(&qword_1016A61A8, &qword_1013B3C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;

  sub_100017D5C(v7, v8);

  result = sub_100399F4C(inited);
  *a3 = v4;
  return result;
}

void sub_100637C80(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v154 = a2;
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  v160 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v166 = [objc_allocWithZone(SPDiscoveredAccessoryMetadata) init];
  v8 = [objc_allocWithZone(SPRawAccessoryMetadata) init];
  v164 = *(v7 + 16);
  v165 = v8;
  if (!v164)
  {
LABEL_73:
    v89 = String._bridgeToObjectiveC()();
    v90 = v166;
    [v166 setProtocolVersion:v89];

    v91 = v165;
    [v90 setRawMetadata:v165];

    *v154 = v90;
    return;
  }

  v10 = 0;
  v11 = (v7 + 56);
  *&v9 = 136446210;
  v153 = v9;
  v162 = v7;
  while (1)
  {
    if (v10 >= *(v7 + 16))
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      swift_once();
LABEL_75:
      v92 = type metadata accessor for Logger();
      sub_1000076D4(v92, qword_10177C0F0);
      sub_100017D5C(v2, v3);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      sub_100016590(v2, v3);
      v17 = v2;
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v167 = v96;
        *v95 = 136315138;
        v97 = Data.hexString.getter();
        v99 = sub_1000136BC(v97, v98, &v167);

        *(v95 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v93, v94, "Could not convert findMyVersion data to VersionNumber [%s]", v95, 0xCu);
        sub_100007BAC(v96);
      }

      goto LABEL_118;
    }

    v12 = *(v11 - 2);
    v2 = *(v11 - 1);
    v3 = *v11;
    v13 = *(v11 - 24);
    if (v13 > 3)
    {
      if (*(v11 - 24) <= 5u)
      {
        if (v13 != 4)
        {
          v28 = v3 >> 62;
          v161 = *(v11 - 2);
          if ((v3 >> 62) > 1)
          {
            if (v28 != 2)
            {
              goto LABEL_84;
            }

            v36 = v2[2];
            v35 = v2[3];
            v29 = v35 - v36;
            if (__OFSUB__(v35, v36))
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (!v28)
            {
              v29 = BYTE6(v3);
              goto LABEL_68;
            }

            if (__OFSUB__(HIDWORD(v2), v2))
            {
              goto LABEL_122;
            }

            v29 = HIDWORD(v2) - v2;
          }

          sub_100017D5C(v2, v3);
LABEL_68:
          if (v29 != 4)
          {
LABEL_84:

            sub_100017D5C(v2, v3);
            sub_100016590(v2, v3);
            if (qword_101694EC0 != -1)
            {
              swift_once();
            }

            v104 = type metadata accessor for Logger();
            sub_1000076D4(v104, qword_10177C0F0);
            sub_100017D5C(v2, v3);
            v93 = Logger.logObject.getter();
            v105 = static os_log_type_t.error.getter();
            sub_100016590(v2, v3);
            v17 = v2;
            if (os_log_type_enabled(v93, v105))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v167 = v107;
              *v106 = 136315138;
              v108 = Data.hexString.getter();
              v110 = sub_1000136BC(v108, v109, &v167);

              *(v106 + 4) = v110;
              _os_log_impl(&_mh_execute_header, v93, v105, "Could not convert firmwareVersion data to VersionNumber [%s]", v106, 0xCu);
              sub_100007BAC(v107);
            }

LABEL_118:

LABEL_119:
            sub_100101B58();
            swift_allocError();
            v147 = v146;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            inited = swift_initStackObject();
            *(inited + 32) = 1635017060;
            *(inited + 16) = xmmword_101385D80;
            *(inited + 72) = &type metadata for Data;
            *(inited + 40) = 0xE400000000000000;
            *(inited + 48) = v17;
            *(inited + 56) = v3;
            sub_100017D5C(v17, v3);
            v149 = NSCocoaErrorDomain;
            sub_10090403C(inited);
            swift_setDeallocating();
            sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
            v150 = objc_allocWithZone(NSError);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v152 = [v150 initWithDomain:v149 code:2048 userInfo:isa];

            *v147 = v161;
            *(v147 + 8) = v152;
            *(v147 + 40) = 8;
            swift_willThrow();

            sub_100016590(v17, v3);

            return;
          }

          sub_100017D5C(v2, v3);
          v70 = Data.subdata(in:)();
          v156 = v71;
          v157 = v70;
          v72 = Data.subdata(in:)();
          v159 = v2;
          v155 = v72;
          v74 = v73;
          v75 = Data.subdata(in:)();
          v163 = v3;
          v77 = v76;
          v78 = Data._Representation.subscript.getter();
          v79 = Data._Representation.subscript.getter() | (v78 << 8);
          v80 = v74;
          v169 = Data._Representation.subscript.getter();
          v81 = v156;
          v82 = v157;
          LODWORD(v158) = Data._Representation.subscript.getter();
          sub_100016590(v75, v77);
          sub_100016590(v155, v80);
          sub_100016590(v82, v81);
          v3 = v159;
          sub_100016590(v159, v163);
          v170 = v79;
          v167 = dispatch thunk of CustomStringConvertible.description.getter();
          v168 = v83;
          v84._countAndFlagsBits = 46;
          v84._object = 0xE100000000000000;
          String.append(_:)(v84);
          LOBYTE(v170) = v169;
          v85 = v162;
          v86._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v86);

          v87._countAndFlagsBits = 46;
          v87._object = 0xE100000000000000;
          String.append(_:)(v87);
          LOBYTE(v170) = v158;
          v7 = v85;
          v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v88);

          v2 = String._bridgeToObjectiveC()();

          [v166 setFirmwareVersion:v2];

          v55 = v163;
          v56.super.isa = Data._bridgeToObjectiveC()().super.isa;
          [v165 setFirmwareVersion:v56.super.isa];
          v57 = v3;
LABEL_70:
          sub_100016590(v57, v55);

          goto LABEL_71;
        }

        sub_100017D5C(*(v11 - 1), *v11);

        sub_100017D5C(v2, v3);
        static Endianness.current.getter();
        sub_100101824();
        FixedWidthInteger.init(data:ofEndianness:)();
        if (BYTE4(v167))
        {
          v21 = 0;
        }

        else
        {
          v21 = v167;
        }

        v22 = v166;
        [v166 setAccessoryCapabilities:{v21, v153}];
        [v22 setCapabilities:sub_1010D92E0(v21)];
        v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
        [v165 setAccessoryCapabilities:{v16.super.isa, v153}];
        goto LABEL_35;
      }

      if (v13 != 6)
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        if (v13 == 7)
        {
          sub_100017D5C(v14, v15);

          sub_100017D5C(v2, v3);
          static Endianness.current.getter();
          sub_1000198E8();
          FixedWidthInteger.init(data:ofEndianness:)();
          if ((v167 & 0x100) != 0)
          {
            v161 = v12;
            if (qword_101694EC0 != -1)
            {
              swift_once();
            }

            v135 = type metadata accessor for Logger();
            sub_1000076D4(v135, qword_10177C0F0);
            sub_100017D5C(v2, v3);
            v93 = Logger.logObject.getter();
            v136 = static os_log_type_t.error.getter();
            sub_100016590(v2, v3);
            v17 = v2;
            if (os_log_type_enabled(v93, v136))
            {
              v137 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v167 = v138;
              *v137 = 136315138;
              v139 = Data.hexString.getter();
              v141 = sub_1000136BC(v139, v140, &v167);

              *(v137 + 4) = v141;
              _os_log_impl(&_mh_execute_header, v93, v136, "Could not convert batteryType data to UInt8 [%s]", v137, 0xCu);
              sub_100007BAC(v138);
            }

            goto LABEL_118;
          }

          [v166 setBatteryType:v167];
          v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
          [v165 setBatteryType:{v16.super.isa, v153}];
        }

        else
        {
          sub_100017D5C(v14, v15);

          sub_100017D5C(v2, v3);
          static Endianness.current.getter();
          sub_1000198E8();
          FixedWidthInteger.init(data:ofEndianness:)();
          if ((v167 & 0x100) != 0)
          {
            v161 = v12;
            if (qword_101694EC0 != -1)
            {
              swift_once();
            }

            v120 = type metadata accessor for Logger();
            sub_1000076D4(v120, qword_10177C0F0);
            sub_100017D5C(v2, v3);
            v93 = Logger.logObject.getter();
            v121 = static os_log_type_t.error.getter();
            sub_100016590(v2, v3);
            v17 = v2;
            if (os_log_type_enabled(v93, v121))
            {
              v122 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              v167 = v123;
              *v122 = 136315138;
              v124 = Data.hexString.getter();
              v126 = sub_1000136BC(v124, v125, &v167);

              *(v122 + 4) = v126;
              _os_log_impl(&_mh_execute_header, v93, v121, "Could not convert batteryState data to UInt8 [%s]", v122, 0xCu);
              sub_100007BAC(v123);
            }

            goto LABEL_118;
          }

          [v166 setBatteryState:v167];
          v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
          [v165 setBatteryLevel:{v16.super.isa, v153}];
        }

        goto LABEL_35;
      }

      v23 = v3 >> 62;
      v161 = *(v11 - 2);
      if ((v3 >> 62) > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_74;
        }

        v31 = v2[2];
        v30 = v2[3];
        v24 = v30 - v31;
        if (__OFSUB__(v30, v31))
        {
          goto LABEL_126;
        }
      }

      else
      {
        if (!v23)
        {
          v24 = BYTE6(v3);
LABEL_54:
          if (v24 != 4)
          {
LABEL_74:

            sub_100017D5C(v2, v3);
            sub_100016590(v2, v3);
            if (qword_101694EC0 == -1)
            {
              goto LABEL_75;
            }

            goto LABEL_127;
          }

          sub_100017D5C(v2, v3);
          v37 = Data.subdata(in:)();
          v156 = v38;
          v157 = v37;
          v39 = Data.subdata(in:)();
          v159 = v2;
          v155 = v39;
          v41 = v40;
          v42 = Data.subdata(in:)();
          v44 = v43;
          v45 = Data._Representation.subscript.getter();
          v46 = Data._Representation.subscript.getter();
          v163 = v3;
          v3 = v46 | (v45 << 8);
          v169 = Data._Representation.subscript.getter();
          v47 = v156;
          v48 = v157;
          LODWORD(v158) = Data._Representation.subscript.getter();
          sub_100016590(v42, v44);
          sub_100016590(v155, v41);
          sub_100016590(v48, v47);
          sub_100016590(v159, v163);
          v170 = v3;
          v167 = dispatch thunk of CustomStringConvertible.description.getter();
          v168 = v49;
          v50._countAndFlagsBits = 46;
          v50._object = 0xE100000000000000;
          String.append(_:)(v50);
          LOBYTE(v170) = v169;
          v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v51);

          v52._countAndFlagsBits = 46;
          v52._object = 0xE100000000000000;
          String.append(_:)(v52);
          LOBYTE(v170) = v158;
          v7 = v162;
          v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v53);

          v54 = String._bridgeToObjectiveC()();

          [v166 setFindMyVersion:v54];

          v2 = v159;
          v55 = v163;
          v56.super.isa = Data._bridgeToObjectiveC()().super.isa;
          [v165 setFindMyVersion:v56.super.isa];
          v57 = v2;
          goto LABEL_70;
        }

        if (__OFSUB__(HIDWORD(v2), v2))
        {
          goto LABEL_125;
        }

        v24 = HIDWORD(v2) - v2;
      }

      sub_100017D5C(v2, v3);
      goto LABEL_54;
    }

    if (*(v11 - 24) <= 1u)
    {
      break;
    }

    if (v13 != 2)
    {
      sub_100017D5C(*(v11 - 1), *v11);

      sub_100017D5C(v2, v3);
      static Endianness.current.getter();
      sub_100235658();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v168)
      {
        v27 = 0;
      }

      else
      {
        v27 = v167;
      }

      [v166 setAccessoryCategory:{v27, v153}];
      v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
      [v165 setAccessoryCategory:{v16.super.isa, v153}];
LABEL_35:
      v26 = v2;
      goto LABEL_36;
    }

    v167 = *(v11 - 1);
    v168 = v3;

    sub_100017D5C(v2, v3);
    sub_1000E0A3C();
    DataProtocol.nullTerminatedUTF8String.getter();
    if (!v19)
    {
      v161 = v12;
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      sub_1000076D4(v111, qword_10177C0F0);
      sub_100017D5C(v2, v3);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();
      sub_100016590(v2, v3);
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v167 = v115;
        *v114 = 136315138;
        v116 = Data.hexString.getter();
        v17 = v2;
        v118 = v3;
        v119 = sub_1000136BC(v116, v117, &v167);

        *(v114 + 4) = v119;
        v3 = v118;
        _os_log_impl(&_mh_execute_header, v112, v113, "Could not convert modelName data to UTF8 [%s]", v114, 0xCu);
        sub_100007BAC(v115);

        goto LABEL_119;
      }

LABEL_108:

      v17 = v2;
      goto LABEL_119;
    }

    v20 = v2;
    v2 = String._bridgeToObjectiveC()();

    [v166 setModelName:v2];

    v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
    [v165 setModelName:{v16.super.isa, v153}];
LABEL_28:
    v26 = v20;
    v7 = v162;
LABEL_36:
    sub_100016590(v26, v3);

LABEL_71:

LABEL_72:
    ++v10;
    v11 += 4;
    if (v164 == v10)
    {
      goto LABEL_73;
    }
  }

  if (*(v11 - 24))
  {
    v167 = *(v11 - 1);
    v168 = v3;

    sub_100017D5C(v2, v3);
    sub_1000E0A3C();
    DataProtocol.nullTerminatedUTF8String.getter();
    if (!v25)
    {
      v161 = v12;
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v127 = type metadata accessor for Logger();
      sub_1000076D4(v127, qword_10177C0F0);
      sub_100017D5C(v2, v3);
      v112 = Logger.logObject.getter();
      v128 = static os_log_type_t.error.getter();
      sub_100016590(v2, v3);
      if (os_log_type_enabled(v112, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v167 = v130;
        *v129 = 136315138;
        v131 = Data.hexString.getter();
        v17 = v2;
        v133 = v3;
        v134 = sub_1000136BC(v131, v132, &v167);

        *(v129 + 4) = v134;
        v3 = v133;
        _os_log_impl(&_mh_execute_header, v112, v128, "Could not convert manufacturerName data to UTF8 [%s]", v129, 0xCu);
        sub_100007BAC(v130);

        goto LABEL_119;
      }

      goto LABEL_108;
    }

    v20 = v2;
    v2 = String._bridgeToObjectiveC()();

    [v166 setManufacturerName:v2];

    v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
    [v165 setManufacturerName:{v16.super.isa, v153}];
    goto LABEL_28;
  }

  v17 = *(v11 - 1);
  v2 = (v3 >> 62);
  if ((v3 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_78;
    }

    v33 = *(v17 + 16);
    v32 = *(v17 + 24);
    v18 = v32 - v33;
    if (__OFSUB__(v32, v33))
    {
      goto LABEL_123;
    }

    v34 = *(v11 - 1);
  }

  else
  {
    if (!v2)
    {
      v18 = BYTE6(v3);
      goto LABEL_59;
    }

    v34 = *(v11 - 1);
    if (__OFSUB__(HIDWORD(v17), v17))
    {
      goto LABEL_124;
    }

    v18 = HIDWORD(v17) - v17;
  }

  sub_100017D5C(v34, *v11);
LABEL_59:
  if (v18 == 8)
  {

    sub_100017D5C(v17, v3);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177C0F0);
    sub_100017D5C(v17, v3);
    v59 = Logger.logObject.getter();
    v2 = v17;
    v60 = static os_log_type_t.default.getter();
    sub_100016590(v17, v3);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v169 = v60;
      v62 = v61;
      v158 = swift_slowAlloc();
      v167 = v158;
      *v62 = v153;
      sub_100017D5C(v17, v3);
      v63 = sub_100313D58(v17, v3);
      v161 = v12;
      v64 = v63;
      v66 = v65;
      sub_100016590(v2, v3);
      v67 = sub_1000136BC(v64, v66, &v167);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v59, v169, "productData: %{public}s", v62, 0xCu);
      sub_100007BAC(v158);
    }

    v7 = v162;
    sub_100017D5C(v2, v3);
    v68 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v2, v3);
    [v166 setProductData:v68];

    v69 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v2, v3);
    [v165 setProductData:v69];

    sub_100016590(v2, v3);
    goto LABEL_72;
  }

LABEL_78:
  v161 = v12;

  sub_100017D5C(v17, v3);
  sub_100016590(v17, v3);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v100 = type metadata accessor for Logger();
  sub_1000076D4(v100, qword_10177C0F0);
  sub_100017D5C(v17, v3);
  v93 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v93, v101))
  {
    sub_100016590(v17, v3);
    goto LABEL_118;
  }

  v102 = swift_slowAlloc();
  *v102 = 134217984;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      v103 = 0;
      goto LABEL_117;
    }

    v143 = *(v17 + 16);
    v142 = *(v17 + 24);
    v144 = __OFSUB__(v142, v143);
    v103 = v142 - v143;
    if (!v144)
    {
      goto LABEL_117;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v103 = BYTE6(v3);
LABEL_117:
    *(v102 + 4) = v103;
    v145 = v102;
    sub_100016590(v17, v3);
    _os_log_impl(&_mh_execute_header, v93, v101, "Invalid length for productData: [%ld]", v145, 0xCu);

    goto LABEL_118;
  }

  LODWORD(v103) = HIDWORD(v17) - v17;
  if (!__OFSUB__(HIDWORD(v17), v17))
  {
    v103 = v103;
    goto LABEL_117;
  }

  __break(1u);
}

uint64_t sub_100639390@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v7 = *a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  result = swift_dynamicCast();
  if (result)
  {
    *&v9[9] = *&v6[25];
    v8 = *v6;
    *v9 = *&v6[16];
    v5 = *&v6[16];
    *a2 = *v6;
    *(a2 + 16) = v5;
    *(a2 + 25) = *&v9[9];
  }

  else
  {
    memset(v6, 0, 40);
    v6[40] = -1;
    sub_10000B3A8(v6, &unk_1016A6180, &unk_101409EE0);
    *a2 = v3;
    *(a2 + 40) = 0;
    return swift_errorRetain();
  }

  return result;
}

void sub_100639470(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5, int a6, void *a7)
{
  v143 = a5;
  v144 = a4;
  v11 = sub_1000BC4D4(&qword_1016A6130, &qword_101409E90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v141 = &v131[-v13];
  v14 = sub_1000BC4D4(&qword_1016A6138, &unk_1013B3C00);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v131[-v16];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_1000D2A70(a1, &v150, &qword_1016A60F8, &qword_1013B3BE8);
    v142 = v19;
    if (v152)
    {
      v148 = v150;
      v149[0] = *v151;
      *(v149 + 9) = *&v151[9];
      sub_100101AA8(&v148, v146);
      v147 = 1;
      v144(v146);
      sub_10000B3A8(v146, &qword_1016A6080, &qword_1013B3BB0);
      sub_100101B04(&v148);
      if ((a6 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v136 = v14;
      v137 = a7;
      v133 = v150;
      [a3 setDiscoveredMetadata:?];
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      v21 = sub_1000076D4(v20, qword_10177C0F0);
      v22 = a3;
      v145 = v21;
      v23 = Logger.logObject.getter();
      LODWORD(v21) = static os_log_type_t.default.getter();

      v132 = v21;
      v24 = os_log_type_enabled(v23, v21);
      v138 = a6;
      v140 = v15;
      v139 = v17;
      v135 = v11;
      v134 = v12;
      if (v24)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v146[0] = v26;
        *v25 = 136446210;
        v27 = [v22 discoveredMetadata];
        v28 = [v27 productData];

        v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = Data.hexString.getter();
        v34 = v33;
        sub_100016590(v29, v31);
        v35 = sub_1000136BC(v32, v34, v146);

        *(v25 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v23, v132, "productData: %{public}s", v25, 0xCu);
        sub_100007BAC(v26);
      }

      v36 = v22;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v146[0] = v40;
        *v39 = 136446210;
        v41 = [v36 discoveredMetadata];
        v42 = [v41 manufacturerName];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = sub_1000136BC(v43, v45, v146);

        *(v39 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v37, v38, "manufacturerName: %{public}s", v39, 0xCu);
        sub_100007BAC(v40);
      }

      v47 = v36;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v146[0] = v51;
        *v50 = 136446210;
        v52 = [v47 discoveredMetadata];
        v53 = [v52 modelName];

        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = sub_1000136BC(v54, v56, v146);

        *(v50 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v48, v49, "modelName: %{public}s", v50, 0xCu);
        sub_100007BAC(v51);
      }

      v58 = v47;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 134349056;
        v62 = [v58 discoveredMetadata];
        v63 = [v62 accessoryCategory];

        *(v61 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v59, v60, "accessoryCategory: %{public}llu", v61, 0xCu);
      }

      else
      {

        v59 = v58;
      }

      v64 = v58;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 67240192;
        v68 = [v64 discoveredMetadata];
        v69 = [v68 accessoryCapabilities];

        *(v67 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v65, v66, "accessoryCapabilities: %{public}u", v67, 8u);
      }

      else
      {

        v65 = v64;
      }

      v70 = v64;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v146[0] = v74;
        *v73 = 136446210;
        v75 = [v70 discoveredMetadata];
        v76 = [v75 firmwareVersion];

        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;

        v80 = sub_1000136BC(v77, v79, v146);

        *(v73 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v71, v72, "firmwareVersion: %{public}s", v73, 0xCu);
        sub_100007BAC(v74);
      }

      v81 = v70;
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v146[0] = v85;
        *v84 = 136446210;
        v86 = [v81 discoveredMetadata];
        v87 = [v86 protocolVersion];

        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;

        v91 = sub_1000136BC(v88, v90, v146);

        *(v84 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v82, v83, "protocolVersion: %{public}s", v84, 0xCu);
        sub_100007BAC(v85);
      }

      v92 = v138;
      v93 = v133;
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v146[0] = v97;
        *v96 = 136446210;
        v98 = [v93 batteryType];
        if (v98)
        {
          v99 = 0xE700000000000000;
          v100 = 0x6E776F6E6B6E75;
          if (v98 == 1)
          {
            v100 = 0x61686365526E6F6ELL;
            v99 = 0xEE00656C62616772;
          }

          v101 = v98 == 2;
          if (v98 == 2)
          {
            v102 = 0x6167726168636572;
          }

          else
          {
            v102 = v100;
          }

          if (v101)
          {
            v103 = 0xEB00000000656C62;
          }

          else
          {
            v103 = v99;
          }
        }

        else
        {
          v103 = 0xE700000000000000;
          v102 = 0x64657265776F70;
        }

        v104 = sub_1000136BC(v102, v103, v146);

        *(v96 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v94, v95, "batteryType: %{public}s", v96, 0xCu);
        sub_100007BAC(v97);

        v92 = v138;
      }

      else
      {
      }

      if (qword_101694F58 != -1)
      {
        swift_once();
      }

      v105 = qword_10177C218;
      v106 = [objc_opt_self() sharedInstance];
      v107 = [v106 isInternalBuild];

      if (v107)
      {
        v108 = String._bridgeToObjectiveC()();
        v109 = [v105 BOOLForKey:v108];
      }

      else
      {
        v109 = 0;
      }

      v110 = [v93 batteryState];
      [v81 setIsBatteryTooLow:v109 | (v110 < 4) & (8u >> (v110 & 0xF))];
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.default.getter();
      v113 = os_log_type_enabled(v111, v112);
      v17 = v139;
      v11 = v135;
      if (v113)
      {
        if (v110 >= 4)
        {
          v114 = 4;
        }

        else
        {
          v114 = v110;
        }

        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v146[0] = v116;
        *v115 = 136446210;
        if (v114 <= 1)
        {
          if (v114)
          {
            v117 = 0xE600000000000000;
            v118 = 0x6D756964656DLL;
          }

          else
          {
            v117 = 0xE400000000000000;
            v118 = 1819047270;
          }
        }

        else if (v114 == 2)
        {
          v117 = 0xE300000000000000;
          v118 = 7827308;
        }

        else if (v114 == 3)
        {
          v117 = 0xED0000776F4C796CLL;
          v118 = 0x6C61636974697263;
        }

        else
        {
          v117 = 0xE700000000000000;
          v118 = 0x6E776F6E6B6E75;
        }

        v119 = sub_1000136BC(v118, v117, v146);

        *(v115 + 4) = v119;
        _os_log_impl(&_mh_execute_header, v111, v112, "batteryState: %{public}s", v115, 0xCu);
        sub_100007BAC(v116);

        v12 = v134;
        v92 = v138;
      }

      else
      {

        v12 = v134;
      }

      v146[0] = v81;
      v147 = 0;
      v120 = v81;
      v144(v146);

      sub_10000B3A8(v146, &qword_1016A6080, &qword_1013B3BB0);
      a7 = v137;
      v14 = v136;
      v15 = v140;
      if ((v92 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
    unsafeFromAsyncTask<A>(_:)();
    if (v150)
    {
      v145 = v150;
      *&v150 = sub_10131FAE0(a7);
      v140 = v15;
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      v139 = v17;
      sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
      v121 = v12;
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
      v122 = v141;
      Publisher.map<A>(_:)();

      sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
      sub_1000041A4(&qword_1016A6168, &qword_1016A6130, &qword_101409E90, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
      v123 = v139;
      Publisher.catch<A>(_:)();
      (*(v121 + 8))(v122, v11);
      *(swift_allocObject() + 16) = a7;
      sub_1000041A4(&qword_1016A6178, &qword_1016A6138, &unk_1013B3C00, &protocol conformance descriptor for Publishers.Catch<A, B>);
      v124 = a7;
      Publisher<>.sink(receiveValue:)();

      (*(v140 + 8))(v123, v14);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

LABEL_59:

      return;
    }

    sub_100101B58();
    swift_allocError();
    *v125 = 16;
    *(v125 + 8) = 0u;
    *(v125 + 24) = 0u;
    *(v125 + 40) = 11;
    swift_willThrow();

    if (qword_101694810 != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    sub_1000076D4(v126, qword_1016A5D30);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v150 = v130;
      *v129 = 136315138;
      *(v129 + 4) = sub_1000136BC(0xD000000000000034, 0x800000010135B9A0, &v150);
      _os_log_impl(&_mh_execute_header, v127, v128, "%s Missing CentralManager!", v129, 0xCu);
      sub_100007BAC(v130);
    }
  }
}

void sub_10063A750(uint64_t a1, void *a2)
{
  sub_1000D2A70(a1, &v22, &unk_1016A6150, &unk_10139DB30);
  if (v24)
  {
    v20 = v22;
    v21[0] = *v23;
    *(v21 + 9) = *&v23[9];
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C0F0);
    sub_100101AA8(&v20, v19);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2112;
      sub_100101B58();
      swift_allocError();
      sub_100101AA8(v19, v9);
      v10 = v4;
      v11 = _convertErrorToNSError(_:)();
      sub_100101B04(v19);

      *(v7 + 14) = v11;
      v8[1] = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to disconnect from %@: %@", v7, 0x16u);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();
    }

    else
    {

      sub_100101B04(v19);
    }

    sub_100101B04(&v20);
  }

  else
  {
    sub_10000B3A8(&v22, &unk_1016A6150, &unk_10139DB30);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C0F0);
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully disconnected after readMetadata on %@", v16, 0xCu);
      sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);
    }
  }
}

uint64_t sub_10063AA70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a5;
  v15 = a3;

  sub_10025EDD4(0, 0, v12, &unk_1013B3CA0, v14);
}

uint64_t sub_10063ABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v7[12] = swift_task_alloc();
  type metadata accessor for AccessoryInfoEndPoint(0);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v7[16] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryMetadata(0);
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_10063AD90, 0, 0);
}

uint64_t sub_10063AD90()
{
  v34 = v0;
  if (qword_101694810 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  *(v0 + 192) = v2;
  sub_1000076D4(v2, qword_1016A5D30);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136446210;
    v12 = [v9 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10063F9D8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_1000136BC(v13, v15, &v33);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "retrieveProductInfo for accessory: %{public}s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  v19 = *(v0 + 128);
  sub_100231730(*(v0 + 64), v19);
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    sub_10000B3A8(*(v0 + 128), &qword_1016A62A0, &unk_101396E10);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(*(v0 + 192), qword_10177C0F0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "retrieveProductInfo: invalid parameters", v22, 2u);
    }

    v23 = *(v0 + 80);

    *(v0 + 16) = 6;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 267;
    v23(v0 + 16);
    sub_10000B3A8(v0 + 16, &qword_1016A62A8, &qword_1013B3CA8);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 160);
    v27 = *(v0 + 144);
    v28 = *(v0 + 72);
    sub_10063F5C4(*(v0 + 128), v26, type metadata accessor for AccessoryMetadata);
    sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    sub_10063F714(v26, v30 + v29, type metadata accessor for AccessoryMetadata);
    v31 = *(v28 + 88);

    v32 = swift_task_alloc();
    *(v0 + 200) = v32;
    *v32 = v0;
    v32[1] = sub_10063B288;

    return sub_100ED2090(v30, 0, 3, v31);
  }
}

uint64_t sub_10063B288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = a3;

  return _swift_task_switch(sub_10063B38C, 0, 0);
}

uint64_t sub_10063B38C()
{
  v55 = v0;
  if (*(v0 + 208))
  {
    v53 = *(v0 + 208);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 152);
    v1 = *(v0 + 160);
    v3 = *(v0 + 64);
    sub_1000076D4(*(v0 + 192), qword_10177C0F0);
    sub_10063F714(v1, v2, type metadata accessor for AccessoryMetadata);
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 176);
      v7 = *(v0 + 184);
      v9 = *(v0 + 168);
      v51 = *(v0 + 152);
      v10 = *(v0 + 64);
      v11 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v11 = 136446466;
      v12 = [v10 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10063F9D8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v8 + 8))(v7, v9);
      v16 = sub_1000136BC(v13, v15, &v54);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2082;
      v17 = sub_100230E34();
      v19 = v18;
      sub_10063F77C(v51, type metadata accessor for AccessoryMetadata);
      v20 = sub_1000136BC(v17, v19, &v54);

      *(v11 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s product info: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v25 = *(v0 + 152);

      sub_10063F77C(v25, type metadata accessor for AccessoryMetadata);
    }

    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v26 = qword_10177C218;
    v27 = [objc_opt_self() sharedInstance];
    v28 = [v27 isInternalBuild];

    v29 = &enum case for FMNAccountType.accessory(_:);
    if (v28)
    {
      v30 = String._bridgeToObjectiveC()();
      v31 = [v26 BOOLForKey:v30];

      if (v31)
      {
        v29 = &enum case for FMNAccountType.none(_:);
      }
    }

    v33 = *(v0 + 216);
    v32 = *(v0 + 224);
    v52 = *(v0 + 160);
    v34 = *(v0 + 112);
    v35 = *(v0 + 120);
    v36 = *(v0 + 96);
    v37 = *(v0 + 104);
    v38 = *(v0 + 88);
    v49 = *(v0 + 208);
    v50 = *(v0 + 80);
    v39 = *v29;
    v40 = type metadata accessor for FMNAccountType();
    (*(*(v40 - 8) + 104))(v34, v39, v40);
    sub_10063F5C4(v34, v35, type metadata accessor for AccessoryInfoEndPoint);
    type metadata accessor for SearchPartyURLSessionFactory(0);
    swift_allocObject();
    v41 = type metadata accessor for FMNMockingPreferences();
    (*(*(v41 - 8) + 56))(v36, 1, 1, v41);
    v42 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    type metadata accessor for ServerInteractionController(0);
    v43 = swift_allocObject();
    sub_10063F714(v35, v37, type metadata accessor for AccessoryInfoEndPoint);
    v44 = sub_100620924(v37, v42, v43);
    sub_10063F77C(v35, type metadata accessor for AccessoryInfoEndPoint);

    sub_100017D5C(v33, v32);
    sub_1004FC6D8(v53, v33, v32, 0, v44);
    sub_100165328(v49, v33, v32);
    v45 = swift_allocObject();
    *(v45 + 16) = v50;
    *(v45 + 24) = v38;

    Future.addFailure(block:)();

    v46 = swift_allocObject();
    *(v46 + 16) = v50;
    *(v46 + 24) = v38;

    Future.addSuccess(block:)();

    sub_100165328(v49, v33, v32);
    sub_10063F77C(v52, type metadata accessor for AccessoryMetadata);
  }

  else
  {
    sub_10063F77C(*(v0 + 160), type metadata accessor for AccessoryMetadata);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(*(v0 + 192), qword_10177C0F0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "retrieveProductInfo: invalid parameters", v23, 2u);
    }

    v24 = *(v0 + 80);

    *(v0 + 16) = 6;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 267;
    v24(v0 + 16);
    sub_10000B3A8(v0 + 16, &qword_1016A62A8, &qword_1013B3CA8);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_10063BB2C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v29 = a3;
  v30 = a2;
  v3 = type metadata accessor for AccessoryInfoResponseContent(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for AccessoryProductInfo(0);
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C0F0);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in product info request. Error - %{public}@", v15, 0xCu);
    sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v18 BOOLForKey:v21];

  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "AccessoryHardcodedPairingEnabled: bypassing product info check failure", v25, 2u);
  }

  sub_10074B008(v5);
  sub_10119A0F4(v5, v8);
  if ((*(v28 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &qword_101697268, &qword_101394FE0);
LABEL_13:
    v31 = 6;
    v32 = 0u;
    v33 = 0u;
    v34 = 267;
    v30(&v31);
    return sub_10000B3A8(&v31, &qword_1016A62A8, &qword_1013B3CA8);
  }

  sub_10063F5C4(v8, v11, type metadata accessor for AccessoryProductInfo);
  v31 = sub_10119B27C();
  HIBYTE(v34) = 0;
  v30(&v31);
  sub_10000B3A8(&v31, &qword_1016A62A8, &qword_1013B3CA8);
  return sub_10063F77C(v11, type metadata accessor for AccessoryProductInfo);
}

uint64_t sub_10063BFCC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = type metadata accessor for AccessoryInfoResponseContent(0);
  __chkstk_darwin(v6 - 8);
  v92 = (v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v9 = __chkstk_darwin(v8 - 8);
  v88[1] = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v89 = v88 - v11;
  v12 = type metadata accessor for AccessoryProductInfo(0);
  v90 = *(v12 - 8);
  v91 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v88[0] = v88 - v16;
  v17 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v88 - v22;
  v24 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v24 - 8);
  v25 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v94 = a2;
  if (v25 == 200)
  {
    v89 = v15;
    v93 = a3;
    v26 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v28 = v27;
    static String.Encoding.utf8.getter();
    v29 = String.init(data:encoding:)();
    v31 = v30;
    sub_100016590(v26, v28);
    if (v31)
    {
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000076D4(v32, qword_10177C0F0);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v96 = v36;
        *v35 = 136315138;
        v37 = sub_1000136BC(v29, v31, &v96);

        *(v35 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v33, v34, "response data: %s", v35, 0xCu);
        sub_100007BAC(v36);
      }

      else
      {
      }
    }

    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    v61 = sub_1000076D4(v60, qword_10177C0F0);
    (*(v18 + 16))(v23, a1, v17);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v88[0] = v61;
      v65 = v64;
      v66 = swift_slowAlloc();
      v96 = v66;
      *v65 = 136446210;
      sub_10063F9D8(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v17;
      v70 = v69;
      (*(v18 + 8))(v23, v68);
      v71 = sub_1000136BC(v67, v70, &v96);
      v72 = v94;

      *(v65 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v62, v63, "   %{public}s", v65, 0xCu);
      sub_100007BAC(v66);
    }

    else
    {

      (*(v18 + 8))(v23, v17);
      v72 = v94;
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v73 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v75 = v74;
    sub_10063F51C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v73, v75);
    v76 = v96;

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v96 = v80;
      *v79 = 136446210;
      v95 = v76;
      sub_10063F570();
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = sub_1000136BC(v81, v82, &v96);

      *(v79 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "decodedResponse %{public}s", v79, 0xCu);
      sub_100007BAC(v80);
    }

    v84 = sub_10063CE5C(v76);

    if (v84)
    {
      v96 = v84;
      HIBYTE(v99) = 0;
      v85 = v84;
      v72(&v96);
    }

    else
    {
      v96 = 6;
      v97 = 0u;
      v98 = 0u;
      v99 = 267;
      v72(&v96);
    }

    return sub_10000B3A8(&v96, &qword_1016A62A8, &qword_1013B3CA8);
  }

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000076D4(v38, qword_10177C0F0);
  v39 = v17;
  (*(v18 + 16))(v21, a1, v17);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v93 = a3;
    v43 = v42;
    v44 = swift_slowAlloc();
    v96 = v44;
    *v43 = 136446210;
    sub_10063F9D8(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v18 + 8))(v21, v39);
    v48 = sub_1000136BC(v45, v47, &v96);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "Product info check failed %{public}s", v43, 0xCu);
    sub_100007BAC(v44);
  }

  else
  {

    (*(v18 + 8))(v21, v39);
  }

  v49 = v94;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v50 = qword_10177C218;
  v51 = [objc_opt_self() sharedInstance];
  v52 = [v51 isInternalBuild];

  if (!v52 || (v53 = String._bridgeToObjectiveC()(), v54 = [v50 BOOLForKey:v53], v53, !v54))
  {
LABEL_20:
    v96 = 6;
    v97 = 0u;
    v98 = 0u;
    v99 = 267;
    v49(&v96);
    return sub_10000B3A8(&v96, &qword_1016A62A8, &qword_1013B3CA8);
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "AccessoryHardcodedPairingEnabled: bypassing product info check failure", v57, 2u);
  }

  v58 = v92;
  sub_10074B008(v92);
  v59 = v89;
  sub_10119A0F4(v58, v89);
  if ((*(v90 + 48))(v59, 1, v91) == 1)
  {
    sub_10000B3A8(v59, &qword_101697268, &qword_101394FE0);
    goto LABEL_20;
  }

  v87 = v88[0];
  sub_10063F5C4(v59, v88[0], type metadata accessor for AccessoryProductInfo);
  v96 = sub_10119B27C();
  HIBYTE(v99) = 0;
  v49(&v96);
  sub_10000B3A8(&v96, &qword_1016A62A8, &qword_1013B3CA8);
  return sub_10063F77C(v87, type metadata accessor for AccessoryProductInfo);
}

id sub_10063CE5C(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v208 = *(v2 - 8);
  v209 = v2;
  __chkstk_darwin(v2);
  v207 = v200 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (v200 - v8);
  v10 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  __chkstk_darwin(v10 - 8);
  v12 = v200 - v11;
  v13 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v210 = v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v16 - 8);
  v18 = v200 - v17;
  v19 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v212 = v200 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AccessoryInfoResponseContent(0);
  v23 = __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v28 = v200 - v25;
  if (*(a1 + 16))
  {
    v211 = v27;
    v213 = v9;
    v29 = v13;
    v30 = v26;
    sub_10063F714(a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v200 - v25, type metadata accessor for AccessoryInfoResponseContent);
    sub_1000D2A70(&v28[*(v30 + 24)], v18, &qword_1016A62E8, &qword_1013B3CB0);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v31 = &qword_1016A62E8;
      v32 = &qword_1013B3CB0;
      v33 = v18;
    }

    else
    {
      v204 = v19;
      v35 = v212;
      sub_10063F5C4(v18, v212, type metadata accessor for AccessoryInfoResponseContent.Configuration);
      v205 = v30;
      sub_1000D2A70(&v28[*(v30 + 28)], v12, &qword_1016A62E0, &unk_1013B8C30);
      v36 = v29;
      if ((*(v14 + 48))(v12, 1, v29) != 1)
      {
        v38 = v12;
        v39 = v210;
        sub_10063F5C4(v38, v210, type metadata accessor for AccessoryInfoResponseContent.Assets);
        v40 = *(v28 + 10);
        if (v40 != 2)
        {
          v202 = v28[92];
          v201 = *(v28 + 22);
          if (qword_101694EC0 != -1)
          {
            goto LABEL_87;
          }

          while (1)
          {
            v41 = type metadata accessor for Logger();
            v42 = sub_1000076D4(v41, qword_10177C0F0);
            v203 = v28;
            v43 = v211;
            sub_10063F714(v28, v211, type metadata accessor for AccessoryInfoResponseContent);
            v200[1] = v42;
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();
            v46 = v7;
            if (os_log_type_enabled(v44, v45))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v215[0] = v48;
              *v47 = 136315138;
              v49 = sub_100753C94();
              v51 = v50;
              sub_10063F77C(v43, type metadata accessor for AccessoryInfoResponseContent);
              v52 = sub_1000136BC(v49, v51, v215);

              *(v47 + 4) = v52;
              _os_log_impl(&_mh_execute_header, v44, v45, "Product info content: %s", v47, 0xCu);
              sub_100007BAC(v48);
            }

            else
            {

              sub_10063F77C(v43, type metadata accessor for AccessoryInfoResponseContent);
            }

            v53 = v212;
            if (qword_101694F58 != -1)
            {
              swift_once();
            }

            v54 = qword_10177C218;
            v55 = [objc_opt_self() sharedInstance];
            v56 = [v55 isInternalBuild];

            if (v56)
            {
              v57 = String._bridgeToObjectiveC()();
              v58 = [v54 BOOLForKey:v57];
            }

            else
            {
              v58 = 0;
            }

            v59 = v203;
            v60 = [objc_allocWithZone(SPDiscoveredAccessoryProductInformation) init];
            v61 = v60;
            if (v59[8])
            {
              v62 = 0;
            }

            else
            {
              v62 = *v59;
            }

            [v60 setBeaconGroupVersion:v62];
            if (v58)
            {
              v63 = 1;
            }

            else
            {
              v63 = v59[32];
            }

            [v61 setEligibleForPairing:v63 & 1];
            [v61 setHidden:v59[36] & 1];
            [v61 setIsHELEAccessory:v59[33] & 1];
            [v61 setSupportBeaconGroupInfo:v59[35] & 1];
            [v61 setIsManagedAccessory:v59[34] & 1];
            v64 = String._bridgeToObjectiveC()();
            [v61 setFindmyProductId:v64];

            v65 = String._bridgeToObjectiveC()();
            [v61 setManufacturerName:v65];

            v66 = String._bridgeToObjectiveC()();
            [v61 setModelName:v66];

            if (*(v53 + 8))
            {
              v67 = String._bridgeToObjectiveC()();
            }

            else
            {
              v67 = 0;
            }

            v68 = v204;
            v206 = v61;
            [v61 setAppBundleIdentifier:v67];

            v69 = v213;
            sub_1000D2A70(v53 + v68[11], v213, &unk_101696AC0, &qword_101390A60);
            v70 = type metadata accessor for URL();
            v71 = *(v70 - 8);
            v72 = *(v71 + 48);
            v74 = 0;
            if (v72(v69, 1, v70) != 1)
            {
              URL._bridgeToObjectiveC()(v73);
              v74 = v75;
              (*(v71 + 8))(v69, v70);
            }

            [v206 setLowBatteryInfoURL:v74];

            sub_1000D2A70(v212 + v68[12], v46, &unk_101696AC0, &qword_101390A60);
            if (v72(v46, 1, v70) == 1)
            {
              v77 = 0;
            }

            else
            {
              URL._bridgeToObjectiveC()(v76);
              v77 = v78;
              (*(v71 + 8))(v46, v70);
            }

            v79 = v201 | (v202 << 32);
            v80 = v206;
            [v206 setDisableURL:v77];

            v81 = v212;

            v82 = String._bridgeToObjectiveC()();

            [v80 setVersion:v82];

            v83 = v204;
            v84 = v81 + v204[13];
            v85 = *v84;
            if (*(v84 + 8))
            {
              v85 = 0.0;
            }

            [v80 setTxPower:v85];
            v86 = v81 + v83[14];
            v87 = *v86;
            if (*(v86 + 8))
            {
              v87 = 20.0;
            }

            [v80 setRangeDistanceInMeters:v87];
            [v80 setCapabilities:{sub_10074BC38(v40 & 0xFFFFFFFF01010101, v79 & 0xFFFFFFFFFFLL)}];
            URL._bridgeToObjectiveC()(v88);
            v90 = v89;
            [v80 setDefaultHeroIcon:v89];

            URL._bridgeToObjectiveC()(v36[5]);
            v92 = v91;
            [v80 setDefaultListIcon:v91];

            URL._bridgeToObjectiveC()(v36[6]);
            v94 = v93;
            [v80 setDefaultHeroIcon2x:v93];

            URL._bridgeToObjectiveC()(v36[7]);
            v96 = v95;
            [v80 setDefaultListIcon2x:v95];

            URL._bridgeToObjectiveC()(v36[8]);
            v98 = v97;
            [v80 setDefaultHeroIcon3x:v97];

            URL._bridgeToObjectiveC()(v36[9]);
            v100 = v99;
            [v80 setDefaultListIcon3x:v99];

            v101 = v81 + v83[19];
            v102 = *v101;
            v103 = *(v101 + 8);
            v104 = *(v101 + 16);
            if (v104)
            {
              v105 = -1.0;
            }

            else
            {
              v105 = v103;
            }

            if (v104)
            {
              v106 = -1.0;
            }

            else
            {
              v106 = v102;
            }

            v202 = v36[12];
            v213 = v36[14];
            v211 = objc_allocWithZone(SPUnknownProductMetadata);

            v107 = String._bridgeToObjectiveC()();
            isa = Array._bridgeToObjectiveC()().super.isa;

            URL._bridgeToObjectiveC()(v109);
            v111 = v110;
            URL._bridgeToObjectiveC()(v202);
            v113 = v112;
            URL._bridgeToObjectiveC()(v213);
            v115 = v114;
            v116 = [v211 initWithTitle:v107 description:isa percentageX:v111 percentageY:v113 image:v114 image2x:v106 image3x:v105];

            [v206 setLearnModeMetadata:v116];
            v117 = v81 + v83[20];
            v118 = *v117;
            v119 = *(v117 + 8);
            v120 = *(v117 + 16);
            if (v120)
            {
              v121 = -1.0;
            }

            else
            {
              v121 = v119;
            }

            if (v120)
            {
              v122 = -1.0;
            }

            else
            {
              v122 = v118;
            }

            v123 = objc_allocWithZone(SPUnknownProductMetadata);

            v124 = String._bridgeToObjectiveC()();
            v125 = Array._bridgeToObjectiveC()().super.isa;

            v34 = v206;
            URL._bridgeToObjectiveC()(v126);
            v128 = v127;
            URL._bridgeToObjectiveC()(v129);
            v131 = v130;
            URL._bridgeToObjectiveC()(v132);
            v134 = v133;
            v135 = [v123 initWithTitle:v124 description:v125 percentageX:v128 percentageY:v131 image:v133 image2x:v122 image3x:v121];

            [v34 setDisableMetadata:v135];
            v28 = v203;
            v136 = *&v203[*(v205 + 44)];
            if (v136)
            {
              v137 = *(v136 + 16);
              if (v137)
              {
                v215[0] = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v138 = v136 + 48;
                do
                {
                  v140 = *(v138 - 16);
                  v141 = *(v138 + 32);
                  v211 = *(v138 + 24);
                  LODWORD(v213) = *(v138 + 40);
                  v142 = objc_allocWithZone(SPAccessoryLayoutTemplate);

                  v143 = [v142 init];
                  [v143 setPartIdentifier:v140];
                  v144 = String._bridgeToObjectiveC()();
                  [v143 setPartType:v144];

                  v145 = String._bridgeToObjectiveC()();
                  [v143 setPartName:v145];

                  if (v141)
                  {

                    v139 = String._bridgeToObjectiveC()();
                  }

                  else
                  {
                    v139 = 0;
                  }

                  v138 += 64;
                  [v143 setPartSymbol:v139];

                  [v143 setIsPrimary:v213 & 1];
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  --v137;
                }

                while (v137);
                v28 = v203;
                v34 = v206;
              }

              sub_100008BB8(0, &qword_1016A62F0, SPAccessoryLayoutTemplate_ptr);
              v146 = Array._bridgeToObjectiveC()().super.isa;

              [v34 setLayoutTemplate:v146];
            }

            v147 = v212;
            if (*(v212 + 88))
            {
              v148 = Logger.logObject.getter();
              v149 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v148, v149))
              {
                v150 = swift_slowAlloc();
                *v150 = 0;
                _os_log_impl(&_mh_execute_header, v148, v149, "No defaultRole provided. Fallback to custom role.", v150, 2u);
              }

              v152 = v207;
              v151 = v208;
              v153 = v209;
              (*(v208 + 104))(v207, enum case for LocalizationUtility.Table.default(_:), v209);
              static LocalizationUtility.localizedString(key:table:)();
              (*(v151 + 8))(v152, v153);
              v154 = objc_allocWithZone(SPBeaconRole);
              v155 = String._bridgeToObjectiveC()();

              v156 = String._bridgeToObjectiveC()();
              v157 = [v154 initWithRoleId:999 role:v155 roleEmoji:v156];

              [v34 setDefaultRole:v157];
              sub_10063F77C(v210, type metadata accessor for AccessoryInfoResponseContent.Assets);
              sub_10063F77C(v147, type metadata accessor for AccessoryInfoResponseContent.Configuration);
              goto LABEL_9;
            }

            v28 = *(v212 + 80);
            if (qword_101694940 != -1)
            {
              swift_once();
            }

            OS_dispatch_queue.sync<A>(execute:)();
            v40 = v215[0];
            v158 = sub_101073D24(v215[0]);

            v159 = *(v158 + 16);
            if (!v159)
            {
              break;
            }

            v7 = 0;
            v36 = (v158 + 32);
            while (v7 < *(v158 + 16))
            {
              v163 = *&v36[8 * v7++ + 6];
              v165 = *(v163 + 16);
              v164 = v163 + 16;
              v166 = v165 + 1;
              while (--v166)
              {
                v167 = *(v164 + 16);
                v164 += 40;
                if (v167 == v28)
                {
                  v160 = objc_allocWithZone(SPBeaconRole);

                  v40 = String._bridgeToObjectiveC()();
                  v161 = String._bridgeToObjectiveC()();
                  v162 = [v160 initWithRoleId:v28 role:v40 roleEmoji:v161];

                  [v206 setDefaultRole:v162];
                  break;
                }
              }

              if (v7 == v159)
              {
                goto LABEL_75;
              }
            }

            __break(1u);
LABEL_87:
            swift_once();
          }

LABEL_75:

          v28 = v203;
          v168 = &v203[*(v205 + 36)];
          v169 = v168[1];
          v170 = v212;
          if (v169)
          {
            v172 = v168[4];
            v171 = v168[5];
            v173 = v168[2];
            v174 = v168[3];
            v215[0] = *v168;
            v215[1] = v169;
            v213 = v173;
            v215[2] = v173;
            v215[3] = v174;
            v215[4] = v172;
            v215[5] = v171;

            v175 = Logger.logObject.getter();
            v176 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v175, v176))
            {
              v177 = swift_slowAlloc();
              v211 = v172;
              v178 = v177;
              v179 = swift_slowAlloc();
              v214 = v179;
              *v178 = 136315138;
              v180 = sub_100751F34();
              v182 = sub_1000136BC(v180, v181, &v214);

              *(v178 + 4) = v182;
              _os_log_impl(&_mh_execute_header, v175, v176, "Received public keys from server: %s", v178, 0xCu);
              sub_100007BAC(v179);

              v170 = v212;
            }

            v183 = Data.init(base64Encoded:options:)();
            v185 = 0;
            if (v184 >> 60 != 15)
            {
              v186 = v183;
              v187 = v184;
              v185 = Data._bridgeToObjectiveC()().super.isa;
              sub_100006654(v186, v187);
            }

            [v206 setEncryptionKeyE1:v185];

            v188 = Data.init(base64Encoded:options:)();
            v190 = 0;
            if (v189 >> 60 != 15)
            {
              v191 = v188;
              v192 = v189;
              v190 = Data._bridgeToObjectiveC()().super.isa;
              sub_100006654(v191, v192);
            }

            [v206 setEncryptionKeyE2:v190];

            v193 = Data.init(base64Encoded:options:)();
            v195 = 0;
            if (v194 >> 60 != 15)
            {
              v196 = v193;
              v197 = v194;
              v195 = Data._bridgeToObjectiveC()().super.isa;
              sub_100006654(v196, v197);
            }

            v198 = v206;
            [v206 setVerificationKeyS2:v195];

            sub_10063F77C(v210, type metadata accessor for AccessoryInfoResponseContent.Assets);
            v199 = v170;
            v34 = v198;
            sub_10063F77C(v199, type metadata accessor for AccessoryInfoResponseContent.Configuration);
            v28 = v203;
          }

          else
          {
            sub_10063F77C(v210, type metadata accessor for AccessoryInfoResponseContent.Assets);
            sub_10063F77C(v170, type metadata accessor for AccessoryInfoResponseContent.Configuration);
            v34 = v206;
          }

          goto LABEL_9;
        }

        sub_10063F77C(v39, type metadata accessor for AccessoryInfoResponseContent.Assets);
        sub_10063F77C(v35, type metadata accessor for AccessoryInfoResponseContent.Configuration);
LABEL_8:
        v34 = 0;
LABEL_9:
        sub_10063F77C(v28, type metadata accessor for AccessoryInfoResponseContent);
        return v34;
      }

      sub_10063F77C(v35, type metadata accessor for AccessoryInfoResponseContent.Configuration);
      v31 = &qword_1016A62E0;
      v32 = &unk_1013B8C30;
      v33 = v12;
    }

    sub_10000B3A8(v33, v31, v32);
    goto LABEL_8;
  }

  return 0;
}

double sub_10063E4F8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v11 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 48);
  *(a1 + 48) = 0x8000000000000000;
  sub_100FFEFD4(v11, v9, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v9, v6);
  *(a1 + 48) = v14;
  swift_endAccess();
  swift_beginAccess();
  *a3 = *(a1 + 32);

  return result;
}

void sub_10063E678(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000BC4D4(&unk_1016A6020, &unk_101393420), swift_dynamicCast(), v12 = v5, v13 = v6, !v21))
    {
LABEL_19:
      sub_1000128F8(v2);
      return;
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v21)
    {
      v15 = _convertErrorToNSError(_:)();
      [v21 accessoryDiscoveryError:v15];

      swift_unknownObjectRelease();
    }

    v5 = v12;
    v6 = v13;
  }

  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_13:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_10063E8C4(uint64_t a1)
{
  sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
  OS_dispatch_queue.sync<A>(execute:)();
}

void sub_10063E9D0(uint64_t a1)
{
  if (!qword_10169AC00)
  {
    type metadata accessor for MACAddress();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10169AC00);
    }
  }
}

double sub_10063EA28@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(a3 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v13 = sub_1007AA0E0(v11);
  (*(v9 + 8))(v11, v8);
  swift_endAccess();
  v14 = *a1;
  *a1 = v13;

  swift_beginAccess();
  *a4 = *(a2 + 32);

  return result;
}

void sub_10063EB98(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000BC4D4(&unk_1016A6020, &unk_101393420), swift_dynamicCast(), v14 = v7, v15 = v8, !v23))
    {
LABEL_19:
      sub_1000128F8(v4);
      return;
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v23)
    {
      [v23 *a3];
      swift_unknownObjectRelease();
    }

    v7 = v14;
    v8 = v15;
  }

  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_13:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10063EE30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *a1;
  v6 = a1[1];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;

  return sub_100017D5C(v5, v6);
}

void sub_10063EEA0(BOOL *a1@<X8>)
{
  if (*(v1 + 72))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *(v1 + 80) == 0;
  }
}

uint64_t sub_10063EEE4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A62F8, &qword_1013B3CC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - v4;
  v19 = a1;
  *(swift_allocObject() + 16) = &off_101609910;

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v18[2] = type metadata accessor for Peripheral(0);
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_1000041A4(&unk_1016A6300, &qword_1016A62F8, &qword_1013B3CC8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v6 = Publisher.eraseToAnyPublisher()();
  v7 = v3 + 8;
  v8 = *(v3 + 8);
  v9 = v2;
  v8(v5, v2);
  v19 = v6;
  *(swift_allocObject() + 16) = &off_101609940;

  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v10 = Publisher.eraseToAnyPublisher()();

  v18[1] = v7;
  v8(v5, v9);
  v11 = qword_101694EC0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C0F0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "AccessoryDiscoverySession Posh", v15, 2u);
  }

  v19 = v10;
  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v16 = Publisher.eraseToAnyPublisher()();

  v8(v5, v9);
  return v16;
}

id sub_10063F3D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  [v5 setProductInformation:*a1];
  *a2 = v5;

  return v5;
}

uint64_t sub_10063F430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_10063ABB0(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_10063F51C()
{
  result = qword_1016A62C8;
  if (!qword_1016A62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A62C8);
  }

  return result;
}

unint64_t sub_10063F570()
{
  result = qword_1016A62D0;
  if (!qword_1016A62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A62D0);
  }

  return result;
}

uint64_t sub_10063F5C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10063F638(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_100634368(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10063F714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10063F77C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10063F824(uint64_t *a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100630AC8(a1, v1 + v4, v5);
}

uint64_t sub_10063F8E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100A255C8(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_10063F9D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10063FA20@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 32);

  return result;
}

uint64_t sub_10063FAB4()
{
  *(v0 + 72) = 0;

  *(v0 + 80) = 0;
}

void sub_10063FB48()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = _swiftEmptyDictionarySingleton;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v5 = v31;
  v6 = [objc_opt_self() currentDevice];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 serverFriendlyDescription];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v5;
      sub_100FFACA0(v9, v11, 0xD000000000000011, 0x800000010134EA40, v12);
      v13 = v31;
      Date.init()();
      v14 = Date.epoch.getter();
      (*(v1 + 8))(v3, v0);
      v31 = v14;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v13;
      sub_100FFACA0(v15, v17, 0xD000000000000015, 0x800000010134EA60, v18);
      v19 = v31;
      v31 = 1;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v19;
      sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
      v24 = v31;
      v26 = sub_1008D9A78(v25);
      v28 = v27;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v24;
      sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10063FE14(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A64B8, &qword_1013B4100);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100646528();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v12 = 0;
  sub_10064657C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent(0);
    LOBYTE(v13) = 1;
    type metadata accessor for UUID();
    sub_100646624(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = *(v3 + *(v9 + 24));
    v12 = 2;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10064002C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A64D0, &qword_1013B4108);
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent(0);
  __chkstk_darwin(v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  sub_1000035D0(a1, v13);
  sub_100646528();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v26);
  }

  v21 = v10;
  v14 = v12;
  v15 = v23;
  v29 = 0;
  sub_1006465D0();
  v16 = v25;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v28;
  *v14 = v27;
  *(v14 + 1) = v17;
  v20[1] = v17;
  LOBYTE(v27) = 1;
  sub_100646624(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(&v14[*(v21 + 20)], v6, v4);
  v29 = 2;
  sub_10064666C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 8))(v9, v16);
  v18 = v22;
  v14[*(v21 + 24)] = v27;
  sub_1006466C0(v14, v18);
  sub_100007BAC(v26);
  return sub_1006461B8(v14);
}

uint64_t sub_100640430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x526873696C627570 && a2 == 0xED00006E6F736165)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1006404C0(uint64_t a1)
{
  v2 = sub_100646724();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006404FC(uint64_t a1)
{
  v2 = sub_100646724();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100640538@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A64E8, &qword_1013B4110);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100646724();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100007BAC(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1006406B4(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016A64F8, &qword_1013B4118);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_100646724();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006407F0()
{
  v1 = 0x64496572616873;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43746E65696C63;
  }
}

uint64_t sub_100640850@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100646AC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100640878(uint64_t a1)
{
  v2 = sub_100646528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006408B4(uint64_t a1)
{
  v2 = sub_100646528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100640920(uint64_t a1)
{
  v2 = sub_1006464D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10064095C(uint64_t a1)
{
  v2 = sub_1006464D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100640998@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A64A8, &qword_1013B40F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1006464D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100007BAC(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_100640AFC(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016A6500, &qword_1013B4120);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_1006464D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100640C34(uint64_t a1, char a2, char a3)
{
  *(v4 + 145) = a3;
  *(v4 + 144) = a2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  v5 = type metadata accessor for UUID();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100640D08, v3, 0);
}

uint64_t sub_100640D08()
{
  v40 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 96);
  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (v9)
  {
    v38 = v6;
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39[0] = v37;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100646624(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, v39);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Deleting share for id: %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v37);

    v6 = v38;
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 88);
  v19 = *(v0 + 144);
  v20 = *(v0 + 145);
  v6(v18, *(v0 + 56), *(v0 + 72));
  v21 = sub_100645CD8(v18, v19, v20);
  *(v0 + 104) = v21;
  *(v0 + 112) = v22;
  *(v0 + 120) = v23;
  v24 = v21;
  v25 = v22;
  v26 = v23;

  sub_100017D5C(v25, v26);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  sub_100016590(v25, v26);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39[0] = v30;
    *v29 = 136315138;
    v31 = sub_10064140C(v25, v26);
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v31 = 7104878;
      v33 = 0xE300000000000000;
    }

    v34 = sub_1000136BC(v31, v33, v39);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "KeyDropDeleteRequest: %s", v29, 0xCu);
    sub_100007BAC(v30);
  }

  *(v0 + 40) = &type metadata for KeyDropDeleteRequest;
  *(v0 + 48) = sub_1006460C4();
  *(v0 + 16) = v24;
  *(v0 + 24) = v25;
  *(v0 + 32) = v26;

  sub_100017D5C(v25, v26);
  v35 = swift_task_alloc();
  *(v0 + 128) = v35;
  *v35 = v0;
  v35[1] = sub_1006411A4;

  return sub_100642D20(v0 + 16, 3);
}

uint64_t sub_1006411A4(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = sub_10064137C;
  }

  else
  {
    v7 = *(v4 + 64);
    *(v4 + 146) = a1 & 1;
    sub_100007BAC((v4 + 16));
    v6 = sub_1006412E8;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1006412E8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  sub_100016590(v1, v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 146);

  return v3(v4);
}

uint64_t sub_10064137C()
{
  v1 = v0[14];
  v2 = v0[15];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10064140C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (!v4)
  {
    v5 = result;
    if (qword_1016954C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177CDD0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Empty description for request body.", v9, 2u);
    }

    return v5;
  }

  return result;
}

uint64_t sub_100641568(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 176) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 96) = v5;
  *(v4 + 104) = *(v5 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100641648, v3, 0);
}

uint64_t sub_100641648()
{
  v1 = *(*(v0 + 88) + 112);
  if (v1 && (v2 = v1()) != 0)
  {
    *(v0 + 136) = v2;
    v3 = *(v0 + 80);
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1000035D0(v3, v4);
    *(v0 + 40) = v4;
    *(v0 + 48) = *(v5 + 8);
    v7 = sub_1000280DC((v0 + 16));
    (*(*(v4 - 8) + 16))(v7, v6, v4);

    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_1006417E4;
    v9 = *(v0 + 128);

    return sub_1004E682C(v9, v0 + 16);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = sub_100641ED8;
    v12 = *(v0 + 176);

    return sub_1012588A0(v12);
  }
}

uint64_t sub_1006417E4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);

    v4 = sub_100646BE4;
  }

  else
  {
    v3 = *(v2 + 88);

    sub_100007BAC((v2 + 16));
    v4 = sub_100641918;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100641918()
{
  v54 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v51 = v6;
    v13 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v53);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v50);

    v6 = v51;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(v0[14], v0[16], v0[12]);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[14];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000023, 0x800000010135BB90, v53);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v52 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v33 = v0[14];
    v34 = v0[12];

    v0[7] = v31;
    v0[8] = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = v34;
    v18 = v52;
    v52(v33, v38);
    v39 = sub_1000136BC(v35, v37, v53);

    *(v25 + 14) = v39;
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[12];

    v18(v24, v32);
  }

  v40 = v0[19];
  sub_101259EC4(v0[16]);
  if (v40)
  {
    v41 = v0[16];
    v42 = v0[12];

    v18(v41, v42);
  }

  else
  {
    type metadata accessor for KeyDropDownloadKeysMetadataResponse(0);
    v43 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v45 = v44;
    sub_100646624(&qword_1016A63D8, type metadata accessor for KeyDropDownloadKeysMetadataResponse, &unk_10140AC8C);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v46 = v0[16];
    v49 = v0[12];

    sub_100016590(v43, v45);
    v18(v46, v49);
  }

  v47 = v0[1];

  return v47();
}

uint64_t sub_100641ED8(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_100641FF0, v2, 0);
}

uint64_t sub_100641FF0()
{
  v0[17] = v0[21];
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1006417E4;
  v7 = v0[16];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_1006420FC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 176) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 96) = v5;
  *(v4 + 104) = *(v5 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1006421DC, v3, 0);
}

uint64_t sub_1006421DC()
{
  v1 = *(*(v0 + 88) + 112);
  if (v1 && (v2 = v1()) != 0)
  {
    *(v0 + 136) = v2;
    v3 = *(v0 + 80);
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1000035D0(v3, v4);
    *(v0 + 40) = v4;
    *(v0 + 48) = *(v5 + 8);
    v7 = sub_1000280DC((v0 + 16));
    (*(*(v4 - 8) + 16))(v7, v6, v4);

    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_100642378;
    v9 = *(v0 + 128);

    return sub_1004E682C(v9, v0 + 16);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = sub_100642AFC;
    v12 = *(v0 + 176);

    return sub_1012588A0(v12);
  }
}

uint64_t sub_100642378()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);

    v4 = sub_100642A6C;
  }

  else
  {
    v3 = *(v2 + 88);

    sub_100007BAC((v2 + 16));
    v4 = sub_1006424AC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006424AC()
{
  v54 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v51 = v6;
    v13 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v53);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v50);

    v6 = v51;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(v0[14], v0[16], v0[12]);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[14];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010135BB70, v53);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v52 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v33 = v0[14];
    v34 = v0[12];

    v0[7] = v31;
    v0[8] = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = v34;
    v18 = v52;
    v52(v33, v38);
    v39 = sub_1000136BC(v35, v37, v53);

    *(v25 + 14) = v39;
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[12];

    v18(v24, v32);
  }

  v40 = v0[19];
  sub_101259EC4(v0[16]);
  if (v40)
  {
    v41 = v0[16];
    v42 = v0[12];

    v18(v41, v42);
  }

  else
  {
    type metadata accessor for KeyDropDownloadResponse(0);
    v43 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v45 = v44;
    sub_100646624(&qword_1016A63D0, type metadata accessor for KeyDropDownloadResponse, &unk_10140ACD0);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v46 = v0[16];
    v49 = v0[12];

    sub_100016590(v43, v45);
    v18(v46, v49);
  }

  v47 = v0[1];

  return v47();
}

uint64_t sub_100642A6C()
{

  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100642AFC(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_100642C14, v2, 0);
}

uint64_t sub_100642C14()
{
  v0[17] = v0[21];
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_100642378;
  v7 = v0[16];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_100642D20(uint64_t a1, char a2)
{
  *(v3 + 169) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100642DFC, v2, 0);
}

uint64_t sub_100642DFC()
{
  v1 = *(*(v0 + 80) + 112);
  if (v1 && (v2 = v1()) != 0)
  {
    *(v0 + 128) = v2;
    v3 = *(v0 + 72);
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1000035D0(v3, v4);
    *(v0 + 40) = v4;
    *(v0 + 48) = *(v5 + 8);
    v7 = sub_1000280DC((v0 + 16));
    (*(*(v4 - 8) + 16))(v7, v6, v4);

    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_100642F98;
    v9 = *(v0 + 120);

    return sub_1004E682C(v9, v0 + 16);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_1006436F0;
    v12 = *(v0 + 169);

    return sub_1012588A0(v12);
  }
}

uint64_t sub_100642F98()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);

    v4 = sub_10064365C;
  }

  else
  {
    v3 = *(v2 + 80);

    sub_100007BAC((v2 + 16));
    v4 = sub_1006430CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006430CC()
{
  v56 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 112);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  if (v9)
  {
    v53 = v6;
    v13 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55[0] = v52;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v55);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v52);

    v6 = v53;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(*(v0 + 104), *(v0 + 120), *(v0 + 88));
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 104);
  if (v23)
  {
    v25 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000015, 0x80000001013B3D30, v55);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v54 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v33 = *(v0 + 104);
    v34 = *(v0 + 88);

    *(v0 + 56) = v31;
    *(v0 + 64) = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = v34;
    v18 = v54;
    v54(v33, v38);
    v39 = sub_1000136BC(v35, v37, v55);

    *(v25 + 14) = v39;
    swift_arrayDestroy();
  }

  else
  {
    v32 = *(v0 + 88);

    v18(v24, v32);
  }

  v40 = *(v0 + 144);
  sub_101259EC4(*(v0 + 120));
  if (v40)
  {
    v41 = *(v0 + 120);
    v42 = *(v0 + 88);

    v18(v41, v42);

    v47 = *(v0 + 8);
    v48 = 0;
  }

  else
  {
    v43 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v45 = v44;
    sub_100646118();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v46 = *(v0 + 120);
    v50 = *(v0 + 88);

    sub_100016590(v43, v45);
    v18(v46, v50);
    v51 = *(v0 + 168);

    v47 = *(v0 + 8);
    v48 = v51;
  }

  return v47(v48);
}

uint64_t sub_10064365C()
{

  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1006436F0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_100643808, v2, 0);
}

uint64_t sub_100643808()
{
  v0[16] = v0[20];
  v1 = v0[9];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100642F98;
  v7 = v0[15];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_100643914(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 224) = a3;
  *(v4 + 120) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1006439F4, v3, 0);
}

uint64_t sub_1006439F4()
{
  v1 = *(*(v0 + 136) + 112);
  if (v1 && (v2 = v1()) != 0)
  {
    *(v0 + 184) = v2;
    v3 = *(v0 + 128);
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1000035D0(v3, v4);
    *(v0 + 88) = v4;
    *(v0 + 96) = *(v5 + 8);
    v7 = sub_1000280DC((v0 + 64));
    (*(*(v4 - 8) + 16))(v7, v6, v4);

    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_100643B90;
    v9 = *(v0 + 176);

    return sub_1004E682C(v9, v0 + 64);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_1006442F4;
    v12 = *(v0 + 224);

    return sub_1012588A0(v12);
  }
}

uint64_t sub_100643B90()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);

    v4 = sub_100644264;
  }

  else
  {
    v3 = *(v2 + 136);

    sub_100007BAC((v2 + 64));
    v4 = sub_100643CC4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100643CC4()
{
  v57 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 168);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  if (v9)
  {
    v52 = v6;
    v13 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v56[0] = v51;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v50 = v8;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, v56);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v50, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v51);

    v6 = v52;
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v6(*(v0 + 160), *(v0 + 176), *(v0 + 144));
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 160);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v23 = 136446466;
    *(v23 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x800000010135BC10, v56);
    *(v23 + 12) = 2082;
    v24 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v53 = v17;
    if (*(v24 + 16) && (v25 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v26 & 1) != 0))
    {
      v27 = (*(v24 + 56) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    v31 = *(v0 + 160);
    v32 = *(v0 + 144);

    *(v0 + 104) = v29;
    *(v0 + 112) = v28;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    v17 = v53;
    v53(v31, v32);
    v36 = sub_1000136BC(v33, v35, v56);

    *(v23 + 14) = v36;
    swift_arrayDestroy();
  }

  else
  {
    v30 = *(v0 + 144);

    v17(v22, v30);
  }

  v37 = *(v0 + 200);
  sub_101259EC4(*(v0 + 176));
  if (v37)
  {
    v38 = *(v0 + 176);
    v39 = *(v0 + 144);

    v17(v38, v39);
  }

  else
  {
    v40 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v42 = v41;
    sub_100646268();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v43 = *(v0 + 176);
    v46 = *(v0 + 144);
    v47 = *(v0 + 120);

    sub_100016590(v40, v42);
    v17(v43, v46);
    v48 = *(v0 + 48);
    v49 = *(v0 + 56);
    v54 = *(v0 + 32);
    v55 = *(v0 + 16);

    *v47 = v55;
    *(v47 + 16) = v54;
    *(v47 + 32) = v48;
    *(v47 + 40) = v49;
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_100644264()
{

  sub_100007BAC((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006442F4(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_10064440C, v2, 0);
}

uint64_t sub_10064440C()
{
  v0[23] = v0[27];
  v1 = v0[16];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[11] = v2;
  v0[12] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 8);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_100643B90;
  v7 = v0[22];

  return sub_1004E682C(v7, (v0 + 8));
}

uint64_t sub_100644518(uint64_t a1, char a2)
{
  *(v3 + 200) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1006445F4, v2, 0);
}

uint64_t sub_1006445F4()
{
  v1 = *(*(v0 + 112) + 112);
  if (v1 && (v2 = v1()) != 0)
  {
    *(v0 + 160) = v2;
    v3 = *(v0 + 104);
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1000035D0(v3, v4);
    *(v0 + 40) = v4;
    *(v0 + 48) = *(v5 + 8);
    v7 = sub_1000280DC((v0 + 16));
    (*(*(v4 - 8) + 16))(v7, v6, v4);

    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_100644790;
    v9 = *(v0 + 152);

    return sub_1004E682C(v9, v0 + 16);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_100644F20;
    v12 = *(v0 + 200);

    return sub_1012588A0(v12);
  }
}

uint64_t sub_100644790()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);

    v4 = sub_100644E90;
  }

  else
  {
    v3 = *(v2 + 112);

    sub_100007BAC((v2 + 16));
    v4 = sub_1006448C4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006448C4()
{
  v59 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  if (v9)
  {
    v56 = v6;
    v13 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58[0] = v55;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v58);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v55);

    v6 = v56;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(v0[17], v0[19], v0[15]);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[17];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010135BBC0, v58);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v57 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v33 = v0[17];
    v34 = v0[15];

    v0[11] = v31;
    v0[12] = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = v34;
    v18 = v57;
    v57(v33, v38);
    v39 = sub_1000136BC(v35, v37, v58);

    *(v25 + 14) = v39;
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[15];

    v18(v24, v32);
  }

  v40 = v0[22];
  sub_101259EC4(v0[19]);
  if (v40)
  {
    v41 = v0[19];
    v42 = v0[15];

    v18(v41, v42);

    v47 = v0[1];

    return v47();
  }

  else
  {
    v43 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v45 = v44;
    sub_100646214();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v46 = v0[19];
    v49 = v0[15];

    sub_100016590(v43, v45);
    v18(v46, v49);
    v50 = v0[7];
    v51 = v0[8];
    v52 = v0[9];
    v53 = v0[10];

    v54 = v0[1];

    return v54(v50, v51, v52, v53);
  }
}

uint64_t sub_100644E90()
{

  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100644F20(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100645038, v2, 0);
}

uint64_t sub_100645038()
{
  v0[20] = v0[24];
  v1 = v0[13];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_100644790;
  v7 = v0[19];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_100645144(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 176) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 96) = v5;
  *(v4 + 104) = *(v5 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100645224, v3, 0);
}

uint64_t sub_100645224()
{
  v1 = *(*(v0 + 88) + 112);
  if (v1 && (v2 = v1()) != 0)
  {
    *(v0 + 136) = v2;
    v3 = *(v0 + 80);
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1000035D0(v3, v4);
    *(v0 + 40) = v4;
    *(v0 + 48) = *(v5 + 8);
    v7 = sub_1000280DC((v0 + 16));
    (*(*(v4 - 8) + 16))(v7, v6, v4);

    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_1006453C0;
    v9 = *(v0 + 128);

    return sub_1004E682C(v9, v0 + 16);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = sub_100645AB4;
    v12 = *(v0 + 176);

    return sub_1012588A0(v12);
  }
}

uint64_t sub_1006453C0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);

    v4 = sub_100646BE4;
  }

  else
  {
    v3 = *(v2 + 88);

    sub_100007BAC((v2 + 16));
    v4 = sub_1006454F4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006454F4()
{
  v54 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v51 = v6;
    v13 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v53);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v50);

    v6 = v51;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(v0[14], v0[16], v0[12]);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[14];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000024, 0x800000010135BBE0, v53);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v52 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v33 = v0[14];
    v34 = v0[12];

    v0[7] = v31;
    v0[8] = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = v34;
    v18 = v52;
    v52(v33, v38);
    v39 = sub_1000136BC(v35, v37, v53);

    *(v25 + 14) = v39;
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[12];

    v18(v24, v32);
  }

  v40 = v0[19];
  sub_101259EC4(v0[16]);
  if (v40)
  {
    v41 = v0[16];
    v42 = v0[12];

    v18(v41, v42);
  }

  else
  {
    type metadata accessor for KeyDropImportedLocationFetchResponse(0);
    v43 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v45 = v44;
    sub_100646624(&qword_1016A63E8, type metadata accessor for KeyDropImportedLocationFetchResponse, &unk_10140640C);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v46 = v0[16];
    v49 = v0[12];

    sub_100016590(v43, v45);
    v18(v46, v49);
  }

  v47 = v0[1];

  return v47();
}

uint64_t sub_100645AB4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_100645BCC, v2, 0);
}

uint64_t sub_100645BCC()
{
  v0[17] = v0[21];
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1006453C0;
  v7 = v0[16];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_100645CD8(uint64_t a1, unsigned __int8 a2, char a3)
{
  v29 = a1;
  v5 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent(0);
  __chkstk_darwin(v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10063FB48();
  v13 = v12;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v11 = sub_100281AE0;
  v11[1] = 0;
  (*(v9 + 104))(v11, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v8);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v30 = v13;
  if (a2 == 4)
  {

LABEL_4:
    v15 = *&aUserActownerRe[8 * a3];
    v16 = *&aUserActownerRe[8 * a3 + 32];
    goto LABEL_6;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_4;
  }

  v15 = 0;
  v16 = 0;
LABEL_6:
  v17 = *(v5 + 20);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = v7 + v17;
  v21 = v29;
  (*(v19 + 16))(v20, v29, v18);
  *v7 = v15;
  v7[1] = v16;
  *(v7 + *(v5 + 24)) = a2;
  sub_100646624(&qword_1016A63C8, type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent, &unk_1013B4088);
  v22 = v28;
  v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v22)
  {

    (*(v19 + 8))(v21, v18);
    sub_1006461B8(v7);
  }

  else
  {
    v25 = v23;
    v26 = v24;

    (*(v19 + 8))(v21, v18);
    sub_1006461B8(v7);
    v21 = v30;

    sub_100017D5C(v25, v26);

    sub_100016590(v25, v26);
  }

  return v21;
}

unint64_t sub_1006460C4()
{
  result = qword_1016A63B8;
  if (!qword_1016A63B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A63B8);
  }

  return result;
}

unint64_t sub_100646118()
{
  result = qword_1016A63C0;
  if (!qword_1016A63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A63C0);
  }

  return result;
}

uint64_t type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent(uint64_t a1)
{
  result = qword_1016A6450;
  if (!qword_1016A6450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006461B8(uint64_t a1)
{
  v2 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100646214()
{
  result = qword_1016A63E0;
  if (!qword_1016A63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A63E0);
  }

  return result;
}

unint64_t sub_100646268()
{
  result = qword_1016A63F0;
  if (!qword_1016A63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A63F0);
  }

  return result;
}

void sub_1006462F4(uint64_t a1)
{
  sub_100646380();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100646380()
{
  if (!qword_1016A6460)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A6460);
    }
  }
}

unint64_t sub_100646404()
{
  result = qword_1016A6498;
  if (!qword_1016A6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6498);
  }

  return result;
}

unint64_t sub_100646458(uint64_t a1)
{
  result = sub_100646480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100646480()
{
  result = qword_1016A64A0;
  if (!qword_1016A64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64A0);
  }

  return result;
}

unint64_t sub_1006464D4()
{
  result = qword_1016A64B0;
  if (!qword_1016A64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64B0);
  }

  return result;
}

unint64_t sub_100646528()
{
  result = qword_1016A64C0;
  if (!qword_1016A64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64C0);
  }

  return result;
}

unint64_t sub_10064657C()
{
  result = qword_1016A64C8;
  if (!qword_1016A64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64C8);
  }

  return result;
}

unint64_t sub_1006465D0()
{
  result = qword_1016A64D8;
  if (!qword_1016A64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64D8);
  }

  return result;
}

uint64_t sub_100646624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10064666C()
{
  result = qword_1016A64E0;
  if (!qword_1016A64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64E0);
  }

  return result;
}

uint64_t sub_1006466C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100646724()
{
  result = qword_1016A64F0;
  if (!qword_1016A64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64F0);
  }

  return result;
}

unint64_t sub_1006467AC()
{
  result = qword_1016A6508;
  if (!qword_1016A6508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6508);
  }

  return result;
}

unint64_t sub_100646804()
{
  result = qword_1016A6510;
  if (!qword_1016A6510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6510);
  }

  return result;
}

unint64_t sub_10064685C()
{
  result = qword_1016A6518;
  if (!qword_1016A6518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6518);
  }

  return result;
}

unint64_t sub_1006468B4()
{
  result = qword_1016A6520;
  if (!qword_1016A6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6520);
  }

  return result;
}

unint64_t sub_10064690C()
{
  result = qword_1016A6528;
  if (!qword_1016A6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6528);
  }

  return result;
}

unint64_t sub_100646964()
{
  result = qword_1016A6530;
  if (!qword_1016A6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6530);
  }

  return result;
}

unint64_t sub_1006469BC()
{
  result = qword_1016A6538;
  if (!qword_1016A6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6538);
  }

  return result;
}

unint64_t sub_100646A14()
{
  result = qword_1016A6540;
  if (!qword_1016A6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6540);
  }

  return result;
}

unint64_t sub_100646A6C()
{
  result = qword_1016A6548;
  if (!qword_1016A6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6548);
  }

  return result;
}

uint64_t sub_100646AC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496572616873 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int sub_100646C10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013B4860[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100646C98(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013B4860[v2]);
  return Hasher._finalize()();
}

uint64_t *sub_100646CE4@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 200)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 409)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100646D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100646D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100646E40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100646F2C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100647004(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1006470EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10064734C(*a1);
  *a2 = result;
  return result;
}

void sub_10064711C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x5364656573;
  v5 = 0x6F43737574617473;
  v6 = 0xE500000000000000;
  v7 = 0x7374726563;
  if (v2 != 3)
  {
    v7 = 0x704164656B73616DLL;
    v6 = 0xED00006449656C70;
  }

  if (v2 == 2)
  {
    v6 = 0xEA00000000006564;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6953726576726573;
    v3 = 0xEA00000000006E67;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1006471C4()
{
  v1 = *v0;
  v2 = 0x5364656573;
  v3 = 0x6F43737574617473;
  v4 = 0x7374726563;
  if (v1 != 3)
  {
    v4 = 0x704164656B73616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6953726576726573;
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

unint64_t sub_100647268@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10064734C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100647290(uint64_t a1)
{
  v2 = sub_1006476A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006472CC(uint64_t a1)
{
  v2 = sub_1006476A8();

  return CodingKey.debugDescription.getter(a1, v2);
}