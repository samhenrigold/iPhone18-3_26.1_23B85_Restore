void sub_10011521C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100118668();
  a29 = v32;
  a30 = v33;
  v35 = v34;
  v37 = v36;
  v38 = v34 + 64;
  sub_100007FC0();
  sub_1000062F0();

  v39 = 0;
  v40 = 0;
  if (v31)
  {
    while (1)
    {
LABEL_5:
      sub_100118484();
      v43 = *(*(v35 + 56) + 8 * v42);
      memcpy(&__dst, v37, 0x48uLL);
      sub_100108334();
      v44 = swift_bridgeObjectRetain_n();
      sub_100118724(v44);
      sub_100108334();
      swift_bridgeObjectRelease_n();
      Hasher._combine(_:)(v43);
      v39 ^= Hasher._finalize()();
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v30)
    {

      Hasher._combine(_:)(0);
      sub_10011864C();
      return;
    }

    ++v40;
    if (*(v38 + 8 * v41))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_100115310(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  sub_100007FC0();
  v6 = v5 & v4;
  sub_10000D448();

  v22 = 0;
  v7 = 0;
  if (!v6)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v9 = __clz(__rbit64(v6)) | (v7 << 6);
    v10 = *(*(a2 + 48) + 16 * v9 + 8);
    v11 = sub_1001188C8(v9);
    *__dst = v12;
    *&__dst[16] = v13;
    *&__dst[32] = v14;
    *&__dst[41] = v11;
    v20 = v12;
    v21 = v13;
    v15 = *&__dst[32];
    v16 = *(v11.n128_i64 + 7);
    v17 = v11.n128_u8[15];

    sub_1000BA2CC(__dst, v24);
    if (!v10)
    {
LABEL_12:

      Hasher._combine(_:)(v22);
      return;
    }

    v6 &= v6 - 1;
    v24[0] = v20;
    v24[1] = v21;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    memcpy(__dst, a1, sizeof(__dst));

    String.hash(into:)();
    swift_bridgeObjectRelease_n();
    String.hash(into:)();
    String.hash(into:)();
    switch(v25)
    {
      case 1:
      case 2:
        sub_1001184F8();
        break;
      case 3:
      case 4:
        sub_1001185B8();
        break;
      default:
        break;
    }

    String.hash(into:)();

    String.hash(into:)();
    Hasher._combine(_:)(v27);
    sub_1000BA304(v24);
    v22 ^= Hasher._finalize()();
  }

  while (v6);
LABEL_2:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v8);
    ++v7;
    if (v6)
    {
      v7 = v8;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_100115578()
{
  sub_100004168();
  v3 = v2;
  v40 = v4;
  v42 = type metadata accessor for TSDataSyncTriggerEvent(0);
  sub_100003724();
  __chkstk_darwin(v5);
  sub_10000BA50();
  __chkstk_darwin(v6);
  sub_10000D478();
  v7 = sub_100099DF4(&qword_1002DD2D8, &unk_1002375A0);
  v8 = sub_1000030B8(v7);
  __chkstk_darwin(v8);
  sub_10000308C();
  v41 = (v9 - v10);
  sub_100005238();
  __chkstk_darwin(v11);
  sub_10000A850();
  v12 = v3 + 64;
  sub_100007FC0();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v38 = v3;

  v18 = 0;
  v19 = 0;
  v37 = v1;
  v39 = v3 + 64;
  if (!v15)
  {
    goto LABEL_3;
  }

  do
  {
    v20 = v18;
    v21 = v19;
LABEL_7:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = (*(v38 + 48) + 16 * (v22 | (v21 << 6)));
    v24 = *v23;
    v25 = v23[1];
    sub_1000038C4();
    sub_100116BCC();
    v26 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
    *v41 = v24;
    v41[1] = v25;
    sub_100007C18();
    sub_100116B20();
    sub_10000B7B0();
    sub_100002728(v27, v28, v29, v26);

    v18 = v20;
    v1 = v37;
LABEL_8:
    sub_100012D44();
    v30 = sub_10003CF90();
    sub_100099DF4(v30, v31);
    sub_1000071D8(v1);
    if (v32)
    {

      Hasher._combine(_:)(v18);
      sub_1000027F8();
      return;
    }

    sub_100007C18();
    sub_100116B20();
    memcpy(v43, v40, sizeof(v43));

    String.hash(into:)();
    sub_100108334();
    swift_bridgeObjectRelease_n();
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(&qword_1002DAC90);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v0 + v42[5]));
    v33 = v0 + v42[6];
    if (*(v33 + 8) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v34 = *v33;
      Hasher._combine(_:)(1u);
      if ((v34 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      Hasher._combine(_:)(v35);
    }

    v12 = v39;
    if (*(v0 + v42[7] + 8))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    String.hash(into:)();
    sub_100006D34();
    sub_100116B78();
    v18 ^= Hasher._finalize()();
  }

  while (v15);
LABEL_3:
  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      v36 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
      sub_100010438(v36);
      v15 = 0;
      goto LABEL_8;
    }

    v15 = *(v12 + 8 * v21);
    ++v19;
    if (v15)
    {
      v20 = v18;
      v19 = v21;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_100115A3C()
{
  sub_100004168();
  v2 = v1;
  v59 = v3;
  v4 = type metadata accessor for Date();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000030E4();
  v50 = v8;
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v9);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = v46 - v11;
  v13 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
  sub_100003724();
  v52 = v14;
  __chkstk_darwin(v15);
  sub_10000BA50();
  __chkstk_darwin(v16);
  sub_10000D478();
  v51 = v17;
  v18 = sub_100099DF4(&qword_1002DC230, &qword_100234850);
  v19 = sub_1000030B8(v18);
  __chkstk_darwin(v19);
  sub_10000308C();
  sub_10011845C();
  __chkstk_darwin(v20);
  sub_10000D478();
  v58 = v21;
  v22 = v2 + 64;
  sub_100007FC0();
  v25 = v24 & v23;
  v47 = (v26 + 63) >> 6;
  v49 = v6 + 32;
  v48 = v6 + 8;
  v53 = v2;

  v27 = 0;
  v28 = 0;
  v54 = "priority";
  v46[4] = "scheduledDevicePull";
  v46[3] = "ediateDevicePull";
  v46[2] = "eduledDevicePull";
  v46[1] = "appTriggerImmediateDevicePull";
  v56 = v12;
  v57 = v4;
  v55 = v2 + 64;
  while (1)
  {
    v60 = v27;
    if (!v25)
    {
      break;
    }

    v29 = v4;
LABEL_8:
    v25 &= v25 - 1;
    sub_100118740();
    sub_1001183B4();
    sub_100116BCC();
    v31 = &unk_100237570;
    sub_100099DF4(&qword_1002DC238, &unk_100237570);
    sub_100118800();
    sub_100007670();
    sub_100116B20();
    sub_10000B7B0();
    sub_100002728(v32, v33, v34, &qword_1002DC238);

LABEL_9:
    v35 = v58;
    sub_100012D44();
    sub_100099DF4(&qword_1002DC238, &unk_100237570);
    sub_1000071D8(v35);
    if (v36)
    {

      Hasher._combine(_:)(v60);
      sub_1000027F8();
      return;
    }

    sub_100007670();
    sub_100116B20();
    memcpy(v61, v59, sizeof(v61));

    sub_1001187D0();
    String.hash(into:)();
    swift_bridgeObjectRelease_n();
    v37 = v56;
    sub_10003D1E4();
    sub_10000B3A0(v37, 1, v29);
    if (v36)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      sub_100008AA4();
      v38 = v50;
      v39(v50, v37, v29);
      Hasher._combine(_:)(1u);
      sub_100004AF4();
      sub_100111ED0(&qword_1002DAC90);
      sub_100118818();
      dispatch thunk of Hashable.hash(into:)();
      sub_100008AA4();
      v40(v38, v29);
    }

    sub_100004AF4();
    sub_100111ED0(&qword_1002DAC90);
    sub_100118818();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v0 + v13[6]));
    v41 = v0 + v13[7];
    v42 = *(v41 + 8);
    if (v42)
    {
      v31 = *v41;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    sub_1001186DC();
    String.hash(into:)();
    switch(v31)
    {
      case 3uLL:
      case 4uLL:
        sub_1001185B8();
        break;
      default:
        break;
    }

    String.hash(into:)();

    sub_1001187D0();
    String.hash(into:)();
    Hasher._combine(_:)(v42);
    sub_10011476C();
    v43 = *(v0 + v13[10]);
    if (v43 == 2)
    {
      v44 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v44 = v43 & 1;
    }

    v4 = v57;
    v22 = v55;
    Hasher._combine(_:)(v44);
    sub_100116B78();
    v27 = Hasher._finalize()() ^ v60;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v47)
    {
      v29 = v4;
      v31 = &unk_100237570;
      v45 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
      sub_100118684(v45);
      v25 = 0;
      goto LABEL_9;
    }

    v25 = *(v22 + 8 * v30);
    ++v28;
    if (v25)
    {
      v29 = v4;
      v28 = v30;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1001160A8()
{
  sub_100004168();
  v4 = v3;
  v38 = v5;
  v6 = type metadata accessor for Date();
  sub_100003724();
  __chkstk_darwin(v7);
  sub_1000030E4();
  v33 = v8;
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v9);
  sub_100003774();
  __chkstk_darwin(v10);
  v11 = sub_10011854C();
  v34 = type metadata accessor for TSDataSyncDatasetSchedule(v11);
  sub_100003724();
  __chkstk_darwin(v12);
  sub_10000BA50();
  __chkstk_darwin(v13);
  sub_10000D478();
  v14 = sub_100099DF4(&qword_1002DC210, &qword_100234838);
  v15 = sub_1000030B8(v14);
  __chkstk_darwin(v15);
  sub_10000308C();
  sub_10011845C();
  __chkstk_darwin(v16);
  sub_10000D478();
  v37 = v17;
  v39 = v4 + 64;
  sub_100007FC0();
  v20 = v19 & v18;
  v32 = (v21 + 63) >> 6;

  v22 = 0;
  v23 = 0;
  v35 = v2;
  for (i = v6; ; v6 = i)
  {
    v40 = v22;
    if (!v20)
    {
      break;
    }

    v0 = v2;
LABEL_8:
    sub_100118484();
    sub_100118740();
    sub_10000B3C8();
    sub_100116BCC();
    sub_100099DF4(&qword_1002DC218, &unk_100237580);
    sub_100118800();
    sub_1000031BC();
    sub_100116B20();
    sub_10000B7B0();
    sub_100002728(v25, v26, v27, &qword_1002DC218);

    v2 = v0;
LABEL_9:
    sub_100012D44();
    sub_100099DF4(&qword_1002DC218, &unk_100237580);
    sub_1000071D8(v37);
    if (v28)
    {

      Hasher._combine(_:)(v40);
      sub_1000027F8();
      return;
    }

    sub_1000031BC();
    sub_100116B20();
    memcpy(v41, v38, sizeof(v41));

    sub_1001187D0();
    String.hash(into:)();
    swift_bridgeObjectRelease_n();
    sub_10003D1E4();
    sub_10000B3A0(v2, 1, v6);
    if (v28)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      sub_100008AA4();
      v29(v33, v2, v6);
      Hasher._combine(_:)(1u);
      sub_100004AF4();
      sub_100111ED0(&qword_1002DAC90);
      sub_100118818();
      dispatch thunk of Hashable.hash(into:)();
      sub_100008AA4();
      v30(v33, v6);
    }

    sub_100004AF4();
    sub_100111ED0(&qword_1002DAC90);
    sub_100118818();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v1 + *(v34 + 24)));
    Hasher._combine(_:)(*(v1 + *(v34 + 28)));
    sub_100114BF4();
    sub_1001186DC();
    String.hash(into:)();
    switch(v0)
    {
      case 3:
      case 4:
        sub_1001185B8();
        break;
      default:
        break;
    }

    String.hash(into:)();

    sub_1001187D0();
    String.hash(into:)();
    Hasher._combine(_:)(v34);
    sub_100116B78();
    v22 = Hasher._finalize()() ^ v40;
    v2 = v35;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v32)
    {
      v31 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
      sub_100118684(v31);
      v20 = 0;
      goto LABEL_9;
    }

    v20 = *(v39 + 8 * v24);
    ++v23;
    if (v20)
    {
      v0 = v2;
      v23 = v24;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100116780(const void *a1, uint64_t a2)
{
  v37 = a1;
  v3 = type metadata accessor for TSDataSyncDatasetState(0);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  __chkstk_darwin(v5 - 8);
  v38 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v36 = a2;

  v15 = 0;
  v16 = 0;
  v34 = v9;
  if (v13)
  {
    while (1)
    {
      v39 = v15;
      v17 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = (*(v36 + 48) + 16 * (v19 | (v17 << 6)));
      v22 = *v20;
      v21 = v20[1];
      sub_100116BCC();
      v23 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      v24 = v38;
      *v38 = v22;
      v24[1] = v21;
      sub_100116B20();
      sub_100002728(v24, 0, 1, v23);

      v15 = v39;
      v9 = v34;
LABEL_11:
      sub_100012D44();
      v25 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      if (sub_100004DFC(v9, 1, v25) == 1)
      {
        break;
      }

      sub_100116B20();
      memcpy(__dst, v37, sizeof(__dst));
      String.hash(into:)();

      sub_10010CAAC(__dst, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, v37, v38, v39, v40, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4]);
      sub_100116B78();
      v15 ^= Hasher._finalize()();
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v15);
  }

  else
  {
LABEL_5:
    v18 = v38;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v33 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
        sub_100002728(v18, 1, 1, v33);
        v13 = 0;
        goto LABEL_11;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v39 = v15;
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100116B20()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

uint64_t sub_100116B78()
{
  v1 = sub_100002834();
  v2(v1);
  sub_10000307C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100116BCC()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

unint64_t sub_100116C24()
{
  result = qword_1002DD048;
  if (!qword_1002DD048)
  {
    result = swift_getWitnessTable(byte_100237508, &type metadata for TSDataSyncDatasetGroupState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD048);
  }

  return result;
}

unint64_t sub_100116C78()
{
  result = qword_1002DD058;
  if (!qword_1002DD058)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002DD050, &qword_100236C98);
    v4[0] = sub_1000F6B30();
    v4[1] = sub_100111ED0(&unk_1002DD060);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1002DD058);
  }

  return result;
}

unint64_t sub_100116D34()
{
  result = qword_1002DD070;
  if (!qword_1002DD070)
  {
    result = swift_getWitnessTable(byte_100236B1C, &type metadata for TSDataSyncDatasetGroupMetricsFields, v0, v1);
    atomic_store(result, &qword_1002DD070);
  }

  return result;
}

unint64_t sub_100116D88()
{
  result = qword_1002DD080;
  if (!qword_1002DD080)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002DD050, &qword_100236C98);
    v4[0] = sub_1000F6C98();
    v4[1] = sub_100111ED0(&unk_1002DD088);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1002DD080);
  }

  return result;
}

