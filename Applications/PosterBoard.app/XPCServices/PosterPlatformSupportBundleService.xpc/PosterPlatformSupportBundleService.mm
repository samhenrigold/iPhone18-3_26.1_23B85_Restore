int main(int argc, const char **argv, const char **envp)
{
  qword_10000CA70 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_10000CA78 = [objc_opt_self() serviceListener];
  [qword_10000CA78 setDelegate:qword_10000CA70];
  [qword_10000CA78 resume];
  return 0;
}

id sub_1000015C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000015F8()
{
  v0 = sub_1000063C0();
  sub_1000060A8(v0, qword_10000C980);
  sub_100005E74(v0, qword_10000C980);
  return sub_1000063B0();
}

uint64_t sub_10000182C(uint64_t a1, void *a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v9 = sub_100006370();
  v5[4] = v9;
  v5[5] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[6] = v10;
  v5[7] = _Block_copy(a4);
  sub_100006360();
  v11 = sub_1000063F0();
  v13 = v12;
  v5[8] = v12;
  v14 = a2;
  v15 = a5;
  v16 = swift_task_alloc();
  v5[9] = v16;
  *v16 = v5;
  v16[1] = sub_1000019A0;

  return sub_100004494(v10, a2, v11, v13);
}

uint64_t sub_1000019A0(void *a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = v4[7];
  v7 = v4[3];
  v8 = v4[2];
  (*(v4[5] + 8))(v4[6], v4[4]);

  if (v1)
  {
    v9 = sub_100006330();

    (v6)[2](v6, 0, v9);

    _Block_release(v6);
  }

  else
  {
    (v6)[2](v6, a1, 0);
    _Block_release(v6);
  }

  v10 = v5[1];

  return v10();
}

uint64_t sub_100001D70(uint64_t a1, void *a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v9 = sub_100006370();
  v5[4] = v9;
  v5[5] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[6] = v10;
  v5[7] = _Block_copy(a4);
  sub_100006360();
  v11 = sub_1000063F0();
  v13 = v12;
  v5[8] = v12;
  v14 = a2;
  v15 = a5;
  v16 = swift_task_alloc();
  v5[9] = v16;
  *v16 = v5;
  v16[1] = sub_1000019A0;

  return sub_100004FC8(v10, v14, v11, v13);
}

id sub_100001F28(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PPSBundleService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100001F80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001FCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000632C;

  return sub_100001D70(v2, v3, v4, v5, v6);
}

uint64_t sub_100002094(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000632C;

  return v6();
}

uint64_t sub_10000217C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000632C;

  return sub_100002094(v2, v3, v4);
}

uint64_t sub_10000223C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100002324;

  return v7();
}

uint64_t sub_100002324()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000241C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000632C;

  return sub_10000223C(a1, v4, v5, v6);
}

uint64_t sub_1000024E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001F80(&qword_10000C9C0, &qword_100007268);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_100005FE0(a3, v22 - v9, &qword_10000C9C0, &qword_100007268);
  v11 = sub_1000064A0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000027B4(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100006490();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_100006480();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_100006400() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_1000027B4(a3);

    return v20;
  }

LABEL_8:
  sub_1000027B4(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1000027B4(uint64_t a1)
{
  v2 = sub_100001F80(&qword_10000C9C0, &qword_100007268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000281C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002914;

  return v6(a1);
}

uint64_t sub_100002914()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002A0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002A44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000632C;

  return sub_10000281C(a1, v4);
}

uint64_t sub_100002AFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002324;

  return sub_10000281C(a1, v4);
}

unint64_t sub_100002BB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002C80(v11, 0, 0, 1, a1, a2);
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
    sub_100006048(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005F00(v11);
  return v7;
}

unint64_t sub_100002C80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002D8C(a5, a6);
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
    result = sub_100006500();
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

char *sub_100002D8C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002DD8(a1, a2);
  sub_100002F08(&off_100008460);
  return v3;
}

char *sub_100002DD8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002FF4(v5, 0);
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

  result = sub_100006500();
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
        v10 = sub_100006420();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002FF4(v10, 0);
        result = sub_1000064D0();
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

uint64_t sub_100002F08(uint64_t result)
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

  result = sub_100003068(result, v11, 1, v3);
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

