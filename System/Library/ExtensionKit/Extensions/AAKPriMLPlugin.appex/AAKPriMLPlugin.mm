id sub_100001808(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1000051B0();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  v11 = v10;

  if (v11)
  {
    v12 = sub_1000051A0();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1000018E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AAKPriMLTaskProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100001948@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_100005210();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100001D08(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100001D08((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_100005200();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1000051E0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1000051E0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_100005210();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100001D08(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_100005210();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100001D08(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100001D08((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1000051E0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_100001D08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002124(&qword_10000C550, &qword_100005968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100001E14(uint64_t a1, unint64_t a2)
{
  v8[0] = 58;
  v8[1] = 0xE100000000000000;
  v7[2] = v8;

  if (*(sub_100001948(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000221C, v7, a1, a2, v4) + 2) >= 3uLL)
  {

    v6 = sub_1000051C0();

    return v6;
  }

  else
  {

    return 0x656D697265707865;
  }
}

uint64_t sub_100001F18(uint64_t a1, unint64_t a2)
{
  v7[0] = 58;
  v7[1] = 0xE100000000000000;
  v6[2] = v7;

  if (*(sub_100001948(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000221C, v6, a1, a2, v4) + 2) >= 5uLL)
  {

    a1 = sub_1000051C0();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_100002004(uint64_t a1, unint64_t a2)
{
  v8[0] = 58;
  v8[1] = 0xE100000000000000;
  v7[2] = v8;

  if (*(sub_100001948(0x7FFFFFFFFFFFFFFFLL, 1, sub_100002108, v7, a1, a2, v4) + 2) >= 4uLL)
  {

    v6 = sub_1000051C0();

    return v6;
  }

  else
  {

    return 0x656D796F6C706564;
  }
}

uint64_t sub_100002124(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002170(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000052C0() & 1;
  }
}

unint64_t sub_1000021C8()
{
  result = qword_10000C558;
  if (!qword_10000C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C558);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AAKPriMLPluginError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AAKPriMLPluginError(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_1000023C0()
{
  v1 = *v0;
  sub_100005320();
  sub_100005330(v1 + 9801);
  return sub_100005340();
}

Swift::Int sub_100002440(uint64_t a1)
{
  v2 = *v1;
  sub_100005320();
  sub_100005330(v2 + 9801);
  return sub_100005340();
}

void *sub_100002488@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result - 9801;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1000024C0()
{
  result = qword_10000C5D0;
  if (!qword_10000C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5D0);
  }

  return result;
}

uint64_t sub_100002518(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002578();
  v5 = sub_1000025CC();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_100002578()
{
  result = qword_10000C5D8;
  if (!qword_10000C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5D8);
  }

  return result;
}

unint64_t sub_1000025CC()
{
  result = qword_10000C5E0;
  if (!qword_10000C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5E0);
  }

  return result;
}

uint64_t sub_100002650()
{
  v1 = *(v0 + 16);
  v2 = enum case for TaskResolution.download(_:);
  v3 = sub_1000050B0();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000026FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004F8C;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_1000027AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002854;

  return sub_100004120(a1);
}

uint64_t sub_100002854(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100002950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100002A34;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002A34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002B28(uint64_t a1)
{
  v2 = sub_100002CB0();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002BD0();
  sub_100005020();
  return 0;
}

unint64_t sub_100002BD0()
{
  result = qword_10000C5E8;
  if (!qword_10000C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5E8);
  }

  return result;
}

unint64_t sub_100002CB0()
{
  result = qword_10000C6A0;
  if (!qword_10000C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C6A0);
  }

  return result;
}

unint64_t sub_100002D04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002DD0(v11, 0, 0, 1, a1, a2);
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
    sub_100004DCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004D80(v11);
  return v7;
}

unint64_t sub_100002DD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002EDC(a5, a6);
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
    result = sub_1000052B0();
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

char *sub_100002EDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002F28(a1, a2);
  sub_100003058(&off_100008618);
  return v3;
}

char *sub_100002F28(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003144(v5, 0);
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

  result = sub_1000052B0();
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
        v10 = sub_1000051F0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003144(v10, 0);
        result = sub_1000052A0();
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

uint64_t sub_100003058(uint64_t result)
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

  result = sub_1000031B8(result, v11, 1, v3);
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

void *sub_100003144(uint64_t a1, uint64_t a2)
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

  sub_100002124(&qword_10000C6C8, &qword_100005BA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000031B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002124(&qword_10000C6C8, &qword_100005BA0);
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

unint64_t sub_1000032AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005270(*(v2 + 40));

  return sub_100003368(a1, v4);
}

unint64_t sub_1000032F0(uint64_t a1, uint64_t a2)
{
  sub_100005320();
  sub_1000051D0();
  v4 = sub_100005340();

  return sub_100003430(a1, a2, v4);
}

unint64_t sub_100003368(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100004F30(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100005280();
      sub_100004EDC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100003430(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000052C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1000034E8()
{
  v0 = sub_100005160();
  v40 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v38 - v5;
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  v39 = [objc_allocWithZone(BMSQLDatabase) initWithPrivileges:0 isColumnAccessLoggingEnabled:0];
  v9 = sub_100005240();
  v10 = [v9 error];
  if (v10)
  {

LABEL_12:
    sub_100005090();
    v22 = v9;
    v23 = sub_100005150();
    v24 = sub_100005260();

    if (os_log_type_enabled(v23, v24))
    {
      v38 = v0;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43[0] = v26;
      *v25 = 136315138;
      v27 = [v22 error];
      if (v27)
      {
        v28 = v27;
        swift_getErrorValue();
        v29 = sub_1000052D0();
        v31 = v30;
      }

      else
      {
        v31 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E55;
      }

      v32 = sub_100002D04(v29, v31, v43);

      *(v25 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to query AdAttributionKit.AggregatedReporting.Conversion with error: %s", v25, 0xCu);
      sub_100004D80(v26);

      (*(v40 + 8))(v3, v38);
    }

    else
    {

      (*(v40 + 8))(v3, v0);
    }

    v33 = 1;
LABEL_19:
    sub_1000021C8();
    swift_allocError();
    *v34 = v33;
    swift_willThrow();

    return;
  }

  if (![v9 next])
  {
    goto LABEL_12;
  }

  v11 = [v9 row];
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = v11;
  v13 = sub_100005180();

  v41 = 0x6C61746F74;
  v42 = 0xE500000000000000;
  sub_100005290();
  if (!*(v13 + 16) || (v14 = sub_1000032AC(v43), (v15 & 1) == 0))
  {

    sub_100004EDC(v43);
LABEL_21:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_22;
  }

  sub_100004DCC(*(v13 + 56) + 32 * v14, &v44);
  sub_100004EDC(v43);

  if (!*(&v45 + 1))
  {
LABEL_22:
    sub_100004E7C(&v44, &unk_10000C6E0, &unk_100005BB0);
    goto LABEL_23;
  }

  sub_100004D34();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    sub_100005090();
    v35 = sub_100005150();
    v36 = sub_100005260();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "No Conversion data found in the database", v37, 2u);
    }

    (*(v40 + 8))(v6, v0);
    v33 = 2;
    goto LABEL_19;
  }

  v16 = v43[0];
  if ([v43[0] integerValue] < 1)
  {

    goto LABEL_23;
  }

  sub_100005090();
  v17 = v16;
  v18 = sub_100005150();
  v19 = sub_100005250();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = [v17 integerValue];

    _os_log_impl(&_mh_execute_header, v18, v19, "PreflightCheck Passed: found %ld conversion(s) in the database", v20, 0xCu);

    v21 = v9;
    v9 = v17;
    v17 = v39;
  }

  else
  {

    v21 = v39;
    v18 = v17;
  }

  (*(v40 + 8))(v8, v0);
}

uint64_t sub_100003AB8()
{
  v0 = sub_100005160();
  v54 = *(v0 - 8);
  v55 = v0;
  v1 = __chkstk_darwin(v0);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v52 = &v49 - v3;
  v4 = sub_100004FB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005010();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  sub_100004FD0();
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.isDirectory(_:), v4);
  sub_100004E28();
  sub_100005000();
  (*(v5 + 8))(v7, v4);
  v15 = *(v9 + 8);
  v15(v12, v8);
  v16 = sub_100004FF0(0);
  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  v51 = v16;
  v21 = sub_1000051A0();
  v22 = [v20 fileExistsAtPath:v21];

  if (!v22)
  {
    v15(v14, v8);
  }

  v49 = v15;
  v50 = v8;
  v23 = [v19 defaultManager];
  sub_100004FE0(v24);
  v26 = v25;
  v56 = 0;
  v27 = [v23 removeItemAtURL:v25 error:&v56];

  if (v27)
  {
    v28 = v56;
    v29 = v52;
    sub_100005090();

    v30 = sub_100005150();
    v31 = sub_100005250();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = v33;
      *v32 = 136315138;
      v34 = sub_100002D04(v51, v18, &v56);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Attachments folder removed %s", v32, 0xCu);
      sub_100004D80(v33);
    }

    else
    {
    }

    (*(v54 + 8))(v29, v55);
  }

  else
  {
    v36 = v56;
    sub_100004FA0();

    swift_willThrow();
    v37 = v53;
    sub_100005090();

    swift_errorRetain();
    v38 = sub_100005150();
    v39 = sub_100005260();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v50;
    if (!v40)
    {

      (*(v54 + 8))(v37, v55);
      v47 = v14;
      v48 = v41;
      return v49(v47, v48);
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56 = v44;
    *v42 = 136315394;
    v45 = sub_100002D04(v51, v18, &v56);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2112;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 14) = v46;
    *v43 = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "Failed to remove attachments folder %s: %@", v42, 0x16u);
    sub_100004E7C(v43, &qword_10000C6D8, &qword_100005BA8);

    sub_100004D80(v44);

    (*(v54 + 8))(v53, v55);
  }

  v47 = v14;
  v48 = v50;
  return v49(v47, v48);
}

uint64_t sub_100004120(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_100005160();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_1000050A0();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_100005110();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000042B0, 0, 0);
}

uint64_t sub_1000042B0()
{
  sub_1000034E8();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  (*(v6 + 104))(v5, enum case for PFLTaskSource.CKProd(_:), v7);
  sub_100005080();
  sub_100005100();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v1, v2, v3);
  type metadata accessor for AAKTaskDiscoveryPolicy();
  swift_allocObject();
  sub_100004CEC(&qword_10000C6A8, v8, type metadata accessor for AAKTaskDiscoveryPolicy, &unk_100005B18);
  v0[19] = sub_1000050F0();
  swift_allocObject();
  v0[20] = sub_1000050E0();
  v0[4] = sub_1000050C0();
  v9 = sub_100004CEC(&qword_10000C6B0, 255, &type metadata accessor for PFLTaskDiscovery, &protocol conformance descriptor for PFLTaskDiscovery);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1000045BC;
  v11 = v0[19];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 5, v11, v9);
}

uint64_t sub_1000045BC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100004C60;
  }

  else
  {
    v2 = sub_1000046D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000046F4(uint64_t a1, uint64_t a2)
{
  v51 = v2;
  super_class = v2[11].super_class;
  if (super_class)
  {
    sub_100005090();

    v4 = sub_100005150();
    v5 = sub_100005250();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v2[5].super_class;
    receiver = v2[4].receiver;
    v8 = v2[4].super_class;
    if (v6)
    {
      v48 = v2[5].super_class;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v50 = v11;
      *v10 = 136315138;
      v12 = sub_100005140();
      v14 = sub_100002D04(v12, v13, &v50);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Start processing task %s", v10, 0xCu);
      sub_100004D80(v11);

      v15 = *(v8 + 1);
      v15(v48, receiver);
    }

    else
    {

      v15 = *(v8 + 1);
      v15(v7, receiver);
    }

    v23 = type metadata accessor for AAKPriMLTaskProvider();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR____TtC14AAKPriMLPlugin20AAKPriMLTaskProvider_task] = super_class;
    v2[1].receiver = v24;
    v2[1].super_class = v23;

    v49 = objc_msgSendSuper2(v2 + 1, "init");
    v25 = [objc_opt_self() runAllRecipesWithAssetProvider:v49];
    sub_100004D34();
    v26 = sub_100005180();

    v27 = sub_100005140();
    if (*(v26 + 16))
    {
      v29 = sub_1000032F0(v27, v28);
      v31 = v30;

      if ((v31 & 1) != 0 && [*(*(v26 + 56) + 8 * v29) integerValue] > 0)
      {
LABEL_14:
        sub_100005090();

        v32 = sub_100005150();
        v33 = sub_100005250();

        v34 = os_log_type_enabled(v32, v33);
        v35 = v2[5].receiver;
        v36 = v2[4].receiver;
        if (v34)
        {
          v47 = v15;
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v50 = v38;
          *v37 = 136315138;
          v39 = sub_100005190();
          v46 = v35;
          v41 = v40;

          v42 = sub_100002D04(v39, v41, &v50);

          *(v37 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v32, v33, "Recorded the following record counts in experiments %s", v37, 0xCu);
          sub_100004D80(v38);

          v47(v46, v36);
        }

        else
        {

          v15(v35, v36);
        }

        v43 = sub_100004CEC(&qword_10000C6B0, 255, &type metadata accessor for PFLTaskDiscovery, &protocol conformance descriptor for PFLTaskDiscovery);
        v44 = swift_task_alloc();
        v2[10].super_class = v44;
        *v44 = v2;
        *(v44 + 1) = sub_1000045BC;
        v45 = v2[9].super_class;

        return dispatch thunk of AsyncIteratorProtocol.next()(&v2[2].super_class, v45, v43);
      }
    }

    else
    {
    }

    sub_1000050D0();
    goto LABEL_14;
  }

  v16 = v2[9].receiver;
  v17 = v2[7].super_class;
  v18 = v2[8].receiver;

  sub_100003AB8();
  v19 = objc_allocWithZone(sub_100005040());
  v20 = sub_100005030();

  v18[1](v16, v17);

  v21 = v2->super_class;

  return v21(v20);
}

uint64_t sub_100004C60()
{
  *(v0 + 48) = *(v0 + 176);
  sub_100002124(&qword_10000C6B8, &qword_100005B98);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100004CEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100004D34()
{
  result = qword_10000C6C0;
  if (!qword_10000C6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C6C0);
  }

  return result;
}

uint64_t sub_100004D80(void *a1)
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

uint64_t sub_100004DCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100004E28()
{
  result = qword_10000C6D0;
  if (!qword_10000C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C6D0);
  }

  return result;
}

uint64_t sub_100004E7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002124(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}