uint64_t sub_1000012E8(uint64_t *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_100005178();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  sub_100004538(&qword_10000C3E0, &qword_100005768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000056B0;
  *(inited + 32) = sub_100005018();
  *(inited + 40) = v14;
  *(inited + 48) = v11;
  *(inited + 56) = v12;

  v15 = sub_100004D2C(inited);
  swift_setDeallocating();
  sub_100004E40(inited + 32, &qword_10000C3E8, &qword_100005770);
  sub_1000050F8();

  v16 = sub_100005168();
  v17 = sub_1000051D8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v26 = a3;
    v21 = v20;
    v28[0] = v20;
    *v19 = 141558274;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2080;
    v22 = sub_100005188();
    v24 = sub_100001C6C(v22, v23, v28);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Engagement plugin response %{mask.hash}s", v19, 0x16u);
    sub_1000044EC(v21);

    a2 = v27;
  }

  (*(v7 + 8))(v10, v6);
  v28[3] = sub_100004538(&qword_10000C3F0, &qword_100005778);
  v28[0] = v15;
  a2(v28, 0);
  return sub_100004E40(v28, &qword_10000C390, &qword_100005720);
}

uint64_t sub_10000159C(uint64_t a1, void (*a2)(void, void))
{
  v4 = sub_100005178();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000050F8();
  swift_errorRetain();
  v9 = sub_100005168();
  v10 = sub_1000051D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    *&v22[0] = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = sub_100005258();
    v16 = sub_100001C6C(v14, v15, v22);
    v20 = v4;
    v17 = a2;
    v18 = v16;

    *(v12 + 4) = v18;
    a2 = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Engagement plugin error %{public}s", v12, 0xCu);
    sub_1000044EC(v13);

    (*(v21 + 8))(v8, v20);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  memset(v22, 0, sizeof(v22));
  a2(v22, a1);
  return sub_100004E40(v22, &qword_10000C390, &qword_100005720);
}

void sub_1000017E4()
{
  v0 = sub_100005178();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000050F8();
  v5 = sub_100005168();
  v6 = sub_1000051D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Engagement plugin invalidating connection", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_100005128();
}

void sub_100001994(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100004674(a1, v11);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_1000046E4(v11, v12);
  v7 = *(v5 - 8);
  __chkstk_darwin(v6, v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_100005238();
  (*(v7 + 8))(v9, v5);
  sub_1000044EC(v11);
  if (a2)
  {
LABEL_3:
    a2 = sub_100004FE8();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

id sub_100001B38(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EngagementExtensionProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100001B90(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100005198();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100004FF8();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100001C6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001D38(v11, 0, 0, 1, a1, a2);
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
    sub_1000045C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000044EC(v11);
  return v7;
}

unint64_t sub_100001D38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001E44(a5, a6);
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
    result = sub_100005218();
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

char *sub_100001E44(uint64_t a1, unint64_t a2)
{
  v3 = sub_100001E90(a1, a2);
  sub_100001FC0(&off_100008410);
  return v3;
}

char *sub_100001E90(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000020AC(v5, 0);
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

  result = sub_100005218();
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
        v10 = sub_1000051C8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000020AC(v10, 0);
        result = sub_100005208();
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

uint64_t sub_100001FC0(uint64_t result)
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

  result = sub_100002120(result, v11, 1, v3);
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

void *sub_1000020AC(uint64_t a1, uint64_t a2)
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

  sub_100004538(&unk_10000C400, qword_100005788);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002120(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004538(&unk_10000C400, qword_100005788);
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

uint64_t sub_100002214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  swift_errorRetain();

  return sub_100005048();
}

uint64_t sub_1000022B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  sub_100004538(a6, a7);
  v13 = sub_100005058();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

unint64_t sub_100002378(uint64_t a1, uint64_t a2)
{
  sub_100005268();
  sub_1000051B8();
  v4 = sub_100005278();

  return sub_1000023F0(a1, a2, v4);
}

unint64_t sub_1000023F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100005248())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000024A8(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_100004C8C(v6, 0);
}

uint64_t sub_10000253C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004538(&qword_10000C380, &qword_100005718);
  v9 = sub_100005058();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_100004C28, v10);
}

uint64_t sub_100002610(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = sub_100004538(&qword_10000C380, &qword_100005718);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1);
    v15 = sub_100005058();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_100004FE4, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18);
  }
}

