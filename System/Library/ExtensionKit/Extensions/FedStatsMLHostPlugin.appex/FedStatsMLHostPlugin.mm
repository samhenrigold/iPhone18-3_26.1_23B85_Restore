uint64_t sub_100001540(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_1000054F8(&qword_10001C690, &qword_100014310);
  if (swift_dynamicCast())
  {
    sub_10000572C(__src, &v43);
    sub_100005744(&v43, v44);
    sub_100013540();
    __src[0] = v42;
    sub_100005788(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1000055FC(__src, &qword_10001C698, &qword_100014318);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1000139B0();
  }

  sub_100002158(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000028FC(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_100002220(sub_10000565C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_100013610();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100002778(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_100013820();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_100013850();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1000139B0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100002778(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_100013830();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_100013620();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_100013620();
    sub_100005718(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_100005718(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000056C4(*&__src[0], *(&__src[0] + 1));

  sub_1000054A4(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100001A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000058C0;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100001B10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001BB8;

  return sub_10000316C(a1);
}

uint64_t sub_100001BB8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100001CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100001D98;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100001D98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001E8C(uint64_t a1)
{
  v2 = sub_100002FE8();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001F38();
  sub_100013680();
  return 0;
}

unint64_t sub_100001F38()
{
  result = qword_10001C638;
  if (!qword_10001C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C638);
  }

  return result;
}

id variable initialization expression of FedStatsPluginMLHostClient.containerConfig()
{
  v0 = objc_allocWithZone(CKOperationConfiguration);

  return [v0 init];
}

char *sub_10000204C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054F8(&unk_10001C9E0, &unk_100014850);
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

uint64_t *sub_100002158@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_100002844(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_100013530();
      swift_allocObject();
      v8 = sub_1000134E0();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_100013600();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_100002220(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1000054A4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000054A4(v7, v6);
    *v4 = xmmword_100014200;
    sub_1000054A4(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1000134F0() && __OFSUB__(v7, sub_100013520()))
      {
LABEL_26:
        __break(1u);
      }

      sub_100013530();
      swift_allocObject();
      v14 = sub_1000134D0();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1000026C4(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1000054A4(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_100014200;
    sub_1000054A4(0, 0xC000000000000000);
    sub_1000135E0();
    result = sub_1000026C4(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_1000025C4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100002844(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000299C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100002A18(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100002658(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000026C4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1000134F0();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_100013520();
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

  v12 = sub_100013510();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_100002778(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100013860();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100013840();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000027F4@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1000139A0();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100002844(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000028FC(uint64_t result)
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
      sub_100013530();
      swift_allocObject();
      sub_100013500();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_100013600();
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

uint64_t sub_10000299C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100013530();
  swift_allocObject();
  result = sub_1000134E0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100013600();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100002A18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100013530();
  swift_allocObject();
  result = sub_1000134E0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_100002AB0(uint64_t a1)
{
  v2 = sub_1000054F8(&qword_10001C718, &qword_100014338);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000054F8(&unk_10001C720, &qword_100014340);
    v7 = sub_100013A30();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000057F4(v9, v5, &qword_10001C718, &qword_100014338);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000100C4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
      result = sub_10000585C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_100002C84(uint64_t a1)
{
  v2 = sub_1000054F8(&qword_10001C708, &qword_100014328);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000054F8(&qword_10001C710, &qword_100014330);
    v7 = sub_100013A30();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000057F4(v9, v5, &qword_10001C708, &qword_100014328);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000100C4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1000135D0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_100002E84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000054F8(a2, a3);
    v5 = sub_100013A30();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1000100C4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_100002FE8()
{
  result = qword_10001C640;
  if (!qword_10001C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C640);
  }

  return result;
}

unint64_t sub_10000303C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054F8(&qword_10001C680, &qword_100014300);
    v3 = sub_100013A30();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000057F4(v4, &v13, &qword_10001C688, &qword_100014308);
      v5 = v13;
      v6 = v14;
      result = sub_1000100C4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000559C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_10000316C(uint64_t a1)
{
  v1[73] = a1;
  v2 = sub_100013670();
  v1[74] = v2;
  v1[75] = *(v2 - 8);
  v1[76] = swift_task_alloc();
  v3 = sub_100013570();
  v1[77] = v3;
  v1[78] = *(v3 - 8);
  v1[79] = swift_task_alloc();
  v4 = sub_1000135D0();
  v1[80] = v4;
  v1[81] = *(v4 - 8);
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();

  return _swift_task_switch(sub_100003328, 0, 0);
}

void sub_100003328()
{
  v208 = v0;
  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);
  v2 = sub_100013720();
  *(v0 + 680) = sub_100005418(v2, qword_10001D2F0);
  v3 = v1;
  v4 = sub_100013700();
  v5 = sub_1000138E0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 584);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_1000055FC(v8, &qword_10001C658, &qword_1000142E0);
  }

  v10 = sub_1000136F0();
  v12 = sub_100006070(v10, v11);
  v13 = sub_100013700();
  v14 = sub_1000138E0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v205 = v16;
    *v15 = 136315138;
    sub_100013990(28);

    v206 = 0xD00000000000001ALL;
    v207 = 0x8000000100014900;
    v17 = 0xE700000000000000;
    v18 = 0x64696C61766E49;
    v19 = 0x427373616C43;
    if (v12 != 2)
    {
      v19 = 0x417373616C43;
    }

    if (v12)
    {
      v18 = 0x437373616C43;
      v17 = 0xE600000000000000;
    }

    if (v12 <= 1u)
    {
      v20._countAndFlagsBits = v18;
    }

    else
    {
      v20._countAndFlagsBits = v19;
    }

    if (v12 <= 1u)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    v20._object = v21;
    sub_100013810(v20);

    v22 = sub_10000FB1C(v206, v207, &v205);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Access level: %s", v15, 0xCu);
    sub_100005788(v16);
  }

  sub_1000136E0();
  v24 = v23;
  if (v23)
  {
  }

  v25 = sub_100013700();
  v26 = sub_1000138E0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v205 = v28;
    v206 = 0;
    *v27 = 136315138;
    v207 = 0xE000000000000000;
    sub_100013990(22);

    v206 = 0xD000000000000014;
    v207 = 0x80000001000148E0;
    if (v24)
    {
      v29._countAndFlagsBits = 0x63696D616E7944;
    }

    else
    {
      v29._countAndFlagsBits = 0x636974617453;
    }

    if (v24)
    {
      v30 = 0xE700000000000000;
    }

    else
    {
      v30 = 0xE600000000000000;
    }

    v29._object = v30;
    sub_100013810(v29);

    v31 = sub_10000FB1C(v206, v207, &v205);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "MLHost Task Type: %s", v27, 0xCu);
    sub_100005788(v28);
  }

  if (!v24)
  {
    v42 = objc_allocWithZone(sub_1000136A0());
LABEL_34:
    v47 = sub_100013690();
LABEL_54:

    v93 = *(v0 + 8);

    v93(v47);
    return;
  }

  sub_1000136E0();
  if (!v32)
  {
    v43 = sub_100013700();
    v44 = sub_1000138F0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "No task folder from task", v45, 2u);
    }

    v46 = objc_allocWithZone(sub_1000136A0());
    goto LABEL_34;
  }

  v33 = *(v0 + 664);
  v34 = *(v0 + 648);
  v35 = *(v0 + 640);
  v36 = *(v0 + 632);
  v37 = *(v0 + 624);
  v38 = *(v0 + 616);
  sub_100013590();

  *(v0 + 464) = 0x6574656D61726170;
  *(v0 + 472) = 0xEF6E6F736A2E7372;
  (*(v37 + 104))(v36, enum case for URL.DirectoryHint.notDirectory(_:), v38);
  sub_100005450();
  sub_1000135C0();
  (*(v37 + 8))(v36, v38);
  v39 = *(v34 + 8);
  *(v0 + 688) = v39;
  *(v0 + 696) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v33, v35);
  v40 = sub_1000135F0();
  *(v0 + 704) = v40;
  *(v0 + 712) = v41;
  v48 = v41;
  v49 = objc_opt_self();
  isa = sub_100013630().super.isa;
  *(v0 + 560) = 0;
  v51 = [v49 JSONObjectWithData:isa options:16 error:v0 + 560];

  v52 = *(v0 + 560);
  if (!v51)
  {
    v86 = v52;
    sub_100013560();

    swift_willThrow();

LABEL_51:
    v87 = sub_100013700();
    v88 = sub_1000138F0();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Error when deserializing JSON", v89, 2u);
    }

    goto LABEL_53;
  }

  v201 = v49;
  v53 = v52;
  sub_100013940();
  swift_unknownObjectRelease();
  sub_1000054F8(&qword_10001C650, &unk_1000147E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_51;
  }

  v54 = *(v0 + 544);

  v55 = sub_100013700();
  v56 = sub_1000138E0();

  v203 = v40;
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v206 = v199;
    *v57 = 136315138;
    v58 = sub_1000137A0();
    v60 = v39;
    v61 = sub_10000FB1C(v58, v59, &v206);

    *(v57 + 4) = v61;
    v39 = v60;
    _os_log_impl(&_mh_execute_header, v55, v56, "Config JSON: %s", v57, 0xCu);
    sub_100005788(v199);
  }

  if (!*(v54 + 16) || (v62 = sub_1000100C4(0x617261506B736174, 0xEE0073726574656DLL), (v63 & 1) == 0))
  {

LABEL_58:
    v87 = sub_100013700();
    v94 = sub_1000138F0();
    if (os_log_type_enabled(v87, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v87, v94, "No task parameters string inside config", v95, 2u);
    }

LABEL_53:
    v90 = *(v0 + 672);
    v91 = *(v0 + 640);

    v92 = objc_allocWithZone(sub_1000136A0());
    v47 = sub_100013690();
    sub_1000054A4(v40, v48);
    v39(v90, v91);
    goto LABEL_54;
  }

  sub_100005540(*(v54 + 56) + 32 * v62, v0 + 240);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_58;
  }

  v64 = (v0 + 536);
  v65 = *(v0 + 496);
  v66 = *(v0 + 504);

  v67 = sub_100013700();
  v68 = sub_1000138E0();

  v204 = v39;
  v198 = v48;
  if (os_log_type_enabled(v67, v68))
  {
    v69 = v65;
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v206 = v71;
    *v70 = 136315138;
    *(v70 + 4) = sub_10000FB1C(v69, v66, &v206);
    _os_log_impl(&_mh_execute_header, v67, v68, "Task Parameters JSON-String: %s", v70, 0xCu);
    sub_100005788(v71);

    v65 = v69;
  }

  v72 = sub_100001540(v65, v66);
  v74 = v73;
  v75 = sub_100013630().super.isa;
  sub_1000054A4(v72, v74);
  *v64 = 0;
  v76 = [v201 JSONObjectWithData:v75 options:16 error:v0 + 536];

  v77 = *v64;
  if (!v76)
  {
    v96 = v77;
    sub_100013560();

    swift_willThrow();

LABEL_62:
    v97 = sub_100013700();
    v98 = sub_1000138F0();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "Task parameters string not a JSON string", v99, 2u);
    }

    goto LABEL_64;
  }

  v78 = (v0 + 528);
  v79 = v77;
  sub_100013940();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_62;
  }

  v80 = *v78;
  if (*(*v78 + 16) && (v81 = sub_1000100C4(0x656D69745F646E65, 0xE800000000000000), (v82 & 1) != 0) && (sub_100005540(*(v80 + 56) + 32 * v81, v0 + 400), sub_1000055AC(), (swift_dynamicCast() & 1) != 0))
  {
    v83 = *(v0 + 576);
    [v83 doubleValue];
    v85 = v84;
  }

  else
  {
    v103 = *(v0 + 608);
    v104 = *(v0 + 600);
    v105 = *(v0 + 592);
    sub_100013640();
    sub_100013650();
    v85 = v106;
    (*(v104 + 8))(v103, v105);
  }

  v107 = *(v0 + 608);
  v108 = *(v0 + 600);
  v109 = *(v0 + 592);
  sub_100013660();
  sub_100013650();
  v111 = v110;
  (*(v108 + 8))(v107, v109);
  if (v111 > v85)
  {

    v97 = sub_100013700();
    v112 = sub_1000138F0();
    if (os_log_type_enabled(v97, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v97, v112, "Task is already finished", v113, 2u);
    }

LABEL_64:
    v100 = *(v0 + 672);
    v101 = *(v0 + 640);

    v102 = objc_allocWithZone(sub_1000136A0());
    v47 = sub_100013690();
    sub_1000054A4(v203, v198);
    v204(v100, v101);
    goto LABEL_54;
  }

  v114 = v80;
  v115 = 0;
  v189 = (v0 + 552);
  v190 = (v0 + 568);
  v191 = v114;
  v117 = v114 + 64;
  v116 = *(v114 + 64);
  v118 = -1 << *(v117 - 32);
  if (-v118 < 64)
  {
    v119 = ~(-1 << -v118);
  }

  else
  {
    v119 = -1;
  }

  v120 = v119 & v116;
  v121 = (63 - v118) >> 6;
  v122 = &_swiftEmptyArrayStorage;
  v188 = 0xEA00000000006E6FLL;
  v187 = 0x69746375646F7270;
  v123 = v198;
  v194 = v121;
  v200 = v117;
  while (1)
  {
LABEL_76:
    v202 = v122;
    if (v120)
    {
      v124 = v115;
      v125 = v203;
      goto LABEL_86;
    }

    if (v121 <= v115 + 1)
    {
      v126 = v115 + 1;
    }

    else
    {
      v126 = v121;
    }

    v127 = v126 - 1;
    v125 = v203;
    do
    {
      v124 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      if (v124 >= v121)
      {
        v120 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        v115 = v127;
        *(v0 + 64) = 0u;
        goto LABEL_87;
      }

      v120 = *(v117 + 8 * v124);
      ++v115;
    }

    while (!v120);
    v115 = v124;
LABEL_86:
    v128 = __clz(__rbit64(v120));
    v120 &= v120 - 1;
    v129 = v128 | (v124 << 6);
    v130 = (*(v191 + 48) + 16 * v129);
    v132 = *v130;
    v131 = v130[1];
    sub_100005540(*(v191 + 56) + 32 * v129, v0 + 432);
    *(v0 + 64) = v132;
    *(v0 + 72) = v131;
    sub_10000559C((v0 + 432), (v0 + 80));

LABEL_87:
    v133 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v133;
    *(v0 + 48) = *(v0 + 96);
    v134 = *(v0 + 24);
    if (!v134)
    {

      if (*(v202 + 2))
      {
        objc_allocWithZone(type metadata accessor for FedStatsPluginMLHostClient());
        v175 = swift_task_alloc();
        *(v0 + 720) = v175;
        *v175 = v0;
        v175[1] = sub_100004E14;

        sub_10000A268(2, v202, v187, v188);
        return;
      }

      v176 = sub_100013700();
      v177 = sub_1000138E0();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&_mh_execute_header, v176, v177, "No experiments to run", v178, 2u);
      }

      v179 = *(v0 + 672);
      v180 = *(v0 + 640);

      v181 = objc_allocWithZone(sub_1000136A0());
      v47 = sub_100013690();
      sub_1000054A4(v125, v123);
      goto LABEL_156;
    }

    v135 = *(v0 + 16);
    sub_10000559C((v0 + 32), (v0 + 112));
    if (0x8000000100014860 == v134 && v135 == 0xD000000000000015 || (sub_100013A60() & 1) != 0)
    {

      sub_100005540(v0 + 112, v0 + 144);
      sub_1000054F8(&unk_10001C670, &unk_1000142F0);
      swift_dynamicCast();
      v136 = *v190;
      v137 = *(*v190 + 16);
      v122 = v202;
      v138 = *(v202 + 2);
      v139 = v138 + v137;
      if (!__OFADD__(v138, v137))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v139 > *(v202 + 3) >> 1)
        {
          if (v138 <= v139)
          {
            v141 = v138 + v137;
          }

          else
          {
            v141 = v138;
          }

          v122 = sub_10000204C(isUniquelyReferenced_nonNull_native, v141, 1, v202);
        }

        if (*(v136 + 16))
        {
          if ((*(v122 + 3) >> 1) - *(v122 + 2) >= v137)
          {
            swift_arrayInitWithCopy();

            v117 = v200;
            if (v137)
            {
              v142 = *(v122 + 2);
              v143 = __OFADD__(v142, v137);
              v144 = v142 + v137;
              if (!v143)
              {
                *(v122 + 2) = v144;
                goto LABEL_75;
              }

LABEL_162:
              __break(1u);
            }

LABEL_75:
            sub_100005788((v0 + 112));
            v121 = v194;
            continue;
          }

LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        v117 = v200;
        if (!v137)
        {
          goto LABEL_75;
        }

LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    if (0x8000000100014880 == v134 && v135 == 0xD000000000000012 || (sub_100013A60() & 1) != 0)
    {
      break;
    }

    if (0x80000001000148A0 == v134 && v135 == 0xD000000000000010 || (sub_100013A60() & 1) != 0)
    {

      sub_100005540(v0 + 112, v0 + 368);
      v163 = sub_100013700();
      v164 = sub_1000138E0();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        loga = swift_slowAlloc();
        v206 = loga;
        *v165 = 136315138;
        sub_10000559C((v0 + 368), (v0 + 272));
        swift_dynamicCast();
        v166 = v123;
        v167 = sub_10000FB1C(*(v0 + 512), *(v0 + 520), &v206);

        *(v165 + 4) = v167;
        v123 = v166;
        _os_log_impl(&_mh_execute_header, v163, v164, "CK container environment set to %s", v165, 0xCu);
        sub_100005788(loga);
      }

      else
      {

        sub_100005788((v0 + 368));
      }

      v117 = v200;
      v122 = v202;
      sub_10000559C((v0 + 112), (v0 + 304));
      swift_dynamicCast();
      v187 = *(v0 + 480);
      v188 = *(v0 + 488);
      v121 = v194;
    }

    else
    {

      v168 = sub_100013700();
      v169 = sub_1000138F0();

      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        logb = v168;
        v171 = swift_slowAlloc();
        v206 = v171;
        *v170 = 136315138;
        v172 = sub_10000FB1C(v135, v134, &v206);
        v173 = v123;
        v174 = v172;

        *(v170 + 4) = v174;
        v123 = v173;
        _os_log_impl(&_mh_execute_header, logb, v169, "Ignore invalid parameter key in task parameters: %s", v170, 0xCu);
        sub_100005788(v171);
      }

      else
      {
      }

      sub_100005788((v0 + 112));
      v117 = v200;
      v122 = v202;
      v121 = v194;
    }
  }

  sub_100005540(v0 + 112, v0 + 208);
  sub_1000054F8(&qword_10001C668, &qword_1000142E8);
  if (!swift_dynamicCast())
  {

    v182 = sub_100013700();
    v183 = sub_1000138F0();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      *v184 = 0;
      _os_log_impl(&_mh_execute_header, v182, v183, "Experiment records must be a dictionary of strings to list of strings", v184, 2u);
    }

    v179 = *(v0 + 672);
    v180 = *(v0 + 640);

    v185 = objc_allocWithZone(sub_1000136A0());
    v47 = sub_100013690();

    sub_1000054A4(v125, v123);
    sub_100005788((v0 + 112));
LABEL_156:
    v204(v179, v180);
    goto LABEL_54;
  }

  v145 = 0;
  v146 = &(*v189)[8];
  log = *v189;
  v147 = -1 << LOBYTE((*v189)[4].isa);
  if (-v147 < 64)
  {
    v148 = ~(-1 << -v147);
  }

  else
  {
    v148 = -1;
  }

  v149 = v148 & (*v189)[8].isa;
  v150 = (63 - v147) >> 6;
  v117 = v200;
  v192 = v150;
  v193 = &(*v189)[8];
  while (1)
  {
    v151 = v145;
    if (!v149)
    {
      goto LABEL_113;
    }

    while (1)
    {
      v145 = v151;
LABEL_116:
      v152 = __clz(__rbit64(v149));
      v149 &= v149 - 1;
      v153 = *(log[7].isa + (v152 | (v145 << 6)));
      v154 = objc_opt_self();

      v155 = sub_1000137D0();

      v156 = [v154 isConsentedForUseCase:v155];

      if (v156)
      {
        break;
      }

      v151 = v145;
      v123 = v198;
      v117 = v200;
      v150 = v192;
      v146 = v193;
      if (!v149)
      {
        while (1)
        {
LABEL_113:
          v145 = v151 + 1;
          if (__OFADD__(v151, 1))
          {
            goto LABEL_158;
          }

          if (v145 >= v150)
          {
            break;
          }

          v149 = *(v146 + 8 * v145);
          ++v151;
          if (v149)
          {
            goto LABEL_116;
          }
        }

        sub_100005788((v0 + 112));

        v122 = v202;
        v121 = v194;
        goto LABEL_76;
      }
    }

    v157 = *(v202 + 2);
    v186 = *(v153 + 16);
    v158 = v157 + v186;
    if (__OFADD__(v157, v186))
    {
      break;
    }

    v159 = swift_isUniquelyReferenced_nonNull_native();
    if (!v159 || v158 > *(v202 + 3) >> 1)
    {
      if (v157 <= v158)
      {
        v160 = v157 + v186;
      }

      else
      {
        v160 = v157;
      }

      v202 = sub_10000204C(v159, v160, 1, v202);
    }

    v123 = v198;
    if (*(v153 + 16))
    {
      if ((*(v202 + 3) >> 1) - *(v202 + 2) < v186)
      {
        goto LABEL_165;
      }

      swift_arrayInitWithCopy();

      v117 = v200;
      v150 = v192;
      v146 = v193;
      if (v186)
      {
        v161 = *(v202 + 2);
        v143 = __OFADD__(v161, v186);
        v162 = v161 + v186;
        if (v143)
        {
          goto LABEL_166;
        }

        *(v202 + 2) = v162;
      }
    }

    else
    {

      v117 = v200;
      v150 = v192;
      v146 = v193;
      if (v186)
      {
        goto LABEL_164;
      }
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
}

uint64_t sub_100004E14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 728) = a1;
  *(v3 + 736) = v1;

  if (v1)
  {
    v4 = sub_1000051FC;
  }

  else
  {
    v4 = sub_100004F58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100004F58()
{
  v21 = v0;
  v1 = [objc_opt_self() runAllRecipesWithAssetProvider:v0[91]];
  sub_1000055AC();
  sub_100013790();

  v2 = sub_100013700();
  v3 = sub_1000138E0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    v6 = sub_1000137A0();
    v8 = v7;

    v9 = sub_10000FB1C(v6, v8, &v20);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Recorded the following record counts in experiments: %s", v4, 0xCu);
    sub_100005788(v5);
  }

  else
  {
  }

  v10 = v0[91];
  v11 = v0[89];
  v12 = v0[88];
  v13 = v0[86];
  v14 = v0[84];
  v15 = v0[80];
  v16 = objc_allocWithZone(sub_1000136A0());
  v17 = sub_100013690();
  sub_1000054A4(v12, v11);

  v13(v14, v15);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_1000051FC()
{
  swift_errorRetain();
  v1 = sub_100013700();
  v2 = sub_1000138F0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Cannot create MLHost client: %@", v3, 0xCu);
    sub_1000055FC(v4, &qword_10001C658, &qword_1000142E0);
  }

  v6 = v0[89];
  v7 = v0[88];
  v8 = v0[86];
  v9 = v0[84];
  v10 = v0[80];

  v11 = objc_allocWithZone(sub_1000136A0());
  v12 = sub_100013690();
  sub_1000054A4(v7, v6);

  v8(v9, v10);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_100005418(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100005450()
{
  result = qword_10001C648;
  if (!qword_10001C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C648);
  }

  return result;
}

uint64_t sub_1000054A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000054F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005540(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000559C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000055AC()
{
  result = qword_10001C660;
  if (!qword_10001C660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C660);
  }

  return result;
}

uint64_t sub_1000055FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000054F8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_10000565C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100002658(sub_1000057D4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1000056C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100005718(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000054A4(result, a2);
  }

  return result;
}

uint64_t sub_10000572C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100005744(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005788(void *a1)
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

uint64_t sub_1000057F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054F8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000585C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for FedStatsPluginTaskType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FedStatsPluginTaskType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100005A34()
{
  v0 = sub_100013720();
  sub_100006190(v0, qword_10001D2F0);
  sub_100005418(v0, qword_10001D2F0);
  return sub_100013710();
}

void sub_100005AB4()
{
  sub_100013990(31);

  has_internal_content = os_variant_has_internal_content();
  v1 = has_internal_content == 0;
  if (has_internal_content)
  {
    v2._countAndFlagsBits = 0x7972726163;
  }

  else
  {
    v2._countAndFlagsBits = 19783;
  }

  if (v1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_100013810(v2);

  v4._countAndFlagsBits = 0x6E6961746E6F632ELL;
  v4._object = 0xEA00000000007265;
  sub_100013810(v4);
  qword_10001D308 = 0xD000000000000013;
  unk_10001D310 = 0x8000000100014920;
}

void sub_100005B84()
{
  v0 = [objc_allocWithZone(CKOperationGroup) init];
  v1 = sub_1000137D0();
  [v0 setName:v1];

  qword_10001D318 = v0;
}

unint64_t sub_100005BF8(char a1)
{
  sub_100013990(22);

  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 0x636974617453;
    }

    else
    {
      v2._countAndFlagsBits = 0x63696D616E7944;
    }

    if (a1 == 1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v2._countAndFlagsBits = 0x64696C61766E49;
  }

  v2._object = v3;
  sub_100013810(v2);

  return 0xD000000000000014;
}

uint64_t sub_100005CC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x636974617453;
  if (v2 != 1)
  {
    v4 = 0x63696D616E7944;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64696C61766E49;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x636974617453;
  if (*a2 != 1)
  {
    v8 = 0x63696D616E7944;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696C61766E49;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100013A60();
  }

  return v11 & 1;
}

Swift::Int sub_100005DBC()
{
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_100005E5C(uint64_t a1)
{
  sub_100013800();
}

Swift::Int sub_100005EE8(uint64_t a1)
{
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

unint64_t sub_100005F84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006144(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100005FB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x636974617453;
  if (v2 != 1)
  {
    v5 = 0x63696D616E7944;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696C61766E49;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10000601C()
{
  result = qword_10001C790;
  if (!qword_10001C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C790);
  }

  return result;
}

uint64_t sub_100006070(uint64_t a1, uint64_t a2)
{
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x8000000100014940;
  if (sub_100013870(v4))
  {

    return 1;
  }

  else
  {
    v5._object = 0x8000000100014970;
    v5._countAndFlagsBits = 0xD000000000000030;
    if (sub_100013870(v5))
    {

      return 2;
    }

    else
    {
      v6._object = 0x80000001000149B0;
      v6._countAndFlagsBits = 0xD000000000000030;
      v3 = sub_100013870(v6);

      if (v3)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

unint64_t sub_100006144(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018960;
  v6._object = a2;
  v4 = sub_100013A40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t *sub_100006190(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100006208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100013670();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000062DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100013670();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FedStatsPluginCKExperimentRecord(uint64_t a1)
{
  result = qword_10001C808;
  if (!qword_10001C808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000063E4(uint64_t a1)
{
  result = sub_100013670();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FedStatsPluginPopulation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FedStatsPluginPopulation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000660C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64696C61766E49;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1684366675;
    }

    else
    {
      v4 = 19783;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7972726143;
    }

    else
    {
      v4 = 0x64696C61766E49;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1684366675;
  if (a2 != 2)
  {
    v8 = 19783;
    v7 = 0xE200000000000000;
  }

  if (a2)
  {
    v2 = 0x7972726143;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100013A60();
  }

  return v11 & 1;
}

unint64_t sub_100006720(unsigned __int8 a1)
{
  sub_100013990(27);

  v2 = 0xE700000000000000;
  v3 = 0x64696C61766E49;
  v4 = 0xE400000000000000;
  v5 = 1684366675;
  if (a1 != 2)
  {
    v5 = 19783;
    v4 = 0xE200000000000000;
  }

  if (a1)
  {
    v3 = 0x7972726143;
    v2 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    v6._countAndFlagsBits = v3;
  }

  else
  {
    v6._countAndFlagsBits = v5;
  }

  if (a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v6._object = v7;
  sub_100013810(v6);

  return 0xD000000000000019;
}

Swift::Int sub_100006804()
{
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_1000068B0(uint64_t a1)
{
  sub_100013800();
}

Swift::Int sub_100006948(uint64_t a1)
{
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

unint64_t sub_1000069F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100008398(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100006A20(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x64696C61766E49;
  v4 = 0xE400000000000000;
  v5 = 1684366675;
  if (*v1 != 2)
  {
    v5 = 19783;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 0x7972726143;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100006A90(char a1)
{
  sub_100013990(23);

  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 5459817;
    }

    else
    {
      v2._countAndFlagsBits = 0x534F63616DLL;
    }

    if (a1 == 1)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v2._countAndFlagsBits = 0x64696C61766E49;
  }

  v2._object = v3;
  sub_100013810(v2);

  return 0xD000000000000015;
}

uint64_t sub_100006B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  if (v2 != 1)
  {
    v4 = 0x534F63616DLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64696C61766E49;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 5459817;
  if (*a2 != 1)
  {
    v8 = 0x534F63616DLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696C61766E49;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100013A60();
  }

  return v11 & 1;
}

Swift::Int sub_100006C3C()
{
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_100006CD4(uint64_t a1)
{
  sub_100013800();
}

Swift::Int sub_100006D58(uint64_t a1)
{
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

unint64_t sub_100006DEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000834C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100006E1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 5459817;
  if (v2 != 1)
  {
    v5 = 0x534F63616DLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696C61766E49;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100006E7C()
{
  result = qword_10001C868;
  if (!qword_10001C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C868);
  }

  return result;
}

unint64_t sub_100006ED4()
{
  result = qword_10001C870;
  if (!qword_10001C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C870);
  }

  return result;
}

unint64_t sub_100006F28(char a1)
{
  sub_100013990(46);

  if (a1)
  {
    v2._countAndFlagsBits = 0x6E49657069636552;
    if (a1 == 1)
    {
      v3 = 0xED00007365747942;
    }

    else
    {
      v3 = 0xEE0064726F636552;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v2._countAndFlagsBits = 0x64696C61766E49;
  }

  v2._object = v3;
  sub_100013810(v2);

  return 0xD00000000000002CLL;
}

uint64_t sub_10000700C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xED00007365747942;
  if (v2 != 1)
  {
    v3 = 0xEE0064726F636552;
  }

  if (*a1)
  {
    v4 = 0x6E49657069636552;
  }

  else
  {
    v4 = 0x64696C61766E49;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0xED00007365747942;
  if (*a2 != 1)
  {
    v6 = 0xEE0064726F636552;
  }

  if (*a2)
  {
    v7 = 0x6E49657069636552;
  }

  else
  {
    v7 = 0x64696C61766E49;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100013A60();
  }

  return v9 & 1;
}

Swift::Int sub_100007108()
{
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_1000071C4(uint64_t a1)
{
  sub_100013800();
}

Swift::Int sub_10000726C(uint64_t a1)
{
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

unint64_t sub_100007324@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000083E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100007354(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED00007365747942;
  if (v2 != 1)
  {
    v4 = 0xEE0064726F636552;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x6E49657069636552;
  }

  else
  {
    v6 = 0x64696C61766E49;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1000073D8()
{
  result = qword_10001C878;
  if (!qword_10001C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C878);
  }

  return result;
}

void sub_10000742C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = sub_1000054F8(&qword_10001C880, &unk_100014730);
  v4 = __chkstk_darwin(v3 - 8);
  v117 = &v103[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v103[-v6];
  v8 = sub_100013670();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v116 = &v103[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v103[-v13];
  __chkstk_darwin(v12);
  v16 = &v103[-v15];
  if (sub_100013920() == aExperiment[0] && v17 == aExperiment[1])
  {
  }

  else
  {
    v18 = sub_100013A60();

    if ((v18 & 1) == 0)
    {
      v39 = objc_opt_self();
      v119._countAndFlagsBits = 0;
      v119._object = 0xE000000000000000;
      sub_100013990(41);

      v119._countAndFlagsBits = 0xD00000000000001FLL;
      v119._object = 0x8000000100014A80;
      v40 = aExperiment[0];
      v41 = aExperiment[1];

      v121._countAndFlagsBits = v40;
      v121._object = v41;
      sub_100013810(v121);

      v122._countAndFlagsBits = 0x20746F67202CLL;
      v122._object = 0xE600000000000000;
      sub_100013810(v122);
      v123._countAndFlagsBits = sub_100013920();
      sub_100013810(v123);

      v42 = sub_1000137D0();

      [v39 errorWithCode:300 description:v42];

      swift_willThrow();
      return;
    }
  }

  v118 = a1;
  v19 = sub_100013930();
  if (!v19)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_12;
  }

  v114 = v16;
  v119._countAndFlagsBits = v19;
  v20 = sub_1000054F8(&qword_10001C888, &qword_100014740);
  v21 = swift_dynamicCast();
  v22 = *(v9 + 56);
  v22(v7, v21 ^ 1u, 1, v8);
  v23 = v9;
  v24 = *(v9 + 48);
  if (v24(v7, 1, v8) == 1)
  {
LABEL_12:
    sub_100008430(v7);
    v37 = objc_opt_self();
    v38 = sub_1000137D0();
    [v37 errorWithCode:300 description:v38];

    swift_willThrow();
    return;
  }

  v112 = v20;
  v113 = v23;
  v25 = v7;
  v26 = *(v23 + 32);
  (v26)(v114, v25, v8);
  v27 = sub_100013930();
  if (!v27)
  {
    v28 = v117;
    v22(v117, 1, 1, v8);
    v31 = v8;
    goto LABEL_15;
  }

  v119._countAndFlagsBits = v27;
  v28 = v117;
  v29 = swift_dynamicCast();
  v22(v28, v29 ^ 1u, 1, v8);
  v30 = v24(v28, 1, v8);
  v31 = v8;
  if (v30 == 1)
  {
LABEL_15:
    sub_100008430(v28);
    v43 = objc_opt_self();
    v44 = sub_1000137D0();
    [v43 errorWithCode:300 description:v44];

    swift_willThrow();
    (*(v113 + 8))(v114, v31);
    return;
  }

  (v26)(v14, v28, v8);
  v32 = v116;
  sub_100013660();
  sub_100008498();
  v33 = sub_1000137C0();
  v34 = *(v113 + 8);
  v34(v32, v31);
  v35 = v118;
  v36 = v114;
  if ((v33 & 1) != 0 || (v117 = v26, (v45 = sub_100013930()) == 0) || (v120 = v45, (swift_dynamicCast() & 1) == 0))
  {
    v64 = objc_opt_self();
    v65 = sub_1000137D0();
    [v64 errorWithCode:300 description:v65];

    swift_willThrow();
    v66 = v14;
LABEL_34:
    v34(v66, v31);
    v67 = v36;
    v68 = v31;
LABEL_35:
    v34(v67, v68);
    return;
  }

  v116 = v14;
  countAndFlagsBits = v119._countAndFlagsBits;
  object = v119._object;
  v48 = sub_100013930();
  if (!v48)
  {
    goto LABEL_38;
  }

  v120 = v48;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v49 = v119._object;
  v113 = v119._countAndFlagsBits;
  v50 = sub_100013930();
  if (!v50 || (v120 = v50, (swift_dynamicCast() & 1) == 0) || (v110 = countAndFlagsBits, v111 = object, v51._rawValue = &off_100018878, v52 = sub_100013A40(v51, v119), , v52 >= 3))
  {

LABEL_38:

    v69 = objc_opt_self();
    v70 = sub_1000137D0();
    v71 = [v69 errorWithCode:300 description:v70];
LABEL_39:
    v71;

    swift_willThrow();
    v66 = v116;
    goto LABEL_34;
  }

  v53 = v52;
  v54 = v49;
  v55 = sub_100013930();
  if (!v55 || (v120 = v55, (swift_dynamicCast() & 1) == 0))
  {

    v72 = objc_opt_self();
    v70 = sub_1000137D0();
    v71 = [v72 errorWithCode:300 description:v70];
    goto LABEL_39;
  }

  v109 = v119;
  v56 = sub_100013930();
  if (!v56 || (v120 = v56, (swift_dynamicCast() & 1) == 0))
  {

    v73 = objc_opt_self();
    v70 = sub_1000137D0();
    v71 = [v73 errorWithCode:300 description:v70];
    goto LABEL_39;
  }

  v57 = v31;
  v58 = v119._countAndFlagsBits;
  v108 = v119._object;
  v59 = sub_100013930();
  if (!v59 || (v120 = v59, (swift_dynamicCast() & 1) == 0))
  {

    v74 = objc_opt_self();
    v62 = sub_1000137D0();
    v63 = [v74 errorWithCode:300 description:v62];
    goto LABEL_44;
  }

  v107 = v119;
  v60 = sub_100013930();
  if (!v60 || (v120 = v60, (swift_dynamicCast() & 1) == 0) || (v104 = sub_100008398(v119._countAndFlagsBits, v119._object), v104 == 4))
  {

    v61 = objc_opt_self();
    v62 = sub_1000137D0();
    v63 = [v61 errorWithCode:300 description:v62];
LABEL_44:
    v63;

    swift_willThrow();
LABEL_45:
    v34(v116, v57);
    v67 = v114;
    v68 = v57;
    goto LABEL_35;
  }

  v75 = sub_100013930();
  if (v75 && (v120 = v75, (swift_dynamicCast() & 1) != 0))
  {
    v76 = v119._object;
    v105 = v119._countAndFlagsBits;
  }

  else
  {
    v105 = 0;
    v76 = 0xC000000000000000;
  }

  v106 = v76;
  v77 = sub_100013930();
  if (v77 && (v120 = v77, (swift_dynamicCast() & 1) != 0))
  {
    v78 = v119._object;
    v112 = v119._countAndFlagsBits;
  }

  else
  {
    v112 = 0;
    v78 = 0xE000000000000000;
  }

  v79 = v106 >> 62;
  if ((v106 >> 62) > 1)
  {
    if (v79 != 2)
    {
      v81 = 0;
      v80 = 0;
      if ((v78 & 0x2000000000000000) != 0)
      {
        goto LABEL_57;
      }

      goto LABEL_62;
    }

    v80 = *(v105 + 16);
    v81 = *(v105 + 24);
    goto LABEL_61;
  }

  if (v79)
  {
    v80 = v105;
    v81 = v105 >> 32;
LABEL_61:
    if ((v78 & 0x2000000000000000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_62;
  }

  v80 = 0;
  v81 = BYTE6(v106);
  if ((v78 & 0x2000000000000000) != 0)
  {
LABEL_57:
    v82 = HIBYTE(v78) & 0xF;
    goto LABEL_63;
  }

LABEL_62:
  v82 = v112 & 0xFFFFFFFFFFFFLL;
LABEL_63:
  if ((v82 != 0) != (v80 == v81))
  {

    v83 = objc_opt_self();
    v84 = sub_1000137D0();
    [v83 errorWithCode:300 description:v84];

    swift_willThrow();
    sub_1000054A4(v105, v106);
    goto LABEL_45;
  }

  if (v79 > 1)
  {
    if (v79 != 2)
    {
      goto LABEL_75;
    }

    v85 = *(v105 + 16);
    v86 = *(v105 + 24);
  }

  else
  {
    if (!v79)
    {
      if ((v106 & 0xFF000000000000) == 0)
      {
        goto LABEL_75;
      }

LABEL_76:
      v87 = 1;
      goto LABEL_77;
    }

    v85 = v105;
    v86 = v105 >> 32;
  }

  if (v85 != v86)
  {
    goto LABEL_76;
  }

LABEL_75:
  v87 = 2;
LABEL_77:
  LODWORD(v118) = v87;
  v88 = v115;
  v89 = v117;
  (v117)(v115, v114, v57);
  v90 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  v89(v88 + v90[5], v116, v57);
  v91 = (v88 + v90[6]);
  v92 = v111;
  *v91 = v110;
  v91[1] = v92;
  v93 = (v88 + v90[7]);
  *v93 = v113;
  v93[1] = v54;
  *(v88 + v90[8]) = v53;
  v94 = (v88 + v90[10]);
  v95 = v109._object;
  *v94 = v109._countAndFlagsBits;
  v94[1] = v95;
  v96 = (v88 + v90[9]);
  v97 = v108;
  *v96 = v58;
  v96[1] = v97;
  v98 = (v88 + v90[11]);
  v99 = v107._object;
  *v98 = v107._countAndFlagsBits;
  v98[1] = v99;
  *(v88 + v90[12]) = v104;
  *(v88 + v90[13]) = v118;
  v100 = (v88 + v90[14]);
  v101 = v106;
  *v100 = v105;
  v100[1] = v101;
  v102 = (v88 + v90[15]);
  *v102 = v112;
  v102[1] = v78;
}

unint64_t sub_10000834C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018878;
  v6._object = a2;
  v4 = sub_100013A40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100008398(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000188E0;
  v6._object = a2;
  v4 = sub_100013A40(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000083E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000189C8;
  v6._object = a2;
  v4 = sub_100013A40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100008430(uint64_t a1)
{
  v2 = sub_1000054F8(&qword_10001C880, &unk_100014730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008498()
{
  result = qword_10001C890;
  if (!qword_10001C890)
  {
    sub_100013670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C890);
  }

  return result;
}

uint64_t sub_100008500(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100008520, 0, 0);
}

uint64_t sub_100008520()
{
  v29 = v0;
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v28 = &_swiftEmptyArrayStorage;
    sub_1000139E0();
    v4 = v1 + 40;
    do
    {
      v5 = objc_allocWithZone(CKRecordID);

      v6 = sub_1000137D0();

      [v5 initWithRecordName:v6];

      sub_1000139C0();
      sub_1000139F0();
      sub_100013A00();
      sub_1000139D0();
      v4 += 16;
      --v2;
    }

    while (v2);
    v3 = v28;
  }

  v0[6] = v3;
  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v7 = sub_100013720();
  sub_100005418(v7, qword_10001D2F0);

  v8 = sub_100013700();
  v9 = sub_1000138E0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    v0[3] = v10;
    sub_1000054F8(&unk_10001C670, &unk_1000142F0);
    sub_1000132AC();
    v13 = sub_1000137B0();
    v15 = sub_10000FB1C(v13, v14, &v28);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Retrieving ['%s'] from CK Container", v11, 0xCu);
    sub_100005788(v12);
  }

  v21 = v0[5];
  v22 = *(v21 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer);
  if (v22)
  {
    v0[7] = [v22 publicCloudDatabase];
    v23 = *(v21 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig);
    if (qword_10001C630 != -1)
    {
      swift_once();
    }

    v24 = qword_10001D318;
    v25 = swift_task_alloc();
    v0[8] = v25;
    *(v25 + 16) = v3;
    v26 = swift_task_alloc();
    v0[9] = v26;
    v20 = sub_1000054F8(&unk_10001C9A8, &unk_100014800);
    *v26 = v0;
    v26[1] = sub_1000088AC;
    v18 = &unk_100014828;
    v22 = v0 + 2;
    v16 = v23;
    v17 = v24;
    v19 = v25;
  }

  else
  {
    __break(1u);
  }

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v22, v16, v17, v18, v19, v20);
}

uint64_t sub_1000088AC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1000134C8;
  }

  else
  {
    v4 = *(v2 + 56);

    v3 = sub_1000089E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1000089E0()
{
  v20 = v0;
  v1 = v0[2];
  v17 = &_swiftEmptyDictionarySingleton;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[10];

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = *(*(v1 + 48) + 8 * v9);
      v11 = *(v1 + 56) + 16 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      v18[0] = v10;
      v18[1] = v12;
      v19 = v13;
      v14 = v10;
      sub_100013294(v12, v13);
      sub_100008DA8(&v17, v18);
      if (v6)
      {
        break;
      }

      v4 &= v4 - 1;
      sub_1000132A0(v12, v13);
      v7 = v8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    sub_1000132A0(v12, v13);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    v15 = v17;
    v16 = v0[1];

    v16(v15);
  }
}

uint64_t sub_100008BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_100008C5C;

  return CKDatabase.records(for:desiredKeys:)(a3, 0);
}

uint64_t sub_100008C5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_1000134C4, 0, 0);
  }
}

void sub_100008DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 16) & 1) == 0)
  {
    v32 = v9;
    v12 = *(a2 + 8);
    sub_100013294(v12, 0);
    v13 = v12;
    sub_10000742C(v13, v11);
    if (v2)
    {
      if (qword_10001C620 != -1)
      {
        swift_once();
      }

      v14 = sub_100013720();
      sub_100005418(v14, qword_10001D2F0);
      sub_100013294(v12, 0);
      swift_errorRetain();
      v15 = sub_100013700();
      v16 = sub_1000138E0();
      sub_1000132A0(v12, 0);

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v32;
        *v17 = 136315394;
        v19 = [v13 recordID];
        v20 = [v19 recordName];

        v21 = sub_1000137E0();
        v23 = v22;

        v24 = sub_10000FB1C(v21, v23, &v33);

        *(v17 + 4) = v24;
        *(v17 + 12) = 2112;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 14) = v25;
        *v18 = v25;
        _os_log_impl(&_mh_execute_header, v15, v16, "Cannot create experiment record for record '%s', error: %@", v17, 0x16u);
        sub_1000055FC(v18, &qword_10001C658, &qword_1000142E0);

        sub_100005788(v32);

        sub_1000132A0(v12, 0);
      }

      else
      {

        sub_1000132A0(v12, 0);
      }
    }

    else
    {
      v26 = [v13 recordID];
      v27 = [v26 recordName];

      v28 = sub_1000137E0();
      v30 = v29;

      sub_10001013C(v11, v6);
      (*(v8 + 56))(v6, 0, 1, v32);
      sub_1000091A0(v6, v28, v30);
      sub_1000132A0(v12, 0);
      sub_1000101A0(v11);
    }
  }
}

uint64_t sub_1000091A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1000055FC(a1, &qword_10001C8A8, &qword_100014760);
    sub_1000102B4(a2, a3, v9);

    return sub_1000055FC(v9, &qword_10001C8A8, &qword_100014760);
  }

  else
  {
    sub_10000585C(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1000110F4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_100009360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000054F8(&qword_10001C9C0, &unk_100014810);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1000135D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1000055FC(a1, &qword_10001C9C0, &unk_100014810);
    sub_100010420(a2, a3, v9);

    return sub_1000055FC(v9, &qword_10001C9C0, &unk_100014810);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100011258(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_100009538(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100009558, 0, 0);
}

uint64_t sub_100009558()
{
  v29 = v0;
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v28 = &_swiftEmptyArrayStorage;
    sub_1000139E0();
    v4 = v1 + 40;
    do
    {
      v5 = objc_allocWithZone(CKRecordID);

      v6 = sub_1000137D0();

      [v5 initWithRecordName:v6];

      sub_1000139C0();
      sub_1000139F0();
      sub_100013A00();
      sub_1000139D0();
      v4 += 16;
      --v2;
    }

    while (v2);
    v3 = v28;
  }

  v0[6] = v3;
  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v7 = sub_100013720();
  sub_100005418(v7, qword_10001D2F0);

  v8 = sub_100013700();
  v9 = sub_1000138E0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    v0[3] = v10;
    sub_1000054F8(&unk_10001C670, &unk_1000142F0);
    sub_1000132AC();
    v13 = sub_1000137B0();
    v15 = sub_10000FB1C(v13, v14, &v28);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Retrieving ['%s'] from CK Container", v11, 0xCu);
    sub_100005788(v12);
  }

  v21 = v0[5];
  v22 = *(v21 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer);
  if (v22)
  {
    v0[7] = [v22 publicCloudDatabase];
    v23 = *(v21 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig);
    if (qword_10001C630 != -1)
    {
      swift_once();
    }

    v24 = qword_10001D318;
    v25 = swift_task_alloc();
    v0[8] = v25;
    *(v25 + 16) = v3;
    v26 = swift_task_alloc();
    v0[9] = v26;
    v20 = sub_1000054F8(&unk_10001C9A8, &unk_100014800);
    *v26 = v0;
    v26[1] = sub_1000098E4;
    v18 = &unk_1000147F8;
    v22 = v0 + 2;
    v16 = v23;
    v17 = v24;
    v19 = v25;
  }

  else
  {
    __break(1u);
  }

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v22, v16, v17, v18, v19, v20);
}

uint64_t sub_1000098E4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100009BEC;
  }

  else
  {
    v4 = *(v2 + 56);

    v3 = sub_100009A18;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100009A18()
{
  v20 = v0;
  v1 = v0[2];
  v17 = &_swiftEmptyDictionarySingleton;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[10];

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = *(*(v1 + 48) + 8 * v9);
      v11 = *(v1 + 56) + 16 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      v18[0] = v10;
      v18[1] = v12;
      v19 = v13;
      v14 = v10;
      sub_100013294(v12, v13);
      sub_100009E78(&v17, v18);
      if (v6)
      {
        break;
      }

      v4 &= v4 - 1;
      sub_1000132A0(v12, v13);
      v7 = v8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    sub_1000132A0(v12, v13);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    v15 = v17;
    v16 = v0[1];

    v16(v15);
  }
}

uint64_t sub_100009BEC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100009C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_100009D08;

  return CKDatabase.records(for:desiredKeys:)(a3, 0);
}

uint64_t sub_100009D08(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100009E54, 0, 0);
  }
}

void sub_100009E78(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000054F8(&qword_10001C9C0, &unk_100014810);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_1000135D0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 16) & 1) == 0)
  {
    v31 = v8;
    v11 = *(a2 + 8);
    v12 = v11;
    if (sub_100013930())
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 fileURL];
        if (v14)
        {
          v30 = v11;
          v15 = v14;
          sub_1000135B0();

          v16 = [v12 recordID];
          v17 = [v16 recordName];

          v18 = sub_1000137E0();
          v20 = v19;

          v21 = v31;
          (*(v7 + 16))(v5, v10, v31);
          (*(v7 + 56))(v5, 0, 1, v21);
          sub_100009360(v5, v18, v20);
          swift_unknownObjectRelease();
          sub_1000132A0(v30, 0);
          (*(v7 + 8))(v10, v21);
          return;
        }

        if (qword_10001C620 != -1)
        {
          swift_once();
        }

        v26 = sub_100013720();
        sub_100005418(v26, qword_10001D2F0);
        v23 = sub_100013700();
        v27 = sub_1000138E0();
        if (os_log_type_enabled(v23, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v23, v27, "Cannot get asset URL from attachment content", v28, 2u);
        }

        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    if (qword_10001C620 != -1)
    {
      swift_once();
    }

    v22 = sub_100013720();
    sub_100005418(v22, qword_10001D2F0);
    v23 = sub_100013700();
    v24 = sub_1000138E0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Cannot get attachment content from asset record", v25, 2u);
    }

LABEL_16:
    sub_1000132A0(v11, 0);
  }
}

uint64_t sub_10000A268(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 304) = a1;
  v6 = sub_1000135D0();
  *(v5 + 112) = v6;
  *(v5 + 120) = *(v6 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  sub_1000054F8(&qword_10001C8D8, &qword_100014780);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = sub_1000054F8(&qword_10001C990, &qword_1000147C8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_10000A424, 0, 0);
}

uint64_t sub_10000A424()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 304);
  *(v2 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_taskType) = 0;
  v5 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_recipes;
  *(v2 + v5) = sub_100002A9C(&_swiftEmptyArrayStorage);
  v6 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs;
  *(v2 + v6) = sub_100002AB0(&_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs;
  *(v2 + v7) = sub_100002C84(&_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_attachmentIDMaps;
  *(v2 + v8) = sub_100002E70(&_swiftEmptyArrayStorage);
  *(v2 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer) = 0;
  v9 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig;
  *(v2 + v9) = [objc_allocWithZone(CKOperationConfiguration) init];
  v10 = type metadata accessor for FedStatsPluginMLHostClient();
  *(v0 + 48) = v2;
  *(v0 + 56) = v10;
  v11 = objc_msgSendSuper2((v0 + 48), "init");
  *(v0 + 216) = v11;
  v11[OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_taskType] = v4;
  v12 = [objc_allocWithZone(CKContainerOptions) init];
  *(v0 + 224) = v12;
  v13 = sub_1000137D0();
  [v12 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v13];

  if (v3 == 0x786F62646E6173 && v1 == 0xE700000000000000 || (sub_100013A60() & 1) != 0)
  {
    if (os_variant_has_internal_content())
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v15 = sub_100013720();
  *(v0 + 232) = sub_100005418(v15, qword_10001D2F0);
  v16 = sub_100013700();
  v17 = sub_1000138E0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v16, v17, "CKContainerEnvironment: %ld", v18, 0xCu);
  }

  if (qword_10001C628 != -1)
  {
    swift_once();
  }

  v19 = objc_allocWithZone(CKContainerID);
  v20 = sub_1000137D0();
  v21 = [v19 initWithContainerIdentifier:v20 environment:v14];

  v22 = [objc_allocWithZone(CKContainer) initWithContainerID:v21 options:v12];
  v23 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer;
  v24 = *&v11[OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer];
  *&v11[OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer] = v22;

  v25 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig;
  [*&v11[OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig] setPreferAnonymousRequests:1];
  [*&v11[v25] setQualityOfService:9];
  [*&v11[v25] setContainer:*&v11[v23]];
  v26 = swift_task_alloc();
  *(v0 + 240) = v26;
  *v26 = v0;
  v26[1] = sub_10000A840;
  v27 = *(v0 + 80);

  return sub_100008500(v27);
}