void *sub_100002FF4(uint64_t a1, uint64_t a2)
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

  sub_100001F80(&qword_10000CA00, &qword_1000072D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003068(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F80(&qword_10000CA00, &qword_1000072D0);
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

unint64_t sub_10000315C(uint64_t a1)
{
  sub_100006390();
  sub_100005F98(&qword_10000C9E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_1000063D0();

  return sub_1000031F4(a1, v2);
}

unint64_t sub_1000031F4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_100006390();
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
      sub_100005F98(&qword_10000C9F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_1000063E0();
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

uint64_t sub_1000033B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100006390();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100001F80(&qword_10000C9E0, &qword_1000072C0);
  v39 = v4;
  result = sub_100006530();
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

      sub_100005F98(&qword_10000C9E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_1000063D0();
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

char *sub_100003790()
{
  v1 = v0;
  v31 = sub_100006390();
  v33 = *(v31 - 8);
  __chkstk_darwin();
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001F80(&qword_10000C9E0, &qword_1000072C0);
  v3 = *v0;
  v4 = sub_100006520();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_100003A04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(NSBundle);
  sub_100006350(v7);
  v9 = v8;
  v10 = [v6 initWithURL:v8];

  if (v10)
  {
    v61 = 0;
    if (![v10 loadAndReturnError:&v61])
    {
      v28 = v61;
      sub_100006340();

LABEL_27:
      swift_willThrow();

      return v3;
    }

    v11 = v61;
    if ([v10 principalClass])
    {
      swift_getObjCClassMetadata();
      if (!swift_dynamicCastTypeToObjCProtocolConditional())
      {
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1000064E0(93);
        v66._object = 0x8000000100007040;
        v66._countAndFlagsBits = 0xD000000000000010;
        sub_100006410(v66);
        v31 = [swift_getObjCClassFromMetadata() description];
        v32 = sub_1000063F0();
        v34 = v33;

        v67._countAndFlagsBits = v32;
        v67._object = v34;
        sub_100006410(v67);

        v68._countAndFlagsBits = 0x646E7562206E6920;
        v68._object = 0xEB0000000020656CLL;
        sub_100006410(v68);
        v3 = sub_100006370();
        sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v69._countAndFlagsBits = sub_100006550();
        sub_100006410(v69);

        v35._countAndFlagsBits = 0xD00000000000003CLL;
        v35._object = 0x8000000100007060;
LABEL_22:
        sub_100006410(v35);
        v72._countAndFlagsBits = a2;
        v72._object = a3;
        sub_100006410(v72);
        v40 = v61;
        v41 = v62;
        if (qword_10000C830 != -1)
        {
          swift_once();
        }

        v42 = sub_1000063C0();
        sub_100005E74(v42, qword_10000C980);

        v43 = sub_1000063A0();
        v44 = sub_1000064B0();

        if (os_log_type_enabled(v43, v44))
        {
          v3 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v61 = v45;
          *v3 = 136315138;
          *(v3 + 4) = sub_100002BB4(v40, v41, &v61);
          _os_log_impl(&_mh_execute_header, v43, v44, "%s", v3, 0xCu);
          sub_100005F00(v45);
        }

        sub_100005EAC();
        swift_allocError();
        *v46 = v40;
        v46[1] = v41;
        goto LABEL_27;
      }

      v12 = [swift_getObjCClassFromMetadata() hostConfigurationProvider];
      if (v12)
      {
        v3 = v12;
        v13 = [v12 role];
        v14 = a2;
        v15 = a3;
        v16 = sub_1000063F0();
        v18 = v17;

        v19 = v16;
        v20 = v15;
        v21 = v19 == v14 && v18 == v15;
        if (v21 || (v22 = v14, (sub_100006560() & 1) != 0))
        {
        }

        else
        {
          v61 = 0;
          v62 = 0xE000000000000000;
          v60 = v19;
          sub_1000064E0(67);
          v73._object = 0x8000000100007040;
          v73._countAndFlagsBits = 0xD000000000000010;
          sub_100006410(v73);
          v48 = [swift_getObjCClassFromMetadata() description];
          v49 = sub_1000063F0();
          v51 = v50;

          v74._countAndFlagsBits = v49;
          v74._object = v51;
          sub_100006410(v74);

          v75._countAndFlagsBits = 0xD000000000000015;
          v75._object = 0x80000001000070E0;
          sub_100006410(v75);
          v76._countAndFlagsBits = v60;
          v76._object = v18;
          sub_100006410(v76);

          v77._countAndFlagsBits = 0x6E7562206E692027;
          v77._object = 0xEC00000020656C64;
          sub_100006410(v77);
          sub_100006370();
          sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v78._countAndFlagsBits = sub_100006550();
          sub_100006410(v78);

          v79._countAndFlagsBits = 0x6C6F7220726F6620;
          v79._object = 0xEA00000000002065;
          sub_100006410(v79);
          v80._countAndFlagsBits = v22;
          v80._object = v20;
          sub_100006410(v80);
          v52 = v61;
          v53 = v62;
          if (qword_10000C830 != -1)
          {
            swift_once();
          }

          v54 = sub_1000063C0();
          sub_100005E74(v54, qword_10000C980);

          v55 = sub_1000063A0();
          v56 = sub_1000064B0();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v61 = v58;
            *v57 = 136315138;
            *(v57 + 4) = sub_100002BB4(v52, v53, &v61);
            _os_log_impl(&_mh_execute_header, v55, v56, "%s", v57, 0xCu);
            sub_100005F00(v58);
          }

          sub_100005EAC();
          swift_allocError();
          *v59 = v52;
          v59[1] = v53;
          swift_willThrow();

          swift_unknownObjectRelease();
        }

        return v3;
      }

      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1000064E0(50);

      v61 = 0xD000000000000010;
      v62 = 0x80000001000070A0;
      v36 = [swift_getObjCClassFromMetadata() description];
      v37 = sub_1000063F0();
      v39 = v38;

      v70._countAndFlagsBits = v37;
      v70._object = v39;
      sub_100006410(v70);

      v29 = "Initializer for ";
      v30._countAndFlagsBits = 0xD000000000000012;
    }

    else
    {
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1000064E0(57);
      v29 = "Failed to load bundle ";
      v30._countAndFlagsBits = 0xD00000000000002BLL;
    }

    v30._object = (v29 | 0x8000000000000000);
    sub_100006410(v30);
    v3 = sub_100006370();
    sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v71._countAndFlagsBits = sub_100006550();
    sub_100006410(v71);

    v35._countAndFlagsBits = 0x6C6F7220726F6620;
    v35._object = 0xEA00000000002065;
    goto LABEL_22;
  }

  sub_1000064E0(36);

  v61 = 0xD000000000000016;
  v62 = 0x8000000100006FF0;
  sub_100006370();
  sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v63._countAndFlagsBits = sub_100006550();
  sub_100006410(v63);

  v64._countAndFlagsBits = 0x6C6F7220726F6620;
  v64._object = 0xEA00000000002065;
  sub_100006410(v64);
  v65._countAndFlagsBits = a2;
  v65._object = a3;
  sub_100006410(v65);
  if (qword_10000C830 != -1)
  {
    swift_once();
  }

  v23 = sub_1000063C0();
  sub_100005E74(v23, qword_10000C980);

  v24 = sub_1000063A0();
  v25 = sub_1000064B0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v61 = v3;
    *v26 = 136315138;
    *(v26 + 4) = sub_100002BB4(0xD000000000000016, 0x8000000100006FF0, &v61);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s", v26, 0xCu);
    sub_100005F00(v3);
  }

  sub_100005EAC();
  swift_allocError();
  *v27 = 0xD000000000000016;
  v27[1] = 0x8000000100006FF0;
  swift_willThrow();
  return v3;
}

uint64_t sub_100004494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100006370();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100004564, 0, 0);
}

uint64_t sub_100004564()
{
  v71 = v0;
  if (qword_10000C830 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = sub_1000063C0();
  sub_100005E74(v5, qword_10000C980);
  v66 = *(v3 + 16);
  v66(v1, v4, v2);

  v6 = sub_1000063A0();
  v7 = sub_1000064C0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  if (v8)
  {
    v13 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100002BB4(v13, v12, &v69);
    *(v14 + 12) = 2080;
    sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = sub_100006550();
    v17 = v16;
    v68 = *(v10 + 8);
    v68(v9, v11);
    v18 = sub_100002BB4(v15, v17, &v69);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Loading host configuration for role %s from %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v68 = *(v10 + 8);
    v68(v9, v11);
  }

  v19 = sub_100003A04(*(v0 + 16), *(v0 + 32), *(v0 + 40));
  v20 = *(v0 + 24);
  v65 = v19;
  if (v20)
  {
    v21 = [v19 respondsToSelector:"updatedHostConfigurationForCurrentConfiguration:"];
    v22 = v20;
    if (v21)
    {
      v23 = [v65 updatedHostConfigurationForCurrentConfiguration:v22];
      if (v23)
      {
        v24 = v23;

LABEL_14:
        v34 = [v24 entries];
        sub_100005F4C();
        v35 = sub_100006450();

        if (v35 >> 62)
        {
          v64 = sub_100006510();
        }

        else
        {
          v64 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = *(v0 + 64);
        v37 = *(v0 + 48);
        v38 = *(v0 + 16);

        v66(v36, v38, v37);

        v39 = sub_1000063A0();
        v40 = sub_1000064C0();

        v41 = os_log_type_enabled(v39, v40);
        v42 = *(v0 + 64);
        v43 = *(v0 + 48);
        if (v41)
        {
          v44 = *(v0 + 32);
          v63 = *(v0 + 40);
          v45 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v45 = 134218498;
          *(v45 + 4) = v64;
          v67 = v24;
          *(v45 + 12) = 2080;
          *(v45 + 14) = sub_100002BB4(v44, v63, &v69);
          *(v45 + 22) = 2080;
          sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v46 = sub_100006550();
          v48 = v47;
          v68(v42, v43);
          v49 = v46;
          v24 = v67;
          v50 = sub_100002BB4(v49, v48, &v69);

          *(v45 + 24) = v50;
          _os_log_impl(&_mh_execute_header, v39, v40, "Loaded %ld default configurations for role %s from %s", v45, 0x20u);
          swift_arrayDestroy();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v68(v42, v43);
        }

        v51 = *(v0 + 8);

        return v51(v24);
      }
    }

    v26 = *(v0 + 32);
    v25 = *(v0 + 40);
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_1000064E0(41);

    v69 = 0xD000000000000027;
    v70 = 0x8000000100007170;
    v73._countAndFlagsBits = v26;
    v73._object = v25;
    sub_100006410(v73);
    v28 = v69;
    v27 = v70;

    v29 = sub_1000063A0();
    v30 = sub_1000064B0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v69 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100002BB4(v28, v27, &v69);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s", v31, 0xCu);
      sub_100005F00(v32);
    }

    sub_100005EAC();
    swift_allocError();
    *v33 = v28;
    v33[1] = v27;
    swift_willThrow();
  }

  else
  {
    v24 = [v19 hostConfiguration];
    if (v24)
    {
      goto LABEL_14;
    }

    v54 = *(v0 + 32);
    v53 = *(v0 + 40);
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_1000064E0(57);
    v74._countAndFlagsBits = 0xD000000000000037;
    v74._object = 0x8000000100007130;
    sub_100006410(v74);
    v75._countAndFlagsBits = v54;
    v75._object = v53;
    sub_100006410(v75);
    v56 = v69;
    v55 = v70;

    v57 = sub_1000063A0();
    v58 = sub_1000064B0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v69 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_100002BB4(v56, v55, &v69);
      _os_log_impl(&_mh_execute_header, v57, v58, "%s", v59, 0xCu);
      sub_100005F00(v60);
    }

    sub_100005EAC();
    swift_allocError();
    *v61 = v56;
    v61[1] = v55;
    swift_willThrow();
  }

  swift_unknownObjectRelease();

  v62 = *(v0 + 8);

  return v62();
}

unint64_t sub_100004DE0(uint64_t a1)
{
  v2 = sub_100001F80(&qword_10000C9F8, &qword_1000072C8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001F80(&qword_10000C9E0, &qword_1000072C0);
    v7 = sub_100006540();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005FE0(v9, v5, &qword_10000C9F8, &qword_1000072C8);
      result = sub_10000315C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100006390();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100004FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100006390();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_100006370();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10000510C, 0, 0);
}

uint64_t sub_10000510C()
{
  v126 = v0;
  if (qword_10000C830 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 16);
  v5 = sub_1000063C0();
  sub_100005E74(v5, qword_10000C980);
  v121 = *(v3 + 16);
  v121(v1, v4, v2);

  v6 = sub_1000063A0();
  v7 = sub_1000064C0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  if (v8)
  {
    v13 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100002BB4(v13, v12, &v124);
    *(v14 + 12) = 2080;
    sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = sub_100006550();
    v17 = v16;
    v123 = *(v10 + 8);
    v123(v9, v11);
    v18 = sub_100002BB4(v15, v17, &v124);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Updating Switcher configuration for role %s from %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v123 = *(v10 + 8);
    v123(v9, v11);
  }

  v19 = sub_100003A04(*(v0 + 16), *(v0 + 32), *(v0 + 40));
  if ([v19 respondsToSelector:"switcherConfigurationForCurrentConfiguration:"])
  {
    v20 = [v19 switcherConfigurationForCurrentConfiguration:*(v0 + 24)];
    if (v20)
    {
      goto LABEL_54;
    }
  }

  if (([v19 respondsToSelector:"updatedPosterConfigurationsForCurrentConfiguration:"] & 1) == 0 || (v21 = objc_msgSend(v19, "updatedPosterConfigurationsForCurrentConfiguration:", *(v0 + 24))) == 0)
  {
    v31 = *(v0 + 32);
    v30 = *(v0 + 40);
    v124 = 0;
    v125 = 0xE000000000000000;
    sub_1000064E0(45);

    v124 = 0xD00000000000002BLL;
    v125 = 0x8000000100006FC0;
    v128._countAndFlagsBits = v31;
    v128._object = v30;
    sub_100006410(v128);
    v33 = v124;
    v32 = v125;

    v34 = sub_1000063A0();
    v35 = sub_1000064B0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v124 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100002BB4(v33, v32, &v124);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s", v36, 0xCu);
      sub_100005F00(v37);
    }

    sub_100005EAC();
    swift_allocError();
    *v38 = v33;
    v38[1] = v32;
    swift_willThrow();
    swift_unknownObjectRelease();

    v39 = *(v0 + 8);

    return v39();
  }

  v22 = v21;
  v23 = sub_100006450();

  v24 = sub_1000063A0();
  v25 = sub_1000064C0();

  v114 = v23;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 32);
    v26 = *(v0 + 40);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v124 = v29;
    *v28 = 134218242;
    *(v28 + 4) = *(v23 + 16);

    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_100002BB4(v27, v26, &v124);
    _os_log_impl(&_mh_execute_header, v24, v25, "Got %ld UUIDs from host configuration provider for role %s", v28, 0x16u);
    sub_100005F00(v29);
  }

  else
  {
  }

  v41 = [*(v0 + 24) entries];
  sub_100005F4C();
  v42 = sub_100006450();

  v43 = sub_100004DE0(&_swiftEmptyArrayStorage);
  if (v42 >> 62)
  {
    v104 = v43;
    v44 = sub_100006510();
    v43 = v104;
  }

  else
  {
    v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = *(v0 + 56);
  v117 = (v45 + 16);
  v118 = v43;
  v115 = v45;
  v46 = (v45 + 8);
  if (!v44)
  {
LABEL_42:

    v124 = &_swiftEmptyArrayStorage;
    v72 = *(v114 + 16);
    if (v72)
    {
      v73 = *(*(v0 + 56) + 80);
      v74 = v114 + ((v73 + 32) & ~v73);
      v75 = v115[9];
      v77 = v118;
      v116 = v115[2];
      v76 = v116;
      v116(*(v0 + 64), v74, *(v0 + 48));
      while (v77[2])
      {
        v79 = sub_10000315C(*(v0 + 64));
        v78 = *v46;
        if ((v80 & 1) == 0)
        {
          goto LABEL_45;
        }

        v81 = v75;
        v82 = *(v0 + 64);
        v83 = *(v0 + 48);
        v84 = *(v77[7] + 8 * v79);
        v78(v82, v83);
        sub_100006430();
        if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100006460();
        }

        sub_100006470();
        v77 = v118;
        v75 = v81;
        v76 = v116;
LABEL_46:
        v74 += v75;
        if (!--v72)
        {
          goto LABEL_53;
        }

        v76(*(v0 + 64), v74, *(v0 + 48));
      }

      v78 = *v46;
LABEL_45:
      v78(*(v0 + 64), *(v0 + 48));
      goto LABEL_46;
    }

LABEL_53:

    v85 = objc_allocWithZone(PRSHostConfiguration);
    isa = sub_100006440().super.isa;

    v20 = [v85 initWithConfigurationEntries:isa];

LABEL_54:
    v87 = [v20 entries];
    sub_100005F4C();
    v88 = sub_100006450();

    if (v88 >> 62)
    {
      v119 = sub_100006510();
    }

    else
    {
      v119 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v120 = v20;
    v89 = *(v0 + 104);
    v90 = *(v0 + 88);
    v91 = *(v0 + 16);

    v121(v89, v91, v90);

    v92 = sub_1000063A0();
    v93 = sub_1000064C0();

    v94 = os_log_type_enabled(v92, v93);
    v95 = *(v0 + 104);
    v96 = *(v0 + 88);
    if (v94)
    {
      v97 = *(v0 + 32);
      v122 = *(v0 + 40);
      v98 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v98 = 134218498;
      *(v98 + 4) = v119;
      *(v98 + 12) = 2080;
      *(v98 + 14) = sub_100002BB4(v97, v122, &v124);
      *(v98 + 22) = 2080;
      sub_100005F98(&qword_10000C9D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v99 = sub_100006550();
      v101 = v100;
      v123(v95, v96);
      v102 = sub_100002BB4(v99, v101, &v124);

      *(v98 + 24) = v102;
      _os_log_impl(&_mh_execute_header, v92, v93, "Updated Switcher configuration with %ld default configurations for role %s from %s", v98, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v123(v95, v96);
    }

    v103 = *(v0 + 8);

    return v103(v120);
  }

  v47 = 0;
  while (1)
  {
    v48 = v47;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v49 = sub_1000064F0();
      }

      else
      {
        if (v48 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v49 = *(v42 + 8 * v48 + 32);
      }

      v50 = v49;
      v47 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v51 = [v49 posterUUID];
      if (v51)
      {
        break;
      }

      ++v48;
      if (v47 == v44)
      {
        goto LABEL_42;
      }
    }

    v52 = *(v0 + 72);
    v109 = *(v0 + 80);
    v111 = *(v0 + 48);
    v53 = v51;
    sub_100006380();

    v105 = *v117;
    (*v117)(v52, v109, v111);
    v110 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124 = v118;
    v55 = sub_10000315C(v52);
    v56 = v118[2];
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      break;
    }

    if (v118[3] < v58)
    {
      v59 = *(v0 + 72);
      v106 = v54;
      sub_1000033B4(v58, isUniquelyReferenced_nonNull_native);
      v118 = v124;
      v60 = sub_10000315C(v59);
      v62 = v61 & 1;
      v54 = v106;
      if ((v106 & 1) == v62)
      {
        v55 = v60;
        goto LABEL_37;
      }

LABEL_64:
      v58 = *(v0 + 48);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v58);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v108 = v54;
      sub_100003790();
      v54 = v108;
      v118 = v124;
    }

LABEL_37:
    v63 = *(v0 + 72);
    v113 = *(v0 + 80);
    v64 = *(v0 + 48);
    v107 = v63;
    if (v54)
    {
      v65 = v118[7];
      v66 = *(v65 + 8 * v55);
      *(v65 + 8 * v55) = v110;

      v67 = *v46;
      (*v46)(v107, v64);
      v67(v113, v64);
      if (v47 == v44)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v118[(v55 >> 6) + 8] |= 1 << v55;
      v105(v118[6] + v115[9] * v55, v63, v64);
      *(v118[7] + 8 * v55) = v110;

      v68 = v115[1];
      v68(v107, v64);
      v58 = (v68)(v113, v64);
      v69 = v118[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_70;
      }

      v118[2] = v71;
      if (v47 == v44)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v58);
}

uint64_t sub_100005E74(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100005EAC()
{
  result = qword_10000C9C8;
  if (!qword_10000C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9C8);
  }

  return result;
}

uint64_t sub_100005F00(void *a1)
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

unint64_t sub_100005F4C()
{
  result = qword_10000C9D0;
  if (!qword_10000C9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C9D0);
  }

  return result;
}

uint64_t sub_100005F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005FE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001F80(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006048(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1000060A8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000610C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006164()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100002324;

  return sub_10000182C(v2, v3, v4, v5, v6);
}

uint64_t sub_10000622C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_10000626C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000062C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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