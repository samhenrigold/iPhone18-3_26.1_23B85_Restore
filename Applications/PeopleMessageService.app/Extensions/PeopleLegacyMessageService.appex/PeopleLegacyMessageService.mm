uint64_t sub_100001C28()
{
  sub_100009DB0(&qword_100014460, &qword_10000D090);
  v0 = sub_100009DB0(&qword_100014468, &qword_10000D098);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10000CF70;
  v4 = v3 + v2;
  v5 = (v4 + *(v0 + 48));
  v6 = enum case for MessageDetails.EventSource.screenTime(_:);
  v7 = sub_10000C0EC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v4, v6, v7);
  *v5 = 0xD000000000000029;
  v5[1] = 0x800000010000CB10;
  v5[2] = 0xD000000000000011;
  v5[3] = 0x800000010000CB40;
  v5[4] = 0xD000000000000022;
  v5[5] = 0x800000010000CB60;
  v5[6] = sub_10000C30C();
  v5[7] = v9;
  v10 = (v4 + v1 + *(v0 + 48));
  v8();
  *v10 = 0xD000000000000027;
  v10[1] = 0x800000010000CB90;
  v10[2] = 0x7975426F546B7341;
  v10[3] = 0xE800000000000000;
  v10[4] = 0xD000000000000022;
  v10[5] = 0x800000010000CBC0;
  v10[6] = sub_10000C30C();
  v10[7] = v11;
  v12 = sub_100004108(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100014498 = v12;
  return result;
}

uint64_t sub_100001E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10000BF6C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_10000BFDC();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100001F98, 0, 0);
}

uint64_t sub_100001F98()
{
  v29 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_10000C05C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_10000BFCC();
  v6 = sub_10000C40C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  if (v7)
  {
    v27 = v0[7];
    v14 = swift_slowAlloc();
    v25 = v6;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v16 = sub_10000BF2C();
    v26 = v8;
    v18 = v17;
    (*(v12 + 8))(v10, v13);
    v19 = sub_10000A9C8(v16, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v25, "Fetching %s", v14, 0xCu);
    sub_10000A520(v15);

    (*(v9 + 8))(v26, v27);
  }

  else
  {

    (*(v12 + 8))(v10, v13);
    (*(v9 + 8))(v8, v11);
  }

  v20 = sub_10000BF7C();
  v21 = v0[2];
  *v21 = v20;
  v21[1] = v22;

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000021C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DB0(&qword_100014438, &qword_10000D050);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000A474(a3, v24 - v9, &qword_100014438, &qword_10000D050);
  v11 = sub_10000C3EC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000A220(v10, &qword_100014438, &qword_10000D050);
  }

  else
  {
    sub_10000C3DC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10000C3BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10000C33C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100009DB0(&qword_100014440, &qword_10000D068);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10000A220(a3, &qword_100014438, &qword_10000D050);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A220(a3, &qword_100014438, &qword_10000D050);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100009DB0(&qword_100014440, &qword_10000D068);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000024D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_10000BFDC();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_100009DB0(&qword_100014478, &unk_10000D0A8);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = sub_10000C0EC();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100002670, 0, 0);
}

uint64_t sub_100002670()
{
  (*(v0[18] + 104))(v0[20], enum case for MessageDetails.EventSource.unknown(_:), v0[17]);
  sub_10000A42C(&qword_1000143F0, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
  sub_10000C38C();
  sub_10000C38C();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_10000C47C();
  }

  v2 = *(v0[18] + 8);
  v2(v0[20], v0[17]);

  if (v1)
  {
    sub_10000C03C();
    swift_willThrow();
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    sub_10000C05C();
    swift_errorRetain();
    sub_10000BFBC();

    (*(v4 + 8))(v3, v5);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[17];
    (*(v9 + 16))(v8, v0[9], v10);
    if ((*(v9 + 88))(v8, v10) == enum case for MessageDetails.EventSource.screenTime(_:))
    {
      sub_10000C07C();
    }

    else
    {
      v11 = v0[19];
      v12 = v0[17];
      sub_10000C06C();
      v2(v11, v12);
    }

    v13 = v0[10];
    sub_10000A4DC((v13 + 16), *(v13 + 40));
    v14 = swift_task_alloc();
    v0[21] = v14;
    *v14 = v0;
    v14[1] = sub_1000029C8;
    v15 = v0[16];
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[6];
    v19 = v0[7];

    return dispatch thunk of RequestMessageDetailsBuilderProtocol.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)(v18, v16, v19, v17, 0, 1, v15, v13 + 56);
  }
}

uint64_t sub_1000029C8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100002B80;
  }

  else
  {
    v2 = sub_100002ADC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002ADC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100002B80()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_10000C05C();
  swift_errorRetain();
  sub_10000BFBC();

  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100002CA0(uint64_t result)
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

  v3 = sub_100003BAC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = sub_10000BEBC();
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

uint64_t sub_100002DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 232) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_10000BFDC();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  v8 = sub_10000C10C();
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_10000C1CC();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_100002F68, 0, 0);
}