uint64_t sub_10000A840(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {

    v4 = sub_10000BD28;
  }

  else
  {
    v4 = sub_10000A99C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000A99C()
{
  v1 = v0[31];
  v2 = v0[27];
  v37 = v0[26];
  v40 = v0[22];
  v3 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs;
  v0[33] = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs;
  *(v2 + v3) = v1;

  v4 = v1 + 64;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v38 = v1;

  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  v36 = v1 + 64;
  v39 = v0;
LABEL_4:
  v35 = v10;
  v0[34] = v10;
  v11 = v9;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v11;
LABEL_9:
    v13 = v0[25];
    v12 = v0[26];
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v9 << 6);
    v16 = *(v38 + 56);
    v17 = (*(v38 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v20 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
    sub_10001013C(v16 + *(*(v20 - 8) + 72) * v15, v12 + *(v40 + 48));
    *v12 = v19;
    *(v37 + 8) = v18;
    sub_1000057F4(v12, v13, &qword_10001C990, &qword_1000147C8);

    v21 = v13 + *(v40 + 48);
    v22 = *(v21 + *(v20 + 52));
    sub_1000101A0(v21);
    if (v22)
    {
      if (v22 != 1)
      {

        v0 = v39;
LABEL_17:
        v24 = v0[24];
        sub_1000057F4(v0[26], v24, &qword_10001C990, &qword_1000147C8);

        v25 = v24 + *(v40 + 48);
        v26 = (v25 + *(v20 + 60));
        v28 = *v26;
        v27 = v26[1];

        sub_1000101A0(v25);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v29 = v35;
        }

        else
        {
          v29 = sub_10000204C(0, *(v35 + 16) + 1, 1, v35);
        }

        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        v10 = v29;
        v4 = v36;
        if (v31 >= v30 >> 1)
        {
          v10 = sub_10000204C((v30 > 1), v31 + 1, 1, v29);
        }

        sub_1000055FC(v0[26], &qword_10001C990, &qword_1000147C8);
        *(v10 + 2) = v31 + 1;
        v32 = &v10[16 * v31];
        *(v32 + 4) = v28;
        *(v32 + 5) = v27;
        goto LABEL_4;
      }

      v0 = v39;
    }

    else
    {
      v0 = v39;
    }

    v23 = sub_100013A60();

    if (v23)
    {
      goto LABEL_17;
    }

    sub_1000055FC(v0[26], &qword_10001C990, &qword_1000147C8);
    v11 = v9;
    v4 = v36;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  v33 = swift_task_alloc();
  v0[35] = v33;
  *v33 = v0;
  v33[1] = sub_10000ADB8;

  return sub_100009538(v35);
}

uint64_t sub_10000ADB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_10000BE4C;
  }

  else
  {
    v4 = sub_10000AF20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000AF20()
{
  v133 = v0;
  v116 = *(v0 + 184);
  v1 = *(*(v0 + 216) + *(v0 + 264));
  v132[0] = &_swiftEmptyDictionarySingleton;
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v7 = *(v0 + 296);
  v118 = v1;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
    v129 = v7;
    v9 = v8;
LABEL_9:
    v10 = *(v0 + 184);
    v124 = *(v0 + 176);
    v125 = *(v0 + 288);
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(v118 + 56);
    v13 = (*(v118 + 48) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
    sub_10001013C(v12 + *(*(v16 - 8) + 72) * v11, v10 + *(v124 + 48));
    *v10 = v14;
    *(v116 + 8) = v15;

    sub_10000BF70(v132, v10, v125);
    if (v129)
    {
      v77 = *(v0 + 184);

      sub_1000055FC(v77, &qword_10001C990, &qword_1000147C8);
    }

    v5 &= v5 - 1;
    sub_1000055FC(*(v0 + 184), &qword_10001C990, &qword_1000147C8);
    v7 = 0;
    v8 = v9;
  }

  while (v5);
  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:

      return sub_100013A80();
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v129 = v7;
      goto LABEL_9;
    }
  }

  v17 = *(v0 + 288);
  v18 = *(v0 + 216);
  v117 = *(v0 + 168);
  v112 = *(v0 + 160);
  v19 = *(v0 + 120);
  v20 = *(v0 + 80);

  v21 = v118;

  v104 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_recipes;
  v105 = v18;
  *(v18 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_recipes) = v132[0];

  v23 = 0;
  v106 = v17 + 64;
  v24 = -1;
  v113 = v17;
  v25 = -1 << *(v17 + 32);
  if (-v25 < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & *(v17 + 64);
  v27 = (63 - v25) >> 6;
  v126 = (v19 + 32);
  v130 = (v19 + 16);
  v111 = v19;
  v114 = (v19 + 8);
  v115 = v27;
  v110 = v0;
  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_18:
  v28 = v23;
LABEL_26:
  v31 = *(v0 + 152);
  v32 = *(v0 + 160);
  v33 = *(v0 + 112);
  v34 = __clz(__rbit64(v26));
  v26 &= v26 - 1;
  v35 = v34 | (v28 << 6);
  v36 = (*(v113 + 48) + 16 * v35);
  v38 = *v36;
  v37 = v36[1];
  (*(v111 + 16))(v31, *(v113 + 56) + *(v111 + 72) * v35, v33);
  v39 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
  v40 = *(v39 + 48);
  *v32 = v38;
  *(v112 + 8) = v37;
  (*(v111 + 32))(&v32[v40], v31, v33);
  (*(*(v39 - 8) + 56))(v32, 0, 1, v39);

  v30 = v28;
  v0 = v110;
  while (1)
  {
    v41 = *(v0 + 168);
    sub_10001317C(*(v0 + 160), v41, &qword_10001C8D8, &qword_100014780);
    v42 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      break;
    }

    v43 = *(v0 + 168);
    v119 = *v43;
    v9 = *(v117 + 8);
    (*v126)(*(v0 + 144), v43 + *(v42 + 48), *(v0 + 112));
    v44 = [objc_opt_self() defaultManager];
    sub_1000135A0(v45);
    v47 = v46;
    *(v0 + 72) = 0;
    v48 = [v44 removeItemAtURL:v46 error:v0 + 72];

    v49 = *(v0 + 72);
    v50 = *(v0 + 144);
    v51 = *(v0 + 112);
    if (!v48)
    {
      v124 = v30;
      v61 = *(v0 + 128);
      v62 = v49;
      sub_100013560();

      swift_willThrow();
      (*v130)(v61, v50, v51);

      swift_errorRetain();
      v21 = sub_100013700();
      v63 = sub_1000138E0();

      v64 = os_log_type_enabled(v21, v63);
      v17 = *(v0 + 144);
      v65 = *(v0 + 128);
      v66 = *(v0 + 112);
      if (v64)
      {
        v109 = *(v0 + 144);
        v17 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v132[0] = swift_slowAlloc();
        *v17 = 136315650;
        v67 = sub_10000FB1C(v119, v9, v132);

        *(v17 + 4) = v67;
        *(v17 + 12) = 2080;
        sub_100013100();
        v20 = sub_100013A50();
        v9 = v68;
        v121 = v63;
        v69 = *v114;
        (*v114)(v65, v66);
        v70 = sub_10000FB1C(v20, v9, v132);

        *(v17 + 14) = v70;
        *(v17 + 22) = 2112;
        swift_errorRetain();
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 24) = v71;
        *v107 = v71;
        _os_log_impl(&_mh_execute_header, v21, v121, "Cannot remove %s at %s. Error: %@", v17, 0x20u);
        sub_1000055FC(v107, &qword_10001C658, &qword_1000142E0);

        swift_arrayDestroy();

        v22 = (v69)(v109, v66);
      }

      else
      {

        v20 = v114;
        v21 = *v114;
        (*v114)(v65, v66);
        v22 = (v21)(v17, v66);
      }

LABEL_17:
      v23 = v124;
      v27 = v115;
      if (v26)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    (*v130)(*(v0 + 136), *(v0 + 144), *(v0 + 112));
    v52 = v49;

    v21 = sub_100013700();
    v53 = sub_1000138E0();

    v54 = os_log_type_enabled(v21, v53);
    v55 = *(v0 + 136);
    v17 = *(v0 + 144);
    v56 = *(v0 + 112);
    if (v54)
    {
      v108 = *(v0 + 144);
      v17 = swift_slowAlloc();
      v132[0] = swift_slowAlloc();
      *v17 = 136315394;
      v124 = v30;
      v57 = sub_10000FB1C(v119, v9, v132);

      *(v17 + 4) = v57;
      *(v17 + 12) = 2080;
      sub_100013100();
      v9 = sub_100013A50();
      v59 = v58;
      v120 = v53;
      v20 = *v114;
      (*v114)(v55, v56);
      v60 = sub_10000FB1C(v9, v59, v132);

      *(v17 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v21, v120, "Removed %s at %s", v17, 0x16u);
      swift_arrayDestroy();

      v22 = v20(v108, v56);
      goto LABEL_17;
    }

    v20 = v114;
    v21 = *v114;
    (*v114)(v55, v56);
    v22 = (v21)(v17, v56);
    v23 = v30;
    v27 = v115;
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_19:
    if (v27 <= v23 + 1)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = v27;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v28 >= v27)
      {
        break;
      }

      v26 = *(v106 + 8 * v28);
      ++v23;
      if (v26)
      {
        goto LABEL_26;
      }
    }

    v72 = *(v0 + 160);
    v73 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
    (*(*(v73 - 8) + 56))(v72, 1, 1, v73);
    v26 = 0;
  }

  v21 = *(v105 + v104);
  v9 = v21 + 64;
  v74 = -1;
  v75 = -1 << *(v21 + 32);
  if (-v75 < 64)
  {
    v74 = ~(-1 << -v75);
  }

  v26 = v74 & *(v21 + 64);
  v20 = ((63 - v75) >> 6);
  swift_bridgeObjectRetain_n();
  v17 = 0;
  v76 = &_swiftEmptyDictionarySingleton;
