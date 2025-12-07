uint64_t sub_100002128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return _swift_task_switch(sub_10000214C, 0, 0);
}

uint64_t sub_10000214C()
{
  sub_1000D98D0();
  v1 = sub_1000DA100();
  v0[9] = sub_1000DA160();

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10000222C;
  v3 = v0[5];

  return Promise.resolveAsync()(v3);
}

uint64_t sub_10000222C()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100002368, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100002368()
{
  v1 = v0;
  v2 = v0[11];

  sub_10000299C();
  v3 = sub_1000DBE60();
  v4 = sub_1000DBDB0();
  sub_1000029E8(0);
  v5 = swift_allocObject();
  v0[2] = 0;
  *(v5 + 16) = xmmword_1000DDD30;
  v0[3] = 0xE000000000000000;
  v0[4] = v2;
  sub_100002A50(0, &qword_1001145F0, &protocol descriptor for Error);
  sub_1000DC0C0();
  v6 = v0[2];
  v7 = v1[3];
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100002AAC();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_1000DA320("failed to refresh app configuration with error: %{public}@", 58, 2, &_mh_execute_header, v3, v4, v5);

  sub_1000D98B0();

  v8 = v1[1];

  return v8();
}

uint64_t variable initialization expression of BilingualFeedManager._isBilingualFeedEnabled()
{
  sub_1000D9CE0();
  sub_100002540();
  swift_allocObject();
  return sub_1000D9DD0();
}

void sub_100002540()
{
  if (!qword_1001141F8)
  {
    v0 = sub_1000D9DC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001141F8);
    }
  }
}

uint64_t sub_1000025A4(uint64_t a1, id *a2)
{
  result = sub_1000DB930();
  *a2 = 0;
  return result;
}

uint64_t sub_100002620(uint64_t a1, id *a2)
{
  v3 = sub_1000DB940();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000026A4@<X0>(uint64_t *a1@<X8>)
{
  sub_1000DB950();
  v2 = sub_1000DB910();

  *a1 = v2;
  return result;
}

uint64_t sub_1000026F0(uint64_t a1, uint64_t a2)
{
  result = sub_1000D9E60();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002744(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000D9E70();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1000027D0()
{
  sub_1000DB950();
  v0 = sub_1000DBA20();

  return v0;
}

uint64_t sub_10000280C(uint64_t a1)
{
  sub_1000DB950();
  sub_1000DB9F0();
}

Swift::Int sub_100002860(uint64_t a1)
{
  sub_1000DB950();
  sub_1000DC420();
  sub_1000DB9F0();
  v1 = sub_1000DC460();

  return v1;
}

uint64_t sub_1000028D8(void *a1, uint64_t *a2)
{
  v2 = sub_1000DB950();
  v4 = v3;
  if (v2 == sub_1000DB950() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000DC360();
  }

  return v7 & 1;
}

unint64_t sub_10000299C()
{
  result = qword_1001145D8;
  if (!qword_1001145D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001145D8);
  }

  return result;
}

void sub_1000029E8(uint64_t a1)
{
  if (!qword_1001145E0)
  {
    sub_100002A50(255, &qword_1001145E8, &protocol descriptor for CVarArg);
    v1 = sub_1000DC330();
    if (!v2)
    {
      atomic_store(v1, &qword_1001145E0);
    }
  }
}

uint64_t sub_100002A50(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100002AAC()
{
  result = qword_1001145F8;
  if (!qword_1001145F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001145F8);
  }

  return result;
}

uint64_t sub_100002B00(uint64_t a1)
{
  sub_100002D4C(&qword_100114688, type metadata accessor for AttributeName, &unk_1000DE1FC);
  sub_100002D4C(&unk_100114690, type metadata accessor for AttributeName, &unk_1000DDEE4);

  return sub_1000DC160();
}

uint64_t sub_100002BC0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000DB910();

  *a2 = v3;
  return result;
}

uint64_t sub_100002C08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DB950();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_100002C70(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002D94(uint64_t a1)
{
  sub_100002D4C(&unk_100115DF0, type metadata accessor for TraitKey, &unk_1000DE240);
  sub_100002D4C(&qword_100114680, type metadata accessor for TraitKey, &unk_1000DDFF8);

  return sub_1000DC160();
}

void *sub_100002EE0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_100002EF0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100002EFC(uint64_t a1)
{
  sub_100002D4C(&qword_100114660, type metadata accessor for Weight, &unk_1000DE16C);
  sub_100002D4C(&qword_100114668, type metadata accessor for Weight, &unk_1000DE10C);
  sub_10000319C();
  return sub_1000DC160();
}

void sub_10000305C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1000DC450(*&v1);
}

uint64_t sub_100003098(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

unint64_t sub_10000319C()
{
  result = qword_100114670;
  if (!qword_100114670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114670);
  }

  return result;
}

uint64_t sub_100003218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_1000D96F0();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v7 = sub_1000D9B40();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v8 = sub_1000D9EB0();
  v5[34] = v8;
  v5[35] = *(v8 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v9 = sub_1000D94D0();
  v5[38] = v9;
  v5[39] = *(v9 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v10 = sub_1000D95E0();
  v5[43] = v10;
  v5[44] = *(v10 - 8);
  v5[45] = swift_task_alloc();
  v11 = sub_1000D9CC0();
  v5[46] = v11;
  v5[47] = *(v11 - 8);
  v5[48] = swift_task_alloc();
  sub_1000071E0(0, &qword_100114B40, &type metadata accessor for Watchlist, &type metadata accessor for Optional);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return _swift_task_switch(sub_100003538, 0, 0);
}

uint64_t sub_100003538()
{
  v10 = v0;
  v0[51] = OBJC_IVAR____TtC12StocksWidget25WatchlistViewModelService_logger;
  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[26];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 134349314;
    *(v4 + 4) = v3;
    *(v4 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v6 = sub_1000848C8(v0[19], v0[20], &v9);

    *(v4 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "will fetch watchlist with max count: %{public}ld, id=%{public}s", v4, 0x16u);
    sub_100006D0C(v5);
  }

  sub_100006C7C((v0[27] + 16), *(v0[27] + 40));
  v0[52] = sub_1000D9750();
  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_10000373C;

  return Promise.resolveAsync()(v0 + 21);
}

uint64_t sub_10000373C()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_100004FB0;
  }

  else
  {

    v2 = sub_100003864;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003864()
{
  sub_100006C7C((v0[27] + 16), *(v0[27] + 40));
  v0[55] = sub_1000D9740();
  v1 = swift_task_alloc();
  v0[56] = v1;
  *v1 = v0;
  v1[1] = sub_100003940;
  v2 = v0[50];

  return Promise.resolveAsync()(v2);
}

uint64_t sub_100003940()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_10000524C;
  }

  else
  {

    v2 = sub_100003A5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003A5C()
{
  v22 = v0;
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[47];
  sub_100006EA4(v0[50], v1, &qword_100114B40, &type metadata accessor for Watchlist);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100006D58(v0[49], &qword_100114B40, &type metadata accessor for Watchlist);

    v4 = sub_1000DA350();
    v5 = sub_1000DBDD0();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[24];
      v6 = v0[25];
      v8 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000848C8(v7, v6, &v21);
      *(v8 + 12) = 2082;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      v9 = v0[50];
      sub_1000DC4C0();
      v10 = sub_1000848C8(v0[9], v0[10], &v21);

      *(v8 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "failed fetch watchlist with not found identifier: %{public}s, id=%{public}s", v8, 0x16u);
      swift_arrayDestroy();

      v11 = v9;
    }

    else
    {
      v16 = v0[50];

      v11 = v16;
    }

    sub_100006D58(v11, &qword_100114B40, &type metadata accessor for Watchlist);
    v17 = v0[23];
    v18 = type metadata accessor for WidgetWatchlist(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v12 = v0[27];
    (*(v0[47] + 32))(v0[48], v0[49], v0[46]);
    v13 = v12[10];
    v14 = v12[11];
    sub_100006C7C(v12 + 7, v13);
    v15 = swift_task_alloc();
    v0[58] = v15;
    *v15 = v0;
    v15[1] = sub_100003E5C;

    return dispatch thunk of WatchlistDeprecationServiceType.deprecateStocksIfNeeded()(v13, v14);
  }
}

uint64_t sub_100003E5C()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1000054E8;
  }

  else
  {
    v2 = sub_100003F70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003F70()
{
  v1 = v0[27];
  v3 = v1[20];
  v2 = v1[21];
  sub_100006C7C(v1 + 17, v3);
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_100004030;
  v5 = v0[45];

  return sub_100002128(v5, v3, v2);
}

uint64_t sub_100004030()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v4 = *(*v0 + 344);

  v5 = *(v3 + 8);
  *(v1 + 488) = v5;
  *(v1 + 496) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_100004194, 0, 0);
}

uint64_t sub_100004194()
{
  sub_100006C7C((v0[27] + 16), *(v0[27] + 40));
  v0[63] = sub_1000D9730();
  v1 = swift_task_alloc();
  v0[64] = v1;
  *v1 = v0;
  v1[1] = sub_10000426C;

  return Promise.resolveAsync()(v0 + 22);
}

