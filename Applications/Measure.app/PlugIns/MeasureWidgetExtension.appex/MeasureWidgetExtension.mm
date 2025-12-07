uint64_t SendableTransfer.unwrapped<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(*(a1 + 16) + 16);
  v5 = type metadata accessor for SendableTransfer(0, v9, a2, a3);
  return sub_100001638(sub_100001618, &v8, &type metadata for Never, v5, v6, a4);
}

uint64_t sub_100001530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1, a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t sub_100001638@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v30 = a4;
  v29 = a1;
  v26 = *(a3 - 8);
  v10 = __chkstk_darwin(a1, a2);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v10, v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v6);
  v24 = 1;
  if ((*(v15 + 48))(v22, 1, v14) != 1)
  {
    (*(v15 + 32))(v19, v22, v14);
    v29(v19, v12);
    (*(v15 + 8))(v19, v14);
    if (v7)
    {
      return (*(v26 + 32))(v27, v12, a3);
    }

    v24 = 0;
  }

  return (*(*(v30 - 8) + 56))(a6, v24, 1);
}

uint64_t sub_100001900(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100001970(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100001AB0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

BOOL AppDependencyType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008838;
  v6._object = a2;
  v4 = sub_100006100(v3, v6);

  return v4 != 0;
}

unint64_t sub_100001D58()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

Swift::Int sub_100001DAC()
{
  sub_100006120();
  sub_100006080();
  return sub_100006130();
}

Swift::Int sub_100001E20(uint64_t a1)
{
  sub_100006120();
  sub_100006080();
  return sub_100006130();
}

uint64_t sub_100001E74@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008870;
  v7._object = v3;
  v5 = sub_100006100(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for AppDependencyType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppDependencyType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100001FD8()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}

unint64_t sub_10000202C()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

uint64_t sub_100002080()
{
  v0 = sub_100005F70();
  sub_1000046EC(v0, qword_10000CF00);
  sub_1000046B4(v0, qword_10000CF00);
  return sub_100005F50();
}

uint64_t sub_100002110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000060B0();
  v3[15] = sub_1000060A0();
  v5 = sub_100006090();

  return _swift_task_switch(sub_1000021AC, v5, v4);
}

uint64_t sub_1000021AC()
{

  sub_1000047A4();
  v1 = sub_1000060D0();
  sub_1000060C0();
  sub_100005FB0();
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1)
  {
    sub_100005D50();
    sub_1000047F0((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    sub_100004808((v0 + 16), v4);
    sub_100005E30();
    (*(v5 + 8))(*(v0 + 56), v4, v5);
    sub_10000484C((v0 + 16));
  }

  sub_1000060C0();
  sub_100005FB0();
  sub_100005E10();

  v6 = *(v0 + 8);

  return v6();
}

void *sub_100002370@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100005E30();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000023E4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100005E20();
  return sub_100002458;
}