LABEL_45:
  if (v26)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v81 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_67;
    }

    if (v81 >= v20)
    {
      break;
    }

    v26 = *(v9 + 8 * v81);
    ++v17;
    if (v26)
    {
      v17 = v81;
LABEL_50:
      v82 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v83 = v82 | (v17 << 6);
      v84 = *(*(v21 + 56) + 8 * v83);
      if (*(v84 + 16))
      {
        v80 = v76;
        v85 = (*(v21 + 48) + 16 * v83);
        v86 = v85[1];
        v131 = *v85;

        v87 = sub_1000100C4(0x656D686361747461, 0xEF70614D4449746ELL);
        if ((v88 & 1) == 0)
        {
          goto LABEL_44;
        }

        sub_100005540(*(v84 + 56) + 32 * v87, v0 + 16);
        sub_1000054F8(&qword_10001C998, &unk_1000147D0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_44;
        }

        v124 = *(v0 + 64);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132[0] = v80;
        v22 = sub_1000100C4(v131, v86);
        v90 = *(v80 + 16);
        v91 = (v89 & 1) == 0;
        v92 = __OFADD__(v90, v91);
        v93 = v90 + v91;
        if (v92)
        {
          __break(1u);
LABEL_72:
          __break(1u);
        }

        if (*(v80 + 24) >= v93)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_58;
          }

          v128 = v22;
          v123 = v89;
          sub_100011B70(&qword_10001C700, &qword_100014320);
          v22 = v128;
          if (v123)
          {
            goto LABEL_43;
          }

LABEL_59:
          v96 = v132[0];
          *(v132[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
          v97 = (v96[6] + 16 * v22);
          *v97 = v131;
          v97[1] = v86;
          *(v96[7] + 8 * v22) = v124;

          v98 = v96[2];
          v92 = __OFADD__(v98, 1);
          v99 = v98 + 1;
          if (v92)
          {
            goto LABEL_72;
          }

          v76 = v96;
          v96[2] = v99;
        }

        else
        {
          v122 = v89;
          sub_100010C60(v93, isUniquelyReferenced_nonNull_native, &qword_10001C700, &qword_100014320);
          v22 = sub_1000100C4(v131, v86);
          v95 = v94 & 1;
          v89 = v122;
          if ((v122 & 1) != v95)
          {
            goto LABEL_68;
          }

LABEL_58:
          if ((v89 & 1) == 0)
          {
            goto LABEL_59;
          }

LABEL_43:
          v79 = v22;

          v80 = v132[0];
          *(*(v132[0] + 56) + 8 * v79) = v124;

LABEL_44:

          v76 = v80;
        }
      }

      goto LABEL_45;
    }
  }

  v100 = *(v0 + 216);
  v101 = v76;

  *(v100 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_attachmentIDMaps) = v101;

  v102 = *(v0 + 8);
  v103 = *(v0 + 216);

  return v102(v103);
}