uint64_t sub_100002F68()
{
  if (qword_100014300 != -1)
  {
    swift_once();
  }

  v1 = qword_100014498;
  if (*(qword_100014498 + 16) && (v2 = sub_100003D84(v0[5]), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + (v2 << 6));
    v0[18] = *v4;
    v0[19] = v4[1];
    v0[20] = v4[3];
    v0[21] = v4[5];
    v0[22] = v4[7];

    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_100003144;
    v6 = v0[17];
    v7 = v0[5];
    v8 = v0[2];
    v9 = v0[3];

    return sub_1000024D8(v6, v8, v9, v7);
  }

  else
  {
    sub_10000C03C();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100003144()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_1000038BC;
  }

  else
  {
    v2 = sub_100003284;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003284()
{
  v39 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  sub_10000C19C();
  (*(v4 + 104))(v2, enum case for MessageDetails.EventStatus.pending(_:), v3);
  sub_10000A42C(&qword_1000143D0, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  v5 = sub_10000C2EC();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if ((v5 & 1) == 0)
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    sub_10000C05C();
    (*(v10 + 16))(v7, v8, v9);
    v11 = sub_10000BFCC();
    v12 = sub_10000C41C();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    if (v13)
    {
      v17 = *(v0 + 104);
      v32 = *(v0 + 80);
      v35 = *(v0 + 64);
      v36 = *(v0 + 56);
      v37 = *(v0 + 72);
      v31 = *(v0 + 112);
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v18 = 136315138;
      v33 = v12;
      sub_10000C19C();
      v19 = sub_10000C0FC();
      v21 = v20;
      v6(v17, v32);
      (*(v15 + 8))(v14, v31);
      v22 = sub_10000A9C8(v19, v21, &v38);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v33, "Event status != pending (%s)", v18, 0xCu);
      sub_10000A520(v34);

      (*(v35 + 8))(v37, v36);
    }

    else
    {
      v24 = *(v0 + 64);
      v23 = *(v0 + 72);
      v25 = *(v0 + 56);

      (*(v15 + 8))(v14, v16);
      (*(v24 + 8))(v23, v25);
    }
  }

  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_1000035D4;
  v27 = *(v0 + 136);
  v28 = *(v0 + 232);
  v29 = *(v0 + 32);

  return sub_100004A48(v27, v28, v29);
}

uint64_t sub_1000035D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {

    v7 = sub_100003808;
  }

  else
  {
    *(v6 + 216) = a2;
    *(v6 + 224) = a1;
    v7 = sub_100003720;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100003720()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[18];
  v5 = v0[19];

  return v1(v4, v5, v2, v3);
}

uint64_t sub_100003808()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000038BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003958()
{
  sub_10000A520((v0 + 16));
  sub_10000A520((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1000039BC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003AB4;

  return v6(a1);
}

uint64_t sub_100003AB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100003BAC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DB0(&qword_100014448, &qword_10000D088);
  v10 = *(sub_10000BEBC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_10000BEBC() - 8);
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

unint64_t sub_100003D84(uint64_t a1)
{
  sub_10000C0EC();
  sub_10000A42C(&qword_100014450, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
  v2 = sub_10000C2DC();

  return sub_100003E1C(a1, v2);
}

unint64_t sub_100003E1C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10000C0EC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
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
      sub_10000A42C(&qword_100014458, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
      v15 = sub_10000C2EC();
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

char *sub_100003FDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100003FFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DB0(&qword_1000143F8, &qword_10000D030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100004108(uint64_t a1)
{
  v2 = sub_100009DB0(&qword_100014468, &qword_10000D098);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v28 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100009DB0(&qword_100014470, &qword_10000D0A0);
  v7 = sub_10000C45C();
  v8 = *(v2 + 48);
  v9 = *(v3 + 72);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v31 = v9;

  sub_10000A474(a1 + v10, v5, &qword_100014468, &qword_10000D098);
  v11 = sub_100003D84(v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  v14 = &v5[v8];
  v30 = sub_10000C0EC();
  v15 = *(v30 - 8);
  v29 = *(v15 + 32);
  v16 = *(v15 + 72);
  v17 = a1 + v31 + v10;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    result = v29(v7[6] + v16 * v13, v5, v30);
    v19 = (v7[7] + (v13 << 6));
    v21 = *(v14 + 2);
    v20 = *(v14 + 3);
    v22 = *(v14 + 1);
    *v19 = *v14;
    v19[1] = v22;
    v19[2] = v21;
    v19[3] = v20;
    v23 = v7[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v7[2] = v25;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v26 = v17 + v31;
    sub_10000A474(v17, v5, &qword_100014468, &qword_10000D098);
    v13 = sub_100003D84(v5);
    v17 = v26;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000434C(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_10000BFDC();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_10000BF6C();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v1[10] = *(v4 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_100009DB0(&qword_100014438, &qword_10000D050);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000044B4, 0, 0);
}

uint64_t sub_1000044B4()
{
  v37 = v0;
  if (sub_10000C08C())
  {
    v1 = v0[12];
    v2 = v0[13];
    v3 = v0[9];
    v4 = v0[8];
    v5 = v0[4];
    sub_10000C3CC();
    v6 = sub_10000C3EC();
    (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
    (*(v3 + 16))(v1, v5, v4);
    v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    (*(v3 + 32))(v8 + v7, v1, v4);
    v9 = sub_1000021C4(0, 0, v2, &unk_10000D060, v8);
    v0[14] = v9;
    v10 = swift_task_alloc();
    v0[15] = v10;
    v11 = sub_100009DB0(&qword_100014440, &qword_10000D068);
    *v10 = v0;
    v10[1] = sub_1000048A8;

    return Task<>.value.getter(v0 + 2, v9, v11);
  }

  else
  {
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[4];
    sub_10000C05C();
    (*(v14 + 16))(v12, v15, v13);
    v16 = sub_10000BFCC();
    v17 = sub_10000C41C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[11];
    v21 = v0[8];
    v20 = v0[9];
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    if (v18)
    {
      v35 = v0[5];
      v25 = swift_slowAlloc();
      v33 = v17;
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315138;
      sub_10000A42C(&qword_100014430, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v27 = sub_10000C46C();
      v34 = v22;
      v29 = v28;
      (*(v20 + 8))(v19, v21);
      v30 = sub_10000A9C8(v27, v29, &v36);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v16, v33, "%s not in trusted list", v25, 0xCu);
      sub_10000A520(v26);

      (*(v23 + 8))(v34, v35);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    v31 = v0[1];

    return v31(0, 0xF000000000000000);
  }
}

uint64_t sub_1000048A8()
{

  return _swift_task_switch(sub_1000049A4, 0, 0);
}

uint64_t sub_1000049A4()
{

  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100004A48(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 784) = a2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a3;
  v4 = sub_10000BFDC();
  *(v3 + 232) = v4;
  *(v3 + 240) = *(v4 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v5 = sub_10000BEBC();
  *(v3 + 312) = v5;
  *(v3 + 320) = *(v5 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v6 = sub_10000C2AC();
  *(v3 + 344) = v6;
  *(v3 + 352) = *(v6 - 8);
  *(v3 + 360) = swift_task_alloc();
  sub_100009DB0(&qword_1000143D8, &qword_10000D018);
  *(v3 + 368) = swift_task_alloc();
  v7 = sub_10000BF1C();
  *(v3 + 376) = v7;
  *(v3 + 384) = *(v7 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  v8 = sub_10000C0BC();
  *(v3 + 408) = v8;
  *(v3 + 416) = *(v8 - 8);
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = sub_100009DB0(&qword_1000143E0, &qword_10000D020);
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  *(v3 + 496) = swift_task_alloc();
  v9 = sub_10000BF6C();
  *(v3 + 504) = v9;
  *(v3 + 512) = *(v9 - 8);
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  sub_100009DB0(&qword_1000143E8, &qword_10000D028);
  *(v3 + 560) = swift_task_alloc();
  v10 = sub_10000C0EC();
  *(v3 + 568) = v10;
  *(v3 + 576) = *(v10 - 8);
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  v11 = sub_10000C1CC();
  *(v3 + 624) = v11;
  *(v3 + 632) = *(v11 - 8);
  *(v3 + 640) = swift_task_alloc();

  return _swift_task_switch(sub_100004F5C, 0, 0);
}

uint64_t sub_100004F5C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  (*(v0[79] + 16))(v0[80], v0[27], v0[78]);
  sub_10000C11C();
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = v0[77];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  if (v5 == 1)
  {
    v10 = enum case for MessageDetails.EventSource.unknown(_:);
    v11 = *(v7 + 104);
    v12 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v11(v6, enum case for MessageDetails.EventSource.unknown(_:), v0[71]);
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A220(v0[70], &qword_1000143E8, &qword_10000D028);
    }
  }

  else
  {
    (*(v7 + 32))(v6, v0[70], v0[71]);
    v10 = enum case for MessageDetails.EventSource.unknown(_:);
    v11 = *(v7 + 104);
    v12 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  }

  v0[81] = v11;
  v13 = v0[76];
  v14 = v0[71];
  v0[82] = v12;
  v11(v13, v10, v14);
  v0[83] = sub_10000A42C(&qword_1000143F0, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
  sub_10000C38C();
  sub_10000C38C();
  if (v0[14] == v0[16] && v0[15] == v0[17])
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_10000C47C();
  }

  v16 = v0[76];
  v17 = v0[72];
  v18 = v0[71];
  v19 = *(v17 + 8);
  v0[84] = v19;
  v0[85] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v16, v18);

  if (v15)
  {
    v20 = v0[80];
    v21 = v0[79];
    v22 = v0[78];
    v23 = v0[77];
    v24 = v0[71];
LABEL_24:
    sub_10000C03C();
    swift_willThrow();
    v19(v23, v24);
    (*(v21 + 8))(v20, v22);

    v41 = v0[1];

    return v41();
  }

  if (qword_100014300 != -1)
  {
    swift_once();
  }

  v25 = qword_100014498;
  if (!*(qword_100014498 + 16) || (v26 = sub_100003D84(v0[77]), (v27 & 1) == 0))
  {
    v20 = v0[80];
    v21 = v0[79];
    v22 = v0[78];
    v23 = v0[77];
    v24 = v0[71];
    goto LABEL_24;
  }

  v28 = (*(v25 + 56) + (v26 << 6));
  v0[86] = v28[1];
  v0[87] = v28[2];
  v0[88] = v28[3];
  v0[89] = v28[4];
  v0[90] = v28[5];
  v0[91] = v28[6];
  v0[92] = v28[7];

  sub_10000C14C();
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v0[63];
  v31 = v0[64];
  v32 = v0[62];
  sub_10000BF5C();

  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    sub_10000A220(v0[62], &qword_1000143E0, &qword_10000D020);
LABEL_18:
    v34 = v0[52];
    v33 = v0[53];
    v35 = v0[51];
    v36 = sub_10000C1AC();
    v38 = v37;
    v0[95] = v37;
    sub_10000C1EC();
    if (!v38)
    {
      v36 = 0;
      v38 = 0xE000000000000000;
    }

    (*(v34 + 104))(v33, enum case for FirstPartyApps.none(_:), v35);
    v39 = swift_task_alloc();
    v0[96] = v39;
    *v39 = v0;
    v39[1] = sub_100007A60;
    v40 = v0[53];

    return static AppBundleResolver.resolveThumbnail(_:_:)(v36, v38, v40);
  }

  (*(v0[64] + 32))(v0[69], v0[62], v0[63]);
  v42 = swift_task_alloc();
  v0[93] = v42;
  *v42 = v0;
  v42[1] = sub_1000056C4;
  v43 = v0[69];

  return sub_10000434C(v43);
}

uint64_t sub_1000056C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = a2;
  v3[94] = a2;

  return _swift_task_switch(sub_1000057CC, 0, 0);
}

uint64_t sub_1000057CC()
{
  v305 = v0;
  v1 = v0;
  v2 = v0[94];
  if (v2 >> 60 == 15)
  {
    (*(v0[64] + 8))(v0[69], v0[63]);
    goto LABEL_6;
  }

  v3 = v0[9];
  v4 = v0[69];
  v6 = v0[63];
  v5 = v0[64];
  v7 = objc_allocWithZone(UIImage);
  isa = sub_10000BF8C().super.isa;
  v9 = [v7 initWithData:isa];

  sub_100009DF8(v3, v2);
  (*(v5 + 8))(v4, v6);
  if (v9)
  {
    v10 = v1[63];
    v11 = v1[64];
    v12 = v1[61];
    v13 = v1[28];
    sub_10000BF0C();
    sub_10000A474(v13, v12, &qword_1000143E0, &qword_10000D020);
    v14 = *(v11 + 48);
    v301 = v1;
    v292 = v9;
    if (v14(v12, 1, v10) == 1)
    {
      sub_10000A220(v1[61], &qword_1000143E0, &qword_10000D020);
    }

    else
    {
      v25 = v1[47];
      v26 = v1[48];
      v27 = v1[46];
      (*(v1[64] + 32))(v1[68], v1[61], v1[63]);
      sub_10000BEEC();
      if ((*(v26 + 48))(v27, 1, v25) == 1)
      {
        v28 = v1[46];
        (*(v1[64] + 8))(v1[68], v1[63]);
        sub_10000A220(v28, &qword_1000143D8, &qword_10000D018);
      }

      else
      {
        (*(v1[48] + 32))(v1[49], v1[46], v1[47]);
        v29 = sub_10000BECC();
        if (v29)
        {
          v288 = v14;
          v30 = v1[68];
          v297 = *(v29 + 16);
          if (v297)
          {
            v283 = v29;
            sub_10000C29C();
            sub_10000C2CC();
            sub_10000A42C(&qword_100014420, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
            sub_10000A42C(&qword_100014428, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
            sub_10000C28C();
            v122 = v1[26];
            v123 = sub_10000C2BC();
            sub_10000BFEC();
            v125 = v124;

            if (!v125)
            {
              v126 = sub_10000C2BC();
              sub_10000BFFC();
            }

            v127 = v1[40];
            sub_10000C17C();

            v128 = 0;
            v129 = (v127 + 8);
            do
            {
              v130 = v128;
              if (v297 == v128)
              {
                break;
              }

              if (v128 >= v283[2])
              {
                __break(1u);
                return static AppBundleResolver.resolveThumbnail(_:_:)(v23, v24, v22);
              }

              (*(v127 + 16))(v301[42], v283 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v128, v301[39]);
              v131 = sub_10000BEAC();
              v133 = v301[42];
              v134 = v301[39];
              v135 = v131 == 0x69616E626D756874 && v132 == 0xED0000617461446CLL;
              if (v135)
              {

                (*v129)(v133, v134);
                break;
              }

              ++v128;
              v136 = sub_10000C47C();

              v23 = (*v129)(v133, v134);
            }

            while ((v136 & 1) == 0);
            v1 = v301;
            v249 = v301[68];
            v250 = v301[63];
            v251 = v301[64];
            v253 = v301[48];
            v252 = v301[49];
            v254 = v301[47];
            (*(v301[44] + 8))(v301[45], v301[43]);
            (*(v253 + 8))(v252, v254);
            (*(v251 + 8))(v249, v250);
            v135 = v297 == v130;
            v14 = v288;
            v9 = v292;
            v34 = v283;
            if (v135)
            {
              goto LABEL_18;
            }

            sub_10000C05C();
            v255 = sub_10000BFCC();
            v256 = sub_10000C42C();
            if (os_log_type_enabled(v255, v256))
            {
              v257 = swift_slowAlloc();
              *v257 = 0;
              _os_log_impl(&_mh_execute_header, v255, v256, "AskTo supplied the thumbnail data. Removing the existing thumbnailData.", v257, 2u);
            }

            v258 = v301[38];
            v259 = v301[29];
            v260 = v301[30];

            (*(v260 + 8))(v258, v259);
            goto LABEL_22;
          }

          v117 = v1[63];
          v118 = v1[64];
          v120 = v1[48];
          v119 = v1[49];
          v121 = v1[47];

          (*(v120 + 8))(v119, v121);
          (*(v118 + 8))(v30, v117);
          v34 = &_swiftEmptyArrayStorage;
          v14 = v288;
LABEL_18:
          v35 = sub_10000C12C();
          if (v36 >> 60 != 15)
          {
            sub_100009DF8(v35, v36);
            goto LABEL_23;
          }

          v37 = UIImagePNGRepresentation(v9);
          if (v37)
          {
            v38 = v37;
            sub_10000BF9C();
          }

LABEL_22:
          sub_10000C13C();
LABEL_23:
          sub_10000C0CC();
          sub_10000C05C();

          v39 = sub_10000BFCC();
          v40 = sub_10000C42C();
          if (os_log_type_enabled(v39, v40))
          {
            v274 = v40;
            v41 = swift_slowAlloc();
            v272 = swift_slowAlloc();
            v303 = v272;
            *v41 = 134218242;
            *(v41 + 4) = v34[2];

            v275 = v41;
            *(v41 + 12) = 2080;
            v42 = v34[2];
            v284 = v34;
            if (v42)
            {
              v289 = v14;
              v43 = v301[40];
              v304[0] = &_swiftEmptyArrayStorage;
              sub_100003FDC(0, v42, 0);
              v44 = &_swiftEmptyArrayStorage;
              v45 = *(v43 + 16);
              v43 += 16;
              v46 = v34 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
              v294 = *(v43 + 56);
              v298 = v45;
              v47 = (v43 - 8);
              do
              {
                v48 = v301[41];
                v49 = v301[39];
                v298(v48, v46, v49);
                v50 = sub_10000BEAC();
                v52 = v51;
                (*v47)(v48, v49);
                v304[0] = v44;
                v54 = v44[2];
                v53 = v44[3];
                if (v54 >= v53 >> 1)
                {
                  sub_100003FDC((v53 > 1), v54 + 1, 1);
                  v44 = v304[0];
                }

                v44[2] = v54 + 1;
                v55 = &v44[2 * v54];
                *(v55 + 4) = v50;
                *(v55 + 5) = v52;
                v46 += v294;
                --v42;
              }

              while (v42);
              v14 = v289;
            }

            v59 = v301[37];
            v60 = v301[29];
            v61 = v301[30];
            v62 = sub_10000C3AC();
            v64 = v63;
            v1 = v301;

            v65 = sub_10000A9C8(v62, v64, &v303);

            *(v275 + 14) = v65;
            _os_log_impl(&_mh_execute_header, v39, v274, "Appending %ld additional components to conversation url: %s", v275, 0x16u);
            sub_10000A520(v272);

            v299 = *(v61 + 8);
            v299(v59, v60);
            v9 = v292;
            v34 = v284;
          }

          else
          {
            v56 = v1[37];
            v57 = v1[29];
            v58 = v1[30];

            v299 = *(v58 + 8);
            v299(v56, v57);
          }

          v66 = v1[63];
          v67 = v1[60];
          sub_100002CA0(v34);
          sub_10000BEDC();
          sub_10000BEFC();
          if (v14(v67, 1, v66) == 1)
          {
            v285 = v1[84];
            v68 = v1[79];
            v295 = v1[78];
            v300 = v1[80];
            v277 = v1[71];
            v281 = v1[77];
            v69 = v9;
            v70 = v1[60];
            v71 = v1;
            v72 = v1[50];
            v74 = v71[47];
            v73 = v71[48];

            sub_10000A220(v70, &qword_1000143E0, &qword_10000D020);
            sub_10000C03C();
            swift_willThrow();

            (*(v73 + 8))(v72, v74);
            v285(v281, v277);
            (*(v68 + 8))(v300, v295);
            goto LABEL_100;
          }

          v75 = *(v1 + 784);
          (*(v1[64] + 32))(v1[67], v1[60], v1[63]);
          if (v75 != 1)
          {
            v97 = [objc_allocWithZone(MSMessageTemplateLayout) init];
            [v97 setImage:v9];
            sub_10000C16C();
            v98 = sub_10000C2FC();

            [v97 setCaption:v98];

            v99 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v97];
            v100 = v99;
LABEL_82:
            v291 = v100;
            v193 = [objc_allocWithZone(MSSession) init];
            v194 = [objc_allocWithZone(MSMessage) initWithSession:v193];

            sub_10000BF3C(v195);
            v197 = v196;
            [v194 setURL:v196];

            [v194 setLayout:v100];
            sub_10000C16C();
            v198 = sub_10000C2FC();

            [v194 setSummaryText:v198];

            sub_10000C05C();
            v199 = v194;
            v200 = sub_10000BFCC();
            v201 = sub_10000C40C();

            v296 = v199;
            if (os_log_type_enabled(v200, v201))
            {
              v202 = swift_slowAlloc();
              v203 = swift_slowAlloc();
              v304[0] = v203;
              *v202 = 136315138;
              v204 = [v199 URL];
              if (v204)
              {
                v205 = v204;
                sub_10000BF4C();

                v206 = 0;
              }

              else
              {
                v206 = 1;
              }

              v209 = v1[34];
              v210 = v1[29];
              (*(v1[64] + 56))(v1[55], v206, 1, v1[63]);
              v211 = sub_10000C32C();
              v213 = sub_10000A9C8(v211, v212, v304);

              *(v202 + 4) = v213;
              _os_log_impl(&_mh_execute_header, v200, v201, "message url %s", v202, 0xCu);
              sub_10000A520(v203);

              v299(v209, v210);
              v9 = v292;
              v199 = v296;
            }

            else
            {
              v207 = v1[34];
              v208 = v1[29];

              v299(v207, v208);
            }

            v214 = v9;
            v215 = UIImageJPEGRepresentation(v214, 0.4);
            if (v215)
            {
              v216 = v215;
              v217 = sub_10000BF9C();
              v219 = v218;

              v282 = v219;
              v287 = v217;
              v220.super.isa = sub_10000BF8C().super.isa;
            }

            else
            {

              v220.super.isa = 0;
              v282 = 0xF000000000000000;
              v287 = 0;
            }

            sub_10000C35C();

            v221 = sub_10000C2FC();

            v222 = [v199 ppl_pluginPayloadWithAppIconData:v220.super.isa appName:v221 allowDataPayloads:0];

            v223 = [v222 data];
            v293 = v214;
            if (v223)
            {
              v302 = sub_10000BF9C();
              v279 = v224;

              sub_10000C05C();
              v225 = sub_10000BFCC();
              v226 = sub_10000C40C();
              if (os_log_type_enabled(v225, v226))
              {
                v227 = swift_slowAlloc();
                *v227 = 0;
                _os_log_impl(&_mh_execute_header, v225, v226, "SPI Payload successful!", v227, 2u);
              }

              v265 = v1[84];
              v228 = v1[79];
              v266 = v1[78];
              v267 = v1[80];
              v263 = v1[71];
              v264 = v1[77];
              v229 = v1[64];
              v261 = v1[63];
              v262 = v1[67];
              v230 = v1[50];
              v232 = v1[47];
              v231 = v1[48];
              v233 = v1[33];
              v234 = v1[29];

              sub_100009DF8(v287, v282);
              v299(v233, v234);
              (*(v229 + 8))(v262, v261);
              (*(v231 + 8))(v230, v232);
              v265(v264, v263);
              (*(v228 + 8))(v267, v266);

              v235 = v1[1];

              return v235(v302, v279);
            }

            sub_10000C05C();
            v237 = sub_10000BFCC();
            v238 = sub_10000C41C();
            if (os_log_type_enabled(v237, v238))
            {
              v239 = swift_slowAlloc();
              *v239 = 0;
              _os_log_impl(&_mh_execute_header, v237, v238, "Message _pluginPayload create failed", v239, 2u);
            }

            v273 = v1[84];
            v240 = v1[79];
            v276 = v1[78];
            v280 = v1[80];
            v270 = v1[71];
            v271 = v1[77];
            v241 = v1[67];
            v71 = v1;
            v244 = v1 + 63;
            v243 = v1[63];
            v242 = v244[1];
            v245 = v71[48];
            v268 = v71[47];
            v269 = v71[50];
            v246 = v71[32];
            v247 = v71[29];

            v299(v246, v247);
            sub_10000C03C();
            swift_willThrow();

            sub_100009DF8(v287, v282);
            (*(v242 + 8))(v241, v243);
            (*(v245 + 8))(v269, v268);
            v273(v271, v270);
            (*(v240 + 8))(v280, v276);
LABEL_100:

            v248 = v71[1];

            return v248();
          }

          v290 = v14;
          v76 = v1[77];
          v77 = v1[75];
          v78 = v1[72];
          v79 = v1[71];
          sub_10000C05C();
          (*(v78 + 16))(v77, v76, v79);
          v80 = sub_10000BFCC();
          v81 = sub_10000C40C();
          v82 = os_log_type_enabled(v80, v81);
          v83 = v1[84];
          v84 = v1[75];
          v85 = v1[71];
          v86 = v1[36];
          v87 = v1[29];
          if (v82)
          {
            v286 = v1[29];
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v304[0] = v89;
            *v88 = 136315138;
            v90 = sub_10000C0DC();
            v278 = v86;
            v92 = v91;
            v83(v84, v85);
            v93 = v90;
            v1 = v301;
            v94 = sub_10000A9C8(v93, v92, v304);

            *(v88 + 4) = v94;
            _os_log_impl(&_mh_execute_header, v80, v81, "Using LP fallback for %s", v88, 0xCu);
            sub_10000A520(v89);

            v95 = v278;
            v96 = v286;
          }

          else
          {

            v83(v84, v85);
            v95 = v86;
            v96 = v87;
          }

          v299(v95, v96);
          v101 = enum case for MessageDetails.EventSource.screenTime(_:);
          (v1[81])(v1[74], enum case for MessageDetails.EventSource.screenTime(_:), v1[71]);
          sub_10000C38C();
          sub_10000C38C();
          v102 = v1[84];
          v103 = v1[74];
          v104 = v1[71];
          if (v1[18] == v1[20] && v1[19] == v1[21])
          {
            v102(v1[74], v1[71]);
          }

          else
          {
            v105 = sub_10000C47C();
            v102(v103, v104);

            if ((v105 & 1) == 0)
            {
              sub_10000C18C();
              v113 = sub_10000C34C();
              v115 = v114;

              if (v113 == sub_10000C15C() && v115 == v116)
              {
              }

              else
              {
                v137 = sub_10000C47C();

                if ((v137 & 1) == 0)
                {
                  sub_10000C18C();
                  goto LABEL_62;
                }
              }

              sub_10000C16C();
LABEL_62:
              v138 = v1[81];
              v139 = v1[73];
              v140 = v1[71];
              (*(v1[64] + 56))(v1[59], 1, 1, v1[63]);
              v138(v139, v101, v140);
              sub_10000C38C();
              sub_10000C38C();
              v141 = v1[84];
              v142 = v1[73];
              v143 = v1[71];
              if (v1[22] == v1[24] && v1[23] == v1[25])
              {
                v141(v1[73], v1[71]);
              }

              else
              {
                v144 = sub_10000C47C();
                v141(v142, v143);

                if ((v144 & 1) == 0)
                {
                  sub_10000C24C();
                  sub_10000C23C();
                  sub_10000C1FC();
                  goto LABEL_68;
                }
              }

              sub_10000C24C();
              sub_10000C23C();
              sub_10000C20C();
LABEL_68:

              sub_10000C36C();
              v146 = v145;

              if (v146)
              {
                v148 = v1[58];
                v147 = v1[59];
                sub_10000BF5C();

                sub_100009E60(v148, v147);
              }

              v149 = v1[63];
              v150 = v1[57];
              sub_10000A474(v1[59], v150, &qword_1000143E0, &qword_10000D020);
              LODWORD(v149) = v290(v150, 1, v149);
              sub_10000A220(v150, &qword_1000143E0, &qword_10000D020);
              if (v149 == 1)
              {
                v151 = v1[58];
                v152 = v1[59];
                sub_10000BF5C();
                sub_100009E60(v151, v152);
              }

              sub_10000C05C();
              v153 = sub_10000BFCC();
              v154 = sub_10000C40C();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = v1[63];
                v156 = v1[59];
                v157 = swift_slowAlloc();
                v158 = swift_slowAlloc();
                *v157 = 138412290;
                swift_beginAccess();
                v159 = v290(v156, 1, v155);
                v160 = 0;
                if (!v159)
                {
                  v161 = v1[66];
                  v162 = v1[63];
                  v163 = v1[64];
                  (*(v163 + 16))(v161, v1[59], v162);
                  v164 = sub_10000BF2C();
                  v166 = v165;
                  (*(v163 + 8))(v161, v162);
                  sub_100009ED0();
                  swift_allocError();
                  *v167 = v164;
                  v167[1] = v166;
                  v1 = v301;
                  v160 = _swift_stdlib_bridgeErrorToNSError();
                }

                *(v157 + 4) = v160;
                *v158 = v160;
                _os_log_impl(&_mh_execute_header, v153, v154, "alternate url %@", v157, 0xCu);
                sub_10000A220(v158, &qword_100014400, &qword_10000D038);
              }

              v168 = v1[63];
              v169 = v1[59];
              v170 = v1[56];
              v171 = v1[35];
              v172 = v1[29];

              v299(v171, v172);
              swift_beginAccess();
              sub_10000A474(v169, v170, &qword_1000143E0, &qword_10000D020);
              v174 = 0;
              v9 = v292;
              if (v290(v170, 1, v168) != 1)
              {
                v175 = v1[63];
                v176 = v1[64];
                v177 = v1[56];
                sub_10000BF3C(v173);
                v174 = v178;
                (*(v176 + 8))(v177, v175);
              }

              v179 = sub_10000C2FC();

              v180 = UIImagePNGRepresentation(v292);
              if (v180)
              {
                v181 = v180;
                v182 = sub_10000BF9C();
                v184 = v183;

                v185.super.isa = sub_10000BF8C().super.isa;
                sub_100009E0C(v182, v184);
              }

              else
              {
                v185.super.isa = 0;
              }

              v186 = v1[92];
              v187 = v1[91];
              v188 = v1[59];
              v189 = [objc_opt_self() createRichLinkLayoutWithURL:v174 title:v179 imageData:v185.super.isa];

              v190 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v189];
              sub_100009DB0(&qword_1000143F8, &qword_10000D030);
              v191 = swift_allocObject();
              *(v191 + 16) = xmmword_10000CF80;
              *(v191 + 32) = v187;
              *(v191 + 40) = v186;

              v100 = v190;
              v192 = sub_10000C39C().super.isa;

              [v100 setPpl_requiredCapabilities:v192];

              sub_10000A220(v188, &qword_1000143E0, &qword_10000D020);
              goto LABEL_82;
            }
          }

          sub_10000C35C();
          sub_100009DB0(&qword_100014410, &qword_10000D040);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_10000CF70;
          v107 = sub_10000C1BC();
          v109 = v108;
          *(v106 + 56) = &type metadata for String;
          v110 = sub_100009F24();
          *(v106 + 64) = v110;
          *(v106 + 32) = v107;
          *(v106 + 40) = v109;
          v111 = sub_10000C18C();
          *(v106 + 96) = &type metadata for String;
          *(v106 + 104) = v110;
          *(v106 + 72) = v111;
          *(v106 + 80) = v112;
          sub_10000C31C();

          goto LABEL_62;
        }

        v31 = v1[68];
        v32 = v1[63];
        v33 = v1[64];
        (*(v1[48] + 8))(v1[49], v1[47]);
        (*(v33 + 8))(v31, v32);
      }
    }

    v34 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

LABEL_6:
  v16 = v1[52];
  v15 = v1[53];
  v17 = v1[51];
  v18 = sub_10000C1AC();
  v20 = v19;
  v1[95] = v19;
  sub_10000C1EC();
  if (!v20)
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  (*(v16 + 104))(v15, enum case for FirstPartyApps.none(_:), v17);
  v21 = swift_task_alloc();
  v1[96] = v21;
  *v21 = v1;
  v21[1] = sub_100007A60;
  v22 = v1[53];
  v23 = v18;
  v24 = v20;

  return static AppBundleResolver.resolveThumbnail(_:_:)(v23, v24, v22);
}

uint64_t sub_100007A60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = a2;
  v5 = v3[53];
  v6 = v3[52];
  v7 = v3[51];
  v4[97] = a2;

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_100007BEC, 0, 0);
}

void sub_100007BEC()
{
  v292 = v0;
  v1 = v0;
  v2 = v0[97];
  if (v2 >> 60 == 15 || (v3 = v0[12], v4 = objc_allocWithZone(UIImage), isa = sub_10000BF8C().super.isa, v6 = [v4 initWithData:isa], isa, sub_100009DF8(v3, v2), !v6))
  {
    v7 = sub_10000C2FC();
    v6 = [objc_opt_self() imageNamed:v7];
  }

  v8 = v0[63];
  v9 = v0[64];
  v10 = v0[61];
  v11 = v0[28];
  sub_10000BF0C();
  sub_10000A474(v11, v10, &qword_1000143E0, &qword_10000D020);
  v12 = *(v9 + 48);
  v289 = v0;
  v281 = v6;
  if (v12(v10, 1, v8) == 1)
  {
    sub_10000A220(v0[61], &qword_1000143E0, &qword_10000D020);
LABEL_12:
    v22 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v13 = v0[47];
  v14 = v0[48];
  v15 = v1[46];
  (*(v1[64] + 32))(v1[68], v1[61], v1[63]);
  sub_10000BEEC();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v16 = v1[46];
    (*(v1[64] + 8))(v1[68], v1[63]);
    sub_10000A220(v16, &qword_1000143D8, &qword_10000D018);
    goto LABEL_12;
  }

  (*(v1[48] + 32))(v1[49], v1[46], v1[47]);
  v17 = sub_10000BECC();
  if (!v17)
  {
    v19 = v1[68];
    v20 = v1[63];
    v21 = v1[64];
    (*(v1[48] + 8))(v1[49], v1[47]);
    (*(v21 + 8))(v19, v20);
    goto LABEL_12;
  }

  v18 = v1[68];
  v286 = *(v17 + 16);
  if (!v286)
  {
    v105 = v1[63];
    v106 = v1[64];
    v108 = v1[48];
    v107 = v1[49];
    v109 = v1[47];

    (*(v108 + 8))(v107, v109);
    (*(v106 + 8))(v18, v105);
    v22 = &_swiftEmptyArrayStorage;
LABEL_13:
    v23 = sub_10000C12C();
    if (v24 >> 60 == 15)
    {
      if (v6)
      {
        v25 = UIImagePNGRepresentation(v6);
        if (v25)
        {
          v26 = v25;
          sub_10000BF9C();
        }
      }

      sub_10000C13C();
    }

    else
    {
      sub_100009DF8(v23, v24);
    }

    goto LABEL_19;
  }

  v270 = v17;
  sub_10000C29C();
  sub_10000C2CC();
  sub_10000A42C(&qword_100014420, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  sub_10000A42C(&qword_100014428, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  sub_10000C28C();
  v110 = v1[26];
  v111 = sub_10000C2BC();
  sub_10000BFEC();
  v113 = v112;

  v279 = v12;
  if (!v113)
  {
    v114 = sub_10000C2BC();
    sub_10000BFFC();
  }

  v115 = v1[40];
  sub_10000C17C();

  v116 = 0;
  v117 = (v115 + 8);
  do
  {
    v118 = v116;
    if (v286 == v116)
    {
      break;
    }

    if (v116 >= v270[2])
    {
      __break(1u);
      return;
    }

    (*(v115 + 16))(v289[42], v270 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v116, v289[39]);
    v119 = sub_10000BEAC();
    v121 = v289[42];
    v122 = v289[39];
    if (v119 == 0x69616E626D756874 && v120 == 0xED0000617461446CLL)
    {

      (*v117)(v121, v122);
      break;
    }

    ++v116;
    v124 = sub_10000C47C();

    (*v117)(v121, v122);
  }

  while ((v124 & 1) == 0);
  v1 = v289;
  v238 = v289[68];
  v239 = v289[63];
  v240 = v289[64];
  v242 = v289[48];
  v241 = v289[49];
  v243 = v289[47];
  (*(v289[44] + 8))(v289[45], v289[43]);
  (*(v242 + 8))(v241, v243);
  (*(v240 + 8))(v238, v239);
  v12 = v279;
  v6 = v281;
  v22 = v270;
  if (v286 == v118)
  {
    goto LABEL_13;
  }

  sub_10000C05C();
  v244 = sub_10000BFCC();
  v245 = sub_10000C42C();
  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    *v246 = 0;
    _os_log_impl(&_mh_execute_header, v244, v245, "AskTo supplied the thumbnail data. Removing the existing thumbnailData.", v246, 2u);
  }

  v247 = v289[38];
  v248 = v289[29];
  v249 = v289[30];

  (*(v249 + 8))(v247, v248);
  sub_10000C13C();
  v22 = v270;
LABEL_19:
  sub_10000C0CC();
  sub_10000C05C();

  v27 = sub_10000BFCC();
  v28 = sub_10000C42C();
  if (os_log_type_enabled(v27, v28))
  {
    v262 = v28;
    v277 = v12;
    v29 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v290 = v261;
    *v29 = 134218242;
    *(v29 + 4) = v22[2];

    v265 = v29;
    *(v29 + 12) = 2080;
    v30 = v22[2];
    v271 = v22;
    if (v30)
    {
      v31 = v1[40];
      v291[0] = &_swiftEmptyArrayStorage;
      sub_100003FDC(0, v30, 0);
      v32 = &_swiftEmptyArrayStorage;
      v33 = *(v31 + 16);
      v31 += 16;
      v34 = v22 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v283 = *(v31 + 56);
      v287 = v33;
      v35 = (v31 - 8);
      do
      {
        v36 = v289[41];
        v37 = v289[39];
        v287(v36, v34, v37);
        v38 = sub_10000BEAC();
        v40 = v39;
        (*v35)(v36, v37);
        v291[0] = v32;
        v42 = v32[2];
        v41 = v32[3];
        if (v42 >= v41 >> 1)
        {
          sub_100003FDC((v41 > 1), v42 + 1, 1);
          v32 = v291[0];
        }

        v32[2] = v42 + 1;
        v43 = &v32[2 * v42];
        *(v43 + 4) = v38;
        *(v43 + 5) = v40;
        v34 += v283;
        --v30;
      }

      while (v30);
      v1 = v289;
      v6 = v281;
    }

    v49 = v1[37];
    v51 = v1[29];
    v50 = v1[30];
    v52 = sub_10000C3AC();
    v54 = v53;

    v55 = sub_10000A9C8(v52, v54, &v290);

    *(v265 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v27, v262, "Appending %ld additional components to conversation url: %s", v265, 0x16u);
    sub_10000A520(v261);

    v47 = *(v50 + 8);
    v47(v49, v51);
    v12 = v277;
    v48 = v271;
  }

  else
  {
    v44 = v1[37];
    v45 = v1[29];
    v46 = v1[30];

    v47 = *(v46 + 8);
    v47(v44, v45);
    v48 = v22;
  }

  v56 = v1[63];
  v57 = v1[60];
  sub_100002CA0(v48);
  sub_10000BEDC();
  sub_10000BEFC();
  if (v12(v57, 1, v56) == 1)
  {
    v275 = v1[84];
    v58 = v1[79];
    v282 = v1[78];
    v284 = v1[80];
    v266 = v1[71];
    v272 = v1[77];
    v59 = v1[60];
    v60 = v1;
    v61 = v1[50];
    v63 = v60[47];
    v62 = v60[48];

    sub_10000A220(v59, &qword_1000143E0, &qword_10000D020);
    sub_10000C03C();
    swift_willThrow();

    (*(v62 + 8))(v61, v63);
    v275(v272, v266);
    (*(v58 + 8))(v284, v282);
LABEL_100:

    v237 = v60[1];

    v237();
    return;
  }

  v64 = *(v1 + 784);
  (*(v1[64] + 32))(v1[67], v1[60], v1[63]);
  v65 = &PPLMessageRichLinkLayout__metaData;
  v288 = v47;
  if (v64 != 1)
  {
    v85 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    [v85 setImage:v6];
    sub_10000C16C();
    v86 = sub_10000C2FC();

    [v85 setCaption:v86];

    v87 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v85];
    v88 = v87;
    goto LABEL_80;
  }

  v278 = v12;
  v66 = v1[77];
  v67 = v1[75];
  v68 = v1[72];
  v69 = v1[71];
  sub_10000C05C();
  (*(v68 + 16))(v67, v66, v69);
  v70 = sub_10000BFCC();
  v71 = sub_10000C40C();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v1[84];
  v74 = v1[75];
  v75 = v1[71];
  v76 = v1[36];
  v77 = v1[29];
  if (v72)
  {
    v273 = v1[29];
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v291[0] = v79;
    *v78 = 136315138;
    v80 = sub_10000C0DC();
    v267 = v76;
    v82 = v81;
    v73(v74, v75);
    v83 = v80;
    v1 = v289;
    v84 = sub_10000A9C8(v83, v82, v291);

    *(v78 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v70, v71, "Using LP fallback for %s", v78, 0xCu);
    sub_10000A520(v79);

    v288(v267, v273);
  }

  else
  {

    v73(v74, v75);
    v47(v76, v77);
  }

  v89 = enum case for MessageDetails.EventSource.screenTime(_:);
  (v1[81])(v1[74], enum case for MessageDetails.EventSource.screenTime(_:), v1[71]);
  sub_10000C38C();
  sub_10000C38C();
  v90 = v1[84];
  v91 = v1[74];
  v92 = v1[71];
  if (v1[18] == v1[20] && v1[19] == v1[21])
  {
    v90(v1[74], v1[71]);

LABEL_39:
    sub_10000C35C();
    sub_100009DB0(&qword_100014410, &qword_10000D040);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_10000CF70;
    v95 = sub_10000C1BC();
    v97 = v96;
    *(v94 + 56) = &type metadata for String;
    v98 = sub_100009F24();
    *(v94 + 64) = v98;
    *(v94 + 32) = v95;
    *(v94 + 40) = v97;
    v99 = sub_10000C18C();
    *(v94 + 96) = &type metadata for String;
    *(v94 + 104) = v98;
    *(v94 + 72) = v99;
    *(v94 + 80) = v100;
    sub_10000C31C();

    goto LABEL_58;
  }

  v93 = sub_10000C47C();
  v90(v91, v92);

  if (v93)
  {
    goto LABEL_39;
  }

  sub_10000C18C();
  v101 = sub_10000C34C();
  v103 = v102;

  if (v101 == sub_10000C15C() && v103 == v104)
  {
  }

  else
  {
    v125 = sub_10000C47C();

    if ((v125 & 1) == 0)
    {
      sub_10000C18C();
      goto LABEL_58;
    }
  }

  sub_10000C16C();
LABEL_58:
  v126 = v1[81];
  v127 = v1[73];
  v128 = v1[71];
  (*(v1[64] + 56))(v1[59], 1, 1, v1[63]);
  v126(v127, v89, v128);
  sub_10000C38C();
  sub_10000C38C();
  v129 = v1[84];
  v130 = v1[73];
  v131 = v1[71];
  if (v1[22] == v1[24] && v1[23] == v1[25])
  {
    v129(v1[73], v1[71]);

    v47 = v288;
  }

  else
  {
    v132 = sub_10000C47C();
    v129(v130, v131);

    v47 = v288;
    if ((v132 & 1) == 0)
    {
      sub_10000C24C();
      sub_10000C23C();
      sub_10000C1FC();
      goto LABEL_64;
    }
  }

  sub_10000C24C();
  sub_10000C23C();
  sub_10000C20C();
LABEL_64:

  sub_10000C36C();
  v134 = v133;

  if (v134)
  {
    v136 = v1[58];
    v135 = v1[59];
    sub_10000BF5C();

    sub_100009E60(v136, v135);
  }

  v137 = v1[63];
  v138 = v1[57];
  sub_10000A474(v1[59], v138, &qword_1000143E0, &qword_10000D020);
  LODWORD(v137) = v278(v138, 1, v137);
  sub_10000A220(v138, &qword_1000143E0, &qword_10000D020);
  if (v137 == 1)
  {
    v139 = v1[58];
    v140 = v1[59];
    sub_10000BF5C();
    sub_100009E60(v139, v140);
  }

  sub_10000C05C();
  v141 = sub_10000BFCC();
  v142 = sub_10000C40C();
  if (os_log_type_enabled(v141, v142))
  {
    v143 = v1[63];
    v144 = v1[59];
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    *v145 = 138412290;
    swift_beginAccess();
    v147 = v278(v144, 1, v143);
    v148 = 0;
    if (!v147)
    {
      v149 = v1[66];
      v151 = v1[63];
      v150 = v1[64];
      (*(v150 + 16))(v149, v1[59], v151);
      v152 = sub_10000BF2C();
      v154 = v153;
      (*(v150 + 8))(v149, v151);
      sub_100009ED0();
      swift_allocError();
      *v155 = v152;
      v155[1] = v154;
      v1 = v289;
      v148 = _swift_stdlib_bridgeErrorToNSError();
    }

    *(v145 + 4) = v148;
    *v146 = v148;
    _os_log_impl(&_mh_execute_header, v141, v142, "alternate url %@", v145, 0xCu);
    sub_10000A220(v146, &qword_100014400, &qword_10000D038);

    v47 = v288;
  }

  v156 = v1[63];
  v157 = v1[59];
  v158 = v1[56];
  v159 = v1[35];
  v160 = v1[29];

  v47(v159, v160);
  swift_beginAccess();
  sub_10000A474(v157, v158, &qword_1000143E0, &qword_10000D020);
  v162 = 0;
  if (v278(v158, 1, v156) != 1)
  {
    v164 = v1[63];
    v163 = v1[64];
    v165 = v1[56];
    sub_10000BF3C(v161);
    v162 = v166;
    (*(v163 + 8))(v165, v164);
  }

  v167 = sub_10000C2FC();

  if (v281)
  {
    v168 = UIImagePNGRepresentation(v281);
    v65 = &PPLMessageRichLinkLayout__metaData;
    if (v168)
    {
      v169 = v168;
      v170 = sub_10000BF9C();
      v172 = v171;

      v173.super.isa = sub_10000BF8C().super.isa;
      sub_100009E0C(v170, v172);
    }

    else
    {
      v173.super.isa = 0;
    }
  }

  else
  {
    v173.super.isa = 0;
    v65 = &PPLMessageRichLinkLayout__metaData;
  }

  v174 = v1[92];
  v175 = v1[91];
  v176 = v1[59];
  v177 = [objc_opt_self() createRichLinkLayoutWithURL:v162 title:v167 imageData:v173.super.isa];

  v178 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v177];
  sub_100009DB0(&qword_1000143F8, &qword_10000D030);
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_10000CF80;
  *(v179 + 32) = v175;
  *(v179 + 40) = v174;

  v88 = v178;
  v180 = sub_10000C39C().super.isa;

  [v88 setPpl_requiredCapabilities:v180];

  sub_10000A220(v176, &qword_1000143E0, &qword_10000D020);
  v6 = v281;
LABEL_80:
  v280 = v88;
  v181 = [objc_allocWithZone(MSSession) v65[7].ivar_lyt];
  v182 = [objc_allocWithZone(MSMessage) initWithSession:v181];

  sub_10000BF3C(v183);
  v185 = v184;
  [v182 setURL:v184];

  [v182 setLayout:v88];
  sub_10000C16C();
  v186 = sub_10000C2FC();

  [v182 setSummaryText:v186];

  sub_10000C05C();
  v187 = v182;
  v188 = sub_10000BFCC();
  v189 = sub_10000C40C();

  v285 = v187;
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v291[0] = v191;
    *v190 = 136315138;
    v192 = [v187 URL];
    if (v192)
    {
      v193 = v192;
      sub_10000BF4C();

      v194 = 0;
    }

    else
    {
      v194 = 1;
    }

    v197 = v1[34];
    v198 = v1[29];
    (*(v1[64] + 56))(v1[55], v194, 1, v1[63]);
    v199 = sub_10000C32C();
    v201 = sub_10000A9C8(v199, v200, v291);

    *(v190 + 4) = v201;
    _os_log_impl(&_mh_execute_header, v188, v189, "message url %s", v190, 0xCu);
    sub_10000A520(v191);

    v288(v197, v198);
    v6 = v281;
    if (!v281)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v195 = v1[34];
    v196 = v1[29];

    v47(v195, v196);
    if (!v6)
    {
      goto LABEL_90;
    }
  }

  v202 = v6;
  v203 = UIImageJPEGRepresentation(v202, 0.4);
  if (v203)
  {
    v204 = v203;
    v205 = sub_10000BF9C();
    v207 = v206;

    v274 = v207;
    v276 = v205;
    v208.super.isa = sub_10000BF8C().super.isa;
    goto LABEL_91;
  }

LABEL_90:
  v208.super.isa = 0;
  v274 = 0xF000000000000000;
  v276 = 0;
LABEL_91:

  sub_10000C35C();

  v209 = sub_10000C2FC();

  v210 = [v187 ppl_pluginPayloadWithAppIconData:v208.super.isa appName:v209 allowDataPayloads:0];

  v211 = [v210 data];
  if (!v211)
  {
    sub_10000C05C();
    v226 = sub_10000BFCC();
    v227 = sub_10000C41C();
    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      *v228 = 0;
      _os_log_impl(&_mh_execute_header, v226, v227, "Message _pluginPayload create failed", v228, 2u);
    }

    v260 = v1[84];
    v229 = v1[79];
    v264 = v1[78];
    v269 = v1[80];
    v258 = v1[71];
    v259 = v1[77];
    v230 = v1[67];
    v60 = v1;
    v233 = v1 + 63;
    v232 = v1[63];
    v231 = v233[1];
    v234 = v60[48];
    v256 = v60[47];
    v257 = v60[50];
    v235 = v60[32];
    v236 = v60[29];

    v288(v235, v236);
    sub_10000C03C();
    swift_willThrow();

    sub_100009DF8(v276, v274);
    (*(v231 + 8))(v230, v232);
    (*(v234 + 8))(v257, v256);
    v260(v259, v258);
    (*(v229 + 8))(v269, v264);
    goto LABEL_100;
  }

  v212 = sub_10000BF9C();
  v263 = v213;
  v268 = v212;

  sub_10000C05C();
  v214 = sub_10000BFCC();
  v215 = sub_10000C40C();
  if (os_log_type_enabled(v214, v215))
  {
    v216 = swift_slowAlloc();
    *v216 = 0;
    _os_log_impl(&_mh_execute_header, v214, v215, "SPI Payload successful!", v216, 2u);
  }

  v254 = v1[84];
  v217 = v1[80];
  v218 = v1[79];
  v255 = v1[78];
  v252 = v1[71];
  v253 = v1[77];
  v219 = v1[64];
  v250 = v1[63];
  v251 = v1[67];
  v220 = v1[50];
  v222 = v1[47];
  v221 = v1[48];
  v223 = v1[33];
  v224 = v1[29];

  sub_100009DF8(v276, v274);
  v288(v223, v224);
  (*(v219 + 8))(v251, v250);
  (*(v221 + 8))(v220, v222);
  v254(v253, v252);
  (*(v218 + 8))(v217, v255);

  v225 = v289[1];

  v225(v268, v263);
}

uint64_t sub_100009DB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009DF8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009E0C(result, a2);
  }

  return result;
}

uint64_t sub_100009E0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100009E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DB0(&qword_1000143E0, &qword_10000D020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100009ED0()
{
  result = qword_100014408;
  if (!qword_100014408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014408);
  }

  return result;
}

unint64_t sub_100009F24()
{
  result = qword_100014418;
  if (!qword_100014418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014418);
  }

  return result;
}

uint64_t sub_100009F78()
{
  v1 = sub_10000BF6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A03C(uint64_t a1)
{
  v4 = *(sub_10000BF6C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A12C;

  return sub_100001E7C(a1, v6, v7, v1 + v5);
}

uint64_t sub_10000A12C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000A220(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009DB0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A280()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A2B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A570;

  return sub_1000039BC(a1, v4);
}

uint64_t sub_10000A370(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A12C;

  return sub_1000039BC(a1, v4);
}

uint64_t sub_10000A42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009DB0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_10000A4DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000A520(void *a1)
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

uint64_t sub_10000A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000BEA8;

  return sub_10000AF70(a1, a2, a3, a4);
}

uint64_t sub_10000A640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000A70C;

  return sub_10000B600(a1, a2, a3, a4);
}

uint64_t sub_10000A70C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10000A80C(uint64_t a1)
{
  v2 = sub_10000A974();

  return PeopleLegacyExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000A8B8();
  sub_10000BFAC();
  return 0;
}

unint64_t sub_10000A8B8()
{
  result = qword_100014480;
  if (!qword_100014480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014480);
  }

  return result;
}

