uint64_t sub_10022A1FC()
{
  v1 = v0;
  v2 = sub_1004A5244();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A5274();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 16);
  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer;
  v9 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  aBlock[4] = sub_10022AA88;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A97B0;
  v11 = _Block_copy(aBlock);
  swift_retain_n();
  v12 = v8;
  sub_1004A5254();
  v19 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10022AB20();
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v11);

  (*(v17 + 8))(v4, v2);
  (*(v5 + 8))(v7, v16);

  v13 = OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_logger;
  v14 = sub_1004A4A74();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  return v1;
}

uint64_t sub_10022A504()
{
  sub_10022A1FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataTransferReportAccumulator(uint64_t a1)
{
  result = qword_1005D5608;
  if (!qword_1005D5608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022A5B0(uint64_t a1)
{
  result = sub_1004A4A74();
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

uint64_t sub_10022A67C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022A698(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void sub_10022A6C8(double *a1)
{
  v2 = v1;
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v11 = sub_1004A4A54();
  v12 = sub_1004A6004();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 68159746;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    *(v13 + 10) = *(v2 + 24);

    *(v13 + 11) = 2082;
    v15 = ConnectionID.debugDescription.getter(*a1);
    v17 = sub_10015BA6C(v15, v16, &v29);

    *(v13 + 13) = v17;
    *(v13 + 21) = 1040;
    *(v13 + 23) = 3;
    *(v13 + 27) = 2048;
    v18 = a1[2];
    *(v13 + 29) = v18;
    *(v13 + 37) = 2048;
    v20 = *(a1 + 3);
    v19 = *(a1 + 4);
    *(v13 + 39) = v20;
    *(v13 + 47) = 2048;
    *(v13 + 49) = v19;
    *(v13 + 57) = 2048;
    if (v18 <= 0.0)
    {
      v24 = 0;
    }

    else
    {
      if ((v20 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = (8 * v20) / v18;
      v22 = round(v21);
      v23 = v22 >= 9.22337204e18 || v22 <= -9.22337204e18;
      v24 = llround(v21);
      if (v23)
      {
        v24 = 0;
      }
    }

    *(v13 + 59) = v24;
    *(v13 + 67) = 2048;
    *(v13 + 69) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx] Connection %{public}s sent data transfer report for the past %.*g seconds: received %{iec-bytes}ld, sent %{iec-bytes}ld, received throughput %{iec-bitrate}ld, sent throughput %{iec-bitrate}ld.", v13, 0x4Du);
    sub_1000197E0(v14);
  }

  else
  {

    v20 = *(a1 + 3);
    v19 = *(a1 + 4);
  }

  v25 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state + 16))
  {
    goto LABEL_17;
  }

  v26 = __OFADD__(*v25, v20);
  v20 += *v25;
  if (v26)
  {
    goto LABEL_20;
  }

  v27 = *(v25 + 8);
  v26 = __OFADD__(v27, v19);
  v19 += v27;
  if (v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  *v25 = v20;
  *(v25 + 8) = v19;
  *(v25 + 16) = 0;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer))
  {

    RestartableTimer.start()();

    return;
  }

LABEL_23:
  __break(1u);
}

BOOL sub_10022AA10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    return (*(a2 + 16) & 1) != 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
}

uint64_t sub_10022AA50()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10022AA88()
{
  if (*(v0 + 16))
  {
    RestartableTimer.stop()();
  }
}

uint64_t sub_10022AAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10022AAC8()
{
  result = qword_1005D4F50;
  if (!qword_1005D4F50)
  {
    v3 = sub_1004A5244();
    result = swift_getWitnessTable(&protocol conformance descriptor for DispatchWorkItemFlags, v3, v0, v1);
    atomic_store(result, &qword_1005D4F50);
  }

  return result;
}

unint64_t sub_10022AB20()
{
  result = qword_1005D4F60;
  if (!qword_1005D4F60)
  {
    v3 = sub_10000DEFC(&unk_1005D91A0, &unk_1004DDA60);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D4F60);
  }

  return result;
}

