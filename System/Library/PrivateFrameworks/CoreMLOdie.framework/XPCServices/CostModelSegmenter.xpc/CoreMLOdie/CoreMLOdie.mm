int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_10028D904();
  __chkstk_darwin(v3 - 8);
  qword_1002C36D8 = 0xD000000000000021;
  unk_1002C36E0 = 0x800000010028FE40;
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 environment];

  v6 = sub_10028D9B4();
  if (*(v6 + 16) && (v7 = sub_100002110(0xD000000000000022, 0x800000010028FE70), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];

    if (v11 == 49 && v10 == 0xE100000000000000)
    {

      v13 = 1;
    }

    else
    {
      v13 = sub_10028DAF4();
    }
  }

  else
  {

    v13 = 0;
  }

  byte_1002C36E8 = v13 & 1;

  sub_10028D8F4();
  sub_10028D934();
  swift_allocObject();
  qword_1002C36F0 = sub_10028D924();
  dispatch_main();
}

void *sub_100001430()
{
  if (byte_1002C36E8 == 1)
  {
    sub_1000018F4();
  }

  sub_100002208();
  result = sub_10028D944();
  if (v4 >> 60 != 15)
  {
    sub_10000225C(v3, v4);
    mlirDialectRegistryCreate();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000018F4()
{
  v0 = sub_10028D954();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028D974();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000030B0();
  v8 = sub_10028DA24();
  aBlock[4] = sub_100001CB8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000020CC;
  aBlock[3] = &unk_1002B1660;
  v9 = _Block_copy(aBlock);
  sub_10028D964();
  v11[1] = &_swiftEmptyArrayStorage;
  sub_100003114();
  sub_1000022B0(&qword_1002C0200, &qword_10028E970);
  sub_10000316C();
  sub_10028DA44();
  sub_10028DA34();
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

unsigned int *sub_100001B54(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v11, 0, 14);
      v6 = *(a3 + 16);
      v5 = 0;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v4)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      v5 = BYTE6(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v6 = *(a3 + 16);
LABEL_9:
      v9 = cmlDeserializeMlirModule(v6, v11, v5);

      return v9;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v9 = sub_1000027F0(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

  return v9;
}

uint64_t sub_100001CB8()
{
  v0 = sub_10028D954();
  v19 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10028D974();
  v17 = *(v3 - 8);
  v18 = v3;
  __chkstk_darwin(v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028D994();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  sub_10028DA04();
  v16[1] = sub_10028D9F4();
  sub_10028D9E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000030B0();
  v13 = sub_10028DA24();
  sub_10028D984();
  sub_10028D9A4();
  v16[0] = *(v7 + 8);
  (v16[0])(v10, v6);
  aBlock[4] = sub_10000205C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000020CC;
  aBlock[3] = &unk_1002B1688;
  v14 = _Block_copy(aBlock);
  sub_10028D964();
  v20 = &_swiftEmptyArrayStorage;
  sub_100003114();
  sub_1000022B0(&qword_1002C0200, &qword_10028E970);
  sub_10000316C();
  sub_10028DA44();
  sub_10028DA14();
  _Block_release(v14);

  (*(v19 + 8))(v2, v0);
  (*(v17 + 8))(v5, v18);
  (v16[0])(v12, v6);
}

void sub_10000205C()
{
  sub_10028DA04();
  sub_10028D9F4();
  sub_10028D9E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  exit(0);
}

uint64_t sub_1000020CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_100002110(uint64_t a1, uint64_t a2)
{
  sub_10028DB44();
  sub_10028D9C4();
  v4 = sub_10028DB64();

  return sub_100002304(a1, a2, v4);
}

uint64_t sub_1000021AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000021CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_100002208()
{
  result = qword_1002C01D0;
  if (!qword_1002C01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C01D0);
  }

  return result;
}

uint64_t sub_10000225C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000022B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002304(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10028DAF4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1000023BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000023DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000023DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000022B0(&qword_1002C0210, &qword_10028E978);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1000024E0(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_100002F4C(v5, v4);
      __b = v5;
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *result = xmmword_10028E920;
      sub_100002F4C(0, 0xC000000000000000);
      sub_100002748(&__b, v2);
      v7 = __b;
      v8 = v22 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_100002F4C(v5, v4);
      __b = v5;
      LOWORD(v22) = v4;
      BYTE2(v22) = BYTE2(v4);
      BYTE3(v22) = BYTE3(v4);
      BYTE4(v22) = BYTE4(v4);
      BYTE5(v22) = BYTE5(v4);
      BYTE6(v22) = BYTE6(v4);
      memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
    }

    *result = v7;
    result[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  sub_100002F4C(v5, v4);
  __b = v5;
  v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *result = xmmword_10028E920;
  sub_100002F4C(0, 0xC000000000000000);
  sub_10028D8B4();
  v9 = v22;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  v12 = sub_10028D864();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_10028D894();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_16;
  }

  v18 = sub_10028D884();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  memset((v13 + v15), v2, v19);
  *result = __b;
  result[1] = v9 | 0x8000000000000000;
}

void sub_100002748(int *a1, int a2)
{
  sub_10028D8C4();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_10028D864();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_10028D894();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = sub_10028D884();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

unsigned int *sub_1000027F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10028D864();
  v8 = result;
  if (result)
  {
    result = sub_10028D894();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = (a2 - a1);
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_10028D884();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  return cmlDeserializeMlirModule(*(a4 + 16), v8, v11);
}

uint64_t sub_100002880(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_10028D8A4();
      swift_allocObject();
      sub_10028D874();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_10028D8D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100002920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10028D864();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_10028D894();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_10028D884();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = cmlSerializeMlirModule(*(a4 + 16), v8 + v9, v13);
  if (result < 1)
  {
    v14 = result;
    sub_10000305C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    return v14;
  }

  return result;
}

uint64_t sub_1000029F0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      swift_retain_n();
      sub_100002F4C(v7, v6);
      *&v27 = v7;
      WORD4(v27) = v6;
      BYTE10(v27) = BYTE2(v6);
      BYTE11(v27) = BYTE3(v6);
      BYTE12(v27) = BYTE4(v6);
      BYTE13(v27) = BYTE5(v6);
      BYTE14(v27) = BYTE6(v6);
      v9 = cmlSerializeMlirModule(*(a2 + 16), &v27, BYTE6(v6));
      if (v9 <= 0)
      {
        sub_10000305C();
        swift_allocError();
        *v21 = 1;
        swift_willThrow();
        v22 = v27;
        v23 = DWORD2(v27) | ((WORD6(v27) | (BYTE14(v27) << 16)) << 32);

        *a1 = v22;
        a1[1] = v23;
      }

      else
      {
        v10 = v27;
        v11 = DWORD2(v27) | ((WORD6(v27) | (BYTE14(v27) << 16)) << 32);
        v12 = v9;

        result = v12;
        *a1 = v10;
        a1[1] = v11;
      }

      return result;
    }

    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    swift_retain_n();
    sub_10000225C(v7, v6);
    sub_100002F4C(v7, v6);
    *a1 = xmmword_10028E920;
    sub_100002F4C(0, 0xC000000000000000);
    v19 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v19 < v7)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (sub_10028D864() && __OFSUB__(v7, sub_10028D894()))
      {
LABEL_25:
        __break(1u);
      }

      sub_10028D8A4();
      swift_allocObject();
      v25 = sub_10028D854();

      v18 = v25;
      v3 = v2;
    }

    if (v19 >= v7)
    {

      v26 = sub_100002920(v7, v7 >> 32, v18, a2);

      *a1 = v7;
      a1[1] = v18 | 0x4000000000000000;
      if (!v3)
      {
        return v26;
      }

      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v8 == 2)
  {
    swift_retain_n();
    sub_10000225C(v7, v6);
    sub_100002F4C(v7, v6);
    *&v27 = v7;
    *(&v27 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10028E920;
    sub_100002F4C(0, 0xC000000000000000);
    sub_10028D8B4();
    v14 = *(&v27 + 1);
    v15 = *(v27 + 16);
    v16 = *(v27 + 24);

    v17 = sub_100002920(v15, v16, *(&v27 + 1), a2);
    if (v3)
    {
    }

    else
    {
      v24 = v17;

      result = v24;
    }

    *a1 = v27;
    a1[1] = v14 | 0x8000000000000000;
  }

  else
  {
    *(&v27 + 7) = 0;
    *&v27 = 0;
    result = cmlSerializeMlirModule(*(a2 + 16), &v27, 0);
    if (result < 1)
    {
      sub_10000305C();
      swift_allocError();
      *v20 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

char *sub_100002E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_10:
    type metadata accessor for MlirStringRef(0);
    result = sub_10028DA54();
    if (!v4)
    {
      return v8;
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a4 & 0x1000000000000000) != 0)
      {
        v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        sub_10028D9D4();
        return v6;
      }

      return result;
    }

    goto LABEL_10;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    sub_10028D9D4();
  }

  return &v7;
}

uint64_t sub_100002F4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100002FA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002F4C(result, a2);
  }

  return result;
}

unint64_t sub_100003008()
{
  result = qword_1002C01E0;
  if (!qword_1002C01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C01E0);
  }

  return result;
}

unint64_t sub_10000305C()
{
  result = qword_1002C01E8;
  if (!qword_1002C01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C01E8);
  }

  return result;
}

unint64_t sub_1000030B0()
{
  result = qword_1002C01F0;
  if (!qword_1002C01F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002C01F0);
  }

  return result;
}

uint64_t sub_1000030FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100003114()
{
  result = qword_1002C01F8;
  if (!qword_1002C01F8)
  {
    sub_10028D954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C01F8);
  }

  return result;
}

unint64_t sub_10000316C()
{
  result = qword_1002C0208;
  if (!qword_1002C0208)
  {
    sub_1000031D0(&qword_1002C0200, &qword_10028E970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0208);
  }

  return result;
}

uint64_t sub_1000031D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100003248(uint64_t a1, unint64_t *a2, uint64_t a3)
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

__n128 sub_100003298(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000032A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000032C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1000032FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    v5 = result;
    v7 = sub_10028D9D4();
    result = v5;
    *a4 = v5;
    a4[1] = v7;
  }

  else
  {
    v4 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    *a4 = result;
    a4[1] = v4;
  }

  return result;
}

uint64_t sub_1000033A0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000033BC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000033E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100003400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100003448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000034BC()
{
  v1 = *v0;
  sub_10028DB44();
  sub_10028DB54(v1);
  return sub_10028DB64();
}

Swift::Int sub_100003530(uint64_t a1)
{
  v2 = *v1;
  sub_10028DB44();
  sub_10028DB54(v2);
  return sub_10028DB64();
}

