uint64_t sub_10001A634(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 112) = v1;
  *(v2 + 120) = a1;

  return _swift_task_switch(sub_10001A750, 0, 0);
}

uint64_t sub_10001A750()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);
  v4 = v0[15];
  if (v4)
  {

    v5 = sub_100038578();
    v6 = sub_1000387A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v5, v6, "Finished score step. Scored %ld embeddings.", v7, 0xCu);
    }

    else
    {
    }

    v10 = 24;
  }

  else
  {
    v5 = sub_100038578();
    v8 = sub_1000387C8();
    if (os_log_type_enabled(v5, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v8, "Failed to generate scores.", v9, 2u);
    }

    v10 = 14;
  }

  v13 = v10;

  v11 = v0[1];

  return v11(v4, v13);
}

uint64_t sub_10001A9A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a3;
  v62 = a4;
  v60 = a2;
  LODWORD(v8) = a1;
  v9 = sub_1000382C8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001B40(&qword_100048348, &qword_1000395A0);
  __chkstk_darwin(v13 - 8);
  v59 = v47 - v14;
  if (qword_100048160 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v15 = sub_100038598();
    v16 = sub_100003680(v15, qword_100048DC8);
    v17 = sub_100038578();
    v18 = sub_1000387A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Running analysis step.", v19, 2u);
    }

    if (!a6 || !a5)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }

    v47[1] = v16;
    v48 = v8;
    v49 = a5;
    v58 = *(a5 + 16);
    if (!v58)
    {
LABEL_17:

      v36 = sub_100038578();
      v37 = sub_1000387A8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v58;

        _os_log_impl(&_mh_execute_header, v36, v37, "Finished sending %ld events to CoreAnalytics.", v38, 0xCu);
      }

      else
      {
      }

      LOWORD(v8) = v48;
LABEL_21:
      if ((v8 & 0x100) != 0)
      {
        sub_100038298();
        v39 = sub_100038578();
        v40 = sub_1000387A8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v41 = 136315138;
          sub_100038198();
          v43 = sub_1000386F8();
          v45 = v44;

          v46 = sub_10001BFAC(v43, v45, aBlock);

          *(v41 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v39, v40, "Mean top-k percentiles: %s", v41, 0xCu);
          sub_10000387C(v42);
        }

        else
        {
        }
      }

      return 24;
    }

    v20 = 0;
    v21 = *(v10 + 16);
    v10 += 16;
    v56 = v21;
    v22 = v49 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v23 = *(v10 + 56);
    v53 = a6 + 32;
    v54 = v23;
    v57 = v10;
    v55 = (v10 - 8);
    v51 = "maxTokenFrequency";
    v52 = (v10 + 16);
    v50 = v64;
    while (1)
    {
      v56(v12, v22, v9);
      v24 = *(a6 + 16);
      if (v20 == v24)
      {
        (*v55)(v12, v9);
        goto LABEL_17;
      }

      if (v20 >= v24)
      {
        break;
      }

      v25 = v20 + 1;
      v10 = a6;
      v26 = *(v53 + 8 * v20);
      v27 = v59;
      (*v52)(v59, v12, v9);
      a5 = v61;

      v28 = sub_1000382B8();
      v29 = sub_1000382A8();
      (*v55)(v27, v9);
      v8 = sub_100038638();
      v30 = swift_allocObject();
      v30[2] = v60;
      v30[3] = a5;
      v30[4] = v62;
      v30[5] = v26;
      a6 = v10;
      v30[6] = v28;
      v30[7] = v29;
      v64[2] = sub_10001F90C;
      v64[3] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v64[0] = sub_100017D28;
      v64[1] = &unk_100045958;
      v31 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v31);

      v22 += v54;
      v20 = v25;
      if (v58 == v25)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v32 = sub_100038578();
  v33 = sub_1000387C8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Scores and item IDs must not be nil.", v34, 2u);
  }

  return 23;
}

uint64_t sub_10001AFD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001FE00;

  return sub_1000048D8(a1);
}

uint64_t sub_10001B06C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001B100;

  return sub_100005420(a1);
}

uint64_t sub_10001B100(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10001B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10001B2E0;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10001B2E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001B3D4(uint64_t a1)
{
  v2 = sub_10001FAA0(&qword_1000482C0, type metadata accessor for ZeoliteEvalExtension, &unk_1000394A0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_10001B450@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038338();
  *a1 = sub_100038328();
  sub_100023308(v4);
  sub_10001FAA0(&qword_100048288, type metadata accessor for ZeoliteEvalExtensionConfig, &unk_100039F98);
  sub_10001FAA0(&unk_100048290, type metadata accessor for ZeoliteEvalExtensionConfig, &unk_100039F70);
  return sub_1000383B8();
}

uint64_t sub_10001B56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001B40(&qword_1000482C8, &qword_100039528);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_100037E68();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001FA38(a1, v6, &qword_1000482C8, &qword_100039528);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10001FD94(v6, &qword_1000482C8, &qword_100039528);
    v15 = sub_100038048();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_100037D38();
    swift_allocObject();
    sub_100037D28();
    v11 = sub_100037E78();
    v13 = v12;
    v14 = sub_100038048();
    sub_10001FAA0(&qword_1000483D0, &type metadata accessor for VocabularyScores, &protocol conformance descriptor for VocabularyScores);
    sub_100037D18();
    (*(v8 + 8))(v10, v7);
    sub_100003924(v11, v13);

    return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
  }
}

uint64_t sub_10001B994(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100038178();
    return a2;
  }

  return result;
}

void *sub_10001BA28(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_100001B40(&qword_1000483E0, qword_100039630);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_100038178();
  v30 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v36 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v29 = &v27 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v25)
  {
    v15 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v31 = (v30 + 32);
    v32 = (v30 + 48);
    v37 = v12;
    v38 = _swiftEmptyArrayStorage;
    v27 = a1;
    v28 = a3;
    v33 = i;
    while (1)
    {
      if (v35)
      {
        v12 = sub_100038848();
      }

      else
      {
        if (v15 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a3 + 8 * v15 + 32);
      }

      v16 = v12;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = v12;
      a1(&v39);
      if (v3)
      {

        return v38;
      }

      v18 = v37;
      if ((*v32)(v8, 1, v37) == 1)
      {
        v12 = sub_10001FD94(v8, &qword_1000483E0, qword_100039630);
      }

      else
      {
        v19 = *v31;
        v20 = v29;
        (*v31)(v29, v8, v18);
        v19(v36, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_100029950(0, v38[2] + 1, 1, v38);
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          v38 = sub_100029950((v21 > 1), v22 + 1, 1, v38);
        }

        v23 = v37;
        v24 = v38;
        v38[2] = v22 + 1;
        v12 = (v19)(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v36, v23);
        a1 = v27;
        a3 = v28;
      }

      ++v15;
      if (v17 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v25 = v12;
    i = sub_1000388A8();
  }

  return _swiftEmptyArrayStorage;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ZeoliteEvalExtension(0);
  sub_10001FAA0(&qword_1000481C0, type metadata accessor for ZeoliteEvalExtension, &unk_1000394E0);
  sub_1000382D8();
  return 0;
}

char *sub_10001BE20(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_10001C5DC(result, v5, 0);
  }

  return result;
}

void *sub_10001BE98(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001B40(&qword_100048338, &unk_100039590);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10001BF1C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001B40(&qword_1000483C8, &qword_100039618);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

unint64_t sub_10001BFAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001C078(v11, 0, 0, 1, a1, a2);
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
    sub_10001FC04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000387C(v11);
  return v7;
}