void sub_100002458(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000024A8()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

unint64_t sub_100002500()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_100002558()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_10000261C(uint64_t a1)
{
  v2 = sub_1000048C4();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100002664(uint64_t a1, uint64_t a2)
{
  v2 = sub_100003B4C(&qword_10000C240, &qword_1000069B0);
  __chkstk_darwin(v2 - 8, v3);
  v4 = sub_100003B4C(&qword_10000C248, &qword_1000069B8);
  __chkstk_darwin(v4, v5);
  sub_100005EE0();
  v7._object = 0x8000000100006C40;
  v7._countAndFlagsBits = 0xD000000000000015;
  sub_100005ED0(v7);
  swift_getKeyPath();
  sub_100003B4C(&qword_10000C250, qword_1000069E8);
  sub_100005EC0();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  sub_100005ED0(v8);
  sub_100005EF0();
  return sub_100005EB0();
}

uint64_t sub_100002800(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000028AC;

  return sub_100002110(a1, v5, v4);
}

uint64_t sub_1000028AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000029A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003D7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000029C8(uint64_t a1)
{
  v2 = sub_1000024A8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100002A04()
{
  v0 = sub_100003B4C(&qword_10000C1F8, &qword_100006970);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = sub_100005F70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v7 = sub_100005F40();
  sub_1000046EC(v7, qword_10000CF18);
  sub_1000046B4(v7, qword_10000CF18);
  sub_100005F50();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100005F30();
}

uint64_t sub_100002B74()
{
  v0 = sub_100003B4C(&qword_10000C1F0, &qword_100006968);
  __chkstk_darwin(v0 - 8, v1);
  v3 = v21 - v2;
  v4 = sub_100003B4C(&qword_10000C1F8, &qword_100006970);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v21 - v6;
  v8 = sub_100005F70();
  v22 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  sub_100003B4C(&qword_10000C200, &qword_100006978);
  v11 = sub_100003B4C(&qword_10000C208, &qword_100006980);
  v12 = *(v11 - 8);
  v24 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000064F0;
  v21[1] = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_100005F50();
  v15 = *(v9 + 56);
  v21[2] = v9 + 56;
  v23 = v15;
  v15(v7, 1, 1, v8);
  sub_100005E70();
  v16 = sub_100005E80();
  v17 = *(*(v16 - 8) + 56);
  v17(v3, 0, 1, v16);
  sub_100005E90();
  v18 = (v14 + v13 + v24);
  v24 = *(v11 + 48);
  *v18 = 1;
  sub_100005F50();
  v23(v7, 1, 1, v22);
  sub_100005E70();
  v17(v3, 0, 1, v16);
  sub_100005E90();
  v19 = sub_100004470(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10000CF30 = v19;
  return result;
}

uint64_t sub_100002F2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6576656CLL;
  }

  else
  {
    v3 = 0x6572757361656DLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6576656CLL;
  }

  else
  {
    v5 = 0x6572757361656DLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100006110();
  }

  return v8 & 1;
}

unint64_t sub_100002FD4()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C168);
  }

  return result;
}

Swift::Int sub_100003028()
{
  sub_100006120();
  sub_100006080();

  return sub_100006130();
}

uint64_t sub_1000030A8(uint64_t a1)
{
  sub_100006080();
}

Swift::Int sub_100003114(uint64_t a1)
{
  sub_100006120();
  sub_100006080();

  return sub_100006130();
}

uint64_t sub_100003190@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000088F8;
  v8._object = v3;
  v5 = sub_100006100(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000031F0(uint64_t *a1@<X8>)
{
  v2 = 0x6572757361656DLL;
  if (*v1)
  {
    v2 = 0x6C6576656CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100003234()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

unint64_t sub_10000328C()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

unint64_t sub_1000032F0()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}

unint64_t sub_100003348()
{
  result = qword_10000C188;
  if (!qword_10000C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C188);
  }

  return result;
}

unint64_t sub_1000033A0()
{
  result = qword_10000C190;
  if (!qword_10000C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C190);
  }

  return result;
}

unint64_t sub_1000033F8()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t sub_100003488@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_1000046B4(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100003580()
{
  result = qword_10000C1A0;
  if (!qword_10000C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A0);
  }

  return result;
}