void *sub_10022AB84(uint64_t a1, char a2)
{
  v69 = *(a1 + 16);
  if (!v69)
  {
LABEL_98:
    if (a2)
    {
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v59 = sub_1004A6F14();
      v60 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
      v61 = v59 & ~v60;
      if ((*(&_swiftEmptySetSingleton[7] + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
      {
        v62 = ~v60;
        while (1)
        {
          v63 = *(_swiftEmptySetSingleton[6] + v61);
          if (v63 <= 2 && v63 != 1 && v63 != 2)
          {
            break;
          }

          v64 = sub_1004A6D34();

          if (v64)
          {
            return _swiftEmptySetSingleton;
          }

          v61 = (v61 + 1) & v62;
          if (((*(&_swiftEmptySetSingleton[7] + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
          {
            goto LABEL_106;
          }
        }
      }

      else
      {
LABEL_106:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1002380E0(0, v61, isUniquelyReferenced_nonNull_native);
      }
    }

    return _swiftEmptySetSingleton;
  }

  v2 = 0;
  v68 = a1 + 32;
  while (1)
  {
    v6 = *(v68 + v2);
    if (v6 == 2)
    {
      break;
    }

    if (v6 == 3)
    {
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v13 = sub_1004A6F14();
      v14 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
      v15 = v13 & ~v14;
      if (((*(&_swiftEmptySetSingleton[7] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
LABEL_24:
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v20 = _swiftEmptySetSingleton[2];
        if (_swiftEmptySetSingleton[3] > v20)
        {
          if ((v19 & 1) == 0)
          {
            sub_10023842C();
          }
        }

        else
        {
          if (v19)
          {
            sub_100237DFC(v20 + 1);
          }

          else
          {
            sub_10023856C(v20 + 1);
          }

          sub_1004A6E94();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v37 = sub_1004A6F14();
          v38 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
          v15 = v37 & ~v38;
          if ((*(&_swiftEmptySetSingleton[7] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
          {
            v39 = ~v38;
            do
            {
              v40 = *(_swiftEmptySetSingleton[6] + v15);
              if (v40 >= 4)
              {
                goto LABEL_112;
              }

              v41 = sub_1004A6D34();

              if (v41)
              {
                goto LABEL_113;
              }

              v15 = (v15 + 1) & v39;
            }

            while (((*(&_swiftEmptySetSingleton[7] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
          }
        }

        *(&_swiftEmptySetSingleton[7] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) |= 1 << v15;
        *(_swiftEmptySetSingleton[6] + v15) = 4;
        v3 = _swiftEmptySetSingleton[2];
        v4 = __OFADD__(v3, 1);
        v5 = v3 + 1;
        if (v4)
        {
          goto LABEL_109;
        }

        goto LABEL_6;
      }

      v16 = ~v14;
      while (1)
      {
        v17 = *(_swiftEmptySetSingleton[6] + v15);
        if (v17 >= 4)
        {
          break;
        }

        v18 = sub_1004A6D34();

        if (v18)
        {
          goto LABEL_7;
        }

        v15 = (v15 + 1) & v16;
        if (((*(&_swiftEmptySetSingleton[7] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_97:

      goto LABEL_7;
    }

    if (v6 == 4)
    {
      goto LABEL_7;
    }

    v7 = &_swiftEmptySetSingleton[7];
    if (v6)
    {
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v8 = sub_1004A6F14();
      v9 = ~(-1 << LOBYTE(_swiftEmptySetSingleton[4]));
      for (i = v8 & v9; ((*(v7 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v9)
      {
        v11 = *(_swiftEmptySetSingleton[6] + i);
        if (v11 > 1 && v11 != 3 && v11 != 4)
        {
          goto LABEL_97;
        }

        v12 = sub_1004A6D34();

        if (v12)
        {
          goto LABEL_7;
        }
      }

      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = _swiftEmptySetSingleton[2];
      if (_swiftEmptySetSingleton[3] <= v34)
      {
        if (v33)
        {
          sub_100237DFC(v34 + 1);
        }

        else
        {
          sub_10023856C(v34 + 1);
        }

        sub_1004A6E94();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v48 = sub_1004A6F14();
        v49 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
        i = v48 & ~v49;
        if ((*(&_swiftEmptySetSingleton[7] + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i))
        {
          v50 = ~v49;
          do
          {
            v51 = *(_swiftEmptySetSingleton[6] + i);
            if (v51 > 1 && v51 != 3 && v51 != 4)
            {
              goto LABEL_112;
            }

            v52 = sub_1004A6D34();

            if (v52)
            {
              goto LABEL_113;
            }

            i = (i + 1) & v50;
          }

          while (((*(&_swiftEmptySetSingleton[7] + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0);
        }
      }

      else if ((v33 & 1) == 0)
      {
        sub_10023842C();
      }

      *(&_swiftEmptySetSingleton[7] + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) |= 1 << i;
      *(_swiftEmptySetSingleton[6] + i) = 2;
      v53 = _swiftEmptySetSingleton[2];
      v4 = __OFADD__(v53, 1);
      v5 = v53 + 1;
      if (v4)
      {
        goto LABEL_111;
      }
    }

    else
    {
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v29 = sub_1004A6F14();
      v30 = ~(-1 << LOBYTE(_swiftEmptySetSingleton[4]));
      for (j = v29 & v30; ((*(v7 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) != 0; j = (j + 1) & v30)
      {
        if (*(_swiftEmptySetSingleton[6] + j) <= 2u && *(_swiftEmptySetSingleton[6] + j) && *(_swiftEmptySetSingleton[6] + j) != 2)
        {
          goto LABEL_97;
        }

        v32 = sub_1004A6D34();

        if (v32)
        {
          goto LABEL_7;
        }
      }

      v35 = swift_isUniquelyReferenced_nonNull_native();
      v36 = _swiftEmptySetSingleton[2];
      if (_swiftEmptySetSingleton[3] <= v36)
      {
        if (v35)
        {
          sub_100237DFC(v36 + 1);
        }

        else
        {
          sub_10023856C(v36 + 1);
        }

        sub_1004A6E94();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v54 = sub_1004A6F14();
        v55 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
        j = v54 & ~v55;
        if ((*(&_swiftEmptySetSingleton[7] + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j))
        {
          v56 = ~v55;
          while (*(_swiftEmptySetSingleton[6] + j) > 2u || !*(_swiftEmptySetSingleton[6] + j) || *(_swiftEmptySetSingleton[6] + j) == 2)
          {
            v57 = sub_1004A6D34();

            if (v57)
            {
              goto LABEL_113;
            }

            j = (j + 1) & v56;
            if (((*(&_swiftEmptySetSingleton[7] + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) == 0)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_112;
        }
      }

      else if ((v35 & 1) == 0)
      {
        sub_10023842C();
      }

LABEL_94:
      *(&_swiftEmptySetSingleton[7] + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) |= 1 << j;
      *(_swiftEmptySetSingleton[6] + j) = 1;
      v58 = _swiftEmptySetSingleton[2];
      v4 = __OFADD__(v58, 1);
      v5 = v58 + 1;
      if (v4)
      {
        goto LABEL_110;
      }
    }

LABEL_6:
    _swiftEmptySetSingleton[2] = v5;
LABEL_7:
    if (++v2 == v69)
    {
      goto LABEL_98;
    }
  }

  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v21 = sub_1004A6F14();
  v22 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
  v23 = v21 & ~v22;
  if ((*(&_swiftEmptySetSingleton[7] + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v24 = ~v22;
    do
    {
      v25 = *(_swiftEmptySetSingleton[6] + v23);
      if (v25 > 2 && v25 != 4)
      {
        goto LABEL_97;
      }

      v26 = sub_1004A6D34();

      if (v26)
      {
        goto LABEL_7;
      }

      v23 = (v23 + 1) & v24;
    }

    while (((*(&_swiftEmptySetSingleton[7] + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
  }

  v27 = swift_isUniquelyReferenced_nonNull_native();
  v28 = _swiftEmptySetSingleton[2];
  if (_swiftEmptySetSingleton[3] > v28)
  {
    if ((v27 & 1) == 0)
    {
      sub_10023842C();
    }

LABEL_65:
    *(&_swiftEmptySetSingleton[7] + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) |= 1 << v23;
    *(_swiftEmptySetSingleton[6] + v23) = 3;
    v47 = _swiftEmptySetSingleton[2];
    v4 = __OFADD__(v47, 1);
    v5 = v47 + 1;
    if (v4)
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    goto LABEL_6;
  }

  if (v27)
  {
    sub_100237DFC(v28 + 1);
  }

  else
  {
    sub_10023856C(v28 + 1);
  }

  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v42 = sub_1004A6F14();
  v43 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
  v23 = v42 & ~v43;
  if (((*(&_swiftEmptySetSingleton[7] + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
    goto LABEL_65;
  }

  v44 = ~v43;
  while (1)
  {
    v45 = *(_swiftEmptySetSingleton[6] + v23);
    if (v45 > 2 && v45 != 4)
    {
      break;
    }

    v46 = sub_1004A6D34();

    if (v46)
    {
      goto LABEL_113;
    }

    v23 = (v23 + 1) & v44;
    if (((*(&_swiftEmptySetSingleton[7] + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

LABEL_112:

LABEL_113:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

uint64_t Engine.__allocating_init(configuration:windowOfInterestSizes:environment:workloop:sendAction:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, const char *a6, int a7, uint64_t (*a8)(uint64_t a1), __int128 a9, uint64_t a10)
{
  v24 = a7;
  v23 = a6;
  v22 = a9;
  v16 = type metadata accessor for Configuration(0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for EngineTracingIDOwner();
  swift_allocObject();
  v19 = EngineTracingIDOwner.init()();
  sub_10016AF30(a1, v18, type metadata accessor for Configuration);
  v20 = swift_allocObject();
  sub_10022B944(v19, v18, a2, a3, a4 & 1, a5 & 0x101FF, v23, v24, a8, v22, *(&v22 + 1), a10);
  sub_1002344E0(a1, type metadata accessor for Configuration);
  return v20;
}

uint64_t (**sub_10022B944(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, const char *a7, int a8, uint64_t (*a9)(uint64_t a1), uint64_t (*a10)(uint64_t a1), uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v13 = v12;
  LODWORD(v178) = a8;
  v177 = a7;
  LODWORD(v175) = a6;
  v157 = a5;
  v159 = a4;
  v158 = a3;
  v160 = a11;
  v167 = a10;
  v174 = a9;
  v170 = sub_1004A5234();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v172 = (&v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v171 = (&v152 - v18);
  v173 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v173);
  v168 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1004A6074();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1004A6234();
  __chkstk_darwin(v162);
  v163 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004A5274();
  __chkstk_darwin(v22 - 8);
  v161 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StateWithTasks(0);
  v179 = *(v24 - 8);
  v180 = v24;
  __chkstk_darwin(v24);
  v181 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v26);
  v153 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v152 - v29;
  __chkstk_darwin(v31);
  v33 = &v152 - v32;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator) = 0;
  v34 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart;
  type metadata accessor for AtomicFlag.Storage(0);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v12 + v34) = v35;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates) = _swiftEmptyArrayStorage;
  v36 = v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState;
  v37 = type metadata accessor for Activity(0);
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  *&v36[*(type metadata accessor for ExternalState(0) + 20)] = _swiftEmptySetSingleton;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer) = 0;
  v38 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v12 + v38) = v39;
  v40 = v33;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture) = _swiftEmptyArrayStorage;
  v41 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt;
  *(v13 + v41) = static MonotonicTime.now()();
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection) = 0;
  v42 = (v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry);
  *v42 = 0u;
  v42[1] = 0u;
  v43 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  *(v13 + v43) = sub_100223158(_swiftEmptyArrayStorage);
  v44 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  *(v13 + v44) = sub_100223284(_swiftEmptyArrayStorage);
  v182 = a1;
  LOBYTE(v44) = *(a1 + 16);
  sub_1004A4A64();
  v33[*(v26 + 20)] = v44;
  sub_10016AF30(v33, v30, type metadata accessor for Engine.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v45 = sub_1004A4A54();
  v46 = sub_1004A6034();
  v47 = os_log_type_enabled(v45, v46);
  v176 = v40;
  v152 = v26;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v26;
    v51 = v49;
    v189 = v49;
    *v48 = 68158210;
    *(v48 + 4) = 2;
    *(v48 + 8) = 256;
    v52 = v30[*(v50 + 20)];
    sub_1002344E0(v30, type metadata accessor for Engine.Logger);
    *(v48 + 10) = v52;
    *(v48 + 11) = 2082;
    LOWORD(aBlock) = v175 & 0x1FF;
    BYTE2(aBlock) = BYTE2(v175) & 1;
    *(&aBlock + 1) = v177;
    LOBYTE(v184) = v178;
    v185 = v174;
    v53 = sub_1004A5824();
    v55 = sub_10015BA6C(v53, v54, &v189);
    v40 = v176;

    *(v48 + 13) = v55;
    _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx] Created with environment %{public}s", v48, 0x15u);
    sub_1000197E0(v51);
  }

  else
  {
    sub_1002344E0(v30, type metadata accessor for Engine.Logger);
  }

  sub_10016AF30(v40, v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, type metadata accessor for Engine.Logger);
  v56 = *a2;
  v57 = a2[1];
  v58 = (v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName);
  *v58 = *a2;
  v58[1] = v57;
  v59 = v56;
  v155 = v56;
  v156 = v57;
  v60 = v182;
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner) = v182;
  v61 = type metadata accessor for Configuration(0);
  v154 = a2 + v61[5];
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind) = *(v154 + *(v173 + 9));
  v62 = v61[7];
  v63 = *(a2 + v61[6]);
  v173 = a2;
  v64 = *(a2 + v62);
  v65 = *(v60 + 16);
  swift_bridgeObjectRetain_n();

  v151 = v59;
  v66 = v181;
  StateWithTasks.init(windowOfInterestSizes:environment:mailboxFilter:fetchedMessageMetadata:tracingID:logName:)(v158, v159, v157 & 1, v175 & 0x101FF, v177, v178, v174, v63, v181, v64, v65, v151, v57);
  (*(v179 + 16))(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state, v66, v180);
  v13[4] = v160;
  v13[5] = a12;
  v67 = sub_10023678C();
  v177 = "";
  v178 = v67;
  v175 = a12;

  sub_1004A5264();
  *&aBlock = _swiftEmptyArrayStorage;
  v159 = sub_1002367D8(&qword_1005D5910, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  v158 = sub_10000C9C0(&qword_1005D5918, &unk_1004E9128);
  v160 = sub_10000DF44(&qword_1005D5920, &qword_1005D5918, &unk_1004E9128, &protocol conformance descriptor for [A]);
  sub_1004A6544();
  v157 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v165 = *(v165 + 104);
  v68 = v164;
  v69 = v166;
  (v165)(v164);
  v174 = v167;
  v13[2] = sub_1004A6244();
  v177 = "com.apple.email.imap.engine";
  sub_1004A5264();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1004A6544();
  v70 = v182;
  (v165)(v68, v157, v69);
  v71 = v13;
  v13[3] = sub_1004A6244();
  StateWithTasks.runningSyncRequests.getter();
  RunningSyncRequests.kinds.getter(v72, &aBlock);

  v73 = sub_10022AB84(aBlock, *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind));

  v74 = v168;
  sub_10016AF30(v154, v168, type metadata accessor for ConnectionConfiguration);
  v75 = v71[2];
  type metadata accessor for ConnectionPool(0);
  v76 = swift_allocObject();
  v77 = v75;

  v78 = sub_1002355A0(v155, v156, v73, v74, v77, v71, v76);
  *(v71 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections) = v78;

  v79 = v70;
  LOBYTE(v73) = *(v70 + 16);
  v80 = v71[2];
  type metadata accessor for BetterPathEvaluator();
  v81 = swift_allocObject();
  *(v81 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v81 + 48) = xmmword_1004DB2C0;
  *(v81 + 64) = 0;
  *(v81 + 80) = 0;
  *(v81 + 88) = 0;
  *(v81 + 72) = 0;
  *(v81 + 40) = &off_1005A98A0;
  swift_unknownObjectWeakAssign();
  *(v81 + 16) = v80;
  *(v81 + 24) = v73;
  *(v81 + 104) = v78;
  *(v81 + 112) = 0x4000000000000000;
  *(v81 + 96) = sub_100236820;
  *(v71 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator) = v81;
  v168 = v78;

  v82 = v80;

  v84 = *(v71 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName);
  v83 = *(v71 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8);

  v85 = sub_1004A5734();
  v86 = sub_1004A5734();
  v87 = PPSCreateTelemetryIdentifier();

  if (v87)
  {
    sub_100236568(8, v84, v83);

    v88 = sub_1004A5864();
    v90 = v89;
  }

  else
  {

    v91 = v153;
    sub_10016AF30(v176, v153, type metadata accessor for Engine.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v92 = sub_1004A4A54();
    v93 = sub_1004A6014();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 68157952;
      *(v94 + 4) = 2;
      *(v94 + 8) = 256;
      v95 = *(v91 + *(v152 + 20));
      sub_1002344E0(v91, type metadata accessor for Engine.Logger);
      *(v94 + 10) = v95;
      _os_log_impl(&_mh_execute_header, v92, v93, "[%.*hhx] Unable to create power telemetry id.", v94, 0xBu);
    }

    else
    {
      sub_1002344E0(v91, type metadata accessor for Engine.Logger);
    }

    v87 = 0;
    v88 = 0;
    v90 = 0;
  }

  v96 = (v71 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = v96[2];
  v100 = v96[3];
  *v96 = v87;
  v96[1] = v88;
  v96[2] = v90;
  v96[3] = 0;
  sub_100234540(v97, v98, v99, v100);
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1004E9040;
  *&aBlock = 0x2D6574617453;
  *(&aBlock + 1) = 0xE600000000000000;
  v188 = *(v79 + 16);
  sub_10014F900();
  v102 = sub_1004A5A84();
  v104 = v103;
  if (sub_1004A5924() <= 1)
  {
    v190._countAndFlagsBits = 48;
    v190._object = 0xE100000000000000;
    sub_1004A5994(v190);
  }

  type metadata accessor for StateCapture();
  v191._countAndFlagsBits = v102;
  v191._object = v104;
  sub_1004A5994(v191);

  v105 = aBlock;
  v106 = v71[2];
  v107 = swift_allocObject();
  swift_weakInit();

  *(v101 + 32) = StateCapture.__allocating_init(title:queue:capture:)(v105, *(&v105 + 1), v106, sub_1002368A8, v107);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1004A6724(16);

  strcpy(&aBlock, "LocalSelected-");
  HIBYTE(aBlock) = -18;
  v188 = *(v79 + 16);
  v108 = sub_1004A5A84();
  v110 = v109;
  if (sub_1004A5924() <= 1)
  {
    v192._countAndFlagsBits = 48;
    v192._object = 0xE100000000000000;
    sub_1004A5994(v192);
  }

  v193._countAndFlagsBits = v108;
  v193._object = v110;
  sub_1004A5994(v193);

  v111 = aBlock;
  v112 = v71[2];
  v113 = swift_allocObject();
  swift_weakInit();
  *(v101 + 40) = StateCapture.__allocating_init(title:queue:capture:)(v111, *(&v111 + 1), v112, sub_1002368B0, v113);
  *&aBlock = 0x2D6C61636F4CLL;
  *(&aBlock + 1) = 0xE600000000000000;
  v188 = *(v79 + 16);
  v114 = sub_1004A5A84();
  v116 = v115;
  if (sub_1004A5924() <= 1)
  {
    v194._countAndFlagsBits = 48;
    v194._object = 0xE100000000000000;
    sub_1004A5994(v194);
  }

  v195._countAndFlagsBits = v114;
  v195._object = v116;
  sub_1004A5994(v195);

  v117 = aBlock;
  v118 = v71[2];
  v119 = swift_allocObject();
  swift_weakInit();
  *(v101 + 48) = StateCapture.__allocating_init(title:queue:capture:)(v117, *(&v117 + 1), v118, sub_1002368B8, v119);
  *&aBlock = 0x2D65746F6D6552;
  *(&aBlock + 1) = 0xE700000000000000;
  v188 = *(v79 + 16);
  v120 = sub_1004A5A84();
  v122 = v121;
  if (sub_1004A5924() <= 1)
  {
    v196._countAndFlagsBits = 48;
    v196._object = 0xE100000000000000;
    sub_1004A5994(v196);
  }

  v197._countAndFlagsBits = v120;
  v197._object = v122;
  sub_1004A5994(v197);

  v123 = aBlock;
  v124 = v71[2];
  v125 = swift_allocObject();
  swift_weakInit();
  *(v101 + 56) = StateCapture.__allocating_init(title:queue:capture:)(v123, *(&v123 + 1), v124, sub_1002368C0, v125);
  *(v71 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture) = v101;

  v126 = v71[2];
  v127 = v171;
  *v171 = 500;
  v128 = enum case for DispatchTimeInterval.milliseconds(_:);
  v129 = v169[13];
  v130 = v170;
  (v129)(v127, enum case for DispatchTimeInterval.milliseconds(_:), v170);
  v131 = v172;
  *v172 = 250;
  (v129)(v131, v128, v130);
  v132 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1002368C8;
  v187 = v132;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v178 = &v184;
  v184 = sub_10019C778;
  v185 = &unk_1005A9A08;
  v133 = _Block_copy(&aBlock);
  v177 = type metadata accessor for RestartableTimer();
  swift_allocObject();
  v134 = v126;

  v136 = RestartableTimer.init(queue:repeating:leeway:closure:)(v134, v127, v131, v133, v135);

  *(v71 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer) = v136;

  v167 = v71[2];
  *v127 = 53;
  v137 = enum case for DispatchTimeInterval.seconds(_:);
  v169 = v129;
  (v129)(v127, enum case for DispatchTimeInterval.seconds(_:), v130);
  *v131 = 2;
  (v129)(v131, v137, v130);
  v138 = swift_allocObject();
  swift_weakInit();
  v186 = sub_1002368F8;
  v187 = v138;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v184 = sub_10019C778;
  v185 = &unk_1005A9A30;
  v139 = _Block_copy(&aBlock);
  swift_allocObject();
  v140 = v167;

  v142 = RestartableTimer.init(queue:repeating:leeway:closure:)(v140, v127, v131, v139, v141);

  *(v71 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer) = v142;

  v143 = v71[2];
  *v127 = 300;
  v144 = v169;
  (v169)(v127, v137, v130);
  *v131 = 10;
  v144(v131, v137, v130);
  v145 = swift_allocObject();
  swift_weakInit();
  v146 = v143;

  v186 = sub_100236928;
  v187 = v145;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v184 = sub_10019C778;
  v185 = &unk_1005A9A58;
  v147 = _Block_copy(&aBlock);
  swift_allocObject();

  v149 = RestartableTimer.init(queue:repeating:leeway:closure:)(v146, v127, v131, v147, v148);

  sub_1002344E0(v173, type metadata accessor for Configuration);
  (*(v179 + 8))(v181, v180);
  sub_1002344E0(v176, type metadata accessor for Engine.Logger);

  *(v71 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer) = v149;

  return v71;
}

uint64_t Engine.Logger.init(engineID:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1004A4A64();
  result = type metadata accessor for Engine.Logger(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_10022D090@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StateWithTasks(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    *(a2 + 24) = sub_10000C9C0(&qword_1005D5960, &qword_1004E9178);
    *(a2 + 32) = swift_getOpaqueTypeConformance2();
    v13 = sub_1000B3774(a2);
    v14 = *(v12 + 16);
    *v10 = v14;
    (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
    v15 = v14;
    LOBYTE(v14) = sub_1004A5404();
    result = (*(v8 + 8))(v10, v7);
    if (v14)
    {
      v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v4 + 16))(v6, v12 + v16, v3);
      v17 = StateWithTasks.stateCaptureValue(logName:)(*(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName), *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8), v13);
      (*(v4 + 8))(v6, v3, v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10022D318@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StateWithTasks(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10000C9C0(&qword_1005D5950, &qword_1004E9168);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v27 - v15);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v28 = a2;
    v19 = *(Strong + 16);
    *v10 = v19;
    (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
    v20 = v19;
    LOBYTE(v19) = sub_1004A5404();
    result = (*(v8 + 8))(v10, v7);
    if ((v19 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v22 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v4 + 16))(v6, v18 + v22, v3);
    StateWithTasks.localSelectedMailboxesCaptureValue()(v16);

    (*(v4 + 8))(v6, v3);
    a2 = v28;
  }

  else
  {
    v23 = sub_10000C9C0(&qword_1005D5958, &qword_1004E9170);
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  }

  sub_1002369D4(v16, v13);
  v24 = sub_10000C9C0(&qword_1005D5958, &qword_1004E9170);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v13, 1, v24) == 1)
  {
    sub_100236A44(v16);
    result = sub_100236A44(v13);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v24;
    *(a2 + 32) = swift_getOpaqueTypeConformance2();
    v26 = sub_1000B3774(a2);
    (*(v25 + 32))(v26, v13, v24);
    return sub_100236A44(v16);
  }

  return result;
}

uint64_t sub_10022D6E4@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StateWithTasks(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    *v10 = v13;
    (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
    v14 = v13;
    LOBYTE(v13) = sub_1004A5404();
    result = (*(v8 + 8))(v10, v7);
    if (v13)
    {
      v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v4 + 16))(v6, v12 + v15, v3);
      StateWithTasks.localDeselectedMailboxesCaptureValue()(a2);

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10022D91C@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StateWithTasks(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    *(a2 + 24) = sub_10000C9C0(&qword_1005D5948, &qword_1004E9160);
    *(a2 + 32) = swift_getOpaqueTypeConformance2();
    v13 = sub_1000B3774(a2);
    v14 = *(v12 + 16);
    *v10 = v14;
    (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
    v15 = v14;
    LOBYTE(v14) = sub_1004A5404();
    result = (*(v8 + 8))(v10, v7);
    if (v14)
    {
      v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v4 + 16))(v6, v12 + v16, v3);
      StateWithTasks.remoteMailboxesCaptureValue()(v13);

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10022DB94()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for StateWithTasks(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Activity(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1004A53F4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + 16);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1004A5404();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v20 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v6 + 16))(v8, v1 + v21, v5);
      swift_retain_n();
      sub_10023C400(v4);
      StateWithTasks.makeActivity(makeStatus:accountError:)(sub_100236968, v20, v4, v11);

      sub_100025F40(v4, &qword_1005CCEB0, &qword_1004E9140);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v22 = type metadata accessor for ConnectionStatus.Error(0);
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
      Activity.init(mailboxesWithPendingWork:accountError:)(_swiftEmptySetSingleton, v4, v11);
    }

    v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v6 + 16))(v8, v1 + v23, v5);
    v24 = StateWithTasks.selectedMailboxes.getter();
    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    v25 = sub_100236F1C(v11, v24);
    swift_endAccess();

    result = sub_1002344E0(v11, type metadata accessor for Activity);
    v26 = *(v25 + 2);
    if (v26)
    {
      v27 = *(v1 + 32);
      v28 = (v25 + 32);
      do
      {
        v29 = *v28++;
        sub_10011D8FC(v29);
        v27(v29);
        result = sub_100020EDC(v29);
        --v26;
      }

      while (v26);
    }

    if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
    {

      RestartableTimer.stop()();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10022E004(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10022E064()
{
  v1 = v0;
  v2 = type metadata accessor for StateWithTasks(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  StateWithTasks.inSyncMailboxes.getter(v12);
  (*(v3 + 8))(v5, v2);
  sub_10002587C(v12, v12[3]);
  v11[2] = sub_100163378(_swiftEmptyArrayStorage);
  sub_10000C9C0(&qword_1005D5928, &qword_1004E9138);
  sub_1004A5B74();
  v7 = v11[3];
  sub_1000197E0(v12);
  if (!*(v7 + 16))
  {
  }

  v8 = *(v1 + 32);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v8(v9 | 0x9000000000000004);
}

uint64_t sub_10022E23C(uint64_t a1)
{
  v1 = type metadata accessor for StateWithTasks(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    *v8 = v11;
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v12 = v11;
    LOBYTE(v11) = sub_1004A5404();
    result = (*(v6 + 8))(v8, v5);
    if (v11)
    {
      v13 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      v14 = *(v2 + 16);
      v14(v4, v10 + v13, v1);
      v15 = static MonotonicTime.now()();
      StateWithTasks.logLongRunningSyncRequests(now:)(v15);
      v16 = *(v2 + 8);
      v16(v4, v1);
      v14(v4, v10 + v13, v1);
      v17 = static MonotonicTime.now()();
      StateWithTasks.logLongRunningTasks(now:)(v17);

      return (v16)(v4, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall Engine.start()()
{
  v1 = sub_1004A5244();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A5274();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart);
  v10 = atomicFlag_testAndSet.unsafeMutableAddressor();
  if (((*v10)(v9 + 16) & 1) == 0)
  {
    v14 = *(v0 + 16);
    aBlock[4] = sub_10022E828;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A97D8;
    v11 = _Block_copy(aBlock);

    sub_1004A5254();
    v15 = _swiftEmptyArrayStorage;
    sub_1002367D8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v13 = v5;
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60, &protocol conformance descriptor for [A]);
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v11);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v13);
  }
}

uint64_t sub_10022E760(uint64_t a1)
{
  (*(a1 + 32))(0xB000000000000000);
  result = sub_10022F82C(&off_1005A92D0, &unk_1005A92F0);
  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
  {
    __break(1u);
    goto LABEL_8;
  }

  RestartableTimer.start()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  RestartableTimer.start()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  RestartableTimer.start()();
}

uint64_t sub_10022E830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall Engine.tearDown()()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown);
  v6 = atomicFlag_testAndSet.unsafeMutableAddressor();
  if (((*v6)(v5 + 16) & 1) == 0)
  {
    v7 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_10016AF30(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v4, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v8 = sub_1004A4A54();
    v9 = sub_1004A4A74();
    (*(*(v9 - 8) + 8))(v4, v9);
    v10 = sub_1004A6034();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 68157952;
      *(v11 + 4) = 2;
      *(v11 + 8) = 256;
      *(v11 + 10) = *(v7 + *(v2 + 20));

      _os_log_impl(&_mh_execute_header, v8, v10, "[%.*hhx] Tearing down.", v11, 0xBu);
    }

    else
    {
    }

    v12 = *(v1 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1002344A0;
    *(v13 + 24) = v1;
    aBlock[4] = sub_1002344B8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10022ECC8;
    aBlock[3] = &unk_1005A9828;
    v14 = _Block_copy(aBlock);

    dispatch_sync(v12, v14);
    _Block_release(v14);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }
}

void sub_10022EB10(uint64_t result)
{
  if (!*(result + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
  {
    __break(1u);
    goto LABEL_6;
  }

  RestartableTimer.stop()();

  if (!*(result + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  RestartableTimer.stop()();

  if (*(result + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer))
  {

    RestartableTimer.stop()();

    sub_10022EBB0();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10022EBB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);
  if (v1 >> 62)
  {
    v2 = sub_1004A6A34();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_1004A6794();
    }

    else
    {
    }

    StateCapture.tearDown()();
  }

LABEL_10:
  v4 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
  {

    sub_10023A8DC();
  }

  *(v0 + v4) = 0;
}

uint64_t Engine.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A4A74();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v5, v7);
  sub_10016AF30(v1 + v10, v4, type metadata accessor for Engine.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 68157952;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = v4[*(v2 + 20)];
    sub_1002344E0(v4, type metadata accessor for Engine.Logger);
    *(v13 + 10) = v14;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx] Deinit.", v13, 0xBu);
  }

  else
  {
    sub_1002344E0(v4, type metadata accessor for Engine.Logger);
  }

  (*(v6 + 8))(v9, v5);
  v15 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown);
  v16 = atomicFlag_testAndSet.unsafeMutableAddressor();
  result = (*v16)(v15 + 16);
  if (result)
  {

    sub_1002344E0(v1 + v10, type metadata accessor for Engine.Logger);

    v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    v19 = type metadata accessor for StateWithTasks(0);
    (*(*(v19 - 8) + 8))(v1 + v18, v19);

    sub_1002344E0(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState, type metadata accessor for ExternalState);

    sub_100234540(*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry), *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 8), *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 16), *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 24));

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Engine.__deallocating_deinit()
{
  Engine.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10022F130(uint64_t a1)
{
  v3 = sub_1004A53F4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  v10 = v4 + 104;
  v9 = *(v4 + 104);
  v56 = enum case for DispatchPredicate.onQueue(_:);
  v55 = v9;
  v9(v7, v5);
  v11 = v8;
  v12 = sub_1004A5404();
  v13 = *(v4 + 8);
  v57 = v7;
  v58 = v4 + 8;
  v51 = v3;
  v54 = v13;
  result = v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v49 = v1;
    v50 = v10;
    v59 = _swiftEmptyArrayStorage;
    sub_10024AB64(0, v15, 0);
    v16 = v59;
    v53 = a1;
    v17 = (a1 + 64);
    v18 = v15;
    do
    {
      v19 = *(v17 - 8);
      v20 = *(v17 - 3);
      v21 = *(v17 - 4);
      v23 = *(v17 - 1);
      v22 = *v17;
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = v20;
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      *(v24 + 48) = v22;
      sub_1000CB7C8(v20);
      v59 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);

      if (v26 >= v25 >> 1)
      {
        sub_10024AB64((v25 > 1), v26 + 1, 1);
        v16 = v59;
      }

      *(v16 + 16) = v26 + 1;
      *(v16 + 8 * v26 + 32) = v24;
      v17 += 5;
      --v18;
    }

    while (v18);
    v27 = v49;
    sub_10022F594(v16);

    v28 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator;
    v29 = (v53 + 64);
    v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator;
    while (1)
    {
      v30 = *(v29 - 3);
      v31 = *(v27 + v28);
      if (v31)
      {
        v32 = v30 >> 60 == 7;
      }

      else
      {
        v32 = 0;
      }

      if (!v32)
      {
        goto LABEL_8;
      }

      v33 = *(v29 - 1);
      v53 = *v29;
      v34 = *((v30 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *(v31 + 16);
      v36 = v57;
      *v57 = v35;
      v37 = v51;
      v55(v36, v56, v51);
      v38 = v35;
      v52 = v33;

      sub_1000CB7C8(v30);
      LOBYTE(v35) = sub_1004A5404();
      result = v54(v36, v37);
      if ((v35 & 1) == 0)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v39 = static MonotonicTime.now()();
      swift_beginAccess();
      v40 = *(v31 + 64);
      if (v34)
      {
        break;
      }

      if (v40 == 1)
      {
        v39 = 0;
        v41 = 0;
LABEL_22:
        *(v31 + 56) = v39;
        *(v31 + 64) = v41;
      }

LABEL_23:
      v42 = v57;
      *v57 = v38;
      v55(v42, v56, v37);
      v43 = sub_1004A5404();
      result = v54(v42, v37);
      if ((v43 & 1) == 0)
      {
        goto LABEL_29;
      }

      sub_1002239DC();
      sub_100223DDC();

      sub_1000CB848(v30);

      v28 = v48;
      v27 = v49;
LABEL_8:
      v29 += 5;
      if (!--v15)
      {
        return result;
      }
    }

    if (*(v31 + 64) && (v40 != 1 || *(v31 + 56) >= v39))
    {
      goto LABEL_23;
    }

    v41 = 1;
    goto LABEL_22;
  }

  v44 = v57;
  *v57 = v11;
  v45 = v51;
  v55(v44, v56, v51);
  v46 = v11;
  v47 = sub_1004A5404();
  result = v54(v44, v45);
  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_10022F594(&off_1005A92A8);
  return sub_1002348BC(&unk_1005A92C8);
}

uint64_t sub_10022F594(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1004A53F4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1004A5404();
  result = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();

  sub_100231D54(v11);
  result = swift_endAccess();
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates))
  {
    return result;
  }

  *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates) = 1;
  sub_100231E48();
  sub_100231F24();
  sub_100232098();
  swift_beginAccess();
  v13 = StateWithTasks.environment.getter();
  result = swift_endAccess();
  if ((v13 & 0x100) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
    {

      RestartableTimer.start()();

      if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
      {

        sub_10023B9D0();
      }

      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

LABEL_7:
  v14 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry;
  swift_beginAccess();
  if (*(v14 + 16))
  {
    swift_beginAccess();
    v15 = StateWithTasks.appState.getter();
    StateWithTasks.runningSyncRequests.getter();
    v17 = v16;
    swift_endAccess();
    sub_10024E504(v15 & 1, v17, v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger);
    swift_endAccess();
  }

  else
  {
    result = swift_endAccess();
  }

  *(v2 + v12) = 0;
  return result;
}

uint64_t sub_10022F82C(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v3 = sub_1004A53F4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v4 + 104);
  (v10)(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v11 = v8;
  v12 = sub_1004A5404();
  v13 = *(v4 + 8);
  result = v13(v7, v3);
  if (v12)
  {
    *v7 = v11;
    v10(v7, v9, v3);
    v15 = sub_1004A5404();
    result = v13(v7, v3);
    if (v15)
    {
      sub_10022F594(v16);
      return sub_1002348BC(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10022F9AC()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 16);
  *v9 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = *(v6 + 104);
  v12(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v35 = v10;
  LOBYTE(v10) = sub_1004A5404();
  v36 = *(v6 + 8);
  result = v36(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v34 = v12;
  v14 = swift_beginAccess();
  StateWithTasks.failOldBackgroundSyncRequests()(v14);
  v16 = v15;
  swift_endAccess();
  if (!*(v16 + 16))
  {
  }

  v33 = v11;
  v17 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v4, type metadata accessor for Engine.Logger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v18 = sub_1004A4A54();
  v19 = sub_1004A4A74();
  (*(*(v19 - 8) + 8))(v4, v19);
  v20 = sub_1004A6034();
  if (os_log_type_enabled(v18, v20))
  {
    v21 = swift_slowAlloc();
    v32 = v6 + 104;
    v22 = v21;
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    *(v22 + 10) = *(v17 + *(v2 + 20));

    *(v22 + 11) = 2048;
    *(v22 + 13) = *(v16 + 16);

    *(v22 + 21) = 2082;
    v23 = sub_100134BF8(v16);
    v25 = v24;

    v26 = sub_10015BA6C(v23, v25, v37);

    *(v22 + 23) = v26;
    _os_log_impl(&_mh_execute_header, v18, v20, "[%.*hhx] Connections stalled. Failed %ld background sync request(s): %{public}s.", v22, 0x1Fu);
    sub_1000197E0(v31);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v27 = v34;
  v28 = v35;
  *v9 = v35;
  v27(v9, v33, v5);
  v29 = v28;
  LOBYTE(v28) = sub_1004A5404();
  result = v36(v9, v5);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10022F594(&off_1005A9320);
  return sub_1002348BC(&unk_1005A9340);
}

uint64_t Engine.persistenceDidSend(_:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1004A5244();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004A5274();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = a1;
  v14 = a2 & 1;
  *(v13 + 32) = a2 & 1;
  aBlock[4] = sub_1002345C8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A9878;
  v15 = _Block_copy(aBlock);

  sub_1000CB7A0(a1, v14);
  sub_1004A5254();
  v19 = _swiftEmptyArrayStorage;
  sub_1002367D8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60, &protocol conformance descriptor for [A]);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_100230090(uint64_t a1, char a2)
{
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v2;
  v10 = *(v2 + 16);
  *v9 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = *(v6 + 104);
  (v12)(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v24 = v10;
  v13 = sub_1004A5404();
  v14 = *(v6 + 8);
  result = v14(v9, v5);
  if (v13)
  {
    v16 = swift_allocObject();
    v17 = a2;
    v18 = a1;
    *(v16 + 16) = a1;
    v19 = v17 & 1;
    *(v16 + 24) = v17 & 1;
    *v9 = v24;
    v12(v9, v11, v5);
    sub_1000CB7A0(v18, v19);
    v20 = sub_1004A5404();
    result = v14(v9, v5);
    if (v20)
    {
      sub_10000C9C0(&qword_1005D5900, &qword_1004E9120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004CEAA0;
      *(inited + 32) = v16 | 0x4000000000000000;

      sub_10022F594(inited);

      swift_setDeallocating();
      return swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002302B4()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1004A5404();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_10016AF30(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v4, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v14 = sub_1004A4A54();
    v15 = sub_1004A4A74();
    (*(*(v15 - 8) + 8))(v4, v15);
    v16 = sub_1004A6014();
    if (os_log_type_enabled(v14, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 68157952;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      *(v17 + 10) = *(v13 + *(v2 + 20));

      _os_log_impl(&_mh_execute_header, v14, v16, "[%.*hhx] Credentials are invalid.", v17, 0xBu);
    }

    else
    {
    }

    return (*(v1 + 32))(0xB000000000000018);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100230548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v7);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 32);
  *(swift_allocObject() + 16) = v6;
  v11 = v10();

  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v3 + v12);
  *(v3 + v12) = 0x8000000000000000;
  sub_100234EAC(v6, a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *(v3 + v12) = v23;
  swift_endAccess();
  v14 = v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v9, type metadata accessor for Engine.Logger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v15 = sub_1004A4A54();
  v16 = sub_1004A4A74();
  (*(*(v16 - 8) + 8))(v9, v16);
  v17 = sub_1004A6004();
  if (os_log_type_enabled(v15, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 68158466;
    *(v18 + 4) = 2;
    *(v18 + 8) = 256;
    *(v18 + 10) = *(v14 + *(v7 + 20));

    *(v18 + 11) = 2080;
    LODWORD(v23) = v11;
    sub_1000D40AC();
    v20 = sub_1004A5A84();
    v22 = sub_10015BA6C(v20, v21, v24);

    *(v18 + 13) = v22;
    *(v18 + 21) = 1024;
    *(v18 + 23) = v6;
    _os_log_impl(&_mh_execute_header, v15, v17, "[%.*hhx] Sending action %s: request %u for credentials.", v18, 0x1Bu);
    sub_1000197E0(v19);
  }

  else
  {
  }
}

void sub_100230828(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Engine.Logger(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v2 + 32))(0xB000000000000020, v6);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v2 + v11);
  *(v2 + v11) = 0x8000000000000000;
  sub_100235020(sub_10023667C, v10, v9, isUniquelyReferenced_nonNull_native);
  *(v2 + v11) = v22;
  swift_endAccess();
  v13 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v8, type metadata accessor for Engine.Logger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v14 = sub_1004A4A54();
  v15 = sub_1004A4A74();
  (*(*(v15 - 8) + 8))(v8, v15);
  v16 = sub_1004A6004();
  if (os_log_type_enabled(v14, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 68158210;
    *(v17 + 4) = 2;
    *(v17 + 8) = 256;
    *(v17 + 10) = *(v13 + *(v5 + 20));

    *(v17 + 11) = 2080;
    LODWORD(v22) = v9;
    sub_1000D40AC();
    v19 = sub_1004A5A84();
    v21 = sub_10015BA6C(v19, v20, v23);

    *(v17 + 13) = v21;
    _os_log_impl(&_mh_execute_header, v14, v16, "[%.*hhx] Did send action %s: request push registration info.", v17, 0x15u);
    sub_1000197E0(v18);
  }

  else
  {
  }
}

void sub_100230AFC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  v14 = v12(v13 | 0x1000000000000002);

  v15 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v11, type metadata accessor for Engine.Logger);
  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = sub_1004A4A54();
  v17 = sub_1004A4A74();
  (*(*(v17 - 8) + 8))(v11, v17);
  v18 = sub_1004A6034();
  if (os_log_type_enabled(v16, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 68158466;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    v21 = *(v15 + *(v9 + 20));

    *(v19 + 10) = v21;

    *(v19 + 11) = 2080;
    v26[1] = v14;
    sub_1000D40AC();
    v22 = sub_1004A5A84();
    v24 = sub_10015BA6C(v22, v23, &v27);

    *(v19 + 13) = v24;
    *(v19 + 21) = 2048;
    v25 = *(a4 + 16);

    *(v19 + 23) = v25;

    _os_log_impl(&_mh_execute_header, v16, v18, "[%.*hhx] Did send action %s: did complete push registration (%ld mailbox(es)).", v19, 0x1Fu);
    sub_1000197E0(v20);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_100230E00(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
    v4 = (result + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 >> 62 == 1)
      {
        v7 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
        {
          v8 = (v7 >> 59) & 0x1E | (v7 >> 2) & 1;
          if (v8 == 1)
          {
            v14 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v15 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

            sub_1000CB7A0(v7, 1);
            sub_100231454(v15, v14);
          }

          else
          {
            if (v8 != 7)
            {
              v9 = v8 == 22 && v7 == 0xB000000000000000;
              if (!v9 || !*(v3 + v16))
              {
                goto LABEL_4;
              }

              swift_beginAccess();
              v10 = StateWithTasks.appState.getter();
              swift_endAccess();

              sub_1000CB7A0(0xB000000000000000, 1);

              sub_10023B180(v10 & 1);

              v11 = 0xB000000000000000;
              goto LABEL_19;
            }

            v12 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
            v18[0] = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v18[1] = v12;
            v13 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
            v18[2] = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
            v18[3] = v13;

            sub_1000CB7A0(v7, 1);
            sub_100208C78(v18, v17);
            sub_10023183C(v18);

            sub_10021D02C(v18);
          }

          v11 = v7;
LABEL_19:
          result = sub_1000CB7B4(v11, 1);
          goto LABEL_4;
        }

        sub_100230FF4(v7);
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100230FF4(uint64_t a1)
{
  v2 = v1;
  v30 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v30);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  swift_beginAccess();
  v8 = sub_100234ACC();
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  v13 = &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  if (v10)
  {
    v14 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_10016AF30(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v7, type metadata accessor for Engine.Logger);
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1002366D0(v8, v10);

    v15 = sub_1004A4A54();
    v16 = sub_1004A4A74();
    (*(*(v16 - 8) + 8))(v7, v16);
    v17 = sub_1004A6014();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 68158208;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v19 = *(v14 + *(v30 + 20));

      *(v18 + 10) = v19;

      *(v18 + 11) = 1024;
      sub_1002366E0(v8, v10, v12);
      *(v18 + 13) = v8;
      sub_1002366E0(v8, v10, v12);
      _os_log_impl(&_mh_execute_header, v15, v17, "[%.*hhx] Did not receive any credentials %u.", v18, 0x11u);
      v13 = &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    }

    else
    {
      sub_1002366E0(v8, v10, v12);

      sub_1002366E0(v8, v10, v12);
    }

    v10(_swiftEmptyArrayStorage);
    sub_1002366E0(v8, v10, v12);
    sub_1002366E0(v8, v10, v12);
  }

  swift_beginAccess();
  v20 = sub_100234A38();
  v22 = v21;
  result = swift_endAccess();
  if (v20)
  {
    v24 = v2 + v13[27];
    sub_10016AF30(v24, v4, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v25 = sub_1004A4A54();
    v26 = sub_1004A4A74();
    (*(*(v26 - 8) + 8))(v4, v26);
    v27 = sub_1004A6014();
    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 68157952;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      *(v28 + 10) = *(v24 + *(v30 + 20));

      _os_log_impl(&_mh_execute_header, v25, v27, "[%.*hhx] Did not receive any push registration info.", v28, 0xBu);
    }

    else
    {
    }

    memset(v31, 0, sizeof(v31));
    v20(v31);
    return sub_1000B5158(v20, v22);
  }

  return result;
}

void sub_100231454(uint64_t a1, int a2)
{
  v3 = v2;
  v30 = a1;
  v5 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v28[-v9];
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  swift_beginAccess();

  v29 = a2;
  v13 = sub_100231B3C(v12, a2);
  v15 = v14;
  v17 = v16;
  v18 = ~v16;

  v19 = v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  if (v18)
  {
    sub_10016AF30(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v10, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v20 = sub_1004A4A54();
    v21 = sub_1004A4A74();
    (*(*(v21 - 8) + 8))(v10, v21);
    v22 = sub_1004A6004();
    if (os_log_type_enabled(v20, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 68158208;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      *(v23 + 10) = *(v19 + *(v5 + 20));

      *(v23 + 11) = 1024;
      *(v23 + 13) = v29;
      _os_log_impl(&_mh_execute_header, v20, v22, "[%.*hhx] Did receive credentials %u.", v23, 0x11u);
    }

    else
    {
    }

    sub_100231CC8(v31, v13, v15, v17 & 1, *(v3 + v11));
    v32(v30);

    swift_beginAccess();
    sub_100235368(v31, v13, v15);
    swift_endAccess();
    sub_1002366F0(v13, v15, v17);
  }

  else
  {
    sub_10016AF30(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v7, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v24 = sub_1004A4A54();
    v25 = sub_1004A4A74();
    (*(*(v25 - 8) + 8))(v7, v25);
    v26 = sub_1004A6014();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 68158208;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      *(v27 + 10) = *(v19 + *(v5 + 20));

      *(v27 + 11) = 1024;
      *(v27 + 13) = v29;
      _os_log_impl(&_mh_execute_header, v24, v26, "[%.*hhx] Did receive credentials %u for, but the request is unknown.", v27, 0x11u);

      return;
    }
  }
}

void sub_10023183C(__int128 *a1)
{
  v2 = v1;
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  v6 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v8, type metadata accessor for Engine.Logger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100208C78(a1, v25);
  v10 = sub_1004A4A54();
  v11 = sub_1004A4A74();
  (*(*(v11 - 8) + 8))(v8, v11);
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v10, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 68158208;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    *(v13 + 10) = *(v9 + *(v6 + 20));

    *(v13 + 11) = 2048;
    *(v13 + 13) = *(*(a1 + 7) + 16);
    sub_10021D02C(a1);
    _os_log_impl(&_mh_execute_header, v10, v12, "[%.*hhx] Did receive push registration info (%ld mailbox(es)).", v13, 0x15u);
  }

  else
  {
    sub_10021D02C(a1);
  }

  v14 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  swift_beginAccess();
  v15 = *(v2 + v14);
  *(v2 + v14) = _swiftEmptyDictionarySingleton;
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  while (v18)
  {
    v21 = v20;
LABEL_12:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v15 + 56) + ((v21 << 10) | (16 * v22)));
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v25[3] = v29;

    v23(v25);
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      return;
    }

    v18 = *(v15 + 64 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
}

int64_t sub_100231B3C(uint64_t a1, int a2)
{
  v4 = a1 + 64;
  result = sub_1004A6554();
  v6 = 1 << *(a1 + 32);
  if (result == v6)
  {
    return 0;
  }

  while ((result & 0x8000000000000000) == 0 && result < v6)
  {
    v7 = result >> 6;
    v8 = *(v4 + 8 * (result >> 6));
    if (((v8 >> result) & 1) == 0)
    {
      goto LABEL_19;
    }

    v9 = *(a1 + 36);
    if (*(*(a1 + 56) + 24 * result) == a2)
    {
      return result;
    }

    v10 = v8 & (-2 << (result & 0x3F));
    if (v10)
    {
      v6 = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v11 = v7 << 6;
      v12 = v7 + 1;
      v13 = (a1 + 72 + 8 * v7);
      while (v12 < (v6 + 63) >> 6)
      {
        v15 = *v13++;
        v14 = v15;
        v11 += 64;
        ++v12;
        if (v15)
        {
          sub_100020944(result, v9, 0);
          v6 = __clz(__rbit64(v14)) + v11;
          goto LABEL_5;
        }
      }

      sub_100020944(result, v9, 0);
    }

LABEL_5:
    result = v6;
    v6 = 1 << *(a1 + 32);
    if (result == v6)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100231CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 4 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v9 = *(v6 + 8);
    v8 = *(v6 + 16);
    *result = v7;
    *(result + 8) = v9;
    *(result + 16) = v8;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100231D54(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100237CD4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100231E48()
{
  v1 = sub_100232784();
  v2 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  v3 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits), , , v5 = sub_1001B02D8(v4, v1), , , (v5 & 1) == 0) && *(v0 + v2))
  {

    sub_10023BE20(v1);
  }

  else
  {
  }
}

uint64_t sub_100231F24()
{
  v1 = type metadata accessor for StateWithTasks(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static MonotonicTime.now()();
  v6 = result;
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt;
  v8 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt);
  v9 = __OFSUB__(result, v8);
  v10 = result - v8;
  if (result >= v8)
  {
LABEL_6:
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v8, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(0, v8 - result);
  v10 = result - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  if (v10 / 1000000000.0 > 20.0)
  {
    v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v2 + 16))(v4, v0 + v11, v1);
    StateWithTasks.logSyncRequests()();
    result = (*(v2 + 8))(v4, v1);
    *(v0 + v7) = v6;
  }

  return result;
}

void sub_100232098()
{
  v1 = v0;
  v2 = type metadata accessor for StateWithTasks(0);
  v41 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  v4 = *&v0[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections];
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates;
  v42 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState;
  v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection;
  v49 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;

  swift_beginAccess();
  v6 = *&v1[v5];
  v47 = v5;
  *&v1[v5] = _swiftEmptyArrayStorage;
  sub_100232B00(v6);
  v7 = v6 + 16;
  v8 = *(v6 + 16);
  if (v8)
  {
    v39 = 0;
    v45 = (v41 + 16);
    v44 = (v41 + 8);
    v38 = v4;
    v40 = v2;
    do
    {
      v9 = 0;
      while (1)
      {
        if (v8 == v9)
        {
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v10 = *(v6 + 8 * v9 + 32);
        if (v10 >> 62 == 1)
        {
          v11 = v10 & 0x3FFFFFFFFFFFFFFFLL;
          if (*(v11 + 24) == 1 && ((*(v11 + 16) >> 59) & 0x1E | (*(v11 + 16) >> 2) & 1) == 2)
          {
            break;
          }
        }

        if (v8 == ++v9)
        {
          goto LABEL_22;
        }
      }

      v12 = v42;
      swift_beginAccess();
      sub_100025F40(&v1[v12], &qword_1005D58F8, &unk_1004E9190);
      v13 = type metadata accessor for Activity(0);
      (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
      swift_endAccess();
      v14 = *&v1[v43];
      if (v14)
      {
        v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
        swift_beginAccess();
        v16 = *(v14 + v15);
        v17 = v16 >> 62 ? sub_1004A6A34() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v2 = v40;
        if (v17)
        {
          if (v17 >= 1)
          {

            for (i = 0; i != v17; ++i)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v19 = sub_1004A6794();
              }

              else
              {
                v19 = *(v16 + 8 * i + 32);
              }

              (*(*v19 + 592))();
            }

            v4 = v38;
            v2 = v40;
            goto LABEL_22;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

LABEL_22:
      v20 = *v7;
      v21 = 32;
      while (1)
      {
        if (!v20)
        {
          __break(1u);
          goto LABEL_51;
        }

        v22 = *(v6 + v21);
        if (v22 >> 62 == 1)
        {
          v23 = v22 & 0x3FFFFFFFFFFFFFFFLL;
          if (*(v23 + 24))
          {
            v24 = *(v23 + 16);
            if (((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 3 && *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x14) == 1)
            {
              break;
            }
          }
        }

        --v20;
        v21 += 8;
        if (!--v8)
        {
          goto LABEL_30;
        }
      }

      v39 = 1;
LABEL_30:
      sub_100232900(v6);

      sub_100230E00(v6);
      swift_beginAccess();

      StateWithTasks.update(updates:send:persist:)(v6, sub_10023495C, v4, sub_100234910, v1);
      swift_endAccess();

      if (v1[v48] == 1)
      {
        v25 = v49;
        v1[v48] = 0;
        v26 = v46;
        (*v45)(v46, &v1[v25], v2);
        StateWithTasks.logForDidCreateFirstConnection()();
        (*v44)(v26, v2);
      }

      v6 = *&v1[v47];
      *&v1[v47] = _swiftEmptyArrayStorage;
      sub_100232B00(v6);
      v7 = v6 + 16;
      v8 = *(v6 + 16);
    }

    while (v8);

    if (v39)
    {
      v27.rawValue = static MonotonicTime.now()();
      sub_10023BF68(v27);
    }
  }

  else
  {
  }

  v28 = v49;
  swift_beginAccess();
  v29 = v41;
  v30 = &v1[v28];
  v31 = v46;
  (*(v41 + 16))(v46, v30, v2);
  StateWithTasks.connectionLimitsAndUsage.getter(v50);
  (*(v29 + 8))(v31, v2);
  sub_10023C098();
  v32 = v52;
  v54 = v51;
  sub_100234990(&v54);
  v53 = v32;
  sub_1002349E4(&v53);
  v33 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v7 = *(v4 + v33);
  if (v7 >> 62)
  {
LABEL_54:
    v34 = sub_1004A6A34();
  }

  else
  {
    v34 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v34)
  {
    goto LABEL_48;
  }

  v35 = 0;
  while ((v7 & 0xC000000000000001) != 0)
  {
    v36 = sub_1004A6794();
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_47;
    }

LABEL_43:
    (*(*v36 + 584))();

    ++v35;
    if (v37 == v34)
    {
      goto LABEL_48;
    }
  }

  if (v35 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_52;
  }

  v36 = *(v7 + 8 * v35 + 32);

  v37 = v35 + 1;
  if (!__OFADD__(v35, 1))
  {
    goto LABEL_43;
  }

LABEL_47:
  __break(1u);
LABEL_48:
}

void *sub_100232784()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_beginAccess();
    StateWithTasks.runningSyncRequests.getter();
    v11 = v10;
    swift_endAccess();
    RunningSyncRequests.kinds.getter(v11, v14);

    v12 = sub_10022AB84(v14[0], *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind));

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100232900(uint64_t a1)
{
  v2 = v1;
  v4 = *tracingLog.unsafeMutableAddressor();
  v5 = sub_1004A6354();

  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 32);
      do
      {
        v8 = *v7++;
        v9 = v8;

        sub_100233318(&v9, v2);

        --v6;
      }

      while (v6);
    }
  }
}

void sub_100232998(unint64_t a1)
{
  v2 = v1;
  v4 = *tracingLog.unsafeMutableAddressor();
  v5 = sub_1004A6354();

  if ((v5 & 1) != 0 && ((a1 >> 58) & 0x3C | (a1 >> 1) & 3) == 1)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 56);
    v10 = (v7 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v11 = 0;
    if (v9)
    {
      while (1)
      {
        v12 = v11;
LABEL_11:
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = *(*(v6 + 48) + ((v12 << 8) | (4 * v13)));
        sub_1002337E8(&v14, v2);
        if (!v9)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v6 + 56 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_11;
      }
    }
  }
}

void sub_100232B00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    if (v16 == v17)
    {
      v22 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
      switch(v18)
      {
        case 3:
          sub_10016AF30(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v9, type metadata accessor for Engine.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v23 = sub_1004A4A54();
          v29 = sub_1004A4A74();
          (*(*(v29 - 8) + 8))(v9, v29);
          v25 = sub_1004A5FF4();
          if (os_log_type_enabled(v23, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 68158208;
            *(v26 + 4) = 2;
            *(v26 + 8) = 256;
            *(v26 + 10) = *(v22 + *(v4 + 20));

            *(v26 + 11) = 2048;
            *(v26 + 13) = v16;

            v27 = "[%.*hhx] Processing %ld update(s) from network and persistence";
            goto LABEL_20;
          }

          break;
        case 2:
          sub_10016AF30(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v12, type metadata accessor for Engine.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v23 = sub_1004A4A54();
          v28 = sub_1004A4A74();
          (*(*(v28 - 8) + 8))(v12, v28);
          v25 = sub_1004A5FF4();
          if (os_log_type_enabled(v23, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 68158208;
            *(v26 + 4) = 2;
            *(v26 + 8) = 256;
            *(v26 + 10) = *(v22 + *(v4 + 20));

            *(v26 + 11) = 2048;
            *(v26 + 13) = v16;

            v27 = "[%.*hhx] Processing %ld update(s) from persistence";
            goto LABEL_20;
          }

          break;
        case 1:
          sub_10016AF30(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v15, type metadata accessor for Engine.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v23 = sub_1004A4A54();
          v24 = sub_1004A4A74();
          (*(*(v24 - 8) + 8))(v15, v24);
          v25 = sub_1004A5FF4();
          if (os_log_type_enabled(v23, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 68158208;
            *(v26 + 4) = 2;
            *(v26 + 8) = 256;
            *(v26 + 10) = *(v22 + *(v4 + 20));

            *(v26 + 11) = 2048;
            *(v26 + 13) = v16;

            v27 = "[%.*hhx] Processing %ld update(s) from network";
LABEL_20:
            _os_log_impl(&_mh_execute_header, v23, v25, v27, v26, 0x15u);

            return;
          }

          break;
        default:
          sub_10016AF30(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v6, type metadata accessor for Engine.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v30 = sub_1004A4A54();
          v31 = sub_1004A4A74();
          (*(*(v31 - 8) + 8))(v6, v31);
          v32 = sub_1004A5FF4();
          if (os_log_type_enabled(v30, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 68158208;
            *(v33 + 4) = 2;
            *(v33 + 8) = 256;
            *(v33 + 10) = *(v22 + *(v4 + 20));

            *(v33 + 11) = 2048;
            *(v33 + 13) = v16;

            _os_log_impl(&_mh_execute_header, v30, v32, "[%.*hhx] Processing %ld update(s)", v33, 0x15u);

            return;
          }

          goto LABEL_25;
      }

LABEL_25:

      return;
    }

    if (v17 >= v16)
    {
      break;
    }

    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_28;
    }

    v20 = *(a1 + 8 * v17++ + 32) >> 62;
    if (v20 != 2)
    {
      v17 = v19;
      if (v20)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      v18 |= v21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

unint64_t sub_1002330E8(uint64_t a1)
{
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v13[0] = *(a1 + v10);
    v13[1] = sub_1002405FC;
    v13[2] = 0;
    v13[3] = sub_100235448;
    v13[4] = 0;
    v13[5] = sub_1002354AC;
    v13[6] = 0;

    v11 = sub_100233C90(v13);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100233284(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  sub_100235180(0x100000000uLL, v5, v6, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
}

void sub_100233318(unint64_t *a1, uint64_t a2)
{
  v3 = sub_1004A4944();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A4904();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = *a1;
  if (*a1 >> 62 == 1)
  {
    v16 = v15 & 0x3FFFFFFFFFFFFFFFLL;
    v17 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v16 + 24) == 1 && ((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 2)
    {
      v52 = v12;
      v19 = v17 & 0xFFFFFFFFFFFFFFBLL;
      v20 = v4;
      v21 = *(v19 + 24);
      v47 = *(v19 + 16);
      v48 = v21;
      v22 = *(v19 + 32);

      sub_1004A4914();
      v23 = tracingSignposter.unsafeMutableAddressor();
      v51 = v20;
      (*(v20 + 16))(v6, v23, v3);

      v24 = sub_1004A4934();
      v49 = sub_1004A6144();

      if (sub_1004A6354())
      {
        v44 = v22;
        v46 = v24;
        v25 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v53 = v45;
        *v25 = 67109890;
        *(v25 + 4) = v47;
        v50 = v25;
        *(v25 + 8) = 2082;
        v26 = sub_1004A6754();
        v28 = sub_10015BA6C(v26, v27, &v53);

        v29 = v50;
        *(v50 + 10) = v28;
        *(v29 + 18) = 2048;
        if (v44)
        {
          v30 = *(v44 + 16);
        }

        else
        {
          v30 = 0;
        }

        v31 = v50;
        *(v50 + 20) = v30;
        v32 = v31;

        *(v32 + 28) = 2082;
        swift_beginAccess();
        LODWORD(v32) = StateWithTasks.environment.getter();
        v34 = v33;
        v48 = v35;
        swift_endAccess();
        v36 = Environment.description.getter(v32 & 0x101FF, v34, v48);
        v38 = sub_10015BA6C(v36, v37, &v53);

        v39 = v50;
        *(v50 + 30) = v38;
        v40 = sub_1004A48F4();
        v41 = v46;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, v49, v40, "SyncRequest", "Begin syncRequestId: #%u, kind: %{public}s, mailboxes: %ld, %{public}s", v39, 0x26u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v42 = v52;
      (*(v8 + 16))(v10, v14, v52);
      sub_1004A4A34();
      swift_allocObject();
      sub_1004A4A24();

      (*(v51 + 8))(v6, v3);
      (*(v8 + 8))(v14, v42);
    }
  }
}

uint64_t sub_1002337E8(int *a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_1004A4954();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A4944();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A4904();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  v32 = *a1;
  sub_1004A4914();
  v19 = tracingSignposter.unsafeMutableAddressor();
  v36 = v6;
  v37 = v5;
  (*(v6 + 16))(v8, v19, v5);
  (*(v10 + 16))(v15, v18, v9);
  sub_1004A4A34();
  swift_allocObject();
  sub_1004A4A24();
  v20 = sub_1004A4934();
  sub_1004A4A14();
  v21 = sub_1004A6134();
  if (sub_1004A6354())
  {
    v31 = v21;

    v22 = v35;
    sub_1004A4A44();

    v23 = v33;
    v24 = v22;
    v25 = v34;
    if ((*(v33 + 88))(v24, v34) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v26 = 0;
      v35 = "[Error] Interval already ended";
    }

    else
    {
      (*(v23 + 8))(v35, v25);
      v35 = "End syncRequestId: #%u";
      v26 = 1;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    *(v27 + 1) = v26;
    *(v27 + 2) = 1024;
    *(v27 + 4) = v32;
    v28 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v31, v28, "SyncRequest", v35, v27, 8u);
  }

  v29 = *(v10 + 8);
  v29(v12, v9);
  (*(v36 + 8))(v8, v37);
  return (v29)(v18, v9);
}

uint64_t Engine.Logger.l.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004A4A74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_100233C90(unint64_t *a1)
{
  v68 = type metadata accessor for ConnectionStatus(0);
  v2 = *(v68 - 8);
  __chkstk_darwin(v68 - 8);
  v58 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v55 - v5;
  __chkstk_darwin(v6);
  v71 = &v55 - v7;
  v8 = sub_10000C9C0(&qword_1005D5930, &qword_1004E9148);
  __chkstk_darwin(v8 - 8);
  v73 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v55 - v11;
  v67 = sub_10000C9C0(&qword_1005D5938, &qword_1004E9150);
  v12 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  __chkstk_darwin(v20);
  v72 = &v55 - v21;
  v59 = sub_10022351C(_swiftEmptyArrayStorage);
  v23 = *a1;
  v22 = a1[1];
  v24 = a1[2];
  v74 = a1[3];
  v75 = v22;
  v78 = a1[4];
  v79 = v24;
  v81[0] = v23;
  if (v23 >> 62)
  {
    goto LABEL_39;
  }

  v76 = v23 & 0xFFFFFFFFFFFFFF8;
  v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v26 = a1[6];
  v61 = a1[5];
  v60 = v26;
  sub_10000E268(v81, &v80, &qword_1005D5940, &qword_1004E9158);
  v27 = v23;
  v77 = v23 & 0xC000000000000001;
  v65 = (v12 + 48);
  v66 = (v12 + 56);
  v64 = (v2 + 7);
  v57 = v2;
  v63 = (v2 + 6);

  v28 = 0;
  a1 = &qword_1005D5938;
  v2 = &qword_1004E9150;
  while (1)
  {
    while (1)
    {
      if (v28 != v25)
      {
        do
        {
          if (v77)
          {
            v31 = sub_1004A6794();
            v23 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if ((v28 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v76 = v23 & 0xFFFFFFFFFFFFFF8;
              v25 = sub_1004A6A34();
              goto LABEL_3;
            }

            if (v28 >= *(v76 + 16))
            {
              goto LABEL_38;
            }

            v31 = *(v27 + 8 * v28 + 32);

            v23 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_37;
            }
          }

          v80 = v31;
          v75(&v80);

          sub_100025FDC(v16, v19, &qword_1005D5938, &qword_1004E9150);
          v12 = v78;
          if (v74(v19))
          {
            sub_100025FDC(v19, v69, &qword_1005D5938, &qword_1004E9150);
            v30 = 0;
            v28 = v23;
            goto LABEL_19;
          }

          sub_100025F40(v19, &qword_1005D5938, &qword_1004E9150);
          ++v28;
        }

        while (v23 != v25);
      }

      v30 = 1;
      v28 = v25;
LABEL_19:
      v32 = v67;
      v33 = 1;
      v34 = v69;
      (*v66)(v69, v30, 1, v67);
      v35 = v34;
      v36 = v73;
      sub_100025FDC(v35, v73, &qword_1005D5930, &qword_1004E9148);
      if ((*v65)(v36, 1, v32) != 1)
      {
        v37 = v62;
        sub_100025FDC(v73, v62, &qword_1005D5938, &qword_1004E9150);
        v61(v37);
        sub_100025F40(v37, &qword_1005D5938, &qword_1004E9150);
        v33 = 0;
      }

      v38 = v72;
      v39 = v33;
      v12 = v68;
      (*v64)(v72, v39, 1, v68);
      if ((*v63)(v38, 1, v12) == 1)
      {
        sub_100025F40(v81, &qword_1005D5940, &qword_1004E9158);

        return v59;
      }

      v29 = v71;
      sub_100223820(v38, v71);
      v23 = v70;
      sub_10016AF30(v29, v70, type metadata accessor for ConnectionStatus);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 3) >= 2)
      {
        break;
      }

LABEL_5:
      sub_1002344E0(v29, type metadata accessor for ConnectionStatus);
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1002344E0(v71, type metadata accessor for ConnectionStatus);
      v29 = v70;
      goto LABEL_5;
    }

    v41 = *(v70 + 8);
    v23 = *v70;
    sub_10016AF30(v71, v58, type metadata accessor for ConnectionStatus);
    v42 = v59;
    LODWORD(v56) = swift_isUniquelyReferenced_nonNull_native();
    v80 = v42;
    v44 = sub_100063B5C(v23, v41);
    v45 = *(v42 + 16);
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      break;
    }

    if (*(v42 + 24) >= v47)
    {
      if (v56)
      {
        if ((v43 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v56 = v44;
        LODWORD(v59) = v43;
        sub_100239744();
        v44 = v56;
        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      v12 = v44;

      v59 = v80;
      sub_100236970(v58, v80[7] + v57[9] * v12);
      sub_1002344E0(v71, type metadata accessor for ConnectionStatus);
    }

    else
    {
      LODWORD(v59) = v43;
      sub_100238FE4(v47, v56);
      v48 = sub_100063B5C(v23, v41);
      if ((v59 & 1) != (v49 & 1))
      {
        goto LABEL_42;
      }

      v44 = v48;
      if (v59)
      {
        goto LABEL_31;
      }

LABEL_33:
      v12 = v80;
      v80[(v44 >> 6) + 8] |= 1 << v44;
      v50 = *(v12 + 48) + 16 * v44;
      *v50 = v23;
      *(v50 + 8) = v41;
      sub_100223820(v58, *(v12 + 56) + v57[9] * v44);
      sub_1002344E0(v71, type metadata accessor for ConnectionStatus);
      v51 = *(v12 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_41;
      }

      v59 = v12;
      *(v12 + 16) = v53;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1002344E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100234540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t sub_100234584()
{

  sub_1000CB7B4(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10023461C(uint64_t a1)
{
  result = type metadata accessor for Engine.Logger(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StateWithTasks(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ExternalState(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1002347CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10023484C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100234910(unint64_t a1)
{
  v3 = (*(v1 + 32))();
  sub_100232998(a1);
  return v3;
}

uint64_t sub_100234A38()
{
  v1 = v0;
  v2 = sub_10024FDC4();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100239320();
    v6 = v10;
  }

  v7 = v4;
  v8 = *(*(v6 + 56) + 16 * v4);
  sub_100234B78(v7, v6);
  *v1 = v6;
  return v8;
}

uint64_t sub_100234ACC()
{
  v1 = v0;
  v2 = sub_10024FDC4();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100239484();
    v6 = v10;
  }

  v7 = v4;
  v8 = *(*(v6 + 56) + 24 * v4);
  sub_100234D0C(v7, v6);
  *v1 = v6;
  return v8;
}

Swift::Int sub_100234B78(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 4 * v6);
      sub_1004A6E94();
      sub_1004A6EE4(v9);
      result = sub_1004A6F14();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 4 * v3);
        v13 = (v11 + 4 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100234D0C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_1004A6E94();
      sub_1004A6EE4(v10);
      result = sub_1004A6F14();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100234EAC(int a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_10024FDC4();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100238AB0(v18, a5 & 1);
      result = sub_10024FDC4();
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_100239484();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 4 * result) = a4;
    v25 = v23[7] + 24 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * result;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
}

unint64_t sub_100235020(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10024FDC4();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100238820(v16, a4 & 1);
      result = sub_10024FDC4();
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100239320();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void sub_100235180(unint64_t a1, uint64_t a2, char a3, uint64_t a4, Swift::UInt a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_100063C84(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_10013A4A0();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1000C3328(v20, a6 & 1);
    v15 = sub_100063C84(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      sub_1004A6E24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    *v26 = a1;
    *(v26 + 4) = BYTE4(a1) & 1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;
  }

  else
  {
    sub_100235304(v15, a4, a5, a1 | ((HIDWORD(a1) & 1) << 32), a2, a3 & 1, v25);
  }
}

unint64_t sub_100235304(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 4) = BYTE4(a4) & 1;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_100235368(uint64_t a1, Swift::Int a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_100239484();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(*(v9 + 48) + 4 * a2);
    v11 = *(v9 + 56) + 24 * a2;
    *a1 = *v11;
    *(a1 + 8) = *(v11 + 8);
    sub_100234D0C(a2, v9);
    *v4 = v9;
    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1002354AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005D5938, &qword_1004E9150);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10000E268(a1, &v9 - v5, &qword_1005D5938, &qword_1004E9150);
  v7 = type metadata accessor for ConnectionStatus(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    return sub_100223820(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002355A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (**a6)(uint64_t a1), uint64_t a7)
{
  v108 = a6;
  v109 = a1;
  v113 = a2;
  v114 = a3;
  v105 = sub_1004A5244();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1004A5274();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1004A5234();
  v115 = *(v111 - 8);
  __chkstk_darwin(v111);
  v112 = (&v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v110 = (&v96 - v14);
  v15 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v15 - 8);
  v17 = &v96 - v16;
  v18 = sub_1004A4A74();
  v19 = *(v18 - 8);
  v116 = v18;
  v117 = v19;
  __chkstk_darwin(v18);
  v107 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v96 - v23;
  v99 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v98 = *(v19 + 56);
  v98(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger, 1, 1, v22);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections) = _swiftEmptyArrayStorage;
  v25 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID) = 0;
  v26 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffLoggingRateLimit;
  *v27 = 0;
  *(v27 + 8) = 1;
  *(v27 + 16) = 2000000000;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer) = 0;
  v28 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
  v29 = type metadata accessor for ConnectionStatus.Error(0);
  (*(*(v29 - 8) + 56))(a7 + v28, 1, 1, v29);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents) = 0;
  v30 = (a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);
  *v30 = sub_10022343C(_swiftEmptyArrayStorage);
  v30[1] = 0x4014000000000000;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID) = 1;
  v31 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  v32 = static MonotonicTime.now()();
  *v31 = 0;
  *(v31 + 8) = v32;
  v33 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastLogAllConnectionStates;
  *(a7 + v33) = static MonotonicTime.now()();
  v34 = a5;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue) = a5;
  v35 = (a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName);
  v37 = v113;
  v36 = v114;
  *v35 = v109;
  v35[1] = v37;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits) = v36;
  v106 = a4;
  sub_10016AF30(a4, a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, type metadata accessor for ConnectionConfiguration);
  v38 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner;
  v39 = v108;
  v40 = *(v108 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner);
  v97 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID) = *(v40 + 16);
  *(v25 + 8) = &off_1005A98B0;
  swift_unknownObjectWeakAssign();
  v41 = v34;

  sub_1004A4A64();
  v42 = v116;
  v43 = *(v117 + 16);
  v43(v17, v24, v116);
  (v98)(v17, 0, 1, v42);
  v44 = v99;
  swift_beginAccess();
  sub_100236AAC(v17, a7 + v44);
  swift_endAccess();
  type metadata accessor for Timer();
  swift_allocObject();
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) = Timer.init(queue:)(v41);
  LOBYTE(v17) = (*(v39 + v38))[16];
  v45 = v107;
  v99 = v24;
  v43(v107, v24, v42);
  v46 = swift_allocObject();
  *(v46 + 24) = &off_1005A98B0;
  swift_unknownObjectWeakInit();
  v47 = v41;

  type metadata accessor for DataTransferReportAccumulator(0);
  v48 = swift_allocObject();
  v49 = v48 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state;
  *v49 = 0;
  *(v49 + 8) = 0;
  *(v49 + 16) = 1;
  *(v48 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer) = 0;
  *(v48 + 16) = v47;
  *(v48 + 24) = v17;
  v43((v48 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_logger), v45, v42);
  v50 = (v48 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler);
  *v50 = sub_100236B54;
  v50[1] = v46;
  v51 = v110;
  *v110 = 1;
  v53 = v115 + 104;
  v52 = *(v115 + 104);
  LODWORD(v114) = enum case for DispatchTimeInterval.seconds(_:);
  v52(v51);
  v54 = v112;
  *v112 = 500;
  LODWORD(v109) = enum case for DispatchTimeInterval.milliseconds(_:);
  v115 = v53;
  v98 = v52;
  v52(v54);
  v55 = swift_allocObject();
  swift_weakInit();
  v123 = sub_100236B5C;
  v124 = v55;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_10019C778;
  v122 = &unk_1005A9AF8;
  v56 = _Block_copy(&aBlock);
  v113 = type metadata accessor for RestartableTimer();
  swift_allocObject();
  v57 = v47;

  v59 = RestartableTimer.init(queue:repeating:leeway:closure:)(v57, v51, v54, v56, v58);
  v60 = *(v117 + 8);
  v61 = v107;
  v62 = v108;
  v117 += 8;
  v107 = v60;
  (v60)(v61, v116);

  *(v48 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer) = v59;

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator) = v48;
  aBlock = 0;
  v120 = 0xE000000000000000;
  sub_1004A6724(17);

  aBlock = 0x697463656E6E6F43;
  v120 = 0xEF2D6C6F6F506E6FLL;
  LOBYTE(v118) = (*(v62 + v97))[16];
  sub_10014F900();
  v63 = sub_1004A5A84();
  v65 = v64;
  if (sub_1004A5924() <= 1)
  {
    v125._countAndFlagsBits = 48;
    v125._object = 0xE100000000000000;
    sub_1004A5994(v125);
  }

  type metadata accessor for StateCapture();
  v126._countAndFlagsBits = v63;
  v126._object = v65;
  sub_1004A5994(v126);

  v66 = aBlock;
  v67 = v120;
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = v57;

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture) = StateCapture.__allocating_init(title:queue:capture:)(v66, v67, v69, sub_100236B64, v68);

  v71 = v110;
  v70 = v111;
  *v110 = 2;
  v72 = v98;
  (v98)(v71, v114, v70);
  v73 = v112;
  *v112 = 100;
  (v72)(v73, v109, v70);
  v74 = swift_allocObject();
  swift_weakInit();
  v123 = sub_100236B6C;
  v124 = v74;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v108 = &v121;
  v121 = sub_10019C778;
  v122 = &unk_1005A9B48;
  v75 = _Block_copy(&aBlock);
  swift_allocObject();
  v76 = v69;

  v78 = RestartableTimer.init(queue:repeating:leeway:closure:)(v76, v71, v73, v75, v77);

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer) = v78;

  *v71 = 2;
  (v72)(v71, v114, v70);
  *v73 = 100;
  (v72)(v73, v109, v70);
  v79 = swift_allocObject();
  swift_weakInit();
  v123 = sub_100236B74;
  v124 = v79;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_10019C778;
  v122 = &unk_1005A9B70;
  v80 = _Block_copy(&aBlock);
  swift_allocObject();
  v81 = v76;

  v83 = RestartableTimer.init(queue:repeating:leeway:closure:)(v81, v71, v73, v80, v82);

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer) = v83;

  *v71 = 10;
  v84 = v114;
  (v72)(v71, v114, v70);
  *v73 = 1;
  (v72)(v73, v84, v70);
  v85 = swift_allocObject();
  swift_weakInit();
  v123 = sub_100236B7C;
  v124 = v85;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_10019C778;
  v122 = &unk_1005A9B98;
  v86 = _Block_copy(&aBlock);
  swift_allocObject();
  v87 = v81;

  v89 = RestartableTimer.init(queue:repeating:leeway:closure:)(v87, v71, v73, v86, v88);

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer) = v89;

  v90 = swift_allocObject();
  swift_weakInit();

  v123 = sub_100236B84;
  v124 = v90;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_10019C778;
  v122 = &unk_1005A9BC0;
  v91 = _Block_copy(&aBlock);

  v92 = v100;
  sub_1004A5254();
  v118 = _swiftEmptyArrayStorage;
  sub_1002367D8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60, &protocol conformance descriptor for [A]);
  v93 = v103;
  v94 = v105;
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v91);

  sub_1002344E0(v106, type metadata accessor for ConnectionConfiguration);
  (*(v104 + 8))(v93, v94);
  (*(v101 + 8))(v92, v102);
  (v107)(v99, v116);

  return a7;
}

uint64_t sub_100236568(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1004A5954();

    return sub_1004A5AB4();
  }

  return result;
}

uint64_t sub_100236604()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100236644()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023667C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return v2(v6);
}

uint64_t sub_1002366D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1002366E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1002366F0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100020944(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100236708()
{
  sub_1000CB848(*(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100236750()
{
  sub_1000CB7B4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_10023678C()
{
  result = qword_1005D5908;
  if (!qword_1005D5908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D5908);
  }

  return result;
}

uint64_t sub_1002367D8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_100236820(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_10024B4A8(a1, v2, ObjectType, a2);
}

uint64_t sub_100236870()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100236930()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100236970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002369D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5950, &qword_1004E9168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100236A44(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D5950, &qword_1004E9168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100236AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100236B1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100236BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005D58F8, &unk_1004E9190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100236CD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000C9C0(&qword_1005D58F8, &unk_1004E9190);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ExternalState(uint64_t a1)
{
  result = qword_1005D59C8;
  if (!qword_1005D59C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100236DE4(uint64_t a1)
{
  sub_100236E68(319);
  if (v1 <= 0x3F)
  {
    sub_100236EC0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100236E68(uint64_t a1)
{
  if (!qword_1005D59D8)
  {
    type metadata accessor for Activity(255);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D59D8);
    }
  }
}

void sub_100236EC0(uint64_t a1)
{
  if (!qword_1005D59E0)
  {
    sub_100026044();
    v1 = sub_1004A5DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D59E0);
    }
  }
}

char *sub_100236F1C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for Activity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D5A10, &qword_1004E91B8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = sub_10000C9C0(&qword_1005D58F8, &unk_1004E9190);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v41 = a1;
  sub_100237490(a1, &v39 - v19);
  v40 = *(v5 + 56);
  v40(v20, 0, 1, v4);
  v43 = v2;
  sub_1002374F4(v2, v17);
  v21 = *(v9 + 56);
  sub_1002374F4(v20, v11);
  sub_1002374F4(v17, &v11[v21]);
  v22 = *(v5 + 48);
  if (v22(v11, 1, v4) == 1)
  {
    sub_100025F40(v17, &qword_1005D58F8, &unk_1004E9190);
    sub_100025F40(v20, &qword_1005D58F8, &unk_1004E9190);
    if (v22(&v11[v21], 1, v4) == 1)
    {
      sub_100025F40(v11, &qword_1005D58F8, &unk_1004E9190);
      v23 = _swiftEmptyArrayStorage;
      v25 = v42;
      v24 = v43;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1002374F4(v11, v14);
  if (v22(&v11[v21], 1, v4) == 1)
  {
    sub_100025F40(v17, &qword_1005D58F8, &unk_1004E9190);
    sub_100025F40(v20, &qword_1005D58F8, &unk_1004E9190);
    sub_10023759C(v14);
LABEL_6:
    sub_100025F40(v11, &qword_1005D5A10, &qword_1004E91B8);
    v25 = v42;
    v24 = v43;
    goto LABEL_7;
  }

  sub_1002375F8(&v11[v21], v7);
  v38 = static Activity.__derived_struct_equals(_:_:)(v14, v7);
  sub_10023759C(v7);
  sub_100025F40(v17, &qword_1005D58F8, &unk_1004E9190);
  sub_100025F40(v20, &qword_1005D58F8, &unk_1004E9190);
  sub_10023759C(v14);
  sub_100025F40(v11, &qword_1005D58F8, &unk_1004E9190);
  v25 = v42;
  v24 = v43;
  if (v38)
  {
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

LABEL_7:
  sub_100025F40(v24, &qword_1005D58F8, &unk_1004E9190);
  v26 = v41;
  sub_100237490(v41, v24);
  v40(v24, 0, 1, v4);
  v27 = swift_allocBox();
  sub_100237490(v26, v28);
  v23 = sub_100237BB8(0, 1, 1, _swiftEmptyArrayStorage);
  v30 = *(v23 + 2);
  v29 = *(v23 + 3);
  if (v30 >= v29 >> 1)
  {
    v23 = sub_100237BB8((v29 > 1), v30 + 1, 1, v23);
  }

  *(v23 + 2) = v30 + 1;
  *&v23[8 * v30 + 32] = v27 | 0x9000000000000002;
LABEL_10:
  v31 = *(type metadata accessor for ExternalState(0) + 20);
  v32 = *(v24 + v31);
  if (*(v25 + 16) <= v32[2] >> 3)
  {
    v44 = *(v24 + v31);

    sub_10015CC4C(v25);
    v33 = v44;
    if (v44[2])
    {
      goto LABEL_12;
    }

LABEL_18:

    goto LABEL_19;
  }

  v33 = sub_10015FC1C(v25, v32);
  if (!v33[2])
  {
    goto LABEL_18;
  }

LABEL_12:
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_100237BB8(0, *(v23 + 2) + 1, 1, v23);
  }

  v36 = *(v23 + 2);
  v35 = *(v23 + 3);
  if (v36 >= v35 >> 1)
  {
    v23 = sub_100237BB8((v35 > 1), v36 + 1, 1, v23);
  }

  *(v23 + 2) = v36 + 1;
  *&v23[8 * v36 + 32] = v34 | 0x1000000000000000;
LABEL_19:

  *(v24 + v31) = v25;
  return v23;
}

uint64_t sub_100237490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002374F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D58F8, &unk_1004E9190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100237564()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023759C(uint64_t a1)
{
  v2 = type metadata accessor for Activity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002375F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10023766C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  if (v9)
  {
    while (1)
    {
LABEL_12:
      v15 = __clz(__rbit64(v9)) | (v11 << 6);
      v16 = *(*(a2 + 56) + 8 * v15);
      if (v16 <= a1)
      {
        v13 = a1 - v16;
        if (__OFSUB__(a1, v16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (__OFSUB__(v16, a1))
        {
          goto LABEL_26;
        }

        v13 = a1 - v16;
        if (__OFSUB__(0, v16 - a1))
        {
          goto LABEL_27;
        }
      }

      v9 &= v9 - 1;
      if (v13 / 1000000000.0 >= a3)
      {
        v17 = *(*(a2 + 48) + 4 * v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1001EC450(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v19 = *(v12 + 3);
        v20 = v18 + 1;
        if (v18 >= v19 >> 1)
        {
          v24 = v18 + 1;
          v21 = v12;
          v22 = *(v12 + 2);
          v23 = sub_1001EC450((v19 > 1), v18 + 1, 1, v21);
          v18 = v22;
          v20 = v24;
          v12 = v23;
        }

        *(v12 + 2) = v20;
        *&v12[4 * v18 + 32] = v17;
        if (!v9)
        {
          break;
        }
      }

      else if (!v9)
      {
        break;
      }
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      sub_10023A1BC(v12);

      return;
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

char *sub_10023786C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D5A30, &qword_1004E9210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002379DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100237BD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D5A18, &qword_1004E91F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100237CF0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_10000C9C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100237DFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D5A20, &qword_1004E9200);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1004A6F14();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1002380E0(uint64_t result, unint64_t a2, char a3)
{
  v32 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_100237DFC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10023842C();
      goto LABEL_47;
    }

    sub_10023856C(v5 + 1);
  }

  v7 = 0x72657865646E69;
  v8 = *v3;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  result = sub_1004A6F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v31 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = 0x6C69662D6B636162;
    v12 = 0x6369646F69726570;
    v13 = v8;
    do
    {
      v14 = *(*(v8 + 48) + a2);
      if (v14 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v15 = v11;
        }

        else
        {
          v15 = v7;
        }

        if (*(*(v8 + 48) + a2))
        {
          v16 = 0xE90000000000006CLL;
        }

        else
        {
          v16 = 0xE700000000000000;
        }
      }

      else if (v14 == 2)
      {
        v16 = 0xE800000000000000;
        v15 = 0x6574616E6F646572;
      }

      else
      {
        if (v14 == 3)
        {
          v15 = v12;
        }

        else
        {
          v15 = 1752397168;
        }

        if (v14 == 3)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE400000000000000;
        }
      }

      v17 = v12;
      if (v32 == 3)
      {
        v18 = v12;
      }

      else
      {
        v18 = 1752397168;
      }

      if (v32 == 3)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if (v32 == 2)
      {
        v18 = 0x6574616E6F646572;
        v19 = 0xE800000000000000;
      }

      v20 = v7;
      v21 = v11;
      if (!v32)
      {
        v11 = v7;
      }

      v22 = 0xE90000000000006CLL;
      if (!v32)
      {
        v22 = 0xE700000000000000;
      }

      v23 = v32 <= 1u ? v11 : v18;
      v24 = v32 <= 1u ? v22 : v19;
      if (v15 == v23 && v16 == v24)
      {
        goto LABEL_50;
      }

      v25 = sub_1004A6D34();

      if (v25)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v10;
      v7 = v20;
      v11 = v21;
      v12 = v17;
      v8 = v13;
    }

    while (((*(v31 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v32;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void *sub_10023842C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D5A20, &qword_1004E9200);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_10023856C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D5A20, &qword_1004E9200);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1004A6F14();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100238820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005D53E8, &qword_1004E8CC8);
  result = sub_1004A6A64();
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EE4(v20);
      result = sub_1004A6F14();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
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

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100238AB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&unk_1005D53F0, &unk_1004E8CD0);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 16);
      v35 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
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
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v35;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_100238D64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005D53E0, &qword_1004E8CC0);
  result = sub_1004A6A64();
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1004A6E94();
      sub_1004A6EE4(v20);
      result = sub_1004A6F14();
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
      *(*(v7 + 48) + 4 * v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_100238FE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ConnectionStatus(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000C9C0(&qword_1005D53D8, &qword_1004E8CB8);
  v40 = v4;
  result = sub_1004A6A64();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 16 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100223820(v28, v41);
      }

      else
      {
        sub_10023A230(v28, v41);
      }

      sub_1004A6E94();
      sub_1004A6EB4(v26 | (v26 << 32));
      result = sub_1004A6F14();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      result = sub_100223820(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_100239320()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D53E8, &qword_1004E8CC8);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_100239484()
{
  v1 = v0;
  sub_10000C9C0(&unk_1005D53F0, &unk_1004E8CD0);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v21 = *(v18 + 8);
        v20 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v21;
        *(v22 + 16) = v20;
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

void *sub_1002395F8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D53E0, &qword_1004E8CC0);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_100239744()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005D53D8, &qword_1004E8CB8);
  v4 = *v0;
  v5 = sub_1004A6A54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 48) + 16 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10023A230(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = *(v32 + 48) + v21;
        *v28 = v23;
        *(v28 + 8) = v24;
        sub_100223820(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void *sub_10023997C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_100239C2C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100239A0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005D53E0, &qword_1004E8CC0);
  result = sub_1004A6A74();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_1004A6E94();
    sub_1004A6EE4(v17);
    result = sub_1004A6F14();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 4 * v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

Swift::Int sub_100239C2C(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = result;
  v23 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    if (*(a4 + 16))
    {
      v16 = *(*(a3 + 48) + 4 * v15);
      sub_1004A6E94();
      sub_1004A6EE4(v16);
      result = sub_1004A6F14();
      v17 = -1 << *(a4 + 32);
      v18 = result & ~v17;
      if ((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (*(*(a4 + 48) + 4 * v18) != v16)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_100239A0C(v22, a2, v23, a3);
        }
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_100239A0C(v22, a2, v23, a3);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_100239DDC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(v9);
    bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_100239C2C(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();

  v12 = sub_10023997C(v13, v7, a1, a2);

  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t sub_100239F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;

  v7 = sub_100239DDC(v6, a1);

  *v3 = v7;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(a1 + 48) + ((v12 << 8) | (4 * v14)));
    if (v7[2])
    {
      sub_10024FDC4();
      if (v16)
      {
        continue;
      }
    }

    v31 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v32 = *v3;
    v19 = sub_10024FDC4();
    v21 = *(v18 + 16);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    v25 = v20;
    if (*(v18 + 24) >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v27 = v19;
      sub_1002395F8();
      v19 = v27;
      a2 = v31;
      v7 = v32;
      if ((v25 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_17:
      *(v7[7] + 8 * v19) = a2;
      *v3 = v7;
    }

    else
    {
      sub_100238D64(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_10024FDC4();
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

LABEL_16:
      a2 = v31;
      v7 = v32;
      if (v25)
      {
        goto LABEL_17;
      }

LABEL_19:
      v7[(v19 >> 6) + 8] |= 1 << v19;
      *(v7[6] + 4 * v19) = v15;
      *(v7[7] + 8 * v19) = a2;
      v28 = v7[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      v7[2] = v29;
      *v3 = v7;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10023A1BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CEBD4();
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10008854C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10023A230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (**static Engine.makeEngineAndPersistence<A>(configuration:windowOfInterestSizes:environment:makePersistence:)(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, const char *a6, int a7, uint64_t (*a8)(uint64_t a1), uint64_t (*a9)(void, uint64_t (*)(), uint64_t), uint64_t a10, uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v36 = a2;
  v37 = a8;
  v42 = a7;
  v40 = a3;
  v41 = a6;
  v38 = a4;
  v39 = a5;
  v34 = a11;
  v35 = a12;
  v32 = a9;
  v33 = a10;
  v13 = type metadata accessor for Configuration(0);
  __chkstk_darwin(v13 - 8);
  v31 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1004A6164();
  __chkstk_darwin(v15);
  v16 = sub_1004A6074();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023A628();
  v45 = *a1;
  v43 = 0xD00000000000001BLL;
  v44 = 0x80000001004AC790;
  sub_1004A5994(v45);
  v20.n128_f64[0] = (*(v17 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  v43 = _swiftEmptyArrayStorage;
  sub_10023A674(v20);
  sub_10000C9C0(&qword_1005D5A58, &unk_1004E9230);
  sub_10023A6CC();
  sub_1004A6544();
  v21 = sub_1004A6174();
  type metadata accessor for EngineBox();
  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for EngineTracingIDOwner();
  swift_allocObject();

  v23 = EngineTracingIDOwner.init()();
  v24 = v32(*(v23 + 16), sub_10023A7C4, v22);
  v25 = swift_allocObject();
  v26 = v35;
  v25[2] = v34;
  v25[3] = v26;
  v25[4] = v24;
  v27 = v31;
  sub_10023A840(a1, v31);
  swift_allocObject();
  swift_unknownObjectRetain();
  v28 = v36;

  v29 = sub_10022B944(v23, v27, v28, v40, v38 & 1, v39 & 0x101FF, v41, v42, v37, v21, sub_10023A808, v25);

  swift_weakAssign();

  return v29;
}

unint64_t sub_10023A628()
{
  result = qword_1005D5A50;
  if (!qword_1005D5A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D5A50);
  }

  return result;
}

unint64_t sub_10023A674(__n128 a1)
{
  result = qword_1005D91D0;
  if (!qword_1005D91D0)
  {
    v4 = sub_1004A6164();
    result = swift_getWitnessTable(&protocol conformance descriptor for OS_dispatch_workloop.Attributes, v4, v1, v2);
    atomic_store(result, &qword_1005D91D0);
  }

  return result;
}

unint64_t sub_10023A6CC()
{
  result = qword_1005D91E0;
  if (!qword_1005D91E0)
  {
    v3 = sub_10000DEFC(&qword_1005D5A58, &unk_1004E9230);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D91E0);
  }

  return result;
}

uint64_t sub_10023A754(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    Engine.persistenceDidSend(_:)(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_10023A7D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10023A840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023A8A4()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10023A8DC()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown))
  {
    return result;
  }

  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) = 1;
  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture))
  {
    __break(1u);
    goto LABEL_24;
  }

  StateCapture.tearDown()();

  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  RestartableTimer.stop()();

  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  RestartableTimer.stop()();

  v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v1 = *(v1 + v10);
  if (v1 >> 62)
  {
LABEL_22:
    v11 = sub_1004A6A34();
    goto LABEL_8;
  }

  v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v13 = sub_1004A6794();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_17:
          __break(1u);
        }
      }

      else
      {
        if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v13 = *(v1 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_17;
        }
      }

      (*(*v13 + 536))();

      ++v12;
    }

    while (v14 != v11);
  }
}

uint64_t sub_10023AB80(uint64_t a1)
{
  v4 = v1;
  v6 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_1004A53F4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v15 = v14;
  v16 = sub_1004A5404();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v18(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v4 + v19, v8, &qword_1005D5968, &unk_1004E9180);
  v20 = sub_1004A4A74();
  v3 = *(v20 - 8);
  result = (*(v3 + 48))(v8, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_retain_n();

    v16 = sub_1004A4A54();
    v2 = sub_1004A5FF4();
    v22 = &unk_1005D5000;
    if (!os_log_type_enabled(v16, v2))
    {

      goto LABEL_8;
    }

    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36[0] = v35;
    *v17 = 68158722;
    *(v17 + 4) = 2;
    *(v17 + 8) = 256;
    *(v17 + 10) = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v17 + 11) = 2048;
    v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v24 = *(v4 + v23);
    if (v24 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004A6A34())
    {

      *(v17 + 13) = i;

      *(v17 + 21) = 2082;
      v26 = ConnectionID.debugDescription.getter(*(a1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v28 = sub_10015BA6C(v26, v27, v36);

      *(v17 + 23) = v28;
      *(v17 + 31) = 2048;
      v30 = (*(*a1 + 432))(v29);

      *(v17 + 33) = v30;

      _os_log_impl(&_mh_execute_header, v16, v2, "[%.*hhx] Received authenticated connection with better path. Cancelling all (%ld) existing connection and switching to the new connection %{public}s [C%llu].", v17, 0x29u);
      sub_1000197E0(v35);

      v22 = &unk_1005D5000;
LABEL_8:
      v31 = *(v3 + 8);
      v3 += 8;
      v31(v8, v20);
      v17 = v22[353];
      swift_beginAccess();
      v8 = *(v4 + v17);
      if (v8 >> 62)
      {
LABEL_22:
        v20 = sub_1004A6A34();
        if (!v20)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_17;
        }
      }

      if (v20 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_25:
      ;
    }

    for (j = 0; j != v20; ++j)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v33 = sub_1004A6794();
      }

      else
      {
        v33 = *(v8 + 8 * j + 32);
      }

      (*(*v33 + 536))();
    }

LABEL_17:
    swift_beginAccess();

    sub_1004A5BF4();
    if (*((*(v4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004A5C44();
    }

    sub_1004A5C84();
    swift_endAccess();
    result = (*(*a1 + 624))(v4, &off_1005A9CB8);
    if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
    {

      RestartableTimer.start()();
    }
  }

  __break(1u);
  return result;
}

void sub_10023B180(char a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v4 - 8);
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v45[-v8];
  __chkstk_darwin(v10);
  v12 = &v45[-v11];
  __chkstk_darwin(v13);
  v15 = &v45[-v14];
  v16 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) <= 1u)
  {
    if (!*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState))
    {
      return;
    }

    v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v2 + v17, v15, &qword_1005D5968, &unk_1004E9180);
    v18 = sub_1004A4A74();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      goto LABEL_29;
    }

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v20 = sub_1004A4A54();
    v21 = sub_1004A6034();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 68157952;
      *(v22 + 4) = 2;
      *(v22 + 8) = 256;
      *(v22 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx] Credentials were invalid. Credentials did change.", v22, 0xBu);
    }

    else
    {
    }

    v34 = *(v19 + 8);
    v35 = v15;
    goto LABEL_19;
  }

  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 2)
  {
    v29 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v2 + v29, v9, &qword_1005D5968, &unk_1004E9180);
    v18 = sub_1004A4A74();
    v30 = *(v18 - 8);
    if ((*(v30 + 48))(v9, 1, v18) == 1)
    {
LABEL_31:
      __break(1u);
      return;
    }

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v31 = sub_1004A4A54();
    v32 = sub_1004A6034();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 68157952;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      *(v33 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v31, v32, "[%.*hhx] Credentials state was unknown. Credentials did change.", v33, 0xBu);
    }

    else
    {
    }

    v34 = *(v30 + 8);
    v35 = v9;
LABEL_19:
    v34(v35, v18);
    goto LABEL_20;
  }

  v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v2 + v23, v12, &qword_1005D5968, &unk_1004E9180);
  v24 = sub_1004A4A74();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v26 = sub_1004A4A54();
  v27 = sub_1004A6034();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 68157952;
    *(v28 + 4) = 2;
    *(v28 + 8) = 256;
    *(v28 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&_mh_execute_header, v26, v27, "[%.*hhx] Credentials were maybe invalid. Credentials did change.", v28, 0xBu);
  }

  else
  {
  }

  (*(v25 + 8))(v12, v24);
LABEL_20:
  v36 = static MonotonicTime.now()();
  v37 = *v16;
  *v16 = 0;
  *(v16 + 8) = v36;
  sub_10023C770(v37);
  if ((a1 & 1) == 0)
  {
    v44 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
    swift_beginAccess();
    *v44 = 0;
    *(v44 + 8) = 0;
    *(v44 + 16) = 1;
    sub_1002414F4();
    sub_100241B8C();
    return;
  }

  v38 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v2 + v38, v6, &qword_1005D5968, &unk_1004E9180);
  v39 = sub_1004A4A74();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v6, 1, v39) == 1)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v41 = sub_1004A4A54();
  v42 = sub_1004A6034();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 68157952;
    *(v43 + 4) = 2;
    *(v43 + 8) = 256;
    *(v43 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&_mh_execute_header, v41, v42, "[%.*hhx] Not resetting backoff timer.", v43, 0xBu);
  }

  else
  {
  }

  (*(v40 + 8))(v6, v39);
}

unint64_t sub_10023B8B4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1004A6A34();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_1004A6794();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_10023B9D0()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v9 = *(v8 + 17);
  *(v8 + 17) = 0;
  if (v9 != 1)
  {
    return swift_endAccess();
  }

  if (*(v8 + 16))
  {
    swift_endAccess();
    v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v1 + v10, v4, &qword_1005D5968, &unk_1004E9180);
    v11 = sub_1004A4A74();
    v12 = *(v11 - 8);
    result = (*(v12 + 48))(v4, 1, v11);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v14 = sub_1004A4A54();
      v15 = sub_1004A6034();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 68157952;
        *(v16 + 4) = 2;
        *(v16 + 8) = 256;
        *(v16 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v14, v15, "[%.*hhx] Did clear wait-until-visible back-off.", v16, 0xBu);
      }

      else
      {
      }

      return (*(v12 + 8))(v4, v11);
    }

    goto LABEL_22;
  }

  v17 = *(v8 + 8);
  result = static MonotonicTime.now()();
  v18 = __OFSUB__(v17, result);
  v19 = v17 - result;
  if (v17 >= result)
  {
LABEL_12:
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = result - v17;
  if (__OFSUB__(result, v17))
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = __OFSUB__(0, v20);
  v19 = v17 - result;
  if (__OFSUB__(0, v20))
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  swift_endAccess();
  v21 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v1 + v21, v7, &qword_1005D5968, &unk_1004E9180);
  v22 = sub_1004A4A74();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v7, 1, v22);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v24 = sub_1004A4A54();
  v25 = sub_1004A6034();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v19 / 1000000000.0;
    v27 = swift_slowAlloc();
    *v27 = 68158464;
    *(v27 + 4) = 2;
    *(v27 + 8) = 256;
    *(v27 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v27 + 11) = 1040;
    *(v27 + 13) = 1;
    *(v27 + 17) = 2048;
    *(v27 + 19) = v26;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx] Did clear wait-until-visible back-off. Still backed-off for another %.*f seconds.", v27, 0x1Bu);
  }

  else
  {
  }

  return (*(v23 + 8))(v7, v22);
}

uint64_t sub_10023BE20(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits) = a1;

  v3 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  result = swift_beginAccess();
  v5 = *(v2 + v3);
  if (v5 >> 62)
  {
    result = sub_1004A6A34();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004A6794();
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      ++v7;
      v9 = *(*v8 + 336);

      v9(v10);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t sub_10023BF68(IMAP2Helpers::MonotonicTime a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = MonotonicTime.rateLimit(now:seconds:)(a1, 1.0);
  result = swift_endAccess();
  if (v4)
  {
    v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    result = swift_beginAccess();
    v7 = *(v2 + v6);
    if (v7 >> 62)
    {
      result = sub_1004A6A34();
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return result;
      }
    }

    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          sub_1004A6794();
        }

        else
        {
        }

        CommandConnection.logState()();
      }
    }
  }

  return result;
}

uint64_t sub_10023C098()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1004A5404();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = sub_100242860();
    if (!ConnectionIDsGroupedByState.containsActivelyConnecting.getter(v13))
    {
LABEL_8:
      v20 = static MonotonicTime.now()();
      v21 = ConnectionLimitsAndUsage.connectionsToBeCancelled(_:)(v13);

      swift_beginAccess();
      sub_100239F8C(v21, v20);
      swift_endAccess();

      return sub_100242B58(v20);
    }

    v14 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v1 + v14, v4, &qword_1005D5968, &unk_1004E9180);
    v15 = sub_1004A4A74();
    v16 = *(v15 - 8);
    result = (*(v16 + 48))(v4, 1, v15);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v17 = sub_1004A4A54();
      v18 = sub_1004A6004();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 68157952;
        *(v19 + 4) = 2;
        *(v19 + 8) = 256;
        *(v19 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v17, v18, "[%.*hhx] Some connections are actively connecting.", v19, 0xBu);
      }

      else
      {
      }

      (*(v16 + 8))(v4, v15);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10023C400@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  v9 = sub_1004A53F4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1004A5404();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
    swift_beginAccess();
    sub_10000E268(v1 + v17, v5, &qword_1005CCEB0, &qword_1004E9140);
    v18 = type metadata accessor for ConnectionStatus.Error(0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    if (v20(v5, 1, v18) == 1)
    {
      sub_1002406BC(v8);
      if (v20(v5, 1, v18) != 1)
      {
        sub_100025F40(v5, &qword_1005CCEB0, &qword_1004E9140);
      }
    }

    else
    {
      sub_10024DDB8(v5, v8, type metadata accessor for ConnectionStatus.Error);
      (*(v19 + 56))(v8, 0, 1, v18);
    }

    if (v20(v8, 1, v18) == 1)
    {
      sub_100025F40(v8, &qword_1005CCEB0, &qword_1004E9140);
      v21 = 1;
    }

    else
    {
      v22 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
      swift_beginAccess();
      sub_100240A70(*(v22 + 8), *(v22 + 16), a1);
      sub_10024DD58(v8, type metadata accessor for ConnectionStatus.Error);
      v21 = 0;
    }

    return (*(v19 + 56))(a1, v21, 1, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10023C770(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  v7 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
  if (v7 == v2)
  {
    return;
  }

  if (v7 == 1)
  {
    if (v2 != 2)
    {
      goto LABEL_10;
    }

    v7 = 1;
LABEL_8:
    if (v7 == v2)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v7 != 2)
  {
    goto LABEL_8;
  }

  if (v2 == 1)
  {
    v7 = 2;
LABEL_13:
    v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v1 + v8, v5, &qword_1005D5968, &unk_1004E9180);
    v9 = sub_1004A4A74();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      __break(1u);
    }

    else
    {
      v11 = v1;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v12 = sub_1004A4A54();
      v13 = sub_1004A6034();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v23 = v15;
        *v14 = 68158210;
        *(v14 + 4) = 2;
        *(v14 + 8) = 256;
        *(v14 + 10) = *(v11 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        v16 = 0xE400000000000000;
        *(v14 + 11) = 2082;
        v17 = 1685024615;
        v18 = 0xED000064696C6176;
        v19 = 0x6E6920656279616DLL;
        if (v7 != 2)
        {
          v19 = 0x6E776F6E6B6E75;
          v18 = 0xE700000000000000;
        }

        if (v7)
        {
          v17 = 0x64696C61766E69;
          v16 = 0xE700000000000000;
        }

        if (v7 <= 1)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        if (v7 <= 1)
        {
          v21 = v16;
        }

        else
        {
          v21 = v18;
        }

        v22 = sub_10015BA6C(v20, v21, &v23);

        *(v14 + 13) = v22;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%.*hhx] Credentials state -> %{public}s", v14, 0x15u);
        sub_1000197E0(v15);
      }

      else
      {
      }

      (*(v10 + 8))(v5, v9);
    }

    return;
  }

LABEL_10:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002302B4();
    swift_unknownObjectRelease();
  }

  v7 = *(v1 + v6);
  if (v7 != v2)
  {
    goto LABEL_13;
  }
}

uint64_t sub_10023CAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v6(v7 | 0xA000000000000006);
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10023CB7C@<X0>(unint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v4 = result;
  if (result)
  {
    sub_10023CC34(v8);

    v4 = sub_10024DE20();
    result = swift_allocObject();
    v5 = v8[3];
    *(result + 48) = v8[2];
    *(result + 64) = v5;
    *(result + 80) = v9;
    v6 = v8[1];
    *(result + 16) = v8[0];
    *(result + 32) = v6;
    v7 = &type metadata for ConnectionPool.CapturedValue;
  }

  else
  {
    v7 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = result;
  a2[3] = v7;
  a2[4] = v4;
  return result;
}

uint64_t sub_10023CC34@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for ConnectionStatus.Error(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v58 - v9;
  v10 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v10 - 8);
  v69 = &v58 - v11;
  v12 = sub_1004A53F4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12, v14);
  v18 = v17;
  v19 = sub_1004A5404();
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v16, v12);
  if (v19)
  {
    v66 = v6;
    v67 = v5;
    v20 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName);
    v16 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName + 8);
    *&v75[0] = 0;
    *(&v75[0] + 1) = 0xE000000000000000;
    v74 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_10014F900();

    v22 = sub_1004A5A84();
    v24 = v23;
    if (sub_1004A5924() <= 1)
    {
      v77._countAndFlagsBits = 48;
      v77._object = 0xE100000000000000;
      sub_1004A5994(v77);
    }

    v78._countAndFlagsBits = v22;
    v78._object = v24;
    sub_1004A5994(v78);

    v5 = *(&v75[0] + 1);
    v17 = *&v75[0];
    v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v68 = v3;
    v6 = *(v3 + v25);
    if (!(v6 >> 62))
    {
      v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1004A6A34();
LABEL_6:
  v27 = _swiftEmptyArrayStorage;
  v63 = v20;
  v64 = v5;
  v65 = v17;
  if (v26)
  {
    v60 = v16;
    v73 = _swiftEmptyArrayStorage;

    result = sub_10024AB84(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      return result;
    }

    v59 = a1;
    v29 = 0;
    v27 = v73;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        sub_1004A6794();
      }

      else
      {
      }

      CommandConnection.capturedValue.getter(v75);

      v73 = v27;
      v31 = v27[2];
      v30 = v27[3];
      if (v31 >= v30 >> 1)
      {
        sub_10024AB84((v30 > 1), v31 + 1, 1);
        v27 = v73;
      }

      ++v29;
      v27[2] = v31 + 1;
      v32 = &v27[27 * v31];
      v33 = v75[1];
      *(v32 + 2) = v75[0];
      *(v32 + 3) = v33;
      v34 = v75[2];
      v35 = v75[3];
      v36 = v75[5];
      *(v32 + 6) = v75[4];
      *(v32 + 7) = v36;
      *(v32 + 4) = v34;
      *(v32 + 5) = v35;
      v37 = v75[6];
      v38 = v75[7];
      v39 = v75[9];
      *(v32 + 10) = v75[8];
      *(v32 + 11) = v39;
      *(v32 + 8) = v37;
      *(v32 + 9) = v38;
      v40 = v75[10];
      v41 = v75[11];
      v42 = v75[12];
      *(v32 + 240) = v76;
      *(v32 + 13) = v41;
      *(v32 + 14) = v42;
      *(v32 + 12) = v40;
    }

    while (v26 != v29);

    a1 = v59;
    v16 = v60;
  }

  v43 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
  v44 = v68;
  swift_beginAccess();
  v45 = v69;
  sub_10000E268(v44 + v43, v69, &qword_1005CCEB0, &qword_1004E9140);
  v46 = 0;
  v47 = 0;
  if ((*(v66 + 48))(v45, 1, v67) != 1)
  {
    v48 = v45;
    v49 = v62;
    sub_10024DDB8(v48, v62, type metadata accessor for ConnectionStatus.Error);
    sub_10024DECC(v49, v61, type metadata accessor for ConnectionStatus.Error);
    v46 = sub_1004A5804();
    v47 = v50;
    sub_10024DD58(v49, type metadata accessor for ConnectionStatus.Error);
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  v51 = *(v44 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  if (v51 > 1)
  {
    v52 = v63;
    if (v51 == 2)
    {
      v53 = 0xED000064696C6176;
      v54._countAndFlagsBits = 0x6E6920656279616DLL;
    }

    else
    {
      v53 = 0xE700000000000000;
      v54._countAndFlagsBits = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v52 = v63;
    if (v51)
    {
      v53 = 0xE700000000000000;
      v54._countAndFlagsBits = 0x64696C61766E69;
    }

    else
    {
      v53 = 0xE400000000000000;
      v54._countAndFlagsBits = 1685024615;
    }
  }

  v54._object = v53;
  sub_1004A5994(v54);

  sub_1004A5994(v70);

  v55 = v71;
  v56 = v72;
  *a1 = v52;
  a1[1] = v16;
  v57 = v64;
  a1[2] = v65;
  a1[3] = v57;
  a1[4] = v27;
  a1[5] = v46;
  a1[6] = v47;
  a1[7] = v55;
  a1[8] = v56;
  return result;
}

uint64_t sub_10023D23C()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v9 = *(v0 + v8);
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
      {

        RestartableTimer.stop()();
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1004A6A34();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = static MonotonicTime.now()();
  result = sub_100249160(v11);
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10022F9AC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10023D40C()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v1 + v5, v4, &qword_1005D5968, &unk_1004E9180);
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v9 = sub_1004A4A54();
    v10 = sub_1004A6034();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 68157952;
      *(v11 + 4) = 2;
      *(v11 + 8) = 256;
      *(v11 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx] Timer fired: checking for idle connections to cancel.", v11, 0xBu);
    }

    else
    {
    }

    (*(v7 + 8))(v4, v6);
    v12 = static MonotonicTime.now()();
    return sub_100242B58(v12);
  }

  return result;
}

uint64_t sub_10023D62C()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v1 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v8 = *(v0 + v1);
    if (!(v8 >> 62))
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer))
      {

        RestartableTimer.stop()();
      }

LABEL_21:
      __break(1u);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1004A6A34();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = *(v0 + v1);
  if (v10 >> 62)
  {
    result = sub_1004A6A34();
    v11 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return result;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      sub_1004A6794();
    }

    else
    {
    }

    CommandConnection.collectDataTransferReport()();
  }
}

uint64_t sub_10023D850(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

    if (v2)
    {
      RestartableTimer.start()();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10023D8CC()
{
  if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) == 1)
  {
    sub_100025F40(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger, &qword_1005D5968, &unk_1004E9180);

    sub_10024DD58(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, type metadata accessor for ConnectionConfiguration);

    sub_1001AD0E0(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine);

    sub_100025F40(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError, &qword_1005CCEB0, &qword_1004E9140);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10023DA34()
{
  sub_10023D8CC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConnectionPool(uint64_t a1)
{
  result = qword_1005D5BB0;
  if (!qword_1005D5BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10023DAE0(uint64_t a1)
{
  sub_10023DCDC(319, &qword_1005D5BC0, &type metadata accessor for Logger);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConnectionConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_10023DCDC(319, &qword_1005D5BC8, type metadata accessor for ConnectionStatus.Error);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10023DCDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004A6374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10023DD30(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v10 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v16 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  v22 = sub_10023F2AC(a1, a2, a3, v6);
  if (v23)
  {
    return 0;
  }

  v24 = v22;
  v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v26 = *(v5 + v25);
  v70 = v25;
  if ((v26 & 0xC000000000000001) == 0)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v26 + 8 * v24 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_1004A6794();
LABEL_6:
  swift_endAccess();
  v71 = (*(*v27 + 560))(a1);
  v29 = v28;

  if (v29)
  {
    v30 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v5 + v30, v18, &qword_1005D5968, &unk_1004E9180);
    v31 = sub_1004A4A74();
    v21 = *(v31 - 8);
    result = (*(v21 + 6))(v18, 1, v31);
    if (result == 1)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10024DECC(a1, v12, type metadata accessor for ClientCommand);

    a2 = sub_1004A4A54();
    v33 = sub_1004A5FF4();

    if (!os_log_type_enabled(a2, v33))
    {

      sub_10024DD58(v12, type metadata accessor for ClientCommand);
      goto LABEL_22;
    }

    LODWORD(v69) = v33;
    v71 = v31;
    v15 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v72 = v68;
    *v15 = 68158466;
    *(v15 + 1) = 2;
    *(v15 + 4) = 256;
    v34 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    v15[10] = v34;

    *(v15 + 11) = 2082;
    v35 = ClientCommand.logIdentifier.getter();
    v37 = v36;
    sub_10024DD58(v12, type metadata accessor for ClientCommand);
    v38 = sub_10015BA6C(v35, v37, &v72);

    *(v15 + 13) = v38;
    *(v15 + 21) = 2082;
    v39 = v70;
    result = swift_beginAccess();
    v40 = *(v5 + v39);
    if ((v40 & 0xC000000000000001) == 0)
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        if (v24 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v41 = *(v40 + 8 * v24 + 32);

LABEL_13:
          swift_endAccess();
          v42 = *(v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

          v43 = ConnectionID.debugDescription.getter(v42);
          v45 = sub_10015BA6C(v43, v44, &v72);

          *(v15 + 23) = v45;
          _os_log_impl(&_mh_execute_header, a2, v69, "[%.*hhx] Failed to send command '%{public}s' on connection %{public}s", v15, 0x1Fu);
          swift_arrayDestroy();

          v31 = v71;
LABEL_22:
          (*(v21 + 1))(v18, v31);
          return 0;
        }

        goto LABEL_34;
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_30:
    v41 = sub_1004A6794();
    goto LABEL_13;
  }

  v46 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v5 + v46, v21, &qword_1005D5968, &unk_1004E9180);
  v47 = sub_1004A4A74();
  v48 = *(v47 - 8);
  result = (*(v48 + 48))(v21, 1, v47);
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10024DECC(a1, v15, type metadata accessor for ClientCommand);

  v49 = sub_1004A4A54();
  v50 = sub_1004A5FF4();

  if (os_log_type_enabled(v49, v50))
  {
    LODWORD(v68) = v50;
    v69 = v47;
    v51 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v72 = v67;
    *v51 = 68158722;
    *(v51 + 4) = 2;
    *(v51 + 8) = 256;
    v52 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v51 + 10) = v52;

    *(v51 + 11) = 2082;
    v53 = Tag.debugDescription.getter(v71 & 0xFFFFFFFF000000FFLL);
    v55 = sub_10015BA6C(v53, v54, &v72);

    *(v51 + 13) = v55;
    *(v51 + 21) = 2082;
    v56 = ClientCommand.logIdentifier.getter();
    v58 = v57;
    sub_10024DD58(v15, type metadata accessor for ClientCommand);
    v59 = sub_10015BA6C(v56, v58, &v72);

    *(v51 + 23) = v59;
    *(v51 + 31) = 2082;
    v60 = v70;
    result = swift_beginAccess();
    v61 = *(v5 + v60);
    if ((v61 & 0xC000000000000001) != 0)
    {
      v62 = sub_1004A6794();
      v47 = v69;
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      v47 = v69;
      if (v24 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v62 = *(v61 + 8 * v24 + 32);
    }

    swift_endAccess();
    v63 = *(v62 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    v64 = ConnectionID.debugDescription.getter(v63);
    v66 = sub_10015BA6C(v64, v65, &v72);

    *(v51 + 33) = v66;
    _os_log_impl(&_mh_execute_header, v49, v68, "[%.*hhx] Sent command '%{public}s %{public}s' on connection %{public}s", v51, 0x29u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10024DD58(v15, type metadata accessor for ClientCommand);
  }

  (*(v48 + 8))(v21, v47);
  return v71;
}