uint64_t sub_10000BD28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BE4C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10000BF70(void *a1, uint64_t a2, uint64_t a3)
{
  v116 = a3;
  v111 = a1;
  v110 = sub_1000135D0();
  v113 = *(v110 - 8);
  v4 = __chkstk_darwin(v110);
  v6 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v112 = &v109 - v7;
  v8 = sub_1000054F8(&qword_10001C990, &qword_1000147C8);
  v9 = __chkstk_darwin(v8);
  v114 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v109 - v12;
  v14 = __chkstk_darwin(v11);
  v109 = (&v109 - v15);
  v16 = __chkstk_darwin(v14);
  v18 = &v109 - v17;
  v19 = __chkstk_darwin(v16);
  v115 = &v109 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = (&v109 - v22);
  __chkstk_darwin(v21);
  v25 = &v109 - v24;
  v118 = a2;
  sub_1000057F4(a2, &v109 - v24, &qword_10001C990, &qword_1000147C8);

  v119 = v8;
  v26 = &v25[*(v8 + 48)];
  v27 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  v28 = *(v26 + v27[13]);
  sub_1000101A0(v26);
  if (v28)
  {
    if (v28 == 1)
    {
      v29 = objc_opt_self();
      v30 = v118;
      sub_1000057F4(v118, v23, &qword_10001C990, &qword_1000147C8);

      v31 = v23 + *(v119 + 48);
      v32 = (v31 + v27[14]);
      v33 = *v32;
      v34 = v32[1];
      sub_1000056C4(*v32, v34);
      sub_1000101A0(v31);
      isa = sub_100013630().super.isa;
      sub_1000054A4(v33, v34);
      *&v122[0] = 0;
      v36 = [v29 JSONObjectWithData:isa options:16 error:v122];

      if (v36)
      {
        v37 = *&v122[0];
        sub_100013940();
        swift_unknownObjectRelease();
        sub_1000054F8(&qword_10001C650, &unk_1000147E0);
        if (swift_dynamicCast())
        {
          v38 = *&v121[0];
          sub_1000057F4(v30, v23, &qword_10001C990, &qword_1000147C8);
          v39 = *v23;
          v40 = v23[1];
          v41 = *(v119 + 48);
          v42 = v111;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v122[0] = *v42;
          sub_1000113D8(v38, v39, v40, isUniquelyReferenced_nonNull_native);

          *v42 = *&v122[0];
          sub_1000101A0(v23 + v41);
          return;
        }
      }

      else
      {
        v66 = *&v122[0];
        sub_100013560();

        swift_willThrow();
      }

      if (qword_10001C620 != -1)
      {
        swift_once();
      }

      v83 = sub_100013720();
      sub_100005418(v83, qword_10001D2F0);
      v84 = v115;
      sub_1000057F4(v30, v115, &qword_10001C990, &qword_1000147C8);
      v85 = sub_100013700();
      v86 = sub_1000138E0();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v122[0] = v88;
        *v87 = 136315138;
        sub_10001317C(v84, v23, &qword_10001C990, &qword_1000147C8);
        v89 = *v23;
        v90 = v23[1];
        sub_1000101A0(v23 + *(v119 + 48));
        v91 = sub_10000FB1C(v89, v90, v122);

        *(v87 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v85, v86, "Cannot deserialize recipe for record %s to JSON", v87, 0xCu);
        sub_100005788(v88);
      }

      else
      {

        sub_1000055FC(v84, &qword_10001C990, &qword_1000147C8);
      }
    }

    else
    {
      sub_1000057F4(v118, v18, &qword_10001C990, &qword_1000147C8);

      v48 = &v18[*(v119 + 48)];
      v49 = (v48 + v27[15]);
      v51 = *v49;
      v50 = v49[1];

      sub_1000101A0(v48);
      v52 = v116;
      if (*(v116 + 16))
      {
        v53 = sub_1000100C4(v51, v50);
        v55 = v54;

        if (v55)
        {
          v56 = v113;
          v57 = v110;
          (*(v113 + 16))(v6, *(v52 + 56) + *(v113 + 72) * v53, v110);
          v58 = v112;
          (*(v56 + 32))(v112, v6, v57);
          v59 = v117;
          v60 = sub_1000135F0();
          if (v59)
          {

            if (qword_10001C620 != -1)
            {
              swift_once();
            }

            v62 = sub_100013720();
            sub_100005418(v62, qword_10001D2F0);
            v63 = sub_100013700();
            v64 = sub_1000138E0();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              *v65 = 0;
              _os_log_impl(&_mh_execute_header, v63, v64, "Cannot read recipe URL from Attachment record", v65, 2u);
            }
          }

          else
          {
            v92 = v60;
            v93 = v61;
            v94 = objc_opt_self();
            v95 = sub_100013630().super.isa;
            v120 = 0;
            v96 = [v94 JSONObjectWithData:v95 options:16 error:&v120];

            v97 = v120;
            if (v96)
            {
              sub_100013940();
              swift_unknownObjectRelease();
              sub_10000559C(v121, v122);
              v98 = v109;
              sub_1000057F4(v118, v109, &qword_10001C990, &qword_1000147C8);
              v99 = v98[1];
              v118 = *v98;
              sub_100005540(v122, v121);
              sub_1000054F8(&qword_10001C650, &unk_1000147E0);
              if (swift_dynamicCast())
              {
                v100 = v120;
              }

              else
              {
                v100 = sub_10000303C(&_swiftEmptyArrayStorage);
              }

              v106 = *(v119 + 48);
              v107 = v111;
              v108 = swift_isUniquelyReferenced_nonNull_native();
              *&v121[0] = *v107;
              sub_1000113D8(v100, v118, v99, v108);

              sub_1000054A4(v92, v93);
              *v107 = *&v121[0];
              sub_100005788(v122);
              (*(v113 + 8))(v112, v57);
              sub_1000101A0(v109 + v106);
              return;
            }

            v101 = v97;
            sub_100013560();

            swift_willThrow();

            if (qword_10001C620 != -1)
            {
              swift_once();
            }

            v102 = sub_100013720();
            sub_100005418(v102, qword_10001D2F0);
            v103 = sub_100013700();
            v104 = sub_1000138E0();
            if (os_log_type_enabled(v103, v104))
            {
              v105 = swift_slowAlloc();
              *v105 = 0;
              _os_log_impl(&_mh_execute_header, v103, v104, "Cannot load recipe from URL", v105, 2u);
            }

            sub_1000054A4(v92, v93);
          }

          (*(v56 + 8))(v58, v57);
          return;
        }
      }

      else
      {
      }

      if (qword_10001C620 != -1)
      {
        swift_once();
      }

      v67 = sub_100013720();
      sub_100005418(v67, qword_10001D2F0);
      v68 = v118;
      sub_1000057F4(v118, v13, &qword_10001C990, &qword_1000147C8);
      v69 = v68;
      v70 = v114;
      sub_1000057F4(v69, v114, &qword_10001C990, &qword_1000147C8);
      v71 = sub_100013700();
      v72 = sub_1000138E0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *&v122[0] = swift_slowAlloc();
        *v73 = 136315394;
        sub_10001317C(v13, v23, &qword_10001C990, &qword_1000147C8);

        v74 = v119;
        v75 = v23 + *(v119 + 48);
        v76 = (v75 + v27[15]);
        v77 = *v76;
        v78 = v76[1];

        sub_1000101A0(v75);
        v79 = sub_10000FB1C(v77, v78, v122);

        *(v73 + 4) = v79;
        *(v73 + 12) = 2080;
        sub_10001317C(v70, v23, &qword_10001C990, &qword_1000147C8);
        v80 = *v23;
        v81 = v23[1];
        sub_1000101A0(v23 + *(v74 + 48));
        v82 = sub_10000FB1C(v80, v81, v122);

        *(v73 + 14) = v82;
        _os_log_impl(&_mh_execute_header, v71, v72, "No recipe record '%s' for experiment record '%s'", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000055FC(v70, &qword_10001C990, &qword_1000147C8);
        sub_1000055FC(v13, &qword_10001C990, &qword_1000147C8);
      }
    }
  }

  else
  {
    if (qword_10001C620 != -1)
    {
      swift_once();
    }

    v44 = sub_100013720();
    sub_100005418(v44, qword_10001D2F0);
    v45 = sub_100013700();
    v46 = sub_1000138F0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Invalid or unimplemented recipe type", v47, 2u);
    }
  }
}