uint64_t sub_1000035D4(uint64_t a1)
{
  v2 = sub_100003580();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003624()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

unint64_t sub_10000367C()
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

unint64_t sub_1000036D4()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

uint64_t sub_100003728()
{
  if (qword_10000C0B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10000CF30;

  return _swift_bridgeObjectRetain(v1);
}

uint64_t sub_100003784(uint64_t a1)
{
  v2 = sub_1000033F8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100003814(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchMeasureEnum(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LaunchMeasureEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000039DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000039E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100003A30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100003B04(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003814(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003B4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003B94(char a1)
{
  sub_100006120();
  sub_100006080();

  v2 = sub_100006130();

  return sub_100003C38(a1 & 1, v2);
}

unint64_t sub_100003C38(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6C6576656CLL;
    }

    else
    {
      v6 = 0x6572757361656DLL;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6C6576656CLL : 0x6572757361656DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100006110();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100003D7C()
{
  v24 = sub_100005F00();
  v0 = *(v24 - 8);
  __chkstk_darwin(v24, v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003B4C(&qword_10000C218, &qword_100006990);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v22 - v10;
  v12 = sub_100003B4C(&qword_10000C1F8, &qword_100006970);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v22 - v14;
  v16 = sub_100005F70();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  sub_100003B4C(&qword_10000C220, &qword_100006998);
  sub_100004750();
  sub_1000060E0();
  sub_100005D80();
  sub_100005D70();
  v23 = sub_100005D60();
  sub_100003B4C(&qword_10000C230, &qword_1000069A0);
  sub_100005F50();
  (*(v17 + 56))(v15, 1, 1, v16);
  LOBYTE(v25[0]) = 2;
  v19 = sub_100005E00();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v8, 1, 1, v19);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v24);
  sub_100003580();
  sub_100005E60();
  return v23;
}

uint64_t sub_1000040D8(int a1)
{
  v25 = a1;
  v24 = sub_100005F00();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24, v2);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003B4C(&qword_10000C218, &qword_100006990);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v23 - v10;
  v12 = sub_100003B4C(&qword_10000C1F8, &qword_100006970);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v23 - v14;
  v16 = sub_100005F70();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  sub_100003B4C(&qword_10000C220, &qword_100006998);
  sub_100004750();
  sub_1000060E0();
  sub_100005D80();
  sub_100005D70();
  v19 = sub_100005D60();
  sub_100003B4C(&qword_10000C230, &qword_1000069A0);

  sub_100005F50();
  (*(v17 + 56))(v15, 1, 1, v16);
  LOBYTE(v26[0]) = 2;
  v20 = sub_100005E00();
  v21 = *(*(v20 - 8) + 56);
  v21(v11, 1, 1, v20);
  v21(v8, 1, 1, v20);
  (*(v1 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v24);
  sub_100003580();
  sub_100005E60();
  LOBYTE(v26[0]) = v25 & 1;

  sub_100005E40();

  return v19;
}

unint64_t sub_100004470(uint64_t a1)
{
  v2 = sub_100003B4C(&qword_10000C208, &qword_100006980);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003B4C(&qword_10000C210, &qword_100006988);
    v8 = sub_1000060F0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100004644(v10, v6);
      v12 = *v6;
      result = sub_100003B94(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100005EA0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_100004644(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B4C(&qword_10000C208, &qword_100006980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000046B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000046EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100004750()
{
  result = qword_10000C228;
  if (!qword_10000C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C228);
  }

  return result;
}

unint64_t sub_1000047A4()
{
  result = qword_10000C238;
  if (!qword_10000C238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C238);
  }

  return result;
}

uint64_t sub_1000047F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100004808(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000484C(void *a1)
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

uint64_t sub_100004898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005E50();
  *a1 = result;
  return result;
}

unint64_t sub_1000048C4()
{
  result = qword_10000C258;
  if (!qword_10000C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C258);
  }

  return result;
}

uint64_t sub_100004960@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_100005F60();
  v41 = *(v1 - 8);
  v42 = v1;
  __chkstk_darwin(v1, v2);
  v40 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005FA0();
  __chkstk_darwin(v4 - 8, v5);
  v34 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006070();
  __chkstk_darwin(v7 - 8, v8);
  v32[1] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100005F70();
  v36 = *(v39 - 8);
  __chkstk_darwin(v39, v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003B4C(&qword_10000C260, &qword_100006AC0);
  v33 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = v32 - v15;
  v17 = sub_100003B4C(&qword_10000C268, &qword_100006AC8);
  v35 = *(v17 - 8);
  __chkstk_darwin(v17, v18);
  v20 = v32 - v19;
  v21 = sub_100003B4C(&qword_10000C270, &qword_100006AD0);
  v22 = *(v21 - 8);
  v37 = v21;
  v38 = v22;
  __chkstk_darwin(v21, v23);
  v25 = v32 - v24;
  sub_100003B4C(&qword_10000C278, &qword_100006AD8);
  sub_100003B04(&qword_10000C280, &qword_10000C278, &qword_100006AD8, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_100006050();
  sub_100006060();
  sub_100005F90();
  (*(v41 + 104))(v40, enum case for LocalizedStringResource.BundleDescription.main(_:), v42);
  sub_100005F80();
  v26 = sub_100003B04(&qword_10000C288, &qword_10000C260, &qword_100006AC0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_100006000();
  v27 = *(v36 + 8);
  v28 = v39;
  v27(v12, v39);
  (*(v33 + 8))(v16, v13);
  sub_100005F50();
  v44 = v13;
  v45 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100005FF0();
  v27(v12, v28);
  (*(v35 + 8))(v20, v17);
  v44 = v17;
  v45 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_100006010();
  return (*(v38 + 8))(v25, v30);
}

uint64_t sub_100004F48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006030();
  *a1 = result;
  return result;
}

uint64_t sub_100004F8C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_100005F70();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003B4C(&qword_10000C260, &qword_100006AC0);
  v34 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v34 - v7;
  v9 = sub_100003B4C(&qword_10000C268, &qword_100006AC8);
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  __chkstk_darwin(v9, v11);
  v13 = &v34 - v12;
  v14 = sub_100003B4C(&qword_10000C270, &qword_100006AD0);
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  __chkstk_darwin(v14, v16);
  v18 = &v34 - v17;
  v19 = sub_100003B4C(&qword_10000C290, &unk_100006AE0);
  v20 = *(v19 - 8);
  v41 = v19;
  v42 = v20;
  __chkstk_darwin(v19, v21);
  v23 = &v34 - v22;
  sub_100003B4C(&qword_10000C278, &qword_100006AD8);
  sub_100003B04(&qword_10000C280, &qword_10000C278, &qword_100006AD8, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_100006050();
  sub_100005F50();
  v24 = sub_100003B04(&qword_10000C288, &qword_10000C260, &qword_100006AC0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_100006000();
  v25 = v38;
  v26 = *(v37 + 8);
  v26(v4, v38);
  (*(v34 + 8))(v8, v5);
  sub_100005F50();
  v44 = v5;
  v45 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v35;
  sub_100005FF0();
  v26(v4, v25);
  (*(v36 + 8))(v13, v28);
  v29 = [objc_opt_self() currentDevice];
  [v29 userInterfaceIdiom];

  v44 = v28;
  v45 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v39;
  sub_100006020();
  (*(v40 + 8))(v18, v31);
  v44 = v31;
  v45 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  sub_100006010();
  return (*(v42 + 8))(v23, v32);
}

uint64_t sub_100005508(int a1, uint64_t a2)
{
  sub_1000040D8(a1);
  sub_1000048C4();
  return sub_100006040();
}

uint64_t sub_100005570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006030();
  *a1 = result;
  return result;
}

uint64_t sub_1000055D0()
{
  sub_100003814(&qword_10000C270, &qword_100006AD0);
  sub_100003814(&qword_10000C268, &qword_100006AC8);
  sub_100003814(&qword_10000C260, &qword_100006AC0);
  sub_100003B04(&qword_10000C288, &qword_10000C260, &qword_100006AC0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000056E8()
{
  sub_100003814(&qword_10000C290, &unk_100006AE0);
  sub_100003814(&qword_10000C270, &qword_100006AD0);
  sub_100003814(&qword_10000C268, &qword_100006AC8);
  sub_100003814(&qword_10000C260, &qword_100006AC0);
  sub_100003B04(&qword_10000C288, &qword_10000C260, &qword_100006AC0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000583C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = sub_100003B4C(&qword_10000C2A0, &qword_100006B50);
  __chkstk_darwin(v35, v1);
  v34 = &v29 - v2;
  v33 = sub_100003B4C(&qword_10000C2A8, &qword_100006B58);
  v31 = *(v33 - 8);
  v3 = v31;
  v5 = __chkstk_darwin(v33, v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v29 - v9;
  v11 = sub_100003B4C(&qword_10000C2B0, &qword_100006B60);
  v32 = *(v11 - 8);
  v12 = v32;
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v29 - v18;
  sub_100005C0C();
  sub_100005FE0();
  sub_100005C60();
  v30 = v10;
  sub_100005FE0();
  v20 = *(v12 + 16);
  v20(v16, v19, v11);
  v21 = *(v3 + 16);
  v22 = v7;
  v23 = v7;
  v24 = v33;
  v21(v23, v10, v33);
  v25 = v34;
  v20(v34, v16, v11);
  v21(&v25[*(v35 + 48)], v22, v24);
  sub_100005FC0();
  v26 = *(v31 + 8);
  v26(v30, v24);
  v27 = *(v32 + 8);
  v27(v19, v11);
  v26(v22, v24);
  return (v27)(v16, v11);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100005B8C();
  sub_100005FD0();
  return 0;
}

unint64_t sub_100005B8C()
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C298);
  }

  return result;
}

unint64_t sub_100005C0C()
{
  result = qword_10000C2B8;
  if (!qword_10000C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2B8);
  }

  return result;
}

unint64_t sub_100005C60()
{
  result = qword_10000C2C0;
  if (!qword_10000C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C0);
  }

  return result;
}

unint64_t sub_100005CB8()
{
  result = qword_10000C2C8;
  if (!qword_10000C2C8)
  {
    sub_100003814(&qword_10000C2D0, &qword_100006B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C8);
  }

  return result;
}