uint64_t sub_10000426C()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_1000057BC;
  }

  else
  {
    v2 = sub_1000043A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000043A0()
{
  v47 = v0;
  v1 = v0;
  v2 = v0[22];
  v0[66] = v2;

  v3 = sub_1000DA350();
  v4 = sub_1000DBDD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = sub_1000DBB40();
    v8 = sub_1000848C8(v6, v7, &v46);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v9 = sub_1000848C8(v0[17], v0[18], &v46);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "did fetch stocks: %{public}s, id=%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_100006E20(v0[27] + 96, (v0 + 2));
  sub_100006C7C(v0 + 2, v0[5]);
  v10 = *(v2 + 16);
  if (v10)
  {
    v11 = v0[32];
    v46 = _swiftEmptyArrayStorage;
    sub_10007BC5C(0, v10, 0);
    v12 = v46;
    v13 = *(v11 + 16);
    v11 += 16;
    v14 = v2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v42 = *(v11 + 56);
    v43 = v13;
    v15 = (v11 - 8);
    do
    {
      v16 = v1[33];
      v17 = v1;
      v18 = v1[31];
      v43(v16, v14, v18);
      v19 = sub_1000D9B20();
      v21 = v20;
      (*v15)(v16, v18);
      v46 = v12;
      v23 = v12[2];
      v22 = v12[3];
      if (v23 >= v22 >> 1)
      {
        sub_10007BC5C((v22 > 1), v23 + 1, 1);
        v12 = v46;
      }

      v12[2] = v23 + 1;
      v24 = &v12[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
      v14 += v42;
      --v10;
      v1 = v17;
    }

    while (v10);
  }

  v25 = v1[61];
  v41 = v1;
  v26 = v1[45];
  v27 = v1[43];
  v45 = v1[37];
  v44 = v1[36];
  v38 = v1[35];
  v40 = v1[34];
  v28 = v1[27];
  sub_100006C7C((v28 + 136), *(v28 + 160));
  sub_1000D98B0();
  sub_1000D95D0();
  v30 = v29;
  v25(v26, v27);
  *v45 = v30;
  v39 = enum case for CachePolicy.maxAge(_:);
  v31 = *(v38 + 104);
  v31();
  sub_100006C7C((v28 + 136), *(v28 + 160));
  sub_1000D98B0();
  sub_1000D95B0();
  v33 = v32;
  v25(v26, v27);
  *v44 = v33;
  (v31)(v44, v39, v40);
  v41[67] = sub_1000D9890();

  v34 = *(v38 + 8);
  v34(v44, v40);
  v34(v45, v40);
  v35 = swift_task_alloc();
  v41[68] = v35;
  *v35 = v41;
  v35[1] = sub_100004848;
  v36 = v41[41];

  return Promise.resolveAsync()(v36);
}

uint64_t sub_100004848()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_100005A90;
  }

  else
  {

    sub_100006D0C((v2 + 16));
    v3 = sub_10000496C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000496C()
{
  v56 = v0;
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  (*(v3 + 32))(v1, v0[41], v4);
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_1000DA350();
  v6 = sub_1000DBDD0();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[38];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v11 = 136446466;
    sub_1000D94C0();
    sub_1000D9AA0();
    v12 = sub_1000DB850();
    v14 = v13;

    (*(v9 + 8))(v8, v10);
    v15 = sub_1000848C8(v12, v14, v55);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v16 = sub_1000848C8(v0[15], v0[16], v55);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "did fetch quotes: %{public}s, id=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = v0[29];
  v18 = v0[30];
  v19 = v0[27];
  v49 = v0[42];
  v50 = v0[28];
  v51 = v0[26];
  sub_100006C7C((v19 + 176), *(v19 + 200));
  sub_1000D9CB0();
  v20 = sub_1000D9910();

  (*(v17 + 8))(v18, v50);
  sub_10001808C(v51, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = swift_task_alloc();
  *(v27 + 16) = v49;
  *(v27 + 24) = v19;
  v28 = sub_100024678(sub_100006E84, v27, v22, v24, v26);
  swift_unknownObjectRelease();

  v29 = sub_1000DA350();
  v30 = sub_1000DBDD0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v31 = 136446466;
    type metadata accessor for WidgetStock(0);
    v32 = sub_1000DBB40();
    v34 = sub_1000848C8(v32, v33, v55);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v35 = sub_1000848C8(v0[11], v0[12], v55);

    *(v31 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "did fetch watchlist models: %{public}s, id=%{public}s", v31, 0x16u);
    swift_arrayDestroy();
  }

  v54 = v28;
  if (sub_1000D9C80())
  {
    v36 = sub_1000D9C60();
  }

  else
  {
    v36 = sub_1000D9CA0();
  }

  v38 = v37;
  v39 = v0[50];
  v41 = v0[47];
  v40 = v0[48];
  v42 = v0[46];
  v52 = v36;
  v53 = v0[42];
  v44 = v0[38];
  v43 = v0[39];
  v45 = v0[23];
  v46 = type metadata accessor for WidgetWatchlist(0);
  sub_1000D9C90();
  (*(v41 + 8))(v40, v42);
  sub_100006D58(v39, &qword_100114B40, &type metadata accessor for Watchlist);
  *v45 = v52;
  v45[1] = v38;
  v45[2] = v54;
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  (*(v43 + 8))(v53, v44);

  v47 = v0[1];

  return v47();
}

uint64_t sub_100004FB0()
{
  v11 = v0;

  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v3 = 138543618;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[7], v0[8], &v10);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed to fetch watchlist with error: %{public}@, id=%{public}s", v3, 0x16u);
    sub_100006D58(v4, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v5);
  }

  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000524C()
{
  v11 = v0;

  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v3 = 138543618;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[7], v0[8], &v10);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed to fetch watchlist with error: %{public}@, id=%{public}s", v3, 0x16u);
    sub_100006D58(v4, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v5);
  }

  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000054E8()
{
  v12 = v0;
  v1 = v0[50];
  (*(v0[47] + 8))(v0[48], v0[46]);
  sub_100006D58(v1, &qword_100114B40, &type metadata accessor for Watchlist);
  swift_errorRetain();
  v2 = sub_1000DA350();
  v3 = sub_1000DBDB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v4 = 138543618;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    *(v4 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v8 = sub_1000848C8(v0[7], v0[8], &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to fetch watchlist with error: %{public}@, id=%{public}s", v4, 0x16u);
    sub_100006D58(v5, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v6);
  }

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000057BC()
{
  v12 = v0;
  v1 = v0[50];
  (*(v0[47] + 8))(v0[48], v0[46]);
  sub_100006D58(v1, &qword_100114B40, &type metadata accessor for Watchlist);
  swift_errorRetain();
  v2 = sub_1000DA350();
  v3 = sub_1000DBDB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v4 = 138543618;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    *(v4 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v8 = sub_1000848C8(v0[7], v0[8], &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to fetch watchlist with error: %{public}@, id=%{public}s", v4, 0x16u);
    sub_100006D58(v5, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v6);
  }

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100005A90()
{
  v47 = v0;

  sub_100006D0C(v0 + 2);
  sub_1000D94B0();
  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46[0] = v5;
    *v3 = 138543618;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[13], v0[14], v46);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed to fetch quotes with error: %{public}@, id=%{public}s", v3, 0x16u);
    sub_100006D58(v4, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v5);
  }

  else
  {
  }

  v8 = v0[42];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[27];
  v41 = v0[28];
  v44 = v0[26];
  sub_100006C7C((v11 + 176), *(v11 + 200));
  sub_1000D9CB0();
  v12 = sub_1000D9910();

  (*(v10 + 8))(v9, v41);
  sub_10001808C(v44, v12);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = swift_task_alloc();
  *(v19 + 16) = v8;
  *(v19 + 24) = v11;
  v20 = sub_100024678(sub_100006E84, v19, v14, v16, v18);
  swift_unknownObjectRelease();

  v21 = sub_1000DA350();
  v22 = sub_1000DBDD0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v23 = 136446466;
    type metadata accessor for WidgetStock(0);
    v24 = sub_1000DBB40();
    v26 = sub_1000848C8(v24, v25, v46);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v27 = sub_1000848C8(v0[11], v0[12], v46);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "did fetch watchlist models: %{public}s, id=%{public}s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v45 = v20;
  if (sub_1000D9C80())
  {
    v28 = sub_1000D9C60();
  }

  else
  {
    v28 = sub_1000D9CA0();
  }

  v30 = v29;
  v31 = v0[50];
  v33 = v0[47];
  v32 = v0[48];
  v34 = v0[46];
  v42 = v28;
  v43 = v0[42];
  v36 = v0[38];
  v35 = v0[39];
  v37 = v0[23];
  v38 = type metadata accessor for WidgetWatchlist(0);
  sub_1000D9C90();
  (*(v33 + 8))(v32, v34);
  sub_100006D58(v31, &qword_100114B40, &type metadata accessor for Watchlist);
  *v37 = v42;
  v37[1] = v30;
  v37[2] = v45;
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  (*(v35 + 8))(v43, v36);

  v39 = v0[1];

  return v39();
}

uint64_t sub_100006084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v87 = a3;
  v80 = a2;
  v4 = sub_1000D9AA0();
  v92 = *(v4 - 8);
  __chkstk_darwin(v4);
  v82 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v73 - v7;
  sub_1000071E0(0, &qword_100114B58, &type metadata accessor for WidgetQuote, &type metadata accessor for Optional);
  __chkstk_darwin(v8 - 8);
  v86 = &v73 - v9;
  v10 = sub_1000DA370();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1000D9B40();
  v88 = *(v85 - 8);
  __chkstk_darwin(v85);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D9A50();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v74 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = &v73 - v17;
  sub_1000071E0(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  __chkstk_darwin(v18 - 8);
  v90 = &v73 - v19;
  sub_1000071E0(0, &qword_100114B68, &type metadata accessor for Chart, &type metadata accessor for Optional);
  __chkstk_darwin(v20 - 8);
  v83 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v91 = &v73 - v23;
  sub_1000071E0(0, &qword_100114B70, &type metadata accessor for Quote, &type metadata accessor for Optional);
  __chkstk_darwin(v24 - 8);
  v84 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v73 = &v73 - v27;
  __chkstk_darwin(v28);
  v30 = &v73 - v29;
  v31 = sub_1000D94C0();
  v93 = a1;
  v32 = sub_1000D9B20();
  v34 = *(v31 + 16);
  v89 = v30;
  if (v34)
  {
    v35 = v14;
    v36 = v13;
    v37 = v92;
    v38 = sub_100033210(v32, v33);
    v40 = v39;

    if (v40)
    {
      v41 = *(v31 + 56) + *(v37 + 72) * v38;
      v42 = v89;
      v43 = v4;
      (*(v37 + 16))(v89, v41, v4);

      (*(v37 + 56))(v42, 0, 1, v4);
    }

    else
    {

      v42 = v89;
      v43 = v4;
      (*(v37 + 56))(v89, 1, 1, v4);
    }

    v13 = v36;
    v14 = v35;
    v30 = v42;
  }

  else
  {

    (*(v92 + 56))(v30, 1, 1, v4);
    v43 = v4;
  }

  v44 = sub_1000D94A0();
  v45 = sub_1000D9B20();
  if (*(v44 + 16))
  {
    v47 = v43;
    v48 = sub_100033210(v45, v46);
    v50 = v49;

    if (v50)
    {
      (*(v14 + 16))(v91, *(v44 + 56) + *(v14 + 72) * v48, v13);

      v51 = 0;
    }

    else
    {

      v51 = 1;
    }

    v43 = v47;
    v30 = v89;
  }

  else
  {

    v51 = 1;
  }

  v52 = v91;
  (*(v14 + 56))(v91, v51, 1, v13);
  v53 = v52;
  v54 = v83;
  sub_100006EA4(v53, v83, &qword_100114B68, &type metadata accessor for Chart);
  v55 = (*(v14 + 48))(v54, 1, v13);
  v56 = v85;
  if (v55 == 1)
  {
    v57 = type metadata accessor for PreparedSparkline(0);
    (*(*(v57 - 8) + 56))(v90, 1, 1, v57);
  }

  else
  {
    v58 = v75;
    (*(v14 + 32))(v75, v54, v13);
    v59 = v74;
    (*(v14 + 16))(v74, v58, v13);
    v60 = v73;
    sub_100006EA4(v30, v73, &qword_100114B70, &type metadata accessor for Quote);
    v61 = v14;
    v62 = v76;
    (*(v88 + 16))(v76, v93, v56);
    v63 = v77;
    (*(v78 + 16))(v77, v80 + OBJC_IVAR____TtC12StocksWidget25WatchlistViewModelService_logger, v79);
    sub_10006DA88(v59, v60, v62, v63, v90, 0.02);
    (*(v61 + 8))(v58, v13);
    v30 = v89;
  }

  v64 = v86;
  v65 = v84;
  sub_100006EA4(v30, v84, &qword_100114B70, &type metadata accessor for Quote);
  if ((*(v92 + 48))(v65, 1, v43) == 1)
  {
    sub_100006D58(v91, &qword_100114B68, &type metadata accessor for Chart);
    sub_100006D58(v30, &qword_100114B70, &type metadata accessor for Quote);
    v66 = 1;
  }

  else
  {
    v67 = v92;
    v68 = v81;
    (*(v92 + 32))(v81, v65, v43);
    (*(v67 + 16))(v82, v68, v43);
    sub_1000D9420();
    (*(v67 + 8))(v68, v43);
    sub_100006D58(v91, &qword_100114B68, &type metadata accessor for Chart);
    v66 = 0;
    v65 = v30;
  }

  sub_100006D58(v65, &qword_100114B70, &type metadata accessor for Quote);
  v69 = sub_1000D9450();
  (*(*(v69 - 8) + 56))(v64, v66, 1, v69);
  v70 = v87;
  (*(v88 + 16))(v87, v93, v56);
  v71 = type metadata accessor for WidgetStock(0);
  sub_100006F24(v64, v70 + *(v71 + 20), &qword_100114B58, &type metadata accessor for WidgetQuote);
  return sub_100006F24(v90, v70 + *(v71 + 24), &qword_100114B60, type metadata accessor for PreparedSparkline);
}

uint64_t sub_100006AEC()
{
  sub_100006D0C(v0 + 2);
  sub_100006D0C(v0 + 7);
  sub_100006D0C(v0 + 12);
  sub_100006D0C(v0 + 17);
  sub_100006D0C(v0 + 22);
  v1 = OBJC_IVAR____TtC12StocksWidget25WatchlistViewModelService_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100006BD8(uint64_t a1)
{
  result = sub_1000DA370();
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

void *sub_100006C7C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006CC0()
{
  result = qword_100114B50;
  if (!qword_100114B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100114B50);
  }

  return result;
}

uint64_t sub_100006D0C(void *a1)
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

uint64_t sub_100006D58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000071E0(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006DE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006E20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006EA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000071E0(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006F24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000071E0(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000D9690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007078(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000D9690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000711C(uint64_t a1)
{
  sub_1000071E0(319, &unk_100114BE0, type metadata accessor for WidgetStock, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1000D9690();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000071E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

Swift::Int StockChartHighlightStyle.hashValue.getter(char a1)
{
  sub_1000DC420();
  sub_1000DC430(a1 & 1);
  return sub_1000DC460();
}

Swift::Int sub_1000072DC()
{
  v1 = *v0;
  sub_1000DC420();
  sub_1000DC430(v1);
  return sub_1000DC460();
}

Swift::Int sub_100007350(uint64_t a1)
{
  v2 = *v1;
  sub_1000DC420();
  sub_1000DC430(v2);
  return sub_1000DC460();
}

unint64_t sub_100007398()
{
  result = qword_100114C18;
  if (!qword_100114C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValueChangeTrend(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ValueChangeTrend(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007564()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 40))(v2, v3);
}

uint64_t sub_1000075D8(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v3[40] = *v2;
  v4 = sub_1000D9B40();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  v5 = sub_1000DA370();
  v3[44] = v5;
  v6 = *(v5 - 8);
  v3[45] = v6;
  v3[46] = *(v6 + 64);
  v3[47] = swift_task_alloc();
  v7 = sub_1000D97A0();
  v3[48] = v7;
  v3[49] = *(v7 - 8);
  v3[50] = swift_task_alloc();
  v8 = sub_1000D9780();
  v3[51] = v8;
  v3[52] = *(v8 - 8);
  v3[53] = swift_task_alloc();
  v9 = sub_1000D95E0();
  v3[54] = v9;
  v3[55] = *(v9 - 8);
  v3[56] = swift_task_alloc();
  v10 = sub_1000D9510();
  v3[57] = v10;
  v3[58] = *(v10 - 8);
  v3[59] = swift_task_alloc();
  v11 = sub_1000D9EC0();
  v3[60] = v11;
  v3[61] = *(v11 - 8);
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_1000078F4, 0, 0);
}

uint64_t sub_1000078F4()
{
  v1 = v0[38];
  sub_100006C7C((v0[39] + 72), *(v0[39] + 96));
  if ((sub_1000D9810() & 1) != 0 || v1 < 1)
  {

    v11 = v0[1];

    return v11(_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = v0[39];
    v3 = [objc_opt_self() sharedPreferences];
    [v3 resetLocale];

    v4 = *(v2 + 128);
    ObjectType = swift_getObjectType();
    v6 = sub_1000D9B20();
    v8 = v7;
    v0[63] = v7;
    v12 = (*(v4 + 16) + **(v4 + 16));
    v9 = swift_task_alloc();
    v0[64] = v9;
    *v9 = v0;
    v9[1] = sub_100007B44;

    return v12(v6, v8, ObjectType, v4);
  }
}

uint64_t sub_100007B44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v5 = sub_100008B48;
  }

  else
  {

    *(v4 + 528) = a1;
    v5 = sub_100007C74;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100007C74()
{
  v1 = *(v0 + 528);
  *(v0 + 536) = v1;
  v2 = *(v0 + 304);

  v3 = sub_1000DA190();
  v4 = *(v0 + 272) * v2;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = *(v1 + 16);

  if (__OFSUB__(v5, v6))
  {
LABEL_11:
    __break(1u);
    return Promise.resolveAsync()(v3);
  }

  v8 = *(v0 + 488);
  v7 = *(v0 + 496);
  v9 = *(v0 + 480);
  sub_100006C7C((*(v0 + 312) + 16), *(*(v0 + 312) + 40));
  (*(v8 + 104))(v7, enum case for NetworkProxy.none(_:), v9);
  *(v0 + 544) = sub_1000D9710();
  (*(v8 + 8))(v7, v9);
  v10 = swift_task_alloc();
  *(v0 + 552) = v10;
  *v10 = v0;
  v10[1] = sub_100007E48;
  v3 = v0 + 256;

  return Promise.resolveAsync()(v3);
}

uint64_t sub_100007E48()
{
  *(*v1 + 560) = v0;

  if (v0)
  {

    v2 = sub_100008EE8;
  }

  else
  {
    v2 = sub_100007F8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100007F8C()
{
  v1 = v0[39];
  v0[71] = v0[32];
  v2 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  v4 = swift_task_alloc();
  v0[72] = v4;
  *v4 = v0;
  v4[1] = sub_100008050;
  v5 = v0[59];

  return NewsUserProfileProviderType.newsUserProfile.getter(v5, ObjectType, v2);
}

uint64_t sub_100008050()
{
  *(*v1 + 584) = v0;

  if (v0)
  {

    v2 = sub_100008FAC;
  }

  else
  {
    v2 = sub_100008178;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008178()
{
  v1 = *(v0 + 568);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 456);
  v73 = *(v0 + 448);
  v77 = *(v0 + 440);
  v79 = *(v0 + 432);
  v5 = *(v0 + 416);
  v72 = *(v0 + 312);
  v81 = sub_1000D9500();
  *(v0 + 592) = v81;
  (*(v3 + 8))(v2, v4);
  sub_100009070(v1);
  sub_10001072C(0, &qword_100114D10, &type metadata accessor for NewsFeedFilterOptions.Option, &type metadata accessor for _ContiguousArrayStorage);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = 2 * v6;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000DE440;
  v70 = v7;
  v75 = v9;
  v10 = (v9 + v7);
  *v10 = _swiftEmptyArrayStorage;
  v11 = *(v5 + 104);
  v63 = enum case for NewsFeedFilterOptions.Option.duplicateArticles(_:);
  v11(v10);
  *&v10[v6] = _swiftEmptyArrayStorage;
  v71 = v6;
  v62 = enum case for NewsFeedFilterOptions.Option.duplicateClusters(_:);
  v11(&v10[v6]);
  v12 = enum case for HeadlineCondition.pressRelease(_:);
  v13 = sub_1000D9630();
  v69 = *(v13 - 8);
  v66 = v12;
  v14 = v12;
  v15 = *(v69 + 104);
  v15(&v10[v8], v14, v13);
  v68 = v8;
  v64 = enum case for NewsFeedFilterOptions.Option.condition(_:);
  v11(&v10[v8]);
  sub_100006C7C((v72 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager), *(v72 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager + 24));
  sub_1000D98B0();
  v16 = sub_1000D9560();
  v18 = v17;
  (*(v77 + 8))(v73, v79);
  v67 = v13;
  v65 = v15;
  if (v18)
  {
    v19 = v11;
  }

  else
  {
    v20 = *(v0 + 424);
    v21 = *(v0 + 408);
    sub_10000F8D4(0);
    v22 = v15;
    v24 = *(v23 + 48);
    *v20 = v16;
    v22(v20 + v24, enum case for HeadlineCondition.isAIGenerated(_:), v13);
    (*(v69 + 56))(v20 + v24, 0, 1, v13);
    (v11)(v20, enum case for NewsFeedFilterOptions.Option.maxCount(_:), v21);
    v25 = v75;
    v27 = *(v75 + 2);
    v26 = *(v75 + 3);
    v19 = v11;
    if (v27 >= v26 >> 1)
    {
      v25 = sub_10007B578((v26 > 1), v27 + 1, 1, v75);
    }

    v29 = *(v0 + 416);
    v28 = *(v0 + 424);
    v30 = *(v0 + 408);
    *(v25 + 2) = v27 + 1;
    (*(v29 + 32))(&v25[v70 + v27 * v71], v28, v30);
  }

  v32 = *(v0 + 392);
  v31 = *(v0 + 400);
  v33 = *(v0 + 384);
  sub_1000D9790();
  v34 = sub_1000DBB30();
  v35 = *(v32 + 8);
  v35(v31, v33);
  *(v0 + 280) = v34;
  v36 = *(v34 + 16);
  if (v36 && v36 < *(v0 + 304))
  {
    v37 = *(v0 + 408);
    v74 = v37;
    v78 = *(v0 + 400);
    v80 = *(v0 + 384);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1000DE440;
    v38 = (v76 + v70);
    *v38 = _swiftEmptyArrayStorage;
    v61 = v19;
    (v19)(v76 + v70, v63, v37);
    *(v38 + v71) = _swiftEmptyArrayStorage;
    (v19)(v76 + v70 + v71, v62, v37);
    sub_10001072C(0, &qword_100114D68, &type metadata accessor for HeadlineCondition, &type metadata accessor for _ContiguousArrayStorage);
    v39 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1000DDD30;
    v65((v40 + v39), v66, v67);
    *(v38 + v68) = v40;
    v65((v76 + v70 + v68), enum case for HeadlineCondition.none(_:), v67);
    v61(v76 + v70 + v68, v64, v74);
    sub_1000D9770();
    v41 = sub_1000DBB30();

    sub_100009070(v41);
    v35(v78, v80);
    v34 = *(v0 + 280);
  }

  else
  {
  }

  *(v0 + 600) = v34;
  v42 = *(v0 + 376);
  v43 = *(v0 + 352);
  v44 = *(v0 + 360);
  v45 = *(v0 + 312);
  v82 = *(v0 + 320);
  v46 = *(v0 + 304);
  (*(v44 + 16))(v42, v45 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger, v43);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = swift_allocObject();
  (*(v44 + 32))(v48 + v47, v42, v43);
  *(v0 + 176) = v34;
  *(v0 + 184) = sub_10000EFCC;
  *(v0 + 192) = v48;
  *(v0 + 200) = sub_10000F11C;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_10000F1D4;
  *(v0 + 224) = 0;

  sub_100018120(v46, v0 + 16);
  v49 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v49;
  *(v0 + 160) = *(v0 + 80);
  v50 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v50;
  sub_100006C7C((v45 + 72), *(v45 + 96));
  v51 = sub_1000D9840();
  v52 = swift_allocObject();
  *(v52 + 16) = v81;
  *(v52 + 24) = v51 & 1;
  *(v52 + 32) = v82;
  v53 = swift_allocObject();
  *(v0 + 608) = v53;
  *(v53 + 16) = &unk_1000DE550;
  *(v53 + 24) = v52;
  v54 = v81;
  v55 = swift_task_alloc();
  *(v0 + 616) = v55;
  sub_10000F51C(0);
  v57 = v56;
  v58 = type metadata accessor for HeadlineViewModel(0);
  v59 = sub_10000F830(&qword_100114D60, sub_10000F51C, &protocol conformance descriptor for LazyMapSequence<A, B>);
  *v55 = v0;
  v55[1] = sub_100008940;

  return Sequence<>.concurrentMap<A>(_:)(&unk_1000DE560, v53, v57, v58, v59);
}

uint64_t sub_100008940(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 624) = a1;

  sub_10000F878(v2 + 16);

  return _swift_task_switch(sub_100008A68, 0, 0);
}

uint64_t sub_100008A68()
{

  v1 = *(v0 + 624);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100008B48()
{
  v32 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);

  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = sub_1000DA350();
  v6 = sub_1000DBDB0();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    v10 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_1000D9B20();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = sub_1000848C8(v11, v13, &v31);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_1000DC3B0();
    v17 = sub_1000848C8(v15, v16, &v31);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch top stories for symbol=%s, error=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 336);
    v18 = *(v0 + 344);
    v20 = *(v0 + 328);

    (*(v19 + 8))(v18, v20);
  }

  *(v0 + 536) = _swiftEmptyArrayStorage;
  v21 = *(v0 + 304);
  v22 = sub_1000DA190();
  v23 = *(v0 + 272) * v21;
  if (COERCE__INT64(fabs(v23)) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = _swiftEmptyArrayStorage[2];

  if (__OFSUB__(v24, v25))
  {
LABEL_14:
    __break(1u);
    return Promise.resolveAsync()(v22);
  }

  v27 = *(v0 + 488);
  v26 = *(v0 + 496);
  v28 = *(v0 + 480);
  sub_100006C7C((*(v0 + 312) + 16), *(*(v0 + 312) + 40));
  (*(v27 + 104))(v26, enum case for NetworkProxy.none(_:), v28);
  *(v0 + 544) = sub_1000D9710();
  (*(v27 + 8))(v26, v28);
  v29 = swift_task_alloc();
  *(v0 + 552) = v29;
  *v29 = v0;
  v29[1] = sub_100007E48;
  v22 = v0 + 256;

  return Promise.resolveAsync()(v22);
}

uint64_t sub_100008EE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008FAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100009070(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10007B420(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1000D9C30();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000919C(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v63 = a2;
  v9 = sub_1000D9C30();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v62 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001072C(0, &qword_100114E38, &type metadata accessor for Headline, &type metadata accessor for Optional);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = &v48 - v16;
  v18 = __chkstk_darwin(v17);
  v19 = &v48;
  v21 = &v48 - v20;
  v22 = a4 >> 1;
  v23 = __OFSUB__(a4 >> 1, a3);
  v24 = (a4 >> 1) - a3;
  if (v23)
  {
    __break(1u);
    goto LABEL_21;
  }

  v64 = v10;
  v65 = a1;
  v5 = *v4;
  v25 = *(*v4 + 16);
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v19 = (v5[3] >> 1), v19 < v26))
  {
    if (v25 <= v26)
    {
      v28 = v25 + v24;
    }

    else
    {
      v28 = v25;
    }

    v5 = sub_10007B420(isUniquelyReferenced_nonNull_native, v28, 1, v5);
    v19 = (v5[3] >> 1);
  }

  v29 = &v19[-v5[2]];
  if (v22 == a3)
  {
    if (v24 <= 0)
    {
      v24 = 0;
      v19 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v29 < v24)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = swift_arrayInitWithCopy();
  if (v24 <= 0)
  {
LABEL_16:
    v19 = v22;
LABEL_17:
    if (v24 != v29)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v60 = v19;
    v24 = v5[2];
    v26 = v64;
    v50 = *(v64 + 56);
    v51 = v64 + 56;
    v50(v21, 1, 1, v9, v18);
    v33 = v61;
    sub_100010454(v21, v61, &qword_100114E38, &type metadata accessor for Headline);
    v57 = *(v26 + 48);
    v58 = v26 + 48;
    if (v57(v33, 1, v9) == 1)
    {
LABEL_24:
      sub_10000F970(v21, &qword_100114E38, &type metadata accessor for Headline);
      swift_unknownObjectRelease();
      result = sub_10000F970(v61, &qword_100114E38, &type metadata accessor for Headline);
      goto LABEL_19;
    }

LABEL_26:
    v55 = (v26 + 32);
    v48 = (v26 + 8);
    v49 = (v26 + 16);
    v34 = v62;
    v52 = v14;
    do
    {
      sub_10000F970(v61, &qword_100114E38, &type metadata accessor for Headline);
      v37 = v5[3];
      v38 = v37 >> 1;
      if ((v37 >> 1) < v24 + 1)
      {
        v5 = sub_10007B420((v37 > 1), v24 + 1, 1, v5);
        v38 = v5[3] >> 1;
      }

      v59 = *(v64 + 80);
      sub_100010454(v21, v14, &qword_100114E38, &type metadata accessor for Headline);
      if (v57(v14, 1, v9) == 1)
      {
LABEL_27:
        sub_10000F970(v14, &qword_100114E38, &type metadata accessor for Headline);
        v35 = v24;
      }

      else
      {
        v54 = v5 + ((v59 + 32) & ~v59);
        v39 = *v55;
        if (v24 <= v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = v24;
        }

        v56 = v40;
        v53 = v39;
        while (1)
        {
          v44 = v39;
          v39(v34, v14, v9);
          if (v56 == v24)
          {
            break;
          }

          sub_10000F970(v21, &qword_100114E38, &type metadata accessor for Headline);
          v45 = *(v64 + 72);
          v59 = v24;
          result = v44(&v54[v45 * v24], v34, v9);
          v46 = v60;
          if (v60 == v22)
          {
            v41 = 1;
            v60 = v22;
            v42 = v59;
            v14 = v52;
          }

          else
          {
            v47 = v45;
            v14 = v52;
            if (v60 < a3 || v60 >= v22)
            {
              goto LABEL_45;
            }

            (*v49)(v21, v63 + v47 * v60, v9);
            v41 = 0;
            v60 = v46 + 1;
            v42 = v59;
          }

          (v50)(v21, v41, 1, v9);
          sub_100010454(v21, v14, &qword_100114E38, &type metadata accessor for Headline);
          v43 = v57(v14, 1, v9);
          v24 = v42 + 1;
          v34 = v62;
          v39 = v53;
          if (v43 == 1)
          {
            goto LABEL_27;
          }
        }

        (*v48)(v34, v9);
        v35 = v56;
        v24 = v56;
        v14 = v52;
      }

      v5[2] = v35;
      v36 = v61;
      sub_100010454(v21, v61, &qword_100114E38, &type metadata accessor for Headline);
    }

    while (v57(v36, 1, v9) != 1);
    goto LABEL_24;
  }

  v31 = v5[2];
  v23 = __OFADD__(v31, v24);
  v32 = v31 + v24;
  if (!v23)
  {
    v5[2] = v32;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_100009810(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  v3[42] = *v2;
  v4 = sub_1000DA370();
  v3[43] = v4;
  v5 = *(v4 - 8);
  v3[44] = v5;
  v3[45] = *(v5 + 64);
  v3[46] = swift_task_alloc();
  v6 = sub_1000D97A0();
  v3[47] = v6;
  v3[48] = *(v6 - 8);
  v3[49] = swift_task_alloc();
  v7 = sub_1000D9780();
  v3[50] = v7;
  v3[51] = *(v7 - 8);
  v3[52] = swift_task_alloc();
  v8 = sub_1000D95E0();
  v3[53] = v8;
  v3[54] = *(v8 - 8);
  v3[55] = swift_task_alloc();
  v9 = sub_1000D9670();
  v3[56] = v9;
  v3[57] = *(v9 - 8);
  v3[58] = swift_task_alloc();
  v10 = sub_1000D9B40();
  v3[59] = v10;
  v3[60] = *(v10 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v11 = sub_1000D9510();
  v3[63] = v11;
  v3[64] = *(v11 - 8);
  v3[65] = swift_task_alloc();
  v12 = sub_1000D9EC0();
  v3[66] = v12;
  v3[67] = *(v12 - 8);
  v3[68] = swift_task_alloc();

  return _swift_task_switch(sub_100009B94, 0, 0);
}

uint64_t sub_100009B94()
{
  v1 = *(v0 + 320);
  sub_100006C7C((*(v0 + 328) + 72), *(*(v0 + 328) + 96));
  if ((sub_1000D9810() & 1) == 0 && v1 >= 1)
  {
    v2 = *(*(v0 + 312) + 16);
    *(v0 + 552) = v2;
    if (v2)
    {
      v3 = *(v0 + 320);
      v4 = [objc_opt_self() sharedPreferences];
      [v4 resetLocale];

      if (v2 <= v3)
      {
        v9 = *(v0 + 320);
        v6 = v9 / v2;
        if (v9 % v2)
        {
          if (__OFADD__(v6++, 1))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v6 = 1;
      }

      *(v0 + 560) = v6;
      v11 = v6;
      v5 = sub_1000DA190();
      v12 = *(v0 + 256) * v11;
      if (COERCE__INT64(fabs(v12)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
          v13 = *(v0 + 544);
          v14 = *(v0 + 536);
          v15 = *(v0 + 528);
          sub_100006C7C((*(v0 + 328) + 16), *(*(v0 + 328) + 40));
          (*(v14 + 104))(v13, enum case for NetworkProxy.none(_:), v15);
          *(v0 + 568) = sub_1000D9700();
          (*(v14 + 8))(v13, v15);
          v16 = swift_task_alloc();
          *(v0 + 576) = v16;
          *v16 = v0;
          v16[1] = sub_100009E98;
          v5 = v0 + 264;

          return Promise.resolveAsync()(v5);
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return Promise.resolveAsync()(v5);
    }
  }

  v7 = *(v0 + 8);

  return v7(_swiftEmptyArrayStorage);
}

uint64_t sub_100009E98()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_10000B1AC;
  }

  else
  {

    v2 = sub_100009FB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009FB4()
{
  v1 = v0[41];
  v0[74] = v0[33];
  v2 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  v4 = swift_task_alloc();
  v0[75] = v4;
  *v4 = v0;
  v4[1] = sub_10000A078;
  v5 = v0[65];

  return NewsUserProfileProviderType.newsUserProfile.getter(v5, ObjectType, v2);
}

uint64_t sub_10000A078()
{
  *(*v1 + 608) = v0;

  if (v0)
  {

    v2 = sub_10000B294;
  }

  else
  {
    v2 = sub_10000A194;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000A194()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 480);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);
  *(v0 + 616) = sub_1000D9500();
  (*(v4 + 8))(v2, v3);
  v26 = *(v6 + 128);
  sub_10007BC5C(0, v1, 0);
  v8 = 0;
  v9 = *(v5 + 16);
  v5 += 16;
  v10 = *(v5 + 64);
  *(v0 + 744) = v10;
  v11 = v7 + ((v10 + 32) & ~v10);
  v29 = *(v5 + 56);
  v30 = v9;
  *(v0 + 624) = v29;
  *(v0 + 632) = v9;
  v12 = (v5 - 8);
  v27 = (v5 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28 = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  do
  {
    v13 = *(v0 + 496);
    v14 = *(v0 + 472);
    *(v0 + 640) = v28;
    v30(v13, v11, v14);
    v15 = sub_1000D9B20();
    v17 = v16;
    v18 = *v12;
    *(v0 + 648) = *v12;
    *(v0 + 656) = v27;
    v18(v13, v14);
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_10007BC5C((v19 > 1), v20 + 1, 1);
    }

    *(v0 + 664) = _swiftEmptyArrayStorage;
    v21 = *(v0 + 552);
    ++v8;
    _swiftEmptyArrayStorage[2] = v20 + 1;
    v22 = &_swiftEmptyArrayStorage[2 * v20];
    v22[4] = v15;
    v22[5] = v17;
    v11 += v29;
  }

  while (v8 != v21);
  ObjectType = swift_getObjectType();
  v31 = (*(v26 + 24) + **(v26 + 24));
  v24 = swift_task_alloc();
  *(v0 + 672) = v24;
  *v24 = v0;
  v24[1] = sub_10000A43C;

  return v31(_swiftEmptyArrayStorage, ObjectType, v26);
}

uint64_t sub_10000A43C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 680) = v1;

  if (v1)
  {
    v5 = sub_10000B374;
  }

  else
  {

    *(v4 + 688) = a1;
    v5 = sub_10000A56C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000A56C()
{
  v1 = 0;
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 592);
  v5 = *(v0 + 560);
  v6 = *(v0 + 456);
  *(v0 + 272) = _swiftEmptyArrayStorage;
  *(v0 + 280) = _swiftEmptyArrayStorage;
  LODWORD(v103) = enum case for NewsFeedSortMethod.publishDate(_:);
  v101 = v6 + 8;
  v102 = (v6 + 104);
  v105 = v2;
  do
  {
    (*(v0 + 632))(*(v0 + 488), *(v0 + 312) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 624) * v1, *(v0 + 472));
    if (*(v4 + 16))
    {
      v8 = sub_100033288(*(v0 + 488));
      if (v9)
      {
        v10 = *(*(v4 + 56) + 8 * v8);

        v11 = sub_1000D9B20();
        if (*(v2 + 16))
        {
          sub_100033210(v11, v12);
          v14 = v13;

          if (v14)
          {
          }
        }

        else
        {
        }

        v15 = *(v0 + 464);
        v16 = *(v0 + 448);
        (*v102)(v15, v103, v16);
        v17 = sub_1000DBB20();

        (*v101)(v15, v16);
        sub_100009070(v10);
        v18 = v17;
        v19 = sub_10000FC00(v17, (v0 + 272));

        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_33;
        }

        v22 = *(v0 + 560);
        v23 = v19[2];
        if (v23 >= v22)
        {
          v23 = *(v0 + 560);
        }

        v24 = 2 * v23;
        v25 = *(sub_1000D9C30() - 8);
        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        if (v5)
        {
          v27 = v24 + 1;
        }

        else
        {
          v27 = 1;
        }

        sub_10000919C(v28, v19 + v26, 0, v27);
        v29 = v19[2];
        if (v29 >= v22)
        {
          v30 = v22;
        }

        else
        {
          v30 = v19[2];
        }

        if (v5)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        sub_10000919C(v19, v19 + v26, v31, (2 * v29) | 1);
        v2 = v105;
      }
    }

    ++v1;
    v7 = *(v0 + 552);
    (*(v0 + 648))(*(v0 + 488), *(v0 + 472));
  }

  while (v1 != v7);
  v32 = *(v0 + 440);
  v98 = *(v0 + 432);
  v99 = *(v0 + 424);
  v33 = *(v0 + 408);
  v94 = *(v0 + 328);

  sub_100009070(*(v0 + 280));
  sub_10001072C(0, &qword_100114D10, &type metadata accessor for NewsFeedFilterOptions.Option, &type metadata accessor for _ContiguousArrayStorage);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = 2 * v34;
  v37 = swift_allocObject();
  v89 = xmmword_1000DE440;
  *(v37 + 16) = xmmword_1000DE440;
  v102 = v35;
  v96 = v37;
  v38 = (v37 + v35);
  *v38 = _swiftEmptyArrayStorage;
  v5 = *(v33 + 104);
  v88 = enum case for NewsFeedFilterOptions.Option.duplicateArticles(_:);
  (v5)(v38);
  *&v38[v34] = _swiftEmptyArrayStorage;
  v105 = v34;
  v87 = enum case for NewsFeedFilterOptions.Option.duplicateClusters(_:);
  (v5)(&v38[v34]);
  v39 = enum case for HeadlineCondition.pressRelease(_:);
  v40 = sub_1000D9630();
  v101 = *(v40 - 8);
  v103 = *(v101 + 104);
  v103(&v38[v36], v39, v40);
  v93 = v36;
  v90 = enum case for NewsFeedFilterOptions.Option.condition(_:);
  (v5)(&v38[v36]);
  sub_100006C7C((v94 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager), *(v94 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager + 24));
  sub_1000D98B0();
  v41 = sub_1000D9560();
  v43 = v42;
  (*(v98 + 8))(v32, v99);
  v92 = v40;
  v91 = v39;
  if (v43)
  {
    goto LABEL_26;
  }

  v44 = *(v0 + 416);
  v45 = *(v0 + 400);
  sub_10000F8D4(0);
  v47 = *(v46 + 48);
  *v44 = v41;
  v103(v44 + v47, enum case for HeadlineCondition.isAIGenerated(_:), v40);
  (*(v101 + 56))(v44 + v47, 0, 1, v40);
  (v5)(v44, enum case for NewsFeedFilterOptions.Option.maxCount(_:), v45);
  v20 = v96;
  v3 = v96[2];
  v21 = v96[3];
  v18 = v3 + 1;
  if (v3 < v21 >> 1)
  {
    v48 = v96;
    goto LABEL_25;
  }

LABEL_33:
  v48 = sub_10007B578((v21 > 1), v18, 1, v20);
LABEL_25:
  v50 = *(v0 + 408);
  v49 = *(v0 + 416);
  v51 = *(v0 + 400);
  v48[2] = v18;
  (*(v50 + 32))(&v102[v48 + v3 * v105], v49, v51, v20);
LABEL_26:
  v53 = *(v0 + 384);
  v52 = *(v0 + 392);
  v54 = *(v0 + 376);
  v55 = *(v0 + 320);
  *(v0 + 696) = *(v0 + 272);
  sub_1000D9790();
  v56 = sub_1000DBB30();
  v57 = *(v53 + 8);
  v57(v52, v54);
  *(v0 + 288) = v56;
  v58 = *(v56 + 16);
  if (v58 && v58 < v55)
  {
    v59 = *(v0 + 400);
    v97 = *(v0 + 392);
    v100 = *(v0 + 376);
    v95 = swift_allocObject();
    *(v95 + 16) = v89;
    v60 = &v102[v95];
    *v60 = _swiftEmptyArrayStorage;
    v61 = v59;
    v86 = v59;
    v62 = v59;
    v63 = v5;
    (v5)(&v102[v95], v88, v62);
    *&v60[v105] = _swiftEmptyArrayStorage;
    (v5)(&v102[v95 + v105], v87, v61);
    sub_10001072C(0, &qword_100114D68, &type metadata accessor for HeadlineCondition, &type metadata accessor for _ContiguousArrayStorage);
    v64 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1000DDD30;
    v103((v65 + v64), v91, v92);
    *&v60[v93] = v65;
    v103(&v102[v95 + v93], enum case for HeadlineCondition.none(_:), v92);
    v63(&v102[v95 + v93], v90, v86);
    sub_1000D9770();
    v66 = sub_1000DBB30();
    sub_100009070(v66);
    v57(v97, v100);
    v56 = *(v0 + 288);
  }

  *(v0 + 704) = v56;
  v67 = *(v0 + 368);
  v68 = *(v0 + 344);
  v69 = *(v0 + 352);
  v70 = *(v0 + 328);
  v104 = *(v0 + 336);
  v106 = *(v0 + 616);
  v71 = *(v0 + 320);
  (*(v69 + 16))(v67, v70 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger, v68);
  v72 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v73 = swift_allocObject();
  *(v0 + 712) = v73;
  (*(v69 + 32))(v73 + v72, v67, v68);
  *(v0 + 176) = v56;
  *(v0 + 184) = sub_1000107A4;
  *(v0 + 192) = v73;
  *(v0 + 200) = sub_10000F11C;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_10000F1D4;
  *(v0 + 224) = 0;
  swift_bridgeObjectRetain_n();

  sub_100018120(v71, v0 + 16);
  v74 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v74;
  *(v0 + 160) = *(v0 + 80);
  v75 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v75;
  sub_100006C7C((v70 + 72), *(v70 + 96));
  v76 = sub_1000D9840();
  v77 = swift_allocObject();
  *(v77 + 16) = v106;
  *(v77 + 24) = v76 & 1;
  *(v77 + 32) = v104;
  v78 = swift_allocObject();
  *(v0 + 720) = v78;
  *(v78 + 16) = &unk_1000DE590;
  *(v78 + 24) = v77;
  v79 = v106;
  v80 = swift_task_alloc();
  *(v0 + 728) = v80;
  sub_10000F51C(0);
  v82 = v81;
  v83 = type metadata accessor for HeadlineViewModel(0);
  v84 = sub_10000F830(&qword_100114D60, sub_10000F51C, &protocol conformance descriptor for LazyMapSequence<A, B>);
  *v80 = v0;
  v80[1] = sub_10000AF6C;

  return Sequence<>.concurrentMap<A>(_:)(&unk_1000DE598, v78, v82, v83, v84);
}

uint64_t sub_10000AF6C(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 736) = a1;

  sub_10000F878(v2 + 16);

  return _swift_task_switch(sub_10000B094, 0, 0);
}

uint64_t sub_10000B094()
{
  swift_bridgeObjectRelease_n();

  v1 = *(v0 + 736);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000B1AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B294()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B374()
{
  v132 = v0;

  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v125 = v2;
    v127 = v1;
    v3 = *(v0 + 552);
    v4 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v131 = _swiftEmptyArrayStorage;
    *v4 = 136315394;
    sub_10007BC5C(0, v3, 0);
    v5 = 0;
    v6 = v131;
    do
    {
      v7 = *(v0 + 648);
      v8 = *(v0 + 496);
      v9 = *(v0 + 472);
      (*(v0 + 632))(v8, *(v0 + 312) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 624) * v5, v9);
      v10 = sub_1000D9B20();
      v12 = v11;
      v7(v8, v9);
      v131 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10007BC5C((v13 > 1), v14 + 1, 1);
        v6 = v131;
      }

      v15 = *(v0 + 552);
      ++v5;
      v6[2] = v14 + 1;
      v16 = &v6[2 * v14];
      v16[4] = v10;
      v16[5] = v12;
    }

    while (v5 != v15);
    *(v0 + 296) = v6;
    sub_1000106DC();
    sub_10000F830(&qword_100114E30, sub_1000106DC, &protocol conformance descriptor for [A]);
    v17 = sub_1000DB890();
    v19 = v18;

    v20 = sub_1000848C8(v17, v19, &v130);

    *(v4 + 4) = v20;
    *(v4 + 12) = 2080;
    swift_getErrorValue();
    v21 = sub_1000DC3B0();
    v23 = sub_1000848C8(v21, v22, &v130);

    *(v4 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v127, v125, "Failed to fetch top stories for symbols=[%s], error=%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v24 = sub_100033A30(_swiftEmptyArrayStorage);

  v25 = 0;
  v26 = 0;
  v27 = *(v0 + 592);
  v28 = *(v0 + 560);
  v29 = *(v0 + 456);
  *(v0 + 272) = _swiftEmptyArrayStorage;
  *(v0 + 280) = _swiftEmptyArrayStorage;
  LODWORD(v124) = enum case for NewsFeedSortMethod.publishDate(_:);
  v123 = (v29 + 104);
  v122 = v29 + 8;
  v128 = v24;
  do
  {
    (*(v0 + 632))(*(v0 + 488), *(v0 + 312) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 624) * v26, *(v0 + 472));
    if (*(v27 + 16))
    {
      v31 = sub_100033288(*(v0 + 488));
      if (v32)
      {
        v33 = *(*(v27 + 56) + 8 * v31);

        v34 = sub_1000D9B20();
        if (*(v24 + 16))
        {
          sub_100033210(v34, v35);
          v37 = v36;

          if (v37)
          {
          }
        }

        else
        {
        }

        v38 = *(v0 + 464);
        v39 = *(v0 + 448);
        (*v123)(v38, v124, v39);
        v40 = sub_1000DBB20();

        (*v122)(v38, v39);
        v131 = v40;
        sub_100009070(v33);
        v41 = v131;
        v42 = sub_10000FC00(v131, (v0 + 272));

        if (v28 < 0)
        {
          __break(1u);
          goto LABEL_40;
        }

        v45 = *(v0 + 560);
        v46 = v42[2];
        if (v46 >= v45)
        {
          v46 = *(v0 + 560);
        }

        v47 = 2 * v46;
        v48 = *(sub_1000D9C30() - 8);
        v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        if (v28)
        {
          v50 = v47 + 1;
        }

        else
        {
          v50 = 1;
        }

        sub_10000919C(v51, v42 + v49, 0, v50);
        v52 = v42[2];
        if (v52 >= v45)
        {
          v53 = v45;
        }

        else
        {
          v53 = v42[2];
        }

        if (v28)
        {
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        sub_10000919C(v42, v42 + v49, v54, (2 * v52) | 1);
        v24 = v128;
      }
    }

    v26 = (v26 + 1);
    v30 = *(v0 + 552);
    (*(v0 + 648))(*(v0 + 488), *(v0 + 472));
  }

  while (v26 != v30);
  v55 = *(v0 + 440);
  v119 = *(v0 + 432);
  v120 = *(v0 + 424);
  v56 = *(v0 + 408);
  v115 = *(v0 + 328);

  sub_100009070(*(v0 + 280));
  sub_10001072C(0, &qword_100114D10, &type metadata accessor for NewsFeedFilterOptions.Option, &type metadata accessor for _ContiguousArrayStorage);
  v57 = *(v56 + 72);
  v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v59 = 2 * v57;
  v60 = swift_allocObject();
  v111 = xmmword_1000DE440;
  *(v60 + 16) = xmmword_1000DE440;
  v123 = v58;
  v117 = v60;
  v61 = (v60 + v58);
  *v61 = _swiftEmptyArrayStorage;
  v26 = *(v56 + 104);
  v110 = enum case for NewsFeedFilterOptions.Option.duplicateArticles(_:);
  v26(v61);
  *&v61[v57] = _swiftEmptyArrayStorage;
  v128 = v57;
  v109 = enum case for NewsFeedFilterOptions.Option.duplicateClusters(_:);
  v26(&v61[v57]);
  v62 = enum case for HeadlineCondition.pressRelease(_:);
  v25 = sub_1000D9630();
  v122 = *(v25 - 8);
  v124 = *(v122 + 104);
  v124(&v61[v59], v62, v25);
  v114 = v59;
  v112 = enum case for NewsFeedFilterOptions.Option.condition(_:);
  v26(&v61[v59]);
  sub_100006C7C((v115 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager), *(v115 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager + 24));
  sub_1000D98B0();
  v63 = sub_1000D9560();
  v65 = v64;
  (*(v119 + 8))(v55, v120);
  v113 = v62;
  if (v65)
  {
    goto LABEL_33;
  }

  v66 = *(v0 + 416);
  v67 = *(v0 + 400);
  sub_10000F8D4(0);
  v69 = *(v68 + 48);
  *v66 = v63;
  v124(v66 + v69, enum case for HeadlineCondition.isAIGenerated(_:), v25);
  (*(v122 + 56))(v66 + v69, 0, 1, v25);
  (v26)(v66, enum case for NewsFeedFilterOptions.Option.maxCount(_:), v67);
  v43 = v117;
  v27 = v117[2];
  v44 = v117[3];
  v41 = (v27 + 1);
  if (v27 < v44 >> 1)
  {
    v70 = v117;
    goto LABEL_32;
  }

LABEL_40:
  v70 = sub_10007B578((v44 > 1), v41, 1, v43);
LABEL_32:
  v72 = *(v0 + 408);
  v71 = *(v0 + 416);
  v73 = *(v0 + 400);
  v70[2] = v41;
  (*(v72 + 32))(&v123[v70 + v27 * v128], v71, v73, v43);
LABEL_33:
  v75 = *(v0 + 384);
  v74 = *(v0 + 392);
  v76 = *(v0 + 376);
  v77 = *(v0 + 320);
  *(v0 + 696) = *(v0 + 272);
  sub_1000D9790();
  v78 = sub_1000DBB30();
  v79 = *(v75 + 8);
  v79(v74, v76);
  *(v0 + 288) = v78;
  v80 = *(v78 + 16);
  if (v80 && v80 < v77)
  {
    v81 = *(v0 + 400);
    v118 = *(v0 + 392);
    v121 = *(v0 + 376);
    v116 = swift_allocObject();
    *(v116 + 16) = v111;
    v82 = &v123[v116];
    *v82 = _swiftEmptyArrayStorage;
    v83 = v81;
    v108 = v81;
    v84 = v81;
    v85 = v26;
    (v26)(&v123[v116], v110, v84);
    *&v82[v128] = _swiftEmptyArrayStorage;
    (v26)(&v123[v116 + v128], v109, v83);
    sub_10001072C(0, &qword_100114D68, &type metadata accessor for HeadlineCondition, &type metadata accessor for _ContiguousArrayStorage);
    v86 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1000DDD30;
    v124((v87 + v86), v113, v25);
    *&v82[v114] = v87;
    v124(&v123[v116 + v114], enum case for HeadlineCondition.none(_:), v25);
    v85(&v123[v116 + v114], v112, v108);
    sub_1000D9770();
    v88 = sub_1000DBB30();
    sub_100009070(v88);
    v79(v118, v121);
    v78 = *(v0 + 288);
  }

  *(v0 + 704) = v78;
  v89 = *(v0 + 368);
  v90 = *(v0 + 344);
  v91 = *(v0 + 352);
  v92 = *(v0 + 328);
  v126 = *(v0 + 336);
  v129 = *(v0 + 616);
  v93 = *(v0 + 320);
  (*(v91 + 16))(v89, v92 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger, v90);
  v94 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v95 = swift_allocObject();
  *(v0 + 712) = v95;
  (*(v91 + 32))(v95 + v94, v89, v90);
  *(v0 + 176) = v78;
  *(v0 + 184) = sub_1000107A4;
  *(v0 + 192) = v95;
  *(v0 + 200) = sub_10000F11C;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_10000F1D4;
  *(v0 + 224) = 0;
  swift_bridgeObjectRetain_n();

  sub_100018120(v93, v0 + 16);
  v96 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v96;
  *(v0 + 160) = *(v0 + 80);
  v97 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v97;
  sub_100006C7C((v92 + 72), *(v92 + 96));
  v98 = sub_1000D9840();
  v99 = swift_allocObject();
  *(v99 + 16) = v129;
  *(v99 + 24) = v98 & 1;
  *(v99 + 32) = v126;
  v100 = swift_allocObject();
  *(v0 + 720) = v100;
  *(v100 + 16) = &unk_1000DE590;
  *(v100 + 24) = v99;
  v101 = v129;
  v102 = swift_task_alloc();
  *(v0 + 728) = v102;
  sub_10000F51C(0);
  v104 = v103;
  v105 = type metadata accessor for HeadlineViewModel(0);
  v106 = sub_10000F830(&qword_100114D60, sub_10000F51C, &protocol conformance descriptor for LazyMapSequence<A, B>);
  *v102 = v0;
  v102[1] = sub_10000AF6C;

  return Sequence<>.concurrentMap<A>(_:)(&unk_1000DE598, v100, v104, v105, v106);
}

uint64_t sub_10000C038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D9C30();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_1000D9C00();
  if (!v12)
  {
    (*(v5 + 16))(v7, a1, v4);
    v26 = sub_1000DA350();
    v27 = sub_1000DBDD0();
    if (!os_log_type_enabled(v26, v27))
    {

      (*(v5 + 8))(v7, v4);
      goto LABEL_17;
    }

    v28 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = sub_1000D9C20();
    v31 = v30;
    (*(v5 + 8))(v7, v4);
    v32 = sub_1000848C8(v29, v31, &v45);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v33 = sub_1000848C8(v43, v44, &v45);

    *(v28 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Dropping headline without title: %s. id=%s", v28, 0x16u);
    swift_arrayDestroy();
LABEL_14:

LABEL_17:
    sub_10001037C(0);
    return (*(*(v41 - 8) + 56))(a2, 1, 1, v41);
  }

  v13 = v11;
  v14 = v12;
  v15 = [sub_1000D9BD0() sourceName];
  swift_unknownObjectRelease();
  if (!v15)
  {

    (*(v5 + 16))(v10, a1, v4);
    v26 = sub_1000DA350();
    v34 = sub_1000DBDD0();
    if (!os_log_type_enabled(v26, v34))
    {

      (*(v5 + 8))(v10, v4);
      goto LABEL_17;
    }

    v35 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = sub_1000D9C20();
    v38 = v37;
    (*(v5 + 8))(v10, v4);
    v39 = sub_1000848C8(v36, v38, &v45);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v40 = sub_1000848C8(v43, v44, &v45);

    *(v35 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v26, v34, "Dropping headline without source: %s. id=%s", v35, 0x16u);
    swift_arrayDestroy();
    goto LABEL_14;
  }

  v16 = sub_1000DB950();
  v18 = v17;

  sub_10001037C(0);
  v20 = v19;
  v21 = (a2 + *(v19 + 48));
  v22 = v4;
  v23 = (a2 + *(v19 + 64));
  (*(v5 + 16))(a2, a1, v22);
  *v21 = v13;
  v21[1] = v14;
  *v23 = v16;
  v23[1] = v18;
  v24 = *(*(v20 - 8) + 56);

  return v24(a2, 0, 1, v20);
}

uint64_t sub_10000C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 1692) = a8;
  *(v8 + 1536) = a7;
  *(v8 + 1528) = a6;
  *(v8 + 1520) = a5;
  *(v8 + 1512) = a4;
  *(v8 + 1504) = a3;
  *(v8 + 1496) = a2;
  *(v8 + 1448) = a1;
  sub_10001072C(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  *(v8 + 1544) = swift_task_alloc();
  *(v8 + 1552) = swift_task_alloc();
  *(v8 + 1560) = swift_task_alloc();
  *(v8 + 1568) = swift_task_alloc();
  v9 = sub_1000D9C30();
  *(v8 + 1576) = v9;
  *(v8 + 1584) = *(v9 - 8);
  *(v8 + 1592) = swift_task_alloc();

  return _swift_task_switch(sub_10000C6D8, 0, 0);
}

uint64_t sub_10000C6D8()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1576);
  (*(v2 + 16))(v1, *(v0 + 1496), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Headline.headline(_:))
  {
    v5 = *(v0 + 1592);
    (*(*(v0 + 1584) + 96))(v5, *(v0 + 1576));
    v6 = *v5;
    *(v0 + 1600) = *v5;
    v7 = swift_task_alloc();
    *(v0 + 1608) = v7;
    *(v7 + 16) = v6;
    sub_10001072C(0, &qword_100114D90, sub_10000FB14, &type metadata accessor for Optional);
    swift_asyncLet_begin();
    v8 = swift_task_alloc();
    *(v0 + 1616) = v8;
    *(v8 + 16) = v6;
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16, v0 + 1352, sub_10000CCD8, v0 + 1296);
  }

  else if (v4 == enum case for Headline.yahooHeadline(_:))
  {
    v9 = *(v0 + 1592);
    v10 = *(v0 + 1544);
    v11 = *(v0 + 1692);
    v12 = *(v0 + 1528);
    (*(*(v0 + 1584) + 96))(v9, *(v0 + 1576));
    v13 = *v9;
    swift_getObjectType();
    v14 = [v13 identifier];
    v15 = sub_1000DB950();
    v31 = v16;
    v32 = v15;

    v33 = v12;

    sub_1000DBE20();
    v17 = sub_1000D8F30();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) == 1)
    {
      v19 = *(v0 + 1544);
      swift_unknownObjectRelease();
      sub_10000F970(v19, &qword_100114D80, &type metadata accessor for URL);
      v20 = 1;
    }

    else
    {
      v21 = *(v0 + 1544);
      sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
      sub_1000D8E20();
      *(swift_allocObject() + 16) = xmmword_1000DDD30;
      sub_1000D8E10();
      sub_1000D8F20();
      swift_unknownObjectRelease();

      (*(v18 + 8))(v21, v17);
      v20 = 0;
    }

    if (v11)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    v23 = *(v0 + 1552);
    v24 = *(v0 + 1520);
    v25 = *(v0 + 1512);
    v26 = *(v0 + 1504);
    v27 = *(v0 + 1448);
    (*(v18 + 56))(v23, v20, 1, v17);
    *v27 = v32;
    *(v27 + 8) = v31;
    *(v27 + 16) = v22;
    *(v27 + 24) = v24;
    *(v27 + 32) = v33;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 1;
    *(v27 + 64) = v26;
    *(v27 + 72) = v25;
    *(v27 + 80) = xmmword_1000DE450;
    *(v27 + 96) = xmmword_1000DE460;
    *(v27 + 112) = 0;
    v28 = type metadata accessor for HeadlineViewModel(0);
    sub_10000F9E0(v23, v27 + *(v28 + 36));

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    sub_1000DBF50(61);
    *(v0 + 1336) = 0;
    *(v0 + 1344) = 0xE000000000000000;
    v35._countAndFlagsBits = 0xD000000000000014;
    v35._object = 0x80000001000E7E40;
    sub_1000DBA00(v35);
    sub_1000DC0C0();
    v36._countAndFlagsBits = 0xD000000000000027;
    v36._object = 0x80000001000E7E60;
    sub_1000DBA00(v36);
    return sub_1000DC0D0();
  }
}

uint64_t sub_10000CCD8()
{
  v1 = *(v0 + 1352);
  *(v0 + 1624) = v1;
  v2 = v1;

  return _swift_asyncLet_get(v0 + 656, v0 + 1400, sub_10000CD48, v0 + 1360);
}

uint64_t sub_10000CD64()
{
  v1 = *(v0 + 1400);
  *(v0 + 1632) = v1;
  if (v1)
  {
    v2 = *(v0 + 1600);
    v3 = v1;
    v4 = [v2 sourceChannel];
    v5 = 1.0;
    if (v4)
    {
      v6 = [v4 theme];
      swift_unknownObjectRelease();
      if (v6)
      {
        [v6 bannerImageScale];
        v5 = v7;
        swift_unknownObjectRelease();
      }
    }

    if (v5 > 0.1)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1.0;
    }

    v9 = v8;
    v10 = *(v0 + 1520);
    v11 = v1;
    v12 = *(v0 + 1528);
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = *(v0 + 1520);
    v9 = *(v0 + 1528);
  }

  *(v0 + 1664) = v12;
  *(v0 + 1656) = v10;
  *(v0 + 1648) = v9;
  *(v0 + 1640) = v11;
  v13 = *(v0 + 1624);
  if (v13)
  {
    sub_1000DBC20();
    v14 = v1;
    swift_bridgeObjectRetain_n();
    v15 = v13;
    *(v0 + 1672) = sub_1000DBC10();
    v16 = sub_1000DBBE0();
    v18 = v17;
    v19 = sub_10000D324;
LABEL_14:

    return _swift_task_switch(v19, v16, v18);
  }

  v20 = v1;
  swift_bridgeObjectRetain_n();
  if (sub_1000D9C10())
  {
    sub_1000DBC20();
    *(v0 + 1680) = sub_1000DBC10();
    v16 = sub_1000DBBE0();
    v18 = v21;
    v19 = sub_10000DC54;
    goto LABEL_14;
  }

  v22 = *(v0 + 1624);
  v23 = *(v0 + 1600);
  v24 = *(v0 + 1560);
  v25 = *(v0 + 1536);
  swift_getObjectType();
  v26 = v22;
  v27 = [v23 identifier];
  v28 = sub_1000DB950();
  v57 = v29;
  v58 = v28;

  swift_unknownObjectRetain();
  v30 = sub_10000FEE0(v23, v25);
  v55 = v31;
  v56 = v30;
  v54 = v32;
  sub_1000DBE20();
  v33 = sub_1000D8F30();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v24, 1, v33);
  v51 = *(v0 + 1656);
  v52 = *(v0 + 1664);
  v36 = *(v0 + 1648);
  v37 = *(v0 + 1640);
  v38 = *(v0 + 1632);
  v39 = *(v0 + 1624);
  if (v35 == 1)
  {
    v40 = *(v0 + 1560);
    v41 = 1;
    sub_100010190(1);
    sub_1000101A0(v37, v36, v51, v52, v38 == 0);

    sub_10000F970(v40, &qword_100114D80, &type metadata accessor for URL);
  }

  else
  {
    v42 = *(v0 + 1560);
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    sub_1000D8E20();
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v37, v36, v51, v52, v38 == 0);
    sub_100010190(1);

    (*(v34 + 8))(v42, v33);
    v41 = 0;
  }

  v43 = *(v0 + 1568);
  v44 = *(v0 + 1512);
  v45 = *(v0 + 1504);
  v46 = *(v0 + 1448);
  v47 = *(v0 + 1632) == 0;
  v53 = *(v0 + 1640);
  v59 = *(v0 + 1656);
  (*(v34 + 56))(v43, v41, 1, v33);
  sub_1000101E0(0);
  *(v0 + 1688) = *(v48 + 48);
  *v46 = v58;
  *(v46 + 8) = v57;
  *(v46 + 16) = 0;
  *(v46 + 40) = v59;
  *(v46 + 24) = v53;
  *(v46 + 56) = v47;
  *(v46 + 64) = v45;
  *(v46 + 72) = v44;
  *(v46 + 80) = v56;
  *(v46 + 88) = v55;
  *(v46 + 96) = v54;
  *(v46 + 104) = 1;
  *(v46 + 112) = 0;
  v49 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v43, v46 + *(v49 + 36));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1400, sub_10000E55C, v0 + 1408);
}

uint64_t sub_10000D324()
{

  v0 = sub_1000D9B70();
  v2 = v1;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {

LABEL_3:
    v5 = sub_10000D858;
    goto LABEL_9;
  }

  if (sub_1000D9B60() == v0 && v6 == v2)
  {
  }

  else
  {
    v7 = sub_1000DC360();

    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v5 = sub_10000D448;
LABEL_9:

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000D448(uint64_t a1)
{
  v2 = sub_1000D9C10() & 1;
  v3 = *(v1 + 1624);
  v4 = *(v1 + 1600);
  v5 = *(v1 + 1560);
  v6 = *(v1 + 1536);
  swift_getObjectType();
  v39 = v3;
  v7 = v3;
  v8 = [v4 identifier];
  v38 = sub_1000DB950();
  v37 = v9;

  swift_unknownObjectRetain();
  v10 = sub_10000FEE0(v4, v6);
  v35 = v11;
  v36 = v10;
  v34 = v12;
  sub_1000DBE20();
  v13 = sub_1000D8F30();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v5, 1, v13);
  v16 = *(v1 + 1656);
  v17 = *(v1 + 1648);
  v18 = *(v1 + 1640);
  v19 = *(v1 + 1632);
  v30 = *(v1 + 1664);
  v31 = *(v1 + 1624);
  v20 = *(v1 + 1560);
  if (v15 == 1)
  {
    sub_100010190(v39);
    sub_1000101A0(v18, v17, v16, v30, v19 == 0);

    sub_10000F970(v20, &qword_100114D80, &type metadata accessor for URL);
    v21 = 1;
  }

  else
  {
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    sub_1000D8E20();
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v18, v17, v16, v30, v19 == 0);
    sub_100010190(v39);

    (*(v14 + 8))(v20, v13);
    v21 = 0;
  }

  v22 = *(v1 + 1568);
  v23 = *(v1 + 1512);
  v24 = *(v1 + 1504);
  v25 = *(v1 + 1448);
  v26 = *(v1 + 1632) == 0;
  v32 = *(v1 + 1640);
  v33 = *(v1 + 1656);
  (*(v14 + 56))(v22, v21, 1, v13);
  sub_1000101E0(0);
  *(v1 + 1688) = *(v27 + 48);
  *v25 = v38;
  *(v25 + 8) = v37;
  *(v25 + 16) = 0;
  *(v25 + 40) = v33;
  *(v25 + 24) = v32;
  *(v25 + 56) = v26;
  *(v25 + 64) = v24;
  *(v25 + 72) = v23;
  *(v25 + 80) = v36;
  *(v25 + 88) = v35;
  *(v25 + 96) = v34;
  *(v25 + 104) = v39;
  *(v25 + 112) = v2;
  v28 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v22, v25 + *(v28 + 36));

  return _swift_asyncLet_finish(v1 + 656, v1 + 1400, sub_10000E55C, v1 + 1408);
}

uint64_t sub_10000D858()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1536);
  swift_getObjectType();
  v38 = v1;
  v5 = v1;
  v6 = [v2 identifier];
  v37 = sub_1000DB950();
  v36 = v7;

  swift_unknownObjectRetain();
  v8 = sub_10000FEE0(v2, v4);
  v34 = v9;
  v35 = v8;
  v33 = v10;
  sub_1000DBE20();
  v11 = sub_1000D8F30();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v3, 1, v11);
  v14 = *(v0 + 1664);
  v15 = *(v0 + 1656);
  v16 = *(v0 + 1648);
  v17 = *(v0 + 1640);
  v18 = *(v0 + 1632);
  v30 = *(v0 + 1624);
  if (v13 == 1)
  {
    v19 = *(v0 + 1560);
    sub_100010190(v38);
    sub_1000101A0(v17, v16, v15, v14, v18 == 0);

    sub_10000F970(v19, &qword_100114D80, &type metadata accessor for URL);
    v20 = 1;
  }

  else
  {
    v29 = *(v0 + 1560);
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    sub_1000D8E20();
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v17, v16, v15, v14, v18 == 0);
    sub_100010190(v38);

    (*(v12 + 8))(v29, v11);
    v20 = 0;
  }

  v21 = *(v0 + 1568);
  v22 = *(v0 + 1512);
  v23 = *(v0 + 1504);
  v24 = *(v0 + 1448);
  v25 = *(v0 + 1632) == 0;
  v31 = *(v0 + 1640);
  v32 = *(v0 + 1656);
  (*(v12 + 56))(v21, v20, 1, v11);
  sub_1000101E0(0);
  *(v0 + 1688) = *(v26 + 48);
  *v24 = v37;
  *(v24 + 8) = v36;
  *(v24 + 16) = 0;
  *(v24 + 40) = v32;
  *(v24 + 24) = v31;
  *(v24 + 56) = v25;
  *(v24 + 64) = v23;
  *(v24 + 72) = v22;
  *(v24 + 80) = v35;
  *(v24 + 88) = v34;
  *(v24 + 96) = v33;
  *(v24 + 104) = v38;
  *(v24 + 112) = 0;
  v27 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v21, v24 + *(v27 + 36));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1400, sub_10000E55C, v0 + 1408);
}