unint64_t sub_10000A974()
{
  result = qword_100014488;
  if (!qword_100014488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014488);
  }

  return result;
}

unint64_t sub_10000A9C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000AA94(v11, 0, 0, 1, a1, a2);
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
    sub_10000BE48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A520(v11);
  return v7;
}

unint64_t sub_10000AA94(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000ABA0(a5, a6);
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
    result = sub_10000C44C();
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

char *sub_10000ABA0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000ABEC(a1, a2);
  sub_10000AD1C(&off_1000107D8);
  return v3;
}

char *sub_10000ABEC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000AE08(v5, 0);
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

  result = sub_10000C44C();
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
        v10 = sub_10000C37C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000AE08(v10, 0);
        result = sub_10000C43C();
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

uint64_t sub_10000AD1C(uint64_t result)
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

  result = sub_10000AE7C(result, v11, 1, v3);
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

void *sub_10000AE08(uint64_t a1, uint64_t a2)
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

  sub_100009DB0(&qword_100014490, &qword_10000D158);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000AE7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DB0(&qword_100014490, &qword_10000D158);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_10000AF70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 336) = a4;
  *(v4 + 200) = a2;
  *(v4 + 208) = a3;
  *(v4 + 192) = a1;
  v5 = sub_10000C0EC();
  *(v4 + 216) = v5;
  *(v4 + 224) = *(v5 - 8);
  *(v4 + 232) = swift_task_alloc();
  v6 = sub_10000BFDC();
  *(v4 + 240) = v6;
  *(v4 + 248) = *(v6 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_10000B0A0, 0, 0);
}