uint64_t sub_100003574()
{
  v1 = *v0;
  v2 = 0x7942656C75646F6DLL;
  v3 = 0x6D726F6674616C70;
  v4 = 0x6150656C646E7562;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65746167656C6564;
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

uint64_t sub_10000362C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000039B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000366C(uint64_t a1)
{
  v2 = sub_100003FD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000036A8(uint64_t a1)
{
  v2 = sub_100003FD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000036E4(void *a1)
{
  v3 = v1;
  v5 = sub_1000022B0(&qword_1002C02E0, &qword_10028EB08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_100003F8C(a1, a1[3]);
  sub_100003FD0();
  sub_10028DB84();
  v12 = *v3;
  v13 = v12;
  v11[23] = 0;
  sub_1000040FC(&v13, v11);
  sub_100003008();
  sub_10028DAA4();
  if (v2)
  {
    sub_100002FA0(v12, *(&v12 + 1));
  }

  else
  {
    sub_100002FA0(v12, *(&v12 + 1));
    *&v12 = *(v3 + 2);
    v11[0] = 1;
    sub_1000022B0(&qword_1002C02D0, &qword_10028EB00);
    sub_10000416C(&qword_1002C02F0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_10028DAD4();
    LOBYTE(v12) = 2;
    sub_10028DAB4();
    LOBYTE(v12) = 3;
    sub_10028DAB4();
    LOBYTE(v12) = 4;
    sub_10028DAC4();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_10000394C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100003B7C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1000039B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7942656C75646F6DLL && a2 == 0xEE0065646F636574;
  if (v4 || (sub_10028DAF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746167656C6564 && a2 == 0xEB00000000736449 || (sub_10028DAF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_10028DAF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874 || (sub_10028DAF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010028FEF0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_10028DAF4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100003B7C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000022B0(&qword_1002C02B8, &qword_10028EAF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100003F8C(a1, a1[3]);
  sub_100003FD0();
  sub_10028DB74();
  if (v2)
  {
    sub_100004024(a1);
    v30 = 0;
    v31 = 0xF000000000000000;
    v32 = &_swiftEmptyArrayStorage;
    v33 = 0;
    v34 = 0xE000000000000000;
    v35 = 0;
    v36 = 0xE000000000000000;
    v37 = 0;
    return sub_100002FB4(&v30);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_100004070();
    sub_10028DA64();
    v25 = v31;
    v26 = v30;
    sub_100002FA0(0, 0xF000000000000000);
    sub_1000022B0(&qword_1002C02D0, &qword_10028EB00);
    LOBYTE(v27) = 1;
    sub_10000416C(&qword_1002C02D8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_10028DA94();
    v23 = v30;
    v24 = v6;
    LOBYTE(v30) = 2;
    v9 = sub_10028DA74();
    v11 = v10;
    v22 = a2;
    LOBYTE(v30) = 3;
    v12 = sub_10028DA74();
    v14 = v13;
    v38 = 4;
    v15 = sub_10028DA84();
    (*(v24 + 8))(v8, v5);
    LODWORD(v24) = v15 & 1;
    v17 = v25;
    v16 = v26;
    *&v27 = v26;
    *(&v27 + 1) = v25;
    v18 = v23;
    *&v28 = v23;
    *(&v28 + 1) = v9;
    *v29 = v11;
    *&v29[8] = v12;
    *&v29[16] = v14;
    v29[24] = v24;
    sub_1000040C4(&v27, &v30);
    sub_100004024(a1);
    v30 = v16;
    v31 = v17;
    v32 = v18;
    v33 = v9;
    v34 = v11;
    v35 = v12;
    v36 = v14;
    v37 = v24;
    result = sub_100002FB4(&v30);
    v20 = v28;
    v21 = v22;
    *v22 = v27;
    v21[1] = v20;
    v21[2] = *v29;
    *(v21 + 41) = *&v29[9];
  }

  return result;
}

void *sub_100003F8C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100003FD0()
{
  result = qword_1002C02C0;
  if (!qword_1002C02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C02C0);
  }

  return result;
}

uint64_t sub_100004024(void *a1)
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

unint64_t sub_100004070()
{
  result = qword_1002C02C8;
  if (!qword_1002C02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C02C8);
  }

  return result;
}

uint64_t sub_1000040FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000022B0(&qword_1002C02E8, &qword_10028EB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000416C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000031D0(&qword_1002C02D0, &qword_10028EB00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CostModelSegmenterInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CostModelSegmenterInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000434C()
{
  result = qword_1002C02F8;
  if (!qword_1002C02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C02F8);
  }

  return result;
}

unint64_t sub_1000043A4()
{
  result = qword_1002C0300;
  if (!qword_1002C0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0300);
  }

  return result;
}

unint64_t sub_1000043FC()
{
  result = qword_1002C0308[0];
  if (!qword_1002C0308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002C0308);
  }

  return result;
}

uint64_t sub_100004454(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000044F4(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - v4;
  v7 = *(v1 + *(v6 + 96));
  v8 = *(v6 + 88);
  (*(v3 + 16))(&v11 - v4, v1 + v8, v2);

  v7(v5);

  v9 = *(v3 + 8);
  v9(v5, v2);
  v9((v1 + v8), v2);

  return v1;
}

uint64_t sub_100004654(uint64_t a1)
{
  sub_1000044F4(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_1000046C4(uint64_t a1, unsigned int a2)
{
  mlirModuleDestroy(*(v2 + 16), a2);

  return _swift_deallocClassInstance(v2, 32, 7);
}

uint64_t getEnumTagSinglePayload for MLIRErrors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLIRErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000048AC()
{
  result = qword_1002C0438;
  if (!qword_1002C0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0438);
  }

  return result;
}

unsigned int *cmlDeserializeMlirModule(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3 >= 1)
  {
    return mlirModuleCreateParse(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t cmlSerializeMlirModule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = -1;
  if (a1)
  {
    if (a2)
    {
      mlirModuleGetOperation();
      v8[0] = a2;
      v8[1] = a3;
      v8[2] = 0;
      v9 = 0;
      mlirOperationWriteBytecode(v7, sub_1000049A4, v8);
    }
  }

  return result;
}

void *sub_1000049A4(void *__src, size_t __n, uint64_t a3)
{
  if ((*(a3 + 24) & 1) == 0)
  {
    v3 = *(a3 + 16);
    if (v3 + __n <= *(a3 + 8))
    {
      __src = memcpy((*a3 + v3), __src, __n);
      *(a3 + 16) += __n;
    }

    else
    {
      *(a3 + 24) = 1;
    }
  }

  return __src;
}

void *cmlPopulateDialectRegistry(uint64_t **a1)
{
  v3[0] = off_1002B19A8;
  v4 = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, "coreml", 6uLL, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  v3[0] = off_1002B19F0;
  v4 = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect,void>::id, "coremlax", 8uLL, v3);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

const char *llvm::itanium_demangle::parse_discriminator(const char *this, const char *a2, const char *a3)
{
  if (this != a2)
  {
    v3 = *this;
    if (v3 == 95)
    {
      if (this + 1 != a2)
      {
        v4 = this[1];
        if ((v4 & 0x8000000000000000) == 0)
        {
          if ((_DefaultRuneLocale.__runetype[v4] & 0x400) != 0)
          {
            this += 2;
          }

          else if (v4 == 95)
          {
            v5 = this + 2;
            if (this + 2 != a2)
            {
              while (1)
              {
                v6 = *v5;
                if (v6 < 0 || (_DefaultRuneLocale.__runetype[v6] & 0x400) == 0)
                {
                  break;
                }

                if (++v5 == a2)
                {
                  return this;
                }
              }

              if (v6 == 95)
              {
                return v5 + 1;
              }
            }
          }
        }
      }
    }

    else if ((v3 & 0x80) == 0 && (_DefaultRuneLocale.__runetype[v3] & 0x400) != 0)
    {
      v7 = this + 1;
      while (v7 != a2)
      {
        v8 = *v7;
        if ((v8 & 0x8000000000000000) == 0)
        {
          ++v7;
          if ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
          {
            continue;
          }
        }

        return this;
      }

      return a2;
    }
  }

  return this;
}

uint64_t llvm::itaniumDemangle(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  if (!v2)
  {
    return 0;
  }

  v16[0] = v1;
  v16[1] = &v1[v2];
  v17 = v20;
  v18 = v20;
  v19 = v21;
  memset(v20, 0, sizeof(v20));
  v21[0] = v22;
  v21[1] = v22;
  memset(v22, 0, sizeof(v22));
  v21[2] = v23;
  v23[0] = v24;
  v23[1] = v24;
  v23[2] = v25;
  memset(v24, 0, sizeof(v24));
  v25[0] = v26;
  v25[1] = v26;
  v25[2] = v27;
  memset(v26, 0, sizeof(v26));
  v27[0] = v28;
  v27[1] = v28;
  v27[2] = &v29;
  memset(v28, 0, sizeof(v28));
  v29 = 1;
  v30 = 0;
  v31 = -1;
  v33 = 0;
  v32 = 0;
  v34[0] = 0u;
  v35 = v34;
  sub_1000051C0(v16, v3);
  v5 = v4;
  if (v4)
  {
    v13 = 0;
    v12 = 0u;
    v14 = -1;
    v15 = 1;
    (*(*v4 + 32))(v4, &v12);
    if ((*(v5 + 9) & 0xC0) != 0x40)
    {
      (*(*v5 + 40))(v5, &v12);
    }

    v7 = *(&v12 + 1);
    v6 = v12;
    if (*(&v12 + 1) + 1 > v13)
    {
      if (2 * v13 <= *(&v12 + 1) + 993)
      {
        v8 = *(&v12 + 1) + 993;
      }

      else
      {
        v8 = 2 * v13;
      }

      v13 = v8;
      v6 = malloc_type_realloc(v12, v8, 0x100004077774924uLL);
      *&v12 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = *(&v12 + 1);
    }

    v6[v7] = 0;
    v5 = v12;
  }

  v9 = v35;
  if (v35)
  {
    do
    {
      while (1)
      {
        v10 = *v9;
        v35 = *v9;
        if (v9 == v34)
        {
          break;
        }

        free(v9);
        v9 = v35;
        if (!v35)
        {
          goto LABEL_17;
        }
      }

      v9 = v10;
    }

    while (v10);
  }

LABEL_17:
  v34[0] = 0uLL;
  v35 = v34;
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  if (v17 != v20)
  {
    free(v17);
  }

  return v5;
}

void sub_1000051C0(const void **a1, unsigned __int16 *a2)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  if (v4 < 2)
  {
    goto LABEL_15;
  }

  if (*v3 == 23135)
  {
    *a1 = v3 + 2;
    v7 = sub_100005768(a1, a2);
    if (!v7)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v4 == 2)
  {
LABEL_15:
    sub_1000062D4(a1, a2);
    return;
  }

  if (*v3 == 24415 && v3[2] == 90)
  {
    *a1 = v3 + 3;
    v7 = sub_100005768(a1, a2);
    if (!v7)
    {
      return;
    }

LABEL_20:
    v9 = *a1;
    v8 = a1[1];
    v10 = v8 - *a1;
    if (v8 != *a1 && *v9 == 46)
    {
      v11 = a1[613];
      v12 = v11[1];
      if ((v12 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v13 = v7;
        v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v14)
        {
          std::terminate();
        }

        v11 = v14;
        v12 = 0;
        *v14 = a1[613];
        v14[1] = 0;
        a1[613] = v14;
        v7 = v13;
      }

      v11[1] = v12 + 48;
      v15 = v11 + v12;
      v15[24] = 1;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002B3868;
      *(v15 + 4) = v7;
      *(v15 + 5) = v9;
      *(v15 + 6) = v10;
      *a1 = a1[1];
    }

    return;
  }

  if (v4 < 4)
  {
    goto LABEL_15;
  }

  if (*v3 == 1516199775)
  {
    v16 = 4;
  }

  else
  {
    if (v4 == 4)
    {
      goto LABEL_15;
    }

    if (*v3 != 1600085855 || v3[4] != 90)
    {
      goto LABEL_15;
    }

    v16 = 5;
  }

  *a1 = &v3[v16];
  v27 = sub_100005768(a1, a2);
  if (v27)
  {
    v18 = *a1;
    v17 = a1[1];
    if ((v17 - *a1) >= 0xD && *v18 == 0x695F6B636F6C625FLL && *(v18 + 5) == 0x656B6F766E695F6BLL)
    {
      v20 = v18 + 13;
      *a1 = v18 + 13;
      if (v18 + 13 == v17 || *v20 != 95)
      {
        v21 = 0;
      }

      else
      {
        v20 = v18 + 14;
        *a1 = v18 + 14;
        v21 = 1;
      }

      if (v17 == v20 || (v22 = *v20, v22 < 0) || (_DefaultRuneLocale.__runetype[v22] & 0x400) == 0)
      {
        if (v21)
        {
          return;
        }
      }

      else
      {
        v23 = v20;
        while (1)
        {
          v24 = *v23;
          if (v24 < 0 || (_DefaultRuneLocale.__runetype[v24] & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v23;
          if (v23 == v17)
          {
            v25 = v17;
            goto LABEL_55;
          }
        }

        v25 = v23;
LABEL_55:
        v26 = v25 == v20;
        v20 = v23;
        if (v21 & v26)
        {
          return;
        }
      }

      if (v17 != v20)
      {
        if (*v20 != 46)
        {
          return;
        }

        *a1 = v17;
      }

      sub_100006200(a1, "invocation function for block in ", &v27);
    }
  }
}

void *sub_100005500(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 + a3 <= (*(a1 + 9) << 26 >> 26))
  {
    ++*(a2 + 32);
    v8 = *a2;
    v9 = *(a2 + 8);
    v10 = v9 + 1;
    v11 = *(a2 + 16);
    if (v9 + 1 > v11)
    {
      v12 = v9 + 993;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = 2 * v11;
      }

      *(a2 + 16) = v13;
      v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
      *a2 = v8;
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *(a2 + 8);
      v10 = v9 + 1;
    }

    *(a2 + 8) = v10;
    *(v8 + v9) = 40;
    (*(*a1 + 32))(a1, a2);
    if ((*(a1 + 9) & 0xC0) != 0x40)
    {
      (*(*a1 + 40))(a1, a2);
    }

    --*(a2 + 32);
    result = *a2;
    v14 = *(a2 + 8);
    v15 = v14 + 1;
    v16 = *(a2 + 16);
    if (v14 + 1 <= v16)
    {
      goto LABEL_20;
    }

    v17 = v14 + 993;
    if (2 * v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = 2 * v16;
    }

    *(a2 + 16) = v18;
    result = malloc_type_realloc(result, v18, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v14 = *(a2 + 8);
      v15 = v14 + 1;
LABEL_20:
      *(a2 + 8) = v15;
      *(result + v14) = 41;
      return result;
    }

LABEL_22:
    abort();
  }

  result = (*(*a1 + 32))(a1, a2);
  if ((*(a1 + 9) & 0xC0) != 0x40)
  {
    v7 = *(*a1 + 40);

    return v7(a1, a2);
  }

  return result;
}

uint64_t sub_1000056EC(const void **a1, const void *a2, size_t a3)
{
  v3 = *a1;
  if (a3 > a1[1] - *a1)
  {
    return 0;
  }

  if (memcmp(*a1, a2, a3))
  {
    return 0;
  }

  *a1 = &v3[a3];
  return 1;
}

char *sub_100005768(const void **a1, char a2)
{
  sub_1000080F0(v112, a1);
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  if (v6 != *a1)
  {
    v8 = *v5;
    if (v8 != 71)
    {
      if (v8 == 84)
      {
        if (v7 >= 2)
        {
          v9 = v5[1];
          if (v9 <= 0x52)
          {
            if (v5[1] > 0x47u)
            {
              if (v9 == 72)
              {
                *a1 = v5 + 2;
                v108 = sub_1000082DC(a1, 0);
                if (v108)
                {
                  v10 = sub_100009C2C(a1, &v108);
                  goto LABEL_154;
                }

                goto LABEL_155;
              }

              if (v9 == 73)
              {
                *a1 = v5 + 2;
                sub_1000062D4(a1, v4);
                v108 = v65;
                if (v65)
                {
                  v10 = sub_100009714(a1, &v108);
                  goto LABEL_154;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v9 == 65)
              {
                *a1 = v5 + 2;
                sub_100008A68(a1, v4);
                v108 = v69;
                if (v69)
                {
                  v10 = sub_1000094BC(a1, &v108);
                  goto LABEL_154;
                }

                goto LABEL_155;
              }

              if (v9 == 67)
              {
                *a1 = v5 + 2;
                sub_1000062D4(a1, v4);
                v108 = v42;
                if (v42)
                {
                  sub_10000616C(a1, 1);
                  if (v43)
                  {
                    v44 = *a1;
                    if (*a1 != a1[1] && *v44 == 95)
                    {
                      *a1 = v44 + 1;
                      sub_1000062D4(a1, v43);
                      v105.n128_u64[0] = v45;
                      if (v45)
                      {
                        v10 = sub_100009B64(a1, &v105, &v108);
                        goto LABEL_154;
                      }
                    }
                  }
                }

                goto LABEL_155;
              }
            }
          }

          else if (v5[1] <= 0x55u)
          {
            if (v9 == 83)
            {
              *a1 = v5 + 2;
              sub_1000062D4(a1, v4);
              v108 = v71;
              if (v71)
              {
                v10 = sub_1000097DC(a1, &v108);
                goto LABEL_154;
              }

              goto LABEL_155;
            }

            if (v9 == 84)
            {
              *a1 = v5 + 2;
              sub_1000062D4(a1, v4);
              v108 = v66;
              if (v66)
              {
                v10 = sub_10000964C(a1, &v108);
                goto LABEL_154;
              }

              goto LABEL_155;
            }
          }

          else
          {
            switch(v9)
            {
              case 'V':
                *a1 = v5 + 2;
                sub_1000062D4(a1, v4);
                v108 = v70;
                if (v70)
                {
                  v10 = sub_100009584(a1, &v108);
                  goto LABEL_154;
                }

                goto LABEL_155;
              case 'W':
                *a1 = v5 + 2;
                v108 = sub_1000082DC(a1, 0);
                if (v108)
                {
                  v10 = sub_100006200(a1, "thread-local wrapper routine for ", &v108);
                  goto LABEL_154;
                }

                goto LABEL_155;
              case 'c':
                *a1 = v5 + 2;
                if ((sub_1000098A4(a1) & 1) == 0 && (sub_1000098A4(a1) & 1) == 0)
                {
                  v108 = sub_100005768(a1, 1);
                  if (v108)
                  {
                    v10 = sub_100009A9C(a1, &v108);
LABEL_154:
                    v13 = v10;
                    goto LABEL_156;
                  }
                }

                goto LABEL_155;
            }
          }
        }

        v67 = v5 + 1;
        *a1 = v67;
        if (v6 == v67)
        {
          v68 = 0;
          if (sub_1000098A4(a1))
          {
            goto LABEL_155;
          }
        }

        else
        {
          v68 = *v67 == 118;
          if (sub_1000098A4(a1))
          {
            goto LABEL_155;
          }
        }

        v108 = sub_100005768(a1, 1);
        if (v108)
        {
          if (v68)
          {
            v10 = sub_100009CF4(a1, &v108);
          }

          else
          {
            v10 = sub_100009DBC(a1, &v108);
          }

          goto LABEL_154;
        }

LABEL_155:
        v13 = 0;
        goto LABEL_156;
      }

      goto LABEL_14;
    }

    if (v7 < 2)
    {
      goto LABEL_155;
    }

    v27 = v5[1];
    if (v27 == 73)
    {
      *a1 = v5 + 2;
      v108 = 0;
      v13 = 0;
      if (sub_100009F48(a1, &v108))
      {
        goto LABEL_156;
      }

      v61 = v108;
      if (!v108)
      {
        goto LABEL_156;
      }

      v62 = a1[613];
      v63 = v62[1];
      if ((v63 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v62 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v62)
        {
          goto LABEL_158;
        }

        v63 = 0;
        *v62 = a1[613];
        v62[1] = 0;
        a1[613] = v62;
      }

      v62[1] = v63 + 48;
      v64 = v62 + v63;
      v13 = v64 + 16;
      v64[24] = 21;
      *(v64 + 25) = *(v64 + 25) & 0xF000 | 0x540;
      *(v64 + 2) = off_1002B1A38;
      *(v64 + 4) = "initializer for module ";
      *(v64 + 5) = 23;
      *(v64 + 6) = v61;
      goto LABEL_156;
    }

    if (v27 != 82)
    {
      if (v27 != 86)
      {
        goto LABEL_155;
      }

      *a1 = v5 + 2;
      v28 = sub_1000082DC(a1, 0);
      if (!v28)
      {
        goto LABEL_155;
      }

      v29 = a1[613];
      v30 = v29[1];
      if ((v30 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_32;
      }

      v31 = v28;
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v32)
      {
        v29 = v32;
        v30 = 0;
        *v32 = a1[613];
        v32[1] = 0;
        a1[613] = v32;
        v28 = v31;
LABEL_32:
        v29[1] = v30 + 48;
        v33 = v29 + v30;
        v13 = v33 + 16;
        v33[24] = 21;
        *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
        *(v33 + 2) = off_1002B1A38;
        *(v33 + 4) = "guard variable for ";
        *(v33 + 5) = 19;
        *(v33 + 6) = v28;
        goto LABEL_156;
      }

LABEL_158:
      std::terminate();
    }

    *a1 = v5 + 2;
    v108 = sub_1000082DC(a1, 0);
    if (!v108)
    {
      goto LABEL_155;
    }

    v55 = *a1;
    v56 = a1[1];
    if (v56 == *a1 || *v55 < 48 || (v57 = *v55, v57 >= 0x3A) && v57 - 65 > 0x19)
    {
      v58 = 1;
      if (v55 == v56)
      {
        goto LABEL_83;
      }
    }

    else
    {
      do
      {
        if (*v55 < 48)
        {
          break;
        }

        v59 = *v55;
        v60 = v59 >= 0x3A && v59 - 65 > 0x19;
        if (v60)
        {
          break;
        }

        *a1 = ++v55;
      }

      while (v55 != v56);
      v58 = 0;
      if (v55 == v56)
      {
        goto LABEL_83;
      }
    }

    if (*v55 == 95)
    {
      *a1 = v55 + 1;
      goto LABEL_84;
    }

LABEL_83:
    if (!v58)
    {
      goto LABEL_155;
    }

LABEL_84:
    v10 = sub_100009E80(a1, &v108);
    goto LABEL_154;
  }

LABEL_14:
  v11 = a1[90];
  v12 = a1[91];
  LOWORD(v108) = 0;
  HIDWORD(v108) = 0;
  v109[0] = 0;
  v110 = (v12 - v11) >> 3;
  v111 = 0;
  v13 = sub_1000082DC(a1, &v108);
  v107 = v13;
  if (v13)
  {
    v14 = v110;
    v15 = a1[90];
    v16 = (a1[91] - v15) >> 3;
    if (v16 <= v110)
    {
      v19 = &v15[8 * v110];
    }

    else
    {
      v17 = a1[83];
      if (v17 == a1[84])
      {
        goto LABEL_155;
      }

      v18 = *v17;
      if (!*v17)
      {
        goto LABEL_155;
      }

      v19 = &v15[8 * v110];
      v20 = *v19;
      v21 = *(*v19 + 16);
      v23 = v18;
      v22 = *v18;
      v24 = (v23[1] - v22) >> 3;
      if (v21 >= v24)
      {
        goto LABEL_155;
      }

      v25 = v15 + 8;
      while (1)
      {
        *(v20 + 24) = *(v22 + 8 * v21);
        if (v16 - 1 == v14)
        {
          break;
        }

        v26 = v14 + 1;
        v20 = *&v25[8 * v14];
        v21 = *(v20 + 16);
        ++v14;
        if (v21 >= v24)
        {
          if (v26 >= v16)
          {
            goto LABEL_35;
          }

          goto LABEL_155;
        }
      }
    }

    a1[91] = v19;
LABEL_35:
    v35 = *a1;
    v34 = a1[1];
    if (v34 != *a1)
    {
      v36 = *v35 - 46;
      v60 = v36 > 0x31;
      v37 = (1 << v36) & 0x2000000800001;
      if (v60 || v37 == 0)
      {
        if (a2)
        {
          v106 = 0;
          if (sub_1000056EC(a1, "Ua9enable_ifI", 0xDuLL))
          {
            v40 = (a1[3] - a1[2]) >> 3;
            while (1)
            {
              v49 = *a1;
              if (*a1 != a1[1] && *v49 == 69)
              {
                break;
              }

              sub_100008A68(a1, v39);
              if (!v48)
              {
                goto LABEL_155;
              }

              v47 = a1[3];
              if (v47 == a1[4])
              {
                v50 = v48;
                v51 = a1[2];
                v52 = v47 - v51;
                if (v51 == a1 + 5)
                {
                  v46 = malloc_type_malloc(2 * (v47 - v51), 0x2004093837F09uLL);
                  if (!v46)
                  {
LABEL_157:
                    abort();
                  }

                  v39 = a1[2];
                  v53 = a1[3];
                  if (v53 != v39)
                  {
                    v54 = v46;
                    memmove(v46, v39, v53 - v39);
                    v46 = v54;
                  }

                  a1[2] = v46;
                }

                else
                {
                  v46 = malloc_type_realloc(v51, 2 * (v47 - v51), 0x2004093837F09uLL);
                  a1[2] = v46;
                  if (!v46)
                  {
                    goto LABEL_157;
                  }
                }

                v47 = &v46[v52];
                a1[4] = &v46[8 * (v52 >> 2)];
                v48 = v50;
              }

              *v47 = v48;
              a1[3] = v47 + 8;
            }

            *a1 = v49 + 1;
            v105.n128_u64[0] = sub_100008FE4(a1, v40);
            v105.n128_u64[1] = v72;
            sub_100008F2C(a1, &v105);
            v106 = v73;
          }

          v104 = 0;
          if ((v108 & 1) == 0 && BYTE1(v108) == 1)
          {
            sub_1000062D4(a1, v39);
            v104 = v74;
            if (!v74)
            {
              goto LABEL_155;
            }
          }

          v105 = 0uLL;
          v76 = *a1;
          v75 = a1[1];
          if (*a1 == v75 || *v76 != 118)
          {
            v79 = a1[2];
            v78 = a1[3];
            sub_1000062D4(a1, v39);
            v103 = v80;
            if (!v80)
            {
              goto LABEL_155;
            }

            v82 = v78 - v79;
            v83 = (v78 - v79) >> 3;
            v84 = 0x2004093837F09;
            v85 = a1 + 5;
            while (1)
            {
              v86 = a1[3];
              if (v111 == 1 && v82 == v86 - a1[2])
              {
                v80 = sub_1000090F0(a1, &v103);
                v86 = a1[3];
              }

              if (v86 == a1[4])
              {
                v88 = v80;
                v89 = a1[2];
                v90 = v86 - v89;
                if (v89 == v85)
                {
                  v91 = malloc_type_malloc(2 * (v86 - v89), v84);
                  if (!v91)
                  {
                    goto LABEL_157;
                  }

                  v81 = a1[2];
                  v92 = a1[3];
                  if (v92 != v81)
                  {
                    v93 = v85;
                    v94 = v83;
                    v95 = v84;
                    v96 = v91;
                    memmove(v91, v81, v92 - v81);
                    v91 = v96;
                    v84 = v95;
                    v83 = v94;
                    v85 = v93;
                  }

                  a1[2] = v91;
                }

                else
                {
                  v91 = malloc_type_realloc(v89, 2 * (v86 - v89), v84);
                  a1[2] = v91;
                  if (!v91)
                  {
                    goto LABEL_157;
                  }
                }

                v86 = &v91[v90];
                a1[4] = &v91[8 * (v90 >> 2)];
                v80 = v88;
              }

              *v86 = v80;
              a1[3] = v86 + 8;
              if (a1[1] == *a1)
              {
                break;
              }

              v97 = **a1 - 46;
              v60 = v97 > 0x31;
              v98 = (1 << v97) & 0x2000800800001;
              if (!v60 && v98 != 0)
              {
                break;
              }

              sub_1000062D4(a1, v81);
              v103 = v80;
              if (!v80)
              {
                goto LABEL_155;
              }
            }

            v105.n128_u64[0] = sub_100008FE4(a1, v83);
            v105.n128_u64[1] = v39;
            v77 = *a1;
            v75 = a1[1];
          }

          else
          {
            v77 = v76 + 1;
            *a1 = v77;
          }

          v103 = 0;
          if (v77 == v75 || *v77 != 81 || (*a1 = v77 + 1, v100 = *(a1 + 778), *(a1 + 778) = 1, sub_10000C5A0(a1, v39), *(a1 + 778) = v100, (v103 = v101) != 0))
          {
            sub_1000091A8(a1, &v104, &v107, &v105, &v106, &v103, &v108 + 1, v109);
            goto LABEL_154;
          }

          goto LABEL_155;
        }

        do
        {
          if (v35 == v34)
          {
            break;
          }

          *a1 = v35 + 1;
        }

        while (*v35++);
      }
    }
  }

LABEL_156:
  sub_1000092B4(v112);
  return v13;
}

char *sub_10000616C(char **a1, int a2)
{
  result = *a1;
  v4 = a1[1];
  v5 = result;
  if (a2)
  {
    if (result == v4)
    {
      return 0;
    }

    v5 = result;
    if (*result == 110)
    {
      v5 = result + 1;
      *a1 = result + 1;
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0 || (_DefaultRuneLocale.__runetype[v6] & 0x400) == 0)
  {
    return 0;
  }

  do
  {
    v7 = *v5;
    if (v7 < 0)
    {
      break;
    }

    if ((_DefaultRuneLocale.__runetype[v7] & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
  }

  while (v5 != v4);
  return result;
}

uint64_t sub_100006200(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = v6 + v7 + 16;
  v10 = strlen(__s);
  v11 = *a3;
  v8[24] = 21;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002B1A38;
  *(v8 + 4) = __s;
  *(v8 + 5) = v10;
  *(v8 + 6) = v11;
  return v9;
}

void sub_1000062D4(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a1;
  v125 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = &v4[-*a1];
  if (v4 == *a1)
  {
LABEL_144:
    v52 = sub_10001DB44(a1);
    goto LABEL_145;
  }

  v6 = *v3;
  v7 = 0;
  switch(*v3)
  {
    case 'A':
      *a1 = v3 + 1;
      v127 = 0;
      if (v4 == v3 + 1)
      {
        if ((_DefaultRuneLocale.__runetype[0] & 0x400) == 0)
        {
LABEL_183:
          sub_10000C5A0(a1, a2);
          if (!v52)
          {
            goto LABEL_145;
          }

          v101 = *v2;
          if (*v2 != *(v2 + 8) && *v101 == 95)
          {
            *v2 = v101 + 1;
            v127 = v52;
            goto LABEL_191;
          }

          goto LABEL_193;
        }

LABEL_187:
        v126.n128_u64[0] = sub_10000616C(a1, 0);
        v126.n128_u64[1] = v102;
        sub_10000A780(v2, &v126);
        v127 = v103;
        v104 = *v2;
        if (*v2 != *(v2 + 8) && *v104 == 95)
        {
          v9 = (v104 + 1);
          goto LABEL_190;
        }

LABEL_193:
        v52 = 0;
        goto LABEL_145;
      }

      v8 = v3[1];
      if (v8 < 0)
      {
        goto LABEL_183;
      }

      if ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
      {
        goto LABEL_187;
      }

      if (v8 != 95)
      {
        goto LABEL_183;
      }

      v9 = v3 + 2;
LABEL_190:
      *v2 = v9;
LABEL_191:
      v52 = sub_1000062D4(v2, a2);
      v126.n128_u64[0] = v52;
      if (v52)
      {
        v52 = sub_10001FAEC(v2, &v126, &v127);
      }

LABEL_145:
      v125 = v52;
      if (v52)
      {
LABEL_146:
        v85 = *(v2 + 304);
        if (v85 == *(v2 + 312))
        {
LABEL_147:
          v86 = *(v2 + 296);
          v87 = v85 - v86;
          if (v86 == (v2 + 320))
          {
            v88 = malloc_type_malloc(2 * v87, 0x2004093837F09uLL);
            if (!v88)
            {
              goto LABEL_350;
            }

            v89 = *(v2 + 296);
            v90 = *(v2 + 304);
            if (v90 != v89)
            {
              v91 = v88;
              memmove(v88, v89, v90 - v89);
              v88 = v91;
            }

            *(v2 + 296) = v88;
          }

          else
          {
            v88 = malloc_type_realloc(v86, 2 * (v85 - v86), 0x2004093837F09uLL);
            *(v2 + 296) = v88;
            if (!v88)
            {
LABEL_350:
              abort();
            }
          }

          v85 = &v88[v87];
          *(v2 + 312) = &v88[8 * (v87 >> 2)];
          v52 = v125;
        }

LABEL_155:
        *v85 = v52;
        *(v2 + 304) = v85 + 1;
      }

      return;
    case 'C':
      *a1 = v3 + 1;
      v126.n128_u64[0] = sub_1000062D4(a1, a2);
      if (!v126.n128_u64[0])
      {
        return;
      }

      v52 = sub_10001DE98(v2, &v126);
      goto LABEL_160;
    case 'D':
      if (v5 < 2)
      {
        return;
      }

      break;
    case 'F':
      goto LABEL_198;
    case 'G':
      *a1 = v3 + 1;
      v126.n128_u64[0] = sub_1000062D4(a1, a2);
      if (!v126.n128_u64[0])
      {
        return;
      }

      v52 = sub_10001DF60(v2, &v126);
      goto LABEL_160;
    case 'K':
    case 'V':
      goto LABEL_60;
    case 'M':
      *a1 = v3 + 1;
      v52 = sub_1000062D4(a1, a2);
      v126.n128_u64[0] = v52;
      if (v52)
      {
        v52 = sub_1000062D4(v2, v77);
        v127 = v52;
        if (v52)
        {
          v52 = sub_100020530(v2, &v126, &v127);
        }
      }

      goto LABEL_145;
    case 'O':
      *a1 = v3 + 1;
      v126.n128_u64[0] = sub_1000062D4(a1, a2);
      if (!v126.n128_u64[0])
      {
        return;
      }

      LODWORD(v127) = 1;
      goto LABEL_159;
    case 'P':
      *a1 = v3 + 1;
      v126.n128_u64[0] = sub_1000062D4(a1, a2);
      if (!v126.n128_u64[0])
      {
        return;
      }

      v52 = sub_10001DCF8(v2, &v126);
      goto LABEL_160;
    case 'R':
      *a1 = v3 + 1;
      v126.n128_u64[0] = sub_1000062D4(a1, a2);
      if (!v126.n128_u64[0])
      {
        return;
      }

      LODWORD(v127) = 0;
LABEL_159:
      v52 = sub_10001DDBC(v2, &v126, &v127);
      goto LABEL_160;
    case 'S':
      if (v5 >= 2 && v3[1] == 116)
      {
        goto LABEL_144;
      }

      LOBYTE(v127) = 0;
      v52 = sub_10000AAD0(a1, 0, &v127);
      v125 = v52;
      if (!v52)
      {
        return;
      }

      if (*(v2 + 8) == *v2)
      {
        v100 = v127;
      }

      else
      {
        v100 = v127;
        if (**v2 == 73)
        {
          if (v127)
          {
            if ((*(v2 + 776) & 1) == 0)
            {
              return;
            }
          }

          else
          {
            sub_100008E6C((v2 + 296), &v125);
          }

          sub_10000AC88(v2, 0);
          v126.n128_u64[0] = v108;
          if (v108)
          {
LABEL_204:
            v52 = sub_10000B270(v2, &v125, &v126);
            goto LABEL_160;
          }

          return;
        }
      }

      if ((v100 & 1) == 0)
      {
        goto LABEL_146;
      }

      return;
    case 'T':
      if (v5 >= 2)
      {
        v68 = v3[1] - 101;
        v51 = v68 > 0x10;
        v69 = (1 << v68) & 0x14001;
        if (!v51 && v69 != 0)
        {
          goto LABEL_144;
        }
      }

      v52 = sub_10000B338(a1, a2);
      v125 = v52;
      if (!v52)
      {
        return;
      }

      if (*(v2 + 776) != 1 || *(v2 + 8) == *v2 || **v2 != 73)
      {
        goto LABEL_146;
      }

      sub_100008E6C((v2 + 296), &v125);
      sub_10000AC88(v2, 0);
      v126.n128_u64[0] = v71;
      if (!v71)
      {
        return;
      }

      goto LABEL_204;
    case 'U':
      goto LABEL_74;
    case 'a':
      *a1 = v3 + 1;
      v30 = *(a1 + 4904);
      v31 = v30[1];
      if ((v31 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_35;
      }

      v30 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v30)
      {
        goto LABEL_349;
      }

      v31 = 0;
      *v30 = *(v2 + 4904);
      v30[1] = 0;
      *(v2 + 4904) = v30;
LABEL_35:
      v30[1] = v31 + 32;
      v32 = v30 + v31;
      v32[24] = 8;
      *(v32 + 25) = *(v32 + 25) & 0xF000 | 0x540;
      *(v32 + 2) = off_1002B1AF8;
      v33 = "signed char";
      goto LABEL_48;
    case 'b':
      *a1 = v3 + 1;
      v95 = *(a1 + 4904);
      v96 = v95[1];
      if ((v96 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_169;
      }

      v95 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v95)
      {
        goto LABEL_349;
      }

      v96 = 0;
      *v95 = *(v2 + 4904);
      v95[1] = 0;
      *(v2 + 4904) = v95;
LABEL_169:
      v95[1] = v96 + 32;
      v15 = v95 + v96;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002B1AF8;
      v16 = "BOOL";
      goto LABEL_170;
    case 'c':
      *a1 = v3 + 1;
      v34 = *(a1 + 4904);
      v35 = v34[1];
      if ((v35 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_39;
      }

      v34 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v34)
      {
        goto LABEL_349;
      }

      v35 = 0;
      *v34 = *(v2 + 4904);
      v34[1] = 0;
      *(v2 + 4904) = v34;
LABEL_39:
      v34[1] = v35 + 32;
      v15 = v34 + v35;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002B1AF8;
      v16 = "char";
      goto LABEL_170;
    case 'd':
      *a1 = v3 + 1;
      v97 = *(a1 + 4904);
      v98 = v97[1];
      if ((v98 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_174;
      }

      v97 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v97)
      {
        goto LABEL_349;
      }

      v98 = 0;
      *v97 = *(v2 + 4904);
      v97[1] = 0;
      *(v2 + 4904) = v97;
LABEL_174:
      v97[1] = v98 + 32;
      v99 = v97 + v98;
      v99[24] = 8;
      *(v99 + 25) = *(v99 + 25) & 0xF000 | 0x540;
      *(v99 + 2) = off_1002B1AF8;
      *(v99 + 4) = "double";
      *(v99 + 5) = 6;
      return;
    case 'e':
      *a1 = v3 + 1;
      v39 = *(a1 + 4904);
      v40 = v39[1];
      if ((v40 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_47;
      }

      v39 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v39)
      {
        goto LABEL_349;
      }

      v40 = 0;
      *v39 = *(v2 + 4904);
      v39[1] = 0;
      *(v2 + 4904) = v39;
LABEL_47:
      v39[1] = v40 + 32;
      v32 = v39 + v40;
      v32[24] = 8;
      *(v32 + 25) = *(v32 + 25) & 0xF000 | 0x540;
      *(v32 + 2) = off_1002B1AF8;
      v33 = "long double";
LABEL_48:
      *(v32 + 4) = v33;
      *(v32 + 5) = 11;
      return;
    case 'f':
      *a1 = v3 + 1;
      v78 = *(a1 + 4904);
      v79 = v78[1];
      if ((v79 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_132;
      }

      v78 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v78)
      {
        goto LABEL_349;
      }

      v79 = 0;
      *v78 = *(v2 + 4904);
      v78[1] = 0;
      *(v2 + 4904) = v78;
LABEL_132:
      v78[1] = v79 + 32;
      v58 = v78 + v79;
      v58[24] = 8;
      *(v58 + 25) = *(v58 + 25) & 0xF000 | 0x540;
      *(v58 + 2) = off_1002B1AF8;
      v59 = "float";
      goto LABEL_133;
    case 'g':
      *a1 = v3 + 1;
      v27 = *(a1 + 4904);
      v28 = v27[1];
      if ((v28 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_31;
      }

      v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v27)
      {
        goto LABEL_349;
      }

      v28 = 0;
      *v27 = *(v2 + 4904);
      v27[1] = 0;
      *(v2 + 4904) = v27;
LABEL_31:
      v27[1] = v28 + 32;
      v29 = v27 + v28;
      v29[24] = 8;
      *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
      *(v29 + 2) = off_1002B1AF8;
      *(v29 + 4) = "__float128";
      *(v29 + 5) = 10;
      return;
    case 'h':
      *a1 = v3 + 1;
      v41 = *(a1 + 4904);
      v42 = v41[1];
      if ((v42 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_52;
      }

      v41 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v41)
      {
        goto LABEL_349;
      }

      v42 = 0;
      *v41 = *(v2 + 4904);
      v41[1] = 0;
      *(v2 + 4904) = v41;
LABEL_52:
      v41[1] = v42 + 32;
      v43 = v41 + v42;
      v43[24] = 8;
      *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
      *(v43 + 2) = off_1002B1AF8;
      v44 = "unsigned char";
      goto LABEL_57;
    case 'i':
      *a1 = v3 + 1;
      v75 = *(a1 + 4904);
      v76 = v75[1];
      if ((v76 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_122;
      }

      v75 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v75)
      {
        goto LABEL_349;
      }

      v76 = 0;
      *v75 = *(v2 + 4904);
      v75[1] = 0;
      *(v2 + 4904) = v75;
LABEL_122:
      v75[1] = v76 + 32;
      v19 = v75 + v76;
      v19[24] = 8;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
      *(v19 + 2) = off_1002B1AF8;
      v20 = "int";
      goto LABEL_123;
    case 'j':
      *a1 = v3 + 1;
      v53 = *(a1 + 4904);
      v54 = v53[1];
      if ((v54 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_78;
      }

      v53 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v53)
      {
        goto LABEL_349;
      }

      v54 = 0;
      *v53 = *(v2 + 4904);
      v53[1] = 0;
      *(v2 + 4904) = v53;
LABEL_78:
      v53[1] = v54 + 32;
      v55 = v53 + v54;
      v55[24] = 8;
      *(v55 + 25) = *(v55 + 25) & 0xF000 | 0x540;
      *(v55 + 2) = off_1002B1AF8;
      *(v55 + 4) = "unsigned int";
      *(v55 + 5) = 12;
      return;
    case 'l':
      *a1 = v3 + 1;
      v80 = *(a1 + 4904);
      v81 = v80[1];
      if ((v81 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_137;
      }

      v80 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v80)
      {
        goto LABEL_349;
      }

      v81 = 0;
      *v80 = *(v2 + 4904);
      v80[1] = 0;
      *(v2 + 4904) = v80;
LABEL_137:
      v80[1] = v81 + 32;
      v15 = v80 + v81;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002B1AF8;
      v16 = "long";
      goto LABEL_170;
    case 'm':
      *a1 = v3 + 1;
      v45 = *(a1 + 4904);
      v46 = v45[1];
      if ((v46 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_56;
      }

      v45 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v45)
      {
        goto LABEL_349;
      }

      v46 = 0;
      *v45 = *(v2 + 4904);
      v45[1] = 0;
      *(v2 + 4904) = v45;
LABEL_56:
      v45[1] = v46 + 32;
      v43 = v45 + v46;
      v43[24] = 8;
      *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
      *(v43 + 2) = off_1002B1AF8;
      v44 = "unsigned long";
LABEL_57:
      *(v43 + 4) = v44;
      *(v43 + 5) = 13;
      return;
    case 'n':
      *a1 = v3 + 1;
      v24 = *(a1 + 4904);
      v25 = v24[1];
      if ((v25 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_27;
      }

      v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v24)
      {
        goto LABEL_349;
      }

      v25 = 0;
      *v24 = *(v2 + 4904);
      v24[1] = 0;
      *(v2 + 4904) = v24;
LABEL_27:
      v24[1] = v25 + 32;
      v26 = v24 + v25;
      v26[24] = 8;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      *(v26 + 2) = off_1002B1AF8;
      *(v26 + 4) = "__int128";
      *(v26 + 5) = 8;
      return;
    case 'o':
      *a1 = v3 + 1;
      v21 = *(a1 + 4904);
      v22 = v21[1];
      if ((v22 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_23;
      }

      v21 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v21)
      {
        goto LABEL_349;
      }

      v22 = 0;
      *v21 = *(v2 + 4904);
      v21[1] = 0;
      *(v2 + 4904) = v21;
LABEL_23:
      v21[1] = v22 + 32;
      v23 = v21 + v22;
      v23[24] = 8;
      *(v23 + 25) = *(v23 + 25) & 0xF000 | 0x540;
      *(v23 + 2) = off_1002B1AF8;
      *(v23 + 4) = "unsigned __int128";
      *(v23 + 5) = 17;
      return;
    case 'r':
      if (v5 < 2)
      {
        v47 = 1;
        v48 = 1;
      }

      else
      {
        v6 = v3[1];
        v7 = 1;
LABEL_60:
        if (v6 == 86)
        {
          v47 = v7 + 1;
        }

        else
        {
          v47 = v7;
        }

        v48 = v47;
        if (v5 > v47)
        {
          if (v3[v47] == 75)
          {
            v48 = v47 + 1;
          }

          else
          {
            v48 = v47;
          }

          v47 = v48;
        }
      }

      if (v5 > v48 && ((v49 = v3[v48], v49 == 70) || ((v50 = v47 + 1, v49 == 68) ? (v51 = v5 > v50) : (v51 = 0), v51 && ((v105 = v3[v50] - 79, v51 = v105 > 0x29, v106 = (1 << v105) & 0x30100000001, !v51) ? (v107 = v106 == 0) : (v107 = 1), !v107))))
      {
LABEL_198:
        sub_10001C948(a1, a2);
      }

      else
      {
LABEL_74:
        sub_10001CFC8(a1, a2);
      }

      goto LABEL_145;
    case 's':
      *a1 = v3 + 1;
      v56 = *(a1 + 4904);
      v57 = v56[1];
      if ((v57 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_88;
      }

      v56 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v56)
      {
        goto LABEL_349;
      }

      v57 = 0;
      *v56 = *(v2 + 4904);
      v56[1] = 0;
      *(v2 + 4904) = v56;
LABEL_88:
      v56[1] = v57 + 32;
      v58 = v56 + v57;
      v58[24] = 8;
      *(v58 + 25) = *(v58 + 25) & 0xF000 | 0x540;
      *(v58 + 2) = off_1002B1AF8;
      v59 = "short";
LABEL_133:
      *(v58 + 4) = v59;
      *(v58 + 5) = 5;
      return;
    case 't':
      *a1 = v3 + 1;
      v82 = *(a1 + 4904);
      v83 = v82[1];
      if ((v83 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_141;
      }

      v82 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v82)
      {
        goto LABEL_349;
      }

      v83 = 0;
      *v82 = *(v2 + 4904);
      v82[1] = 0;
      *(v2 + 4904) = v82;
LABEL_141:
      v82[1] = v83 + 32;
      v84 = v82 + v83;
      v84[24] = 8;
      *(v84 + 25) = *(v84 + 25) & 0xF000 | 0x540;
      *(v84 + 2) = off_1002B1AF8;
      *(v84 + 4) = "unsigned short";
      *(v84 + 5) = 14;
      return;
    case 'u':
      *a1 = v3 + 1;
      if (v4 == v3 + 1 || v3[1] - 58 < 0xFFFFFFF6)
      {
        return;
      }

      v60 = 0;
      v61 = 0;
      do
      {
        v62 = v61;
        v63 = v60;
        v64 = &v3[v60 + 2];
        *a1 = v64;
        v65 = v3[v60 + 1];
        v61 = v65 + 10 * v61 - 48;
        if (v64 == v4)
        {
          break;
        }

        ++v60;
      }

      while (*v64 - 48 <= 9);
      if (v5 - v63 - 2 < v61)
      {
        return;
      }

      v66 = &v3[10 * v62 - 46 + v63 + v65];
      *a1 = v66;
      v126.n128_u64[0] = v64;
      v126.n128_u64[1] = v61;
      if (!v61)
      {
        return;
      }

      if (v66 == v4 || *v66 != 73)
      {
        sub_10000A780(a1, &v126);
      }

      else
      {
        *a1 = &v3[10 * v62 - 45 + v63 + v65];
        v127 = sub_1000062D4(a1, a2);
        if (!v127)
        {
          return;
        }

        v67 = *v2;
        if (*v2 == *(v2 + 8) || *v67 != 69)
        {
          return;
        }

        *v2 = v67 + 1;
        sub_10001D484(v2, &v126, &v127);
      }

LABEL_160:
      v125 = v52;
      v85 = *(v2 + 304);
      if (v85 != *(v2 + 312))
      {
        goto LABEL_155;
      }

      goto LABEL_147;
    case 'v':
      *a1 = v3 + 1;
      v13 = *(a1 + 4904);
      v14 = v13[1];
      if ((v14 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_15;
      }

      v13 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v13)
      {
        goto LABEL_349;
      }

      v14 = 0;
      *v13 = *(v2 + 4904);
      v13[1] = 0;
      *(v2 + 4904) = v13;
LABEL_15:
      v13[1] = v14 + 32;
      v15 = v13 + v14;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002B1AF8;
      v16 = "void";
LABEL_170:
      *(v15 + 4) = v16;
      *(v15 + 5) = 4;
      return;
    case 'w':
      *a1 = v3 + 1;
      v36 = *(a1 + 4904);
      v37 = v36[1];
      if ((v37 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_43;
      }

      v36 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v36)
      {
        goto LABEL_349;
      }

      v37 = 0;
      *v36 = *(v2 + 4904);
      v36[1] = 0;
      *(v2 + 4904) = v36;
LABEL_43:
      v36[1] = v37 + 32;
      v38 = v36 + v37;
      v38[24] = 8;
      *(v38 + 25) = *(v38 + 25) & 0xF000 | 0x540;
      *(v38 + 2) = off_1002B1AF8;
      *(v38 + 4) = "wchar_t";
      *(v38 + 5) = 7;
      return;
    case 'x':
      *a1 = v3 + 1;
      v92 = *(a1 + 4904);
      v93 = v92[1];
      if ((v93 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_165;
      }

      v92 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v92)
      {
        goto LABEL_349;
      }

      v93 = 0;
      *v92 = *(v2 + 4904);
      v92[1] = 0;
      *(v2 + 4904) = v92;
LABEL_165:
      v92[1] = v93 + 32;
      v94 = v92 + v93;
      v94[24] = 8;
      *(v94 + 25) = *(v94 + 25) & 0xF000 | 0x540;
      *(v94 + 2) = off_1002B1AF8;
      *(v94 + 4) = "long long";
      *(v94 + 5) = 9;
      return;
    case 'y':
      *a1 = v3 + 1;
      v10 = *(a1 + 4904);
      v11 = v10[1];
      if ((v11 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_11;
      }

      v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v10)
      {
        goto LABEL_349;
      }

      v11 = 0;
      *v10 = *(v2 + 4904);
      v10[1] = 0;
      *(v2 + 4904) = v10;
LABEL_11:
      v10[1] = v11 + 32;
      v12 = v10 + v11;
      v12[24] = 8;
      *(v12 + 25) = *(v12 + 25) & 0xF000 | 0x540;
      *(v12 + 2) = off_1002B1AF8;
      *(v12 + 4) = "unsigned long long";
      *(v12 + 5) = 18;
      return;
    case 'z':
      *a1 = v3 + 1;
      v17 = *(a1 + 4904);
      v18 = v17[1];
      if ((v18 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_19;
      }

      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
LABEL_349:
        std::terminate();
      }

      v18 = 0;
      *v17 = *(v2 + 4904);
      v17[1] = 0;
      *(v2 + 4904) = v17;
LABEL_19:
      v17[1] = v18 + 32;
      v19 = v17 + v18;
      v19[24] = 8;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
      *(v19 + 2) = off_1002B1AF8;
      v20 = "...";
LABEL_123:
      *(v19 + 4) = v20;
      *(v19 + 5) = 3;
      return;
    default:
      goto LABEL_144;
  }

  v72 = v3[1];
  switch(v3[1])
  {
    case 'A':
      if (v5 == 2)
      {
        goto LABEL_257;
      }

      v115 = v3[2];
      *a1 = v3 + 3;
      if (v115 <= 108)
      {
        if (v115 == 105)
        {
          v111 = "_Accum";
          goto LABEL_312;
        }

        if (v115 == 106)
        {
          v111 = "unsigned _Accum";
          goto LABEL_242;
        }

        if (v115 != 108)
        {
          return;
        }

        v111 = "long _Accum";
        goto LABEL_283;
      }

      if (v115 == 109)
      {
        v111 = "unsigned long _Accum";
        goto LABEL_316;
      }

      if (v115 == 116)
      {
        v111 = "unsigned short _Accum";
        goto LABEL_321;
      }

      if (v115 != 115)
      {
        return;
      }

      v111 = "short _Accum";
      goto LABEL_294;
    case 'B':
    case 'U':
      LOBYTE(v127) = v72 == 66;
      v73 = (v3 + 2);
      *a1 = v73;
      if (v4 == v73)
      {
        v74 = 0;
      }

      else
      {
        v74 = *v73;
        if (v74 < 0)
        {
          goto LABEL_268;
        }
      }

      if ((_DefaultRuneLocale.__runetype[v74] & 0x400) != 0)
      {
        v126.n128_u64[0] = sub_10000616C(a1, 0);
        v126.n128_u64[1] = v117;
        sub_10000A780(v2, &v126);
        v126.n128_u64[0] = v118;
        goto LABEL_271;
      }

LABEL_268:
      sub_10000C5A0(a1, a2);
      v126.n128_u64[0] = v116;
      if (!v116)
      {
        return;
      }

LABEL_271:
      v119 = *v2;
      if (*v2 != *(v2 + 8) && *v119 == 95)
      {
        *v2 = v119 + 1;
        sub_10001D608(v2, &v126, &v127);
      }

      return;
    case 'F':
      *a1 = v3 + 2;
      if (sub_1000056EC(a1, "16b", 3uLL))
      {
        v111 = "std::bfloat16_t";
        goto LABEL_242;
      }

      v126.n128_u64[0] = sub_10000616C(v2, 0);
      v126.n128_u64[1] = v120;
      sub_10000A780(v2, &v126);
      v126.n128_u64[0] = v121;
      v122 = *v2;
      if (*v2 != *(v2 + 8) && *v122 == 95)
      {
        *v2 = v122 + 1;
        sub_10001D550(v2, &v126);
      }

      return;
    case 'K':
    case 'k':
      v109 = " decltype(auto)";
      if (v72 == 107)
      {
        v109 = " auto";
      }

      v110 = 15;
      if (v72 == 107)
      {
        v110 = 5;
      }

      v126.n128_u64[0] = v109;
      v126.n128_u64[1] = v110;
      *a1 = v3 + 2;
      v127 = sub_1000082DC(a1, 0);
      if (v127)
      {
        sub_10001D6D4(v2, &v127, &v126);
      }

      return;
    case 'O':
    case 'o':
    case 'w':
    case 'x':
      goto LABEL_198;
    case 'R':
      if (v5 == 2)
      {
LABEL_257:
        *a1 = v3 + 3;
        return;
      }

      v123 = v3[2];
      *a1 = v3 + 3;
      if (v123 > 108)
      {
        switch(v123)
        {
          case 'm':
            v111 = "unsigned long _Fract";
            goto LABEL_316;
          case 't':
            v111 = "unsigned short _Fract";
LABEL_321:

            break;
          case 's':
            v111 = "short _Fract";
LABEL_294:

            break;
          default:
            return;
        }

        goto LABEL_233;
      }

      if (v123 == 105)
      {
        v111 = "_Fract";
LABEL_312:

        goto LABEL_233;
      }

      if (v123 == 106)
      {
        v111 = "unsigned _Fract";
LABEL_242:
        a1 = v2;

        goto LABEL_233;
      }

      if (v123 != 108)
      {
        return;
      }

      v111 = "long _Fract";
      goto LABEL_283;
    case 'S':
      *a1 = v3 + 2;
      v112 = v4 - (v3 + 2);
      if (v4 == v3 + 2 || v112 < 2 || v3[2] != 68)
      {
        return;
      }

      v113 = v3[3];
      if (v113 == 82)
      {
        if (v112 > 2)
        {
          v124 = v3[4];
          *a1 = v3 + 5;
          if (v124 <= 108)
          {
            if (v124 != 105)
            {
              if (v124 != 106)
              {
                if (v124 != 108)
                {
                  return;
                }

                v111 = "_Sat long _Fract";
                goto LABEL_303;
              }

              v111 = "_Sat unsigned _Fract";
              goto LABEL_316;
            }

            v111 = "_Sat _Fract";
LABEL_283:

LABEL_233:
            sub_10000A6B8(a1, v111);
            return;
          }

          if (v124 != 109)
          {
            if (v124 != 116)
            {
              if (v124 != 115)
              {
                return;
              }

              v111 = "_Sat short _Fract";
              goto LABEL_332;
            }

            v111 = "_Sat unsigned short _Fract";
LABEL_346:

            goto LABEL_233;
          }

          v111 = "_Sat unsigned long _Fract";
LABEL_339:

          goto LABEL_233;
        }
      }

      else
      {
        if (v113 != 65)
        {
          return;
        }

        if (v112 > 2)
        {
          v114 = v3[4];
          *a1 = v3 + 5;
          if (v114 <= 108)
          {
            if (v114 != 105)
            {
              if (v114 != 106)
              {
                if (v114 != 108)
                {
                  return;
                }

                v111 = "_Sat long _Accum";
LABEL_303:

                goto LABEL_233;
              }

              v111 = "_Sat unsigned _Accum";
LABEL_316:

              goto LABEL_233;
            }

            v111 = "_Sat _Accum";
            goto LABEL_283;
          }

          if (v114 != 109)
          {
            if (v114 != 116)
            {
              if (v114 != 115)
              {
                return;
              }

              v111 = "_Sat short _Accum";
LABEL_332:

              goto LABEL_233;
            }

            v111 = "_Sat unsigned short _Accum";
            goto LABEL_346;
          }

          v111 = "_Sat unsigned long _Accum";
          goto LABEL_339;
        }
      }

      *a1 = v3 + 5;
      return;
    case 'T':
    case 't':
      v52 = sub_10000B79C(a1, a2);
      goto LABEL_145;
    case 'a':
      *a1 = v3 + 2;
      v111 = "auto";
      goto LABEL_246;
    case 'c':
      *a1 = v3 + 2;
      v111 = "decltype(auto)";
      goto LABEL_250;
    case 'd':
      *a1 = v3 + 2;
      v111 = "decimal64";
      goto LABEL_259;
    case 'e':
      *a1 = v3 + 2;
      v111 = "decimal128";

      goto LABEL_233;
    case 'f':
      *a1 = v3 + 2;
      v111 = "decimal32";
LABEL_259:

      goto LABEL_233;
    case 'h':
      *a1 = v3 + 2;
      v111 = "half";
LABEL_246:

      goto LABEL_233;
    case 'i':
      *a1 = v3 + 2;
      v111 = "char32_t";
      goto LABEL_263;
    case 'n':
      *a1 = v3 + 2;
      v111 = "std::nullptr_t";
LABEL_250:

      goto LABEL_233;
    case 'p':
      *a1 = v3 + 2;
      v126.n128_u64[0] = sub_1000062D4(a1, a2);
      if (!v126.n128_u64[0])
      {
        return;
      }

      v52 = sub_100010660(v2, &v126);
      goto LABEL_160;
    case 's':
      *a1 = v3 + 2;
      v111 = "char16_t";
LABEL_263:

      goto LABEL_233;
    case 'u':
      *a1 = v3 + 2;
      v111 = "char8_t";

      goto LABEL_233;
    case 'v':
      sub_10001D7A0(a1, a2);
      goto LABEL_145;
    default:
      return;
  }
}

void *sub_1000080F0(void *result, void *a2)
{
  v2 = a2;
  *(result + 2) = 0u;
  v3 = result + 4;
  *result = a2;
  result[1] = result + 4;
  *(result + 11) = 0u;
  v4 = result + 11;
  result[8] = result + 11;
  v5 = (result + 8);
  result[2] = result + 4;
  result[3] = result + 8;
  *(result + 3) = 0u;
  v6 = result + 19;
  result[9] = result + 11;
  result[10] = result + 19;
  *(result + 13) = 0u;
  *(result + 15) = 0u;
  *(result + 17) = 0u;
  v7 = a2[83];
  v8 = v2 + 86;
  if (v7 == (v2 + 86))
  {
    v14 = v2[84];
    if (v14 == v7)
    {
      v9 = result + 11;
      v16 = v7;
    }

    else
    {
      v15 = result;
      memmove(result + 4, v7, v14 - v7);
      result = v15;
      v16 = v2[84];
      v7 = v2[83];
      v9 = *v5;
    }

    result[2] = v3 + v16 - v7;
    v2[84] = v7;
    v10 = v2[72];
    v11 = v2 + 75;
    if (v10 != v2 + 75)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v9 == v4)
    {
      v4 = v9;
      v22 = v2[73];
      v19 = v22 - v10;
      if (v22 != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = result;
      free(v9);
      result = v17;
      v17[8] = v4;
      v17[9] = v4;
      v17[10] = v6;
      v10 = v2[72];
      v18 = v2[73];
      v19 = v18 - v10;
      if (v18 != v10)
      {
LABEL_12:
        v20 = result;
        memmove(v4, v10, v19);
        result = v20;
        v4 = *v5;
        v21 = v2[73];
        v10 = v2[72];
LABEL_15:
        result[9] = v4 + v21 - v10;
        v2[73] = v10;
        v2 = *result;
        v7 = *(*result + 664);
        v11 = *(*result + 576);
        goto LABEL_16;
      }
    }

    v21 = v10;
    goto LABEL_15;
  }

  result[1] = v7;
  *(result + 1) = *(v2 + 42);
  v2[83] = v8;
  v2[84] = v8;
  v2[85] = v2 + 90;
  v7 = (v2 + 86);
  v9 = result + 11;
  v10 = v2[72];
  v11 = v2 + 75;
  if (v10 == v2 + 75)
  {
    goto LABEL_10;
  }

LABEL_3:
  *v5 = v10;
  if (v9 == v4)
  {
    *(result + 9) = *(v2 + 73);
    v2[72] = v11;
    v2[73] = v11;
    v2[74] = v2 + 83;
  }

  else
  {
    v2[72] = v9;
    v12 = result[9];
    result[9] = v2[73];
    v2[73] = v12;
    v13 = result[10];
    result[10] = v2[74];
    v2[74] = v13;
    v11 = v2[72];
    v2[73] = v11;
  }

LABEL_16:
  v2[84] = v7;
  v2[73] = v11;
  return result;
}

char *sub_1000082DC(const void **a1, unsigned __int8 *a2)
{
  v2 = a2;
  v5 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
LABEL_9:
    LOBYTE(v57[0]) = 0;
    v10 = sub_10000AAD0(a1, a2, v57);
    if (!v10)
    {
      return v10;
    }

    if (a1[1] == *a1 || **a1 != 73)
    {
      if (v57[0])
      {
        return 0;
      }

      return v10;
    }

    if ((v57[0] & 1) == 0)
    {
      v11 = a1[38];
      if (v11 == a1[39])
      {
        v12 = a1[37];
        v13 = v11 - v12;
        if (v12 == a1 + 40)
        {
          v14 = malloc_type_malloc(2 * v13, 0x2004093837F09uLL);
          if (!v14)
          {
            goto LABEL_127;
          }

          v46 = a1[37];
          v47 = a1[38];
          if (v47 != v46)
          {
            v48 = v14;
            memmove(v14, v46, v47 - v46);
            v14 = v48;
          }

          a1[37] = v14;
        }

        else
        {
          v14 = malloc_type_realloc(v12, 2 * (v11 - v12), 0x2004093837F09uLL);
          a1[37] = v14;
          if (!v14)
          {
LABEL_127:
            abort();
          }
        }

        v11 = &v14[v13];
        a1[39] = &v14[8 * (v13 >> 2)];
      }

      *v11 = v10;
      a1[38] = v11 + 8;
    }

    sub_10000AC88(a1, (v2 != 0));
    if (!v49)
    {
      return 0;
    }

    if (v2)
    {
      v2[1] = 1;
    }

    v50 = a1[613];
    v51 = v50[1];
    if ((v51 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v52 = v49;
      v53 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v53)
      {
LABEL_128:
        std::terminate();
      }

      v50 = v53;
      v51 = 0;
      *v53 = a1[613];
      v53[1] = 0;
      a1[613] = v53;
      v49 = v52;
    }

    v50[1] = v51 + 32;
    v54 = v50 + v51;
    v54[24] = 45;
    *(v54 + 25) = *(v54 + 25) & 0xF000 | 0x540;
    *(v54 + 2) = off_1002B3628;
    *(v54 + 4) = v10;
    *(v54 + 5) = v49;
    return v54 + 16;
  }

  v6 = *v5;
  if (v6 == 90)
  {
    *a1 = v5 + 1;
    v58[0] = sub_100005768(a1, 1);
    if (!v58[0])
    {
      return 0;
    }

    v17 = *a1;
    v16 = a1[1];
    if (*a1 == v16 || *v17 != 69)
    {
      return 0;
    }

    *a1 = v17 + 1;
    if (v17 + 1 != v16 && v17[1] == 115)
    {
      *a1 = v17 + 2;
      *a1 = llvm::itanium_demangle::parse_discriminator(v17 + 2, v16, v15);
      v57[0] = sub_10000A6B8(a1, "string literal");
      return sub_10001B32C(a1, v58, v57);
    }

    sub_1000080F0(v57, a1);
    v43 = *a1;
    if (*a1 == a1[1] || *v43 != 100)
    {
      v56 = sub_1000082DC(a1, v2);
      if (!v56)
      {
LABEL_110:
        v10 = 0;
        goto LABEL_111;
      }

      *a1 = llvm::itanium_demangle::parse_discriminator(*a1, a1[1], v45);
    }

    else
    {
      *a1 = v43 + 1;
      sub_10000616C(a1, 1);
      v44 = *a1;
      if (*a1 == a1[1])
      {
        goto LABEL_110;
      }

      if (*v44 != 95)
      {
        goto LABEL_110;
      }

      *a1 = v44 + 1;
      v56 = sub_1000082DC(a1, v2);
      if (!v56)
      {
        goto LABEL_110;
      }
    }

    v10 = sub_10001B32C(a1, v58, &v56);
LABEL_111:
    sub_1000092B4(v57);
    return v10;
  }

  if (v6 != 78)
  {
    goto LABEL_9;
  }

  v7 = v5 + 1;
  *a1 = v5 + 1;
  if (v5 + 1 == v4)
  {
    goto LABEL_25;
  }

  v8 = *v7;
  if (v8 == 72)
  {
    v7 = v5 + 2;
    *a1 = v5 + 2;
    if (a2)
    {
      v19 = 1;
      v20 = 24;
LABEL_45:
      a2[v20] = v19;
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (v8 != 114)
  {
LABEL_25:
    v9 = 0;
    if (v7 == v4)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (*v7 == 86)
    {
      *a1 = ++v7;
      v9 |= 2u;
    }

    goto LABEL_28;
  }

  v7 = v5 + 2;
  *a1 = v5 + 2;
  v9 = 4;
  if (v7 != v4)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v7 != v4 && *v7 == 75)
  {
    *a1 = ++v7;
    v9 |= 1u;
  }

  if (a2)
  {
    *(a2 + 1) = v9;
  }

  if (v7 == v4)
  {
    goto LABEL_38;
  }

  v18 = *v7;
  if (v18 == 82)
  {
    *a1 = ++v7;
    if (a2)
    {
      v19 = 1;
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  if (v18 != 79)
  {
LABEL_38:
    if (a2)
    {
      v19 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    *a1 = ++v7;
    if (a2)
    {
      v19 = 2;
LABEL_44:
      v20 = 8;
      goto LABEL_45;
    }
  }

LABEL_46:
  v10 = 0;
  v21 = a1 + 40;
  while (v7 == v4 || *v7 != 69)
  {
    if (v2)
    {
      v2[1] = 0;
    }

    v22 = 0;
    v23 = v4 - v7;
    if (!v23)
    {
      goto LABEL_83;
    }

    v24 = *v7;
    if (v24 > 0x52)
    {
      if (v24 != 83)
      {
        if (v24 != 84)
        {
          goto LABEL_83;
        }

        if (v10)
        {
          return 0;
        }

        v30 = sub_10000B338(a1, a2);
        goto LABEL_84;
      }

      if (v23 >= 2 && v7[1] == 116)
      {
        *a1 = v7 + 2;
        v31 = a1[613];
        v32 = v31[1];
        if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v31 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v31)
          {
            goto LABEL_128;
          }

          v32 = 0;
          *v31 = a1[613];
          v31[1] = 0;
          a1[613] = v31;
        }

        v31[1] = v32 + 32;
        v33 = v31 + v32;
        v22 = (v33 + 16);
        v33[24] = 8;
        *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
        *(v33 + 2) = off_1002B1AF8;
        *(v33 + 4) = "std";
        *(v33 + 5) = 3;
      }

      else
      {
        v34 = sub_10000B8E8(a1);
        if (!v34)
        {
          return 0;
        }

        v22 = v34;
        if (v34[8] == 27)
        {
          goto LABEL_83;
        }
      }

      if (v10)
      {
        return 0;
      }

      v7 = *a1;
      v4 = a1[1];
      v10 = v22;
    }

    else
    {
      if (v24 != 68)
      {
        if (v24 == 73)
        {
          if (!v10)
          {
            return v10;
          }

          sub_10000AC88(a1, (v2 != 0));
          if (!v25 || v10[8] == 45)
          {
            return 0;
          }

          v26 = v25;
          if (v2)
          {
            v2[1] = 1;
          }

          v27 = a1[613];
          v28 = v27[1];
          if ((v28 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v27)
            {
              goto LABEL_128;
            }

            v28 = 0;
            *v27 = a1[613];
            v27[1] = 0;
            a1[613] = v27;
          }

          v27[1] = v28 + 32;
          v29 = v27 + v28;
          v29[24] = 45;
          *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
          *(v29 + 2) = off_1002B3628;
          *(v29 + 4) = v10;
          *(v29 + 5) = v26;
          v10 = v29 + 16;
          goto LABEL_85;
        }

        goto LABEL_83;
      }

      if (v23 < 2 || (v7[1] | 0x20) != 0x74)
      {
        v22 = 0;
LABEL_83:
        v30 = sub_10000BC54(a1, v2, v10, v22);
        goto LABEL_84;
      }

      if (v10)
      {
        return 0;
      }

      v30 = sub_10000B79C(a1, a2);
LABEL_84:
      v10 = v30;
      if (!v30)
      {
        return v10;
      }

LABEL_85:
      v35 = a1[38];
      if (v35 == a1[39])
      {
        v37 = a1[37];
        v38 = v35 - v37;
        if (v37 == v21)
        {
          v39 = malloc_type_malloc(2 * (v35 - v37), 0x2004093837F09uLL);
          if (!v39)
          {
            goto LABEL_127;
          }

          a2 = a1[37];
          v40 = a1[38];
          if (v40 != a2)
          {
            v41 = v39;
            memmove(v39, a2, v40 - a2);
            v39 = v41;
          }

          a1[37] = v39;
        }

        else
        {
          v39 = malloc_type_realloc(v37, 2 * (v35 - v37), 0x2004093837F09uLL);
          a1[37] = v39;
          if (!v39)
          {
            goto LABEL_127;
          }
        }

        a1[39] = &v39[8 * (v38 >> 2)];
        *&v39[v38] = v10;
        a1[38] = &v39[v38 + 8];
        v7 = *a1;
        v36 = a1[1];
        v4 = *a1;
        if (*a1 != v36)
        {
LABEL_96:
          v4 = v36;
          if (*v7 == 77)
          {
            *a1 = ++v7;
            v4 = v36;
          }
        }
      }

      else
      {
        *v35 = v10;
        a1[38] = v35 + 8;
        v7 = *a1;
        v36 = a1[1];
        v4 = *a1;
        if (*a1 != v36)
        {
          goto LABEL_96;
        }
      }
    }
  }

  *a1 = v7 + 1;
  if (v10)
  {
    v42 = a1[38];
    if (a1[37] != v42)
    {
      a1[38] = v42 - 8;
      return v10;
    }

    return 0;
  }

  return v10;
}

void sub_100008A68(const void **a1, size_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v4 == *a1)
  {
    v6 = 2147483611;
LABEL_12:
    if (v6 != 5)
    {
      if (v6 == 7)
      {
        *a1 = v3 + 1;
        if (sub_10000C5A0(a1, a2))
        {
          v8 = *a1;
          if (*a1 != a1[1] && *v8 == 69)
          {
            goto LABEL_17;
          }
        }

        return;
      }

LABEL_54:

      sub_1000062D4(a1, a2);
      return;
    }

    if (v4 == v3 || *v3 != 84)
    {
      goto LABEL_54;
    }

    v20 = v5 < 2 ? 0 : v3[1];
    v28 = memchr("yptnk", v20, 5uLL);
    if (!v28 || v28 - "yptnk" == -1)
    {
      goto LABEL_54;
    }

    v29 = sub_100014870(a1, 0);
    if (!v29)
    {
      return;
    }

    v21 = v29;
    v31 = sub_100008A68(a1, v30);
    if (!v31)
    {
      return;
    }

    v23 = v31;
    v32 = a1[613];
    v33 = v32[1];
    if ((v33 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v32)
      {
        goto LABEL_58;
      }

      v33 = 0;
      *v32 = a1[613];
      v32[1] = 0;
      a1[613] = v32;
    }

    v32[1] = v33 + 32;
    v26 = v32 + v33;
    v26[24] = 34;
    *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
    v27 = off_1002B36E8;
    goto LABEL_44;
  }

  HIDWORD(v7) = *v3 - 74;
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 1;
  if (v6 > 4)
  {
    goto LABEL_12;
  }

  if (!v6)
  {
    v9 = v3 + 1;
    *a1 = v9;
    v10 = (a1[3] - a1[2]) >> 3;
    v11 = a1 + 5;
    while (v9 == v4 || *v9 != 69)
    {
      v14 = sub_100008A68(a1, a2);
      if (!v14)
      {
        return;
      }

      v13 = a1[3];
      if (v13 == a1[4])
      {
        v15 = v14;
        v16 = a1[2];
        v17 = v13 - v16;
        if (v16 == v11)
        {
          v12 = malloc_type_malloc(2 * (v13 - v16), 0x2004093837F09uLL);
          if (!v12)
          {
LABEL_57:
            abort();
          }

          a2 = a1[2];
          v18 = a1[3];
          if (v18 != a2)
          {
            v19 = v12;
            memmove(v12, a2, v18 - a2);
            v12 = v19;
          }

          a1[2] = v12;
        }

        else
        {
          v12 = malloc_type_realloc(v16, 2 * (v13 - v16), 0x2004093837F09uLL);
          a1[2] = v12;
          if (!v12)
          {
            goto LABEL_57;
          }
        }

        v13 = &v12[v17];
        a1[4] = &v12[8 * (v17 >> 2)];
        v14 = v15;
      }

      *v13 = v14;
      a1[3] = v13 + 1;
      v9 = *a1;
      v4 = a1[1];
    }

    *a1 = v9 + 1;
    v21 = sub_100008FE4(a1, v10);
    v23 = v22;
    v24 = a1[613];
    v25 = v24[1];
    if ((v25 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_43;
    }

    v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v24)
    {
      v25 = 0;
      *v24 = a1[613];
      v24[1] = 0;
      a1[613] = v24;
LABEL_43:
      v24[1] = v25 + 32;
      v26 = v24 + v25;
      v26[24] = 41;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      v27 = off_1002B3688;
LABEL_44:
      *(v26 + 2) = v27;
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
      return;
    }

LABEL_58:
    std::terminate();
  }

  if (v6 != 1)
  {
    goto LABEL_54;
  }

  if (v5 >= 2 && v3[1] == 90)
  {
    *a1 = v3 + 2;
    if (!sub_100005768(a1, 1))
    {
      return;
    }

    v8 = *a1;
    if (*a1 == a1[1] || *v8 != 69)
    {
      return;
    }

LABEL_17:
    *a1 = v8 + 1;
    return;
  }

  sub_10000E1C0(a1, a2);
}

void **sub_100008E6C(void **result, void *size)
{
  v2 = result;
  v3 = result[1];
  if (v3 == result[2])
  {
    v4 = size;
    v5 = *result;
    v6 = v3 - *v2;
    if (*v2 == v2 + 3)
    {
      result = malloc_type_malloc(2 * v6, 0x2004093837F09uLL);
      if (!result)
      {
        goto LABEL_11;
      }

      v7 = v2[1];
      if (v7 != *v2)
      {
        v8 = result;
        memmove(result, *v2, v7 - *v2);
        result = v8;
      }

      *v2 = result;
    }

    else
    {
      result = malloc_type_realloc(v5, 2 * v6, 0x2004093837F09uLL);
      *v2 = result;
      if (!result)
      {
LABEL_11:
        abort();
      }
    }

    v3 = result + v6;
    v2[2] = &result[v6 >> 2];
    size = v4;
  }

  *v3 = *size;
  v2[1] = v3 + 8;
  return result;
}

__n128 sub_100008F2C(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v6[24] = 10;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B3748;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

char *sub_100008FE4(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = (a1[2] + 8 * a2);
  v6 = (v4 - v5 + 15) & 0xFFFFFFF0;
  v7 = a1[613];
  v8 = v7[1];
  if (v6 + v8 >= 0xFF0)
  {
    if (v6 >= 0xFF1)
    {
      v9 = malloc_type_malloc(v6 + 16, 0x1020040EDED9539uLL);
      if (v9)
      {
        v10 = a1[613];
        *v9 = *v10;
        v9[1] = 0;
        *v10 = v9;
        v11 = (v9 + 2);
        if (v4 == v5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

LABEL_11:
      std::terminate();
    }

    v7 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = 0;
    *v7 = a1[613];
    v7[1] = 0;
    a1[613] = v7;
  }

  v7[1] = v8 + v6;
  v11 = v7 + v8 + 16;
  if (v4 != v5)
  {
LABEL_9:
    memmove(v11, v5, v4 - v5);
  }

LABEL_10:
  a1[3] = a1[2] + 8 * a2;
  return v11;
}

char *sub_1000090F0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 87;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B37A8;
  *(v6 + 4) = v8;
  return result;
}

__n128 sub_1000091A8(uint64_t a1, uint64_t *a2, uint64_t *a3, __n128 *a4, uint64_t *a5, uint64_t *a6, int *a7, char *a8)
{
  v16 = *(a1 + 4904);
  v17 = v16[1];
  if ((v17 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v16)
    {
      std::terminate();
    }

    v17 = 0;
    *v16 = *(a1 + 4904);
    v16[1] = 0;
    *(a1 + 4904) = v16;
  }

  v16[1] = v17 + 80;
  v18 = v16 + v17;
  v19 = *a2;
  v20 = *a3;
  v21 = *a5;
  v22 = *a6;
  v23 = *a7;
  v24 = *a8;
  v18[24] = 19;
  v25 = *(v18 + 25) & 0xF000 | 0x100;
  *(v18 + 2) = off_1002B3808;
  *(v18 + 4) = v19;
  *(v18 + 5) = v20;
  result = *a4;
  *(v18 + 25) = v25;
  *(v18 + 3) = result;
  *(v18 + 8) = v21;
  *(v18 + 9) = v22;
  *(v18 + 20) = v23;
  v18[84] = v24;
  return result;
}

char *sub_1000092B4(char *a1)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = a1 + 32;
  v5 = *(*a1 + 664);
  v6 = (v3 + 688);
  if (v2 != v4)
  {
    *(v3 + 664) = v2;
    if (v5 == v6)
    {
      *(v3 + 672) = *(a1 + 1);
      *(a1 + 1) = v4;
      *(a1 + 2) = v4;
      *(a1 + 3) = a1 + 64;
      v9 = *(a1 + 8);
      v10 = a1 + 88;
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == a1 + 88)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 1) = v5;
      v7 = *(v3 + 672);
      *(v3 + 672) = *(a1 + 2);
      *(a1 + 2) = v7;
      v8 = *(v3 + 680);
      *(v3 + 680) = *(a1 + 3);
      *(a1 + 2) = *(a1 + 1);
      *(a1 + 3) = v8;
      v9 = *(a1 + 8);
      v10 = a1 + 88;
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == a1 + 88)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    *(v3 + 576) = v9;
    if (v11 == v12)
    {
      *(v3 + 584) = *(a1 + 72);
      *(a1 + 8) = v10;
      *(a1 + 9) = v10;
      *(a1 + 10) = a1 + 152;
      goto LABEL_23;
    }

    *(a1 + 8) = v11;
    v17 = *(v3 + 584);
    *(v3 + 584) = *(a1 + 9);
    *(a1 + 9) = v17;
    v18 = *(v3 + 592);
    *(v3 + 592) = *(a1 + 10);
    v9 = *(a1 + 8);
    *(a1 + 9) = v9;
    *(a1 + 10) = v18;
    if (v9 != v10)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v5 != v6)
  {
    free(v5);
    *(v3 + 664) = v6;
    *(v3 + 672) = v6;
    *(v3 + 680) = v3 + 720;
    v2 = *(a1 + 1);
    v5 = (v3 + 688);
  }

  v13 = *(a1 + 2);
  if (v13 == v2)
  {
    v14 = v2;
  }

  else
  {
    memmove(v5, v2, v13 - v2);
    v5 = *(v3 + 664);
    v2 = *(a1 + 1);
    v14 = *(a1 + 2);
  }

  *(v3 + 672) = &v5[v14 - v2];
  *(a1 + 2) = v2;
  v3 = *a1;
  v9 = *(a1 + 8);
  v10 = a1 + 88;
  v11 = *(*a1 + 576);
  v12 = *a1 + 600;
  if (v9 != a1 + 88)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v11 != v12)
  {
    free(v11);
    *(v3 + 576) = v12;
    *(v3 + 584) = v12;
    *(v3 + 592) = v3 + 664;
    v9 = *(a1 + 8);
    v11 = v12;
  }

  v15 = *(a1 + 9);
  if (v15 == v9)
  {
    v16 = v9;
  }

  else
  {
    memmove(v11, v9, v15 - v9);
    v11 = *(v3 + 576);
    v9 = *(a1 + 8);
    v16 = *(a1 + 9);
  }

  *(v3 + 584) = &v11[v16 - v9];
  *(a1 + 9) = v9;
  if (v9 != v10)
  {
LABEL_22:
    free(v9);
  }

LABEL_23:
  v19 = *(a1 + 1);
  if (v19 != v4)
  {
    free(v19);
  }

  return a1;
}

char *sub_1000094BC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "template parameter object for ";
  *(v6 + 5) = 30;
  *(v6 + 6) = v8;
  return result;
}

char *sub_100009584(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "vtable for ";
  *(v6 + 5) = 11;
  *(v6 + 6) = v8;
  return result;
}

char *sub_10000964C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "VTT for ";
  *(v6 + 5) = 8;
  *(v6 + 6) = v8;
  return result;
}

char *sub_100009714(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "typeinfo for ";
  *(v6 + 5) = 13;
  *(v6 + 6) = v8;
  return result;
}

char *sub_1000097DC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "typeinfo name for ";
  *(v6 + 5) = 18;
  *(v6 + 6) = v8;
  return result;
}

uint64_t sub_1000098A4(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *v1;
    if (v3 == 118)
    {
      v9 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v10 = v1 + 1;
      if (*v9 == 110)
      {
        v10 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v10)
      {
        return 1;
      }

      v11 = *v10;
      if (v11 < 0 || (_DefaultRuneLocale.__runetype[v11] & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v12 = *v10;
        if (v12 < 0 || (_DefaultRuneLocale.__runetype[v12] & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v10;
        if (v10 == v2)
        {
          v13 = v2;
          goto LABEL_30;
        }
      }

      v13 = v10;
LABEL_30:
      if (v13 == v9)
      {
        return 1;
      }

      if (v10 == v2)
      {
        return 1;
      }

      if (*v10 != 95)
      {
        return 1;
      }

      v15 = v10 + 1;
      *a1 = v10 + 1;
      if (v10 + 1 == v2)
      {
        return 1;
      }

      v5 = v10 + 1;
      if (*v15 == 110)
      {
        v5 = v10 + 2;
        *a1 = v10 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v16 = *v5;
      if (v16 < 0 || (_DefaultRuneLocale.__runetype[v16] & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v17 = *v5;
        if (v17 < 0 || (_DefaultRuneLocale.__runetype[v17] & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v18 = v2;
          goto LABEL_45;
        }
      }

      v18 = v5;
LABEL_45:
      if (v18 == v15)
      {
        return 1;
      }
    }

    else
    {
      if (v3 != 104)
      {
        return 1;
      }

      v4 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v5 = v1 + 1;
      if (*v4 == 110)
      {
        v5 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v6 = *v5;
      if (v6 < 0 || (_DefaultRuneLocale.__runetype[v6] & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v7 = *v5;
        if (v7 < 0 || (_DefaultRuneLocale.__runetype[v7] & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v8 = v2;
          goto LABEL_25;
        }
      }

      v8 = v5;
LABEL_25:
      if (v8 == v4)
      {
        return 1;
      }
    }

    if (v5 != v2 && *v5 == 95)
    {
      *a1 = v5 + 1;
      return 0;
    }
  }

  return 1;
}

char *sub_100009A9C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "covariant return thunk to ";
  *(v6 + 5) = 26;
  *(v6 + 6) = v8;
  return result;
}

char *sub_100009B64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 22;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002B1A98;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *sub_100009C2C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "thread-local initialization routine for ";
  *(v6 + 5) = 40;
  *(v6 + 6) = v8;
  return result;
}

char *sub_100009CF4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "virtual thunk to ";
  *(v6 + 5) = 17;
  *(v6 + 6) = v8;
  return result;
}

char *sub_100009DBC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "non-virtual thunk to ";
  *(v6 + 5) = 21;
  *(v6 + 6) = v8;
  return result;
}

char *sub_100009E80(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1A38;
  *(v6 + 4) = "reference temporary for ";
  *(v6 + 5) = 24;
  *(v6 + 6) = v8;
  return result;
}

uint64_t sub_100009F48(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v6 = (a1 + 320);
    while (*v2 == 87)
    {
      *a1 = v2 + 1;
      if (v2 + 1 == v3 || v2[1] != 80)
      {
        v12 = 0;
        v13 = sub_10000A4D4(a1);
        if (!v13)
        {
          return 1;
        }
      }

      else
      {
        *a1 = v2 + 2;
        v12 = 1;
        v13 = sub_10000A4D4(a1);
        if (!v13)
        {
          return 1;
        }
      }

      v14 = v13;
      v15 = *(a1 + 4904);
      v7 = v15[1];
      if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v15 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v15)
        {
          std::terminate();
        }

        v7 = 0;
        *v15 = *(a1 + 4904);
        v15[1] = 0;
        *(a1 + 4904) = v15;
      }

      v15[1] = v7 + 48;
      v8 = v15 + v7;
      v9 = v8 + 16;
      v10 = *a2;
      v8[24] = 27;
      *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
      *(v8 + 2) = off_1002B1B58;
      *(v8 + 4) = v10;
      *(v8 + 5) = v14;
      v8[48] = v12;
      *a2 = (v8 + 16);
      v11 = *(a1 + 304);
      if (v11 == *(a1 + 312))
      {
        v16 = *(a1 + 296);
        v17 = v11 - v16;
        if (v16 == v6)
        {
          v18 = malloc_type_malloc(2 * (v11 - v16), 0x2004093837F09uLL);
          if (!v18)
          {
LABEL_25:
            abort();
          }

          v19 = *(a1 + 296);
          v20 = *(a1 + 304);
          if (v20 != v19)
          {
            v21 = v18;
            memmove(v18, v19, v20 - v19);
            v18 = v21;
          }

          *(a1 + 296) = v18;
        }

        else
        {
          v18 = malloc_type_realloc(v16, 2 * (v11 - v16), 0x2004093837F09uLL);
          *(a1 + 296) = v18;
          if (!v18)
          {
            goto LABEL_25;
          }
        }

        *(a1 + 312) = &v18[8 * (v17 >> 2)];
        *&v18[v17] = v9;
        *(a1 + 304) = &v18[v17 + 8];
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }

      else
      {
        *v11 = v9;
        *(a1 + 304) = v11 + 8;
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10000A170(void *a1, char **a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = v8 + 992;
      }

      else
      {
        v10 = (2 * v9);
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = a1[4];
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t sub_10000A2C8(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 24) > v6)
  {
    v7 = v5 + 1016;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = a2[1];
  }

  qmemcpy(&v5[v4], "construction vtable for ", 24);
  a2[1] += 24;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 4) > v13)
  {
    v14 = v12 + 996;
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (v11)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_19:
    abort();
  }

LABEL_15:
  *&v12[v11] = 762210605;
  a2[1] += 4;
  v17 = *(a1 + 24);
  result = (*(*v17 + 32))(v17, a2);
  if ((*(v17 + 9) & 0xC0) != 0x40)
  {
    v19 = *(*v17 + 40);

    return v19(v17, a2);
  }

  return result;
}

char *sub_10000A4D4(unsigned __int8 **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 == *a1 || *v2 - 58 < 0xFFFFFFF6)
  {
    return 0;
  }

  v3 = 0;
  v4 = (v2 + 1);
  v5 = v2 + 1;
  do
  {
    v6 = v3;
    v7 = v5;
    v8 = v4;
    *a1 = v5;
    v9 = *(v5 - 1);
    v3 = v9 + 10 * v3 - 48;
    if (v5 == v1)
    {
      break;
    }

    ++v5;
    ++v4;
  }

  while (*v7 - 48 <= 9);
  if (v3 - 1 >= v1 - v8)
  {
    return 0;
  }

  *a1 = &v7[10 * v6 - 48 + v9];
  if (v3 >= 0xA)
  {
    v10 = *v7;
    v11 = *(v7 + 4);
    if (v10 == 0x5F4C41424F4C475FLL && v11 == 20063)
    {
      v13 = a1[613];
      v14 = *(v13 + 1);
      if ((v14 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v19)
        {
          goto LABEL_21;
        }

        v13 = v19;
        v14 = 0;
        *v19 = a1[613];
        *(v19 + 1) = 0;
        a1[613] = v19;
      }

      v8 = "(anonymous namespace)";
      v3 = 21;
      goto LABEL_20;
    }
  }

  v13 = a1[613];
  v14 = *(v13 + 1);
  if ((v14 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v16)
    {
      v13 = v16;
      v14 = 0;
      *v16 = a1[613];
      *(v16 + 1) = 0;
      a1[613] = v16;
      goto LABEL_20;
    }

LABEL_21:
    std::terminate();
  }

LABEL_20:
  *(v13 + 1) = v14 + 32;
  v20 = &v13[v14];
  result = (v20 + 16);
  v20[24] = 8;
  *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
  *(v20 + 2) = off_1002B1AF8;
  *(v20 + 4) = v8;
  *(v20 + 5) = v3;
  return result;
}

uint64_t sub_10000A6B8(uint64_t a1, char *__s)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v7 = v4 + v5 + 16;
  v8 = strlen(__s);
  v6[24] = 8;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1AF8;
  *(v6 + 4) = __s;
  *(v6 + 5) = v8;
  return v7;
}

__n128 sub_10000A780(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v6[24] = 8;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002B1AF8;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

void *sub_10000A838(void *result, char **a2)
{
  v2 = result[3];
  if (v2)
  {
    v4 = result[2];
    v5 = *a2;
    v6 = a2[1];
    v7 = &v6[v2];
    v8 = a2[2];
    if (&v6[v2] > v8)
    {
      if (2 * v8 <= (v7 + 992))
      {
        v9 = v7 + 992;
      }

      else
      {
        v9 = (2 * v8);
      }

      a2[2] = v9;
      v5 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
      *a2 = v5;
      if (!v5)
      {
        abort();
      }

      v6 = a2[1];
    }

    result = memcpy(&v6[v5], v4, v2);
    a2[1] += v2;
  }

  return result;
}

uint64_t sub_10000A8F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(*(a1 + 16), a2);
    if ((*(v4 + 9) & 0xC0) != 0x40)
    {
      (*(*v4 + 40))(v4, a2);
    }

    if (*(a1 + 16))
    {
      if (*(a1 + 32))
      {
        v5 = 58;
      }

      else
      {
        v5 = 46;
      }

      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = v7 + 1;
      v9 = *(a2 + 16);
      if (v7 + 1 <= v9)
      {
        goto LABEL_17;
      }

LABEL_12:
      v10 = v7 + 993;
      if (2 * v9 <= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 2 * v9;
      }

      *(a2 + 16) = v11;
      v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = *(a2 + 8);
      v8 = v7 + 1;
      goto LABEL_17;
    }
  }

  if (*(a1 + 32) != 1)
  {
    goto LABEL_18;
  }

  v5 = 58;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v7 + 1;
  v9 = *(a2 + 16);
  if (v7 + 1 > v9)
  {
    goto LABEL_12;
  }

LABEL_17:
  *(a2 + 8) = v8;
  *(v6 + v7) = v5;
LABEL_18:
  v12 = *(a1 + 24);
  result = (*(*v12 + 32))(v12, a2);
  if ((*(v12 + 9) & 0xC0) != 0x40)
  {
    v14 = *(*v12 + 40);

    return v14(v12, a2);
  }

  return result;
}

char *sub_10000AAD0(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4 - *a1 >= 2 && *v3 == 29779)
  {
    *a1 = v3 + 1;
    v12 = a1[613];
    v13 = v12[1];
    if ((v13 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v14 = a3;
      v15 = a1;
      v16 = a2;
      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
        std::terminate();
      }

      v12 = v17;
      v13 = 0;
      a1 = v15;
      *v12 = v15[613];
      v12[1] = 0;
      v15[613] = v12;
      a2 = v16;
      a3 = v14;
    }

    v12[1] = v13 + 32;
    v18 = v12 + v13;
    v5 = v18 + 16;
    v18[24] = 8;
    *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
    *(v18 + 2) = off_1002B1AF8;
    *(v18 + 4) = "std";
    *(v18 + 5) = 3;
    v3 = *a1;
    if (a1[1] == *a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if (v4 == v3)
    {
      goto LABEL_14;
    }
  }

  if (*v3 != 83)
  {
LABEL_14:
    v10 = 0;
    v11 = v5;

    return sub_10000BC54(a1, a2, v11, v10);
  }

  v6 = a3;
  v7 = a2;
  v8 = a1;
  result = sub_10000B8E8(a1);
  if (result)
  {
    v10 = result;
    if (result[8] == 27)
    {
      a2 = v7;
      a1 = v8;
      v11 = v5;

      return sub_10000BC54(a1, a2, v11, v10);
    }

    result = 0;
    if (v6 && !v5)
    {
      *v6 = 1;
      return v10;
    }
  }

  return result;
}

void sub_10000AC88(uint64_t a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1 == *(a1 + 8) || *v2 != 73)
  {
    return;
  }

  v4 = v2 + 1;
  *a1 = v4;
  if (a2)
  {
    v5 = *(a1 + 664);
    *(a1 + 672) = v5;
    if (v5 == *(a1 + 680))
    {
      if (v5 == (a1 + 688))
      {
        v5 = malloc_type_malloc(0, 0x2004093837F09uLL);
        if (!v5)
        {
          goto LABEL_87;
        }

        a2 = *(a1 + 664);
        v19 = *(a1 + 672);
        if (v19 != a2)
        {
          v20 = v5;
          memmove(v5, a2, v19 - a2);
          v5 = v20;
        }

        *(a1 + 664) = v5;
      }

      else
      {
        v5 = malloc_type_realloc(v5, 0, 0x2004093837F09uLL);
        *(a1 + 664) = v5;
        if (!v5)
        {
LABEL_87:
          abort();
        }
      }

      *(a1 + 680) = v5;
    }

    v21 = (a1 + 576);
    *v5 = a1 + 576;
    *(a1 + 672) = v5 + 1;
    *(a1 + 584) = *(a1 + 576);
    v57 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v9 = a1 + 4904;
    v4 = *a1;
    v22 = *(a1 + 8);
    while (1)
    {
      if (v4 != v22 && *v4 == 69)
      {
        v18 = 0;
        v7 = v57;
        goto LABEL_82;
      }

      sub_100008A68(a1, a2);
      if (!v23)
      {
        return;
      }

      v24 = v23;
      v25 = *(a1 + 24);
      if (v25 == *(a1 + 32))
      {
        v40 = *(a1 + 16);
        v41 = v25 - v40;
        if (v40 == (a1 + 40))
        {
          v42 = malloc_type_malloc(2 * (v25 - v40), 0x2004093837F09uLL);
          if (!v42)
          {
            goto LABEL_87;
          }

          a2 = *(a1 + 16);
          v43 = *(a1 + 24);
          if (v43 != a2)
          {
            v44 = v42;
            memmove(v42, a2, v43 - a2);
            v42 = v44;
          }

          *(a1 + 16) = v42;
        }

        else
        {
          v42 = malloc_type_realloc(v40, 2 * (v25 - v40), 0x2004093837F09uLL);
          *(a1 + 16) = v42;
          if (!v42)
          {
            goto LABEL_87;
          }
        }

        *(a1 + 32) = &v42[8 * (v41 >> 2)];
        *&v42[v41] = v24;
        *(a1 + 24) = &v42[v41 + 8];
        v26 = *(v24 + 8);
        if (v26 == 34)
        {
          goto LABEL_67;
        }

LABEL_38:
        if (v26 == 41)
        {
          v28 = *(v24 + 16);
          v27 = *(v24 + 24);
          v29 = *v9;
          v30 = *(*v9 + 8);
          if ((v30 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v29 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v29)
            {
              goto LABEL_88;
            }

            v30 = 0;
            *v29 = *v9;
            v29[1] = 0;
            *v9 = v29;
          }

          v29[1] = v30 + 32;
          v31 = v29 + v30;
          v24 = v29 + v30 + 16;
          v31[24] = 40;
          v32 = *(v29 + v30 + 25) & 0xF000;
          *(v31 + 2) = off_1002B3568;
          *(v31 + 4) = v28;
          *(v31 + 5) = v27;
          v33 = v32 | 0xA80;
          *(v31 + 25) = v32 | 0xA80;
          v34 = 8 * v27;
          if (v27)
          {
            v35 = 8 * v27;
            v36 = v28;
            while ((*(*v36 + 9) & 0x300) == 0x100)
            {
              v36 += 8;
              v35 -= 8;
              if (!v35)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
LABEL_46:
            v33 = v32 | 0x980;
            *(v24 + 9) = v32 | 0x980;
          }

          if (v27)
          {
            v37 = 8 * v27;
            v38 = v28;
            while ((*(*v38 + 9) & 0xC00) == 0x400)
            {
              v38 += 8;
              v37 -= 8;
              if (!v37)
              {
                goto LABEL_51;
              }
            }
          }

          else
          {
LABEL_51:
            v33 = v33 & 0xF3FF | 0x400;
            *(v24 + 9) = v33;
          }

          if (v27)
          {
            while ((*(*v28 + 9) & 0xC0) == 0x40)
            {
              v28 += 8;
              v34 -= 8;
              if (!v34)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
LABEL_55:
            *(v24 + 9) = v33 & 0xFF3F | 0x40;
          }
        }

        v39 = *(a1 + 584);
        if (v39 != *(a1 + 592))
        {
          goto LABEL_57;
        }

LABEL_68:
        v45 = v39 - *v21;
        if (*v21 == (a1 + 600))
        {
          v46 = malloc_type_malloc(2 * v45, 0x2004093837F09uLL);
          if (!v46)
          {
            goto LABEL_87;
          }

          a2 = *(a1 + 576);
          v47 = *(a1 + 584);
          if (v47 != a2)
          {
            v48 = v46;
            memmove(v46, a2, v47 - a2);
            v46 = v48;
          }

          *v21 = v46;
        }

        else
        {
          v46 = malloc_type_realloc(*v21, 2 * v45, 0x2004093837F09uLL);
          *v21 = v46;
          if (!v46)
          {
            goto LABEL_87;
          }
        }

        *(a1 + 592) = &v46[8 * (v45 >> 2)];
        *&v46[v45] = v24;
        *(a1 + 584) = &v46[v45 + 8];
        v4 = *a1;
        v22 = *(a1 + 8);
        if (*a1 != v22)
        {
          goto LABEL_32;
        }
      }

      else
      {
        *v25 = v23;
        *(a1 + 24) = v25 + 8;
        v26 = *(v23 + 8);
        if (v26 != 34)
        {
          goto LABEL_38;
        }

LABEL_67:
        v24 = *(v24 + 24);
        v39 = *(a1 + 584);
        if (v39 == *(a1 + 592))
        {
          goto LABEL_68;
        }

LABEL_57:
        *v39 = v24;
        *(a1 + 584) = v39 + 1;
        v4 = *a1;
        v22 = *(a1 + 8);
        if (*a1 != v22)
        {
LABEL_32:
          if (*v4 == 81)
          {
            v7 = v57;
            goto LABEL_79;
          }
        }
      }
    }
  }

  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v8 = (a1 + 40);
  v9 = a1 + 4904;
  do
  {
    do
    {
      while (1)
      {
        if (v4 != v6 && *v4 == 69)
        {
          v18 = 0;
          goto LABEL_82;
        }

        sub_100008A68(a1, a2);
        if (!v10)
        {
          return;
        }

        v11 = *(a1 + 24);
        if (v11 == *(a1 + 32))
        {
          break;
        }

        *v11 = v10;
        *(a1 + 24) = v11 + 8;
        v4 = *a1;
        v6 = *(a1 + 8);
        if (*a1 != v6)
        {
          goto LABEL_9;
        }
      }

      v12 = v10;
      v13 = *(a1 + 16);
      v14 = v11 - v13;
      if (v13 == v8)
      {
        v15 = malloc_type_malloc(2 * (v11 - v13), 0x2004093837F09uLL);
        if (!v15)
        {
          goto LABEL_87;
        }

        a2 = *(a1 + 16);
        v16 = *(a1 + 24);
        if (v16 != a2)
        {
          v17 = v15;
          memmove(v15, a2, v16 - a2);
          v15 = v17;
        }

        *(a1 + 16) = v15;
      }

      else
      {
        v15 = malloc_type_realloc(v13, 2 * (v11 - v13), 0x2004093837F09uLL);
        *(a1 + 16) = v15;
        if (!v15)
        {
          goto LABEL_87;
        }
      }

      *(a1 + 32) = &v15[8 * (v14 >> 2)];
      *&v15[v14] = v12;
      *(a1 + 24) = &v15[v14 + 8];
      v4 = *a1;
      v6 = *(a1 + 8);
    }

    while (*a1 == v6);
LABEL_9:
    ;
  }

  while (*v4 != 81);
LABEL_79:
  *a1 = v4 + 1;
  v49 = *(a1 + 778);
  *(a1 + 778) = 1;
  v50 = sub_10000C5A0(a1, a2);
  *(a1 + 778) = v49;
  if (!v50)
  {
    return;
  }

  v4 = *a1;
  if (*a1 == *(a1 + 8))
  {
    return;
  }

  v18 = v50;
  if (*v4 != 69)
  {
    return;
  }

LABEL_82:
  *a1 = v4 + 1;
  v51 = sub_100008FE4(a1, v7);
  v53 = v52;
  v54 = *(a1 + 4904);
  v55 = v54[1];
  if ((v55 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v54 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v54)
    {
LABEL_88:
      std::terminate();
    }

    v55 = 0;
    *v54 = *v9;
    v54[1] = 0;
    *v9 = v54;
  }

  v54[1] = v55 + 48;
  v56 = v54 + v55;
  v56[24] = 43;
  *(v56 + 25) = *(v56 + 25) & 0xF000 | 0x540;
  *(v56 + 2) = off_1002B35C8;
  *(v56 + 4) = v51;
  *(v56 + 5) = v53;
  *(v56 + 6) = v18;
}

char *sub_10000B270(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 45;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002B3628;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *sub_10000B338(uint64_t a1, size_t size)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2 || *v3 != 84)
  {
    return 0;
  }

  v4 = v3 + 1;
  *a1 = v3 + 1;
  if (v3 + 1 == v2 || *v4 != 76)
  {
    v6 = 0;
    if (v4 == v2)
    {
      return 0;
    }
  }

  else
  {
    *a1 = v3 + 2;
    if (v2 == v3 + 2)
    {
      return 0;
    }

    if (v3[2] - 58 < 0xFFFFFFF6)
    {
      return 0;
    }

    v29 = 0;
    v30 = v3 + 4;
    do
    {
      v4 = v30;
      v31 = v30 - 1;
      *a1 = v30 - 1;
      v29 = *(v30 - 2) + 10 * v29 - 48;
      if (v30 - 1 == v2)
      {
        break;
      }

      v32 = *(v30++ - 1) - 48;
    }

    while (v32 <= 9);
    if (v31 == v2)
    {
      return 0;
    }

    if (*(v4 - 1) != 95)
    {
      return 0;
    }

    v6 = v29 + 1;
    *a1 = v4;
    if (v4 == v2)
    {
      return 0;
    }
  }

  v7 = *v4;
  if (v7 != 95)
  {
    if ((v7 - 58) >= 0xFFFFFFF6)
    {
      v14 = 0;
      v15 = v4 + 1;
      do
      {
        *a1 = v15;
        if (v15 == v2)
        {
          return 0;
        }

        v14 = *(v15 - 1) + 10 * v14 - 48;
        v17 = *v15++;
        v16 = v17;
      }

      while ((v17 - 48) <= 9);
      if (v16 == 95)
      {
        v8 = v14 + 1;
        v4 = v15 - 1;
        *a1 = v15;
        if (*(a1 + 778) == 1)
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

    return 0;
  }

  v8 = 0;
  *a1 = v4 + 1;
  if (*(a1 + 778) == 1)
  {
LABEL_11:
    v9 = *(a1 + 4904);
    v10 = v9[1];
    if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_14:
      v9[1] = v10 + 32;
      v13 = v9 + v10;
      v13[24] = 8;
      *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
      *(v13 + 2) = off_1002B1AF8;
      *(v13 + 4) = v3;
      *(v13 + 5) = v4 - v3;
      return v13 + 16;
    }

    v11 = a1;
    v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v12)
    {
      v9 = v12;
      v10 = 0;
      *v12 = *(v11 + 4904);
      v12[1] = 0;
      *(v11 + 4904) = v12;
      goto LABEL_14;
    }

LABEL_52:
    std::terminate();
  }

LABEL_21:
  if (*(a1 + 777) != 1 || v6)
  {
    v33 = *(a1 + 664);
    v34 = (*(a1 + 672) - v33) >> 3;
    if (v6 < v34 && (v35 = *(v33 + 8 * v6)) != 0 && (v37 = v35, v36 = *v35, v8 < (v37[1] - v36) >> 3))
    {
      return *(v36 + 8 * v8);
    }

    else
    {
      if (v6 > v34 || *(a1 + 784) != v6)
      {
        return 0;
      }

      if (v6 == v34)
      {
        v42 = 0;
        v38 = a1;
        sub_100008E6C((a1 + 664), &v42);
        a1 = v38;
      }

      return sub_10000A6B8(a1, "auto");
    }
  }

  else
  {
    v18 = *(a1 + 4904);
    v19 = v18[1];
    if ((v19 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v20 = a1;
      v21 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v21)
      {
        goto LABEL_52;
      }

      v18 = v21;
      v19 = 0;
      a1 = v20;
      *v18 = *(v20 + 4904);
      v18[1] = 0;
      *(v20 + 4904) = v18;
    }

    v18[1] = v19 + 48;
    v22 = v18 + v19;
    v23 = v22 + 16;
    v22[24] = 44;
    *(v22 + 25) = *(v22 + 25) & 0xF000 | 0xA80;
    *(v22 + 2) = off_1002B1BB8;
    *(v22 + 4) = v8;
    *(v22 + 5) = 0;
    v22[48] = 0;
    v24 = *(a1 + 728);
    if (v24 == *(a1 + 736))
    {
      v25 = *(a1 + 720);
      v26 = &v24[-v25];
      v27 = a1;
      if (v25 == a1 + 744)
      {
        v39 = malloc_type_malloc(2 * v26, 0x2004093837F09uLL);
        if (!v39)
        {
          goto LABEL_53;
        }

        v28 = v39;
        a1 = v27;
        v40 = *(v27 + 720);
        v41 = *(v27 + 728);
        if (v41 != v40)
        {
          memmove(v28, v40, v41 - v40);
          a1 = v27;
        }

        *(a1 + 720) = v28;
      }

      else
      {
        v28 = malloc_type_realloc(*(a1 + 720), 2 * &v24[-v25], 0x2004093837F09uLL);
        a1 = v27;
        *(v27 + 720) = v28;
        if (!v28)
        {
LABEL_53:
          abort();
        }
      }

      v24 = &v28[v26];
      *(a1 + 736) = &v28[8 * (v26 >> 2)];
    }

    *v24 = v23;
    *(a1 + 728) = v24 + 8;
    return v23;
  }
}

char *sub_10000B79C(void *a1, size_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  if (*v2 != 68)
  {
    return 0;
  }

  *a1 = v2 + 1;
  if (v2 + 1 == v3 || (v2[1] | 0x20) != 0x74)
  {
    return 0;
  }

  *a1 = v2 + 2;
  result = sub_10000C5A0(a1, a2);
  if (!result)
  {
    return result;
  }

  v6 = *a1;
  if (*a1 == a1[1] || *v6 != 69)
  {
    return 0;
  }

  *a1 = v6 + 1;
  v7 = a1[613];
  v8 = v7[1];
  if ((v8 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v9 = result;
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v7 = v10;
    v8 = 0;
    *v10 = a1[613];
    v10[1] = 0;
    a1[613] = v10;
    result = v9;
  }

  v7[1] = v8 + 64;
  v11 = v7 + v8;
  v11[24] = 60;
  *(v11 + 25) = *(v11 + 25) & 0xF000 | 0x540;
  *(v11 + 2) = off_1002B2428;
  *(v11 + 4) = "decltype";
  *(v11 + 5) = 8;
  *(v11 + 7) = 0;
  *(v11 + 8) = 0;
  *(v11 + 6) = result;
  return v11 + 16;
}

char *sub_10000B8E8(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  if (*v2 != 83)
  {
    return 0;
  }

  v3 = v2 + 1;
  *a1 = v2 + 1;
  if (v1 == v2 + 1)
  {
    return 0;
  }

  v4 = *v3;
  if (*v3 < 97)
  {
    if (v4 == 95)
    {
      *a1 = v2 + 2;
      v7 = a1[37];
      if (v7 != a1[38])
      {
        return *v7;
      }
    }

    else if (v4 >= 48)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v4 > 0x7A)
  {
LABEL_16:
    if (v4 < 0x3A || v4 - 65 <= 0x19)
    {
      v9 = 0;
      while (*v3 >= 48)
      {
        if (*v3 < 0x3Au)
        {
          v10 = -48;
        }

        else
        {
          if (*v3 - 65 > 0x19)
          {
            break;
          }

          v10 = -55;
        }

        v9 = *v3++ + 36 * v9 + v10;
        *a1 = v3;
        if (v3 == v1)
        {
          break;
        }
      }

      if (v3 != v1 && *v3 == 95)
      {
        *a1 = v3 + 1;
        v11 = a1[37];
        if (v9 + 1 < ((a1[38] - v11) >> 3))
        {
          return *(v11 + 8 * (v9 + 1));
        }
      }
    }

    return 0;
  }

  if (*v3 > 0x68u)
  {
    switch(v4)
    {
      case 'i':
        v5 = 3;
        break;
      case 'o':
        v5 = 4;
        break;
      case 's':
        v5 = 2;
        break;
      default:
        return 0;
    }
  }

  else
  {
    switch(v4)
    {
      case 'a':
        v5 = 0;
        break;
      case 'b':
        v5 = 1;
        break;
      case 'd':
        v5 = 5;
        break;
      default:
        return 0;
    }
  }

  *a1 = v2 + 2;
  v12 = a1[613];
  v13 = *(v12 + 1);
  if ((v13 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = a1;
    v15 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v15)
    {
      std::terminate();
    }

    v12 = v15;
    v13 = 0;
    a1 = v14;
    *v12 = v14[613];
    *(v12 + 1) = 0;
    v14[613] = v12;
  }

  v16 = v13 + 16;
  *(v12 + 1) = v16;
  v17 = &v12[v16];
  v17[8] = 48;
  *(v17 + 9) = *&v12[v16 + 9] & 0xF000 | 0x540;
  *(v17 + 3) = v5;
  *v17 = off_1002B3208;
  v18 = a1;
  v19 = sub_10001A0A8(a1, &v12[v16]);
  if (v19 == v17)
  {
    return v17;
  }

  v20 = v19;
  v21 = v18;
  v22 = v18[38];
  if (v22 == v18[39])
  {
    v23 = v18[37];
    v24 = v22 - v23;
    if (v23 == (v18 + 40))
    {
      v25 = malloc_type_malloc(2 * (v22 - v23), 0x2004093837F09uLL);
      if (!v25)
      {
        goto LABEL_56;
      }

      v21 = v18;
      v26 = v18[37];
      v27 = v18[38];
      if (v27 != v26)
      {
        v28 = v25;
        memmove(v25, v26, v27 - v26);
        v25 = v28;
        v21 = v18;
      }

      v21[37] = v25;
    }

    else
    {
      v25 = malloc_type_realloc(v23, 2 * (v22 - v23), 0x2004093837F09uLL);
      v21 = v18;
      v18[37] = v25;
      if (!v25)
      {
LABEL_56:
        abort();
      }
    }

    v22 = &v25[v24];
    v21[39] = &v25[8 * (v24 >> 2)];
  }

  *v22 = v20;
  v21[38] = v22 + 8;
  return v20;
}

char *sub_10000BC54(uint64_t a1, unsigned __int8 *a2, char *a3, uint64_t a4)
{
  v4 = a3;
  v54 = a4;
  v55 = a3;
  if (sub_100009F48(a1, &v54))
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v8 == v9)
  {
    v10 = 1;
    goto LABEL_31;
  }

  if (*v8 == 70)
  {
    v10 = 0;
    *a1 = ++v8;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_8:
    v10 = 1;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  if (*v8 == 76)
  {
    *a1 = ++v8;
  }

LABEL_11:
  if (v9 != v8 && *v8 >= 49)
  {
    v11 = *v8;
    if (v11 <= 0x39)
    {
      v12 = sub_10000A4D4(a1);
      goto LABEL_32;
    }

    if (v11 == 85)
    {
      sub_100013108(a1, a2);
      goto LABEL_32;
    }
  }

  if ((v9 - v8) >= 2 && *v8 == 17220)
  {
    *a1 = v8 + 2;
    v35 = *(a1 + 16);
    v34 = *(a1 + 24);
    result = sub_10000A4D4(a1);
    if (!result)
    {
      return result;
    }

    v36 = result;
    v37 = (v34 - v35) >> 3;
    while (1)
    {
      v38 = *(a1 + 24);
      if (v38 == *(a1 + 32))
      {
        v39 = *(a1 + 16);
        v40 = v38 - v39;
        if (v39 == (a1 + 40))
        {
          v41 = malloc_type_malloc(2 * (v38 - v39), 0x2004093837F09uLL);
          if (!v41)
          {
LABEL_91:
            abort();
          }

          v42 = *(a1 + 16);
          v43 = *(a1 + 24);
          if (v43 != v42)
          {
            v44 = v41;
            memmove(v41, v42, v43 - v42);
            v41 = v44;
          }

          *(a1 + 16) = v41;
        }

        else
        {
          v41 = malloc_type_realloc(v39, 2 * (v38 - v39), 0x2004093837F09uLL);
          *(a1 + 16) = v41;
          if (!v41)
          {
            goto LABEL_91;
          }
        }

        v38 = &v41[v40];
        *(a1 + 32) = &v41[8 * (v40 >> 2)];
      }

      *v38 = v36;
      *(a1 + 24) = v38 + 8;
      v45 = *a1;
      if (*a1 != *(a1 + 8) && *v45 == 69)
      {
        break;
      }

      v36 = sub_10000A4D4(a1);
      result = 0;
      if (!v36)
      {
        return result;
      }
    }

    *a1 = v45 + 1;
    v46 = sub_100008FE4(a1, v37);
    v48 = v47;
    v49 = *(a1 + 4904);
    v50 = v49[1];
    if ((v50 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v49 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v49)
      {
        goto LABEL_92;
      }

      v50 = 0;
      *v49 = *(a1 + 4904);
      v49[1] = 0;
      *(a1 + 4904) = v49;
    }

    v49[1] = v50 + 32;
    v51 = v49 + v50;
    v16 = v51 + 16;
    v51[24] = 53;
    *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x540;
    *(v51 + 2) = off_1002B3328;
    *(v51 + 4) = v46;
    *(v51 + 5) = v48;
    goto LABEL_33;
  }

  if (v9 == v8 || *v8 - 67 > 1)
  {
LABEL_31:
    v12 = sub_1000197C4(a1, a2);
    goto LABEL_32;
  }

  result = 0;
  if (!v4 || v54)
  {
    return result;
  }

  if (v4[8] == 48)
  {
    v57 = v4;
    v4 = sub_10001AB08(a1, &v57);
    v55 = v4;
    v8 = *a1;
    v9 = *(a1 + 8);
  }

  if (v8 == v9)
  {
    return 0;
  }

  v13 = *v8;
  if (v13 == 67)
  {
    v14 = v8 + 1;
    *a1 = v8 + 1;
    if (v8 + 1 == v9 || *v14 != 73)
    {
      v15 = 0;
    }

    else
    {
      v14 = v8 + 2;
      *a1 = v8 + 2;
      v15 = 1;
    }

    if (v9 == v14)
    {
      return 0;
    }

    v53 = *v14;
    if ((v53 - 49) > 4)
    {
      return 0;
    }

    LODWORD(v57) = v53 - 48;
    *a1 = v14 + 1;
    if (a2)
    {
      *a2 = 1;
    }

    if (v15 && !sub_1000082DC(a1, a2))
    {
      v16 = 0;
      goto LABEL_33;
    }

    v56 = 0;
  }

  else
  {
    result = 0;
    if ((v9 - v8) < 2)
    {
      return result;
    }

    if (v13 != 68)
    {
      return result;
    }

    result = 0;
    v52 = v8[1];
    if (v52 > 0x35 || ((1 << v52) & 0x37000000000000) == 0)
    {
      return result;
    }

    LODWORD(v57) = v52 - 48;
    *a1 = v8 + 2;
    if (a2)
    {
      *a2 = 1;
    }

    v56 = 1;
  }

  v12 = sub_10001ABC0(a1, &v55, &v56, &v57);
LABEL_32:
  v16 = v12;
LABEL_33:
  if (v16 && (v17 = v54) != 0)
  {
    v18 = *(a1 + 4904);
    v19 = v18[1];
    if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v18 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v18)
      {
        goto LABEL_92;
      }

      v19 = 0;
      *v18 = *(a1 + 4904);
      v18[1] = 0;
      *(a1 + 4904) = v18;
    }

    v18[1] = v19 + 32;
    v20 = v18 + v19;
    v20[24] = 28;
    *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
    *(v20 + 2) = off_1002B33E8;
    *(v20 + 4) = v17;
    *(v20 + 5) = v16;
    v16 = v20 + 16;
  }

  else if (!v16)
  {
    return 0;
  }

  result = sub_10001A0A8(a1, v16);
  if (result)
  {
    v21 = v10;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v29 = *(a1 + 4904);
    v30 = v29[1];
    if ((v30 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v31 = result;
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v32)
      {
        goto LABEL_92;
      }

      v29 = v32;
      v30 = 0;
      *v32 = *(a1 + 4904);
      v32[1] = 0;
      *(a1 + 4904) = v32;
      result = v31;
    }

    v29[1] = v30 + 32;
    v33 = v29 + v30;
    v27 = v33 + 16;
    v33[24] = 25;
    *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
    v28 = off_1002B3448;
    goto LABEL_54;
  }

  if (result && v4)
  {
    v22 = *(a1 + 4904);
    v23 = v22[1];
    if ((v23 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_49:
      v22[1] = v23 + 32;
      v26 = v22 + v23;
      v27 = v26 + 16;
      v26[24] = 24;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      v28 = off_1002B34A8;
LABEL_54:
      *(v27 + 2) = v4;
      *(v27 + 3) = result;
      result = v27;
      *v27 = v28;
      return result;
    }

    v24 = result;
    v25 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v25)
    {
      v22 = v25;
      v23 = 0;
      *v25 = *(a1 + 4904);
      v25[1] = 0;
      *(a1 + 4904) = v25;
      result = v24;
      goto LABEL_49;
    }

LABEL_92:
    std::terminate();
  }

  return result;
}

uint64_t sub_10000C270(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = *(v3 + 9);
  if ((v4 & 0xC0) == 0x80)
  {
    result = (**v3)(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 < 0x40;
  }

  return result;
}

uint64_t sub_10000C318(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = v3[10] & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 8))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t sub_10000C3C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = (*(v3 + 9) >> 10) & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 16))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t sub_10000C468(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 24))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t sub_10000C4C8(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 32))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t sub_10000C528(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 40))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

void sub_10000C5A0(unsigned __int8 **a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 < 2)
  {
    return;
  }

  v6 = *v2;
  v7 = v6 != 29543;
  if (v6 == 29543)
  {
    *a1 = ++v2;
    v4 = v3 - v2;
    v8 = 1;
    v183 = 1;
    if ((v3 - v2) < 2)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    v183 = 0;
  }

  v9 = 0;
  v10 = v2 + 1;
  v11 = *v2;
  v12 = 62;
  do
  {
    v13 = (v9 + v12) >> 1;
    v14 = &unk_1002B1C08 + 16 * v13;
    if (*v14 < v11)
    {
      v9 = v13 + 1;
    }

    else if (*v14 == v11)
    {
      if (v14[1] >= *v10)
      {
        v12 = (v9 + v12) >> 1;
      }

      else
      {
        v9 = v13 + 1;
      }
    }

    else
    {
      v12 = (v9 + v12) >> 1;
    }
  }

  while (v12 != v9);
  v15 = &unk_1002B1C08 + 16 * v9;
  if (*v15 == v11 && v15[1] == *v10)
  {
    v16 = v2 + 1;
    *a1 = (v2 + 1);
    v17 = v15[2];
    v18 = *(v15 + 1);
    v19 = strlen(v18);
    v21 = v19;
    if (v17 > 0xA)
    {
      v22 = *(v15 + 1);
    }

    else
    {
      v22 = (v18 + 8);
      if (v19 == 8)
      {
        v21 = 0;
      }

      else
      {
        v23 = *v22;
        if (v23 == 32)
        {
          v21 = v19 - 9;
        }

        else
        {
          v21 = v19 - 8;
        }

        if (v23 == 32)
        {
          v22 = (v18 + 9);
        }
      }
    }

    v182.n128_u64[0] = v22;
    v182.n128_u64[1] = v21;
    switch(v17)
    {
      case 1u:
        if (v16 == v3 || *v16 != 95)
        {
          v186.n128_u64[0] = sub_10000C5A0(a1, v20);
          if (v186.n128_u64[0])
          {
            LODWORD(v181) = v15[3] >> 1;
            sub_10000DA88(a1, &v186, &v182, &v181);
          }
        }

        else
        {
          *a1 = v2 + 3;
          v60 = v15[3] >> 1;
          v186.n128_u64[0] = v22;
          v186.n128_u64[1] = v21;
          LODWORD(v184) = v60;
          *&v181 = sub_10000C5A0(a1, v20);
          if (v181)
          {
            sub_1000115AC(a1, &v186, &v181, &v184);
          }
        }

        return;
      case 2u:
        v61 = v15[3] >> 1;
        v186.n128_u64[0] = v22;
        v186.n128_u64[1] = v21;
        v185 = v61;
        *&v181 = sub_10000C5A0(a1, v20);
        if (v181)
        {
          v184 = sub_10000C5A0(a1, v62);
          if (v184)
          {
            sub_1000111D4(a1, &v181, &v186, &v184, &v185);
          }
        }

        return;
      case 3u:
        v186.n128_u64[0] = sub_10000C5A0(a1, v20);
        if (v186.n128_u64[0])
        {
          *&v181 = sub_10000C5A0(a1, v50);
          if (v181)
          {
            LODWORD(v184) = v15[3] >> 1;
            sub_10000DB60(a1, &v186, &v181, &v184);
          }
        }

        return;
      case 4u:
        v186.n128_u64[0] = sub_10000C5A0(a1, v20);
        if (v186.n128_u64[0])
        {
          *&v181 = sub_10000C5A0(a1, v69);
          if (v181)
          {
            LODWORD(v184) = v15[3] >> 1;
            sub_10000DC34(a1, &v186, &v182, &v181, &v184);
          }
        }

        return;
      case 5u:
        v70 = (a1[3] - a1[2]) >> 3;
        v71 = (a1 + 5);
        while (2)
        {
          if (v16 != v3 && *v16 == 95)
          {
            *a1 = v16 + 1;
            v186.n128_u64[0] = sub_100008FE4(a1, v70);
            v186.n128_u64[1] = v122;
            v184 = sub_1000062D4(a1, v122);
            if (!v184)
            {
              return;
            }

            v123 = sub_1000056EC(a1, "pi", 2uLL);
            v126 = a1[2];
            v125 = a1[3];
            if (v123)
            {
              while (1)
              {
                v127 = *a1;
                if (*a1 != a1[1] && *v127 == 69)
                {
                  break;
                }

                v132 = sub_10000C5A0(a1, v124);
                if (!v132)
                {
                  return;
                }

                v131 = a1[3];
                if (v131 == a1[4])
                {
                  v133 = v132;
                  v134 = a1[2];
                  v135 = v131 - v134;
                  if (v134 == v71)
                  {
                    v130 = malloc_type_malloc(2 * (v131 - v134), 0x2004093837F09uLL);
                    if (!v130)
                    {
                      goto LABEL_299;
                    }

                    v124 = a1[2];
                    v136 = a1[3];
                    if (v136 != v124)
                    {
                      v137 = v130;
                      memmove(v130, v124, v136 - v124);
                      v130 = v137;
                    }

                    a1[2] = v130;
                  }

                  else
                  {
                    v130 = malloc_type_realloc(v134, 2 * (v131 - v134), 0x2004093837F09uLL);
                    a1[2] = v130;
                    if (!v130)
                    {
                      goto LABEL_299;
                    }
                  }

                  v131 = &v130[v135];
                  a1[4] = &v130[8 * (v135 >> 2)];
                  v132 = v133;
                }

                *v131 = v132;
                a1[3] = (v131 + 8);
              }
            }

            else
            {
              v127 = *a1;
              if (*a1 == a1[1] || *v127 != 69)
              {
                return;
              }
            }

            *a1 = v127 + 1;
            *&v181 = sub_100008FE4(a1, (v125 - v126) >> 3);
            *(&v181 + 1) = v128;
            v129 = v15[3];
            v180 = v129 & 1;
            v185 = v129 >> 1;
            sub_10000DD20(a1, &v186, &v184, &v181, &v183, &v180, &v185);
            return;
          }

          v74 = sub_10000C5A0(a1, v20);
          if (!v74)
          {
            return;
          }

          v73 = a1[3];
          if (v73 != a1[4])
          {
            goto LABEL_124;
          }

          v75 = v74;
          v76 = a1[2];
          v77 = v73 - v76;
          if (v76 == v71)
          {
            v72 = malloc_type_malloc(2 * (v73 - v76), 0x2004093837F09uLL);
            if (v72)
            {
              v20 = a1[2];
              v78 = a1[3];
              if (v78 != v20)
              {
                v79 = v72;
                memmove(v72, v20, v78 - v20);
                v72 = v79;
              }

              a1[2] = v72;
              goto LABEL_123;
            }
          }

          else
          {
            v72 = malloc_type_realloc(v76, 2 * (v73 - v76), 0x2004093837F09uLL);
            a1[2] = v72;
            if (v72)
            {
LABEL_123:
              v73 = &v72[v77];
              a1[4] = &v72[8 * (v77 >> 2)];
              v74 = v75;
LABEL_124:
              *v73 = v74;
              a1[3] = (v73 + 8);
              v16 = *a1;
              v3 = a1[1];
              continue;
            }
          }

          goto LABEL_299;
        }

      case 6u:
        v63 = sub_10000C5A0(a1, v20);
        if (!v63)
        {
          return;
        }

        v64 = v63;
        v65 = v15[3];
        v66 = a1[613];
        v67 = *(v66 + 1);
        if ((v67 - 4048) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_117;
        }

        v66 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v66)
        {
          goto LABEL_300;
        }

        v67 = 0;
        *v66 = a1[613];
        *(v66 + 1) = 0;
        a1[613] = v66;
LABEL_117:
        *(v66 + 1) = v67 + 32;
        v68 = v66 + v67;
        v68[24] = 65;
        *(v68 + 25) = *(v68 + 25) & 0xF000 | (v65 >> 1) | 0x540;
        *(v68 + 2) = off_1002B2248;
        *(v68 + 4) = v64;
        v68[40] = v8;
        v68[41] = v65 & 1;
        return;
      case 7u:
        *&v181 = sub_10000C5A0(a1, v20);
        if (!v181)
        {
          return;
        }

        v83 = (a1[3] - a1[2]) >> 3;
        while (2)
        {
          v87 = *a1;
          if (*a1 == a1[1] || *v87 != 69)
          {
            v86 = sub_10000C5A0(a1, v82);
            if (!v86)
            {
              return;
            }

            v85 = a1[3];
            if (v85 != a1[4])
            {
LABEL_142:
              *v85 = v86;
              a1[3] = (v85 + 8);
              continue;
            }

            v88 = v86;
            v89 = a1[2];
            v90 = v85 - v89;
            if (v89 == (a1 + 5))
            {
              v84 = malloc_type_malloc(2 * (v85 - v89), 0x2004093837F09uLL);
              if (v84)
              {
                v82 = a1[2];
                v91 = a1[3];
                if (v91 != v82)
                {
                  v92 = v84;
                  memmove(v84, v82, v91 - v82);
                  v84 = v92;
                }

                a1[2] = v84;
                goto LABEL_141;
              }
            }

            else
            {
              v84 = malloc_type_realloc(v89, 2 * (v85 - v89), 0x2004093837F09uLL);
              a1[2] = v84;
              if (v84)
              {
LABEL_141:
                v85 = &v84[v90];
                a1[4] = &v84[8 * (v90 >> 2)];
                v86 = v88;
                goto LABEL_142;
              }
            }

LABEL_299:
            abort();
          }

          break;
        }

        *a1 = v87 + 1;
        v186.n128_u64[0] = sub_100008FE4(a1, v83);
        v186.n128_u64[1] = v139;
        v140 = v15[3];
        LOBYTE(v185) = v140 & 1;
        LODWORD(v184) = v140 >> 1;
        v141 = &v181;
        goto LABEL_231;
      case 8u:
        v53 = *(a1 + 776);
        *(a1 + 776) = 0;
        v54 = sub_1000062D4(a1, v20);
        *&v181 = v54;
        *(a1 + 776) = v53;
        if (!v54)
        {
          return;
        }

        v56 = (a1[3] - a1[2]) >> 3;
        v57 = *a1;
        v58 = a1[1];
        if (*a1 == v58)
        {
          goto LABEL_242;
        }

        v59 = *v57;
        if (v59 == 95)
        {
          v57 = (v57 + 1);
          *a1 = v57;
          while (v57 == v58 || *v57 != 69)
          {
            v95 = sub_10000C5A0(a1, v55);
            if (!v95)
            {
              return;
            }

            v94 = a1[3];
            if (v94 == a1[4])
            {
              v96 = v95;
              v97 = a1[2];
              v98 = v94 - v97;
              if (v97 == (a1 + 5))
              {
                v93 = malloc_type_malloc(2 * (v94 - v97), 0x2004093837F09uLL);
                if (!v93)
                {
                  goto LABEL_299;
                }

                v55 = a1[2];
                v99 = a1[3];
                if (v99 != v55)
                {
                  v100 = v93;
                  memmove(v93, v55, v99 - v55);
                  v93 = v100;
                }

                a1[2] = v93;
              }

              else
              {
                v93 = malloc_type_realloc(v97, 2 * (v94 - v97), 0x2004093837F09uLL);
                a1[2] = v93;
                if (!v93)
                {
                  goto LABEL_299;
                }
              }

              v94 = &v93[v98];
              a1[4] = &v93[8 * (v98 >> 2)];
              v95 = v96;
            }

            *v94 = v95;
            a1[3] = (v94 + 8);
            v57 = *a1;
            v58 = a1[1];
          }
        }

        else if (v59 != 69)
        {
LABEL_242:
          v147 = sub_10000C5A0(a1, v55);
          if (!v147)
          {
            return;
          }

          v148 = a1[3];
          if (v148 == a1[4])
          {
            v149 = v147;
            v150 = a1[2];
            v151 = v148 - v150;
            if (v150 == (a1 + 5))
            {
              v152 = malloc_type_malloc(2 * (v148 - v150), 0x2004093837F09uLL);
              if (!v152)
              {
                goto LABEL_299;
              }

              v162 = a1[2];
              v163 = a1[3];
              if (v163 != v162)
              {
                v164 = v152;
                memmove(v152, v162, v163 - v162);
                v152 = v164;
              }

              a1[2] = v152;
            }

            else
            {
              v152 = malloc_type_realloc(v150, 2 * (v148 - v150), 0x2004093837F09uLL);
              a1[2] = v152;
              if (!v152)
              {
                goto LABEL_299;
              }
            }

            v148 = &v152[v151];
            a1[4] = &v152[8 * (v151 >> 2)];
            v147 = v149;
          }

          *v148 = v147;
          a1[3] = (v148 + 8);
          v186.n128_u64[0] = sub_100008FE4(a1, v56);
          v186.n128_u64[1] = v146;
LABEL_269:
          if (v146 != 1)
          {
            return;
          }

LABEL_270:
          LODWORD(v184) = v15[3] >> 1;
          sub_10000DF18(a1, &v181, &v186, &v184);
          return;
        }

        *a1 = v57 + 1;
        v186.n128_u64[0] = sub_100008FE4(a1, v56);
        v186.n128_u64[1] = v146;
        if (v59 == 95)
        {
          goto LABEL_270;
        }

        goto LABEL_269;
      case 9u:
        v186.n128_u64[0] = sub_10000C5A0(a1, v20);
        if (v186.n128_u64[0])
        {
          *&v181 = sub_10000C5A0(a1, v80);
          if (v181)
          {
            v184 = sub_10000C5A0(a1, v81);
            if (v184)
            {
              v185 = v15[3] >> 1;
              sub_10000DFF0(a1, &v186, &v181, &v184, &v185);
            }
          }
        }

        return;
      case 0xAu:
        return;
      case 0xBu:
        v186.n128_u64[0] = sub_1000062D4(a1, v20);
        if (v186.n128_u64[0])
        {
          *&v181 = sub_10000C5A0(a1, v49);
          if (v181)
          {
            LODWORD(v184) = v15[3] >> 1;
            sub_10000E0D8(a1, &v182, &v186, &v181, &v184);
          }
        }

        return;
      case 0xCu:
        v51 = v15[3];
        if (v51)
        {
          v52 = sub_1000062D4(a1, v20);
        }

        else
        {
          v52 = sub_10000C5A0(a1, v20);
        }

        v102 = v52;
        if (!v52)
        {
          return;
        }

        v103 = a1[613];
        v104 = *(v103 + 1);
        if ((v104 - 4016) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_178;
        }

        v103 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v103)
        {
          goto LABEL_300;
        }

        v104 = 0;
        *v103 = a1[613];
        *(v103 + 1) = 0;
        a1[613] = v103;
LABEL_178:
        *(v103 + 1) = v104 + 64;
        v105 = v103 + v104;
        v105[24] = 60;
        *(v105 + 25) = *(v105 + 25) & 0xF000 | (v51 >> 1) | 0x540;
        *(v105 + 2) = off_1002B2428;
        *(v105 + 4) = v22;
        *(v105 + 5) = v21;
        *(v105 + 7) = 0;
        *(v105 + 8) = 0;
        *(v105 + 6) = v102;
        return;
      default:
        v38 = v15[3];
        v39 = sub_10000C5A0(a1, v20);
        if (!v39)
        {
          return;
        }

        v40 = v39;
        v41 = a1[613];
        v42 = *(v41 + 1);
        if ((v42 - 4032) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_72;
        }

        v41 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v41)
        {
          goto LABEL_300;
        }

        v42 = 0;
        *v41 = a1[613];
        *(v41 + 1) = 0;
        a1[613] = v41;
LABEL_72:
        *(v41 + 1) = v42 + 48;
        v43 = v41 + v42;
        v43[24] = 66;
        *(v43 + 25) = *(v43 + 25) & 0xF000 | (v38 >> 1) | 0x540;
        *(v43 + 2) = off_1002B2068;
        *(v43 + 4) = v22;
        *(v43 + 5) = v21;
        *(v43 + 6) = v40;
        return;
    }
  }

  switch(v11)
  {
    case 'f':
      v24 = *v10;
      if (v24 != 112)
      {
        if (v24 != 76)
        {
          goto LABEL_78;
        }

        if (v4 == 2)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v2 + 2);
          if (v25 < 0)
          {
            goto LABEL_78;
          }
        }

        if ((_DefaultRuneLocale.__runetype[v25] & 0x400) == 0)
        {
LABEL_78:
          if (v2 != v3)
          {
            *a1 = v10;
            if (v3 != v10)
            {
              v45 = *v10;
              if (v45 > 107)
              {
                if (v45 == 108)
                {
                  v47 = 0;
                  v46 = 1;
                }

                else
                {
                  if (v45 != 114)
                  {
                    return;
                  }

                  v46 = 0;
                  v47 = 0;
                }
              }

              else if (v45 == 76)
              {
                v46 = 1;
                v47 = 1;
              }

              else
              {
                if (v45 != 82)
                {
                  return;
                }

                v46 = 0;
                v47 = 1;
              }

              *a1 = (v2 + 1);
              if ((v3 - (v2 + 1)) >= 2)
              {
                v110 = 0;
                v111 = *(v2 + 2);
                v112 = 62;
                do
                {
                  v113 = (v110 + v112) >> 1;
                  v114 = &unk_1002B1C08 + 16 * v113;
                  if (*v114 < v111)
                  {
                    v110 = v113 + 1;
                  }

                  else if (*v114 == v111)
                  {
                    if (v114[1] >= *(v2 + 3))
                    {
                      v112 = (v110 + v112) >> 1;
                    }

                    else
                    {
                      v110 = v113 + 1;
                    }
                  }

                  else
                  {
                    v112 = (v110 + v112) >> 1;
                  }
                }

                while (v112 != v110);
                v115 = &unk_1002B1C08 + 16 * v110;
                if (*v115 == v111 && v115[1] == *(v2 + 3))
                {
                  *a1 = (v2 + 2);
                  v116 = v115[2];
                  if (v116 == 2 || v116 == 4 && *(*(v115 + 1) + strlen(*(v115 + 1)) - 1) == 42)
                  {
                    v117 = sub_10000C5A0(a1, a2);
                    if (v117)
                    {
                      v119 = v117;
                      if (v47)
                      {
                        v120 = sub_10000C5A0(a1, v118);
                        if (!v120)
                        {
                          return;
                        }

                        if (v46)
                        {
                          v121 = v119;
                        }

                        else
                        {
                          v121 = v120;
                        }

                        if (v46)
                        {
                          v119 = v120;
                        }
                      }

                      else
                      {
                        v121 = 0;
                      }

                      v156 = *(v115 + 1);
                      v157 = strlen(v156);
                      v158 = v156 + 8;
                      if (v157 == 8)
                      {
                        v161 = 0;
                      }

                      else
                      {
                        v159 = *v158;
                        v160 = v156 + 9;
                        if (v159 == 32)
                        {
                          v161 = v157 - 9;
                        }

                        else
                        {
                          v161 = v157 - 8;
                        }

                        if (v159 == 32)
                        {
                          v158 = v160;
                        }
                      }

                      v173 = a1[613];
                      v174 = *(v173 + 1);
                      if ((v174 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
                      {
                        v173 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
                        if (!v173)
                        {
LABEL_300:
                          std::terminate();
                        }

                        v174 = 0;
                        *v173 = a1[613];
                        *(v173 + 1) = 0;
                        a1[613] = v173;
                      }

                      *(v173 + 1) = v174 + 64;
                      v175 = v173 + v174;
                      v175[24] = 71;
                      *(v175 + 25) = *(v175 + 25) & 0xF000 | 0x540;
                      *(v175 + 2) = off_1002B2AE8;
                      *(v175 + 4) = v119;
                      *(v175 + 5) = v121;
                      *(v175 + 6) = v158;
                      *(v175 + 7) = v161;
                      v175[64] = v46;
                    }
                  }
                }
              }
            }
          }

          return;
        }
      }

      sub_10000F1CC(a1);
      return;
    case 'T':

      sub_10000B338(a1, a2);
      return;
    case 'L':

      sub_10000E1C0(a1, a2);
      return;
  }

  if (*v2 == 27753)
  {
    v26 = v2 + 1;
    *a1 = (v2 + 1);
    v27 = (a1[3] - a1[2]) >> 3;
    v28 = (a1 + 5);
    while (v26 == v3 || *v26 != 69)
    {
      v31 = sub_10000F658(a1, a2);
      if (!v31)
      {
        return;
      }

      v30 = a1[3];
      if (v30 == a1[4])
      {
        v32 = v31;
        v33 = a1[2];
        v34 = v30 - v33;
        if (v33 == v28)
        {
          v29 = malloc_type_malloc(2 * (v30 - v33), 0x2004093837F09uLL);
          if (!v29)
          {
            goto LABEL_299;
          }

          a2 = a1[2];
          v35 = a1[3];
          if (v35 != a2)
          {
            v36 = v29;
            memmove(v29, a2, v35 - a2);
            v29 = v36;
          }

          a1[2] = v29;
        }

        else
        {
          v29 = malloc_type_realloc(v33, 2 * (v30 - v33), 0x2004093837F09uLL);
          a1[2] = v29;
          if (!v29)
          {
            goto LABEL_299;
          }
        }

        v30 = &v29[v34];
        a1[4] = &v29[8 * (v34 >> 2)];
        v31 = v32;
      }

      *v30 = v31;
      a1[3] = (v30 + 8);
      v26 = *a1;
      v3 = a1[1];
    }

    *a1 = v26 + 1;
    v186.n128_u64[0] = sub_100008FE4(a1, v27);
    v186.n128_u64[1] = v48;
    sub_10000F938(a1, &v186);
    return;
  }

  if ((v3 - v2) >= 2)
  {
    if (*v2 == 25453)
    {
      *a1 = (v2 + 1);

      sub_10000F9F4(a1, a2);
      return;
    }

    if (*v2 == 30830)
    {
      *a1 = (v2 + 1);
      v186.n128_u64[0] = sub_10000C5A0(a1, a2);
      if (v186.n128_u64[0])
      {
        v182.n128_u32[0] = 2;
        sub_10000FBC4(a1, &v186, &v182);
      }

      return;
    }
  }

  if (v3 != v2 && (v3 - v2) >= 2 && v11 == 114 && (*v10 | 0x20) == 0x71)
  {

    sub_10000FCA4(a1, a2);
    return;
  }

  if (sub_1000056EC(a1, "so", 2uLL))
  {

    sub_10001023C(a1, v37);
    return;
  }

  if (sub_1000056EC(a1, "sp", 2uLL))
  {
    v186.n128_u64[0] = sub_10000C5A0(a1, v44);
    if (v186.n128_u64[0])
    {
      sub_100010660(a1, &v186);
    }

    return;
  }

  if (sub_1000056EC(a1, "sZ", 2uLL))
  {
    if (a1[1] != *a1 && **a1 == 84)
    {
      v186.n128_u64[0] = sub_10000B338(a1, v101);
      if (v186.n128_u64[0])
      {
        sub_100010718(a1, &v186);
      }

      return;
    }

    sub_10000F1CC(a1);
    v186.n128_u64[0] = v138;
    if (!v138)
    {
      return;
    }

LABEL_252:
    sub_1000107D0(a1, &v186);
    return;
  }

  if (!sub_1000056EC(a1, "sP", 2uLL))
  {
    if (sub_1000056EC(a1, "tl", 2uLL))
    {
      v182.n128_u64[0] = sub_1000062D4(a1, v142);
      if (v182.n128_u64[0])
      {
        v144 = (a1[3] - a1[2]) >> 3;
        v145 = *a1;
        if (*a1 == a1[1])
        {
          goto LABEL_236;
        }

LABEL_235:
        if (*v145 == 69)
        {
          *a1 = v145 + 1;
          v186.n128_u64[0] = sub_100008FE4(a1, v144);
          v186.n128_u64[1] = v172;
          sub_100010950(a1, &v182, &v186);
        }

        else
        {
LABEL_236:
          while (1)
          {
            v186.n128_u64[0] = sub_10000F658(a1, v143);
            if (!v186.n128_u64[0])
            {
              break;
            }

            sub_100008E6C(a1 + 2, &v186);
            v145 = *a1;
            if (*a1 != a1[1])
            {
              goto LABEL_235;
            }
          }
        }
      }

      return;
    }

    if (sub_1000056EC(a1, "tr", 2uLL))
    {

      sub_10000A6B8(a1, "throw");
      return;
    }

    if (sub_1000056EC(a1, "tw", 2uLL))
    {
      v186.n128_u64[0] = sub_10000C5A0(a1, v155);
      if (v186.n128_u64[0])
      {
        sub_100010A1C(a1, &v186);
      }

      return;
    }

    v165 = *a1;
    if (*a1 == a1[1] || *v165 != 117)
    {

      sub_100010AD4(a1, !v7);
      return;
    }

    *a1 = v165 + 1;
    v166 = sub_10000A4D4(a1);
    v182.n128_u64[0] = v166;
    if (!v166)
    {
      return;
    }

    *&v181 = 0;
    v167 = (*(*v166 + 56))(v166);
    if (v168 == 8 && *v167 == 0x666F646975755F5FLL)
    {
      v177 = *a1;
      if (*a1 != a1[1])
      {
        v178 = *v177;
        if (v178 == 122)
        {
          *a1 = v177 + 1;
          v179 = sub_10000C5A0(a1, 8uLL);
          goto LABEL_297;
        }

        if (v178 == 116)
        {
          *a1 = v177 + 1;
          v179 = sub_1000062D4(a1, 8uLL);
LABEL_297:
          *&v181 = v179;
          if (!v179)
          {
            return;
          }

          v169 = a1[3] - a1[2];
          sub_100008E6C(a1 + 2, &v181);
          goto LABEL_291;
        }
      }
    }

    v169 = a1[3] - a1[2];
    v170 = *a1;
    if (*a1 == a1[1])
    {
      goto LABEL_278;
    }

LABEL_277:
    if (*v170 != 69)
    {
LABEL_278:
      while (1)
      {
        sub_100008A68(a1, v168);
        v186.n128_u64[0] = v171;
        if (!v171)
        {
          return;
        }

        sub_100008E6C(a1 + 2, &v186);
        v170 = *a1;
        if (*a1 != a1[1])
        {
          goto LABEL_277;
        }
      }
    }

    *a1 = v170 + 1;
LABEL_291:
    v186.n128_u64[0] = sub_100008FE4(a1, v169 >> 3);
    v186.n128_u64[1] = v176;
    LOBYTE(v185) = 0;
    LODWORD(v184) = 1;
    v141 = &v182;
LABEL_231:
    sub_10000DE2C(a1, v141, &v186, &v185, &v184);
    return;
  }

  v107 = (a1[3] - a1[2]) >> 3;
  v108 = *a1;
  if (*a1 == a1[1])
  {
    goto LABEL_182;
  }

LABEL_181:
  if (*v108 == 69)
  {
    *a1 = v108 + 1;
    v186.n128_u64[0] = sub_100008FE4(a1, v107);
    v186.n128_u64[1] = v153;
    sub_10001089C(a1, &v186);
    v186.n128_u64[0] = v154;
    goto LABEL_252;
  }

LABEL_182:
  while (1)
  {
    sub_100008A68(a1, v106);
    v186.n128_u64[0] = v109;
    if (!v109)
    {
      break;
    }

    sub_100008E6C(a1 + 2, &v186);
    v108 = *a1;
    if (*a1 != a1[1])
    {
      goto LABEL_181;
    }
  }
}