unint64_t FedStatsPluginMLHostClient.recipeDictionary(forRecipe:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_recipes);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_1000100C4(a1, a2);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v9 = objc_opt_self();
    sub_100013990(48);

    v12._countAndFlagsBits = a1;
    v12._object = a2;
    sub_100013810(v12);
    v13._object = 0x8000000100014C60;
    v13._countAndFlagsBits = 0xD000000000000011;
    sub_100013810(v13);
    v8 = 0x8000000100014C40;
    v10 = sub_1000137D0();

    [v9 errorWithCode:300 description:{v10, 0xD00000000000001DLL}];

    swift_willThrow();
    return v8;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  return v8;
}

Swift::String_optional __swiftcall FedStatsPluginMLHostClient.namespaceIdentifier(forRecipe:)(Swift::String forRecipe)
{
  object = forRecipe._object;
  countAndFlagsBits = forRecipe._countAndFlagsBits;
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);
  if (*(v11 + 16))
  {

    v12 = sub_1000100C4(countAndFlagsBits, object);
    if (v13)
    {
      sub_10001013C(*(v11 + 56) + *(v5 + 72) * v12, v10);

      (*(v5 + 56))(v10, 0, 1, v4);
      goto LABEL_6;
    }
  }

  (*(v5 + 56))(v10, 1, 1, v4);
