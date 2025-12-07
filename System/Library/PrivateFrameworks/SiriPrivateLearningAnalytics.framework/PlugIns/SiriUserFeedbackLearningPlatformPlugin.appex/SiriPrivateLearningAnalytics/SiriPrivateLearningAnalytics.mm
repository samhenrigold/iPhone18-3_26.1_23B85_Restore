uint64_t sub_100001348()
{
  sub_1000023BC(&unk_100008420, qword_100002CE8);
  sub_1000027EC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100002C80;
  result = sub_1000027DC();
  qword_100008358 = v0;
  return result;
}

id sub_1000014C8(void *a1)
{
  v2 = v1;
  v4 = sub_1000027AC();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000287C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v37 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10000281C();
  v39 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100008360 != -1)
  {
    swift_once();
  }

  v13 = sub_10000286C();
  sub_100001CCC(v13, qword_100008490);
  v14 = a1;
  v15 = sub_10000284C();
  v16 = sub_10000289C();

  v17 = os_log_type_enabled(v15, v16);
  v38 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v12;
    v20 = v10;
    v21 = v6;
    v22 = v8;
    v23 = v19;
    v24 = swift_slowAlloc();
    v33 = v2;
    v25 = v24;
    v40[0] = v24;
    *v18 = 136315394;
    *(v18 + 4) = sub_100001DAC(0x286D726F66726570, 0xEB00000000293A5FLL, v40);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v23 = v14;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "SiriUserFeedbackLearningPlatformPlugin.%s mlrTask: %@", v18, 0x16u);
    sub_100002354(v23);
    v8 = v22;
    v6 = v21;
    v10 = v20;
    v12 = v34;

    sub_100002648(v25);
    v2 = v33;
  }

  sub_100001D04(v2 + OBJC_IVAR____TtC38SiriUserFeedbackLearningPlatformPlugin38SiriUserFeedbackLearningPlatformPlugin_usageLogger, v40);
  v27 = v14;
  v28 = v41;
  sub_10000280C();
  if (!v28)
  {
    v41 = 0;
    v29 = *(v2 + OBJC_IVAR____TtC38SiriUserFeedbackLearningPlatformPlugin38SiriUserFeedbackLearningPlatformPlugin_pluginLauncher + 24);
    v34 = *(v2 + OBJC_IVAR____TtC38SiriUserFeedbackLearningPlatformPlugin38SiriUserFeedbackLearningPlatformPlugin_pluginLauncher + 32);
    sub_100001D68((v2 + OBJC_IVAR____TtC38SiriUserFeedbackLearningPlatformPlugin38SiriUserFeedbackLearningPlatformPlugin_pluginLauncher), v29);
    if (qword_100008350 != -1)
    {
      swift_once();
    }

    sub_1000019AC(qword_100008358);
    v30 = v37;
    v14 = v38;
    *v37 = 300;
    (*(v8 + 104))(v30, enum case for DispatchTimeInterval.seconds(_:), v14);
    v31 = v41;
    sub_1000027FC();
    if (v31)
    {

      (*(v8 + 8))(v30, v14);
    }

    else
    {
      (*(v8 + 8))(v30, v14);

      sub_10000279C();
      v14 = sub_10000278C();
      (*(v35 + 8))(v6, v36);
    }

    (*(v39 + 8))(v12, v10);
  }

  return v14;
}

unint64_t *sub_1000019AC(uint64_t a1)
{
  v2 = sub_1000027EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = &_swiftEmptyArrayStorage;
    sub_100002464(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_100002464((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for SiriUserFeedbackLearningMLRuntimePlugin;
      v14 = sub_100002484(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_1000024E8(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

id sub_100001C34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriUserFeedbackLearningPlatformPlugin();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100001CCC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001D04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100001D68(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100001DAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001E78(v11, 0, 0, 1, a1, a2);
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
    sub_100002404(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002648(v11);
  return v7;
}

unint64_t sub_100001E78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001F84(a5, a6);
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
    result = sub_1000028BC();
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

char *sub_100001F84(uint64_t a1, unint64_t a2)
{
  v3 = sub_100001FD0(a1, a2);
  sub_100002100(&off_1000042B0);
  return v3;
}

char *sub_100001FD0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000021EC(v5, 0);
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

  result = sub_1000028BC();
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
        v10 = sub_10000288C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000021EC(v10, 0);
        result = sub_1000028AC();
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

uint64_t sub_100002100(uint64_t result)
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

  result = sub_100002260(result, v11, 1, v3);
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

void *sub_1000021EC(uint64_t a1, uint64_t a2)
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

  sub_1000023BC(&qword_100008408, &qword_100002CD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002260(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000023BC(&qword_100008408, &qword_100002CD0);
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

uint64_t sub_100002354(uint64_t a1)
{
  v2 = sub_1000023BC(&qword_100008400, &qword_100002CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000023BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002404(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100002464(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100002500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t *sub_100002484(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000024E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100002500(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000023BC(&qword_100008410, &qword_100002CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000023BC(&qword_100008418, &qword_100002CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100002648(void *a1)
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

uint64_t sub_100002698()
{
  v0 = sub_10000286C();
  sub_100002718(v0, qword_100008490);
  sub_100001CCC(v0, qword_100008490);
  return sub_10000285C();
}

uint64_t *sub_100002718(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}