uint64_t sub_10000DC54()
{

  v0 = sub_1000D9B70();
  v2 = v1;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {

LABEL_3:
    v5 = sub_10000DD78;
    goto LABEL_9;
  }

  if (sub_1000D9B60() == v0 && v6 == v2)
  {
  }

  else
  {
    v7 = sub_1000DC360();

    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v5 = sub_10000E168;
LABEL_9:

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000DD78()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1536);
  swift_getObjectType();
  v5 = v1;
  v6 = [v2 identifier];
  v37 = sub_1000DB950();
  v36 = v7;

  swift_unknownObjectRetain();
  v8 = sub_10000FEE0(v2, v4);
  v34 = v9;
  v35 = v8;
  v33 = v10;
  sub_1000DBE20();
  v11 = sub_1000D8F30();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v3, 1, v11);
  v29 = *(v0 + 1656);
  v30 = *(v0 + 1664);
  v14 = *(v0 + 1648);
  v15 = *(v0 + 1640);
  v16 = *(v0 + 1632);
  v17 = *(v0 + 1624);
  if (v13 == 1)
  {
    v18 = *(v0 + 1560);
    v19 = 1;
    sub_100010190(1);
    sub_1000101A0(v15, v14, v29, v30, v16 == 0);

    sub_10000F970(v18, &qword_100114D80, &type metadata accessor for URL);
  }

  else
  {
    v20 = *(v0 + 1560);
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    sub_1000D8E20();
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v15, v14, v29, v30, v16 == 0);
    sub_100010190(1);

    (*(v12 + 8))(v20, v11);
    v19 = 0;
  }

  v21 = *(v0 + 1568);
  v22 = *(v0 + 1512);
  v23 = *(v0 + 1504);
  v24 = *(v0 + 1448);
  v25 = *(v0 + 1632) == 0;
  v31 = *(v0 + 1640);
  v32 = *(v0 + 1656);
  (*(v12 + 56))(v21, v19, 1, v11);
  sub_1000101E0(0);
  *(v0 + 1688) = *(v26 + 48);
  *v24 = v37;
  *(v24 + 8) = v36;
  *(v24 + 16) = 0;
  *(v24 + 40) = v32;
  *(v24 + 24) = v31;
  *(v24 + 56) = v25;
  *(v24 + 64) = v23;
  *(v24 + 72) = v22;
  *(v24 + 80) = v35;
  *(v24 + 88) = v34;
  *(v24 + 96) = v33;
  *(v24 + 104) = 1;
  *(v24 + 112) = 0;
  v27 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v21, v24 + *(v27 + 36));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1400, sub_10000E55C, v0 + 1408);
}