uint64_t sub_10000B0A0(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 336);
  if (v2 == 2)
  {
    sub_10000C24C();
    sub_10000C23C();
    LOBYTE(v2) = sub_10000C22C();
  }

  sub_10000C04C();
  v3 = sub_10000BFCC();
  v4 = sub_10000C40C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 264);
  v7 = *(v1 + 240);
  v8 = *(v1 + 248);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_10000A9C8(0xD000000000000036, 0x800000010000CCE0, &v26);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s fallbackToLp %{BOOL}d ", v9, 0x12u);
    sub_10000A520(v10);
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  *(v1 + 272) = v11;
  v13 = *(v1 + 224);
  v12 = *(v1 + 232);
  v14 = *(v1 + 216);
  v15 = sub_10000C26C();
  swift_allocObject();
  v16 = sub_10000C25C();
  *(v1 + 136) = v15;
  *(v1 + 144) = &protocol witness table for RequestMessageDetailsBuilder;
  *(v1 + 112) = v16;
  v17 = sub_10000C0AC();
  v18 = sub_10000C09C();
  *(v1 + 176) = v17;
  *(v1 + 184) = &protocol witness table for ContactFetcher;
  *(v1 + 152) = v18;
  type metadata accessor for MessagePackage();
  inited = swift_initStackObject();
  *(v1 + 280) = inited;
  sub_10000BDC8((v1 + 112), inited + 16);
  sub_10000BDC8((v1 + 152), inited + 56);
  (*(v13 + 104))(v12, enum case for MessageDetails.EventSource.screenTime(_:), v14);
  v20 = swift_task_alloc();
  *(v1 + 288) = v20;
  *v20 = v1;
  v20[1] = sub_10000B348;
  v21 = *(v1 + 232);
  v22 = *(v1 + 200);
  v23 = *(v1 + 208);
  v24 = *(v1 + 192);

  return sub_100002DCC(v24, v22, v23, v21, v2 & 1);
}