unint64_t sub_10001C078(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001C184(a5, a6);
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
    result = sub_100038858();
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

void *sub_10001C184(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001C1D0(a1, a2);
  sub_10001C300(&off_100045030);
  return v3;
}

void *sub_10001C1D0(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001C3EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100038858();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000386A8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001C3EC(v10, 0);
        result = sub_100038838();
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

uint64_t sub_10001C300(uint64_t result)
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

  result = sub_10001C460(result, v11, 1, v3);
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

void *sub_10001C3EC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001B40(&qword_1000483D8, &qword_100039620);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001C460(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_1000483D8, &qword_100039620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10001C554(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C5FC(a1, a2, a3, *v3, &qword_100048340, &qword_10003A030, &type metadata accessor for EmbeddingItem);
  *v3 = result;
  return result;
}

void *sub_10001C598(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C5FC(a1, a2, a3, *v3, &qword_1000483E8, &unk_10003B5C0, &type metadata accessor for ExtractedItem);
  *v3 = result;
  return result;
}

char *sub_10001C5DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C91C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001C5FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100001B40(a5, a6);
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

void *sub_10001C7D8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100001B40(&qword_1000483C8, &qword_100039618);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001B40(&qword_1000483B8, &qword_100039608);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001C91C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_100048338, &unk_100039590);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

Swift::Int sub_10001CA20(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10001DE18(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_100038A28(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v13 >= v12[2])
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
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
      sub_100001B40(&qword_1000483B8, &qword_100039608);
      v7 = sub_100038718();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_10001D2D8(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10001CB84(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100038AE8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10001CE88(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10001CC64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001B40(&qword_1000483B0, &qword_100039600);
  result = sub_100038828();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_100038AE8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10001CE88(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001CC64(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10001CFA8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10001D0E8(v5 + 1);
  }

  v8 = *v3;
  result = sub_100038AE8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100038A88();
  __break(1u);
  return result;
}

void *sub_10001CFA8()
{
  v1 = v0;
  sub_100001B40(&qword_1000483B0, &qword_100039600);
  v2 = *v0;
  v3 = sub_100038818();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_10001D0E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001B40(&qword_1000483B0, &qword_100039600);
  result = sub_100038828();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_100038AE8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_10001D2D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10001DABC(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10001D890((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[6];
        v14 += 6;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 4);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10001DAD0(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_10001DAD0((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        sub_10001D890((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (v32 >= *(v31 + 16))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10001D890(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 6 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[4] < v4[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 6;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 6;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 6 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v13 - 2) < *(v6 - 2))
      {
        v21 = v6 - 6;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 6;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 6;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 6 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 4);
  }

  return 1;
}

char *sub_10001DAD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_1000483C0, &qword_100039610);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t *sub_10001DBD4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10001DC70(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 4 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t _s20ZeoliteEvalExtension0abC5ErrorO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100038A78();

  if (v2 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v2;
  }
}

unint64_t _s20ZeoliteEvalExtension0abC6StatesO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000452B8;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for ZeoliteEvalExtension(uint64_t a1)
{
  result = qword_100048270;
  if (!qword_100048270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001DF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000481C8;
  if (!qword_1000481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481C8);
  }

  return result;
}

unint64_t sub_10001DF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000481D0;
  if (!qword_1000481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481D0);
  }

  return result;
}

unint64_t sub_10001DFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000481D8;
  if (!qword_1000481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481D8);
  }

  return result;
}

unint64_t sub_10001E024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000481E0;
  if (!qword_1000481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481E0);
  }

  return result;
}

unint64_t sub_10001E07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000481E8;
  if (!qword_1000481E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481E8);
  }

  return result;
}

unint64_t sub_10001E0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000481F0;
  if (!qword_1000481F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481F0);
  }

  return result;
}

unint64_t sub_10001E12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000481F8;
  if (!qword_1000481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZeoliteEvalExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZeoliteEvalExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZeoliteEvalExtensionStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZeoliteEvalExtensionStates(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001E498(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001B40(&qword_100048210, qword_100039480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001E568(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001B40(&qword_100048210, qword_100039480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001E618(uint64_t a1)
{
  sub_100038338();
  if (v1 <= 0x3F)
  {
    sub_10001E69C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001E69C(uint64_t a1)
{
  if (!qword_100048280)
  {
    type metadata accessor for ZeoliteEvalExtensionConfig(255);
    sub_10001FAA0(&qword_100048288, type metadata accessor for ZeoliteEvalExtensionConfig, &unk_100039F98);
    sub_10001FAA0(&unk_100048290, type metadata accessor for ZeoliteEvalExtensionConfig, &unk_100039F70);
    v1 = sub_1000383E8();
    if (!v2)
    {
      atomic_store(v1, &qword_100048280);
    }
  }
}

unint64_t sub_10001E834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000482F8;
  if (!qword_1000482F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000482F8);
  }

  return result;
}

uint64_t sub_10001E888(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void sub_10001E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_10001E8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_10001E9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048310;
  if (!qword_100048310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048310);
  }

  return result;
}

uint64_t sub_10001EA34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B40(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001EA9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001EB00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001EB18(uint64_t *a1)
{
  v2 = sub_100037F08();
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001B40(&qword_1000482E0, &qword_100039548);
  __chkstk_darwin(v4 - 8);
  v6 = &v64 - v5;
  v7 = type metadata accessor for ExecutionState(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v68 = (&v64 - v16);
  __chkstk_darwin(v15);
  v18 = &v64 - v17;
  v19 = objc_allocWithZone(NSUserDefaults);
  v20 = sub_100038638();
  v21 = [v19 initWithSuiteName:v20];

  if (!v21)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v37 = sub_100038598();
    sub_100003680(v37, qword_100048DC8);
    v38 = sub_100038578();
    v39 = sub_1000387C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v72 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_10001BFAC(0xD000000000000011, 0x800000010003B970, &v72);
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to fetch suite %s from user defaults.", v40, 0xCu);
      sub_10000387C(v41);
    }

    return 0;
  }

  v64 = v18;
  v72 = 0x6769666E6F63;
  v73 = 0xE600000000000000;
  v22 = *a1;
  v71 = *a1;
  v23 = a1;
  v74._countAndFlagsBits = sub_100038A38();
  sub_100038698(v74);

  v24 = sub_100038638();

  v69 = v21;
  v25 = [v21 dictionaryForKey:v24];

  if (!v25)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v54 = sub_100038598();
    sub_100003680(v54, qword_100048DC8);
    sub_10001FCC4(a1, v14, type metadata accessor for ZeoliteEvalExtensionConfig);
    v30 = sub_100038578();
    v55 = sub_1000387A8();
    if (!os_log_type_enabled(v30, v55))
    {
      sub_10001EA9C(v14, type metadata accessor for ZeoliteEvalExtensionConfig);
      goto LABEL_27;
    }

    v56 = swift_slowAlloc();
    *v56 = 134217984;
    v57 = *v14;
    sub_10001EA9C(v14, type metadata accessor for ZeoliteEvalExtensionConfig);
    *(v56 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v30, v55, "No execution state has been tracked for config %ld. Allow the extension to run.", v56, 0xCu);
LABEL_23:

LABEL_27:

    return 1;
  }

  sub_1000385F8();

  v26 = *(a1 + 9);
  if (v26 != 2 && (v26 & 1) != 0)
  {

    v72 = 0x6769666E6F63;
    v73 = 0xE600000000000000;
    v71 = v22;
    v75._countAndFlagsBits = sub_100038A38();
    sub_100038698(v75);

    v27 = sub_100038638();

    [v69 removeObjectForKey:v27];

    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v28 = sub_100038598();
    sub_100003680(v28, qword_100048DC8);
    v29 = v64;
    sub_10001FCC4(a1, v64, type metadata accessor for ZeoliteEvalExtensionConfig);
    v30 = sub_100038578();
    v31 = sub_1000387A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v71 = v33;
      v72 = 0x6769666E6F63;
      *v32 = 136315138;
      v73 = 0xE600000000000000;
      v70 = *v29;
      v76._countAndFlagsBits = sub_100038A38();
      sub_100038698(v76);

      v34 = v72;
      v35 = v73;
      sub_10001EA9C(v29, type metadata accessor for ZeoliteEvalExtensionConfig);
      v36 = sub_10001BFAC(v34, v35, &v71);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Reset values for %s in UserDefaults. Allow the extension to run.", v32, 0xCu);
      sub_10000387C(v33);

      goto LABEL_23;
    }

    sub_10001EA9C(v29, type metadata accessor for ZeoliteEvalExtensionConfig);
    return 1;
  }

  sub_100023468(v42, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10001FD94(v6, &qword_1000482E0, &qword_100039548);
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v43 = sub_100038598();
    sub_100003680(v43, qword_100048DC8);
    v44 = v68;
    sub_10001FCC4(v23, v68, type metadata accessor for ZeoliteEvalExtensionConfig);

    v45 = sub_100038578();
    v46 = sub_1000387C8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v72 = v48;
      *v47 = 134218242;
      v49 = *v44;
      sub_10001EA9C(v44, type metadata accessor for ZeoliteEvalExtensionConfig);
      *(v47 + 4) = v49;
      *(v47 + 12) = 2080;
      v50 = sub_100038608();
      v52 = v51;

      v53 = sub_10001BFAC(v50, v52, &v72);

      *(v47 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to parse execution state for config %ld: %s", v47, 0x16u);
      sub_10000387C(v48);
    }

    else
    {
      sub_10001EA9C(v44, type metadata accessor for ZeoliteEvalExtensionConfig);
    }

    return 0;
  }

  sub_10001FD2C(v6, v10, type metadata accessor for ExecutionState);
  if (*(a1 + 24) == 1)
  {
    sub_10001EA9C(v10, type metadata accessor for ExecutionState);

    return *(a1 + 8);
  }

  v59 = a1[2];
  v60 = v65;
  sub_100037EF8();
  sub_100037EB8();
  v62 = v61;
  v63 = v61;

  (*(v66 + 8))(v60, v67);
  result = sub_10001EA9C(v10, type metadata accessor for ExecutionState);
  if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v62 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v62 < 9.22337204e18)
  {
    if (v59 <= v62)
    {
      return 1;
    }

    return *(a1 + 8);
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10001F5D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (a5 >> 1 == a4)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v9 = result;
    if (a4 > v6)
    {
      v6 = a4;
    }

    v10 = v6 - a4;
    v11 = (a3 + 24 * a4 + 16);
    v8 = _swiftEmptyArrayStorage;
    v21 = result;
    while (v10)
    {
      v12 = *v11;
      v13 = *(v11 - 1);
      v19[0] = *(v11 - 2);
      v19[1] = v13;
      v20 = v12;

      v9(&v17, v19);
      if (v5)
      {

        return v8;
      }

      if ((v18 & 1) == 0)
      {
        v14 = v17;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000299C8(0, *(v8 + 2) + 1, 1, v8);
          v8 = result;
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          result = sub_1000299C8((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 2) = v16 + 1;
        *&v8[8 * v16 + 32] = v14;
        v9 = v21;
      }

      --v10;
      v11 += 6;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001F748(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100038788();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10001CB84(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10001F7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_1000482E0, &qword_100039548);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F82C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001F874()
{
  result = qword_100048330;
  if (!qword_100048330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100048330);
  }

  return result;
}

uint64_t sub_10001F8C4()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10001F930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048380;
  if (!qword_100048380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048380);
  }

  return result;
}

uint64_t sub_10001F984(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Int sub_10001F9F0@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100038098(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001FA38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B40(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001FAA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_10001FB44(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001FC04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10001FC60(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10001FCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FD2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FD94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001B40(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001FE10()
{
  sub_100001B40(&qword_1000483F0, &qword_1000396B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100039680;
  *(inited + 32) = 0x49747865746E6F63;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = sub_100038638();
  *(inited + 56) = 0x64496769666E6F63;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_100038798();
  *(inited + 80) = 0x49746E656D656C65;
  *(inited + 88) = 0xE900000000000064;
  *(inited + 96) = sub_100038798();
  v2 = sub_100021AC4(inited);
  swift_setDeallocating();
  sub_100001B40(&qword_1000483F8, &qword_1000396C0);
  result = swift_arrayDestroy();
  v10 = *(*(v0 + 32) + 16);
  if (v10)
  {
    v4 = 0;
    v11 = *(v0 + 40);
    while (1)
    {
      v5 = *(v11 + 16);
      if (v4 == v5)
      {
        break;
      }

      if (v4 >= v5)
      {
        __break(1u);
        return result;
      }

      if (v4 != 10)
      {
        v12._countAndFlagsBits = sub_100038A38();
        sub_100038698(v12);

        isa = sub_100038778().super.super.isa;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10002134C(isa, 0x7865646E69, 0xE500000000000000, isUniquelyReferenced_nonNull_native);

        v13._countAndFlagsBits = sub_100038A38();
        sub_100038698(v13);

        v8 = sub_100038778().super.super.isa;
        v9 = swift_isUniquelyReferenced_nonNull_native();
        sub_10002134C(v8, 0x65756C6176, 0xE500000000000000, v9);

        if (v10 != ++v4)
        {
          continue;
        }
      }

      return v2;
    }
  }

  return v2;
}

Swift::Int sub_1000200B0()
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100020190(uint64_t a1)
{
  sub_100038678();
}

Swift::Int sub_10002025C(uint64_t a1)
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

unint64_t sub_100020338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021C80(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100020368(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x49747865746E6F63;
  v5 = 0xE600000000000000;
  v6 = 0x64496D657469;
  v7 = 0xE700000000000000;
  v8 = 0x73656369646E69;
  if (v2 != 3)
  {
    v8 = 0x7365756C6176;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x64496769666E6F63;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100020404()
{
  v1 = *v0;
  v2 = 0x49747865746E6F63;
  v3 = 0x64496D657469;
  v4 = 0x73656369646E69;
  if (v1 != 3)
  {
    v4 = 0x7365756C6176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64496769666E6F63;
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

unint64_t sub_10002049C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100021C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000204DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100022008(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100020518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100022008(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100020554(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048448, &qword_100039790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  v9 = sub_1000036D0(a1, a1[3]);
  sub_100022008(v9, v10, v11);
  sub_100038B68();
  LOBYTE(v14) = 0;
  sub_1000389E8();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_100038A08();
    LOBYTE(v14) = 2;
    sub_100038A08();
    v14 = *(v3 + 32);
    HIBYTE(v13) = 3;
    sub_100001B40(&qword_100048428, &qword_100039780);
    sub_1000220C8(&qword_100048450, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    sub_100038A18();
    v14 = *(v3 + 40);
    HIBYTE(v13) = 4;
    sub_100001B40(&qword_100048438, &qword_100039788);
    sub_10002205C(&qword_100048458, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
    sub_100038A18();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100020804@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100021CCC(a2, v6);
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

unint64_t sub_100020864(uint64_t a1, uint64_t a2)
{
  sub_100038AF8();
  sub_100038678();
  v4 = sub_100038B18();

  return sub_100020920(a1, a2, v4);
}

unint64_t sub_1000208DC(uint64_t a1)
{
  v2 = sub_100038AE8();

  return sub_1000209D8(a1, v2);
}

unint64_t sub_100020920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100038A58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000209D8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100020A44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001B40(&qword_100048408, &qword_1000396D0);
  v33 = v4;
  result = sub_1000388C8();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_100038AF8();
      sub_100038678();
      result = sub_100038B18();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_100020CE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001B40(&qword_100048410, &qword_1000396D8);
  result = sub_1000388C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      result = sub_100038AE8();
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100020F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001B40(&qword_100048400, &qword_1000396C8);
  v35 = v4;
  result = sub_1000388C8();
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

      sub_100038AF8();
      sub_100038678();
      result = sub_100038B18();
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

unint64_t sub_1000211F0(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100020864(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_100020A44(v16, a3 & 1);
      result = sub_100020864(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_100038A98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000214C4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 4 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_10002134C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100020864(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100020F4C(v16, a4 & 1);
      v11 = sub_100020864(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100038A98();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100021778();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_1000214C4()
{
  v1 = v0;
  sub_100001B40(&qword_100048408, &qword_1000396D0);
  v2 = *v0;
  v3 = sub_1000388B8();
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
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

void *sub_10002162C()
{
  v1 = v0;
  sub_100001B40(&qword_100048410, &qword_1000396D8);
  v2 = *v0;
  v3 = sub_1000388B8();
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
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

id sub_100021778()
{
  v1 = v0;
  sub_100001B40(&qword_100048400, &qword_1000396C8);
  v2 = *v0;
  v3 = sub_1000388B8();
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

unint64_t sub_1000218E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001B40(&qword_100048410, &qword_1000396D8);
    v3 = sub_1000388D8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000208DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1000219C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001B40(&qword_100048408, &qword_1000396D0);
    v3 = sub_1000388D8();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100020864(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100021AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001B40(&qword_100048400, &qword_1000396C8);
    v3 = sub_1000388D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100020864(v5, v6);
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

__n128 sub_100021BC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100021BDC(uint64_t a1, int a2)
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

uint64_t sub_100021C24(uint64_t result, int a2, int a3)
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

unint64_t sub_100021C80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100045490;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100021CCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100001B40(&qword_100048418, &qword_100039778);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_1000036D0(a1, a1[3]);
  sub_100022008(v9, v10, v11);
  sub_100038B58();
  if (v2)
  {
    return sub_10000387C(a1);
  }

  LOBYTE(v23) = 0;
  v12 = sub_100038958();
  v14 = v13;
  v15 = v12;
  LOBYTE(v23) = 1;
  v21 = sub_100038978();
  LOBYTE(v23) = 2;
  v20 = sub_100038978();
  sub_100001B40(&qword_100048428, &qword_100039780);
  v22 = 3;
  sub_1000220C8(&qword_100048430, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
  sub_100038988();
  v19 = v23;
  sub_100001B40(&qword_100048438, &qword_100039788);
  v22 = 4;
  sub_10002205C(&qword_100048440, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
  sub_100038988();
  (*(v6 + 8))(v8, v5);
  v16 = v23;
  result = sub_10000387C(a1);
  *a2 = v15;
  a2[1] = v14;
  v18 = v20;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v19;
  a2[5] = v16;
  return result;
}

unint64_t sub_100022008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048420;
  if (!qword_100048420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048420);
  }

  return result;
}

uint64_t sub_10002205C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048438, &qword_100039788);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000220C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048428, &qword_100039780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100022148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048460;
  if (!qword_100048460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048460);
  }

  return result;
}

unint64_t sub_1000221A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048468;
  if (!qword_100048468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048468);
  }

  return result;
}

unint64_t sub_1000221F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048470;
  if (!qword_100048470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048470);
  }

  return result;
}

uint64_t sub_100022260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001B40(&qword_1000482D0, &unk_100039900);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100022330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001B40(&qword_1000482D0, &unk_100039900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100022400(uint64_t a1)
{
  sub_100023030(319, &qword_1000484E0, &type metadata for Bool, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100023030(319, &qword_1000484E8, &type metadata for Int, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100023030(319, &qword_1000484F0, &type metadata for ZeoliteStage, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100023030(319, &qword_1000484F8, &type metadata for ExtractParameters, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10002C2F8(319, &qword_100048500, type metadata accessor for EmbedParameters);
          if (v5 <= 0x3F)
          {
            sub_100023030(319, &qword_100048508, &type metadata for ScoreParameters, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100023030(319, &qword_100048510, &type metadata for AnalysisParameters, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100023030(319, &qword_100048518, &type metadata for InferenceParameters, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_100023030(319, &unk_100048520, &type metadata for TokenizationParameters, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

__n128 sub_100022698(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000226AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100022708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_100022778(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100022784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000227CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalysisParameters(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AnalysisParameters(_WORD *result, unsigned int a2, unsigned int a3)
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
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

__n128 sub_10002298C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000229B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100022A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100022A84(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100022AA8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100022ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100022AF0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100022B14(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100022B50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 184))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 112);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_100022BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
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
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZeoliteStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZeoliteStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100022DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100037FC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100022E8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100037FC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_100022F4C(uint64_t a1)
{
  sub_100023030(319, &qword_1000485E0, &type metadata for IOStrategy, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100037FC8();
    if (v2 <= 0x3F)
    {
      sub_100023030(319, &qword_1000485E8, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100023030(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

Swift::Int sub_100023098(unsigned __int8 a1)
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

Swift::Int sub_1000231A4(uint64_t a1, unsigned __int8 a2)
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

Swift::Int sub_1000232AC(uint64_t a1, char a2)
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

double sub_100023308@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = &off_1000453A0;
  sub_100028A38(v14);
  v2 = v14[9];
  *(a1 + 168) = v14[8];
  *(a1 + 184) = v2;
  *(a1 + 200) = v14[10];
  v3 = v14[5];
  *(a1 + 104) = v14[4];
  *(a1 + 120) = v3;
  v4 = v14[7];
  *(a1 + 136) = v14[6];
  *(a1 + 152) = v4;
  v5 = v14[1];
  *(a1 + 40) = v14[0];
  *(a1 + 56) = v5;
  v6 = v14[3];
  *(a1 + 72) = v14[2];
  *(a1 + 216) = v15;
  *(a1 + 88) = v6;
  v7 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v8 = v7[10];
  v9 = type metadata accessor for EmbedParameters(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = a1 + v7[11];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  *(a1 + v7[12]) = 2;
  v11 = (a1 + v7[13]);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = a1 + v7[14];
  result = 0.0;
  *v12 = xmmword_1000398F0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_100023468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100037F08();
  v67 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v64 = &v58 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v58 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v58 - v16;
  __chkstk_darwin(v15);
  v66 = &v58 - v18;
  v19 = type metadata accessor for ExecutionState(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  if (*(a1 + 16) && (v24 = sub_100020864(0x706D6F437473616CLL, 0xEE006E6F6974656CLL), (v25 & 1) != 0) && (sub_10001FC04(*(a1 + 56) + 32 * v24, v68), (swift_dynamicCast() & 1) != 0))
  {
    v61 = v19;
    v62 = a2;
    v63 = v4;
    v26 = sub_100038638();

    v27 = [v23 dateFromString:v26];

    if (v27)
    {
      sub_100037EE8();

      v28 = v66;
      v29 = v67;
      v30 = v63;
      v59 = *(v67 + 32);
      v60 = v67 + 32;
      v59(v66, v17, v63);
      v31 = *(v29 + 16);
      v32 = v22;
      v31(v22, v28, v30);
      if (*(a1 + 16) && (v33 = sub_100020864(0x726575517473616CLL, 0xEB00000000646569), (v34 & 1) != 0))
      {
        sub_10001FC04(*(a1 + 56) + 32 * v33, v68);
        v35 = swift_dynamicCast();
        v19 = v61;
        if (v35)
        {
          v36 = sub_100038638();

          v37 = [v23 dateFromString:v36];

          if (v37)
          {
            sub_100037EE8();

            v38 = v11;
            v39 = v63;
            v40 = v59;
            v59(v14, v38, v63);
            v41 = *(v19 + 20);
            v40(v32 + v41, v14, v39);
            v42 = *(v67 + 56);
            v43 = v32 + v41;
            v44 = v67;
            v42(v43, 0, 1, v39);
LABEL_14:
            if (*(a1 + 16) && (v47 = sub_100020864(0x6D6574497473616CLL, 0xEC00000065746144), (v48 & 1) != 0))
            {
              sub_10001FC04(*(a1 + 56) + 32 * v47, v68);

              if (swift_dynamicCast())
              {
                v49 = sub_100038638();

                v50 = [v23 dateFromString:v49];

                if (v50)
                {
                  v51 = v23;
                  v52 = v65;
                  sub_100037EE8();

                  v53 = v63;
                  (*(v44 + 8))(v66, v63);
                  v54 = v64;
                  v55 = v59;
                  v59(v64, v52, v53);
                  v56 = *(v19 + 24);
                  v55(v32 + v56, v54, v53);
                  v42(v32 + v56, 0, 1, v53);
LABEL_23:
                  a2 = v62;
                  sub_100029DFC(v32, v62);
                  v45 = 0;
                  return (*(v20 + 56))(a2, v45, 1, v19);
                }
              }

              v57 = v63;
              (*(v44 + 8))(v66, v63);
            }

            else
            {

              v57 = v63;
              (*(v44 + 8))(v66, v63);
            }

            v42(v32 + *(v19 + 24), 1, 1, v57);
            goto LABEL_23;
          }
        }
      }

      else
      {
        v19 = v61;
      }

      v44 = v67;
      v42 = *(v67 + 56);
      v42(v32 + *(v19 + 20), 1, 1, v63);
      goto LABEL_14;
    }

    v45 = 1;
    v19 = v61;
    a2 = v62;
  }

  else
  {

    v45 = 1;
  }

  return (*(v20 + 56))(a2, v45, 1, v19);
}

uint64_t sub_100023AF0()
{
  v0 = sub_100037D48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100037D88();
  swift_allocObject();
  sub_100037D78();
  (*(v1 + 104))(v3, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v0);
  sub_100037D58();
  type metadata accessor for ExecutionState(0);
  sub_100029760(&qword_100048710, type metadata accessor for ExecutionState, &unk_10003AAF8);
  v4 = sub_100037D68();
  v6 = v5;
  v7 = objc_opt_self();
  isa = sub_100037E88().super.isa;
  sub_100003924(v4, v6);
  *&v15 = 0;
  v9 = [v7 JSONObjectWithData:isa options:0 error:&v15];

  v10 = v15;
  if (v9)
  {
    sub_100038808();

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v10;
    sub_100037DF8();

    swift_willThrow();

    v15 = 0u;
    v16 = 0u;
  }

  v14[0] = v15;
  v14[1] = v16;
  if (*(&v16 + 1))
  {
    sub_100001B40(&qword_100048720, &unk_10003A020);
    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001FD94(v14, &qword_100048718, &qword_10003A018);
    return 0;
  }
}

uint64_t sub_100023DC0(uint64_t a1)
{
  sub_100038678();
}

unint64_t sub_100023EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029EAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100023EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x74636172747865;
  v5 = 0xE800000000000000;
  v6 = 0x736973796C616E61;
  v7 = 0xE900000000000065;
  v8 = 0x636E657265666E69;
  if (v2 != 4)
  {
    v8 = 0x617A696E656B6F74;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6465626D65;
  if (v2 != 1)
  {
    v9 = 0x65726F6373;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_100024070(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_1000487D8, &qword_10003A088);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34[-v7 - 8];
  v9 = sub_1000036D0(a1, a1[3]);
  sub_10002B9B8(v9, v10, v11);
  v12 = sub_100038B68();
  LOBYTE(v41) = *v3;
  LOBYTE(v39[0]) = 0;
  sub_10002B964(v12, v13, v14);
  sub_1000389D8();
  if (!v2)
  {
    v15 = *(v3 + 56);
    v49[2] = *(v3 + 40);
    v49[3] = v15;
    v49[4] = *(v3 + 72);
    v50 = *(v3 + 88);
    v16 = *(v3 + 24);
    v49[0] = *(v3 + 8);
    v49[1] = v16;
    v17 = *(v3 + 56);
    v43 = *(v3 + 40);
    v44 = v17;
    v45 = *(v3 + 72);
    v46 = *(v3 + 88);
    v18 = *(v3 + 24);
    v41 = *(v3 + 8);
    v42 = v18;
    v52 = 1;
    v19 = sub_10001FA38(v49, v39, &qword_1000487C0, &qword_10003A080);
    sub_10002BB5C(v19, v20, v21);
    sub_1000389D8();
    v39[2] = v43;
    v39[3] = v44;
    v39[4] = v45;
    v40 = v46;
    v39[0] = v41;
    v39[1] = v42;
    sub_10001FD94(v39, &qword_1000487C0, &qword_10003A080);
    v22 = *(v3 + 112);
    v47[0] = *(v3 + 96);
    v47[1] = v22;
    v24 = *(v3 + 96);
    v23 = *(v3 + 112);
    v47[2] = *(v3 + 128);
    v48 = *(v3 + 144);
    v35 = v24;
    v36 = v23;
    v37 = *(v3 + 128);
    v38 = *(v3 + 144);
    v51 = 2;
    v25 = sub_10001FA38(v47, v34, &qword_1000487E8, &qword_10003A090);
    sub_10002BBB0(v25, v26, v27);
    sub_1000389D8();
    sub_10002BAB4(v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38);
    v28 = *(v3 + 168);
    v35 = *(v3 + 152);
    v36 = v28;
    v34[0] = 3;
    sub_10002BC04(v29, v30, v31);
    sub_1000389D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000243C4()
{
  v1 = 0x7954656372756F73;
  v2 = 0x726170736E617274;
  if (*v0 != 2)
  {
    v2 = 7564659;
  }

  if (*v0)
  {
    v1 = 0x6C69616D65;
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

uint64_t sub_100024440@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100029EF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100024468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B9B8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000244A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B9B8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_1000244E0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002A064(a2, v10);
  if (!v2)
  {
    v5 = v18;
    *(a1 + 128) = v17;
    *(a1 + 144) = v5;
    *(a1 + 160) = v19;
    *(a1 + 176) = v20;
    v6 = v14;
    *(a1 + 64) = v13;
    *(a1 + 80) = v6;
    v7 = v16;
    *(a1 + 96) = v15;
    *(a1 + 112) = v7;
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a1 + 32) = v11;
    *(a1 + 48) = v9;
  }

  return result;
}

uint64_t sub_100024578(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048820, &qword_10003A0A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  v9 = sub_1000036D0(a1, a1[3]);
  sub_10002BCAC(v9, v10, v11);
  v12 = sub_100038B68();
  v16[15] = *v3;
  v16[14] = 0;
  sub_10002B910(v12, v13, v14);
  sub_1000389D8();
  if (!v2)
  {
    type metadata accessor for EmbedParameters(0);
    v16[13] = 1;
    sub_100037FC8();
    sub_100029760(&qword_100048828, &type metadata accessor for EmbedderName, &protocol conformance descriptor for EmbedderName);
    sub_100038A18();
    v16[12] = 2;
    sub_100038998();
    v16[11] = 3;
    sub_100038998();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000247AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100037FC8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100001B40(&qword_100048808, &qword_10003A098);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v33 - v6;
  v8 = type metadata accessor for EmbedParameters(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 0;
  v12 = v9[7];
  v37 = v4;
  v38 = v3;
  (*(v4 + 104))(&v11[v12], enum case for EmbedderName.MADTextEmbedder(_:), v3);
  v13 = &v11[v9[8]];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v11[v9[9]];
  *v14 = 0;
  v14[1] = 0;
  v15 = sub_1000036D0(a1, a1[3]);
  sub_10002BCAC(v15, v16, v17);
  v40 = v7;
  v18 = v42;
  v19 = sub_100038B58();
  if (v18)
  {
    sub_10000387C(a1);
  }

  else
  {
    v42 = v12;
    v33 = v14;
    v34 = v13;
    v23 = v36;
    v22 = v37;
    v24 = v38;
    v46 = 0;
    sub_10002B830(v19, v20, v21);
    sub_100038948();
    *v11 = v47;
    v45 = 1;
    sub_100029760(&qword_100048818, &type metadata accessor for EmbedderName, &protocol conformance descriptor for EmbedderName);
    sub_100038988();
    (*(v22 + 40))(&v11[v42], v23, v24);
    v44 = 2;
    v25 = sub_100038908();
    v26 = v34;
    *v34 = v25;
    v26[1] = v27;
    v43 = 3;
    v29 = sub_100038908();
    v31 = v30;
    (*(v39 + 8))(v40, v41);
    v32 = v33;
    *v33 = v29;
    v32[1] = v31;
    sub_10002BD60(v11, v35, type metadata accessor for EmbedParameters);
    sub_10000387C(0);
  }

  return sub_10002BD00(v11, type metadata accessor for EmbedParameters);
}

uint64_t sub_100024BD8()
{
  v1 = 0x745374757074756FLL;
  v2 = 0x6E6F6973726576;
  if (*v0 != 2)
  {
    v2 = 0x4B65726F7453766BLL;
  }

  if (*v0)
  {
    v1 = 0x7265646465626D65;
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

uint64_t sub_100024C64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002A69C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100024C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002BCAC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100024CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002BCAC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100024D40(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048790, &qword_10003A070);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  v9 = sub_1000036D0(a1, a1[3]);
  sub_10002B7DC(v9, v10, v11);
  v12 = sub_100038B68();
  v19[15] = *v3;
  v19[14] = 0;
  sub_10002B910(v12, v13, v14);
  sub_1000389D8();
  if (!v2)
  {
    v19[13] = 1;
    sub_100038A08();
    v19[12] = 2;
    v15 = sub_100038998();
    v19[11] = v3[32];
    v19[10] = 3;
    sub_10002B964(v15, v16, v17);
    sub_1000389D8();
    v19[9] = 4;
    sub_100038998();
    v19[8] = 5;
    sub_100038998();
    v19[7] = 6;
    sub_100038998();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100024FB8()
{
  v1 = *v0;
  v2 = 0x7274537475706E69;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0x6562614C61746164;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x4B65726F7453766BLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 107;
  if (v1 != 1)
  {
    v5 = 0x6F4D7265746C6966;
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

uint64_t sub_1000250B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002A810(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000250E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B7DC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100025124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B7DC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_100025160@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002AA78(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000251D4(void *a1, unsigned int a2)
{
  v4 = sub_100001B40(&qword_100048768, &qword_10003A060);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-v6];
  v8 = sub_1000036D0(a1, a1[3]);
  sub_10002B788(v8, v9, v10);
  sub_100038B68();
  v12[15] = 0;
  sub_1000389F8();
  if (!v2)
  {
    v12[14] = 1;
    sub_1000389F8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002536C()
{
  if (*v0)
  {
    return 0x637265506E61656DLL;
  }

  else
  {
    return 0x6C616E4165726F63;
  }
}

uint64_t sub_1000253C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E4165726F63 && a2 == 0xED00007363697479;
  if (v6 || (sub_100038A58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x637265506E61656DLL && a2 == 0xEF73656C69746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100038A58();

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

uint64_t sub_1000254B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B788(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000254F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B788(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100025530@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002B034(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_100025568(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000251D4(a1, v2 | *v1);
}

uint64_t sub_100025598(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  v7 = sub_100001B40(&qword_100048750, &qword_10003A050);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  v11 = sub_1000036D0(a1, a1[3]);
  sub_10002B734(v11, v12, v13);
  sub_100038B68();
  v17 = 0;
  sub_1000389E8();
  if (!v5)
  {
    v16 = 1;
    sub_1000389E8();
  }

  return (*(v8 + 8))(v10, v7);
}

Swift::Int sub_10002572C()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038B08(v1);
  return sub_100038B18();
}

Swift::Int sub_100025774(uint64_t a1)
{
  v2 = *v1;
  sub_100038AF8();
  sub_100038B08(v2);
  return sub_100038B18();
}

uint64_t sub_1000257B8()
{
  if (*v0)
  {
    return 0x72506D6574737973;
  }

  else
  {
    return 0x64496C65646F6DLL;
  }
}

uint64_t sub_1000257FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496C65646F6DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_100038A58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72506D6574737973 && a2 == 0xEC00000074706D6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100038A58();

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

uint64_t sub_1000258DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B734(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100025918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B734(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100025954@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002B1E4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000259A4(void *a1)
{
  v3 = sub_100001B40(&qword_100048738, &qword_10003A040);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v7 = sub_1000036D0(a1, a1[3]);
  sub_10002B6E0(v7, v8, v9);
  sub_100038B68();
  v11[15] = 0;
  sub_100038998();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11[14] = 1;
  sub_100038998();
  v11[13] = 2;
  sub_1000389B8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100025B48()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_100025B98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002B3B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100025BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B6E0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100025BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002B6E0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_100025C38@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10002B4D4(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100025C94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x656D6F6962;
  if (v2 != 1)
  {
    v4 = 0x65726F7453766BLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x79726F6D654D6E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656D6F6962;
  if (*a2 != 1)
  {
    v8 = 0x65726F7453766BLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x79726F6D654D6E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100038A58();
  }

  return v11 & 1;
}

Swift::Int sub_100025D90()
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100025E30(uint64_t a1)
{
  sub_100038678();
}

Swift::Int sub_100025EBC(uint64_t a1)
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

unint64_t sub_100025F58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002BDC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100025F88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656D6F6962;
  if (v2 != 1)
  {
    v5 = 0x65726F7453766BLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79726F6D654D6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1000260EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048630;
  if (!qword_100048630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048630);
  }

  return result;
}

unint64_t sub_100026188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048648;
  if (!qword_100048648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048648);
  }

  return result;
}

uint64_t sub_1000261DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726170736E617274;
  v4 = 0xEC00000079636E65;
  if (v2 != 1)
  {
    v3 = 7564659;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C69616D65;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x726170736E617274;
  v8 = 0xEC00000079636E65;
  if (*a2 != 1)
  {
    v7 = 7564659;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C69616D65;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100038A58();
  }

  return v11 & 1;
}

Swift::Int sub_1000262DC()
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_10002637C(uint64_t a1)
{
  sub_100038678();
}

Swift::Int sub_100026408(uint64_t a1)
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

unint64_t sub_1000264A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002CF2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000264D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC00000079636E65;
  v5 = 0x726170736E617274;
  if (v2 != 1)
  {
    v5 = 7564659;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C69616D65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000265F0(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048A08, &qword_10003ABB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  v9 = sub_1000036D0(a1, a1[3]);
  sub_10002E6D4(v9, v10, v11);
  sub_100038B68();
  LOBYTE(v18) = 0;
  sub_100038A08();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_100038A08();
    LOBYTE(v18) = 2;
    sub_100038A08();
    LOBYTE(v18) = 3;
    sub_1000389A8();
    LOBYTE(v18) = 4;
    sub_1000389A8();
    LOBYTE(v18) = 5;
    sub_1000389A8();
    LOBYTE(v18) = 6;
    v12 = sub_1000389C8();
    v13 = *(v3 + 64);
    v18 = *(v3 + 48);
    v19 = v13;
    v20 = *(v3 + 80);
    v17[15] = 7;
    sub_10002E854(v12, v14, v15);
    sub_1000389D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10002687C()
{
  v1 = *v0;
  v2 = 0x737961447473616CLL;
  v3 = 0x676E696C706D6173;
  if (v1 != 6)
  {
    v3 = 0x72437265746C6966;
  }

  v4 = 0x654D656C676E6973;
  if (v1 != 4)
  {
    v4 = 0x5470756E61656C63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74676E654C78616DLL;
  if (v1 != 2)
  {
    v5 = 0x654D7265746C6966;
  }

  if (*v0)
  {
    v2 = 0x617373654D78616DLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000269B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002CF78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000269EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002E6D4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100026A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002E6D4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_100026A64@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002D238(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100026AD8(void *a1)
{
  v3 = sub_100001B40(&qword_100048A18, &qword_10003ABB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v7 = sub_1000036D0(a1, a1[3]);
  sub_10002E7AC(v7, v8, v9);
  sub_100038B68();
  v11[15] = 0;
  sub_100038A08();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11[14] = 1;
  sub_100038998();
  v11[13] = 2;
  sub_100038998();
  v11[12] = 3;
  sub_100038998();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100026C98()
{
  v1 = 0x746E65764578616DLL;
  v2 = 0x6C65646F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x7265566C65646F6DLL;
  }

  if (*v0)
  {
    v1 = 0x65736143657375;
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

uint64_t sub_100026D1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002D800(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100026D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002E7AC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100026D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002E7AC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_100026DBC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002D96C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100026E24(void *a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  v7 = sub_100001B40(&qword_100048A20, &qword_10003ABC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  v11 = sub_1000036D0(a1, a1[3]);
  sub_10002E800(v11, v12, v13);
  sub_100038B68();
  v18 = 0;
  sub_1000389C8();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v17 = 1;
  sub_1000389A8();
  v16 = 2;
  sub_100038998();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100026FE0()
{
  v1 = 0x796C6E4F746E6573;
  if (*v0 != 1)
  {
    v1 = 0x65736143657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65764578616DLL;
  }
}

uint64_t sub_100027040@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002DC04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100027074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002E800(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000270B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002E800(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1000270EC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10002DD24(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 9) = HIBYTE(v5);
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_100027178(uint64_t a1)
{
  sub_100038678();
}

unint64_t sub_1000271C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029E60(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000272CC(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048AD0, &qword_10003B1B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  v9 = sub_1000036D0(a1, a1[3]);
  sub_10002F3E4(v9, v10, v11);
  sub_100038B68();
  v14 = *v3;
  v13[7] = 0;
  sub_100001B40(&qword_100048A48, qword_10003AD10);
  sub_10002F438(&qword_100048AD8, sub_10002F504, &protocol conformance descriptor for <A> [A]);
  sub_1000389D8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13[6] = 1;
  sub_1000389C8();
  v13[5] = 2;
  sub_1000389C8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000274D0()
{
  v1 = 0x756F487472617473;
  if (*v0 != 1)
  {
    v1 = 0x72756F48646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961446B656577;
  }
}

uint64_t sub_100027530@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002DF10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100027558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002F3E4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100027594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002F3E4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_1000275D0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002E030(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_100027630(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x64496769666E6F63;
    v6 = 0x7365526563726F66;
    v7 = 0xD000000000000012;
    if (a1 != 3)
    {
      v7 = 0x736567617473;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6E75526563726F66;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 9)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0xD000000000000011;
    v3 = 0x7261506465626D65;
    if (a1 != 6)
    {
      v3 = 0x72615065726F6373;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000277AC(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_1000486C0, &qword_10003A008);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50 - v7;
  v9 = sub_1000036D0(a1, a1[3]);
  sub_100029384(v9, v10, v11);
  sub_100038B68();
  LOBYTE(v85[0]) = 0;
  sub_100038A08();
  if (!v2)
  {
    LOBYTE(v85[0]) = 1;
    sub_1000389F8();
    LOBYTE(v85[0]) = 2;
    sub_1000389A8();
    LOBYTE(v85[0]) = 3;
    sub_1000389C8();
    v88 = *(v3 + 32);
    v87[0] = 4;
    sub_100001B40(&qword_100048640, qword_100039D00);
    sub_100029640(&qword_1000486C8, sub_1000296B8, &protocol conformance descriptor for <A> [A]);
    sub_100038A18();
    v12 = *(v3 + 184);
    v85[8] = *(v3 + 168);
    v85[9] = v12;
    v85[10] = *(v3 + 200);
    v86 = *(v3 + 216);
    v13 = *(v3 + 120);
    v85[4] = *(v3 + 104);
    v85[5] = v13;
    v14 = *(v3 + 152);
    v85[6] = *(v3 + 136);
    v85[7] = v14;
    v15 = *(v3 + 56);
    v85[0] = *(v3 + 40);
    v85[1] = v15;
    v16 = *(v3 + 88);
    v85[2] = *(v3 + 72);
    v85[3] = v16;
    v17 = *(v3 + 184);
    v81 = *(v3 + 168);
    v82 = v17;
    v83 = *(v3 + 200);
    v84 = *(v3 + 216);
    v18 = *(v3 + 120);
    v77 = *(v3 + 104);
    v78 = v18;
    v19 = *(v3 + 152);
    v79 = *(v3 + 136);
    v80 = v19;
    v20 = *(v3 + 56);
    v73 = *(v3 + 40);
    v74 = v20;
    v21 = *(v3 + 88);
    v75 = *(v3 + 72);
    v76 = v21;
    v72 = 5;
    v22 = sub_10001FA38(v85, v70, &qword_100048300, &qword_100039558);
    sub_10002970C(v22, v23, v24);
    sub_1000389D8();
    v70[8] = v81;
    v70[9] = v82;
    v70[10] = v83;
    v71 = v84;
    v70[4] = v77;
    v70[5] = v78;
    v70[6] = v79;
    v70[7] = v80;
    v70[0] = v73;
    v70[1] = v74;
    v70[2] = v75;
    v70[3] = v76;
    sub_10001FD94(v70, &qword_100048300, &qword_100039558);
    v25 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
    v69 = 6;
    type metadata accessor for EmbedParameters(0);
    sub_100029760(&qword_1000486E0, type metadata accessor for EmbedParameters, &unk_100039C60);
    sub_1000389D8();
    v26 = v3 + v25[11];
    v27 = *(v26 + 48);
    v28 = *(v26 + 16);
    v65 = *(v26 + 32);
    v66 = v27;
    v29 = *(v26 + 48);
    v67 = *(v26 + 64);
    v30 = *(v26 + 16);
    v64[0] = *v26;
    v64[1] = v30;
    v60 = v65;
    v61 = v29;
    v62 = *(v26 + 64);
    v68 = *(v26 + 80);
    v63 = *(v26 + 80);
    v58 = v64[0];
    v59 = v28;
    v57 = 7;
    v31 = sub_10001FA38(v64, v55, &qword_100048308, &qword_100039560);
    sub_1000297A8(v31, v32, v33);
    sub_1000389D8();
    v55[2] = v60;
    v55[3] = v61;
    v55[4] = v62;
    v56 = v63;
    v55[0] = v58;
    v55[1] = v59;
    v34 = sub_10001FD94(v55, &qword_100048308, &qword_100039560);
    LOWORD(v50) = *(v3 + v25[12]);
    v54 = 8;
    sub_1000297FC(v34, v35, v36);
    v37 = sub_1000389D8();
    v38 = (v3 + v25[13]);
    v39 = v38[1];
    v50 = *v38;
    v51 = v39;
    v54 = 9;
    sub_100029850(v37, v40, v41);
    v42 = sub_1000389D8();
    v43 = (v3 + v25[14]);
    v44 = *(v43 + 4);
    v45 = *(v43 + 40);
    v46 = v43[1];
    v50 = *v43;
    v51 = v46;
    v52 = v44;
    v53 = v45;
    v54 = 10;
    sub_1000298A4(v42, v47, v48);
    sub_1000389D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100027E00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_100001B40(&qword_1000482D0, &unk_100039900);
  __chkstk_darwin(v3 - 8);
  v79 = &v74 - v4;
  v80 = sub_100001B40(&qword_100048670, &qword_10003A000);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v133 = &v74 - v5;
  v6 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = 0;
  *(v9 + 4) = 0;
  *(v9 + 2) = 0;
  v9[24] = 1;
  *(v9 + 4) = &off_100045748;
  sub_100028A38(v131);
  v10 = v131[9];
  *(v9 + 168) = v131[8];
  *(v9 + 184) = v10;
  *(v9 + 200) = v131[10];
  v11 = v131[5];
  *(v9 + 104) = v131[4];
  *(v9 + 120) = v11;
  v12 = v131[7];
  *(v9 + 136) = v131[6];
  *(v9 + 152) = v12;
  v13 = v131[1];
  *(v9 + 40) = v131[0];
  *(v9 + 56) = v13;
  v14 = v131[3];
  *(v9 + 72) = v131[2];
  *(v9 + 27) = v132;
  *(v9 + 88) = v14;
  v15 = v7[12];
  v16 = type metadata accessor for EmbedParameters(0);
  v17 = *(*(v16 - 8) + 56);
  v77 = v15;
  v17(&v9[v15], 1, 1, v16);
  v18 = &v9[v7[13]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 1;
  *(v18 + 2) = 0u;
  *(v18 + 3) = 0u;
  *(v18 + 4) = 0u;
  *(v18 + 10) = 0;
  v19 = v7[14];
  *&v9[v19] = 2;
  v20 = &v9[v7[15]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = v7[16];
  v83 = v9;
  v22 = &v9[v21];
  *v22 = xmmword_1000398F0;
  *(v22 + 3) = 0;
  *(v22 + 4) = 0;
  *(v22 + 2) = 0;
  v22[40] = 0;
  v23 = a1;
  v24 = a1[3];
  v82 = v23;
  v25 = sub_1000036D0(v23, v24);
  sub_100029384(v25, v26, v27);
  v28 = v81;
  sub_100038B58();
  if (v28)
  {
    sub_10000387C(v82);
    v73 = v83;
  }

  else
  {
    v81 = v18;
    v75 = v19;
    v29 = v78;
    v30 = v79;
    LOBYTE(v119) = 0;
    v31 = sub_100038978();
    v32 = v83;
    *v83 = v31;
    LOBYTE(v119) = 1;
    *(v32 + 8) = sub_100038968() & 1;
    LOBYTE(v119) = 2;
    *(v32 + 9) = sub_100038918();
    LOBYTE(v119) = 3;
    *(v32 + 16) = sub_100038938();
    *(v32 + 24) = v34 & 1;
    sub_100001B40(&qword_100048640, qword_100039D00);
    LOBYTE(v116[0]) = 4;
    sub_100029640(&qword_100048680, sub_1000293D8, &protocol conformance descriptor for <A> [A]);
    v35 = sub_100038988();
    *(v83 + 4) = v119;
    v118 = 5;
    sub_10002942C(v35, v36, v37);
    sub_100038948();
    v112 = v127;
    v113 = v128;
    v114 = v129;
    v115 = v130;
    v108 = v123;
    v109 = v124;
    v110 = v125;
    v111 = v126;
    v104 = v119;
    v105 = v120;
    v106 = v121;
    v107 = v122;
    v38 = v83;
    v39 = *(v83 + 184);
    v116[8] = *(v83 + 168);
    v116[9] = v39;
    v116[10] = *(v83 + 200);
    v117 = *(v83 + 27);
    v40 = *(v83 + 120);
    v116[4] = *(v83 + 104);
    v116[5] = v40;
    v41 = *(v83 + 152);
    v116[6] = *(v83 + 136);
    v116[7] = v41;
    v42 = *(v83 + 56);
    v116[0] = *(v83 + 40);
    v116[1] = v42;
    v43 = *(v83 + 88);
    v116[2] = *(v83 + 72);
    v116[3] = v43;
    sub_10001FD94(v116, &qword_100048300, &qword_100039558);
    v44 = v113;
    *(v38 + 168) = v112;
    *(v38 + 184) = v44;
    *(v38 + 200) = v114;
    v45 = v109;
    *(v38 + 104) = v108;
    *(v38 + 120) = v45;
    v46 = v111;
    *(v38 + 136) = v110;
    *(v38 + 152) = v46;
    v47 = v105;
    *(v38 + 40) = v104;
    *(v38 + 56) = v47;
    v48 = v107;
    *(v38 + 72) = v106;
    *(v38 + 216) = v115;
    *(v38 + 88) = v48;
    LOBYTE(v98) = 6;
    sub_100029760(&qword_100048698, type metadata accessor for EmbedParameters, &unk_100039C88);
    sub_100038948();
    v49 = sub_100029480(v30, &v83[v77]);
    v97 = 7;
    sub_1000294F0(v49, v50, v51);
    sub_100038948();
    v91 = v100;
    v92 = v101;
    v93 = v102;
    v94 = v103;
    v89 = v98;
    v90 = v99;
    v52 = v81;
    v53 = *(v81 + 3);
    v95[2] = *(v81 + 2);
    v95[3] = v53;
    v95[4] = *(v81 + 4);
    v96 = *(v81 + 10);
    v54 = *(v81 + 1);
    v95[0] = *v81;
    v95[1] = v54;
    v55 = sub_10001FD94(v95, &qword_100048308, &qword_100039560);
    v56 = v92;
    *(v52 + 2) = v91;
    *(v52 + 3) = v56;
    *(v52 + 4) = v93;
    *(v52 + 10) = v94;
    v57 = v90;
    *v52 = v89;
    *(v52 + 1) = v57;
    v88 = 8;
    sub_100029544(v55, v58, v59);
    v60 = sub_100038948();
    *&v83[v75] = v84;
    v88 = 9;
    sub_100029598(v60, v61, v62);
    v63 = sub_100038948();
    v64 = v85;
    *v20 = v84;
    *(v20 + 1) = v64;
    v88 = 10;
    sub_1000295EC(v63, v65, v66);
    v67 = v80;
    v68 = v133;
    sub_100038948();
    (*(v29 + 8))(v68, v67);
    v69 = v86;
    v70 = v87;
    v71 = v85;
    *v22 = v84;
    *(v22 + 1) = v71;
    *(v22 + 4) = v69;
    v22[40] = v70;
    v72 = v83;
    sub_10002BD60(v83, v76, type metadata accessor for ZeoliteEvalExtensionConfig);
    sub_10000387C(v82);
    v73 = v72;
  }

  return sub_10002BD00(v73, type metadata accessor for ZeoliteEvalExtensionConfig);
}

uint64_t sub_100028634@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002E28C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100028668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100029384(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000286A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100029384(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100028710()
{
  v1 = sub_100038B48();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v5 = sub_10001FB44(&v24);
  sub_10002BD60(v0, v5, type metadata accessor for ZeoliteEvalExtensionConfig);
  sub_100038B28();
  v6 = sub_100038B38();
  (*(v2 + 8))(v4, v1);
  v18[1] = v6;
  sub_100038898();
  sub_1000388E8();
  if (*(&v26 + 1))
  {
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      v8._object = *(&v24 + 1);
      if (*(&v24 + 1))
      {
        v8._countAndFlagsBits = v21;
        v19 = 0;
        v20 = 0xE000000000000000;
        sub_100038698(v8);
        v27._countAndFlagsBits = 8250;
        v27._object = 0xE200000000000000;
        sub_100038698(v27);
        sub_1000036D0(&v22, *(&v23 + 1));
        sub_100038A48();
        v9 = v19;
        v10 = v20;
        sub_10001FD94(&v21, &qword_100048660, &qword_100039FF0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100029278(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_100029278((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        v13 = &v7[16 * v12];
        *(v13 + 4) = v9;
        *(v13 + 5) = v10;
      }

      else
      {
        sub_10001FD94(&v21, &qword_100048660, &qword_100039FF0);
      }

      sub_1000388E8();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  *&v24 = 0xD00000000000001BLL;
  *(&v24 + 1) = 0x800000010003BAC0;
  *&v21 = v7;
  sub_100001B40(&qword_100048650, &qword_100039FE8);
  sub_10001F82C(&qword_100048658, &qword_100048650, &qword_100039FE8, &protocol conformance descriptor for [A]);
  v14 = sub_100038618();
  v16 = v15;

  v28._countAndFlagsBits = v14;
  v28._object = v16;
  sub_100038698(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_100038698(v29);
  return v24;
}

double sub_100028A38(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 2;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return result;
}

uint64_t sub_100028A68(void *a1)
{
  v3 = sub_100001B40(&qword_100048998, &unk_10003AB70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = sub_1000036D0(a1, a1[3]);
  sub_10002E62C(v7, v8, v9);
  sub_100038B68();
  v14 = 0;
  sub_100037F08();
  sub_100029760(&qword_1000489A8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100038A18();
  if (!v1)
  {
    type metadata accessor for ExecutionState(0);
    v13 = 1;
    sub_1000389D8();
    v12 = 2;
    sub_1000389D8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100028C68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_100001B40(&qword_100048178, &unk_100039530);
  v5 = __chkstk_darwin(v4 - 8);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v25 - v7;
  v8 = sub_100037F08();
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v32 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001B40(&qword_100048A28, &qword_10003ABC8);
  v33 = *(v10 - 8);
  v34 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ExecutionState(0);
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000036D0(a1, a1[3]);
  sub_10002E62C(v16, v17, v18);
  sub_100038B58();
  if (v2)
  {
    return sub_10000387C(a1);
  }

  v19 = v31;
  v25 = v13;
  v26 = v15;
  v27 = a1;
  v37 = 0;
  sub_100029760(&qword_100048A30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v20 = v32;
  sub_100038988();
  (*(v30 + 32))(v26, v20, v8);
  v36 = 1;
  sub_100038948();
  sub_10002E8A8(v19, &v26[*(v25 + 20)]);
  v35 = 2;
  v21 = v29;
  sub_100038948();
  v22 = v27;
  (*(v33 + 8))(v12, v34);
  v23 = v26;
  sub_10002E8A8(v21, &v26[*(v25 + 24)]);
  sub_10002BD60(v23, v28, type metadata accessor for ExecutionState);
  sub_10000387C(v22);
  return sub_10002BD00(v23, type metadata accessor for ExecutionState);
}

uint64_t sub_100029108()
{
  v1 = 0x726575517473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6D6574497473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706D6F437473616CLL;
  }
}

uint64_t sub_100029180@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002F2BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000291A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002E62C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000291E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002E62C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

char *sub_100029278(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_100048668, &qword_100039FF8);
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
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_100029384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048678;
  if (!qword_100048678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048678);
  }

  return result;
}

unint64_t sub_1000293D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048688;
  if (!qword_100048688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048688);
  }

  return result;
}

unint64_t sub_10002942C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048690;
  if (!qword_100048690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048690);
  }

  return result;
}

uint64_t sub_100029480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_1000482D0, &unk_100039900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000294F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000486A0;
  if (!qword_1000486A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486A0);
  }

  return result;
}

unint64_t sub_100029544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000486A8;
  if (!qword_1000486A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486A8);
  }

  return result;
}

unint64_t sub_100029598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000486B0;
  if (!qword_1000486B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486B0);
  }

  return result;
}

unint64_t sub_1000295EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000486B8;
  if (!qword_1000486B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486B8);
  }

  return result;
}

uint64_t sub_100029640(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048640, qword_100039D00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000296B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000486D0;
  if (!qword_1000486D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486D0);
  }

  return result;
}

unint64_t sub_10002970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000486D8;
  if (!qword_1000486D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486D8);
  }

  return result;
}

uint64_t sub_100029760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000297A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000486E8;
  if (!qword_1000486E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486E8);
  }

  return result;
}

unint64_t sub_1000297FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000486F0;
  if (!qword_1000486F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486F0);
  }

  return result;
}

unint64_t sub_100029850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000486F8;
  if (!qword_1000486F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486F8);
  }

  return result;
}

unint64_t sub_1000298A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048700;
  if (!qword_100048700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048700);
  }

  return result;
}

uint64_t sub_100029918(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1000299C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_100048338, &unk_100039590);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100029AF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_100048318, &unk_100039580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_100029C20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100001B40(a5, a6);
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

uint64_t sub_100029DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100029E60(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000453C8;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100029EAC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100045528;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100029EF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726170736E617274 && a2 == 0xEC00000079636E65 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7564659 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100038A58();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10002A064@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_1000487A8, &qword_10003A078);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v9 = a1[3];
  v53 = a1;
  v10 = sub_1000036D0(a1, v9);
  sub_10002B9B8(v10, v11, v12);
  v13 = sub_100038B58();
  if (v2)
  {
    v54 = v2;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v51 = 0;
    v52 = 0;
    v116 = 0;
    v61 = 0uLL;
    v60 = 0;
    v58 = 1;
    v59 = 0uLL;
    sub_10000387C(v53);
    LOBYTE(v95) = 3;
    *(&v95 + 1) = v115[0];
    DWORD1(v95) = *(v115 + 3);
    *(&v95 + 1) = v57;
    v96 = v56;
    v97 = v55;
    *&v98 = v52;
    *(&v98 + 1) = v51;
    *&v99 = 0;
    *(&v99 + 1) = 2;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    *&v104[3] = *&v114[3];
    *v104 = *v114;
    v105 = v59;
    v106 = v58;
    v107 = v60;
    v108 = v61;
    v109 = v116;
    v110 = 0;
    v112 = 0;
    v111 = 0;
    v113 = 1;
    return sub_10001E938(&v95);
  }

  else
  {
    LOBYTE(v62) = 0;
    sub_10002B884(v13, v14, v15);
    v16 = sub_100038948();
    v50 = v95;
    v84 = 1;
    sub_10002BA0C(v16, v18, v19);
    sub_100038948();
    v52 = a2;
    v56 = v86;
    v57 = v85;
    v55 = v87;
    v20 = v88;
    v21 = v89;
    v46 = v90;
    v22 = v91;
    v48 = v93;
    v49 = v92;
    v47 = v94;
    memset(v78, 0, sizeof(v78));
    v79 = 2;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v23 = sub_10001FD94(v78, &qword_1000487C0, &qword_10003A080);
    LOBYTE(v62) = 2;
    sub_10002BA60(v23, v24, v25);
    sub_100038948();
    v45 = v22;
    v59 = v95;
    v58 = v96;
    v60 = v97;
    v61 = v98;
    v116 = v99;
    sub_10002BAB4(0, 0, 1, 0, 0, 0, 0);
    v74 = 3;
    sub_10002BB08(v26, v27, v28);
    sub_100038948();
    v54 = 0;
    (*(v6 + 8))(v8, v5);
    v51 = v75;
    v43 = *(&v76 + 1);
    v44 = v76;
    v42 = v77;
    v29 = v50;
    LOBYTE(v62) = v50;
    v31 = v56;
    v30 = v57;
    *(&v62 + 1) = v57;
    *&v63 = v56;
    v32 = v55;
    *(&v63 + 1) = v55;
    *&v64 = v20;
    v33 = v46;
    *(&v64 + 1) = v21;
    v65 = v46;
    v34 = v45;
    *&v66 = v45;
    *(&v66 + 1) = v49;
    *&v67 = v48;
    BYTE8(v67) = v47;
    v68 = v59;
    *&v69 = v58;
    *(&v69 + 1) = v60;
    v70 = v61;
    *&v71 = v116;
    *(&v71 + 1) = v75;
    v72 = v76;
    v73 = v77;
    sub_10001FAE8(&v62, &v95);
    sub_10000387C(v53);
    LOBYTE(v95) = v29;
    *(&v95 + 1) = v30;
    v96 = v31;
    v97 = v32;
    *&v98 = v20;
    *(&v98 + 1) = v21;
    v99 = __PAIR128__(*(&v46 + 1), v33);
    v100 = v34;
    v101 = v49;
    v102 = v48;
    v103 = v47;
    v105 = v59;
    v106 = v58;
    v107 = v60;
    v108 = v61;
    v109 = v116;
    v110 = v51;
    v111 = v44;
    v112 = v43;
    v113 = v42;
    result = sub_10001E938(&v95);
    v35 = v71;
    v36 = v52;
    *(v52 + 128) = v70;
    *(v36 + 144) = v35;
    *(v36 + 160) = v72;
    *(v36 + 176) = v73;
    v37 = v67;
    *(v36 + 64) = v66;
    *(v36 + 80) = v37;
    v38 = v69;
    *(v36 + 96) = v68;
    *(v36 + 112) = v38;
    v39 = v63;
    *v36 = v62;
    *(v36 + 16) = v39;
    v40 = v65;
    *(v36 + 32) = v64;
    *(v36 + 48) = v40;
  }

  return result;
}

uint64_t sub_10002A69C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374757074756FLL && a2 == 0xEE00796765746172;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646465626D65 && a2 == 0xE800000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B65726F7453766BLL && a2 == 0xEA00000000007965)
  {

    return 3;
  }

  else
  {
    v6 = sub_100038A58();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10002A810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274537475706E69 && a2 == 0xED00007967657461;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 107 && a2 == 0xE100000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4D7265746C6966 && a2 == 0xED000064496C6564 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010003BBE0 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B65726F7453766BLL && a2 == 0xEA00000000007965 || (sub_100038A58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010003BC00 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_100038A58();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10002AA78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_100048770, &qword_10003A068);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v41 = a1;
  v10 = sub_1000036D0(a1, v9);
  sub_10002B7DC(v10, v11, v12);
  v13 = sub_100038B58();
  if (v2)
  {
    v64 = v2;
    v40 = 0;
    sub_10000387C(v41);
    v49 = 0;
    *v50 = v63[0];
    *&v50[3] = *(v63 + 3);
    v51 = 10;
    v52 = 0;
    v53 = 0;
    v54 = 3;
    *v55 = *v62;
    *&v55[3] = *&v62[3];
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = v40;
    v60 = 0;
    v61 = 0;
    return sub_10001E98C(&v49);
  }

  else
  {
    LOBYTE(v42) = 0;
    sub_10002B830(v13, v14, v15);
    sub_100038948();
    v39 = v49;
    v49 = 1;
    v38 = sub_100038978();
    v49 = 2;
    v37 = sub_100038908();
    v36 = v17;
    LOBYTE(v42) = 3;
    sub_10002B884(v37, v17, v18);
    sub_100038948();
    v35 = v49;
    v49 = 4;
    v19 = sub_100038908();
    v21 = v20;
    v49 = 5;
    v22 = sub_100038908();
    v40 = v23;
    v48 = 6;
    v24 = sub_100038908();
    v64 = 0;
    v25 = v24;
    v27 = v26;
    (*(v6 + 8))(v8, v5);
    v28 = v39;
    LOBYTE(v42) = v39;
    v29 = v38;
    *(&v42 + 1) = v38;
    *&v43 = v37;
    v30 = v36;
    *(&v43 + 1) = v36;
    LOBYTE(v44) = v35;
    *(&v44 + 1) = v19;
    *&v45 = v21;
    v34 = v22;
    *(&v45 + 1) = v22;
    v31 = v40;
    *&v46 = v40;
    *(&v46 + 1) = v25;
    v47 = v27;
    sub_10002B8D8(&v42, &v49);
    sub_10000387C(v41);
    v49 = v28;
    v51 = v29;
    v52 = v37;
    v53 = v30;
    v54 = v35;
    v56 = v19;
    v57 = v21;
    v58 = v34;
    v59 = v31;
    v60 = v25;
    v61 = v27;
    result = sub_10001E98C(&v49);
    v32 = v45;
    *(a2 + 32) = v44;
    *(a2 + 48) = v32;
    *(a2 + 64) = v46;
    *(a2 + 80) = v47;
    v33 = v43;
    *a2 = v42;
    *(a2 + 16) = v33;
  }

  return result;
}

uint64_t sub_10002B034(void *a1)
{
  v3 = sub_100001B40(&qword_100048758, &qword_10003A058);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-v5];
  v7 = sub_1000036D0(a1, a1[3]);
  sub_10002B788(v7, v8, v9);
  sub_100038B58();
  if (v1)
  {
    return sub_10000387C(a1);
  }

  v14[15] = 0;
  v10 = sub_100038968();
  v14[14] = 1;
  v11 = sub_100038968();
  (*(v4 + 8))(v6, v3);
  sub_10000387C(a1);
  if (v11)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFFFFFFFE | v10 & 1;
}

uint64_t sub_10002B1E4(void *a1)
{
  v3 = sub_100001B40(&qword_100048740, &qword_10003A048);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = a1[4];
  v8 = sub_1000036D0(a1, a1[3]);
  sub_10002B734(v8, v9, v10);
  sub_100038B58();
  if (!v1)
  {
    v14 = 0;
    v7 = sub_100038958();
    v13 = 1;
    sub_100038958();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000387C(a1);
  return v7;
}

uint64_t sub_10002B3B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000010003BB80 == a2;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010003BBA0 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010003BBC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002B4D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_100048728, &qword_10003A038);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_1000036D0(a1, a1[3]);
  sub_10002B6E0(v9, v10, v11);
  sub_100038B58();
  if (v2)
  {
    return sub_10000387C(a1);
  }

  v28 = 0;
  v12 = sub_100038908();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v15 = sub_100038908();
  v17 = v16;
  v24 = v15;
  v26 = 2;
  v18 = sub_100038928();
  v19 = v8;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  result = sub_10000387C(a1);
  v23 = v24;
  *a2 = v25;
  *(a2 + 8) = v14;
  *(a2 + 16) = v23;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v21 & 1;
  return result;
}

unint64_t sub_10002B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048730;
  if (!qword_100048730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048730);
  }

  return result;
}

unint64_t sub_10002B734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048748;
  if (!qword_100048748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048748);
  }

  return result;
}

unint64_t sub_10002B788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048760;
  if (!qword_100048760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048760);
  }

  return result;
}

unint64_t sub_10002B7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048778;
  if (!qword_100048778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048778);
  }

  return result;
}

unint64_t sub_10002B830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048780;
  if (!qword_100048780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048780);
  }

  return result;
}

unint64_t sub_10002B884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048788;
  if (!qword_100048788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048788);
  }

  return result;
}

unint64_t sub_10002B910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048798;
  if (!qword_100048798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048798);
  }

  return result;
}

unint64_t sub_10002B964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000487A0;
  if (!qword_1000487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487A0);
  }

  return result;
}

unint64_t sub_10002B9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000487B0;
  if (!qword_1000487B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487B0);
  }

  return result;
}

unint64_t sub_10002BA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000487B8;
  if (!qword_1000487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487B8);
  }

  return result;
}

unint64_t sub_10002BA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000487C8;
  if (!qword_1000487C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487C8);
  }

  return result;
}

void sub_10002BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != 1)
  {
  }
}

unint64_t sub_10002BB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000487D0;
  if (!qword_1000487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487D0);
  }

  return result;
}

unint64_t sub_10002BB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000487E0;
  if (!qword_1000487E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487E0);
  }

  return result;
}

unint64_t sub_10002BBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000487F0;
  if (!qword_1000487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487F0);
  }

  return result;
}

unint64_t sub_10002BC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000487F8;
  if (!qword_1000487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487F8);
  }

  return result;
}

unint64_t sub_10002BC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048800;
  if (!qword_100048800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048800);
  }

  return result;
}

unint64_t sub_10002BCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048810;
  if (!qword_100048810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048810);
  }

  return result;
}

uint64_t sub_10002BD00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002BD60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002BDC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100045600;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10002BE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048830;
  if (!qword_100048830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048830);
  }

  return result;
}

uint64_t sub_10002BECC(unsigned __int8 *a1, unsigned int a2)
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