uint64_t sub_10000E168()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1536);
  swift_getObjectType();
  v5 = v1;
  v6 = [v2 identifier];
  v36 = sub_1000DB950();
  v35 = v7;

  swift_unknownObjectRetain();
  v8 = sub_10000FEE0(v2, v4);
  v33 = v9;
  v34 = v8;
  v32 = v10;
  sub_1000DBE20();
  v11 = sub_1000D8F30();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v3, 1, v11);
  v29 = *(v0 + 1664);
  v14 = *(v0 + 1656);
  v15 = *(v0 + 1648);
  v16 = *(v0 + 1640);
  v17 = *(v0 + 1632);
  v18 = *(v0 + 1624);
  v19 = *(v0 + 1560);
  if (v13 == 1)
  {
    sub_100010190(0);
    sub_1000101A0(v16, v15, v14, v29, v17 == 0);

    sub_10000F970(v19, &qword_100114D80, &type metadata accessor for URL);
    v20 = 1;
  }

  else
  {
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    sub_1000D8E20();
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v16, v15, v14, v29, v17 == 0);
    sub_100010190(0);

    (*(v12 + 8))(v19, v11);
    v20 = 0;
  }

  v21 = *(v0 + 1568);
  v22 = *(v0 + 1512);
  v23 = *(v0 + 1504);
  v24 = *(v0 + 1448);
  v25 = *(v0 + 1632) == 0;
  v30 = *(v0 + 1640);
  v31 = *(v0 + 1656);
  (*(v12 + 56))(v21, v20, 1, v11);
  sub_1000101E0(0);
  *(v0 + 1688) = *(v26 + 48);
  *v24 = v36;
  *(v24 + 8) = v35;
  *(v24 + 16) = 0;
  *(v24 + 40) = v31;
  *(v24 + 24) = v30;
  *(v24 + 56) = v25;
  *(v24 + 64) = v23;
  *(v24 + 72) = v22;
  *(v24 + 80) = v34;
  *(v24 + 88) = v33;
  *(v24 + 96) = v32;
  *(v24 + 104) = 0;
  *(v24 + 112) = 0;
  v27 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v21, v24 + *(v27 + 36));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1400, sub_10000E55C, v0 + 1408);
}

uint64_t sub_10000E578()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 1352, sub_10000E5E4, v0 + 1456);
}

uint64_t sub_10000E600()
{
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1592);
  swift_unknownObjectRelease();

  v3 = sub_1000D9640();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000E6EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000E70C, 0, 0);
}

void sub_10000E70C()
{
  v1 = [*(v0 + 24) thumbnailWidget];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 thumbnailAssetHandle];
    *(v0 + 32) = v3;

    if (v3)
    {
      v4 = swift_task_alloc();
      *(v0 + 40) = v4;
      *v4 = v0;
      v4[1] = sub_10000E81C;

      sub_1000D67C0();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    **(v0 + 16) = 0;
    v5 = *(v0 + 8);

    v5();
  }
}

uint64_t sub_10000E81C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000107A0, 0, 0);
}

uint64_t sub_10000E938(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000E958, 0, 0);
}

uint64_t sub_10000E958()
{
  v1 = [*(v0 + 24) sourceChannel];
  if (v1 && (v2 = [v1 nameImageMaskWidgetHQAssetHandle], *(v0 + 32) = v2, swift_unknownObjectRelease(), v2))
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_10000EA68;

    return sub_1000D67C0();
  }

  else
  {
    **(v0 + 16) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10000EA68(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10000EB84, 0, 0);
}