LABEL_6:
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1000055FC(v10, &qword_10001C8A8, &qword_100014760);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    sub_10001013C(v10, v7);
    sub_1000055FC(v10, &qword_10001C8A8, &qword_100014760);
    v16 = &v7[*(v4 + 44)];
    v14 = *v16;
    v15 = v16[1];

    sub_1000101A0(v7);
  }

  v17 = v14;
  v18 = v15;
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

Swift::String_optional __swiftcall FedStatsPluginMLHostClient.experimentIdentifier(forRecipe:)(Swift::String forRecipe)
{
  object = forRecipe._object;
  countAndFlagsBits = forRecipe._countAndFlagsBits;
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);
  if (*(v11 + 16))
  {

    v12 = sub_1000100C4(countAndFlagsBits, object);
    if (v13)
    {
      sub_10001013C(*(v11 + 56) + *(v5 + 72) * v12, v10);

      (*(v5 + 56))(v10, 0, 1, v4);
      goto LABEL_6;
    }
  }

  (*(v5 + 56))(v10, 1, 1, v4);
LABEL_6:
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1000055FC(v10, &qword_10001C8A8, &qword_100014760);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    sub_10001013C(v10, v7);
    sub_1000055FC(v10, &qword_10001C8A8, &qword_100014760);
    v16 = &v7[*(v4 + 24)];
    v14 = *v16;
    v15 = v16[1];

    sub_1000101A0(v7);
  }

  v17 = v14;
  v18 = v15;
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