uint64_t sub_10000B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v10[37] = v4;

  v11 = v10[29];
  v12 = v10[28];
  v13 = v10[27];
  if (v4)
  {
    (*(v12 + 8))(v11, v13);
    v14 = sub_10000B4E8;
  }

  else
  {
    v10[38] = a4;
    v10[39] = a3;
    v10[40] = a2;
    v10[41] = a1;
    (*(v12 + 8))(v11, v13);
    v14 = sub_10000BEA4;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_10000B4E8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[30];
  swift_setDeallocating();
  sub_10000A520((v1 + 16));
  sub_10000A520((v1 + 56));
  sub_10000C04C();
  swift_errorRetain();
  sub_10000BFBC();

  v2(v3, v4);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000B600(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 336) = a4;
  *(v4 + 200) = a2;
  *(v4 + 208) = a3;
  *(v4 + 192) = a1;
  v5 = sub_10000C0EC();
  *(v4 + 216) = v5;
  *(v4 + 224) = *(v5 - 8);
  *(v4 + 232) = swift_task_alloc();
  v6 = sub_10000BFDC();
  *(v4 + 240) = v6;
  *(v4 + 248) = *(v6 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_10000B730, 0, 0);
}

uint64_t sub_10000B730(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 336);
  if (v2 == 2)
  {
    sub_10000C24C();
    sub_10000C23C();
    LOBYTE(v2) = sub_10000C21C();
  }

  sub_10000C04C();
  v3 = sub_10000BFCC();
  v4 = sub_10000C40C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 264);
  v7 = *(v1 + 240);
  v8 = *(v1 + 248);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_10000A9C8(0xD000000000000034, 0x800000010000CC60, &v26);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s fallbackToLp %{BOOL}d ", v9, 0x12u);
    sub_10000A520(v10);
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  *(v1 + 272) = v11;
  v13 = *(v1 + 224);
  v12 = *(v1 + 232);
  v14 = *(v1 + 216);
  v15 = sub_10000C26C();
  swift_allocObject();
  v16 = sub_10000C25C();
  *(v1 + 136) = v15;
  *(v1 + 144) = &protocol witness table for RequestMessageDetailsBuilder;
  *(v1 + 112) = v16;
  v17 = sub_10000C0AC();
  v18 = sub_10000C09C();
  *(v1 + 176) = v17;
  *(v1 + 184) = &protocol witness table for ContactFetcher;
  *(v1 + 152) = v18;
  type metadata accessor for MessagePackage();
  inited = swift_initStackObject();
  *(v1 + 280) = inited;
  sub_10000BDC8((v1 + 112), inited + 16);
  sub_10000BDC8((v1 + 152), inited + 56);
  (*(v13 + 104))(v12, enum case for MessageDetails.EventSource.askToBuy(_:), v14);
  v20 = swift_task_alloc();
  *(v1 + 288) = v20;
  *v20 = v1;
  v20[1] = sub_10000B9D8;
  v21 = *(v1 + 232);
  v22 = *(v1 + 200);
  v23 = *(v1 + 208);
  v24 = *(v1 + 192);

  return sub_100002DCC(v24, v22, v23, v21, v2 & 1);
}