uint64_t sub_10000EBA8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10000F738(0);
  v8 = (a2 + *(v7 + 48));
  v9 = *v8;
  v10 = v8[1];
  v11 = (a2 + *(v7 + 64));
  v12 = *v11;
  v13 = v11[1];
  v16 = (a3 + *a3);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000ECF4;

  return v16(a1, a2, v9, v10, v12, v13);
}

uint64_t sub_10000ECF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000EDE8()
{
  sub_100006D0C((v0 + 16));
  swift_unknownObjectRelease();
  sub_100006D0C((v0 + 72));

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100006D0C((v0 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadlineViewModelService(uint64_t a1)
{
  result = qword_100114C58;
  if (!qword_100114C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000EF10(uint64_t a1)
{
  result = sub_1000DA370();
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

id sub_10000EFD0(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    a3 = a2;
  }

  [a3 red];
  v6 = v5;
  [a3 green];
  v8 = v7;
  [a3 blue];
  v10 = v9;
  [a3 alpha];
  v12 = v11;
  v13 = objc_allocWithZone(UIColor);

  return [v13 initWithRed:v6 green:v8 blue:v10 alpha:v12];
}

id sub_10000F09C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_10000F20C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  sub_10001072C(0, a2, a3, &type metadata accessor for Optional);
  __chkstk_darwin(v12 - 8);
  v14 = &v17 - v13;
  sub_100010454(a1, &v17 - v13, a2, a3);
  v15 = a4(0);
  result = (*(*(v15 - 8) + 48))(v14, 1, v15);
  if (result != 1)
  {
    return sub_100010314(v14, a6, a5);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10001079C;

  return sub_10000C578(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_10000F41C()
{

  return swift_deallocObject();
}

uint64_t sub_10000F454(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001079C;

  return sub_10000EBA8(a1, a2, v6);
}

void sub_10000F51C(uint64_t a1)
{
  if (!qword_100114D18)
  {
    sub_10000F5C8(255);
    sub_10000F738(255);
    sub_10000F830(&qword_100114D58, sub_10000F5C8, &protocol conformance descriptor for LazyFilterSequence<A>);
    v1 = sub_1000DC0B0();
    if (!v2)
    {
      atomic_store(v1, &qword_100114D18);
    }
  }
}

void sub_10000F5C8(uint64_t a1)
{
  if (!qword_100114D20)
  {
    sub_10000F65C(255);
    sub_10000F830(&qword_100114D50, sub_10000F65C, &protocol conformance descriptor for LazyMapSequence<A, B>);
    v1 = sub_1000DC100();
    if (!v2)
    {
      atomic_store(v1, &qword_100114D20);
    }
  }
}

void sub_10000F65C(uint64_t a1)
{
  if (!qword_100114D28)
  {
    sub_10001072C(255, &qword_100114D30, &type metadata accessor for Headline, &type metadata accessor for ArraySlice);
    sub_10001072C(255, &qword_100114D38, sub_10000F738, &type metadata accessor for Optional);
    sub_10000F7A8();
    v1 = sub_1000DC0B0();
    if (!v2)
    {
      atomic_store(v1, &qword_100114D28);
    }
  }
}

void sub_10000F738(uint64_t a1)
{
  if (!qword_100114D40)
  {
    sub_1000D9C30();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100114D40);
    }
  }
}

unint64_t sub_10000F7A8()
{
  result = qword_100114D48;
  if (!qword_100114D48)
  {
    sub_10001072C(255, &qword_100114D30, &type metadata accessor for Headline, &type metadata accessor for ArraySlice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114D48);
  }

  return result;
}

uint64_t sub_10000F830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F878(uint64_t a1)
{
  sub_10000F51C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000F8D4(uint64_t a1)
{
  if (!qword_100114D70)
  {
    sub_10001072C(255, &qword_100114D78, &type metadata accessor for HeadlineCondition, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100114D70);
    }
  }
}

uint64_t sub_10000F970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_10001072C(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000F9E0(uint64_t a1, uint64_t a2)
{
  sub_10001072C(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FA74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001079C;

  return sub_10000E6EC(a1, v4);
}

unint64_t sub_10000FB14()
{
  result = qword_100114D98;
  if (!qword_100114D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100114D98);
  }

  return result;
}

uint64_t sub_10000FB60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ECF4;

  return sub_10000E938(a1, v4);
}

void *sub_10000FC00(uint64_t a1, void *a2)
{
  v30 = a2;
  v3 = sub_1000D9C30();
  __chkstk_darwin(v3);
  v31 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v29 = *(a1 + 16);
  if (!v29)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = 0;
  v12 = *(v6 + 16);
  v11 = v6 + 16;
  v13 = *(v11 + 56);
  v32 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v25 = a1 + v32;
  v26 = v12;
  v24 = (v11 - 8);
  v28 = (v11 + 16);
  v14 = _swiftEmptyArrayStorage;
  v27 = v11;
  do
  {
    v33 = v10 + 1;
    v26(v9, v25 + v13 * v10, v3, v7);
    v17 = *(*v30 + 16);
    v18 = *v30 + v32;

    v19 = v17 + 1;
    while (--v19)
    {
      sub_10000F830(&unk_100114E40, &type metadata accessor for Headline, &protocol conformance descriptor for Headline);
      v18 += v13;
      if (sub_1000DB8D0())
      {

        (*v24)(v9, v3);
        goto LABEL_6;
      }
    }

    v20 = *v28;
    (*v28)(v31, v9, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10007BC9C(0, v14[2] + 1, 1);
      v14 = v34;
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      sub_10007BC9C((v15 > 1), v16 + 1, 1);
      v14 = v34;
    }

    v14[2] = v16 + 1;
    v20(v14 + v32 + v16 * v13, v31, v3);
LABEL_6:
    v10 = v33;
  }

  while (v33 != v29);
  return v14;
}

id sub_10000FEE0(void *a1, id a2)
{
  if ([a2 containsHeadline:a1] || objc_msgSend(a1, "isPressRelease"))
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v5 = [a1 storyStyle];
  if (!v5)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v6 = v5;
  if ([a1 storyType] == 1 || objc_msgSend(a1, "storyType") == 5 || objc_msgSend(a1, "storyType"))
  {
    swift_unknownObjectRelease();

    return 0;
  }

  result = [v6 label];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = sub_1000DB950();

  result = [v6 foreground_color];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  result = [v6 dark_style_foreground_color];
  if (result)
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = objc_allocWithZone(UIColor);
    v16[4] = sub_1000102F4;
    v16[5] = v11;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10000F09C;
    v16[3] = &unk_100109140;
    v13 = _Block_copy(v16);
    v14 = v10;
    v15 = v9;
    [v12 initWithDynamicProvider:v13];
    _Block_release(v13);

    sub_1000DB300();

    swift_unknownObjectRelease();
    return v8;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100010190(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000101A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

void sub_1000101E0(uint64_t a1)
{
  if (!qword_100114DA0)
  {
    sub_100010250();
    sub_1000D9640();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100114DA0);
    }
  }
}

unint64_t sub_100010250()
{
  result = qword_100114DA8;
  if (!qword_100114DA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100114DA8);
  }

  return result;
}

uint64_t sub_1000102B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000102FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10001037C(uint64_t a1)
{
  if (!qword_100114E10)
  {
    sub_1000D9C30();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100114E10);
    }
  }
}

void sub_1000103E8(uint64_t a1)
{
  if (!qword_100114E20)
  {
    sub_1000D9090();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100114E20);
    }
  }
}

uint64_t sub_100010454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_10001072C(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000104D4()
{
  v1 = sub_1000DA370();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10001055C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000DA370();

  return sub_10000C038(a1, a2);
}

uint64_t sub_1000105DC()
{

  return swift_deallocObject();
}

uint64_t sub_100010614(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000ECF4;

  return sub_10000EBA8(a1, a2, v6);
}

void sub_1000106DC()
{
  if (!qword_100114E28)
  {
    v0 = sub_1000DBBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100114E28);
    }
  }
}

void sub_10001072C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000107AC()
{
  result = qword_100114E78;
  if (!qword_100114E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E78);
  }

  return result;
}

unint64_t sub_100010804()
{
  result = qword_100114E80;
  if (!qword_100114E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E80);
  }

  return result;
}

uint64_t sub_100010858()
{
  type metadata accessor for PrivacyIdentifierManager();
  v0 = swift_allocObject();
  sub_1000D9CD0();
  sub_100002540();
  swift_allocObject();
  result = sub_1000D9DD0();
  *(v0 + 16) = result;
  off_100114E50 = v0;
  return result;
}

uint64_t BilingualFeedManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100010948(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000109EC;

  return sub_100014640();
}

uint64_t sub_1000109EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

unint64_t sub_100010B14()
{
  result = qword_100114E88;
  if (!qword_100114E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E88);
  }

  return result;
}

uint64_t sub_100010B68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000154F4();
  *v4 = v2;
  v4[1] = sub_100010C18;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_100010C18(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_100010D30()
{
  result = qword_100114E90;
  if (!qword_100114E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E90);
  }

  return result;
}

unint64_t sub_100010D88()
{
  result = qword_100114E98;
  if (!qword_100114E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E98);
  }

  return result;
}

unint64_t sub_100010DDC()
{
  result = qword_100114EA0;
  if (!qword_100114EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EA0);
  }

  return result;
}

uint64_t sub_100010E30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000154F4();
  *v5 = v2;
  v5[1] = sub_10001557C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100010EE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000154F4();
  *v4 = v2;
  v4[1] = sub_100015558;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_100010F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100011054;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100011054(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100011158()
{
  result = qword_100114EA8;
  if (!qword_100114EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EA8);
  }

  return result;
}

unint64_t sub_1000111AC()
{
  result = qword_100114EB0;
  if (!qword_100114EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EB0);
  }

  return result;
}

unint64_t sub_100011204()
{
  result = qword_100114EB8;
  if (!qword_100114EB8)
  {
    sub_10001127C();
    sub_1000111AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EB8);
  }

  return result;
}

void sub_10001127C()
{
  if (!qword_100114EC0)
  {
    v0 = sub_1000DBBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100114EC0);
    }
  }
}

uint64_t sub_1000112CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100010B14();
  *v5 = v2;
  v5[1] = sub_10001079C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100011380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001079C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10001143C()
{
  result = qword_100114EC8;
  if (!qword_100114EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EC8);
  }

  return result;
}

void sub_1000114D8(uint64_t a1)
{
  if (!qword_100114ED8)
  {
    sub_1000115A4(255);
    sub_100010DDC();
    sub_100011674(&qword_100114EF0, sub_1000115A4, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_1000116BC();
    v1 = sub_1000D8D20();
    if (!v2)
    {
      atomic_store(v1, &qword_100114ED8);
    }
  }
}

void sub_1000115A4(uint64_t a1)
{
  if (!qword_100114EE0)
  {
    sub_100010DDC();
    sub_100011620();
    v1 = sub_1000D8D00();
    if (!v2)
    {
      atomic_store(v1, &qword_100114EE0);
    }
  }
}

unint64_t sub_100011620()
{
  result = qword_100114EE8;
  if (!qword_100114EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EE8);
  }

  return result;
}

uint64_t sub_100011674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000116BC()
{
  result = qword_100114EF8;
  if (!qword_100114EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EF8);
  }

  return result;
}

uint64_t sub_100011710()
{
  sub_1000153AC(0, &qword_100114F30, sub_100010804, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for _UniqueEntityProvider);
  v1 = v0;
  sub_1000152CC(v0, qword_100128D20);
  sub_100015294(v1, qword_100128D20);
  sub_100010804();
  return sub_1000D8BD0();
}

uint64_t sub_1000117C8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000D8E80();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000D91C0();
  v1[6] = swift_task_alloc();
  sub_1000DB900();
  v1[7] = swift_task_alloc();
  sub_1000D8E90();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001190C, 0, 0);
}

uint64_t sub_10001190C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_1000114D8(0);
  sub_1000DB8F0();
  sub_1000D9170();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000D8EA0();
  sub_100011674(&qword_1001150C0, sub_1000115A4, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v5 = sub_1000D8D10();
  *v4 = 0xD000000000000023;
  v4[1] = 0x80000001000DEE20;
  v4[2] = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_100011AD8()
{
  v0 = sub_1000D8CC0();
  sub_1000152CC(v0, qword_100128D38);
  sub_100015294(v0, qword_100128D38);
  return sub_1000D8CA0();
}

uint64_t sub_100011B3C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  sub_100015420(0, &qword_1001150B8, &type metadata accessor for DisplayRepresentation.Image);
  __chkstk_darwin(v1 - 8);
  v17 = &v16 - v2;
  v16 = sub_1000D8E80();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D91C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000DB900();
  __chkstk_darwin(v7 - 8);
  sub_100015420(0, &qword_100115090, &type metadata accessor for LocalizedStringResource);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1000D8E90();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  sub_1000D8E70();
  sub_1000DB8F0();
  sub_1000D9170();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  sub_1000D8EA0();
  (*(v12 + 56))(v10, 0, 1, v11);
  v14 = sub_1000D8B40();
  (*(*(v14 - 8) + 56))(v17, 1, 1, v14);
  sub_1000D8E70();
  return sub_1000D8B50();
}

uint64_t sub_100011F10()
{
  v0 = sub_1000D8E90();
  sub_1000152CC(v0, qword_100128D50);
  sub_100015294(v0, qword_100128D50);
  return sub_1000D8E70();
}

uint64_t sub_100011F74()
{
  sub_100015420(0, &qword_100115108, &type metadata accessor for IntentDescription);
  v1 = v0;
  sub_1000152CC(v0, qword_100128D68);
  v2 = sub_100015294(v1, qword_100128D68);
  sub_1000D8A90();
  v3 = sub_1000D8AA0();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 0, 1, v3);
}

uint64_t sub_100012044()
{
  result = swift_getKeyPath();
  qword_100128D80 = result;
  return result;
}

uint64_t sub_100012074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_100015420(0, &qword_1001150D8, &type metadata accessor for _GeneratedContentFallback);
  v3[23] = swift_task_alloc();
  sub_100015420(0, &qword_1001150E0, &type metadata accessor for _GeneratedContentOptions);
  v3[24] = swift_task_alloc();
  sub_100015330(0);
  v3[25] = swift_task_alloc();
  v4 = sub_1000D8A10();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  sub_1000153AC(0, &qword_1001150F0, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for IntentDialog._CapturedContent);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100012294, 0, 0);
}

uint64_t sub_100012294()
{
  sub_1000D8A40();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100010DDC();
  *v2 = v0;
  v2[1] = sub_100012378;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_100015554, 0, &type metadata for ResetPrivacyIdentifierSettingEntity, v3);
}

uint64_t sub_100012378()
{

  return _swift_task_switch(sub_100012474, 0, 0);
}

uint64_t sub_100012474()
{
  sub_1000D8A40();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1000D8A40();
  *(v0 + 313) = *(v0 + 312);
  if (qword_100114048 != -1)
  {
    swift_once();
  }

  v3 = qword_100128D80;
  *(v0 + 288) = qword_100128D80;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_100011674(&qword_1001150C0, sub_1000115A4, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000125DC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000125DC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1000129C4;
  }

  else
  {
    v2 = sub_10001274C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001274C(uint64_t a1)
{
  v2 = v1[31];
  v3 = v1[29];
  v4 = v1[30];
  v12 = v1[32];
  v13 = v1[28];
  v15 = v1[27];
  v16 = v1[26];
  v5 = v1[23];
  v6 = v1[24];
  sub_1000D8A40();
  v7 = v1[15];
  v14 = v1[16];
  v1[17] = v1[14];
  v1[18] = v7;
  v1[19] = v14;
  v8 = sub_1000D8C90();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000D8CD0();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10001143C();
  sub_1000111AC();
  sub_1000D89D0();
  (*(v4 + 16))(v2, v12, v3);
  sub_1000D8A00();
  sub_1000D8A20();
  (*(v15 + 8))(v13, v16);

  (*(v4 + 8))(v12, v3);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1000129C4()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100012A8C()
{
  sub_1000153AC(0, &qword_1001150F8, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for _NLGRepresentationEntity);
  v1 = v0;
  v2 = *(v0 - 8);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100114048 != -1)
  {
    swift_once();
  }

  sub_1000D8B20();

  sub_1000111AC();
  sub_1000138F8(&qword_100115100, &qword_1001150F8, &type metadata accessor for _NLGRepresentationEntity, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000D8B10();
  return (*(v2 + 8))(v4, v1);
}

__n128 sub_100012C38@<Q0>(uint64_t a2@<X8>)
{
  sub_1000D8A40();
  result = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100012C7C(void *a1)
{

  sub_1000D8A50();
}

uint64_t (*sub_100012CE4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D8A30();
  return sub_100012D58;
}

uint64_t sub_100012D5C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000D8A40();
  *a2 = v4;
  return result;
}

uint64_t (*sub_100012DD0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D8A30();
  return sub_10001555C;
}

uint64_t sub_100012E44()
{
  if (qword_100114048 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100012EA4()
{
  result = qword_100114F00;
  if (!qword_100114F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F00);
  }

  return result;
}

unint64_t sub_100012EFC()
{
  result = qword_100114F08;
  if (!qword_100114F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F08);
  }

  return result;
}

uint64_t sub_100012FE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100114040 != -1)
  {
    swift_once();
  }

  sub_100015420(0, &qword_100115108, &type metadata accessor for IntentDescription);
  v3 = sub_100015294(v2, qword_100128D68);

  return sub_100015474(v3, a1);
}

uint64_t sub_10001307C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000ECF4;

  return sub_100012074(a1, v5, v4);
}

uint64_t sub_100013128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014948();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100013170()
{
  result = qword_100114F10;
  if (!qword_100114F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F10);
  }

  return result;
}

unint64_t sub_1000131C8()
{
  result = qword_100114F18;
  if (!qword_100114F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F18);
  }

  return result;
}

unint64_t sub_100013220()
{
  result = qword_100114F20;
  if (!qword_100114F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F20);
  }

  return result;
}

uint64_t sub_1000132D4()
{
  if (qword_100114020 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  sub_1000D9DA0();

  *v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000133CC()
{
  if (qword_100114020 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 17);

  sub_1000D9DB0();

  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_1000DB910();
  [v1 postNotificationName:v2 object:0 userInfo:0 options:1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001350C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100114028 != -1)
  {
    swift_once();
  }

  sub_1000153AC(0, &qword_100114F30, sub_100010804, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for _UniqueEntityProvider);
  v3 = v2;
  v4 = sub_100015294(v2, qword_100128D20);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_100013624(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000153AC(255, &qword_100114F30, sub_100010804, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for _UniqueEntityProvider);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000136A4()
{
  result = qword_100114F40;
  if (!qword_100114F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F40);
  }

  return result;
}

unint64_t sub_1000136FC()
{
  result = qword_100114F48;
  if (!qword_100114F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F48);
  }

  return result;
}

unint64_t sub_100013758()
{
  result = qword_100114F50;
  if (!qword_100114F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F50);
  }

  return result;
}

uint64_t sub_1000137B8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100013800@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100015294(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000138F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000153AC(255, a2, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001395C(uint64_t a1)
{
  v2 = sub_100010DDC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000139AC()
{
  result = qword_100114F68;
  if (!qword_100114F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F68);
  }

  return result;
}

uint64_t sub_100013A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000ECF4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100013AC8(uint64_t a1)
{
  v2 = sub_100013758();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100013B14()
{
  v0 = qword_100114E58;

  return v0;
}

unint64_t sub_100013B50()
{
  result = qword_100114F70;
  if (!qword_100114F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F70);
  }

  return result;
}

uint64_t sub_100013BA4(uint64_t a1)
{
  v2 = sub_100010DDC();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004CLL, 0x80000001000E8020, a1, v2);
}

uint64_t sub_100013C08(uint64_t a1)
{
  sub_100015240();
  v2 = sub_1000D8C30();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100013C78()
{
  result = qword_100114F78;
  if (!qword_100114F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F78);
  }

  return result;
}

uint64_t sub_100013CCC()
{
  v0 = sub_1000D8E90();
  sub_1000152CC(v0, qword_100128D88);
  sub_100015294(v0, qword_100128D88);
  return sub_1000D8E70();
}

uint64_t (*sub_100013D30(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D8A30();
  return sub_10001555C;
}

void sub_100013DA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100013DF4()
{
  result = qword_100114F80;
  if (!qword_100114F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F80);
  }

  return result;
}

unint64_t sub_100013E4C()
{
  result = qword_100114F88;
  if (!qword_100114F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F88);
  }

  return result;
}

uint64_t sub_100013EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015198();
  v5 = sub_100015240();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100013F0C()
{
  v0 = qword_100114E68;

  return v0;
}

unint64_t sub_100013F4C()
{
  result = qword_100114F90;
  if (!qword_100114F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F90);
  }

  return result;
}

unint64_t sub_100013FA4()
{
  result = qword_100114F98;
  if (!qword_100114F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F98);
  }

  return result;
}

uint64_t sub_1000140B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100015198();
  v7 = sub_1000151EC();
  v8 = sub_100015240();
  *v5 = v2;
  v5[1] = sub_100014184;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100014184()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10001428C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014E2C();
  *a1 = result;
  return result;
}