Swift::String_optional __swiftcall FedStatsPluginMLHostClient.treatmentIdentifier(forRecipe:)(Swift::String forRecipe)
{
  object = forRecipe._object;
  countAndFlagsBits = forRecipe._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall FedStatsPluginMLHostClient.deploymentIdentifier(forRecipe:)(Swift::String forRecipe)
{
  object = forRecipe._object;
  countAndFlagsBits = forRecipe._countAndFlagsBits;
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);
  if (*(v11 + 16))
  {

    v12 = sub_1000100C4(countAndFlagsBits, object);
    if (v13)
    {
      sub_10001013C(*(v11 + 56) + *(v5 + 72) * v12, v10);

      (*(v5 + 56))(v10, 0, 1, v4);
      goto LABEL_6;
    }
  }

  (*(v5 + 56))(v10, 1, 1, v4);
LABEL_6:
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1000055FC(v10, &qword_10001C8A8, &qword_100014760);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    sub_10001013C(v10, v7);
    sub_1000055FC(v10, &qword_10001C8A8, &qword_100014760);
    v16 = &v7[*(v4 + 28)];
    v14 = *v16;
    v15 = v16[1];

    sub_1000101A0(v7);
  }

  v17 = v14;
  v18 = v15;
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

id sub_10000D5D0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1000137E0();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  v11 = v10;

  if (v11)
  {
    v12 = sub_1000137D0();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void *FedStatsPluginMLHostClient.recipeIdentifiers()()
{
  v1 = *(v0 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = sub_10000FA98(*(v1 + 16), 0);
  v4 = sub_10001294C(&v7, v3 + 4, v2, v1);
  v5 = v7;

  sub_100012AA4(v5);
  if (v4 != v2)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10000D740(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10000FA98(*(a1 + 16), 0);
  v4 = sub_10001294C(&v6, v3 + 4, v2, a1);
  sub_100012AA4(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FedStatsPluginMLHostClient.fetchAssets(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_100013730();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v59 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100013760();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = __chkstk_darwin(v6);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v56 - v9;
  v10 = sub_1000054F8(&qword_10001C8B8, &qword_100014768);
  __chkstk_darwin(v10 - 8);
  v56 = &v56 - v11;
  v68[0] = &_swiftEmptySetSingleton;
  v12 = a1._rawValue + 64;
  v13 = 1 << *(a1._rawValue + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1._rawValue + 8);
  rawValue = a1._rawValue;
  v67 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_attachmentIDMaps;
  v16 = ((v13 + 63) >> 6);

  v17 = 0;
  v64 = v2;
  while (v15)
  {
    v18 = v15;
LABEL_12:
    v15 = (v18 - 1) & v18;
    v20 = *&v2[v67];
    if (*(v20 + 16))
    {
      v21 = __clz(__rbit64(v18)) | (v17 << 6);
      v22 = (rawValue[6] + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(rawValue[7] + 8 * v21);

      v26 = sub_1000100C4(v24, v23);
      if (v27)
      {
        v28 = *(*(v20 + 56) + 8 * v26);

        v29 = v65;
        v30 = sub_100012DC8(v28, v24, v23, v25);
        v65 = v29;
        v2 = v64;

        sub_10000DF28(v30);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_18;
    }

    if (v19 >= v16)
    {
      break;
    }

    v18 = *&v12[8 * v19];
    ++v17;
    if (v18)
    {
      v17 = v19;
      goto LABEL_12;
    }
  }

  v31 = v68[0];
  v32 = dispatch_semaphore_create(0);
  v33 = sub_1000138B0();
  v34 = v56;
  (*(*(v33 - 8) + 56))(v56, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = v31;
  v35[6] = v32;
  v12 = v2;
  v16 = v32;
  sub_10000E390(0, 0, v34, &unk_100014778, v35);

  v36 = v57;
  sub_100013750();
  v37 = v59;
  *v59 = 240;
  v39 = v62;
  v38 = v63;
  (*(v62 + 104))(v37, enum case for DispatchTimeInterval.seconds(_:), v63);
  v40 = v58;
  sub_100013770();
  (*(v39 + 8))(v37, v38);
  v41 = *(v60 + 8);
  v42 = v36;
  v43 = v61;
  v41(v42, v61);
  sub_100013900();
  v41(v40, v43);
  if (sub_100013740())
  {
    v44 = objc_opt_self();
    v68[0] = 0;
    v68[1] = 0xE000000000000000;
    sub_100013990(56);
    v69._object = 0x8000000100014C80;
    v69._countAndFlagsBits = 0xD00000000000002ELL;
    sub_100013810(v69);
    v68[3] = 240;
    v70._countAndFlagsBits = sub_100013A50();
    sub_100013810(v70);

    v71._countAndFlagsBits = 0x73646E6F63657320;
    v71._object = 0xE800000000000000;
    sub_100013810(v71);
    v45 = sub_1000137D0();

    [v44 errorWithCode:300 description:v45];

    swift_willThrow();
    return;
  }

  if (qword_10001C620 != -1)
  {
    goto LABEL_22;
  }

LABEL_18:
  v46 = sub_100013720();
  sub_100005418(v46, qword_10001D2F0);
  v47 = v12;
  v48 = sub_100013700();
  v49 = sub_1000138E0();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v68[0] = v51;
    *v50 = 136315138;
    sub_1000135D0();

    v52 = sub_1000137A0();
    v54 = v53;

    v55 = sub_10000FB1C(v52, v54, v68);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "assetURLs = %s", v50, 0xCu);
    sub_100005788(v51);
  }
}

uint64_t sub_10000DF28(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 56) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100011CD0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10000E02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10000E050, 0, 0);
}

uint64_t sub_10000E050()
{
  v9 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_10000FA98(*(v1 + 16), 0);
    v4 = sub_100012AAC(&v8, v3 + 4, v2, v1);
    v5 = v8;

    sub_100012AA4(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = &_swiftEmptyArrayStorage;
LABEL_5:
  v0[5] = v3;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_10000E17C;

  return sub_100009538(v3);
}

uint64_t sub_10000E17C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10000E32C;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_10000E2AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000E2AC()
{
  *(v0[2] + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs) = v0[8];

  sub_100013910();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10000E32C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000E390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000054F8(&qword_10001C8B8, &qword_100014768);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000057F4(a3, v22 - v9, &qword_10001C8B8, &qword_100014768);
  v11 = sub_1000138B0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000055FC(v10, &qword_10001C8B8, &qword_100014768);
  }

  else
  {
    sub_1000138A0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100013890();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000137F0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000055FC(a3, &qword_10001C8B8, &qword_100014768);

      return v20;
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

  sub_1000055FC(a3, &qword_10001C8B8, &qword_100014768);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void FedStatsPluginMLHostClient.assetURL(forRecipe:forKey:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a3;
  v11 = sub_1000135D0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_attachmentIDMaps);
  if (!*(v16 + 16))
  {
    goto LABEL_16;
  }

  v69 = v5;
  v67 = v13;

  v17 = sub_1000100C4(a1, a2);
  if ((v18 & 1) == 0)
  {

LABEL_16:
    v59 = objc_opt_self();
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_100013990(36);

    v70 = 0xD000000000000010;
    v71 = 0x8000000100014CB0;
    v73._countAndFlagsBits = a1;
    v73._object = a2;
    sub_100013810(v73);
    v60._countAndFlagsBits = 0xD000000000000012;
    v60._object = 0x8000000100014CD0;
LABEL_20:
    sub_100013810(v60);
    v61 = sub_1000137D0();

    [v59 errorWithCode:300 description:v61];

    swift_willThrow();
    return;
  }

  v68 = a4;
  v19 = *(*(v16 + 56) + 8 * v17);

  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v20 = sub_100013720();
  v21 = sub_100005418(v20, qword_10001D2F0);

  v66 = v21;
  v22 = sub_100013700();
  v23 = sub_1000138E0();

  v24 = os_log_type_enabled(v22, v23);
  v64 = v15;
  v65 = v12;
  v63 = a5;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v62 = v6;
    v26 = v25;
    v27 = swift_slowAlloc();
    v70 = v27;
    *v26 = 136315138;
    v28 = sub_1000137A0();
    v30 = sub_10000FB1C(v28, v29, &v70);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "attachmentIDMap = %s", v26, 0xCu);
    sub_100005788(v27);
  }

  v31 = v72;
  if (!*(v19 + 16) || (v32 = sub_1000100C4(v72, v68), (v33 & 1) == 0))
  {

    v59 = objc_opt_self();
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_100013990(45);

    v70 = 0xD000000000000016;
    v71 = 0x8000000100014CF0;
    v74._countAndFlagsBits = a1;
    v74._object = a2;
    sub_100013810(v74);
    v75._countAndFlagsBits = 0x6F6E2073656F6420;
    v75._object = 0xEF20657661682074;
    sub_100013810(v75);
    v76._countAndFlagsBits = v31;
    v76._object = v68;
    sub_100013810(v76);
    v60._countAndFlagsBits = 2036689696;
    v60._object = 0xE400000000000000;
    goto LABEL_20;
  }

  v34 = (*(v19 + 56) + 16 * v32);
  v36 = *v34;
  v35 = v34[1];
  swift_bridgeObjectRetain_n();

  v37 = sub_100013700();
  v38 = sub_1000138E0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v70 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_10000FB1C(v36, v35, &v70);
    _os_log_impl(&_mh_execute_header, v37, v38, "assetAttachmentID = %s", v39, 0xCu);
    sub_100005788(v40);
  }

  v41 = *(v69 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs);
  if (!*(v41 + 16))
  {
    goto LABEL_19;
  }

  v42 = sub_1000100C4(v36, v35);
  if ((v43 & 1) == 0)
  {

LABEL_19:
    v59 = objc_opt_self();
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_100013990(36);

    v70 = 0xD000000000000011;
    v71 = 0x8000000100014D10;
    v77._countAndFlagsBits = v36;
    v77._object = v35;
    sub_100013810(v77);

    v60._object = 0x8000000100014C60;
    v60._countAndFlagsBits = 0xD000000000000011;
    goto LABEL_20;
  }

  v44 = v42;

  v45 = v65;
  v46 = *(v65 + 16);
  v47 = *(v41 + 56) + *(v65 + 72) * v44;
  v48 = v63;
  v49 = v67;
  v46(v63, v47, v67);

  v50 = v64;
  v46(v64, v48, v49);
  v51 = sub_100013700();
  v52 = sub_1000138E0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v70 = v72;
    *v53 = 136315138;
    sub_100013100();
    v54 = v67;
    v55 = sub_100013A50();
    v57 = v56;
    (*(v45 + 8))(v50, v54);
    v58 = sub_10000FB1C(v55, v57, &v70);

    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v51, v52, "assetURL = %s", v53, 0xCu);
    sub_100005788(v72);
  }

  else
  {

    (*(v45 + 8))(v50, v67);
  }
}