uint64_t sub_10000279C(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v13 = sub_100004538(&qword_10000C380, &qword_100005718);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v24 - v16;
  v24 = a1;
  if (a3)
  {
    LOBYTE(v25) = 1;
    swift_errorRetain();
    a6(&v24);
    v18 = a1;
    v19 = a2;
    v20 = 1;
  }

  else
  {
    v25 = a2;

    a4(&v24);
    v21 = sub_100005058();
    v22 = swift_allocObject();
    *(v22 + 16) = a6;
    *(v22 + 24) = a7;

    v21(sub_100004FE4, v22);

    (*(v14 + 8))(v17, v13);
    v18 = a1;
    v19 = a2;
    v20 = 0;
  }

  return sub_100004CB0(v18, v19, v20);
}

uint64_t sub_100002960(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v13 = sub_100004538(&qword_10000C378, &qword_100005710);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v25[-1] - v16;
  v25[0] = a1;
  v25[1] = a2;
  if (a3)
  {
    v26 = 1;
    swift_errorRetain();
    a6(v25);
    v18 = a1;
    v19 = a2;
    v20 = 1;
  }

  else
  {

    a4(v25);
    v21 = sub_100005058();
    v22 = swift_allocObject();
    *(v22 + 16) = a6;
    *(v22 + 24) = a7;

    v21(sub_100004F68, v22);

    (*(v14 + 8))(v17, v13);
    v18 = a1;
    v19 = a2;
    v20 = 0;
  }

  return sub_100004CB0(v18, v19, v20);
}

uint64_t sub_100002B24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v7[5] = v5;

  return sub_100005048();
}

uint64_t sub_100002BC8(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v6 = a5[1];
  v9 = *a5;
  v10 = v6;
  a3(&v11, &v9);
  v7 = v11;
  v9 = v11;
  LOBYTE(v10) = 0;
  a1(&v9);

  return sub_100004C8C(v7, 0);
}

id sub_100002C64()
{
  v0 = sub_100005178();
  __chkstk_darwin(v0, v1);
  v2 = objc_allocWithZone(LSApplicationRecord);
  v3 = sub_100001B90(0xD000000000000011, 0x80000001000057E0, 0);
  v4 = [v3 applicationState];
  v5 = [v4 isInstalled];

  return v5;
}