uint64_t sub_1000142B4(uint64_t a1)
{
  v2 = sub_100013DF4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100014324(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100014330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100014378(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 initializeBufferWithCopyOfBuffer for TextOverflowModifier.Layout(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000143D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100014420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000144C8(uint64_t a1)
{
  if (!qword_100115068)
  {
    sub_1000D8A10();
    sub_1000111AC();
    sub_10001455C();
    v1 = sub_1000D8BC0();
    if (!v2)
    {
      atomic_store(v1, &qword_100115068);
    }
  }
}

unint64_t sub_10001455C()
{
  result = qword_100115070;
  if (!qword_100115070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115070);
  }

  return result;
}

uint64_t sub_100014640()
{
  v1 = sub_1000D8E80();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000D91C0();
  v0[5] = swift_task_alloc();
  sub_1000DB900();
  v0[6] = swift_task_alloc();
  sub_1000D8E90();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100014780, 0, 0);
}

uint64_t sub_100014780()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000114D8(0);
  sub_1000DB8F0();
  sub_1000D9170();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000D8EA0();
  sub_100011674(&qword_1001150C0, sub_1000115A4, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_1000D8D10();

  v5 = v0[1];

  return v5(0xD000000000000023, 0x80000001000DEE20, v4);
}

uint64_t sub_100014948()
{
  sub_100015420(0, &qword_1001150C8, &type metadata accessor for Bool.IntentDisplayName);
  __chkstk_darwin(v0 - 8);
  v32 = &v23 - v1;
  v33 = sub_1000D8C20();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015420(0, &qword_100115088, &type metadata accessor for IntentDialog);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_100015420(0, &qword_100115090, &type metadata accessor for LocalizedStringResource);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_1000D8E90();
  v30 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v31 = &type metadata accessor for IntentParameter;
  sub_1000153AC(0, &qword_100115098, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for IntentParameter);
  v24 = v16;
  sub_1000D8E70();
  v17 = *(v15 + 56);
  v28 = v15 + 56;
  v29 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1000D8A10();
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v2 + 104);
  v25 = v2 + 104;
  v26 = v20;
  v20(v4);
  sub_100010DDC();
  v24 = sub_1000D8A70();
  sub_1000153AC(0, &qword_1001150D0, sub_100011620, &type metadata for Bool, v31);
  sub_1000D8E70();
  v29(v13, 1, 1, v30);
  LOBYTE(v34) = 2;
  v21 = sub_1000DBBD0();
  (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
  v19(v10, 1, 1, v18);
  v26(v4, v27, v33);
  sub_1000D8A80();
  return v24;
}

uint64_t sub_100014E2C()
{
  v17[0] = sub_1000D8C20();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015420(0, &qword_100115088, &type metadata accessor for IntentDialog);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  sub_100015420(0, &qword_100115090, &type metadata accessor for LocalizedStringResource);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1000D8E90();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000153AC(0, &qword_100115098, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for IntentParameter);
  sub_1000D8E70();
  sub_1000D8E70();
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = sub_1000D8A10();
  memset(&v17[1], 0, 24);
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100010DDC();
  return sub_1000D8A70();
}

unint64_t sub_100015198()
{
  result = qword_1001150A0;
  if (!qword_1001150A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001150A0);
  }

  return result;
}

unint64_t sub_1000151EC()
{
  result = qword_1001150A8;
  if (!qword_1001150A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001150A8);
  }

  return result;
}

unint64_t sub_100015240()
{
  result = qword_1001150B0;
  if (!qword_1001150B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001150B0);
  }

  return result;
}

uint64_t sub_100015294(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000152CC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100015330(uint64_t a1)
{
  if (!qword_1001150E8)
  {
    sub_10001143C();
    sub_1000111AC();
    v1 = sub_1000D89E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1001150E8);
    }
  }
}

void sub_1000153AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_100015420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100015474(uint64_t a1, uint64_t a2)
{
  sub_100015420(0, &qword_100115108, &type metadata accessor for IntentDescription);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000154F4()
{
  result = qword_100115110;
  if (!qword_100115110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115110);
  }

  return result;
}

__n128 sub_100015580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000155C0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100015604@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100016838(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100015644(uint64_t a1)
{
  v2 = sub_100016BA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100015680(uint64_t a1)
{
  v2 = sub_100016BA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000156BC(void *a1)
{
  sub_100016BF8(0, &qword_100115130, &type metadata accessor for KeyedEncodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  sub_100006C7C(a1, a1[3]);
  sub_100016BA4();
  sub_1000DC480();
  v9[15] = 0;
  sub_1000DC2B0();
  if (!v1)
  {
    v9[14] = 1;
    sub_1000DC2B0();
    v9[13] = 2;
    sub_1000DC270();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_100015848()
{
  v1 = *(v0 + 40);
  sub_1000DC420();
  sub_1000DB9F0();
  sub_1000DB9F0();
  if (v1)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  return sub_1000DC460();
}

void sub_1000158F0(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1000DB9F0();
  sub_1000DB9F0();
  if (v2)
  {
    sub_1000DC440(1u);

    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }
}

Swift::Int sub_10001598C(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1000DC420();
  sub_1000DB9F0();
  sub_1000DB9F0();
  if (v2)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  return sub_1000DC460();
}

uint64_t sub_100015A30(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1000DC360()) && (v2 == v6 && v4 == v7 || (sub_1000DC360()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_1000DC360() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

double sub_100015B14@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100016944(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_100015B74()
{
  result = qword_100115118;
  if (!qword_100115118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115118);
  }

  return result;
}

uint64_t sub_100015BC8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = sub_1000DAE60();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v20 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DA890();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000172E0(0);
  v8 = v7;
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000175D8(0);
  v12 = v11;
  v13 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = sub_1000DAC80();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1000176D4(0, &qword_1001151E8, sub_100017374, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  sub_100015F48(v1, &v10[*(v16 + 44)]);
  (*(v4 + 104))(v6, enum case for DynamicTypeSize.large(_:), v3);
  v17 = sub_10001768C(&qword_1001151E0, sub_1000172E0, &protocol conformance descriptor for HStack<A>);
  sub_1000DB260();
  (*(v4 + 8))(v6, v3);
  sub_1000178D0(v10, sub_1000172E0);
  v18 = v20;
  sub_1000DAE40();
  v24 = v8;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1000DB2A0();
  (*(v21 + 8))(v18, v23);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100015F48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = sub_1000D91C0();
  __chkstk_darwin(v3 - 8);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000DB900();
  __chkstk_darwin(v5 - 8);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017570(0);
  __chkstk_darwin(v7 - 8);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v62 - v10;
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  v63 = v13;
  v78 = v11;
  v79 = v12;
  v75 = sub_100017740();

  v15 = sub_1000DB170();
  v17 = v16;
  v19 = v18;
  sub_1000DB070();
  sub_1000DAFD0();
  sub_1000DB010();

  v20 = sub_1000DB100();
  v22 = v21;
  v24 = v23;

  sub_100017794(v15, v17, v19 & 1);

  LODWORD(v78) = sub_1000DADE0();
  v67 = sub_1000DB0E0();
  v66 = v25;
  v68 = v26;
  v69 = v27;
  sub_100017794(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v64 = v14 == 0;
  v28 = 9666786;
  if (v14)
  {
    v28 = v63;
  }

  v29 = 0xA300000000000000;
  if (v14)
  {
    v29 = v14;
  }

  v78 = v28;
  v79 = v29;

  v30 = sub_1000DB170();
  v32 = v31;
  v34 = v33;
  sub_1000DB070();
  sub_1000DAFD0();
  sub_1000DB010();

  v35 = sub_1000DB100();
  v37 = v36;
  v39 = v38;

  sub_100017794(v30, v32, v34 & 1);

  LODWORD(v78) = sub_1000DADE0();
  v40 = sub_1000DB0E0();
  v42 = v41;
  v62 = v41;
  LOBYTE(v30) = v43;
  v45 = v44;
  v63 = v44;
  sub_100017794(v35, v37, v39 & 1);

  v46 = swift_getKeyPath();
  v78 = v40;
  v79 = v42;
  LOBYTE(v35) = v30 & 1;
  v80 = v30 & 1;
  v81 = v45;
  v82 = v46;
  v83 = 1;
  v84 = 0;
  sub_1000DB8F0();
  sub_1000D9170();
  v76 = sub_1000DB9B0();
  v77 = v47;
  v48 = sub_1000DB170();
  v50 = v49;
  v52 = v51;
  sub_100017444(0);
  sub_1000177AC();
  v53 = v72;
  sub_1000DB270();
  sub_100017794(v48, v50, v52 & 1);

  sub_100017794(v40, v62, v35);

  v54 = v73;
  sub_10001785C(v53, v73);
  v55 = v74;
  v56 = v67;
  v57 = v66;
  *v74 = v67;
  v55[1] = v57;
  LOBYTE(v48) = v68 & 1;
  *(v55 + 16) = v68 & 1;
  v58 = KeyPath;
  v55[3] = v69;
  v55[4] = v58;
  v55[5] = 1;
  *(v55 + 48) = 0;
  v55[7] = 0x4014000000000000;
  *(v55 + 64) = 0;
  v59 = v55;
  sub_1000173CC(0);
  sub_10001785C(v54, v59 + *(v60 + 64));
  sub_1000178C0(v56, v57, v48);

  sub_1000178D0(v53, sub_100017570);
  sub_1000178D0(v54, sub_100017570);
  sub_100017794(v56, v57, v48);
}

uint64_t sub_100016544@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v6;
}

uint64_t sub_1000165BC@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v11 = sub_1000DAE60();
  v2 = *(v11 - 8);
  __chkstk_darwin(v11);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016EE8(0);
  __chkstk_darwin(v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  *v7 = sub_1000DAD00();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  sub_1000176D4(0, &qword_100115180, sub_100016F4C, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
  v12 = v8;
  sub_100017520(0, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
  sub_100016FFC();
  sub_1000170F0();
  sub_100017144();

  sub_1000DB590();
  sub_1000DAE50();
  sub_10001768C(&qword_100115190, sub_100016EE8, &protocol conformance descriptor for VStack<A>);
  sub_1000DB2A0();
  (*(v2 + 8))(v4, v11);
  return sub_1000178D0(v7, sub_100016EE8);
}

uint64_t sub_100016838(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000DC360();

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

uint64_t sub_100016944@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100016BF8(0, &qword_100115120, &type metadata accessor for KeyedDecodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  sub_100006C7C(a1, a1[3]);
  sub_100016BA4();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v28 = 0;
  v10 = sub_1000DC1E0();
  v12 = v11;
  v24 = a2;
  v25 = v10;
  v27 = 1;
  v13 = sub_1000DC1E0();
  v23 = v14;
  v26 = 2;
  v15 = sub_1000DC1A0();
  v16 = v9;
  v18 = v17;
  (*(v7 + 8))(v16, v6);
  result = sub_100006D0C(a1);
  v20 = v24;
  *v24 = v25;
  v20[1] = v12;
  v21 = v23;
  v20[2] = v13;
  v20[3] = v21;
  v20[4] = v15;
  v20[5] = v18;
  return result;
}

unint64_t sub_100016BA4()
{
  result = qword_100115128;
  if (!qword_100115128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115128);
  }

  return result;
}

void sub_100016BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100016BA4();
    v7 = a3(a1, &type metadata for QuoteDetailItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for QuoteDetailItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuoteDetailItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100016DB8()
{
  result = qword_100115138;
  if (!qword_100115138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115138);
  }

  return result;
}

unint64_t sub_100016E10()
{
  result = qword_100115140;
  if (!qword_100115140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115140);
  }

  return result;
}

unint64_t sub_100016E68()
{
  result = qword_100115148;
  if (!qword_100115148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115148);
  }

  return result;
}

void sub_100016EE8(uint64_t a1)
{
  if (!qword_100115150)
  {
    sub_100016F4C(255);
    sub_100017078();
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_100115150);
    }
  }
}

void sub_100016F4C(uint64_t a1)
{
  if (!qword_100115158)
  {
    sub_100017520(255, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
    sub_100016FFC();
    v1 = sub_1000DB5A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100115158);
    }
  }
}

unint64_t sub_100016FFC()
{
  result = qword_100115168;
  if (!qword_100115168)
  {
    sub_100017520(255, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115168);
  }

  return result;
}

unint64_t sub_100017078()
{
  result = qword_100115170;
  if (!qword_100115170)
  {
    sub_100016F4C(255);
    sub_1000170F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115170);
  }

  return result;
}

unint64_t sub_1000170F0()
{
  result = qword_100115178;
  if (!qword_100115178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115178);
  }

  return result;
}

unint64_t sub_100017144()
{
  result = qword_100115188;
  if (!qword_100115188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115188);
  }

  return result;
}

uint64_t sub_100017198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000171E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001723C()
{
  sub_100016EE8(255);
  sub_10001768C(&qword_100115190, sub_100016EE8, &protocol conformance descriptor for VStack<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_1000172E0(uint64_t a1)
{
  if (!qword_100115198)
  {
    sub_100017374(255);
    sub_10001768C(&qword_1001151D0, sub_100017374, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100115198);
    }
  }
}

void sub_100017374(uint64_t a1)
{
  if (!qword_1001151A0)
  {
    sub_1000173CC(255);
    v1 = sub_1000DB650();
    if (!v2)
    {
      atomic_store(v1, &qword_1001151A0);
    }
  }
}

void sub_1000173CC(uint64_t a1)
{
  if (!qword_1001151A8)
  {
    sub_100017444(255);
    sub_100017570(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1001151A8);
    }
  }
}

void sub_100017444(uint64_t a1)
{
  if (!qword_1001151B0)
  {
    sub_1000174A4(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001151B0);
    }
  }
}

void sub_1000174A4(uint64_t a1)
{
  if (!qword_1001151B8)
  {
    sub_100017520(255, &qword_1001151C0, &type metadata for Int, &type metadata accessor for Optional);
    v1 = sub_1000DAEA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1001151B8);
    }
  }
}

void sub_100017520(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100017570(uint64_t a1)
{
  if (!qword_1001151C8)
  {
    sub_100017444(255);
    sub_1000DAEB0();
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001151C8);
    }
  }
}

void sub_1000175D8(uint64_t a1)
{
  if (!qword_1001151D8)
  {
    sub_1000172E0(255);
    sub_10001768C(&qword_1001151E0, sub_1000172E0, &protocol conformance descriptor for HStack<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001151D8);
    }
  }
}

uint64_t sub_10001768C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000176D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1000DA800();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_100017740()
{
  result = qword_1001151F0;
  if (!qword_1001151F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001151F0);
  }

  return result;
}