unint64_t sub_100116E44(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = sub_10009A468(&qword_1002DC7C8, &qword_100236CA0);
    v8 = v6();
    result = swift_getWitnessTable(v5, v7, &v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100116EB8()
{
  result = qword_1002DD098;
  if (!qword_1002DD098)
  {
    result = swift_getWitnessTable(byte_100236AF4, &type metadata for TSDataSyncDatasetGroupMetricsFields, v0, v1);
    atomic_store(result, &qword_1002DD098);
  }

  return result;
}

uint64_t sub_100116F0C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_100116F54()
{
  result = qword_1002DD0B0;
  if (!qword_1002DD0B0)
  {
    result = swift_getWitnessTable("i}\a", &type metadata for TSDataSyncDatasetGroupMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD0B0);
  }

  return result;
}

unint64_t sub_100116FA8()
{
  result = qword_1002DD0C8;
  if (!qword_1002DD0C8)
  {
    result = swift_getWitnessTable(byte_100237468, &type metadata for TSDataSyncDatasetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD0C8);
  }

  return result;
}

unint64_t sub_100116FFC(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = sub_10009A468(&qword_1002DBF90, &qword_100233528);
    v8[0] = v6;
    v8[1] = v6;
    result = swift_getWitnessTable(v5, v7, v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100117064(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = sub_10009A468(&qword_1002DD0D0, &qword_100236CE0);
    sub_10000B828();
    v8 = sub_100111ED0(v6);
    result = swift_getWitnessTable(v5, v7, &v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001170EC()
{
  result = qword_1002DD108;
  if (!qword_1002DD108)
  {
    result = swift_getWitnessTable("\t~\a", &type metadata for TSDataSyncTriggerEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD108);
  }

  return result;
}

unint64_t sub_100117140()
{
  result = qword_1002DD120;
  if (!qword_1002DD120)
  {
    result = swift_getWitnessTable("Y~\a", &type metadata for TSDataSyncDatasetMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD120);
  }

  return result;
}

unint64_t sub_100117194()
{
  result = qword_1002DD138;
  if (!qword_1002DD138)
  {
    result = swift_getWitnessTable(byte_100237378, &type metadata for TSDataSyncDatasetIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD138);
  }

  return result;
}

unint64_t sub_1001171E8()
{
  result = qword_1002DD150;
  if (!qword_1002DD150)
  {
    result = swift_getWitnessTable(byte_100237328, &type metadata for TSDataSyncDatasetGroupIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD150);
  }

  return result;
}

uint64_t sub_100117334(uint64_t a1)
{
  result = type metadata accessor for TSDataSyncTriggerEvent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetIdentifier.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncDatasetMetricsFields.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetMetricsFields.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001175D8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncDatasetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetGroupMetricsFields.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetGroupState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001179D4()
{
  result = qword_1002DD208;
  if (!qword_1002DD208)
  {
    result = swift_getWitnessTable(asc_100236DF8, &type metadata for TSDataSyncDatasetGroupState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD208);
  }

  return result;
}

unint64_t sub_100117A2C()
{
  result = qword_1002DD210;
  if (!qword_1002DD210)
  {
    result = swift_getWitnessTable(aQ_27, &type metadata for TSDataSyncDatasetGroupMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD210);
  }

  return result;
}

unint64_t sub_100117A84()
{
  result = qword_1002DD218;
  if (!qword_1002DD218)
  {
    result = swift_getWitnessTable(byte_100236F68, &type metadata for TSDataSyncDatasetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD218);
  }

  return result;
}

unint64_t sub_100117ADC()
{
  result = qword_1002DD220;
  if (!qword_1002DD220)
  {
    result = swift_getWitnessTable(byte_100237020, &type metadata for TSDataSyncTriggerEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD220);
  }

  return result;
}

unint64_t sub_100117B34()
{
  result = qword_1002DD228;
  if (!qword_1002DD228)
  {
    result = swift_getWitnessTable(asc_1002370D8, &type metadata for TSDataSyncDatasetMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD228);
  }

  return result;
}

unint64_t sub_100117B8C()
{
  result = qword_1002DD230;
  if (!qword_1002DD230)
  {
    result = swift_getWitnessTable(aQ_28, &type metadata for TSDataSyncDatasetIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD230);
  }

  return result;
}

unint64_t sub_100117BE4()
{
  result = qword_1002DD238;
  if (!qword_1002DD238)
  {
    result = swift_getWitnessTable(byte_100237248, &type metadata for TSDataSyncDatasetGroupIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD238);
  }

  return result;
}

unint64_t sub_100117C84()
{
  result = qword_1002DD248;
  if (!qword_1002DD248)
  {
    result = swift_getWitnessTable(byte_1002371B8, &type metadata for TSDataSyncDatasetGroupIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD248);
  }

  return result;
}

unint64_t sub_100117CDC()
{
  result = qword_1002DD250;
  if (!qword_1002DD250)
  {
    result = swift_getWitnessTable(byte_1002371E0, &type metadata for TSDataSyncDatasetGroupIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD250);
  }

  return result;
}

unint64_t sub_100117D34()
{
  result = qword_1002DD258;
  if (!qword_1002DD258)
  {
    result = swift_getWitnessTable("р\a", &type metadata for TSDataSyncDatasetIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD258);
  }

  return result;
}

unint64_t sub_100117D8C()
{
  result = qword_1002DD260;
  if (!qword_1002DD260)
  {
    result = swift_getWitnessTable(byte_100237128, &type metadata for TSDataSyncDatasetIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD260);
  }

  return result;
}

unint64_t sub_100117DE4()
{
  result = qword_1002DD268;
  if (!qword_1002DD268)
  {
    result = swift_getWitnessTable(byte_100237048, &type metadata for TSDataSyncDatasetMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD268);
  }

  return result;
}

unint64_t sub_100117E3C()
{
  result = qword_1002DD270;
  if (!qword_1002DD270)
  {
    result = swift_getWitnessTable(aQ_29, &type metadata for TSDataSyncDatasetMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD270);
  }

  return result;
}

unint64_t sub_100117E94()
{
  result = qword_1002DD278;
  if (!qword_1002DD278)
  {
    result = swift_getWitnessTable(aA_32, &type metadata for TSDataSyncTriggerEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD278);
  }

  return result;
}

unint64_t sub_100117EEC()
{
  result = qword_1002DD280;
  if (!qword_1002DD280)
  {
    result = swift_getWitnessTable(asc_100236FB8, &type metadata for TSDataSyncTriggerEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD280);
  }

  return result;
}

unint64_t sub_100117F44()
{
  result = qword_1002DD288;
  if (!qword_1002DD288)
  {
    result = swift_getWitnessTable(byte_100236ED8, &type metadata for TSDataSyncDatasetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD288);
  }

  return result;
}

unint64_t sub_100117F9C()
{
  result = qword_1002DD290;
  if (!qword_1002DD290)
  {
    result = swift_getWitnessTable(byte_100236F00, &type metadata for TSDataSyncDatasetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD290);
  }

  return result;
}

unint64_t sub_100117FF4()
{
  result = qword_1002DD298;
  if (!qword_1002DD298)
  {
    result = swift_getWitnessTable(byte_100236E20, &type metadata for TSDataSyncDatasetGroupMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD298);
  }

  return result;
}

unint64_t sub_10011804C()
{
  result = qword_1002DD2A0;
  if (!qword_1002DD2A0)
  {
    result = swift_getWitnessTable(byte_100236E48, &type metadata for TSDataSyncDatasetGroupMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD2A0);
  }

  return result;
}

unint64_t sub_1001180A4()
{
  result = qword_1002DD2A8;
  if (!qword_1002DD2A8)
  {
    result = swift_getWitnessTable(aI_24, &type metadata for TSDataSyncDatasetGroupState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD2A8);
  }

  return result;
}

unint64_t sub_1001180FC()
{
  result = qword_1002DD2B0;
  if (!qword_1002DD2B0)
  {
    result = swift_getWitnessTable(aQ_30, &type metadata for TSDataSyncDatasetGroupState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD2B0);
  }

  return result;
}

unint64_t sub_100118150()
{
  result = qword_1002DD2C0;
  if (!qword_1002DD2C0)
  {
    result = swift_getWitnessTable(byte_100237668, &type metadata for TSDataSyncCalculatedEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD2C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncCalculatedEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100118284()
{
  result = qword_1002DD2E0;
  if (!qword_1002DD2E0)
  {
    result = swift_getWitnessTable(byte_100237640, &type metadata for TSDataSyncCalculatedEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD2E0);
  }

  return result;
}

unint64_t sub_1001182DC()
{
  result = qword_1002DD2E8;
  if (!qword_1002DD2E8)
  {
    result = swift_getWitnessTable("!|\a", &type metadata for TSDataSyncCalculatedEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD2E8);
  }

  return result;
}

unint64_t sub_100118334()
{
  result = qword_1002DD2F0;
  if (!qword_1002DD2F0)
  {
    result = swift_getWitnessTable("\t|\a", &type metadata for TSDataSyncCalculatedEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD2F0);
  }

  return result;
}

void sub_10011839C()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void sub_10011849C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  Hasher._combine(_:)(v3);
}

uint64_t sub_100118584@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1001185D0()
{

  return String.hash(into:)();
}

uint64_t sub_10011861C()
{
}

uint64_t sub_100118684(uint64_t a1)
{

  return sub_100002728(v1, 1, 1, a1);
}

void sub_1001186A4()
{
  v1 = 95;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1001186DC()
{

  return String.hash(into:)();
}

uint64_t sub_100118724(uint64_t a1, ...)
{

  return String.hash(into:)();
}

void sub_100118800()
{
  v3 = *(v2 - 176);
  *v3 = v1;
  v3[1] = v0;
}

uint64_t sub_1001189D0()
{
}

uint64_t sub_1001189F0()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_100118A10()
{

  return sub_10003D1E4();
}

uint64_t sub_100118A30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = *(type metadata accessor for TSDataSyncDatasetGroupStoreCore(0) + 20);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 16))(a1, v2 + v11, v12);
  v13 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v18 = *(v6 + 104);
  v18(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  v14 = *(v6 + 8);
  v14(v10, v4);
  v15 = sub_100110E0C();
  sub_10000F598(v15, v16);

  v18(v10, v13, v4);
  URL.append<A>(component:directoryHint:)();
  v14(v10, v4);
}

uint64_t sub_100118C3C()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  v19 = type metadata accessor for URL();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000306C();
  v13 = v12 - v11;
  sub_10000C4FC(v0, v0[3]);
  sub_100118A30(v13);
  sub_100007FDC();
  (*(v3 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v3 + 8))(v7, v1);
  v14 = dispatch thunk of FileStore.contents(at:)();
  if (v20)
  {
    return (*(v9 + 8))(v13, v19);
  }

  v17 = v14;
  v18 = v15;
  (*(v9 + 8))(v13, v19);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_100119558(&qword_1002DD300, "Յ\a");
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10000D170(v17, v18);
}

uint64_t sub_100118EB4(uint64_t a1)
{
  type metadata accessor for FileStoreProtectionType();
  sub_100003724();
  v46 = v3;
  v47 = v2;
  __chkstk_darwin(v2);
  sub_10000306C();
  v48 = v5 - v4;
  v6 = type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v45 = v7;
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for URL();
  sub_100003724();
  v49 = v13;
  __chkstk_darwin(v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v37 - v18;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_100119558(&qword_1002DD2F8, byte_100236BAC);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  if (!v1)
  {
    v43 = v20;
    v44 = v22;
    v41 = v11;
    v42 = v16;
    v24 = v6;
    v25 = v48;
    sub_10000C4FC(v50, v50[3]);
    sub_100118A30(v19);
    dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
    v26 = *(v49 + 1);
    v40 = v12;
    v49 = v26;
    v26(v19, v12);
    v27 = v50[4];
    v38 = v50[3];
    v39 = v27;
    v37[1] = sub_10000C4FC(v50, v38);
    v28 = v42;
    sub_100118A30(v42);
    sub_100007FDC();
    v29 = v45;
    v30 = v41;
    (*(v45 + 104))(v41, enum case for URL.DirectoryHint.inferFromPath(_:), v24);
    sub_1000BBBB0();
    URL.append<A>(component:directoryHint:)();
    (*(v29 + 8))(v30, v24);
    v31 = v46;
    v32 = v25;
    v33 = v28;
    v34 = v47;
    (*(v46 + 104))(v32, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v47);
    v36 = v43;
    v35 = v44;
    dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
    sub_10000D170(v36, v35);
    (*(v31 + 8))(v32, v34);
    return v49(v33, v40);
  }

  return result;
}

uint64_t sub_1001192A0()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  v24 = type metadata accessor for URL();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  v21 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  v15 = v0[3];
  v22 = v0[4];
  sub_10000C4FC(v0, v15);
  sub_100118A30(v14);
  sub_100007FDC();
  (*(v3 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v3 + 8))(v7, v1);
  v16 = v23;
  dispatch thunk of FileStore.removeItem(at:)();
  if (v16)
  {
    return (*(v9 + 8))(v14, v24);
  }

  v18 = v14;
  v19 = v24;
  v23 = *(v9 + 8);
  v23(v18, v24);
  sub_10000C4FC(v0, v0[3]);
  sub_100118A30(v21);
  dispatch thunk of FileStore.removeItem(at:)();
  return (v23)(v21, v19);
}

uint64_t type metadata accessor for TSDataSyncDatasetGroupStoreCore(uint64_t a1)
{
  result = qword_1002DD360;
  if (!qword_1002DD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100119558(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for TSDataSyncDatasetGroupState(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001195C4(uint64_t a1)
{
  result = sub_1000BBCF4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_100119660(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3AB0, v2);

  return v3 != 0;
}

uint64_t sub_1001196C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100119700(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100099DF4(&qword_1002DD440, &qword_100237AF8);
  sub_100003724();
  v8 = v7;
  sub_100003774();
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  sub_10000C4FC(a1, a1[3]);
  sub_10011C914();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[0] = a2;
  v13[1] = a3;
  sub_10011C9BC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_100119844(uint64_t a1, uint64_t a2)
{
  String.hash(into:)();
  sub_100007FFC();

  return String.hash(into:)();
}

void *sub_100119880(void *a1)
{
  sub_100099DF4(&qword_1002DD428, &qword_100237AF0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v3);
  sub_1000072D8();
  v4 = sub_10000C4FC(a1, a1[3]);
  v5 = sub_10011C914();
  sub_100003C48(&unk_1002B7E40, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    sub_10011C968();
    sub_100008DC0(&unk_1002B7EB8, v7);
    v8 = sub_100002980();
    v9(v8);
    v4 = v11;
    sub_100004118(a1);
  }

  return v4;
}

uint64_t sub_1001199B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3AE8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100119A08(char a1)
{
  if (a1)
  {
    return 0x745F64726F636572;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_100119A48(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100099DF4(&qword_1002DD498, &unk_100237D50);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_10000C4FC(a1, a1[3]);
  sub_10011CC64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13 = 1;
    sub_10011CD0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

Swift::Int sub_100119BB4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100007FFC();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100119C10(void *a1)
{
  sub_100099DF4(&qword_1002DD480, &qword_100237D48);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v3);
  sub_1000072D8();
  v4 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  v5 = sub_10011CC64();
  sub_100003C48(&unk_1002B7F50, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    v10[1] = 0;
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[0] = 1;
    sub_10011CCB8();
    sub_100008DC0(&unk_1002B7FE0, v10);
    v8 = sub_100002980();
    v9(v8);
    sub_100004118(a1);
  }

  return v4;
}

BOOL sub_100119DA4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3B38, v2);

  return v3 != 0;
}

BOOL sub_100119DF8@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100119660(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100119E2C@<X0>(void *a1@<X8>)
{
  result = sub_1001196A8();
  *a1 = 0xD000000000000015;
  a1[1] = v3;
  return result;
}

BOOL sub_100119E7C@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100119660(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100119EA8(uint64_t a1)
{
  v2 = sub_10011C914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100119EE4(uint64_t a1)
{
  v2 = sub_10011C914();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100119F20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100119880(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100119F8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001199B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100119FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100119A08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100119FF0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001199B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10011A018(uint64_t a1)
{
  v2 = sub_10011CC64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011A054(uint64_t a1)
{
  v2 = sub_10011CC64();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10011A090(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100007FFC();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011A0E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100119C10(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

BOOL sub_10011A138@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100119DA4(*a1);
  *a2 = result;
  return result;
}

void sub_10011A16C(uint64_t a1@<X8>)
{
  strcpy(a1, "csv_gzip_b64");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_10011A240(uint64_t a1)
{
  v2 = sub_10011C7B8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10011A27C(uint64_t a1)
{
  v2 = sub_10011C7B8();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10011A2D4(uint64_t a1)
{
  v2 = sub_10011CA10();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10011A310(uint64_t a1)
{
  v2 = sub_10011CA10();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10011A364(void *a1)
{
  *&v16 = 1635018093;
  *(&v16 + 1) = 0xE400000000000000;
  v1 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_11;
  }

  sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
  if ((sub_10000D014(&v15, v2, v3, v4, v5, v6, v7) & 1) == 0)
  {
    return 0;
  }

  sub_1001ABEF4(0x615F6E6F6D6D6F63, 0xEA00000000006C6CLL, v15, &v18);

  if (!*(&v19 + 1))
  {
    goto LABEL_11;
  }

  if ((sub_10000D014(&v16, v8, v9, v10, v11, v12, v13) & 1) == 0)
  {
    return 0;
  }

  sub_1001ABEF4(0xD000000000000018, 0x8000000100271E40, v16, &v18);

  if (!*(&v19 + 1))
  {
LABEL_11:
    sub_100004E24(&v18, &unk_1002DFC10, &qword_10022E6D0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v16;
  }

  return 0;
}

unint64_t sub_10011A504(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  sub_100099DF4(&qword_1002DD3C0, &qword_100237720);
  sub_100003774();
  __chkstk_darwin(v4);
  v6 = &v84 - v5;
  v7 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_100003724();
  v89 = v8;
  __chkstk_darwin(v9);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v84 - v13;
  v15 = type metadata accessor for CharacterSet();
  sub_100003724();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000306C();
  sub_1000072D8();
  v19 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v19 - 8);
  sub_10000306C();
  v20 = v98;
  result = sub_10017A790(a1);
  v98 = v22;
  if (v20)
  {
    return result;
  }

  v88 = v2;
  v90 = v6;
  v91 = v17;
  v23 = v92;
  v93 = v15;
  v94 = v14;
  v95 = v11;
  v86 = v7;
  v24 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v24 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = result;
    v26 = Data.init(base64Encoded:options:)();
    if (v27 >> 60 == 15)
    {
LABEL_48:
      sub_10011C4D0();
      swift_allocError();
      v82 = v98;
      *v83 = v25;
      v83[1] = v82;
      v83[2] = 1;
      return swift_willThrow();
    }

    v28 = v26;
    v29 = v27;
    v30 = v23;
    v31 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v33 = [v31 decompressedDataWithGzippedData:isa];

    if (!v33)
    {
      sub_10009A7A0(v28, v29);
      goto LABEL_48;
    }

    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v28;
    v37 = v36;
    sub_10009A7A0(v35, v29);

    v6 = v90;
  }

  else
  {
    v25 = result;
    v34 = 0;
    v37 = 0xC000000000000000;
    v30 = v92;
  }

  static String.Encoding.utf8.getter();
  v38 = String.init(data:encoding:)();
  if (!v39)
  {
    sub_10000D170(v34, v37);
    goto LABEL_48;
  }

  v40 = v38;
  v41 = v39;
  v85 = v37;

  sub_100099DF4(&qword_1002DC7C8, &qword_100236CA0);
  sub_100007C30();
  sub_10011C604(v42, v43, byte_10023679C);
  v98 = Dictionary.init(dictionaryLiteral:)();
  v96 = v40;
  v97 = v41;
  v44 = v88;
  CharacterSet.init(charactersIn:)();
  sub_1000BBBB0();
  v45 = StringProtocol.components(separatedBy:)();
  (v91[1])(v44, v93);

  v46 = *(v45 + 16);
  if (v46)
  {
    v84 = v34;
    v47 = 0;
    v93 = v45 + 32;
    v48 = v94;
    v87 = v45;
    v88 = v46;
    while (v47 < *(v45 + 16))
    {
      v49 = (v93 + 16 * v47);
      v51 = *v49;
      v50 = v49[1];

      sub_10011AC70(v51, v50, v30, v6);

      v52 = sub_100099DF4(&qword_1002DD3D0, &qword_100237728);
      if (sub_100004DFC(v6, 1, v52) == 1)
      {
        sub_100004E24(v6, &qword_1002DD3C0, &qword_100237720);
      }

      else
      {
        v53 = *&v6[*(v52 + 48)];
        isUniquelyReferenced_nonNull_native = sub_1000E3C44(v6, v48);
        v55 = v98;
        if (*(v98 + 16) && (isUniquelyReferenced_nonNull_native = sub_10014EC40(), (v56 & 1) != 0))
        {
          v57 = *(*(v55 + 56) + 8 * isUniquelyReferenced_nonNull_native);
        }

        else
        {
          v57 = _swiftEmptyArrayStorage;
        }

        if (v53)
        {
          v58 = v53;
        }

        else
        {
          v58 = _swiftEmptyArrayStorage;
        }

        v59 = v58[2];
        v91 = v58;
        if (v59)
        {
          v60 = v58 + 5;
          do
          {
            v62 = *(v60 - 1);
            v61 = *v60;
            v96 = v62;
            v97 = v61;
            __chkstk_darwin(isUniquelyReferenced_nonNull_native);
            *(&v84 - 2) = &v96;

            if (sub_10015D6FC())
            {
            }

            else
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10000657C();
                sub_10013C0F0();
                v57 = isUniquelyReferenced_nonNull_native;
              }

              v63 = v57[2];
              if (v63 >= v57[3] >> 1)
              {
                sub_10013C0F0();
                v57 = isUniquelyReferenced_nonNull_native;
              }

              v57[2] = v63 + 1;
              v64 = &v57[2 * v63];
              v64[4] = v62;
              v64[5] = v61;
            }

            v60 += 2;
            --v59;
          }

          while (v59);
        }

        sub_10011C544(v94, v95);
        v65 = v98;
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v65;
        v67 = sub_10014EC40();
        v69 = *(v65 + 16);
        v70 = (v68 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          goto LABEL_51;
        }

        v72 = v67;
        v73 = v68;
        sub_100099DF4(&qword_1002DD3D8, &unk_100237730);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v66, v71))
        {
          v74 = sub_10014EC40();
          v30 = v92;
          v6 = v90;
          if ((v73 & 1) != (v75 & 1))
          {
            goto LABEL_53;
          }

          v72 = v74;
        }

        else
        {
          v30 = v92;
          v6 = v90;
        }

        v46 = v88;
        v76 = v96;
        v98 = v96;
        if (v73)
        {
          *(*(v96 + 56) + 8 * v72) = v57;
        }

        else
        {
          *(v96 + 8 * (v72 >> 6) + 64) |= 1 << v72;
          sub_10011C544(v95, *(v76 + 48) + *(v89 + 72) * v72);
          v77 = v98;
          *(*(v98 + 56) + 8 * v72) = v57;
          v78 = *(v77 + 16);
          v79 = __OFADD__(v78, 1);
          v80 = v78 + 1;
          if (v79)
          {
            goto LABEL_52;
          }

          *(v77 + 16) = v80;
        }

        sub_10011C5A8(v95);
        v48 = v94;
        sub_10011C5A8(v94);
        v45 = v87;
      }

      if (++v47 == v46)
      {
        v81 = v84;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v81 = v34;
LABEL_46:
    sub_10000D170(v81, v85);

    return v98;
  }

  return result;
}

uint64_t sub_10011AC70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  v68 = v10;
  __chkstk_darwin(v11);
  sub_10000306C();
  v67 = v13 - v12;
  v66 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_10000307C();
  __chkstk_darwin(v14);
  sub_10000306C();
  sub_1000072D8();
  v15 = type metadata accessor for CharacterSet();
  sub_100003724();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000306C();
  v21 = v20 - v19;
  v71 = 44;
  v72 = 0xE100000000000000;
  v70 = &v71;

  v22 = sub_10011BF54(0x7FFFFFFFFFFFFFFFLL, 1, sub_10011D0A8, v69, a1, a2);
  v23 = v22;
  if (v22[2] != 4)
  {
    v48 = sub_100099DF4(&qword_1002DD3D0, &qword_100237728);
    sub_100002728(a4, 1, 1, v48);
  }

  v60 = v9;
  v61 = v4;
  v62 = a3;
  v24 = v22[4];

  sub_1000050CC();
  static String._fromSubstring(_:)();
  sub_10000A574();
  v71 = v24;
  v72 = v4;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000BBBB0();
  v25 = StringProtocol.trimmingCharacters(in:)();
  v27 = v26;
  v28 = *(v17 + 8);
  v28(v21, v15);

  if (v23[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  v59 = v25;
  v65 = v27;
  v30 = v23[8];
  v31 = v23[9];
  v32 = v23[10];

  sub_1000050CC();
  static String._fromSubstring(_:)();
  sub_10000A574();
  v71 = v30;
  v72 = v32;
  v33 = static CharacterSet.whitespacesAndNewlines.getter();
  sub_10011D134(v33, &type metadata for String);
  v34 = sub_100013CA0();
  (v28)(v34);

  if (v23[2] < 3uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v58 = v31;
  v64 = v30;
  v35 = v23[12];
  v36 = v23[14];

  sub_1000050CC();
  static String._fromSubstring(_:)();
  sub_10000A574();
  v71 = v35;
  v72 = v36;
  v37 = static CharacterSet.whitespacesAndNewlines.getter();
  sub_10011D134(v37, &type metadata for String);
  v38 = sub_100013CA0();
  (v28)(v38);

  if (v23[2] < 4uLL)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v63 = a4;

  v39 = static String._fromSubstring(_:)();
  v41 = v40;

  v71 = v39;
  v72 = v41;
  v42 = static CharacterSet.whitespacesAndNewlines.getter();
  v43 = sub_10011D134(v42, &type metadata for String);
  v45 = v44;
  v28(v21, v15);

  v46 = sub_1000B90C4();

  if (v46 == 3)
  {
    v47 = sub_100099DF4(&qword_1002DD3D0, &qword_100237728);
    sub_100002728(v63, 1, 1, v47);
  }

  AccountIdentity.dsid.getter();
  sub_10011C604(&qword_1002DD3E0, &type metadata accessor for AccountIdentity.DSID, &protocol conformance descriptor for AccountIdentity.DSID);
  v49 = dispatch thunk of CustomStringConvertible.description.getter();
  v51 = v50;
  (*(v68 + 8))(v67, v60);
  v52 = *(v66 + 32);
  type metadata accessor for AccountIdentity();
  sub_10000307C();
  (*(v53 + 16))(v61 + v52, v62);
  *v61 = v59;
  *(v61 + 8) = v65;
  *(v61 + 16) = v46;
  *(v61 + 24) = v58;
  *(v61 + 32) = v64;
  *(v61 + 40) = v49;
  *(v61 + 48) = v51;
  v54 = sub_100099DF4(&qword_1002DD3D0, &qword_100237728);
  v55 = *(v54 + 48);
  sub_10011C544(v61, v63);
  sub_10011B9F4(v43, v45);
  v57 = v56;

  sub_10011C5A8(v61);
  *(v63 + v55) = v57;
  return sub_100002728(v63, 0, 1, v54);
}

uint64_t sub_10011B1E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  type metadata accessor for UUID();
  sub_100003724();
  v80 = v4;
  v81 = v3;
  __chkstk_darwin(v3);
  sub_10000306C();
  v79 = v6 - v5;
  type metadata accessor for Date();
  sub_100003724();
  v87 = v8;
  v88 = v7;
  __chkstk_darwin(v7);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v73 - v20;
  v22 = [a1 accountIdentity];
  AccountIdentity.init(amsAccountID:)();
  v23 = [a1 afterDelay];
  v24 = v23;
  if (v23)
  {
    [v23 doubleValue];
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  static Date.now.getter();
  v86 = v14;
  v78 = *(v14 + 16);
  v78(v17, v21, v12);
  sub_100099DF4(&qword_1002DD3A0, &qword_100237700);
  v91 = v12;
  v27 = sub_100099DF4(&qword_1002DD3A8, &qword_100237708);
  v28 = *(*(v27 - 8) + 80);
  v85 = v11;
  v29 = (v28 + 32) & ~v28;
  v89 = swift_allocObject();
  v77 = xmmword_10022E400;
  *(v89 + 16) = xmmword_10022E400;
  v30 = [a1 datasetNamespace];
  v83 = v17;
  v31 = v30;
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [a1 idSource];
  v90 = v21;
  v35 = v34;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = v84;
  v37 = sub_10011B81C();
  v84 = v36;
  if (v36)
  {

    v38 = *(v86 + 8);
    v39 = v91;
    v38(v83, v91);
    (*(v87 + 8))(v85, v88);
    v38(v90, v39);
    *(v89 + 16) = 0;
    swift_setDeallocating();
    return sub_10011C2FC();
  }

  else
  {
    v41 = v37;
    v75 = v24 == 0;

    v42 = v89 + v29;
    v74 = *(v27 + 48);
    v43 = [a1 idDomain];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = [a1 identifier];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    v78((v42 + *(v50 + 32)), v90, v91);
    *v42 = v76;
    *(v42 + 8) = v33;
    *(v42 + 16) = v41;
    *(v42 + 24) = v73;
    *(v42 + 32) = v45;
    *(v42 + 40) = v47;
    *(v42 + 48) = v49;
    sub_100099DF4(&qword_1002DD3B0, &unk_100237710);
    v51 = swift_allocObject();
    *(v51 + 16) = v77;
    v52 = [a1 datasetName];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    *(v51 + 32) = v53;
    *(v51 + 40) = v55;
    *(v42 + v74) = v51;
    sub_100099DF4(&qword_1002DC7C8, &qword_100236CA0);
    sub_100007C30();
    sub_10011C604(v56, v57, byte_10023679C);
    v58 = Dictionary.init(dictionaryLiteral:)();
    v59 = sub_10011C418(a1);
    v61 = v60;
    v62 = v79;
    UUID.init()();
    v63 = UUID.uuidString.getter();
    v65 = v64;
    (*(v80 + 8))(v62, v81);
    v66 = v86;
    v67 = v91;
    (*(v86 + 8))(v90, v91);
    v68 = v82;
    (*(v87 + 32))(v82, v85, v88);
    v69 = type metadata accessor for TSDataSyncExternalEvent(0);
    result = (*(v66 + 32))(v68 + v69[5], v83, v67);
    v70 = v68 + v69[6];
    *v70 = v26;
    *(v70 + 8) = v75;
    *(v68 + v69[7]) = 12;
    *(v68 + v69[8]) = v58;
    v71 = (v68 + v69[9]);
    *v71 = v59;
    v71[1] = v61;
    v72 = (v68 + v69[10]);
    *v72 = v63;
    v72[1] = v65;
  }

  return result;
}

uint64_t sub_10011B81C()
{
  String.lowercased()();
  sub_10000833C();
  v1 = v1 && v0 == 0xE400000000000000;
  if (v1)
  {

    return 0;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10000AFF8();
    sub_10000B840();
    sub_10000833C();
    if (v1 && v2 == 0xE800000000000000)
    {
    }

    else
    {
      sub_1000028B0();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10000AFF8();
    }

    return 2;
  }
}

void sub_10011B9F4(uint64_t a1, unint64_t a2)
{
  v69[0] = 124;
  v69[1] = 0xE100000000000000;
  v68 = v69;

  v5 = sub_10011BF54(0x7FFFFFFFFFFFFFFFLL, 1, sub_10011D0A8, v67, a1, a2);
  v6 = v5;
  v7 = v5[2];
  if (v7)
  {
    v8 = 0;
    v9 = v5 + 4;
    v10 = _swiftEmptyArrayStorage;
    v60 = v5[2];
    v61 = v5;
    v62 = (v5 + 4);
    while (v8 < v6[2])
    {
      v11 = &v9[4 * v8];
      v12 = *v11;
      v13 = v11[1] >> 14;
      if (v13 != *v11 >> 14)
      {
        v64 = v8;
        v65 = v10;
        v15 = v11[2];
        v14 = v11[3];

        v16 = v12;
        v66 = _swiftEmptyArrayStorage;
LABEL_6:
        for (i = v16; ; i = Substring.index(after:)())
        {
          v18 = i >> 14;
          v19 = v16 >> 14;
          if (i >> 14 == v13)
          {
            break;
          }

          sub_10000BA6C();
          v2 = v15;
          v6 = v14;
          if (Substring.subscript.getter() == 58 && v20 == 0xE100000000000000)
          {

LABEL_15:
            if (v19 != v18)
            {
              if (v18 < v19)
              {
                goto LABEL_45;
              }

              v23 = Substring.subscript.getter();
              v63 = v24;
              v26 = v25;
              v28 = v27;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10000657C();
                sub_10013BC44();
                v66 = isUniquelyReferenced_nonNull_native;
              }

              v37 = v66[2];
              if (v37 >= v66[3] >> 1)
              {
                sub_10000AB10(isUniquelyReferenced_nonNull_native, v30, v31, v32, v33, v34, v35, v36, v60, v61, v62, v63, v64, v65, v66);
                v66 = v39;
              }

              v66[2] = v37 + 1;
              v38 = &v66[4 * v37];
              v38[4] = v23;
              v38[5] = v63;
              v38[6] = v26;
              v38[7] = v28;
              v14 = v6;
            }

            v15 = v2;
            sub_10000BA6C();
            v16 = Substring.index(after:)();
            goto LABEL_6;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_15;
          }

          sub_10000BA6C();
          v15 = v2;
        }

        if (v19 == v13)
        {

          v10 = v65;
          v40 = v66[2];
          v7 = v60;
          v6 = v61;
          v8 = v64;
        }

        else
        {
          if (v13 < v19)
          {
            goto LABEL_46;
          }

          v41 = Substring.subscript.getter();
          sub_1000072C8();

          v42 = swift_isUniquelyReferenced_nonNull_native();
          if ((v42 & 1) == 0)
          {
            sub_10000657C();
            sub_10013BC44();
            v66 = v42;
          }

          v7 = v60;
          v8 = v64;
          v50 = v66[2];
          v40 = v50 + 1;
          if (v50 >= v66[3] >> 1)
          {
            sub_10000AB10(v42, v43, v44, v45, v46, v47, v48, v49, v60, v61, v62, v63, v64, v65, v66);
            v66 = v59;
          }

          v66[2] = v40;
          v51 = &v66[4 * v50];
          v51[4] = v41;
          v51[5] = v2;
          v51[6] = v6;
          v51[7] = i;
          v6 = v61;
          v10 = v65;
        }

        if (v40 == 2)
        {

          sub_1000050CC();
          v52 = static String._fromSubstring(_:)();
          v54 = v53;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000657C();
            sub_10013C0F0();
            v10 = v57;
          }

          v55 = v10[2];
          v9 = v62;
          if (v55 >= v10[3] >> 1)
          {
            sub_10013C0F0();
            v9 = v62;
            v10 = v58;
          }

          v10[2] = v55 + 1;
          v56 = &v10[2 * v55];
          v56[4] = v52;
          v56[5] = v54;
        }

        else
        {

          v9 = v62;
        }
      }

      if (++v8 == v7)
      {

        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_41:
    if (!v10[2])
    {
    }
  }
}

uint64_t sub_10011BE0C(uint64_t a1)
{
  v2 = sub_10011C6B0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10011BE48(uint64_t a1)
{
  v2 = sub_10011C6B0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10011BEA0(uint64_t a1)
{
  v2 = sub_10011CA64();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10011BEDC(uint64_t a1)
{
  v2 = sub_10011CA64();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

void *sub_10011BF54(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v44 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    sub_1000072C8();

    sub_10013BC44();
    v16 = v30;
    v9 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v31 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v32 = (v16 + 32 * v9);
      v32[4] = v7;
      v32[5] = v11;
      v32[6] = v12;
      v32[7] = v13;
      return v16;
    }

LABEL_41:
    sub_10013BC44();
    v16 = v33;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v42 = _swiftEmptyArrayStorage;
  v17 = 15;
  while (1)
  {
    v40 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v40;
        goto LABEL_30;
      }

      sub_100007688();
      v18 = String.subscript.getter();
      v12 = v19;
      v43[0] = v18;
      v43[1] = v19;
      v20 = v44(v43);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      sub_100007688();
      v17 = String.index(after:)();
    }

    v23 = (v40 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v40 >> 14)
    {
      break;
    }

    v41 = String.subscript.getter();
    v36 = v25;
    v37 = v24;
    v35 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000657C();
      sub_10013BC44();
      v42 = v28;
    }

    v13 = v42[2];
    v12 = v13 + 1;
    if (v13 >= v42[3] >> 1)
    {
      sub_10013BC44();
      v42 = v29;
    }

    v42[2] = v12;
    v27 = &v42[4 * v13];
    v27[4] = v41;
    v27[5] = v37;
    v27[6] = v36;
    v27[7] = v35;
LABEL_20:
    sub_100007688();
    v17 = String.index(after:)();
    if ((v23 & 1) == 0 && v42[2] == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v42;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = String.subscript.getter();
        sub_1000072C8();

        v16 = v42;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v31 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      sub_10000657C();
      sub_10013BC44();
      v16 = v34;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011C2B8()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10011C2FC()
{
  sub_100099DF4(&qword_1002DD3A8, &qword_100237708);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10011C380(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = 0, (v5 & 1) != 0))
  {
    memcpy(__dst, a1 + 2, 0x62uLL);
    memcpy(v8, a2 + 2, 0x62uLL);
    v6 = static AvroSchema.== infix(_:_:)(__dst, v8);
  }

  return v6 & 1;
}

uint64_t sub_10011C418(void *a1)
{
  v1 = [a1 idSuffix];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10011C47C()
{
  result = qword_1002DD3B8;
  if (!qword_1002DD3B8)
  {
    result = swift_getWitnessTable("\rx\a", &type metadata for TSDataSyncEventCore.IdentifierError, v0, v1);
    atomic_store(result, &qword_1002DD3B8);
  }

  return result;
}

unint64_t sub_10011C4D0()
{
  result = qword_1002DD3C8;
  if (!qword_1002DD3C8)
  {
    result = swift_getWitnessTable("Mx\a", &unk_1002B7D20, v0, v1);
    atomic_store(result, &qword_1002DD3C8);
  }

  return result;
}

uint64_t sub_10011C544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011C5A8(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011C604(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011C664(uint64_t result, int a2, int a3)
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

      return sub_100005254(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return sub_100005254(result, a2);
    }
  }

  return result;
}

unint64_t sub_10011C6B0()
{
  result = qword_1002DD3F0;
  if (!qword_1002DD3F0)
  {
    result = swift_getWitnessTable(byte_100237854, &type metadata for TSDataSyncEventCore.IdentifierError, v0, v1);
    atomic_store(result, &qword_1002DD3F0);
  }

  return result;
}

unint64_t sub_10011C708()
{
  result = qword_1002DD3F8;
  if (!qword_1002DD3F8)
  {
    result = swift_getWitnessTable(byte_10023780C, &type metadata for TSDataSyncEventCore.IdentifierError, v0, v1);
    atomic_store(result, &qword_1002DD3F8);
  }

  return result;
}

unint64_t sub_10011C760()
{
  result = qword_1002DD400;
  if (!qword_1002DD400)
  {
    result = swift_getWitnessTable(byte_1002377E4, &type metadata for TSDataSyncEventCore.IdentifierError, v0, v1);
    atomic_store(result, &qword_1002DD400);
  }

  return result;
}

unint64_t sub_10011C7B8()
{
  result = qword_1002DD408;
  if (!qword_1002DD408)
  {
    result = swift_getWitnessTable(byte_10023793C, &unk_1002B7D20, v0, v1);
    atomic_store(result, &qword_1002DD408);
  }

  return result;
}

unint64_t sub_10011C810()
{
  result = qword_1002DD410;
  if (!qword_1002DD410)
  {
    result = swift_getWitnessTable(byte_1002378F4, &unk_1002B7D20, v0, v1);
    atomic_store(result, &qword_1002DD410);
  }

  return result;
}

unint64_t sub_10011C868()
{
  result = qword_1002DD418;
  if (!qword_1002DD418)
  {
    result = swift_getWitnessTable("5x\a", &unk_1002B7D20, v0, v1);
    atomic_store(result, &qword_1002DD418);
  }

  return result;
}

unint64_t sub_10011C8C0()
{
  result = qword_1002DD420;
  if (!qword_1002DD420)
  {
    result = swift_getWitnessTable("Mw\a", &unk_1002B7C88, v0, v1);
    atomic_store(result, &qword_1002DD420);
  }

  return result;
}

unint64_t sub_10011C914()
{
  result = qword_1002DD430;
  if (!qword_1002DD430)
  {
    result = swift_getWitnessTable("-u\a", &unk_1002B7E40, v0, v1);
    atomic_store(result, &qword_1002DD430);
  }

  return result;
}

unint64_t sub_10011C968()
{
  result = qword_1002DD438;
  if (!qword_1002DD438)
  {
    result = swift_getWitnessTable(byte_100237CCC, &unk_1002B7EB8, v0, v1);
    atomic_store(result, &qword_1002DD438);
  }

  return result;
}

unint64_t sub_10011C9BC()
{
  result = qword_1002DD448;
  if (!qword_1002DD448)
  {
    result = swift_getWitnessTable(byte_100237CA4, &unk_1002B7EB8, v0, v1);
    atomic_store(result, &qword_1002DD448);
  }

  return result;
}

unint64_t sub_10011CA10()
{
  result = qword_1002DD450;
  if (!qword_1002DD450)
  {
    result = swift_getWitnessTable(byte_10023797C, &unk_1002B7D20, v0, v1);
    atomic_store(result, &qword_1002DD450);
  }

  return result;
}

unint64_t sub_10011CA64()
{
  result = qword_1002DD458;
  if (!qword_1002DD458)
  {
    result = swift_getWitnessTable(byte_100237894, &type metadata for TSDataSyncEventCore.IdentifierError, v0, v1);
    atomic_store(result, &qword_1002DD458);
  }

  return result;
}

uint64_t sub_10011CAC4(uint64_t result, int a2, int a3)
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

      return sub_100005254(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_100005254(result, a2);
    }
  }

  return result;
}

unint64_t sub_10011CB08()
{
  result = qword_1002DD460;
  if (!qword_1002DD460)
  {
    result = swift_getWitnessTable(byte_100237B4C, &unk_1002B7EB8, v0, v1);
    atomic_store(result, &qword_1002DD460);
  }

  return result;
}

unint64_t sub_10011CB60()
{
  result = qword_1002DD468;
  if (!qword_1002DD468)
  {
    result = swift_getWitnessTable(byte_100237C7C, &unk_1002B7E40, v0, v1);
    atomic_store(result, &qword_1002DD468);
  }

  return result;
}

unint64_t sub_10011CBB8()
{
  result = qword_1002DD470;
  if (!qword_1002DD470)
  {
    result = swift_getWitnessTable(byte_100237BB4, &unk_1002B7E40, v0, v1);
    atomic_store(result, &qword_1002DD470);
  }

  return result;
}

unint64_t sub_10011CC10()
{
  result = qword_1002DD478;
  if (!qword_1002DD478)
  {
    result = swift_getWitnessTable(byte_100237BDC, &unk_1002B7E40, v0, v1);
    atomic_store(result, &qword_1002DD478);
  }

  return result;
}

unint64_t sub_10011CC64()
{
  result = qword_1002DD488;
  if (!qword_1002DD488)
  {
    result = swift_getWitnessTable(byte_100237F5C, &unk_1002B7F50, v0, v1);
    atomic_store(result, &qword_1002DD488);
  }

  return result;
}

unint64_t sub_10011CCB8()
{
  result = qword_1002DD490;
  if (!qword_1002DD490)
  {
    result = swift_getWitnessTable("ur\a", &unk_1002B7FE0, v0, v1);
    atomic_store(result, &qword_1002DD490);
  }

  return result;
}

unint64_t sub_10011CD0C()
{
  result = qword_1002DD4A0;
  if (!qword_1002DD4A0)
  {
    result = swift_getWitnessTable(byte_100237F0C, &unk_1002B7FE0, v0, v1);
    atomic_store(result, &qword_1002DD4A0);
  }

  return result;
}

_BYTE *sub_10011CD60(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10011CE38(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10011CEE4()
{
  result = qword_1002DD4A8;
  if (!qword_1002DD4A8)
  {
    result = swift_getWitnessTable("\rs\a", &unk_1002B7FE0, v0, v1);
    atomic_store(result, &qword_1002DD4A8);
  }

  return result;
}

unint64_t sub_10011CF3C()
{
  result = qword_1002DD4B0;
  if (!qword_1002DD4B0)
  {
    result = swift_getWitnessTable(byte_100237EE4, &unk_1002B7F50, v0, v1);
    atomic_store(result, &qword_1002DD4B0);
  }

  return result;
}

unint64_t sub_10011CF94()
{
  result = qword_1002DD4B8;
  if (!qword_1002DD4B8)
  {
    result = swift_getWitnessTable(byte_100237E1C, &unk_1002B7F50, v0, v1);
    atomic_store(result, &qword_1002DD4B8);
  }

  return result;
}

unint64_t sub_10011CFEC()
{
  result = qword_1002DD4C0;
  if (!qword_1002DD4C0)
  {
    result = swift_getWitnessTable(byte_100237E44, &unk_1002B7F50, v0, v1);
    atomic_store(result, &qword_1002DD4C0);
  }

  return result;
}

unint64_t sub_10011D040()
{
  result = qword_1002DD4C8;
  if (!qword_1002DD4C8)
  {
    result = swift_getWitnessTable("Ms\a", &unk_1002B7FE0, v0, v1);
    atomic_store(result, &qword_1002DD4C8);
  }

  return result;
}

uint64_t sub_10011D134(uint64_t a1, uint64_t a2)
{

  return StringProtocol.trimmingCharacters(in:)();
}

uint64_t sub_10011D150(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10011D190(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10011D1F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C626174 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616261746164 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x444972657375 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10011D348(char a1)
{
  result = 0x656C626174;
  switch(a1)
  {
    case 1:
      result = 0x6573616261746164;
      break;
    case 2:
      result = 0x69746E6564657263;
      break;
    case 3:
      result = 0x444972657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10011D3C8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10011D490(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DD4E8, &qword_1002380D0);
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_10000C4FC(a1, a1[3]);
  sub_10011DB1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24 = 0;
  sub_10000801C(v11, v12, &v24);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v23 = 1;
    sub_10000801C(v13, v14, &v23);
    v15 = v3[4];
    v16 = v3[5];
    v22 = 2;
    sub_10000801C(v15, v16, &v22);
    v17 = v3[6];
    v18 = v3[7];
    v21 = 3;
    sub_10000801C(v17, v18, &v21);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10011D608(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10011D660()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011D6C8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100099DF4(&qword_1002DD4D8, &qword_1002380C8);
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  sub_10000C4FC(a1, a1[3]);
  sub_10011DB1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004118(a1);
  }

  LOBYTE(v34[0]) = 0;
  sub_100006D4C();
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  sub_100006D4C();
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  sub_100006D4C();
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  v35 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_10011DB70(&v30, v34);
  sub_100004118(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_10011DBA8(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_10011D980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10011D1F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10011D9A8(uint64_t a1)
{
  v2 = sub_10011DB1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011D9E4(uint64_t a1)
{
  v2 = sub_10011DB1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10011DA20@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10011D6C8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

Swift::Int sub_10011DA84(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10011D608(v2);
  return Hasher._finalize()();
}

unint64_t sub_10011DAC8()
{
  result = qword_1002DD4D0;
  if (!qword_1002DD4D0)
  {
    result = swift_getWitnessTable(byte_100238010, &type metadata for TSDataSyncWriteConfiguration, v0, v1);
    atomic_store(result, &qword_1002DD4D0);
  }

  return result;
}

unint64_t sub_10011DB1C()
{
  result = qword_1002DD4E0;
  if (!qword_1002DD4E0)
  {
    result = swift_getWitnessTable(byte_10023819C, &type metadata for TSDataSyncWriteConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD4E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncWriteConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10011DCB8()
{
  result = qword_1002DD4F0;
  if (!qword_1002DD4F0)
  {
    result = swift_getWitnessTable(byte_100238174, &type metadata for TSDataSyncWriteConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD4F0);
  }

  return result;
}

unint64_t sub_10011DD10()
{
  result = qword_1002DD4F8;
  if (!qword_1002DD4F8)
  {
    result = swift_getWitnessTable(byte_1002380E4, &type metadata for TSDataSyncWriteConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD4F8);
  }

  return result;
}

unint64_t sub_10011DD68()
{
  result = qword_1002DD500;
  if (!qword_1002DD500)
  {
    result = swift_getWitnessTable(byte_10023810C, &type metadata for TSDataSyncWriteConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD500);
  }

  return result;
}

void (*sub_10011DDBC(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_10011DE50()
{
  sub_100004168();
  v26 = v0;
  v27 = v1;
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v4);
  sub_100003774();
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002381F0;
  *(inited + 32) = 0x756F53746E657665;
  *(inited + 40) = 0xEB00000000656372;
  *(inited + 48) = 0x746E65696C63;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6449746E65696C63;
  *(inited + 88) = 0xE800000000000000;
  v9 = sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  *(inited + 120) = v9;
  v10 = v3[1];
  if (v10)
  {
    v11 = *v3;
    v12 = v3[2];
    v13 = v3[3];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  *(inited + 96) = v11;
  *(inited + 104) = v10;
  *(inited + 128) = 0x644972657375;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = v12;
  *(inited + 152) = v13;
  *(inited + 168) = v9;
  *(inited + 176) = 0x6D6954746E657665;
  *(inited + 184) = 0xE900000000000065;
  v14 = type metadata accessor for Date();
  sub_10000307C();
  (*(v15 + 16))(v7, v26, v14);
  sub_100002728(v7, 0, 1, v14);
  v16 = sub_10011E130(v7, v27);
  v18 = v17;
  sub_100004E24(v7, &qword_1002DA970, &qword_1002318B0);
  v19 = sub_100099DF4(&qword_1002DD508, &qword_100238208);
  *(inited + 192) = v16;
  *(inited + 200) = v18 & 1;
  *(inited + 216) = v19;
  strcpy((inited + 224), "osBuildNumber");
  *(inited + 238) = -4864;
  *(inited + 264) = v9;
  if (v10)
  {
    v21 = v3[4];
    v20 = v3[5];
    v24 = v3 + 6;
    v22 = v3[6];
    v23 = v24[1];
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v22 = 0;
    v23 = 0;
  }

  *(inited + 240) = v21;
  *(inited + 248) = v20;
  strcpy((inited + 272), "buildVariant");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  *(inited + 312) = v9;
  *(inited + 288) = v22;
  *(inited + 296) = v23;
  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  Dictionary.init(dictionaryLiteral:)();
  sub_1000027F8();
}

unint64_t sub_10011E130(uint64_t a1, char a2)
{
  v3 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v3);
  sub_100003774();
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Date();
  sub_1000038DC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000306C();
  v13 = v12 - v11;
  sub_10003D1E4();
  if (sub_100004DFC(v6, 1, v7) == 1)
  {
    sub_100004E24(v6, &qword_1002DA970, &qword_1002318B0);
    return 0;
  }

  (*(v9 + 32))(v13, v6, v7);
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  v17 = v15;
  result = (*(v9 + 8))(v13, v7);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1.84467441e19)
  {
    return qword_100238360[a2] + 300 * (v16 / 0x12C);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10011E500(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v70 = a5;
  v71 = a3;
  v72 = a4;
  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v7);
  sub_100003774();
  __chkstk_darwin(v8);
  v69 = &v66 - v9;
  v10 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  v11 = sub_1000030B8(v10);
  __chkstk_darwin(v11);
  sub_10000308C();
  v68 = v12 - v13;
  __chkstk_darwin(v14);
  v67 = &v66 - v15;
  __chkstk_darwin(v16);
  v66 = &v66 - v17;
  v18 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v18);
  sub_100003774();
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_10000307C();
  __chkstk_darwin(v23);
  sub_10000306C();
  v26 = v25 - v24;
  v27 = *a1;
  v28 = a1[1];
  sub_100099DF4(&qword_1002DD518, &unk_1002404B0);
  v76 = Dictionary.init(dictionaryLiteral:)();
  v30 = *a2;
  v29 = a2[1];
  *(&v74 + 1) = &type metadata for String;
  *&v75 = &protocol witness table for String;
  *(&v75 + 1) = &protocol witness table for String;
  *&v73 = v30;
  *(&v73 + 1) = v29;

  sub_100005D0C();
  sub_1001A9008(&v73, v31, 0xE900000000000065);
  *(&v74 + 1) = &type metadata for String;
  *&v75 = &protocol witness table for String;
  *(&v75 + 1) = &protocol witness table for String;
  v32 = v22;
  *&v73 = v27;
  *(&v73 + 1) = v28;

  sub_10000EE48();
  sub_1001A9008(&v73, v33 & 0xFFFFFFFFFFFFLL | 0x4E74000000000000, 0xEB00000000656D61);
  v34 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_1001ABF58(v27, v28, *(v71 + *(v34 + 20)), v21);
  if (sub_100004DFC(v21, 1, v22) == 1)
  {
    sub_100004E24(v21, &qword_1002DBC28, &qword_100232F70);
    *&v75 = &protocol witness table for Int;
    *(&v75 + 1) = &protocol witness table for Int;
    *(&v74 + 1) = &type metadata for Int;
    *&v73 = 0;
    sub_10000DF04();
    result = sub_1001A9008(v35, v36, v37);
    goto LABEL_20;
  }

  sub_100121D08();
  v39 = v66;
  sub_10003D1E4();
  type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_100010DCC(v39);
  v40 = v26;
  if (v41)
  {
    sub_100004E24(v39, &qword_1002DCC10, &unk_100238220);
    v42 = v67;
  }

  else
  {
    v44 = *v39;
    v43 = v39[1];

    sub_100006D5C();
    sub_100121D60(v39, v45);
    v42 = v67;
    if (v43)
    {
      *(&v74 + 1) = &type metadata for String;
      *&v75 = &protocol witness table for String;
      *(&v75 + 1) = &protocol witness table for String;
      *&v73 = v44;
      *(&v73 + 1) = v43;
      sub_10000EE48();
      sub_1001A9008(&v73, v46 & 0xFFFFFFFFFFFFLL | 0x5674000000000000, 0xEE006E6F69737265);
    }
  }

  v47 = *(v40 + *(v32 + 44));
  *&v75 = &protocol witness table for UInt64;
  *(&v75 + 1) = &protocol witness table for UInt64;
  *(&v74 + 1) = &type metadata for UInt64;
  *&v73 = v47;
  sub_10000DF04();
  sub_1001A9008(v48, v49, v50);
  sub_10003D1E4();
  sub_100010DCC(v42);
  if (v41)
  {
    sub_100004E24(v42, &qword_1002DCC10, &unk_100238220);
LABEL_13:
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    goto LABEL_14;
  }

  v52 = *(v42 + 80);
  v51 = *(v42 + 88);

  sub_100006D5C();
  sub_100121D60(v42, v53);
  if (!v51)
  {
    goto LABEL_13;
  }

  *(&v74 + 1) = &type metadata for String;
  *&v75 = &protocol witness table for String;
  *(&v75 + 1) = &protocol witness table for String;
  *&v73 = v52;
  *(&v73 + 1) = v51;
LABEL_14:
  sub_1001A9008(&v73, 0xD000000000000012, 0x8000000100273C20);
  v54 = v68;
  sub_10003D1E4();
  sub_100010DCC(v54);
  if (v41)
  {
    sub_100004E24(v54, &qword_1002DCC10, &unk_100238220);
    v55 = type metadata accessor for Date();
    v56 = v69;
    sub_100002728(v69, 1, 1, v55);
  }

  else
  {
    v56 = v69;
    sub_10003D1E4();
    sub_100006D5C();
    sub_100121D60(v54, v57);
  }

  v58 = sub_10011E130(v56, 1);
  v60 = v59;
  sub_100004E24(v56, &qword_1002DA970, &qword_1002318B0);
  if ((v60 & 1) == 0)
  {
    *&v75 = &protocol witness table for UInt64;
    *(&v75 + 1) = &protocol witness table for UInt64;
    *(&v74 + 1) = &type metadata for UInt64;
    *&v73 = v58;
    sub_1001A9008(&v73, 0xD000000000000013, 0x8000000100273A10);
  }

  result = sub_100121D60(v40, type metadata accessor for TSDataSyncDatasetState);
LABEL_20:
  v61 = *(v72 + 24);
  if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v61 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v61 < 1.84467441e19)
  {
    *&v75 = &protocol witness table for UInt64;
    *(&v75 + 1) = &protocol witness table for UInt64;
    *(&v74 + 1) = &type metadata for UInt64;
    *&v73 = v61;
    sub_1001A9008(&v73, 0xD000000000000014, 0x8000000100273C00);
    v62 = v76;
    v63 = v70;
    sub_100167188();
    v64 = *(*v63 + 16);
    result = sub_1001671FC(v64);
    v65 = *v63;
    *(v65 + 16) = v64 + 1;
    *(v65 + 8 * v64 + 32) = v62;
    return result;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_10011EBD8()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v42[2] = v4;
  v42[3] = v5;
  v42[1] = v6;
  v7 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v8 = sub_1000030B8(v7);
  __chkstk_darwin(v8);
  sub_10000308C();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  sub_10000307C();
  __chkstk_darwin(v11);
  sub_10000308C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v42 - v16;
  v49 = _swiftEmptyArrayStorage;
  v48 = 1;
  sub_10000B010();
  v42[0] = v1;
  sub_100122CC4();
  sub_1000045B0();
  sub_100121D08();

  sub_100120DDC();
  v43 = v18;
  sub_1001072CC(&v43);

  v20 = v43;
  __chkstk_darwin(v19);
  v42[-4] = v3;
  v42[-3] = &v48;
  v42[-2] = &v49;
  sub_10011DDBC(sub_100121CE8, &v42[-6], v20);

  sub_100122D1C();
  sub_100121D60(v17, v21);
  sub_10011DE50();
  v47 = v22;
  v23 = v49;
  v46 = sub_100099DF4(&qword_1002DD510, &qword_100238218);
  v43 = v23;

  sub_10000EE48();
  sub_1001A8ED8(&v43, v24 & 0xFFFFFFFFFFFFLL | 0x7374000000000000, 0xE800000000000000);
  v46 = &type metadata for Bool;
  LOBYTE(v43) = v48;
  sub_1001A8ED8(&v43, 0x7365636375537369, 0xEC0000006C756673);
  v25 = (v3 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 40));
  v26 = v25[1];
  v27 = v25[2];
  v28 = v25[3];
  if (v26 >= 2)
  {
    v29 = *v25;

    v31 = &type metadata for String;
    v30 = v26;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v45 = 0;
  }

  v43 = v29;
  v44 = v30;
  v46 = v31;
  sub_1001A8ED8(&v43, 0xD000000000000013, 0x8000000100273B80);
  if (v26 == 1 || !v28)
  {
    v27 = 0;
    v28 = 0;
    v32 = 0;
    v45 = 0;
  }

  else
  {

    v32 = &type metadata for String;
  }

  v43 = v27;
  v44 = v28;
  v46 = v32;
  sub_1001A8ED8(&v43, 0xD000000000000011, 0x80000001002725F0);
  v34 = *v3;
  v33 = v3[1];
  v46 = &type metadata for String;
  v43 = v34;
  v44 = v33;

  sub_100005D0C();
  sub_1001A8ED8(&v43, v35, 0xE900000000000065);
  sub_10000B010();
  sub_100122CC4();
  sub_1000045B0();
  sub_100121D08();
  v36 = (v14 + *(v10 + 24));
  v38 = *v36;
  v37 = v36[1];
  v46 = &type metadata for String;
  v43 = v38;
  v44 = v37;

  sub_100006688();
  sub_1001A8ED8(&v43, v39, v40);
  sub_100122D1C();
  sub_100121D60(v14, v41);
  static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

  sub_1000027F8();
}

uint64_t sub_10011EFE4(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  v103 = a4;
  v95 = a3;
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v6 - 8);
  v99 = &v93 - v7;
  v8 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  __chkstk_darwin(v8 - 8);
  v102 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v93 - v11;
  __chkstk_darwin(v12);
  v100 = &v93 - v13;
  __chkstk_darwin(v14);
  v98 = &v93 - v15;
  __chkstk_darwin(v16);
  v97 = &v93 - v17;
  __chkstk_darwin(v18);
  v96 = &v93 - v19;
  __chkstk_darwin(v20);
  v22 = &v93 - v21;
  __chkstk_darwin(v23);
  v94 = &v93 - v24;
  __chkstk_darwin(v25);
  v27 = &v93 - v26;
  __chkstk_darwin(v28);
  v30 = &v93 - v29;
  __chkstk_darwin(v31);
  v33 = (&v93 - v32);
  v104 = type metadata accessor for TSDataSyncDatasetState(0);
  __chkstk_darwin(v104);
  __chkstk_darwin(v34);
  v105 = &v93 - v35;
  v37 = *a1;
  v36 = a1[1];
  result = type metadata accessor for TSDataSyncDatasetGroupState(0);
  if (*(*(a2 + *(result + 20)) + 16))
  {
    result = sub_10014EB30(v37, v36);
    if (v39)
    {
      sub_100122CC4();
      sub_100121D08();
      sub_100099DF4(&qword_1002DD518, &unk_1002404B0);
      v109 = Dictionary.init(dictionaryLiteral:)();
      *(&v107 + 1) = &type metadata for String;
      *&v108 = &protocol witness table for String;
      *(&v108 + 1) = &protocol witness table for String;
      *&v106 = v37;
      *(&v106 + 1) = v36;

      sub_1001A9008(&v106, 0x4E74657361746164, 0xEB00000000656D61);
      sub_10003D1E4();
      v40 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
      if (sub_100004DFC(v33, 1, v40) == 1)
      {
        sub_100004E24(v33, &qword_1002DCC10, &unk_100238220);
        v41 = v101;
      }

      else
      {
        v43 = *v33;
        v42 = v33[1];

        sub_100121D60(v33, type metadata accessor for TSDataSyncDatasetMetricsFields);
        v41 = v101;
        if (v42)
        {
          *(&v107 + 1) = &type metadata for String;
          *&v108 = &protocol witness table for String;
          *(&v108 + 1) = &protocol witness table for String;
          *&v106 = v43;
          *(&v106 + 1) = v42;
          sub_1001A9008(&v106, 0x5674657361746164, 0xEE006E6F69737265);
        }
      }

      sub_10003D1E4();
      v44 = sub_100004DFC(v30, 1, v40);
      v45 = v96;
      if (v44 == 1)
      {
        v46 = v30;
LABEL_9:
        sub_100004E24(v46, &qword_1002DCC10, &unk_100238220);
        goto LABEL_19;
      }

      v47 = *(v30 + 4);
      v48 = v30[40];
      sub_100121D60(v30, type metadata accessor for TSDataSyncDatasetMetricsFields);
      if ((v48 & 1) == 0)
      {
        sub_10003D1E4();
        if (sub_100004DFC(v27, 1, v40) == 1)
        {
          v46 = v27;
          goto LABEL_9;
        }

        v50 = *(v27 + 6);
        v49 = *(v27 + 7);

        sub_100121D60(v27, type metadata accessor for TSDataSyncDatasetMetricsFields);
        if (v49)
        {
          *&v108 = &protocol witness table for Int;
          *(&v108 + 1) = &protocol witness table for Int;
          *(&v107 + 1) = &type metadata for Int;
          *&v106 = v47;
          sub_1001A9008(&v106, 0x646F43726F727265, 0xE900000000000065);
          *(&v107 + 1) = &type metadata for String;
          *&v108 = &protocol witness table for String;
          *(&v108 + 1) = &protocol witness table for String;
          *&v106 = v50;
          *(&v106 + 1) = v49;
          sub_1001A9008(&v106, 0x6D6F44726F727265, 0xEB000000006E6961);
          v51 = v94;
          sub_10003D1E4();
          if (sub_100004DFC(v51, 1, v40) == 1)
          {
            sub_100004E24(v51, &qword_1002DCC10, &unk_100238220);
          }

          else
          {
            v53 = *(v51 + 64);
            v52 = *(v51 + 72);

            sub_100121D60(v51, type metadata accessor for TSDataSyncDatasetMetricsFields);
            if (v52)
            {
              *(&v107 + 1) = &type metadata for String;
              *&v108 = &protocol witness table for String;
              *(&v108 + 1) = &protocol witness table for String;
              *&v106 = v53;
              *(&v106 + 1) = v52;
              sub_1001A9008(&v106, 0x746544726F727265, 0xEC000000736C6961);
            }
          }

          *v95 = 0;
        }
      }

LABEL_19:
      sub_10003D1E4();
      if (sub_100004DFC(v22, 1, v40) == 1)
      {
        sub_100004E24(v22, &qword_1002DCC10, &unk_100238220);
        v54 = 0;
      }

      else
      {
        v55 = v22[v40[11]];
        sub_100121D60(v22, type metadata accessor for TSDataSyncDatasetMetricsFields);
        v54 = v55 & 1;
      }

      *(&v107 + 1) = &type metadata for Bool;
      *&v108 = &protocol witness table for Bool;
      *(&v108 + 1) = &protocol witness table for Bool;
      LOBYTE(v106) = v54;
      sub_1001A9008(&v106, 0x6465766965636572, 0xEE00616D65686353);
      sub_10003D1E4();
      if (sub_100004DFC(v45, 1, v40) == 1)
      {
        sub_100004E24(v45, &qword_1002DCC10, &unk_100238220);
        v56 = 0;
      }

      else
      {
        v57 = *(v45 + v40[12]);
        sub_100121D60(v45, type metadata accessor for TSDataSyncDatasetMetricsFields);
        v56 = v57 & 1;
      }

      *(&v107 + 1) = &type metadata for Bool;
      *&v108 = &protocol witness table for Bool;
      *(&v108 + 1) = &protocol witness table for Bool;
      LOBYTE(v106) = v56;
      sub_1001A9008(&v106, 0xD000000000000014, 0x8000000100273BA0);
      v58 = v105;
      v59 = v97;
      sub_10003D1E4();
      if (sub_100004DFC(v59, 1, v40) == 1)
      {
        sub_100004E24(v59, &qword_1002DCC10, &unk_100238220);
        v60 = v98;
      }

      else
      {
        v62 = *(v59 + 80);
        v61 = *(v59 + 88);

        sub_100121D60(v59, type metadata accessor for TSDataSyncDatasetMetricsFields);
        v60 = v98;
        if (v61)
        {
          *(&v107 + 1) = &type metadata for String;
          *&v108 = &protocol witness table for String;
          *(&v108 + 1) = &protocol witness table for String;
          *&v106 = v62;
          *(&v106 + 1) = v61;
          goto LABEL_30;
        }
      }

      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
LABEL_30:
      v63 = v99;
      sub_1001A9008(&v106, 0x7265566E656B6F74, 0xEC0000006E6F6973);
      v64 = sub_10011E130(v58 + *(v104 + 32), 2);
      if (v65)
      {
        v64 = 0;
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(&v106 + 1) = 0;
        *&v107 = 0;
      }

      else
      {
        v68 = &protocol witness table for UInt64;
        v67 = &protocol witness table for UInt64;
        v66 = &type metadata for UInt64;
      }

      *&v106 = v64;
      *(&v107 + 1) = v66;
      *&v108 = v67;
      *(&v108 + 1) = v68;
      sub_1001A9008(&v106, 0xD000000000000017, 0x8000000100273BC0);
      sub_10003D1E4();
      if (sub_100004DFC(v60, 1, v40) == 1)
      {
        sub_100004E24(v60, &qword_1002DCC10, &unk_100238220);
        v69 = type metadata accessor for Date();
        sub_100002728(v63, 1, 1, v69);
      }

      else
      {
        sub_10003D1E4();
        sub_100121D60(v60, type metadata accessor for TSDataSyncDatasetMetricsFields);
      }

      v70 = v100;
      v71 = sub_10011E130(v63, 2);
      v72 = v63;
      v73 = v71;
      v75 = v74;
      sub_100004E24(v72, &qword_1002DA970, &qword_1002318B0);
      if (v75)
      {
        v73 = 0;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(&v106 + 1) = 0;
        *&v107 = 0;
      }

      else
      {
        v78 = &protocol witness table for UInt64;
        v77 = &protocol witness table for UInt64;
        v76 = &type metadata for UInt64;
      }

      *&v106 = v73;
      *(&v107 + 1) = v76;
      *&v108 = v77;
      *(&v108 + 1) = v78;
      sub_1001A9008(&v106, 0x6C41616D65686373, 0xEF73546465726574);
      sub_10003D1E4();
      if (sub_100004DFC(v70, 1, v40) == 1)
      {
        sub_100004E24(v70, &qword_1002DCC10, &unk_100238220);
      }

      else
      {
        v79 = v70 + v40[14];
        v80 = *v79;
        v81 = *(v79 + 8);
        sub_100121D60(v70, type metadata accessor for TSDataSyncDatasetMetricsFields);
        if ((v81 & 1) == 0)
        {
          *&v108 = &protocol witness table for Int;
          *(&v108 + 1) = &protocol witness table for Int;
          *(&v107 + 1) = &type metadata for Int;
          *&v106 = v80;
LABEL_44:
          sub_1001A9008(&v106, 0x726F6365526D756ELL, 0xEA00000000007364);
          sub_10003D1E4();
          if (sub_100004DFC(v41, 1, v40) == 1)
          {
            sub_100004E24(v41, &qword_1002DCC10, &unk_100238220);
          }

          else
          {
            v82 = v41 + v40[15];
            v83 = *v82;
            v84 = *(v82 + 8);
            sub_100121D60(v41, type metadata accessor for TSDataSyncDatasetMetricsFields);
            if ((v84 & 1) == 0)
            {
              *&v108 = &protocol witness table for Int;
              *(&v108 + 1) = &protocol witness table for Int;
              *(&v107 + 1) = &type metadata for Int;
              *&v106 = v83;
LABEL_49:
              sub_1001A9008(&v106, 0x68637461426D756ELL, 0xEA00000000007365);
              v85 = v102;
              sub_10003D1E4();
              if (sub_100004DFC(v85, 1, v40) == 1)
              {
                sub_100004E24(v85, &qword_1002DCC10, &unk_100238220);
              }

              else
              {
                v86 = v85 + v40[16];
                v87 = *v86;
                v88 = *(v86 + 8);
                sub_100121D60(v85, type metadata accessor for TSDataSyncDatasetMetricsFields);
                if ((v88 & 1) == 0)
                {
                  *(&v107 + 1) = &type metadata for Double;
                  *&v108 = &protocol witness table for Double;
                  *(&v108 + 1) = &protocol witness table for Double;
                  *&v106 = v87;
                  goto LABEL_54;
                }
              }

              v107 = 0u;
              v108 = 0u;
              v106 = 0u;
LABEL_54:
              sub_1001A9008(&v106, 0x617275446C6C7570, 0xEC0000006E6F6974);
              v89 = v109;
              v90 = v103;
              sub_100167188();
              v91 = *(*v90 + 16);
              sub_1001671FC(v91);
              result = sub_100121D60(v58, type metadata accessor for TSDataSyncDatasetState);
              v92 = *v90;
              *(v92 + 16) = v91 + 1;
              *(v92 + 8 * v91 + 32) = v89;
              return result;
            }
          }

          v107 = 0u;
          v108 = 0u;
          v106 = 0u;
          goto LABEL_49;
        }
      }

      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      goto LABEL_44;
    }
  }

  return result;
}

void sub_10011FE60()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v146[2] = v4;
  v146[1] = v5;
  v146[0] = v6;
  v149 = sub_100099DF4(&qword_1002DD528, &qword_100238250);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v7);
  v157 = (v146 - v8);
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v9);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = v146 - v11;
  sub_10011DE50();
  v174 = v13;
  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = *(v1 + 8);
    v171 = &type metadata for String;
    *&v169 = v15;
    *(&v169 + 1) = v14;

    sub_100006688();
    sub_1001A8ED8(&v169, v16, v17);
  }

  v18 = 0xD000000000000011;
  v19 = type metadata accessor for TSDataSyncExternalEvent(0);
  if (*(v3 + *(v19 + 28)) == 12)
  {
    v30 = type metadata accessor for Date();
    sub_10000307C();
    (*(v31 + 16))(v12, v3, v30);
    v32 = sub_100122DAC();
    sub_100002728(v32, v33, 1, v30);
    v34 = sub_100122DAC();
    v36 = sub_10011E130(v34, v35);
    v38 = v37;
    sub_100004E24(v12, &qword_1002DA970, &qword_1002318B0);
    if (v38)
    {
      v36 = 0;
      v39 = 0;
      *(&v169 + 1) = 0;
      v170 = 0;
    }

    else
    {
      v39 = &type metadata for UInt64;
    }

    *&v169 = v36;
    v171 = v39;
    v41 = 0xD000000000000010;
    v40 = &v169;
    v42 = 0x8000000100273C40;
    goto LABEL_13;
  }

  if (!*(v3 + *(v19 + 28)))
  {
    v20 = type metadata accessor for Date();
    sub_10000307C();
    (*(v21 + 16))(v12, v3, v20);
    v22 = sub_100122DAC();
    sub_100002728(v22, v23, 1, v20);
    v24 = sub_100122DAC();
    v26 = sub_10011E130(v24, v25);
    v28 = v27;
    sub_100004E24(v12, &qword_1002DA970, &qword_1002318B0);
    if (v28)
    {
      v26 = 0;
      v29 = 0;
      *(&v169 + 1) = 0;
      v170 = 0;
    }

    else
    {
      v29 = &type metadata for UInt64;
    }

    *&v169 = v26;
    v171 = v29;
    sub_10000DF04();
LABEL_13:
    sub_1001A8ED8(v40, v41, v42);
  }

  v43 = *(v3 + *(v19 + 32));
  v44 = v43 + 64;
  v45 = 1 << *(v43 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v152 = v46 & *(v43 + 64);
  v47 = (v45 + 63) >> 6;
  v150 = v43;

  v48 = 0;
  v49 = _swiftEmptyArrayStorage;
  v148 = v44;
  for (i = v47; ; v47 = i)
  {
    v50 = v152;
    if (!v152)
    {
      break;
    }

    v51 = v48;
LABEL_22:
    v152 = (v50 - 1) & v50;
    v151 = v51;
    v52 = __clz(__rbit64(v50)) | (v51 << 6);
    v53 = v150;
    v54 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    sub_1000030B8(v54);
    v55 = v157;
    sub_100122CC4();
    v56 = *(*(v53 + 56) + 8 * v52);
    *(v55 + *(v149 + 48)) = v56;
    v57 = *(v56 + 16);
    v58 = ( + 40);
    if (v57)
    {
      while (1)
      {
        v154 = v57;
        v155 = v49;
        v59 = *v58;
        v156 = *(v58 - 1);
        v153 = v58;
        v158 = v59;
        swift_bridgeObjectRetain_n();
        sub_100099DF4(&qword_1002DD518, &unk_1002404B0);
        v60 = Dictionary.init(dictionaryLiteral:)();
        v61 = *v157;
        v62 = v157[1];
        v171 = &type metadata for String;
        v172 = &protocol witness table for String;
        v173 = &protocol witness table for String;
        *&v169 = v61;
        *(&v169 + 1) = v62;
        sub_100122C8C(&v169, &v167);
        sub_100008494(&v167, v168);
        sub_1000038DC();
        __chkstk_darwin(v63);
        v65 = sub_100004B1C(v64, v146[0]);
        v66(v65);
        v67 = *v18;
        v68 = v18[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v165 = &protocol witness table for String;
        v166 = v60;
        v163 = &type metadata for String;
        v164 = &protocol witness table for String;
        v161 = v67;
        v162 = v68;

        sub_100014034();
        sub_10000B818();
        v74 = (v72 + v73);
        if (__OFADD__(v72, v73))
        {
          break;
        }

        v75 = v70;
        v76 = v71;
        sub_100099DF4(&unk_1002E0030, &qword_1002403F0);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v74))
        {
          sub_100014034();
          sub_10000A224();
          if (!v78)
          {
            goto LABEL_64;
          }

          v75 = v77;
        }

        v79 = v166;
        if (v76)
        {
          sub_100005300(v166[7]);
        }

        else
        {
          sub_100122D74();
          sub_1000038DC();
          __chkstk_darwin(v80);
          v82 = sub_100004B1C(v81, v146[0]);
          v83(v82);
          v84 = *v74;
          v159 = &type metadata for String;
          v160 = &protocol witness table for String;
          sub_1000031D4(v84);
          sub_10000AB34(&v79[v85]);
          v86 = (v79[6] + 16 * v75);
          *v86 = 0x63617073656D616ELL;
          v86[1] = 0xE900000000000065;
          sub_100122D90(v79[7]);
          v87 = v79[2];
          v88 = __OFADD__(v87, 1);
          v89 = v87 + 1;
          if (v88)
          {
            goto LABEL_60;
          }

          v79[2] = v89;
          sub_100004118(&v161);
        }

        sub_100004118(&v167);
        v90 = v157[3];
        v91 = v157[4];
        v92 = &type metadata for String;
        v171 = &type metadata for String;
        v172 = &protocol witness table for String;
        v173 = &protocol witness table for String;
        *&v169 = v90;
        *(&v169 + 1) = v91;
        sub_100122C8C(&v169, &v167);
        sub_100008494(&v167, v168);
        sub_1000038DC();
        __chkstk_darwin(v93);
        sub_10000306C();
        v96 = (v95 - v94);
        (*(v97 + 16))(v95 - v94);
        v18 = *v96;
        v98 = v96[1];

        swift_isUniquelyReferenced_nonNull_native();
        v165 = &protocol witness table for String;
        v166 = v79;
        v163 = &type metadata for String;
        v164 = &protocol witness table for String;
        v161 = v18;
        v162 = v98;

        sub_100122D50();
        v100 = v99;
        sub_10000B818();
        if (__OFADD__(v102, v103))
        {
          goto LABEL_58;
        }

        if (sub_100122DC4(v101, v102 + v103))
        {
          sub_100122D50();
          sub_10000A224();
          if (!v78)
          {
            goto LABEL_64;
          }

          v92 = v104;
        }

        v105 = v166;
        if (v100)
        {
          sub_100005300(v166[7]);
        }

        else
        {
          sub_100122D74();
          sub_1000038DC();
          __chkstk_darwin(v106);
          v108 = sub_100004B1C(v107, v146[0]);
          v109(v108);
          v110 = *v18;
          v159 = &type metadata for String;
          v160 = &protocol witness table for String;
          sub_1000031D4(v110);
          sub_10000AB34(&v105[v111]);
          v112 = (v105[6] + 16 * v92);
          *v112 = 0x6E69616D6F446469;
          v112[1] = 0xE800000000000000;
          sub_100122D90(v105[7]);
          v113 = v105[2];
          v88 = __OFADD__(v113, 1);
          v114 = v113 + 1;
          if (v88)
          {
            goto LABEL_61;
          }

          v105[2] = v114;
          sub_100004118(&v161);
        }

        sub_100004118(&v167);
        v115 = &type metadata for String;
        v171 = &type metadata for String;
        v172 = &protocol witness table for String;
        v173 = &protocol witness table for String;
        *&v169 = v156;
        *(&v169 + 1) = v158;
        sub_100122C8C(&v169, &v167);
        sub_100008494(&v167, v168);
        sub_1000038DC();
        __chkstk_darwin(v116);
        v118 = sub_100004B1C(v117, v146[0]);
        v119(v118);
        v120 = *v18;
        v121 = v18[1];
        swift_isUniquelyReferenced_nonNull_native();
        v165 = &protocol witness table for String;
        v166 = v105;
        v163 = &type metadata for String;
        v164 = &protocol witness table for String;
        v161 = v120;
        v162 = v121;

        v122 = sub_100010E28();
        sub_10014EB30(v122, 0xEB00000000656D61);
        v124 = v123;
        sub_10000B818();
        if (__OFADD__(v126, v127))
        {
          goto LABEL_59;
        }

        if (sub_100122DC4(v125, v126 + v127))
        {
          v128 = sub_100010E28();
          sub_10014EB30(v128, 0xEB00000000656D61);
          sub_10000A224();
          if (!v78)
          {
            goto LABEL_64;
          }

          v115 = v129;
        }

        v130 = v166;
        if (v124)
        {
          sub_100005300(v166[7]);
        }

        else
        {
          sub_100122D74();
          v18 = v146;
          sub_1000038DC();
          __chkstk_darwin(v131);
          sub_10000306C();
          v134 = (v133 - v132);
          (*(v135 + 16))(v133 - v132);
          v136 = *v134;
          v159 = &type metadata for String;
          v160 = &protocol witness table for String;
          sub_1000031D4(v136);
          sub_10000AB34(&v130[v137]);
          v138 = (v130[6] + 16 * v115);
          *v138 = 0x4E74657361746164;
          v138[1] = 0xEB00000000656D61;
          sub_100122D90(v130[7]);
          v139 = v130[2];
          v88 = __OFADD__(v139, 1);
          v140 = v139 + 1;
          if (v88)
          {
            goto LABEL_62;
          }

          v130[2] = v140;
          sub_100004118(&v161);
        }

        sub_100004118(&v167);
        v49 = v155;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10013C1FC(0, v49[2] + 1, 1, v49);
          v49 = v143;
        }

        v142 = v49[2];
        v141 = v49[3];
        if (v142 >= v141 >> 1)
        {
          sub_10013C1FC(v141 > 1, v142 + 1, 1, v49);
          v49 = v144;
        }

        v49[2] = v142 + 1;
        v49[v142 + 4] = v130;

        v58 = v153 + 2;
        v57 = v154 - 1;
        if (v154 == 1)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_55:
    sub_100004E24(v157, &qword_1002DD528, &qword_100238250);
    v48 = v151;
    v44 = v148;
  }

  while (1)
  {
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v51 >= v47)
    {

      v171 = sub_100099DF4(&qword_1002DD510, &qword_100238218);
      *&v169 = v49;

      sub_10000EE48();
      sub_1001A8ED8(&v169, v145 & 0xFFFFFFFFFFFFLL | 0x7374000000000000, 0xE800000000000000);
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      sub_1000027F8();
      return;
    }

    v50 = *(v44 + 8 * v51);
    ++v48;
    if (v50)
    {
      goto LABEL_22;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100120BB0()
{
  sub_10000B858();
  if (*(v0 + 16))
  {
    v1 = sub_100013CB4();
    v2(v1);
    sub_100008348();
    sub_1001221C4();
    sub_100007698();
    sub_1000072E4();
    if (!v3)
    {
      __break(1u);
    }
  }

  sub_10000B3E0();
}

void sub_100120C44()
{
  sub_10000B858();
  if (*(v1 + 16))
  {
    v2 = v0;
    v3 = sub_100013CB4();
    v4(v3);
    sub_100008348();
    v2();
    sub_100007698();
    sub_1000072E4();
    if (!v5)
    {
      __break(1u);
    }
  }

  sub_10000B3E0();
}

void sub_100120CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000B858();
  a25 = v27;
  a26 = v31;
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = v30;
    v35 = v29;
    v36 = v28;
    v37 = sub_100013CB4();
    v39 = v38(v37);
    v40 = sub_100099DF4(v36, v35);
    sub_1000030B8(v40);
    v34(&a10, v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v33, v26);
    sub_100007698();
    sub_1000072E4();
    if (!v42)
    {
      __break(1u);
    }
  }

  sub_10000B3E0();
}

void sub_100120DDC()
{
  sub_10000B858();
  if (*(v0 + 16))
  {
    sub_100013CB4();
    sub_10013CA74();
    sub_100008348();
    sub_100122A44(v1, v2, v3, v4);
    sub_100007698();
    sub_1000072E4();
    if (!v5)
    {
      __break(1u);
    }
  }

  sub_10000B3E0();
}

void sub_100120E3C()
{
  sub_1000076BC();
  if ((v4 & 1) == 0 || (sub_100006D74(), v5 == v6))
  {
LABEL_6:
    sub_1000066AC();
    if (v3)
    {
      sub_100099DF4(&qword_1002DBBE0, &qword_100232E80);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000C038();
        sub_10013CAF8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100099DF4(&qword_1002DD530, &qword_100238258);
    sub_10000F03C();
    goto LABEL_11;
  }

  sub_100007310();
  if (!v5)
  {
    sub_100006A00();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100120F1C()
{
  sub_1000076BC();
  if ((v4 & 1) == 0 || (sub_100006D74(), v5 == v6))
  {
LABEL_6:
    sub_1000066AC();
    if (v3)
    {
      sub_100099DF4(&qword_1002DD540, &unk_10023B2E0);
      v7 = swift_allocObject();
      j__malloc_size(v7);
      sub_100007C48();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_10000C038();
        sub_10013CAD8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100099DF4(&qword_1002DB9C8, &qword_100238270);
    sub_10000F03C();
    goto LABEL_11;
  }

  sub_100007310();
  if (!v5)
  {
    sub_100006A00();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_100121018(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100099DF4(&qword_1002DD550, &unk_1002382F0);
  v10 = *(sub_100099DF4(&qword_1002DBC48, &qword_100232F80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100099DF4(&qword_1002DBC48, &qword_100232F80) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10013CB20(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001211E4(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002DD558, &unk_10023B330);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10013CF04((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002DBC68, &qword_100238300);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1001212FC(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002DD568, &qword_100238318);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10013CF04((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002DBC78, &unk_100238320);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100121414(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002DD570, &unk_10023B340);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10013CB34((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002DBC80, &unk_100238330);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_10012152C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100099DF4(&qword_1002DD578, &qword_100238340);
  v10 = *(sub_100099DF4(&qword_1002DBC50, &unk_10023B350) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100099DF4(&qword_1002DBC50, &unk_10023B350) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10013CB5C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001216F8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002DD560, &qword_100238308);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_10013CC38((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002DBC70, &qword_100238310);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100121808()
{
  sub_1000076BC();
  if ((v3 & 1) == 0 || (sub_100006D74(), v4 == v5))
  {
LABEL_6:
    sub_1000066AC();
    if (v2)
    {
      v6 = sub_100099DF4(&qword_1002DBF10, &qword_1002334F8);
      v7 = sub_100122D34(v6);
      v8 = j__malloc_size(v7);
      sub_100003C6C(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000C038();
        sub_10013CF00(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
    sub_10000F03C();
    goto LABEL_11;
  }

  sub_100007310();
  if (!v4)
  {
    sub_100006A00();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001218C4()
{
  sub_1000076BC();
  if ((v4 & 1) == 0 || (sub_100006D74(), v5 == v6))
  {
LABEL_6:
    sub_1000066AC();
    if (v3)
    {
      v7 = sub_100099DF4(&qword_1002DD548, &qword_100238278);
      v8 = sub_100122D34(v7);
      v9 = j__malloc_size(v8);
      sub_100003C6C(v9);
      if (v1)
      {
LABEL_8:
        v10 = sub_10000C038();
        sub_1000192B0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v8 + 4, (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  sub_100007310();
  if (!v5)
  {
    sub_100006A00();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001219A8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_100006D74();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_100099DF4(a5, a6);
      v15 = swift_allocObject();
      j__malloc_size(v15);
      sub_100007C48();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_100007310();
  if (!v11)
  {
    sub_100006A00();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100121A90()
{
  sub_1000076BC();
  if (v3)
  {
    sub_100006D74();
    if (v5 != v6)
    {
      sub_100007310();
      if (v5)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100099DF4(&qword_1002DCC58, &unk_100238240);
  v9 = *(type metadata accessor for TSDataSyncTriggerEvent(0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = j__malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  v12[2] = v7;
  v12[3] = 2 * ((v13 - v11) / v10);
LABEL_18:
  v15 = *(type metadata accessor for TSDataSyncTriggerEvent(0) - 8);
  if (v1)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10013CC58(v0 + v16, v7, v12 + v16);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100121C2C()
{
  sub_1000076BC();
  if ((v3 & 1) == 0 || (sub_100006D74(), v4 == v5))
  {
LABEL_6:
    sub_1000066AC();
    if (v2)
    {
      v6 = sub_100099DF4(&qword_1002DD580, &qword_100238348);
      v7 = sub_100122D34(v6);
      v8 = j__malloc_size(v7);
      sub_100003C6C(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000C038();
        sub_10013CF00(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100099DF4(&qword_1002DD588, &unk_100238350);
    sub_10000F03C();
    goto LABEL_11;
  }

  sub_100007310();
  if (!v4)
  {
    sub_100006A00();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_100121D08()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

uint64_t sub_100121D60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

char *sub_100121DD0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100121DFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100099DF4(&qword_1002DD520, &unk_100238230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_100121EFC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v32 - v10;
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  if (!a2)
  {
    v16 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v16;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v15 = 0;
    v16 = 0;
    v17 = (63 - v12) >> 6;
    v35 = a4;
    v36 = a3;
    while (1)
    {
      if (v15 >= a3)
      {
        goto LABEL_25;
      }

      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      if (!v14)
      {
        while (1)
        {
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v19 >= v17)
          {
            v14 = 0;
            a1 = v34;
            goto LABEL_20;
          }

          v14 = *(v11 + 8 * v19);
          ++v16;
          if (v14)
          {
            v41 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v41 = a2;
      v19 = v16;
LABEL_16:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v19 << 6);
      v22 = *(a4 + 48);
      v23 = *(a4 + 56);
      v24 = (v22 + 16 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = type metadata accessor for Date();
      v28 = *(v27 - 8);
      v29 = v23 + *(v28 + 72) * v21;
      v30 = v39;
      (*(v28 + 16))(&v39[*(v40 + 48)], v29, v27);
      *v30 = v25;
      v30[1] = v26;
      sub_100012D44();
      v31 = v41;
      sub_100012D44();
      a3 = v36;
      if (v18 == v36)
      {
        break;
      }

      a2 = v31 + *(v37 + 72);

      v15 = v18;
      v16 = v19;
      a4 = v35;
    }

    v16 = v19;
    a1 = v34;
    a4 = v35;
LABEL_20:
    v12 = v33;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void sub_1001221C4()
{
  sub_100004168();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_1000027F8();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(v3 + 48) + 16 * v16);
      v18 = v17[1];
      LOBYTE(v16) = *(*(v3 + 56) + v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      *(v11 + 8) = v18;
      *(v11 + 16) = v16;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 24;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void *sub_100122314(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100122474(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v32 = &v26 - v10;
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  if (!a2)
  {
    v16 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v16;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = -1 << *(a4 + 32);
    v28 = a1;
    v15 = 0;
    v16 = 0;
    v17 = (63 - v12) >> 6;
    v29 = a4;
    v30 = a3;
    while (1)
    {
      if (v15 >= a3)
      {
        goto LABEL_25;
      }

      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      if (!v14)
      {
        while (1)
        {
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v19 >= v17)
          {
            v14 = 0;
            a1 = v28;
            goto LABEL_20;
          }

          v14 = *(v11 + 8 * v19);
          ++v16;
          if (v14)
          {
            v35 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v35 = a2;
      v19 = v16;
LABEL_16:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = (*(a4 + 48) + 16 * (v20 | (v19 << 6)));
      v22 = *v21;
      v23 = v21[1];
      type metadata accessor for TSDataSyncTriggerEvent(0);
      v24 = v33;
      sub_100122CC4();
      *v24 = v22;
      v24[1] = v23;
      sub_100012D44();
      v25 = v35;
      sub_100012D44();
      a3 = v30;
      if (v18 == v30)
      {
        break;
      }

      a2 = v25 + *(v31 + 72);

      v15 = v18;
      v16 = v19;
      a4 = v29;
    }

    v16 = v19;
    a1 = v28;
    a4 = v29;
LABEL_20:
    v12 = v27;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void *sub_100122738(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001228C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10012295C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100122A44(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *sub_100122C8C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100122CC4()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

uint64_t sub_100122D34(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100122D50()
{

  return sub_10014EB30(0x6E69616D6F446469, 0xE800000000000000);
}

uint64_t sub_100122D74()
{
  v2 = *(v0 - 224);

  return sub_100008494(v0 - 248, v2);
}

_OWORD *sub_100122D90@<X0>(uint64_t a1@<X8>)
{

  return sub_100122C8C((v2 - 296), (a1 + 48 * v1));
}

BOOL sub_100122DC4(uint64_t a1, Swift::Int a2)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v2, a2);
}

uint64_t type metadata accessor for TSDataSyncNetworkingCore.Errors(uint64_t a1)
{
  result = qword_1002DD600;
  if (!qword_1002DD600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100122E38(uint64_t a1)
{
  sub_100122EC0(319);
  if (v1 <= 0x3F)
  {
    sub_100122F2C();
    if (v2 <= 0x3F)
    {
      sub_100122F90();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100122EC0(uint64_t a1)
{
  if (!qword_1002DD610)
  {
    type metadata accessor for AccountIdentity.DSID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002DD610);
    }
  }
}

void sub_100122F2C()
{
  if (!qword_1002DD618)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002DD618);
    }
  }
}

void *sub_100122F90()
{
  result = qword_1002DD620;
  if (!qword_1002DD620)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1002DD620);
  }

  return result;
}

uint64_t sub_100122FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountIdentity.DSID();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TSDataSyncNetworkingCore.Errors(0);
  __chkstk_darwin(v7);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v43 - v11);
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v19 = sub_100099DF4(&qword_1002DD678, &qword_100238508);
  __chkstk_darwin(v19 - 8);
  v21 = &v43 - v20;
  v23 = (&v43 + *(v22 + 56) - v20);
  sub_1001235D0(a1, &v43 - v20);
  sub_1001235D0(a2, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1001235D0(v21, v15);
      v29 = *v15;
      v28 = v15[1];
      v30 = v15[2];
      if (sub_100004B3C() != 1)
      {

        goto LABEL_17;
      }

      v31 = *v23;
      v32 = v23[1];
      v33 = v23[2];
      if (v29 == v31 && v28 == v32)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v27 = v30 == v33;
      goto LABEL_24;
    case 2u:
      sub_1001235D0(v21, v12);
      if (sub_100004B3C() != 2)
      {
        goto LABEL_17;
      }

      v26 = *v12;
      goto LABEL_8;
    case 3u:
      sub_1001235D0(v21, v9);
      if (sub_100004B3C() != 3)
      {
        goto LABEL_17;
      }

      v26 = *v9;
LABEL_8:
      v27 = v26 == *v23;
      goto LABEL_24;
    default:
      sub_1001235D0(v21, v18);
      v24 = *(sub_100099DF4(&qword_1002DD680, &qword_100238510) + 48);
      v25 = *&v18[v24];
      if (sub_100004B3C())
      {
        (*(v43 + 8))(v18, v44);
LABEL_17:
        sub_100123634(v21);
        return 0;
      }

      v37 = *(v23 + v24);
      v39 = v43;
      v38 = v44;
      (*(v43 + 32))(v6, v23, v44);
      v40 = static AccountIdentity.DSID.== infix(_:_:)();
      v41 = *(v39 + 8);
      v41(v6, v38);
      v41(v18, v38);
      if ((v40 & 1) == 0)
      {
LABEL_21:
        sub_10012369C(v21);
        return 0;
      }

      v27 = v25 == v37;
LABEL_24:
      v36 = v27;
      sub_10012369C(v21);
      return v36;
  }
}

uint64_t sub_100123370(uint64_t a1)
{
  v2 = sub_10012358C(&qword_1002DD658, byte_10023844C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001233C8(uint64_t a1)
{
  v2 = sub_10012358C(&qword_1002DD658, byte_10023844C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10012343C(uint64_t a1)
{
  v2 = sub_10012358C(&qword_1002DD670, byte_10023848C);

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_100123494(uint64_t a1)
{
  v2 = sub_10012358C(&qword_1002DD670, byte_10023848C);

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10012358C(unint64_t *a1, const char *a2, ...)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for TSDataSyncNetworkingCore.Errors(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001235D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncNetworkingCore.Errors(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100123634(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DD678, &qword_100238508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012369C(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncNetworkingCore.Errors(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012370C(uint64_t a1, char a2)
{
  if (a2)
  {

    return sub_1000102EC(0xD000000000000028, 0x8000000100273D30);
  }

  else
  {
    sub_100012C2C(a1, &v7, &qword_1002DB958, &qword_100232B60);
    if (v8)
    {
      sub_10000601C(&v7, v9);
      *&v7 = 0xD000000000000022;
      *(&v7 + 1) = 0x8000000100273D00;
      v3 = sub_10000C4FC(v9, v9[3]);
      v4 = [*(v3 + *(type metadata accessor for AMPAccount(0) + 20)) ams_isSandboxAccount];
      v5._countAndFlagsBits = sub_10000F454(v3, v4);
      String.append(_:)(v5);

      v6 = sub_1000102EC(v7, *(&v7 + 1));
      sub_100004118(v9);
    }

    else
    {
      sub_10003CD48(&v7, &qword_1002DB958, &qword_100232B60);
      return sub_1000102EC(0xD000000000000026, 0x8000000100273CD0);
    }

    return v6;
  }
}

uint64_t sub_100123858@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (result)
  {
    v3 = 0;
    v4 = 1;
    v5 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = 300.0;
    if (a3 < 1800.0)
    {
      v5 = 60.0;
    }

    v3 = 1;
  }

  *a2 = 1;
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = 1;
  *(a2 + 50) = v3;
  *(a2 + 51) = 0;
  return result;
}

BOOL sub_1001238EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v52[0] = a5;
  v52[1] = a1;
  type metadata accessor for Date();
  sub_100003724();
  v53 = v12;
  v54 = v11;
  __chkstk_darwin(v11);
  sub_100004B54();
  __chkstk_darwin(v13);
  v15 = v52 - v14;
  v16 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v16 - 8);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v52 - v20;
  __chkstk_darwin(v22);
  v24 = v52 - v23;
  __chkstk_darwin(v25);
  v27 = v52 - v26;
  v28 = type metadata accessor for TSDataSyncDeviceState(0);
  if (a2)
  {
    sub_100012C2C(a3 + *(v28 + 64), v27, &qword_1002DA970, &qword_1002318B0);
    if (*(a4 + 64))
    {
      v29 = 120.0;
    }

    else
    {
      v29 = *(a4 + 56);
    }

    if (a6)
    {
      goto LABEL_6;
    }

    sub_100012C2C(v27, v24, &qword_1002DA970, &qword_1002318B0);
    v32 = v54;
    if (sub_100004DFC(v24, 1, v54) == 1)
    {
      sub_10003CD48(v27, &qword_1002DA970, &qword_1002318B0);
      v30 = v24;
      goto LABEL_16;
    }

    (*(v53 + 32))(v15, v24, v32);
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      if ((static Date.< infix(_:_:)() & 1) == 0 || (Date.timeIntervalSince(_:)(), fabs(v40) >= v29))
      {
        if ((static Date.< infix(_:_:)() & 1) == 0)
        {
          v48 = sub_100006D84();
          v49(v48);
LABEL_6:
          v30 = v27;
LABEL_16:
          sub_10003CD48(v30, &qword_1002DA970, &qword_1002318B0);
          return 1;
        }

        v41 = static Date.< infix(_:_:)();
        v42 = sub_100006D84();
        v43(v42);
        v44 = v27;
        goto LABEL_32;
      }
    }

    v35 = sub_100006D84();
    v36(v35);
    v37 = v27;
LABEL_22:
    sub_10003CD48(v37, &qword_1002DA970, &qword_1002318B0);
    return 0;
  }

  sub_100012C2C(a3 + *(v28 + 60), v21, &qword_1002DA970, &qword_1002318B0);
  if (*(a4 + 160))
  {
    v31 = 120.0;
  }

  else
  {
    v31 = *(a4 + 152);
  }

  if (a6)
  {
LABEL_11:
    v30 = v21;
    goto LABEL_16;
  }

  sub_100012C2C(v21, v18, &qword_1002DA970, &qword_1002318B0);
  v33 = v54;
  if (sub_100004DFC(v18, 1, v54) == 1)
  {
    sub_10003CD48(v21, &qword_1002DA970, &qword_1002318B0);
    v30 = v18;
    goto LABEL_16;
  }

  (*(v53 + 32))(v6, v18, v33);
  if ((static Date.== infix(_:_:)() & 1) != 0 || (static Date.< infix(_:_:)() & 1) != 0 && (Date.timeIntervalSince(_:)(), fabs(v45) < v31))
  {
    v38 = sub_100008038();
    v39(v38);
    v37 = v21;
    goto LABEL_22;
  }

  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v50 = sub_100008038();
    v51(v50);
    goto LABEL_11;
  }

  v41 = static Date.< infix(_:_:)();
  v46 = sub_100008038();
  v47(v46);
  v44 = v21;
LABEL_32:
  sub_10003CD48(v44, &qword_1002DA970, &qword_1002318B0);
  return (v41 & 1) == 0;
}

uint64_t sub_100123DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Date();
  sub_100003724();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100004B54();
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v19 = *(a3 + *(type metadata accessor for TSDataSyncDeviceState(0) + 68));
  if (v19)
  {
    if (*(v19 + 16))
    {
      v20 = sub_10000DA08();
      if (v21)
      {
        (*(v11 + 16))(v15, *(v19 + 56) + *(v11 + 72) * v20, v9);
        v22 = *(v11 + 32);
        v22(v18, v15, v9);
        sub_100012C2C(a2, v8, &qword_1002DA970, &qword_1002318B0);
        if (sub_100004DFC(v8, 1, v9) == 1)
        {
          (*(v11 + 8))(v18, v9);
          sub_10003CD48(v8, &qword_1002DA970, &qword_1002318B0);
        }

        else
        {
          v22(v3, v8, v9);
          v23 = static Date.> infix(_:_:)();
          v24 = *(v11 + 8);
          v24(v3, v9);
          v24(v18, v9);
          if (v23)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

void *sub_10012403C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1001070D0(0, v3, 0);
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];

      if (v8 >= v9 >> 1)
      {
        sub_1001070D0(v9 > 1, v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v8];
      v10[4] = v7;
      v10[5] = v6;
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  v11 = sub_1000B2D90(_swiftEmptyArrayStorage);

  v12 = sub_1001244E4(v11, a2);

  return v12;
}

uint64_t sub_100124144(void *a1, uint64_t a2, uint64_t a3)
{
  *&v7 = a2;
  *(&v7 + 1) = a3;

  v4 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1001ABEF4(0xD000000000000010, 0x8000000100273D60, v6, &v9);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_100009DF4(&v9);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    *&result = v7;
    return result;
  }

LABEL_10:
  *&result = 0.0;
  return result;
}

void *sub_10012429C(void *a1)
{
  v15 = &_swiftEmptySetSingleton;
  v2 = [a1 allKeys];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_100009F20(v5, v14);
      if (swift_dynamicCast())
      {
        v6 = v12;

        v7 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v7)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v12 = 0u;
          v13 = 0u;
        }

        v14[0] = v12;
        v14[1] = v13;
        if (*(&v13 + 1))
        {
          sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
          if (swift_dynamicCast())
          {
            if (*(v11 + 16) && (v8 = sub_10014EB30(0xD000000000000010, 0x8000000100273D60), (v9 & 1) != 0))
            {
              sub_100009F20(*(v11 + 56) + 32 * v8, v14);

              if (swift_dynamicCast())
              {
                sub_1000EAA70(v14, v6, *(&v6 + 1));
              }
            }

            else
            {
            }
          }
        }

        else
        {

          sub_100009DF4(v14);
        }
      }

      v5 += 32;
      --v4;
    }

    while (v4);

    return v15;
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }
}

void *sub_1001244E4(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100124538(a1);
    return a2;
  }

  else
  {

    return sub_100124664(a1, a2);
  }
}

uint64_t sub_100124538(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100124B3C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_100124664(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (v5[6] + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              __chkstk_darwin(v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = v5[2];
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v34 = Hasher._finalize()();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (v5[6] + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_100124ED8(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_100124E50(v41, v44, v5 + 7, v44, v5, v7, v52);

            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_1000122EC(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_100124B3C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000EC30C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1001250F4(v8);
  *v2 = v15;
  return v13;
}

unint64_t *sub_100124C64(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100124ED8(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_100124E50(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100124C64(a1, a2, a5, a6, a7);

  return v12;
}

Swift::Int sub_100124ED8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100099DF4(&qword_1002DC268, &qword_100234878);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1001250F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1001252AC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for MetricsEvent();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  sub_10000C4FC(a2, a2[3]);
  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  Dictionary.init(dictionaryLiteral:)();
  sub_100004B70();
  static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

  dispatch thunk of MetricsQueue.enqueue(event:)();
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_10012540C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v25[1] = a3;
  v25[2] = a5;
  type metadata accessor for MetricsEvent();
  sub_100003724();
  v26 = v8;
  v27 = v7;
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  sub_10000307C();
  __chkstk_darwin(v14);
  v16 = v25 - v15;
  sub_100012C94(a1, v25 - v15, &qword_1002DB948, &unk_100232B50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a4[3];
    v25[0] = a4[4];
    sub_10000C4FC(a4, v17);
    sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
    inited = swift_initStackObject();
    v19 = sub_100006D94(inited, xmmword_1002329F0);
    v20 = sub_100007C5C(v19, &type metadata for UInt);
    inited[7].n128_u64[1] = &type metadata for Bool;
    inited[6].n128_u8[0] = v20 & 1;
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    Dictionary.init(dictionaryLiteral:)();
    sub_100004B70();
    static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

    dispatch thunk of MetricsQueue.enqueue(event:)();
  }

  else
  {
    sub_100004E24(v16, &qword_1002DB948, &unk_100232B50);
    sub_10000C4FC(a4, a4[3]);
    sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
    v21 = swift_initStackObject();
    v22 = sub_100006D94(v21, xmmword_1002329F0);
    v23 = sub_100007C5C(v22, &type metadata for UInt);
    v21[7].n128_u64[1] = &type metadata for Bool;
    v21[6].n128_u8[0] = v23 & 1;
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    Dictionary.init(dictionaryLiteral:)();
    sub_100004B70();
    static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

    dispatch thunk of MetricsQueue.enqueue(event:)();
    v13 = v10;
  }

  return (*(v26 + 8))(v13, v27);
}

uint64_t sub_100125790(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100012C94(v1, &v11 - v8, &qword_1002DA970, &qword_1002318B0);
  if (sub_100004DFC(v9, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v13, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v13;
  }

  return result;
}

uint64_t sub_100125960(uint64_t a1, char a2)
{
  sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002329F0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000100273DA0;
  *(inited + 48) = sub_100125AB0(a1);
  *(inited + 72) = &type metadata for UInt;
  strcpy((inited + 80), "requestReason");
  *(inited + 94) = -4864;
  v4 = String.init<A>(describing:)();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  Dictionary.init(dictionaryLiteral:)();
  sub_100004B70();
  static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();
}

BOOL sub_100125AB0(uint64_t a1)
{
  v2 = type metadata accessor for AccountDataServerRequest.Put(0);
  sub_10000307C();
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = v5 - v4;
  type metadata accessor for AccountDataServerRequest(0);
  sub_10000307C();
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  sub_1000CA2F8(a1, v9 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001263B0(v10, type metadata accessor for AccountDataServerRequest);
    return 0;
  }

  else
  {
    sub_10012634C(v10, v6);
    v12 = (v6 + *(v2 + 24));
    v13 = *v12;
    v14 = v12[1];
    sub_1001263B0(v6, type metadata accessor for AccountDataServerRequest.Put);
    v15 = 1;
    if (v13 != 2)
    {
      v15 = 2;
    }

    if (v14 == 2)
    {
      return v13 != 2;
    }

    else
    {
      return v15;
    }
  }
}

uint64_t sub_100125BF0(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_100013900(__dst) == 1)
  {
    v4 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    memcpy(__srca, __dst, sizeof(__srca));
    memcpy(v11, __src, sizeof(v11));
    sub_10012627C(v11, v12);
    sub_1001262D8();
    v4 = DictionaryExpressible.asDictionary()();
    memcpy(v12, __srca, sizeof(v12));
    sub_1000CA2A4(v12);
  }

  memcpy(v12, a2, sizeof(v12));
  if (sub_100013900(v12) == 1)
  {
    v5 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    memcpy(v9, v12, sizeof(v9));
    memcpy(__srca, a2, sizeof(__srca));
    sub_10012627C(__srca, v11);
    sub_1001262D8();
    v5 = DictionaryExpressible.asDictionary()();
    memcpy(v11, v9, sizeof(v11));
    sub_1000CA2A4(v11);
  }

  sub_100099DF4(&qword_1002DD538, &unk_100238260);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10022E400;
  *(v6 + 32) = 0xD000000000000013;
  *(v6 + 40) = 0x8000000100273E00;
  v7 = sub_100125F10(v4, v5);

  swift_setDeallocating();
  sub_10011C2B8();
  return v7;
}