unint64_t sub_100002EBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004538(&qword_10000C3D8, &qword_100005760);
    v3 = sub_100005228();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100002378(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_100002FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004538(&qword_10000C3D0, &qword_100005758);
    v3 = sub_100005228();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100002378(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t sub_1000030BC(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_100005008();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v160 = v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = v155 - v10;
  v167 = sub_100004538(&qword_10000C378, &qword_100005710);
  v165 = *(v167 - 8);
  v13 = __chkstk_darwin(v167, v12);
  v162 = v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v171 = v155 - v17;
  v161 = v18;
  __chkstk_darwin(v16, v19);
  v163 = v155 - v20;
  v170 = sub_100004538(&qword_10000C380, &qword_100005718);
  v177 = *(v170 - 8);
  v22 = __chkstk_darwin(v170, v21);
  v166 = v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v173 = v155 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v168 = v155 - v29;
  v164 = v30;
  __chkstk_darwin(v28, v31);
  v169 = v155 - v32;
  v158 = sub_1000050C8();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158, v33);
  v159 = v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100005178();
  v36 = *(v35 - 8);
  v38 = __chkstk_darwin(v35, v37);
  *&v176 = v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38, v40);
  v175 = v155 - v42;
  __chkstk_darwin(v41, v43);
  v45 = v155 - v44;
  v178 = swift_allocObject();
  *(v178 + 16) = a2;
  _Block_copy(a2);
  sub_1000050F8();
  sub_1000045C0(a1, &v180);
  v46 = sub_100005168();
  v47 = sub_1000051D8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v156 = v4;
    v49 = v48;
    v50 = swift_slowAlloc();
    v172 = v35;
    v174 = a2;
    v51 = v50;
    v179 = v50;
    *v49 = 141558274;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2080;
    sub_1000045C0(&v180, v183);
    v52 = sub_1000051A8();
    v155[1] = a1;
    v53 = v52;
    v54 = v36;
    v55 = v11;
    v56 = v5;
    v58 = v57;
    sub_1000044EC(&v180);
    v59 = sub_100001C6C(v53, v58, &v179);
    v5 = v56;
    v11 = v55;
    v36 = v54;

    *(v49 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v46, v47, "Engagement plugin received request %{mask.hash}s", v49, 0x16u);
    sub_1000044EC(v51);
    a2 = v174;
    v35 = v172;

    v4 = v156;
  }

  else
  {

    sub_1000044EC(&v180);
  }

  v60 = *(v36 + 1);
  v60(v45, v35);
  v61 = sub_100002C64();
  v62 = sub_1000050D8();
  v63 = v176;
  if (v62)
  {
    v177 = v60;
    sub_100004538(&qword_10000C3A0, &qword_100005728);
    inited = swift_initStackObject();
    v176 = xmmword_1000056B0;
    *(inited + 16) = xmmword_1000056B0;
    *(inited + 32) = sub_100005028();
    *(inited + 40) = v65;
    sub_100004538(&qword_10000C3A8, &qword_100005730);
    v66 = swift_initStackObject();
    *(v66 + 16) = v176;
    *(v66 + 32) = sub_100005038();
    *(v66 + 40) = v67;
    *(v66 + 48) = v61 & 1;
    v68 = sub_100002EBC(v66);
    swift_setDeallocating();
    sub_100004E40(v66 + 32, &qword_10000C3B0, &qword_100005738);
    *(inited + 48) = v68;
    v69 = sub_100002FB8(inited);
    swift_setDeallocating();
    sub_100004E40(inited + 32, &qword_10000C3B8, &qword_100005740);
    v70 = v175;
    sub_1000050F8();

    v71 = sub_100005168();
    v72 = sub_1000051D8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v180 = v74;
      *v73 = 136446210;
      sub_100004538(&qword_10000C3C8, &qword_100005750);
      v75 = sub_100005188();
      v77 = sub_100001C6C(v75, v76, &v180);

      *(v73 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v71, v72, "Engagement plugin response %{public}s", v73, 0xCu);
      sub_1000044EC(v74);

      v78 = v175;
    }

    else
    {

      v78 = v70;
    }

    v177(v78, v35);
    *(&v181 + 1) = sub_100004538(&qword_10000C3C0, &qword_100005748);
    *&v180 = v69;
    sub_100004674(&v180, v183);
    v120 = v184;
    if (v184)
    {
      v121 = sub_1000046E4(v183, v184);
      v122 = *(v120 - 8);
      __chkstk_darwin(v121, v121);
      v124 = v155 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v122 + 16))(v124);
      v125 = sub_100005238();
      (*(v122 + 8))(v124, v120);
      sub_1000044EC(v183);
    }

    else
    {
      v125 = 0;
    }

    a2[2](a2, v125, 0);
    swift_unknownObjectRelease();
    sub_100004E40(&v180, &qword_10000C390, &qword_100005720);
  }

  else if (v61)
  {
    sub_100005158();
    sub_100005098();
    sub_100004728();
    sub_1000051E8();
    v79 = sub_100005138();
    sub_100005148();
    *&v176 = v79;

    sub_1000051E8();
    (*(v157 + 104))(v159, enum case for EventDispatchStrategy.async(_:), v158);
    *(&v181 + 1) = sub_1000050B8();
    v182 = &protocol witness table for DispatchTimerProvider;
    sub_100004774(&v180);
    sub_1000050A8();
    sub_100005118();
    swift_allocObject();
    sub_100005108();
    sub_100005088();
    swift_allocObject();
    v80 = sub_100005078();
    v81 = v171;
    sub_1000050E8();
    v82 = swift_allocObject();
    *(v82 + 16) = sub_1000047D8;
    *(v82 + 24) = v80;
    v175 = v80;
    v83 = v165;
    v84 = *(v165 + 16);
    v172 = (v165 + 16);
    v174 = v84;
    v85 = v162;
    v86 = v167;
    v84(v162, v81, v167);
    v87 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v160 = *(v83 + 80);
    v88 = (v161 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    v161 = *(v83 + 32);
    v161(v89 + v87, v85, v86);
    v90 = (v89 + v88);
    *v90 = sub_1000047DC;
    v90[1] = v82;

    v91 = v163;
    sub_100005048();
    v165 = *(v83 + 8);
    v92 = v171;
    (v165)(v171, v86);
    v93 = swift_allocObject();
    v94 = v178;
    *(v93 + 16) = sub_1000045B8;
    *(v93 + 24) = v94;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_100004874;
    *(v95 + 24) = v93;
    (v174)(v92, v91, v86);
    v96 = swift_allocObject();
    v161(v96 + v87, v92, v86);
    v97 = (v96 + v88);
    *v97 = sub_1000048A0;
    v97[1] = v95;
    v98 = v178;

    v99 = v173;
    sub_100005048();
    (v165)(v91, v86);
    v100 = swift_allocObject();
    *(v100 + 16) = sub_1000045B8;
    *(v100 + 24) = v98;
    v101 = swift_allocObject();
    *(v101 + 16) = sub_1000049CC;
    *(v101 + 24) = v100;
    v102 = v177;
    v174 = *(v177 + 2);
    v103 = v166;
    v104 = v170;
    (v174)(v166, v99, v170);
    v105 = v102;
    v106 = (v102[80] + 16) & ~v102[80];
    v107 = (v164 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = swift_allocObject();
    v172 = *(v105 + 4);
    v172(v108 + v106, v103, v104);
    v109 = (v108 + v107);
    *v109 = sub_1000049F8;
    v109[1] = v101;

    v110 = v168;
    sub_100005048();
    v111 = *(v177 + 1);
    v177 = (v177 + 8);
    v112 = v173;
    v111(v173, v104);
    v113 = v111;
    (v174)(v112, v110, v104);
    v114 = swift_allocObject();
    v172(v114 + v106, v112, v104);
    v115 = (v114 + v107);
    v116 = v176;
    *v115 = sub_100004AD0;
    v115[1] = v116;

    v117 = v169;
    sub_100005048();
    v113(v110, v104);
    v118 = sub_100005058();
    v119 = swift_allocObject();
    *(v119 + 16) = 0;
    *(v119 + 24) = 0;
    v118(sub_100004BA8, v119);

    v113(v117, v104);
  }

  else
  {
    v175 = v36;
    v172 = v35;
    v174 = a2;
    (*(v5 + 104))(v11, enum case for EngagementError.appNotInstalled(_:), v4);
    sub_1000050F8();
    v126 = v160;
    v173 = *(v5 + 16);
    (v173)(v160, v11, v4);
    v127 = v63;
    v128 = sub_100005168();
    v129 = sub_1000051D8();
    v130 = os_log_type_enabled(v128, v129);
    v155[0] = v5;
    if (v130)
    {
      v131 = swift_slowAlloc();
      v177 = v60;
      v132 = v131;
      v133 = swift_slowAlloc();
      v171 = v11;
      v134 = v133;
      *&v180 = v133;
      *v132 = 136446210;
      sub_10000461C();
      v135 = sub_100005258();
      v136 = v5;
      v137 = v4;
      v139 = v138;
      v140 = v126;
      v141 = *(v136 + 8);
      v141(v140, v137);
      v142 = sub_100001C6C(v135, v139, &v180);
      v4 = v137;

      *(v132 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v128, v129, "Engagement plugin error %{public}s", v132, 0xCu);
      sub_1000044EC(v134);
      v11 = v171;

      v177(v127, v172);
    }

    else
    {

      v143 = v126;
      v141 = *(v5 + 8);
      v141(v143, v4);
      v60(v63, v172);
    }

    sub_10000461C();
    v180 = 0u;
    v181 = 0u;
    swift_allocError();
    (v173)(v144, v11, v4);
    sub_100004674(&v180, v183);
    v145 = v184;
    if (v184)
    {
      v146 = sub_1000046E4(v183, v184);
      v147 = v4;
      v148 = *(v145 - 8);
      __chkstk_darwin(v146, v146);
      v150 = v155 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v148 + 16))(v150);
      v151 = sub_100005238();
      (*(v148 + 8))(v150, v145);
      v4 = v147;
      sub_1000044EC(v183);
    }

    else
    {
      v151 = 0;
    }

    v152 = v174;
    v153 = sub_100004FE8();
    (v152)[2](v152, v151, v153);
    swift_unknownObjectRelease();

    sub_100004E40(&v180, &qword_10000C390, &qword_100005720);
    v141(v11, v4);
  }
}

uint64_t sub_1000044EC(void *a1)
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

uint64_t sub_100004538(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004580()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000045C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000461C()
{
  result = qword_10000C388;
  if (!qword_10000C388)
  {
    sub_100005008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C388);
  }

  return result;
}

uint64_t sub_100004674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004538(&qword_10000C390, &qword_100005720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1000046E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004728()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C398);
  }

  return result;
}

uint64_t *sub_100004774(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000483C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000048EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *(sub_100004538(a3, a4) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000022B8(a1, a2, v6 + v14, *v15, v15[1], a3, a4, a5, a6);
}

uint64_t sub_100004A14(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100004538(&qword_10000C380, &qword_100005718) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_10000253C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_100004AD8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100004538(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 16, v5 | 7);
}

uint64_t sub_100004BC4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  v2(&v6);
  return v3(&v6);
}

uint64_t sub_100004C40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004C8C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100004CB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t *sub_100004CC0(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

unint64_t sub_100004D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004538(&qword_10000C3F8, &qword_100005780);
    v3 = sub_100005228();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100002378(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_100004E40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004538(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004EA0(void (*a1)(void))
{

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100004F28()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

__int128 *sub_100004F68(__int128 *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}