uint64_t sub_100017794(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000177AC()
{
  result = qword_1001151F8;
  if (!qword_1001151F8)
  {
    sub_100017444(255);
    sub_10001768C(&qword_100115200, sub_1000174A4, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001151F8);
  }

  return result;
}

uint64_t sub_10001785C(uint64_t a1, uint64_t a2)
{
  sub_100017570(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000178C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000178D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100017930()
{
  sub_1000175D8(255);
  sub_1000172E0(255);
  sub_10001768C(&qword_1001151E0, sub_1000172E0, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100017A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100017B20(uint64_t a1)
{
  result = sub_1000DA370();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100017C1C(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v26 = _swiftEmptyArrayStorage;
  sub_10007BCEC(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v21 = v8;
    a1(v22, &v21);
    if (v3)
    {
      break;
    }

    v10 = v22[0];
    v9 = v22[1];
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v26 = v5;
    v15 = v5[2];
    v14 = v5[3];
    if (v15 >= v14 >> 1)
    {
      v19 = v25;
      v18 = v23;
      sub_10007BCEC((v14 > 1), v15 + 1, 1);
      v11 = v18;
      v13 = v19;
      v5 = v26;
    }

    v5[2] = v15 + 1;
    v16 = &v5[6 * v15];
    v16[4] = v10;
    v16[5] = v9;
    v16[6] = v11;
    v16[7] = v12;
    *(v16 + 4) = v13;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void *sub_100017D4C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for WidgetStock(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_10007BC0C(0, v10, 0);
  v11 = v21;
  v12 = *(sub_1000D9B40() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_10007BC0C((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_100024B14(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for WidgetStock);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100017F48(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_1000DC050();
    v9 = *(type metadata accessor for PreparedSparkline.Entry(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1000DC020();
      sub_1000DC060();
      sub_1000DC070();
      sub_1000DC030();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001808C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1000D9B40();
    return a2;
  }

  return result;
}

uint64_t sub_100018120@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = result;
  *v17 = *v2;
  *&v17[16] = *(v2 + 16);
  *&v17[32] = *(v2 + 32);
  v6 = sub_100024310();
  sub_100024468(v6, v4, *(*v17 + 16));
  if (v8)
  {
    v9 = *(*v17 + 16);
  }

  else
  {
    v9 = v7;
  }

  result = sub_100024310();
  if (v9 < result)
  {
    goto LABEL_13;
  }

  v10 = result;
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(*v17 + 16);
  if (v11 >= result && v11 >= v9)
  {
    v16 = *(v3 + 40);
    v13 = sub_1000D9C30();
    v14 = *(v13 - 8);
    result = v13 - 8;
    v15 = *v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    *a2 = *v17;
    *(a2 + 8) = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = (2 * v9) | 1;
    *(a2 + 32) = *&v17[8];
    *(a2 + 48) = *&v17[24];
    *(a2 + 64) = v16;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100018248(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1000DA830();
    sub_100025364(qword_100115428, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
    sub_1000DBCC0();
    sub_1000DBD10();
    sub_1000DBCF0();
    if (v4)
    {
      sub_1000DBD10();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1000DBCC0();
    if (v6 >= v5)
    {
      sub_1000DBD60();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100018400(uint64_t result, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a2(0);
    sub_100025364(a3, a4, &protocol conformance descriptor for NonEmpty<A>);
    sub_1000DBCC0();
    sub_1000DBD10();
    sub_1000DBCF0();
    if (v10)
    {
      sub_1000DBD10();
    }

    else
    {
      v8 = v9;
    }

    result = sub_1000DBCC0();
    if (v8 >= v9)
    {
      sub_1000DBD60();
      (*(*(v7 - 8) + 8))(v4, v7);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001854C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000DB720();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DA350();
  v7 = sub_1000DBDD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "DetailTimelineProvider::placeholder(in:)", v8, 2u);
  }

  sub_1000DB7B0();
  sub_100058718(v5, 0, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000186A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100023750(0);
  v4[6] = swift_task_alloc();
  v5 = sub_1000D8AF0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1000D9090();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1000D96D0();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  sub_100023784(0);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100018878, 0, 0);
}

uint64_t sub_100018878(uint64_t a1)
{
  v44 = v1;
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DetailTimelineProvider::snapshot(for:in:)", v4, 2u);
  }

  v5 = v1[8].i64[0];
  v6 = v1[6].i64[1];
  v7 = v1[7].i64[0];

  v42 = 0x2D6C6F626D7973;
  v43 = 0xE700000000000000;
  sub_1000D9960();
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = v1[8].i64[0];
  if (v8)
  {
    sub_100024BE4(v1[8].i64[0], sub_100023784);
    v10 = 0xE300000000000000;
    v11._countAndFlagsBits = 7104878;
  }

  else
  {
    v13 = v1[7].i64[0];
    v12 = v1[7].i64[1];
    v14 = v1[6].i64[1];
    (*(v13 + 16))(v12, v1[8].i64[0], v14);
    sub_100024BE4(v9, sub_100023784);
    v15 = sub_1000D96C0();
    v10 = v16;
    (*(v13 + 8))(v12, v14);
    v11._countAndFlagsBits = v15;
  }

  v17 = v1[5].i64[0];
  v18 = v1[5].i64[1];
  v20 = v1[4].i64[0];
  v19 = v1[4].i64[1];
  v21 = v1[3].i64[0];
  v22 = v1[3].i64[1];
  v11._object = v10;
  sub_1000DBA00(v11);

  v46._countAndFlagsBits = 45;
  v46._object = 0xE100000000000000;
  sub_1000DBA00(v46);
  sub_1000D9970();
  sub_100025364(&qword_100115300, &type metadata accessor for SymbolWidgetConfigurationIntent, &protocol conformance descriptor for SymbolWidgetConfigurationIntent);
  sub_1000D8950();
  sub_1000D8AE0();
  (*(v20 + 8))(v19, v22);
  v23 = *(v18 + 48);
  if (v23(v21, 1, v17) == 1)
  {
    v24 = v1[5].i64[0];
    v25 = v1[3].i64[0];
    sub_1000D9050();
    if (v23(v25, 1, v24) != 1)
    {
      sub_100024BE4(v1[3].i64[0], sub_100023750);
    }
  }

  else
  {
    (*(v1[5].i64[1] + 32))(v1[6].i64[0], v1[3].i64[0], v1[5].i64[0]);
  }

  v27 = v1[5].i64[1];
  v26 = v1[6].i64[0];
  v28 = v1[5].i64[0];
  sub_100025364(&qword_100115308, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v47._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v47);

  (*(v27 + 8))(v26, v28);
  v29 = v42;
  v30 = v43;
  v1[8].i64[1] = v42;
  v1[9].i64[0] = v30;

  v31 = sub_1000DA350();
  v32 = sub_1000DBDD0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_1000848C8(v29, v30, &v42);
    _os_log_impl(&_mh_execute_header, v31, v32, "Will fetch widget snapshot, id=%{public}s", v33, 0xCu);
    sub_100006D0C(v34);
  }

  v35 = v1[1].i64[1];
  v36 = swift_task_alloc();
  v1[9].i64[1] = v36;
  v37 = v1[2];
  v36[1].i64[0] = v29;
  v36[1].i64[1] = v30;
  v36[2] = vextq_s8(v37, v37, 8uLL);
  v36[3].i64[0] = v35;
  v38 = swift_task_alloc();
  v1[10].i64[0] = v38;
  v39 = type metadata accessor for DetailTimelineEntry(0);
  *v38 = v1;
  v38[1] = sub_100018D74;
  v40 = v1[1].i64[0];

  return withOSActivity<A>(_:operation:)(v40, "Symbol Widget Snapshot", 22, 2, &unk_1000DF448, v36, v39);
}

uint64_t sub_100018D74()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100018EB0, 0, 0);
  }
}

uint64_t sub_100018EB0()
{
  v11 = v0;

  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  if (v3)
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1000848C8(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v1, v2, "Did fetch widget snapshot, id=%{public}s", v6, 0xCu);
    sub_100006D0C(v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100019030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return _swift_task_switch(sub_100019058, 0, 0);
}

uint64_t sub_100019058()
{
  if (qword_1001140B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v1;

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  type metadata accessor for DetailTimelineEntry(0);
  *v4 = v0;
  v4[1] = sub_1000191C8;
  v5 = *(v0 + 32);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v5, v0 + 16, &unk_1000DF458, v3, 0, 0, 0xD000000000000029, 0x80000001000E82E0);
}

uint64_t sub_1000191C8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_10001930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = type metadata accessor for DetailTimelineProvider.Configuration(0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v5 = sub_1000DB720();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_1000DB7D0();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100019474, 0, 0);
}

uint64_t sub_100019474(uint64_t a1)
{
  v36 = v1;
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v6 = sub_1000848C8(v1[2], v1[3], &v35);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting snapshot fetch, id=%s", v4, 0xCu);
    sub_100006D0C(v5);
  }

  v7 = v1[16];
  v8 = v1[14];
  v9 = v1[6];
  v10 = *(v1[15] + 16);
  v10(v1[17], v9, v8);
  v10(v7, v9, v8);
  v11 = sub_1000DA350();
  v12 = sub_1000DBDD0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[17];
  v16 = v1[14];
  v15 = v1[15];
  if (v13)
  {
    v17 = v1[12];
    v18 = v1[13];
    v19 = v1[11];
    v32 = v1[16];
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v20 = 136315394;
    v33 = v12;
    sub_1000DB7B0();
    sub_100025364(&qword_100115310, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v21 = sub_1000DC320();
    log = v11;
    v23 = v22;
    (*(v17 + 8))(v18, v19);
    v24 = *(v15 + 8);
    v24(v14, v16);
    v25 = sub_1000848C8(v21, v23, &v35);

    *(v20 + 4) = v25;
    *(v20 + 12) = 1024;
    LODWORD(v25) = sub_1000DB7C0() & 1;
    v24(v32, v16);
    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, log, v33, "Snapshot context. family: %s, isPreview: %{BOOL}d", v20, 0x12u);
    sub_100006D0C(v34);
  }

  else
  {
    v26 = *(v15 + 8);
    v26(v1[16], v1[14]);

    v26(v14, v16);
  }

  v27 = swift_task_alloc();
  v1[18] = v27;
  *v27 = v1;
  v27[1] = sub_100019840;
  v28 = v1[10];
  v29 = v1[7];

  return sub_100019CE4(v28, v29);
}

uint64_t sub_100019840()
{

  return _swift_task_switch(sub_10001993C, 0, 0);
}

uint64_t sub_10001993C()
{
  v17 = v0;
  sub_10002337C(v0[10], v0[9], type metadata accessor for DetailTimelineProvider.Configuration);
  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[9];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    v7 = sub_1000D9860();
    v9 = v8;
    sub_100024BE4(v4, type metadata accessor for DetailTimelineProvider.Configuration);
    v10 = sub_1000848C8(v7, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Resolved configuration. newsDisplayConfiguration: %{public}s", v5, 0xCu);
    sub_100006D0C(v6);
  }

  else
  {

    sub_100024BE4(v4, type metadata accessor for DetailTimelineProvider.Configuration);
  }

  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_100019B2C;
  v12 = v0[10];
  v13 = v0[6];
  v14 = v0[4];

  return sub_10001A934(v14, v12, v13);
}

uint64_t sub_100019B2C()
{

  return _swift_task_switch(sub_100019C28, 0, 0);
}

uint64_t sub_100019C28()
{
  sub_100024BE4(*(v0 + 80), type metadata accessor for DetailTimelineProvider.Configuration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100019CE4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_100023784(0);
  v3[9] = swift_task_alloc();
  v4 = sub_1000D96D0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_1000D9660();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_100019E3C, 0, 0);
}

uint64_t sub_100019E3C()
{
  v20 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_1000D96B0();
  sub_1000D9960();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100024BE4(v0[9], sub_100023784);
    v4 = sub_1000DA350();
    v5 = sub_1000DBDB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v8 = sub_1000848C8(v0[2], v0[3], &v19);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Malformed widget configuration, id=%s", v6, 0xCu);
      sub_100006D0C(v7);
    }

    v9 = v0[6];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v10 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) + 20);
    v11 = enum case for NewsDisplayConfiguration.afterHours(_:);
    v12 = sub_1000D9870();
    (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
    v13 = v0[6];
    *v13 = 1280328001;
    v13[1] = 0xE400000000000000;

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
    sub_100024A74(0, &qword_100115350, &type metadata for String);
    v16 = swift_allocObject();
    v0[17] = v16;
    *(v16 + 16) = xmmword_1000DDD30;
    *(v16 + 32) = sub_1000D96A0();
    *(v16 + 40) = v17;
    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_10001A194;

    return SymbolWidgetQuery.entities(for:)(v16);
  }
}

uint64_t sub_10001A194(uint64_t a1)
{
  *(*v2 + 152) = a1;

  if (v1)
  {

    v3 = sub_10001A6FC;
  }

  else
  {

    v3 = sub_10001A2E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001A2E4()
{
  v34 = v0;
  v1 = v0[19];
  v2 = v0[11];
  if (*(v1 + 16))
  {
    (*(v2 + 16))(v0[12], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[10]);

    v3 = sub_1000DA350();
    v4 = sub_1000DBDD0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v33 = v6;
      *v5 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v7 = sub_1000848C8(v0[4], v0[5], &v33);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Successfully loaded widget entity, id=%s", v5, 0xCu);
      sub_100006D0C(v6);
    }

    v8 = v0[15];
    v31 = v0[14];
    v32 = v0[16];
    v30 = v0[13];
    v9 = v0[11];
    v10 = v0[12];
    v11 = v0[10];
    v12 = v0[6];
    v13 = sub_1000D96C0();
    v15 = v14;
    v16 = type metadata accessor for DetailTimelineProvider.Configuration(0);
    sub_1000228C0(v12 + *(v16 + 20));
    v17 = *(v9 + 8);
    v17(v10, v11);
    v17(v30, v11);
    (*(v8 + 8))(v32, v31);
  }

  else
  {
    (*(v2 + 8))(v0[13], v0[10]);

    v18 = sub_1000DA350();
    v19 = sub_1000DBDB0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v22 = sub_1000848C8(v0[2], v0[3], &v33);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Malformed widget configuration, id=%s", v20, 0xCu);
      sub_100006D0C(v21);
    }

    v23 = v0[6];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v24 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) + 20);
    v25 = enum case for NewsDisplayConfiguration.afterHours(_:);
    v26 = sub_1000D9870();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    v15 = 0xE400000000000000;
    v13 = 1280328001;
  }

  v27 = v0[6];
  *v27 = v13;
  v27[1] = v15;

  v28 = v0[1];

  return v28();
}

uint64_t sub_10001A6FC()
{
  v14 = v0;
  (*(v0[11] + 8))(v0[13], v0[10]);
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v5 = sub_1000848C8(v0[2], v0[3], &v13);

    *(v3 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Malformed widget configuration, id=%s", v3, 0xCu);
    sub_100006D0C(v4);
  }

  v6 = v0[6];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v7 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) + 20);
  v8 = enum case for NewsDisplayConfiguration.afterHours(_:);
  v9 = sub_1000D9870();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  v10 = v0[6];
  *v10 = 1280328001;
  v10[1] = 0xE400000000000000;

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001A934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[447] = v3;
  v4[446] = a3;
  v4[445] = a2;
  v4[444] = a1;
  sub_100023704(0);
  v4[448] = swift_task_alloc();
  v5 = sub_1000DB720();
  v4[449] = v5;
  v4[450] = *(v5 - 8);
  v4[451] = swift_task_alloc();
  v4[452] = swift_task_alloc();
  v4[453] = swift_task_alloc();
  v4[454] = type metadata accessor for DetailContentViewModel(0);
  v4[455] = swift_task_alloc();
  type metadata accessor for HeadlineViewModel(0);
  v4[456] = swift_task_alloc();
  sub_100023694(0);
  v4[457] = v6;
  v4[458] = *(v6 - 8);
  v4[459] = swift_task_alloc();
  v4[460] = swift_task_alloc();
  sub_100023660(0);
  v4[461] = swift_task_alloc();
  v4[462] = swift_task_alloc();
  v4[463] = swift_task_alloc();
  v7 = sub_1000D9090();
  v4[464] = v7;
  v4[465] = *(v7 - 8);
  v4[466] = swift_task_alloc();
  v4[467] = type metadata accessor for WidgetStock(0);
  v4[468] = swift_task_alloc();
  v4[469] = swift_task_alloc();
  v4[470] = swift_task_alloc();
  v4[471] = swift_task_alloc();
  v4[472] = swift_task_alloc();
  v8 = sub_1000DB7D0();
  v4[473] = v8;
  v9 = *(v8 - 8);
  v4[474] = v9;
  v4[475] = *(v9 + 64);
  v4[476] = swift_task_alloc();
  v10 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v4[477] = v10;
  v4[478] = *(v10 + 64);
  v4[479] = swift_task_alloc();
  sub_100023954(0);
  v4[480] = v11;
  v4[481] = swift_task_alloc();
  v12 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v4[482] = v12;
  v4[483] = *(v12 + 64);
  v4[484] = swift_task_alloc();
  v4[485] = swift_task_alloc();
  v13 = sub_1000D93C0();
  v4[486] = v13;
  v4[487] = *(v13 - 8);
  v4[488] = swift_task_alloc();
  v4[489] = swift_task_alloc();
  v4[490] = swift_task_alloc();
  v14 = sub_1000D9690();
  v4[491] = v14;
  v4[492] = *(v14 - 8);
  v4[493] = swift_task_alloc();
  v4[494] = swift_task_alloc();
  v4[495] = swift_task_alloc();
  sub_1000DBC20();
  v4[496] = sub_1000DBC10();
  v16 = sub_1000DBBE0();
  v4[497] = v16;
  v4[498] = v15;

  return _swift_task_switch(sub_10001AE88, v16, v15);
}

uint64_t sub_10001AE88()
{
  v32 = v0;
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(qword_100128FD8, v0 + 3160);
  sub_100006C7C((v0 + 3160), *(v0 + 3184));
  sub_100002A50(0, &unk_1001168D0, &protocol descriptor for QuoteDetailItemFactoryType);
  v1 = sub_1000D9F00();
  if (!*(v0 + 3104))
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_100023738((v0 + 3080), v0 + 3200);
  sub_100006D0C((v0 + 3160));
  sub_100006E20(qword_100128FD8, v0 + 3240);
  sub_100006C7C((v0 + 3240), *(v0 + 3264));
  sub_100002A50(0, &qword_100116990, &protocol descriptor for WatchlistManagerType);
  v1 = sub_1000D9F00();
  if (!*(v0 + 2064))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_100023738((v0 + 2040), v0 + 2920);
  sub_100006D0C((v0 + 3240));
  sub_100006E20(qword_100128FD8, v0 + 2200);
  sub_100006C7C((v0 + 2200), *(v0 + 2224));
  sub_100002A50(0, &qword_100115320, &protocol descriptor for QuoteDetailManagerType);
  v1 = sub_1000D9F00();
  if (!*(v0 + 2304))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_100023738((v0 + 2280), v0 + 2120);
  sub_100006D0C((v0 + 2200));
  sub_100006E20(qword_100128FD8, v0 + 2440);
  sub_100006C7C((v0 + 2440), *(v0 + 2464));
  sub_100002A50(0, &qword_100115328, &protocol descriptor for TodayViewModelServiceType);
  v1 = sub_1000D9F00();
  if (!*(v0 + 2544))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_100023738((v0 + 2520), v0 + 2360);
  sub_100006D0C((v0 + 2440));
  sub_100006E20(qword_100128FD8, v0 + 2680);
  sub_100006C7C((v0 + 2680), *(v0 + 2704));
  sub_100002A50(0, &qword_100115330, &protocol descriptor for AppConfigurationManagerType);
  v1 = sub_1000D9F00();
  if (!*(v0 + 2784))
  {
LABEL_21:
    __break(1u);
    return _swift_asyncLet_get_throwing(v1, v2, v3, v4);
  }

  sub_100023738((v0 + 2760), v0 + 2600);
  sub_100006D0C((v0 + 2680));
  sub_1000D9D90();
  sub_1000D9D80();
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 3880);
  v22 = *(v0 + 3872);
  v21 = *(v0 + 3864);
  v6 = *(v0 + 3856);
  v28 = *(v0 + 3816);
  v29 = *(v0 + 3824);
  v23 = *(v0 + 3792);
  v24 = *(v0 + 3832);
  v26 = *(v0 + 3784);
  v27 = *(v0 + 3808);
  v30 = *(v0 + 3576);
  v25 = *(v0 + 3568);
  v7 = *(v0 + 3560);
  sub_1000D9D70();

  sub_100006E20(v0 + 2920, v0 + 2840);
  v8 = swift_allocObject();
  *(v0 + 3992) = v8;
  sub_100023738((v0 + 2840), v8 + 16);
  swift_asyncLet_begin();
  sub_100006E20(v0 + 2600, v0 + 3000);
  sub_100006E20(v0 + 2120, v0 + 3040);
  sub_10002337C(v7, v5, type metadata accessor for DetailTimelineProvider.Configuration);
  v9 = *(v6 + 80);
  v10 = swift_allocObject();
  *(v0 + 4000) = v10;
  sub_100023738((v0 + 3000), v10 + 16);
  sub_100023738((v0 + 3040), v10 + 56);
  sub_100024B14(v5, v10 + ((v9 + 96) & ~v9), type metadata accessor for DetailTimelineProvider.Configuration);
  swift_asyncLet_begin();
  sub_100006E20(v0 + 2360, v0 + 3120);
  sub_10002337C(v7, v22, type metadata accessor for DetailTimelineProvider.Configuration);
  sub_10002337C(v30, v24, type metadata accessor for DetailTimelineProvider);
  (*(v23 + 16))(v27, v25, v26);
  v11 = (v9 + 56) & ~v9;
  v12 = (v11 + v21 + *(v28 + 80)) & ~*(v28 + 80);
  v13 = (v29 + *(v23 + 80) + v12) & ~*(v23 + 80);
  v14 = swift_allocObject();
  *(v0 + 4008) = v14;
  sub_100023738((v0 + 3120), v14 + 16);
  sub_100024B14(v22, v14 + v11, type metadata accessor for DetailTimelineProvider.Configuration);
  sub_100024B14(v24, v14 + v12, type metadata accessor for DetailTimelineProvider);
  (*(v23 + 32))(v14 + v13, v27, v26);
  swift_asyncLet_begin();
  v15 = sub_1000DA350();
  v16 = sub_1000DBDD0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v19 = sub_1000848C8(*(v0 + 3504), *(v0 + 3512), &v31);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Will fetch stockViewModel, id=%s", v17, 0xCu);
    sub_100006D0C(v18);
  }

  v3 = sub_10001B5D4;
  v2 = *(v0 + 3848);
  v1 = v0 + 656;
  v4 = v0 + 2240;

  return _swift_asyncLet_get_throwing(v1, v2, v3, v4);
}

uint64_t sub_10001B5D4()
{
  v1[502] = v0;
  if (v0)
  {
    v2 = sub_10001D0F4;
  }

  else
  {
    v2 = sub_10001B60C;
  }

  return _swift_task_switch(v2, v1[497], v1[498]);
}

uint64_t sub_10001B60C()
{
  v26 = v0;
  v1 = v0[472];
  v2 = v0[471];
  v3 = v0[470];
  sub_10002337C(v0[481], v1, type metadata accessor for WidgetStock);
  sub_10002337C(v1, v2, type metadata accessor for WidgetStock);
  sub_10002337C(v1, v3, type metadata accessor for WidgetStock);
  v4 = sub_1000DA350();
  v5 = sub_1000DBDD0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[471];
  v8 = v0[470];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_1000D9B20();
    v12 = v11;
    sub_100024BE4(v7, type metadata accessor for WidgetStock);
    v13 = sub_1000848C8(v10, v12, &v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    v14 = sub_1000BA50C();
    LOBYTE(v10) = v15;
    sub_100024BE4(v8, type metadata accessor for WidgetStock);

    v16 = *&v14;
    if (v10)
    {
      v16 = 0.0;
    }

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v17 = sub_1000848C8(v0[436], v0[437], &v25);

    *(v9 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetched stockViewModel=%s, price=%f id=%s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100024BE4(v8, type metadata accessor for WidgetStock);
    sub_100024BE4(v7, type metadata accessor for WidgetStock);
  }

  v18 = sub_1000DA350();
  v19 = sub_1000DBDD0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v22 = sub_1000848C8(v0[434], v0[435], &v25);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Will fetch quoteDetail, id=%s", v20, 0xCu);
    sub_100006D0C(v21);
  }

  v23 = v0[490];

  return _swift_asyncLet_get(v0 + 162, v23, sub_10001B9D4, v0 + 330);
}

uint64_t sub_10001B9F0()
{
  v30 = v0;
  v1 = v0[489];
  v2 = v0[488];
  v3 = v0[486];
  v4 = *(v0[487] + 16);
  v4(v1, v0[490], v3);
  v4(v2, v1, v3);
  v5 = sub_1000DA350();
  v6 = sub_1000DBDD0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[488];
  v9 = v0[487];
  v10 = v0[486];
  if (v7)
  {
    v28 = v6;
    v11 = v0[466];
    v12 = v0[465];
    v27 = v0[464];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    sub_1000D9380();
    v14 = sub_1000D9070();
    v16 = v15;
    (*(v12 + 8))(v11, v27);
    v17 = *(v9 + 8);
    v17(v8, v10);
    v18 = sub_1000848C8(v14, v16, &v29);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v19 = sub_1000848C8(v0[432], v0[433], &v29);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v28, "Fetched quoteDetail, dateLastRefreshed=%s, id=%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v9 + 8);
    v17(v8, v10);
  }

  v0[503] = v17;
  v20 = sub_1000DA350();
  v21 = sub_1000DBDD0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29 = v23;
    *v22 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v24 = sub_1000848C8(v0[430], v0[431], &v29);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Will fetch headlines, id=%s", v22, 0xCu);
    sub_100006D0C(v23);
  }

  v25 = v0[481];

  return _swift_asyncLet_get_throwing(v0 + 82, v25, sub_10001BD9C, v0 + 340);
}

uint64_t sub_10001BD9C()
{
  v1[504] = v0;
  if (v0)
  {
    v2 = sub_10001D5BC;
  }

  else
  {
    v2 = sub_10001BDD4;
  }

  return _swift_task_switch(v2, v1[497], v1[498]);
}

uint64_t sub_10001BDD4()
{
  v117 = v0;
  v1 = *(v0 + 3704);
  v2 = *(v0 + 3696);
  v3 = *(v0 + 3664);
  v4 = *(v0 + 3656);
  sub_10002337C(*(v0 + 3848) + *(*(v0 + 3840) + 48), v1, sub_100023660);
  sub_10002337C(v1, v2, sub_100023660);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    sub_100024BE4(*(v0 + 3696), sub_100023660);
    v5 = sub_1000DA350();
    v6 = sub_1000DBDD0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v116 = v8;
      *v7 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v9 = sub_1000848C8(*(v0 + 3408), *(v0 + 3416), &v116);

      *(v7 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetched no headlines, id=%s", v7, 0xCu);
      sub_100006D0C(v8);
    }

    goto LABEL_19;
  }

  v10 = *(v0 + 3680);
  v11 = *(v0 + 3672);
  v12 = *(v0 + 3664);
  v13 = *(v0 + 3656);
  (*(v12 + 32))(v10, *(v0 + 3696), v13);
  (*(v12 + 16))(v11, v10, v13);
  v14 = sub_1000DA350();
  v15 = sub_1000DBDD0();
  if (!os_log_type_enabled(v14, v15))
  {
    v34 = *(v0 + 3680);
    v35 = *(v0 + 3672);
    v36 = *(v0 + 3664);
    v37 = *(v0 + 3656);

    v38 = *(v36 + 8);
    v38(v35, v37);
    v38(v34, v37);
    goto LABEL_19;
  }

  log = v14;
  v16 = swift_slowAlloc();
  v115 = swift_slowAlloc();
  *v16 = 136315394;
  v17 = sub_100025364(&qword_100115338, sub_100023694, &protocol conformance descriptor for NonEmpty<A>);
  v18 = sub_1000DBCE0();
  if (!v18)
  {
LABEL_16:
    v39 = *(v0 + 3672);
    v40 = *(v0 + 3664);
    v41 = *(v0 + 3656);
    v42 = sub_1000DBB40();
    v44 = v43;

    v45 = *(v40 + 8);
    v45(v39, v41);
    v46 = sub_1000848C8(v42, v44, &v115);

    *(v16 + 4) = v46;
    *(v16 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 3680);
    v48 = *(v0 + 3656);
    sub_1000DC4C0();
    v49 = sub_1000848C8(*(v0 + 3424), *(v0 + 3432), &v115);

    *(v16 + 14) = v49;
    _os_log_impl(&_mh_execute_header, log, v15, "Fetched headlines=%s, id=%s", v16, 0x16u);
    swift_arrayDestroy();

    v45(v47, v48);
LABEL_19:
    v50 = *(v0 + 3624);
    v51 = *(v0 + 3616);
    v52 = *(v0 + 3600);
    v53 = *(v0 + 3592);
    sub_10002337C(*(v0 + 3776), *(v0 + 3752), type metadata accessor for WidgetStock);
    v54 = sub_100006C7C((v0 + 3200), *(v0 + 3224));
    sub_1000DB7B0();
    (*(v52 + 16))(v51, v50, v53);
    v55 = (*(v52 + 88))(v51, v53);
    if (v55 == enum case for WidgetFamily.systemSmall(_:))
    {
      v56 = 0;
      v57 = 1;
    }

    else if (v55 == enum case for WidgetFamily.systemMedium(_:))
    {
      v57 = 0;
      v56 = 3;
    }

    else if (v55 == enum case for WidgetFamily.systemLarge(_:))
    {
      v57 = 0;
      v56 = 6;
    }

    else
    {
      v56 = 0;
      v57 = 1;
      if (v55 != enum case for WidgetFamily.accessoryCircular(_:) && v55 != enum case for WidgetFamily.accessoryRectangular(_:) && v55 != enum case for WidgetFamily.accessoryInline(_:))
      {
        return sub_1000DC0D0();
      }
    }

    v58 = *(v0 + 3912);
    v59 = *(v0 + 3776);
    v60 = *(v0 + 3624);
    v61 = *(v0 + 3600);
    v62 = *(v0 + 3592);
    v114 = *(v0 + 3736);
    v63 = *(v114 + 20);
    *(v0 + 2036) = v63;
    v64 = v59 + v63;
    (*(v61 + 8))(v60, v62);
    v65 = *v54;
    v66 = swift_task_alloc();
    v66[2] = v65;
    v66[3] = v64;
    v66[4] = v58;
    v67 = sub_100017C1C(sub_100024028, v66, &off_100108B28);

    sub_100096420(v67, v56, (v0 + 3520));

    v68 = *(v0 + 3520);
    v69 = *(v68 + 16);
    if (v69 >= v56)
    {
      v69 = v56;
    }

    v70 = 2 * v69;
    if (v57)
    {
      v71 = 1;
    }

    else
    {
      v71 = v70 + 1;
    }

    sub_1000DC380();
    swift_unknownObjectRetain_n();
    v72 = swift_dynamicCastClass();
    if (!v72)
    {
      swift_unknownObjectRelease();
      v72 = _swiftEmptyArrayStorage;
    }

    v73 = v72[2];

    if (v73 == v71 >> 1)
    {
      v74 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v74)
      {
LABEL_36:
        v75 = *(v0 + 3752);
        v76 = *(v0 + 3744);
        v77 = *(v0 + 3640);
        v110 = *(v0 + 3584);
        loga = v74;
        sub_10002337C(*(v0 + 3704), *(v0 + 3688), sub_100023660);
        sub_10002337C(v75, v76, type metadata accessor for WidgetStock);
        v78 = sub_1000D9AC0();
        v80 = v79;
        v81 = sub_1000D9B30();
        v83 = v82;
        sub_100024BE4(v76, type metadata accessor for WidgetStock);
        *v77 = v78;
        *(v77 + 8) = v80;
        *(v77 + 16) = v81;
        *(v77 + 24) = v83;
        *(v77 + 32) = sub_1000D9AF0();
        *(v77 + 40) = v84;
        *(v77 + 48) = sub_1000BA50C();
        *(v77 + 56) = v85 & 1;
        *(v77 + 64) = v86;
        *(v77 + 72) = v87;
        sub_10002337C(v75, v76, type metadata accessor for WidgetStock);
        sub_10009FCB4(v76, v0 + 1976);
        v88 = *(v0 + 1976);
        v89 = *(v0 + 1992);
        v90 = *(v0 + 2008);
        *(v77 + 121) = *(v0 + 2017);
        *(v77 + 96) = v89;
        *(v77 + 112) = v90;
        *(v77 + 80) = v88;
        sub_10002337C(v75 + *(v114 + 20), v110, sub_100023704);
        v91 = sub_1000D9450();
        v92 = *(v91 - 8);
        v93 = (*(v92 + 48))(v110, 1, v91);
        v94 = *(v0 + 3584);
        if (v93 == 1)
        {
          sub_100024BE4(*(v0 + 3584), sub_100023704);
          v95 = 2;
        }

        else
        {
          v96 = COERCE_DOUBLE(sub_1000D93D0());
          v98 = v97;
          (*(v92 + 8))(v94, v91);
          if (v98)
          {
            v95 = 2;
          }

          else
          {
            v95 = v96 < 0.0;
          }
        }

        v100 = *(v0 + 3752);
        v101 = *(v0 + 3736);
        v102 = *(v0 + 3688);
        v103 = *(v0 + 3640);
        v104 = *(v0 + 3632);
        *(v103 + 137) = v95;
        *(v103 + v104[10]) = loga;
        sub_10002337C(v102, v103 + v104[11], sub_100023660);
        sub_100024964(v100 + *(v101 + 24), v103 + v104[9]);
        v105 = v104[12];
        sub_1000D9AD0();
        sub_100024BE4(v102, sub_100023660);
        sub_100024BE4(v100, type metadata accessor for WidgetStock);
        v106 = sub_1000D8F30();
        (*(*(v106 - 8) + 56))(v103 + v105, 0, 1, v106);
        v23 = sub_10001C96C;
        v22 = *(v0 + 3960);
        v21 = v0 + 16;
        v24 = v0 + 2960;

        return _swift_asyncLet_get_throwing(v21, v22, v23, v24);
      }

      v74 = _swiftEmptyArrayStorage;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_10002404C(v68, v68 + 32, 0, v71);
      v74 = v107;
    }

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v19 = v18;
  v108 = v15;
  v109 = v16;
  v116 = _swiftEmptyArrayStorage;
  sub_10007BC5C(0, v18 & ~(v18 >> 63), 0);
  v20 = _swiftEmptyArrayStorage;
  v21 = sub_1000DBCC0();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v113 = *(v0 + 3648);
    do
    {
      v25 = *(v0 + 3648);
      v26 = sub_1000DBD70();
      sub_10002337C(v27, v25, type metadata accessor for HeadlineViewModel);
      v26(v0 + 3280, 0);
      v28 = *(v113 + 64);
      v29 = *(v113 + 72);

      sub_100024BE4(v25, type metadata accessor for HeadlineViewModel);
      v116 = v20;
      v30 = v17;
      v32 = v20[2];
      v31 = v20[3];
      if (v32 >= v31 >> 1)
      {
        sub_10007BC5C((v31 > 1), v32 + 1, 1);
        v20 = v116;
      }

      v20[2] = v32 + 1;
      v33 = &v20[2 * v32];
      v33[4] = v28;
      v33[5] = v29;
      sub_1000DBD20();
      --v19;
      v17 = v30;
    }

    while (v19);
    v16 = v109;
    v15 = v108;
    goto LABEL_16;
  }

  __break(1u);
  return _swift_asyncLet_get_throwing(v21, v22, v23, v24);
}