uint64_t sub_10000B9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v10[37] = v4;

  v11 = v10[29];
  v12 = v10[28];
  v13 = v10[27];
  if (v4)
  {
    (*(v12 + 8))(v11, v13);
    v14 = sub_10000BCB0;
  }

  else
  {
    v10[38] = a4;
    v10[39] = a3;
    v10[40] = a2;
    v10[41] = a1;
    (*(v12 + 8))(v11, v13);
    v14 = sub_10000BB78;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_10000BB78()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[35];

  sub_10000BDE0(v1, v2);
  sub_100009DF8(v1, v2);

  sub_10000BDE0(v1, v2);

  v4 = objc_allocWithZone(sub_10000C01C());
  v5 = sub_10000C00C();

  sub_100009DF8(v1, v2);
  swift_setDeallocating();
  sub_10000A520((v3 + 16));
  sub_10000A520((v3 + 56));

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10000BCB0()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[30];
  swift_setDeallocating();
  sub_10000A520((v1 + 16));
  sub_10000A520((v1 + 56));
  sub_10000C04C();
  swift_errorRetain();
  sub_10000BFBC();

  v2(v3, v4);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000BDC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000BDE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000BDF4(a1, a2);
  }

  return a1;
}

uint64_t sub_10000BDF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000BE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}