Swift::Void __swiftcall FedStatsPluginMLHostClient.removeAssets()()
{
  v1 = sub_1000135D0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v84 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v83 = &v78 - v6;
  v7 = __chkstk_darwin(v5);
  v94 = &v78 - v8;
  __chkstk_darwin(v7);
  v85 = &v78 - v9;
  v10 = sub_1000054F8(&qword_10001C8D8, &qword_100014780);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v89 = (&v78 - v14);
  v15 = *(v0 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs);
  v16 = *(v15 + 64);
  v79 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v96 = (v17 + 63) >> 6;
  v91 = (v2 + 32);
  v92 = (v2 + 16);
  v86 = v2;
  v87 = v15;
  v88 = (v2 + 8);

  v20 = 0;
  v81 = 0;
  *&v21 = 136315394;
  v82 = v21;
  v95 = v1;
  for (i = v13; ; v13 = i)
  {
    if (v19)
    {
      v24 = v20;
LABEL_16:
      v27 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v28 = v27 | (v24 << 6);
      v29 = v86;
      v30 = (*(v87 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = v85;
      v34 = v95;
      (*(v86 + 16))(v85, *(v87 + 56) + *(v86 + 72) * v28, v95);
      v35 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
      v36 = *(v35 + 48);
      v37 = i;
      *i = v32;
      *(v37 + 1) = v31;
      v13 = v37;
      (*(v29 + 32))(&v37[v36], v33, v34);
      (*(*(v35 - 8) + 56))(v13, 0, 1, v35);

      v26 = v24;
    }

    else
    {
      v25 = v96 <= v20 + 1 ? v20 + 1 : v96;
      v26 = v25 - 1;
      while (1)
      {
        v24 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
        }

        if (v24 >= v96)
        {
          break;
        }

        v19 = *(v79 + 8 * v24);
        ++v20;
        if (v19)
        {
          goto LABEL_16;
        }
      }

      v77 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
      (*(*(v77 - 8) + 56))(v13, 1, 1, v77);
      v19 = 0;
    }

    v38 = v89;
    sub_10001317C(v13, v89, &qword_10001C8D8, &qword_100014780);
    v39 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {
      break;
    }

    v41 = *v38;
    v40 = v38[1];
    (*v91)(v94, v38 + *(v39 + 48), v95);
    v42 = [objc_opt_self() defaultManager];
    sub_1000135A0(v43);
    v45 = v44;
    v97 = 0;
    v46 = [v42 removeItemAtURL:v44 error:&v97];

    if (v46)
    {
      v90 = v26;
      v47 = qword_10001C620;
      v48 = v97;
      if (v47 != -1)
      {
        swift_once();
      }

      v49 = sub_100013720();
      sub_100005418(v49, qword_10001D2F0);
      v50 = v83;
      v51 = v94;
      (*v92)(v83, v94, v95);

      v52 = sub_100013700();
      v53 = sub_1000138E0();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v54 = v82;
        v55 = sub_10000FB1C(v41, v40, &v97);

        *(v54 + 4) = v55;
        *(v54 + 12) = 2080;
        sub_100013100();
        v56 = sub_100013A50();
        v58 = v57;
        v59 = *v88;
        (*v88)(v50, v95);
        v60 = sub_10000FB1C(v56, v58, &v97);

        *(v54 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v52, v53, "Removed %s at %s", v54, 0x16u);
        swift_arrayDestroy();

        v59(v94, v95);
      }

      else
      {

        v22 = *v88;
        v23 = v95;
        (*v88)(v50, v95);
        v22(v51, v23);
      }

      goto LABEL_5;
    }

    v61 = v97;

    sub_100013560();

    swift_willThrow();
    if (qword_10001C620 != -1)
    {
      swift_once();
    }

    v62 = sub_100013720();
    sub_100005418(v62, qword_10001D2F0);
    v63 = v84;
    (*v92)(v84, v94, v95);
    swift_errorRetain();
    v64 = sub_100013700();
    v65 = sub_1000138E0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v90 = v26;
      v67 = v66;
      v68 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v97 = v80;
      *v67 = v82;
      sub_100013100();
      v69 = sub_100013A50();
      v70 = v63;
      v72 = v71;
      v81 = *v88;
      v81(v70, v95);
      v73 = sub_10000FB1C(v69, v72, &v97);

      *(v67 + 4) = v73;
      *(v67 + 12) = 2112;
      swift_errorRetain();
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v74;
      *v68 = v74;
      _os_log_impl(&_mh_execute_header, v64, v65, "Cannot remove URL %s. Error: %@", v67, 0x16u);
      sub_1000055FC(v68, &qword_10001C658, &qword_1000142E0);

      sub_100005788(v80);

      v81(v94, v95);
      v81 = 0;
LABEL_5:
      v20 = v90;
      continue;
    }

    v75 = *v88;
    v76 = v95;
    (*v88)(v63, v95);
    v75(v94, v76);
    v81 = 0;
    v20 = v26;
  }
}

id FedStatsPluginMLHostClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FedStatsPluginMLHostClient.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FedStatsPluginMLHostClient();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_10000FA98(uint64_t a1, uint64_t a2)
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

  sub_1000054F8(&unk_10001C9E0, &unk_100014850);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_10000FB1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000FBE8(v11, 0, 0, 1, a1, a2);
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
    sub_100005540(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005788(v11);
  return v7;
}

unint64_t sub_10000FBE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000FCF4(a5, a6);
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
    result = sub_1000139B0();
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

char *sub_10000FCF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000FD40(a1, a2);
  sub_10000FE70(&off_100018850);
  return v3;
}

char *sub_10000FD40(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000FF5C(v5, 0);
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

  result = sub_1000139B0();
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
        v10 = sub_100013820();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FF5C(v10, 0);
        result = sub_100013980();
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

uint64_t sub_10000FE70(uint64_t result)
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

  result = sub_10000FFD0(result, v11, 1, v3);
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

void *sub_10000FF5C(uint64_t a1, uint64_t a2)
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

  sub_1000054F8(&qword_10001C9C8, &qword_100014838);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054F8(&qword_10001C9C8, &qword_100014838);
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

unint64_t sub_1000100C4(uint64_t a1, uint64_t a2)
{
  sub_100013A90();
  sub_100013800();
  v4 = sub_100013AA0();

  return sub_1000101FC(a1, a2, v4);
}

uint64_t sub_10001013C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000101A0(uint64_t a1)
{
  v2 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000101FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100013A60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000102B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000100C4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000116C0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
    v19 = *(v12 - 8);
    sub_10000585C(v11 + *(v19 + 72) * v8, a3);
    sub_100010F00(v8, v10, type metadata accessor for FedStatsPluginCKExperimentRecord);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_100010420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000100C4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000118F0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1000135D0();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_100010F00(v8, v10, &type metadata accessor for URL);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1000135D0();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1000105A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000054F8(&unk_10001C720, &qword_100014340);
  v40 = v4;
  result = sub_100013A20();
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
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_10000585C(v28, v41);
      }

      else
      {
        sub_10001013C(v28, v41);
      }

      sub_100013A90();
      sub_100013800();
      result = sub_100013AA0();
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
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_10000585C(v41, *(v9 + 56) + v27 * v17);
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

uint64_t sub_1000108E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1000135D0();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000054F8(&qword_10001C710, &qword_100014330);
  v42 = v4;
  result = sub_100013A20();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_100013A90();
      sub_100013800();
      result = sub_100013AA0();
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
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

uint64_t sub_100010C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000054F8(a3, a4);
  v36 = v6;
  result = sub_100013A20();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_100013A90();
      sub_100013800();
      result = sub_100013AA0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_100010F00(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_100013950() + 1) & ~v6;
    while (1)
    {
      sub_100013A90();

      sub_100013800();
      v11 = sub_100013AA0();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000110F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000100C4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000116C0();
      goto LABEL_7;
    }

    sub_1000105A4(v15, a4 & 1);
    v21 = sub_1000100C4(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_100013A80();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for FedStatsPluginCKExperimentRecord(0) - 8) + 72) * v12;

    sub_100013408(a1, v20);
    return;
  }

LABEL_13:
  sub_100011578(v12, a2, a3, a1, v18);
}

void sub_100011258(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000100C4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000118F0();
      goto LABEL_7;
    }

    sub_1000108E0(v15, a4 & 1);
    v25 = sub_1000100C4(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_100013A80();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1000135D0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_100011610(v12, a2, a3, a1, v18);
}

void sub_1000113D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000100C4(a2, a3);
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
      sub_100010C60(v16, a4 & 1, &qword_10001C9A0, qword_100014348);
      v11 = sub_1000100C4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100013A80();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100011B70(&qword_10001C9A0, qword_100014348);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
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

uint64_t sub_100011578(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  result = sub_10000585C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100011610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1000135D0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1000116C0()
{
  v1 = v0;
  v2 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054F8(&unk_10001C720, &qword_100014340);
  v4 = *v0;
  v5 = sub_100013A10();
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
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10001013C(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10000585C(v25, *(v27 + 56) + v26);
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

void sub_1000118F0()
{
  v1 = v0;
  v35 = sub_1000135D0();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054F8(&qword_10001C710, &qword_100014330);
  v3 = *v0;
  v4 = sub_100013A10();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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
}

void sub_100011B70(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000054F8(a1, a2);
  v4 = *v2;
  v5 = sub_100013A10();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_100011CD0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100013A90();
  sub_100013800();
  v8 = sub_100013AA0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100013A60() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100012080(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100011E20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000054F8(&qword_10001C9D0, &qword_100014840);
  result = sub_100013970();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100013A90();
      sub_100013800();
      result = sub_100013AA0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_100012080(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100011E20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100012200();
      goto LABEL_16;
    }

    sub_10001235C(v8 + 1);
  }

  v10 = *v4;
  sub_100013A90();
  sub_100013800();
  v11 = sub_100013AA0();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_100013A60() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_100013A70();
  __break(1u);
}

void sub_100012200()
{
  v1 = v0;
  sub_1000054F8(&qword_10001C9D0, &qword_100014840);
  v2 = *v0;
  v3 = sub_100013960();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

uint64_t sub_10001235C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000054F8(&qword_10001C9D0, &qword_100014840);
  result = sub_100013970();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100013A90();

      sub_100013800();
      result = sub_100013AA0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t *sub_100012594(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_100012C04(v9, a2, a3, a6);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_100012648(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000054F8(&qword_10001C9D8, &qword_100014848);
  result = sub_100013A30();
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
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_100013A90();

    sub_100013800();
    result = sub_100013AA0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
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

uint64_t sub_1000128A0(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_10001294C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100012AAC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t *sub_100012C04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v25[0] = *v14;
    v25[1] = v15;
    __chkstk_darwin(result);
    v19[2] = v25;

    v16 = v26;
    v17 = sub_1000128A0(sub_10001346C, v19, v23);
    v26 = v16;

    if (v17)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_100012648(v21, v20, v22, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100012648(v21, v20, v22, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100012DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  swift_bridgeObjectRetain_n();
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_100012594(v16, v11, a1, a2, a3, a4);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v13);
  bzero(&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = sub_100012C04((&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, a1, a4);

  if (v4)
  {
    swift_willThrow();
  }

LABEL_6:

  return v14;
}

uint64_t sub_100012FE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100013038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100001D98;

  return sub_10000E02C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100013100()
{
  result = qword_10001C8D0;
  if (!qword_10001C8D0)
  {
    sub_1000135D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8D0);
  }

  return result;
}

uint64_t sub_10001317C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054F8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000131E4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000134CC;

  return sub_100009C60(a1, a2, v6);
}

id sub_100013294(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1000132A0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1000132AC()
{
  result = qword_10001C9B8;
  if (!qword_10001C9B8)
  {
    sub_100013310(&unk_10001C670, &unk_1000142F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9B8);
  }

  return result;
}

uint64_t sub_100013310(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100013358(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000134CC;

  return sub_100008BB4(a1, a2, v6);
}

uint64_t sub_100013408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001346C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100013A60() & 1;
  }
}