uint64_t sub_10001C96C()
{
  v1[505] = v0;
  if (v0)
  {
    v2 = sub_10001DB08;
  }

  else
  {
    v2 = sub_10001C9A4;
  }

  return _swift_task_switch(v2, v1[497], v1[498]);
}

uint64_t sub_10001C9A4()
{
  v35 = v0;
  v1 = *(v0 + 3952);
  v2 = *(v0 + 3944);
  v3 = *(v0 + 3928);
  v4 = *(*(v0 + 3936) + 16);
  v4(v1, *(v0 + 3960), v3);
  v4(v2, v1, v3);
  v5 = sub_1000DA350();
  v6 = sub_1000DBDD0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 3944);
  v9 = *(v0 + 3936);
  v10 = *(v0 + 3928);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 134218242;
    v13 = sub_1000D9680();
    (*(v9 + 8))(v8, v10);
    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v14 = sub_1000848C8(*(v0 + 3392), *(v0 + 3400), &v34);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetched priceChangeDisplay=%ld, id=%s", v11, 0x16u);
    sub_100006D0C(v12);
  }

  else
  {
    (*(v9 + 8))(*(v0 + 3944), *(v0 + 3928));
  }

  v15 = sub_1000DA350();
  v16 = sub_1000DBDD0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v19 = sub_1000848C8(*(v0 + 3376), *(v0 + 3384), &v34);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Successfully created timeline entry, id=%s", v17, 0xCu);
    sub_100006D0C(v18);
  }

  v20 = *(v0 + 2036);
  v21 = *(v0 + 3952);
  v22 = *(v0 + 3936);
  v23 = *(v0 + 3928);
  v32 = *(v0 + 3912);
  v33 = *(v0 + 4024);
  v31 = *(v0 + 3888);
  v24 = *(v0 + 3776);
  v25 = *(v0 + 3704);
  v26 = *(v0 + 3640);
  v27 = *(v0 + 3552);
  v28 = type metadata accessor for DetailTimelineEntry(0);
  sub_10002337C(v26, v27 + v28[5], type metadata accessor for DetailContentViewModel);
  sub_10002337C(v24 + v20, v27 + v28[6], sub_100023704);
  (*(v22 + 16))(v27 + v28[7], v21, v23);
  sub_1000D9080();
  (*(v22 + 8))(v21, v23);
  sub_100024BE4(v26, type metadata accessor for DetailContentViewModel);
  sub_100024BE4(v25, sub_100023660);
  v33(v32, v31);
  sub_100024BE4(v24, type metadata accessor for WidgetStock);
  *(v27 + v28[8]) = 0;
  *(v27 + v28[9]) = 0;
  v29 = *(v0 + 3848);

  return _swift_asyncLet_finish(v0 + 656, v29, sub_10001CE18, v0 + 2160);
}

uint64_t sub_10001CEAC()
{

  sub_100006D0C(v0 + 325);
  sub_100006D0C(v0 + 295);
  sub_100006D0C(v0 + 265);
  sub_100006D0C(v0 + 365);
  sub_100006D0C(v0 + 400);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10001D1A8()
{
  v15 = v0;

  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v3 = 136315394;
    swift_getErrorValue();
    v4 = sub_1000DC3B0();
    v6 = sub_1000848C8(v4, v5, v14);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[420], v0[421], v14);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create timeline entry, error=%s, id=%s ", v3, 0x16u);
    swift_arrayDestroy();
  }

  v8 = v0[450];
  v9 = sub_1000DB7C0();
  sub_1000DB7B0();
  v10 = v0[451];
  v11 = v0[449];
  sub_100058718(v10, (v9 & 1) == 0, v0[444]);

  (*(v8 + 8))(v10, v11);
  sub_100006D0C(v0 + 325);
  sub_100006D0C(v0 + 295);
  sub_100006D0C(v0 + 265);
  sub_100006D0C(v0 + 365);
  sub_100006D0C(v0 + 400);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001D5BC()
{
  v1 = *(v0 + 3776);
  (*(v0 + 4024))(*(v0 + 3912), *(v0 + 3888));
  sub_100024BE4(v1, type metadata accessor for WidgetStock);
  v2 = *(v0 + 3848);

  return _swift_asyncLet_finish(v0 + 656, v2, sub_10001D660, v0 + 2800);
}

uint64_t sub_10001D6F4()
{
  v15 = v0;

  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v3 = 136315394;
    swift_getErrorValue();
    v4 = sub_1000DC3B0();
    v6 = sub_1000848C8(v4, v5, v14);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[420], v0[421], v14);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create timeline entry, error=%s, id=%s ", v3, 0x16u);
    swift_arrayDestroy();
  }

  v8 = v0[450];
  v9 = sub_1000DB7C0();
  sub_1000DB7B0();
  v10 = v0[451];
  v11 = v0[449];
  sub_100058718(v10, (v9 & 1) == 0, v0[444]);

  (*(v8 + 8))(v10, v11);
  sub_100006D0C(v0 + 325);
  sub_100006D0C(v0 + 295);
  sub_100006D0C(v0 + 265);
  sub_100006D0C(v0 + 365);
  sub_100006D0C(v0 + 400);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001DB08()
{
  v28 = v0;
  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v27 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = sub_1000DC3B0();
    v7 = sub_1000848C8(v5, v6, &v27);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch price change display, falling back to default, error=%s", v3, 0xCu);
    sub_100006D0C(v4);
  }

  sub_1000D9C70();

  v8 = sub_1000DA350();
  v9 = sub_1000DBDD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v12 = sub_1000848C8(*(v0 + 3376), *(v0 + 3384), &v27);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Successfully created timeline entry, id=%s", v10, 0xCu);
    sub_100006D0C(v11);
  }

  v13 = *(v0 + 2036);
  v14 = *(v0 + 3952);
  v15 = *(v0 + 3936);
  v16 = *(v0 + 3928);
  v25 = *(v0 + 3912);
  v26 = *(v0 + 4024);
  v24 = *(v0 + 3888);
  v17 = *(v0 + 3776);
  v18 = *(v0 + 3704);
  v19 = *(v0 + 3640);
  v20 = *(v0 + 3552);
  v21 = type metadata accessor for DetailTimelineEntry(0);
  sub_10002337C(v19, v20 + v21[5], type metadata accessor for DetailContentViewModel);
  sub_10002337C(v17 + v13, v20 + v21[6], sub_100023704);
  (*(v15 + 16))(v20 + v21[7], v14, v16);
  sub_1000D9080();
  (*(v15 + 8))(v14, v16);
  sub_100024BE4(v19, type metadata accessor for DetailContentViewModel);
  sub_100024BE4(v18, sub_100023660);
  v26(v25, v24);
  sub_100024BE4(v17, type metadata accessor for WidgetStock);
  *(v20 + v21[8]) = 0;
  *(v20 + v21[9]) = 0;
  v22 = *(v0 + 3848);

  return _swift_asyncLet_finish(v0 + 656, v22, sub_10001CE18, v0 + 2160);
}

uint64_t sub_10001DEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_1000D95E0();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  sub_1000235CC(0);
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v7 = sub_1000D9450();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  sub_100023660(0);
  v4[36] = swift_task_alloc();
  v8 = sub_1000D9090();
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v9 = sub_1000DB760();
  v4[42] = v9;
  v4[43] = *(v9 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  sub_100023704(0);
  v4[46] = *(v10 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v11 = type metadata accessor for DetailTimelineEntry(0);
  v4[49] = v11;
  v4[50] = *(v11 - 8);
  v4[51] = swift_task_alloc();
  sub_1000DBC20();
  v4[52] = sub_1000DBC10();
  v13 = sub_1000DBBE0();
  v4[53] = v13;
  v4[54] = v12;

  return _swift_task_switch(sub_10001E26C, v13, v12);
}

uint64_t sub_10001E26C(uint64_t a1)
{
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DetailTimelineProvider::timeline(for:in:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  v1[55] = v5;
  *v5 = v1;
  v5[1] = sub_10001E380;
  v6 = v1[51];
  v7 = v1[24];
  v8 = v1[23];

  return sub_1000186A4(v6, v8, v7);
}

uint64_t sub_10001E380()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return _swift_task_switch(sub_10001E4A0, v3, v2);
}

uint64_t sub_10001E4A0()
{
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(qword_100128FD8, v0 + 56);
  sub_100006C7C((v0 + 56), *(v0 + 80));
  sub_100002A50(0, &unk_1001168C0, &protocol descriptor for ReloadPolicyProviderType);
  result = sub_1000D9F00();
  if (!*(v0 + 120))
  {
    __break(1u);
    goto LABEL_26;
  }

  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  sub_100023738((v0 + 96), v0 + 16);
  sub_100006D0C((v0 + 56));
  if ((*(v2 + *(v3 + 36)) & 1) == 0)
  {
    v16 = *(v0 + 408);
    v17 = *(v0 + 384);
    v18 = *(v0 + 392);
    v20 = *(v0 + 368);
    v19 = *(v0 + 376);
    v21 = *(v0 + 264);
    v22 = *(v0 + 272);
    sub_10002510C(0, &qword_1001152D8, sub_100023704, &type metadata accessor for _ContiguousArrayStorage);
    v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v24 = swift_allocObject();
    sub_10002337C(v16 + *(v18 + 24), v24 + v23, sub_100023704);
    sub_10002337C(v24 + v23, v17, sub_100023704);
    sub_100024B14(v17, v19, sub_100023704);
    if ((*(v22 + 48))(v19, 1, v21) == 1)
    {
      sub_100024BE4(*(v0 + 376), sub_100023704);
      v25 = _swiftEmptyArrayStorage;
    }

    else
    {
      v26 = *(*(v0 + 272) + 32);
      v26(*(v0 + 280), *(v0 + 376), *(v0 + 264));
      v25 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_10007B860(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_10007B860((v27 > 1), v28 + 1, 1, v25);
      }

      v30 = *(v0 + 272);
      v29 = *(v0 + 280);
      v31 = *(v0 + 264);
      *(v25 + 2) = v28 + 1;
      v26(&v25[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28], v29, v31);
    }

    v32 = *(v0 + 408);
    v33 = *(v0 + 392);
    v34 = *(v0 + 288);
    swift_setDeallocating();
    sub_100024BE4(v24 + v23, sub_100023704);
    swift_deallocClassInstance();
    sub_100006C7C((v0 + 16), *(v0 + 40));
    sub_1000D9050();
    v35 = *(v33 + 20);
    v36 = type metadata accessor for DetailContentViewModel(0);
    sub_10002337C(v32 + *(v36 + 44) + v35, v34, sub_100023660);
    sub_100023694(0);
    v38 = v37;
    v39 = *(v37 - 8);
    v40 = (*(v39 + 48))(v34, 1, v37);
    v41 = *(v0 + 288);
    v69 = v25;
    if (v40 == 1)
    {
      sub_100024BE4(v41, sub_100023660);
      v42 = 0;
    }

    else
    {
      v42 = sub_1000DA1E0();
      (*(v39 + 8))(v41, v38);
    }

    v43 = *(v0 + 400);
    v44 = *(v0 + 352);
    v45 = *(v0 + 360);
    v46 = *(v0 + 344);
    v65 = *(v0 + 408);
    v66 = *(v0 + 336);
    v47 = *(v0 + 328);
    v48 = *(v0 + 296);
    v49 = *(v0 + 304);
    sub_1000C884C(v47, v69, v42, v45);
    (*(v49 + 8))(v47, v48);
    sub_10002510C(0, &qword_1001152E0, type metadata accessor for DetailTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
    v50 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1000DDD30;
    sub_10002337C(v65, v51 + v50, type metadata accessor for DetailTimelineEntry);
    (*(v46 + 16))(v44, v45, v66);
    sub_100025364(&qword_100115298, type metadata accessor for DetailTimelineEntry, &unk_1000E0AE4);
    sub_1000DB810();
    sub_100006E20(qword_100128FD8, v0 + 136);
    sub_100006C7C((v0 + 136), *(v0 + 160));
    type metadata accessor for DemoTimelineManager(0);
    result = sub_1000D9EF0();
    if (result)
    {

      sub_100006D0C((v0 + 136));
      sub_1000D9D00();
      sub_100025364(&qword_1001152E8, type metadata accessor for DemoTimelineManager, &unk_1000E01D0);
      sub_1000D9D50();

      if (*(v0 + 448) == 1)
      {
        v52 = *(v0 + 408);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1000DDD30;
        sub_10002337C(v52, v53 + v50, type metadata accessor for DetailTimelineEntry);
        sub_10003B200(v53);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
      }

      sub_1000D9D20();
      sub_1000D9D50();

      v54 = *(v0 + 408);
      v55 = *(v0 + 360);
      v56 = *(v0 + 336);
      v57 = *(v0 + 344);
      if (*(v0 + 449) == 1)
      {
        v58 = *(v0 + 248);
        v59 = *(v0 + 256);
        v61 = *(v0 + 232);
        v60 = *(v0 + 240);
        sub_10003BE44(v58);

        (*(v60 + 8))(v59, v61);
        (*(v57 + 8))(v55, v56);
        sub_100024BE4(v54, type metadata accessor for DetailTimelineEntry);
        v62 = *(v60 + 32);
        v62(v59, v58, v61);
        v62(*(v0 + 176), *(v0 + 256), *(v0 + 232));
      }

      else
      {
        v63 = *(v0 + 240);

        (*(v57 + 8))(v55, v56);
        sub_100024BE4(v54, type metadata accessor for DetailTimelineEntry);
        (*(v63 + 32))(*(v0 + 176), *(v0 + 256), *(v0 + 232));
      }

      goto LABEL_22;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 408);
  v5 = *(v0 + 400);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  v8 = *(v0 + 304);
  v9 = *(v0 + 216);
  v10 = *(v0 + 224);
  v67 = *(v0 + 296);
  v68 = *(v0 + 208);

  sub_10002510C(0, &qword_1001152E0, type metadata accessor for DetailTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000DDD30;
  sub_10002337C(v4, v12 + v11, type metadata accessor for DetailTimelineEntry);
  v13 = sub_100006C7C((v0 + 16), *(v0 + 40));
  sub_1000D9050();
  sub_100006C7C((*v13 + 16), *(*v13 + 40));
  sub_1000D98B0();
  v14 = sub_1000D9540();
  sub_1000D95C0();
  sub_1000D9030();
  static TimelineReloadPolicy.after(_:jitteredUpTo:)(v14);
  v15 = *(v8 + 8);
  v15(v6, v67);
  (*(v9 + 8))(v10, v68);
  v15(v7, v67);
  sub_100025364(&qword_100115298, type metadata accessor for DetailTimelineEntry, &unk_1000E0AE4);
  sub_1000DB810();
  sub_100024BE4(v4, type metadata accessor for DetailTimelineEntry);
LABEL_22:
  sub_100006D0C((v0 + 16));

  v64 = *(v0 + 8);

  return v64();
}