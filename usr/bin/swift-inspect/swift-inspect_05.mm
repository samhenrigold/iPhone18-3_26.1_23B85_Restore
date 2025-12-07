uint64_t static ParsableCommand.parseAsRoot(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v23 = sub_100065C18(v4, a2);
  v24 = v7;
  v25 = v8;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    if (qword_1000B5170 != -1)
    {
      swift_once();
    }

    v9 = qword_1000B66D0;
    v10 = *(qword_1000B66D0 + 16);
    if (v10)
    {
      sub_10004E638(qword_1000B66D0, qword_1000B66D0 + 32, 1, (2 * v10) | 1);
      v9 = v13;
    }

    else
    {
    }
  }

  sub_100063360(v9, v20);

  if (v22)
  {
    v17 = v20[2];
    v18 = v20[3];
    *v19 = *v21;
    *&v19[9] = *&v21[9];
    v15 = v20[0];
    v16 = v20[1];
    sub_10004FD40();
    swift_willThrowTypedImpl();
    *v14 = *v19;
    *&v14[9] = *&v19[9];
    swift_allocError();
    *v11 = v15;
    v11[1] = v16;
    *(v11 + 73) = *&v19[9];
    v11[3] = v18;
    v11[4] = *v14;
    v11[2] = v17;
  }

  else
  {

    return sub_100040F6C(v20, a3);
  }
}

double sub_10004D754@<D0>(uint64_t a1@<X8>)
{
  static ParsableCommand.configuration.getter(v7);
  v2 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v8;
  v3 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v3;
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  return result;
}

double static ParsableCommand.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  v8 = 0u;
  v9 = 0u;
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  v11 = 0uLL;
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  LOBYTE(v14) = 1;
  *(&v14 + 1) = _swiftEmptyArrayStorage;
  *&v15 = _swiftEmptyArrayStorage;
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  v17 = _swiftEmptyArrayStorage;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v20 = 0xE000000000000000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0xE000000000000000;
  v25 = 0;
  v26 = 0xE000000000000000;
  v27 = 1;
  v28 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  sub_10004314C(&v8, v7);
  sub_100027BE4(v18);
  v2 = v15;
  *(a1 + 96) = v14;
  *(a1 + 112) = v2;
  *(a1 + 128) = v16;
  *(a1 + 144) = v17;
  v3 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v3;
  v4 = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v4;
  result = *&v8;
  v6 = v9;
  *a1 = v8;
  *(a1 + 16) = v6;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ParsableCommand.run()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = sub_100034094(v7, v4, v3);
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  sub_10004FD94();
  swift_allocError();
  *v13 = v8;
  *(v13 + 8) = v10;
  *(v13 + 16) = v12;
  swift_willThrow();
}

uint64_t static ParsableCommand._commandName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v7);
  v2 = v7[0];
  v3 = v7[1];

  sub_100027BE4(v7);
  if (!v3)
  {
    swift_getMetatypeMetadata();
    v4 = String.init<A>(describing:)();
    v2 = sub_10004CE4C(45, 0xE100000000000000, v4, v5);
  }

  return v2;
}

char *static ParsableCommand.helpMessage(for:includeHidden:columns:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100065C18(v7, a7);
  v13 = sub_100084154(v12, a1);
  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_15:

    v19 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_3:
  v25[0] = _swiftEmptyArrayStorage;
  result = sub_10004E880(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = a5;
    v18 = 0;
    v19 = v25[0];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v24 = *(v20 + 16);

      v25[0] = v19;
      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        sub_10004E880((v21 > 1), v22 + 1, 1);
        v19 = v25[0];
      }

      ++v18;
      v19[2] = v22 + 1;
      *&v19[2 * v22 + 4] = v24;
    }

    while (v15 != v18);

    a5 = v17;
    if (v19[2])
    {
      goto LABEL_13;
    }

LABEL_12:

    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_10008E640;
    *(v19 + 2) = *(v12 + 1);
LABEL_13:

    sub_100079D2C(v19, a3 & 1, v25);

    v23 = sub_100075980(a4, a5 & 1);
    sub_10004CA1C(v25);
    return v23;
  }

  __break(1u);
  return result;
}

char *static ParsableCommand.usageString(for:includeHidden:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100065C18(v5, a5);
  v9 = sub_100084154(v8, a1);
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_15:

    v15 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_3:
  v21[0] = _swiftEmptyArrayStorage;
  result = sub_10004E880(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = a3;
    v14 = 0;
    v15 = v21[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v20 = *(v16 + 16);

      v21[0] = v15;
      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        sub_10004E880((v17 > 1), v18 + 1, 1);
        v15 = v21[0];
      }

      ++v14;
      v15[2] = v18 + 1;
      *&v15[2 * v18 + 4] = v20;
    }

    while (v11 != v14);

    a3 = v13;
    if (v15[2])
    {
      goto LABEL_13;
    }

LABEL_12:

    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    v15 = swift_allocObject();
    *(v15 + 1) = xmmword_10008E640;
    *(v15 + 2) = *(v8 + 1);
LABEL_13:

    sub_100079D2C(v15, a3 & 1, v21);

    v19 = v21[3];

    sub_10004CA1C(v21);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t static ParsableCommand.main(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  static ParsableCommand.parseAsRoot(_:)(a1, a3, v6);
  v3 = v7;
  v4 = v8;
  sub_100006190(v6, v7);
  (*(v4 + 32))(v3, v4);
  return sub_100002B38(v6);
}

BOOL sub_10004DFB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004C130(v2, *(a2 + 8), 2, 0, 0, 0);
  v4 = (v3 + 177);
  v5 = *(v3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v4;
    v7 = *(v4 - 137);
    v8 = *(v4 - 145);
    v4 += 192;
    v9 = v7 & 2;
    v10 = v8 || v9 == 0;
  }

  while (v10 || v6 != 4);
  v12 = v5 != 0;

  return v12;
}

BOOL sub_10004E040(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004C130(v2, *(a2 + 8), 2, 0, 0, 0);
  v4 = (v3 + 177);
  v5 = *(v3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v4;
    v7 = *(v4 - 137);
    v8 = *(v4 - 145);
    v4 += 192;
    v9 = v7 & 2;
    v10 = v8 || v9 == 0;
  }

  while (v10 || v6 != 6);
  v12 = v5 != 0;

  return v12;
}

BOOL sub_10004E0CC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5, a1);
  v2 = sub_100027BE4(v5);
  return v5[15] && sub_10004DFB4(v2, v5[16]);
}

uint64_t sub_10004E180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  static ParsableCommand.configuration.getter(v11);
  v6 = v11[0];
  v7 = v11[1];

  sub_100027BE4(v11);
  if (!v7)
  {
    sub_1000021C0(a3, a4);
    v8 = String.init<A>(describing:)();
    v6 = sub_10004CE4C(45, 0xE100000000000000, v8, v9);
  }

  return v6;
}

uint64_t sub_10004E254(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v14 = a1;
  v15 = a2;
  v12[0] = v5;
  v12[1] = v6;
  v13 = v7;
  sub_100002AA0(v12, a1);
  DynamicType = swift_getDynamicType();
  v9 = v15;
  a3(v5, v6, v7);
  sub_100002B38(v12);
  sub_10004FD94();
  swift_allocError();
  *v10 = DynamicType;
  *(v10 + 8) = v9;
  *(v10 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_10004E314()
{
  if (qword_1000B5168 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_1000B6638 + 1))
  {
    v0 = xmmword_1000B6638;
  }

  else
  {
    sub_1000021C0(&qword_1000B57D8, &qword_100092BF8);
    v1 = String.init<A>(describing:)();
    v0 = sub_10004CE4C(45, 0xE100000000000000, v1, v2);
  }

  return v0;
}

void *sub_10004E3E8(uint64_t a1, uint64_t a2)
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

  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_10004E478(uint64_t a1, uint64_t a2)
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

  sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_10004E508(uint64_t a1, uint64_t a2)
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

  sub_1000021C0(&qword_1000B5670, &qword_100092730);
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

char *sub_10004E58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = sub_10004E3E8(*(a1 + 16), 0);
  v6 = sub_100062078(&v8, v5 + 32, v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_10004E638(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10004E710(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 + 31;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 6);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_10004E7E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004E9F4(a1, a2, a3, *v3, &qword_1000B5438, &qword_100092060, &type metadata for NameSpecification.Element);
  *v3 = result;
  return result;
}

char *sub_10004E820(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004EB10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E840(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004EC1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E860(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004ED3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E880(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004EE48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E8A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004F05C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E8C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004F1A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E8E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004F2B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E900(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004F3D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E920(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004E9F4(a1, a2, a3, *v3, &qword_1000B5640, &qword_1000926E8, &type metadata for Name);
  *v3 = result;
  return result;
}

char *sub_10004E958(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004F520(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E978(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004F644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E998(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004F76C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E9B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004F88C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E9F4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_1000021C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10004EB10(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
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

char *sub_10004EC1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004ED3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5630, &unk_1000926D0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10004EE48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
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

char *sub_10004EF4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
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
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_10004F05C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B5808, &qword_100092C28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B5810, &qword_100092C30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F1A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5688, &qword_100092748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F2B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5680, &qword_100092740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004F3D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B57F8, &qword_100092C18);
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
    sub_1000021C0(&qword_1000B5800, &qword_100092C20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F520(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5660, &qword_100092720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F644(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B57E8, &qword_100092C08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F76C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B57E0, &qword_100092C00);
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

void *sub_10004F88C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B5620, &qword_1000926C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B5628, &qword_1000926C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10004F9C0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10004FB10(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_10004FB10(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10004FBA8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10004FC1C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10004FBA8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100082D44(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10004FC1C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_10004FD40()
{
  result = qword_1000B57C8;
  if (!qword_1000B57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B57C8);
  }

  return result;
}

unint64_t sub_10004FD94()
{
  result = qword_1000B57D0;
  if (!qword_1000B57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B57D0);
  }

  return result;
}

uint64_t sub_10004FDE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10004FDF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10004FE0C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004FE54(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10005892C(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10004FEE8(uint64_t a1)
{
  v6 = *(v3 + 8);
  swift_beginAccess();
  v7 = *(v6 + 72);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_100058E3C(v10, v13);
      if (v4)
      {
        goto LABEL_10;
      }

      if (*&v13[0] == a1)
      {

        v15 = v13[0];
        v16[0] = v13[1];
        v16[1] = v13[2];
        v17 = v14;
        sub_100040F6C(v16, v13);
        sub_1000021C0(&qword_1000B59D0, &qword_100093060);
        return swift_dynamicCast();
      }

      ++v9;
      sub_100058E74(v13);
      v10 += 56;
      if (v8 == v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:

    result = sub_100058E74(v13);
    __break(1u);
  }

  else
  {
LABEL_7:

    sub_10002A1BC();
    swift_allocError();
    *v11 = 3;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0;
    *(v11 + 80) = 15;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005007C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  *(&v21 + 1) = a3;
  v22 = a4;
  v10 = sub_100007DE4(&v20);
  (*(*(a3 - 8) + 16))(v10, a1, a3);
  *&v19 = a2;
  *(&v19 + 1) = a4;
  swift_beginAccess();
  v11 = *(v9 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 72) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100043A20(0, *(v11 + 2) + 1, 1, v11);
    *(v9 + 72) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_100043A20((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[56 * v14];
  v16 = v20;
  v17 = v21;
  *(v15 + 10) = v22;
  *(v15 + 3) = v16;
  *(v15 + 4) = v17;
  *(v15 + 2) = v19;
  *(v9 + 72) = v11;
  return swift_endAccess();
}

uint64_t sub_1000501B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ParsedArgumentsContainer(0, a2, a3, a4);
  v5 = *(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t sub_10005025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a1;
  return result;
}

uint64_t sub_10005029C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000503DC()
{
  sub_1000559E4();
  swift_allocError();
  *v0 = 0u;
  v0[1] = 0u;
  return swift_willThrow();
}

uint64_t sub_10005042C()
{
  sub_1000559E4();
  swift_allocError();
  *v0 = 1;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  return swift_willThrow();
}

double sub_100050480@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v6 = *(v4 + 16);
  if (*(v6 + 16) && (v7 = sub_1000561CC(a2, a3, a4), (v8 & 1) != 0))
  {
    sub_100058AFC(*(v6 + 56) + 72 * v7, v14);
    v18 = v14[0];
    v19 = v14[1];
    v20 = v14[2];
    v9 = v16;
    v21 = v15;
    v10 = v17;
    swift_beginAccess();

    sub_100055BDC(v11);
    swift_endAccess();
    v12 = v19;
    *a1 = v18;
    *(a1 + 16) = v12;
    result = *&v20;
    *(a1 + 32) = v20;
    *(a1 + 48) = v21;
    *(a1 + 56) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    *(a1 + 64) = 0;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100050560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  return v3;
}

uint64_t sub_10005056C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = v1[2];
  (*(v8 + 16))(&v14 - v5);
  v9 = *(v3 + 88);

  v10 = sub_100067F24(v6, v7, v4, v9);
  sub_100050480(a1, v10, v11, v12);
}

BOOL sub_100050694()
{
  sub_10005056C(v2);
  v0 = v3 != 0;
  sub_100002BCC(v2, &qword_1000B5978, &qword_100094AA0);
  return v0;
}

uint64_t sub_1000506E8()
{
  sub_10005056C(v2);
  if (!v3)
  {
    sub_100002BCC(v2, &qword_1000B5978, &qword_100094AA0);
    v5 = 0u;
    v6 = 0u;
    goto LABEL_5;
  }

  sub_10002600C(&v4, &v5, &qword_1000B5428, &qword_100093030);
  sub_100039234(v2);
  if (!*(&v6 + 1))
  {
LABEL_5:
    v0 = 1;
    goto LABEL_6;
  }

  v0 = 0;
LABEL_6:
  sub_100002BCC(&v5, &qword_1000B5428, &qword_100093030);
  return v0;
}

uint64_t sub_1000507A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a4;
  v54 = a1;
  v55 = a5;
  v51 = *v5;
  v9 = *(v51 + 80);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v52 = &v47 - v11;
  v12 = type metadata accessor for Optional();
  v48 = *(v12 - 8);
  __chkstk_darwin();
  v50 = &v47 - v13;
  v68 = a3;
  v49 = *(a3 - 8);
  __chkstk_darwin();
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  v17 = v5;
  sub_10005056C(v67);
  sub_10002600C(v67, &v62, &qword_1000B5978, &qword_100094AA0);
  v56 = v6;
  if (!v63)
  {
    v26 = &qword_1000B5978;
    v27 = &qword_100094AA0;
    v28 = &v62;
LABEL_10:
    sub_100002BCC(v28, v26, v27);
LABEL_12:
    v29 = v17;
    v30 = v17[3];
    v48 = v29[2];
    v49 = v30;
    v50 = *(v30 + 88);
    sub_1000021C0(&qword_1000B5618, &unk_1000926B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008E640;
    *(inited + 56) = v9;
    v51 = *(v51 + 88);
    *(inited + 64) = v51;
    v32 = sub_100007DE4((inited + 32));
    v33 = *(v10 + 16);
    v33(v32, v16, v9);
    v62 = v48;

    sub_1000425BC(inited);
    v48 = v62;
    v34 = v29[2];
    v35 = v52;
    v33(v52, v16, v9);

    v36 = sub_100067F24(v35, v34, v9, v51);
    v38 = v37;
    v40 = v39;
    sub_10005056C(v66);
    v62 = v50;
    v63 = v49;
    v64 = v48;
    v65[0] = v36;
    v65[1] = v38;
    v65[2] = v40;
    v60 = &type metadata for SingleValueDecoder;
    v61 = sub_100058998();
    *&v59 = swift_allocObject();
    sub_100058A70(&v62, v59 + 16);
    dispatch thunk of Decodable.init(from:)();
    sub_100040178(&v62);
    return sub_100002BCC(v67, &qword_1000B5978, &qword_100094AA0);
  }

  v18 = v66[1];

  sub_100039234(&v62);
  if (*(v18 + 16) != 1)
  {

    goto LABEL_12;
  }

  sub_10004FE54(v18);
  v20 = v19;

  if ((v20 & 0x10000) != 0 || (v20 & 0x100) == 0)
  {
    goto LABEL_12;
  }

  sub_10002600C(v67, &v62, &qword_1000B5978, &qword_100094AA0);
  if (!v63)
  {
    sub_100002BCC(&v62, &qword_1000B5978, &qword_100094AA0);
    v57 = 0u;
    v58 = 0u;
    goto LABEL_15;
  }

  sub_10002600C(v65, &v57, &qword_1000B5428, &qword_100093030);
  sub_100039234(&v62);
  if (!*(&v58 + 1))
  {
LABEL_15:
    v26 = &qword_1000B5428;
    v27 = &qword_100093030;
    v28 = &v57;
    goto LABEL_10;
  }

  sub_100058B58(&v57, &v59);
  sub_10004CC10(&v59, &v62);
  v21 = v50;
  v22 = v68;
  if (swift_dynamicCast())
  {
    sub_100002B38(&v59);
    sub_100002BCC(v67, &qword_1000B5978, &qword_100094AA0);
    v23 = v49;
    (*(v49 + 56))(v21, 0, 1, v22);
    v24 = *(v23 + 32);
    v24(v15, v21, v22);
    return (v24)(v55, v15, v22);
  }

  else
  {
    (*(v49 + 56))(v21, 1, 1, v22);
    (*(v48 + 1))(v21, v12);
    v62 = 0;
    v63 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v41 = v62;
    v42 = v63;
    result = sub_10002600C(v67, &v62, &qword_1000B5978, &qword_100094AA0);
    v43 = v63;
    if (v63)
    {
      v44 = v62;
      v45 = v64;

      sub_100039234(&v62);
      sub_100058B68();
      swift_allocError();
      *v46 = v41;
      *(v46 + 8) = v42;
      *(v46 + 16) = v44;
      *(v46 + 24) = v43;
      *(v46 + 32) = v45;
      *(v46 + 40) = 0;
      swift_willThrow();
      sub_100002B38(&v59);
      return sub_100002BCC(v67, &qword_1000B5978, &qword_100094AA0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100050E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v67 = a1;
  v45 = *v4;
  v10 = *(v45 + 80);
  v47 = *(v10 - 8);
  __chkstk_darwin();
  v46 = &v38 - v11;
  v13 = v12;
  sub_10005056C(v66);
  sub_10002600C(v66, &v54, &qword_1000B5978, &qword_100094AA0);
  if (*(&v54 + 1))
  {
    v63 = v56;
    v64 = v57;
    v65 = v58;
    v61 = v54;
    v62 = v55;
    if (*(*(&v57 + 1) + 16) == 1)
    {
      sub_10004FE54(*(&v57 + 1));
      if ((v14 & 0x10100) == 0x100)
      {
        sub_100002BCC(v66, &qword_1000B5978, &qword_100094AA0);
        sub_10002600C(&v62 + 8, &v54, &qword_1000B5428, &qword_100093030);
        sub_100039234(&v61);
        sub_1000021C0(&qword_1000B5428, &qword_100093030);
        v15 = swift_dynamicCast();
        return (*(*(a2 - 8) + 56))(a4, v15 ^ 1u, 1, a2);
      }
    }

    v41 = a3;
    v42 = a4;
    v43 = a2;
    v44 = v5;
    sub_100039234(&v61);
  }

  else
  {
    v41 = a3;
    v42 = a4;
    v43 = a2;
    v44 = v5;
    sub_100002BCC(&v54, &qword_1000B5978, &qword_100094AA0);
  }

  v17 = v4[2];
  v18 = v4[3];
  v19 = *(v18 + 88);
  v39 = v17;
  v40 = v19;
  sub_1000021C0(&qword_1000B5618, &unk_1000926B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 56) = v10;
  v45 = *(v45 + 88);
  *(inited + 64) = v45;
  v21 = sub_100007DE4((inited + 32));
  v22 = *(v47 + 16);
  v22(v21, v13, v10);
  *&v54 = v39;

  sub_1000425BC(inited);
  v47 = v54;
  v23 = v6[2];
  v24 = v46;
  v22(v46, v13, v10);

  v25 = sub_100067F24(v24, v23, v10, v45);
  v27 = v26;
  v29 = v28;
  sub_10002600C(v66, &v64, &qword_1000B5978, &qword_100094AA0);
  *&v61 = v40;
  *(&v61 + 1) = v18;
  *&v62 = v47;
  *(&v62 + 1) = v25;
  *&v63 = v27;
  *(&v63 + 1) = v29;
  *(&v55 + 1) = &type metadata for SingleValueDecoder;
  *&v56 = sub_100058998();
  *&v54 = swift_allocObject();
  sub_100058A70(&v61, v54 + 16);
  v31 = v42;
  v30 = v43;
  v32 = v44;
  dispatch thunk of Decodable.init(from:)();
  if (v32)
  {
    v60 = v32;
    swift_errorRetain();
    sub_1000021C0(&qword_1000B5988, &qword_100094200);
    if (swift_dynamicCast())
    {

      v53 = v59;
      v50 = v56;
      v51 = v57;
      v52 = v58;
      v48 = v54;
      v49 = v55;
      if (v59 == 11)
      {
        sub_100058AA8(&v48);
        sub_100040178(&v61);
        sub_100002BCC(v66, &qword_1000B5978, &qword_100094AA0);
        (*(*(v30 - 8) + 56))(v31, 1, 1, v30);
      }

      sub_10002A1BC();
      swift_allocError();
      v33 = v49;
      *v34 = v48;
      *(v34 + 16) = v33;
      v36 = v51;
      v35 = v52;
      v37 = v50;
      *(v34 + 80) = v53;
      *(v34 + 48) = v36;
      *(v34 + 64) = v35;
      *(v34 + 32) = v37;
      swift_willThrow();
    }

    sub_100040178(&v61);
    sub_100002BCC(v66, &qword_1000B5978, &qword_100094AA0);
  }

  else
  {
    sub_100040178(&v61);
    sub_100002BCC(v66, &qword_1000B5978, &qword_100094AA0);
    return (*(*(v30 - 8) + 56))(v31, 0, 1, v30);
  }
}

uint64_t sub_1000514F0()
{

  return v0;
}

uint64_t sub_100051518()
{

  return swift_deallocClassInstance();
}

__n128 sub_100051570(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10005158C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000515D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100051630(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100051648(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100051660(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10005168C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1000516D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000517AC(uint64_t a1)
{
  sub_1000507A4(&type metadata for Bool, a1, &type metadata for Bool, &protocol witness table for Bool, &v4);
  if (!v1)
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_1000517FC(uint64_t a1)
{
  result = sub_1000507A4(&type metadata for String, a1, &type metadata for String, &protocol witness table for String, &v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

double sub_100051850(uint64_t a1)
{
  sub_1000507A4(&type metadata for Double, a1, &type metadata for Double, &protocol witness table for Double, &v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

float sub_10005189C(uint64_t a1)
{
  sub_1000507A4(&type metadata for Float, a1, &type metadata for Float, &protocol witness table for Float, &v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100051A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000507A4(a4, a1, a4, a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_100051A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000507A4(a4, a1, a4, a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_100051AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000507A4(a4, a1, a4, a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_100051B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000507A4(a4, a1, a4, a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_100051C0C()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051C5C()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051D04()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051D54()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051E94()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_100051F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ParsedArgumentsContainer(0, a2, a3, a4);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t sub_100052020@<X0>(void *a1@<X8>)
{
  sub_10002600C(v1 + 48, &v25, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v25 + 1))
  {
    sub_100002BCC(&v25, &qword_1000B5978, &qword_100094AA0);
    v7 = *(v1 + 16);
    if (v7[2])
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v8 = v7[2];
        if (v8)
        {
LABEL_8:
          v7[2] = v8 - 1;
          sub_100040F6C(&v7[5 * v8 - 1], &v25);
          sub_10002F35C(&v25, &v30);
          v9 = *(&v31 + 1);
          v10 = v32;
          sub_100006190(&v30, *(&v31 + 1));
          __chkstk_darwin();
          v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v13 + 16))(v12);
          v14 = sub_100067F24(v12, v7, v9, v10);
          v16 = v15;
          v18 = v17;
          sub_100002B38(&v30);
          sub_10002A1BC();
          swift_allocError();
          *v19 = v14;
          *(v19 + 8) = v16;
          *(v19 + 16) = v18;
          v20 = v33;
          v21 = v32;
          v22 = v30;
          *(v19 + 40) = v31;
          *(v19 + 24) = v22;
          *(v19 + 56) = v21;
          *(v19 + 72) = v20;
          *(v19 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(&v25);
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v7);
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v32 = v27;
  v33 = v28;
  v34 = v29;
  v30 = v25;
  v31 = v26;
  sub_10002600C(&v31 + 8, &v25, &qword_1000B5428, &qword_100093030);
  if (*(&v26 + 1))
  {
    sub_1000021C0(&qword_1000B59A8, &qword_100093040);
    if (swift_dynamicCast())
    {
      v3 = v35;
      v4 = *(v1 + 16);
      a1[3] = &type metadata for SingleValueDecoder.UnkeyedContainer;
      a1[4] = sub_100058D80();
      v5 = swift_allocObject();
      *a1 = v5;
      sub_100058AFC(&v30, (v5 + 3));
      v5[15] = sub_1000021C0(&qword_1000B59B8, &qword_100093048);
      v5[16] = &off_1000ADFE0;
      v5[12] = v3;
      v5[13] = 0;

      result = sub_100039234(&v30);
      v5[2] = v4;
      return result;
    }
  }

  else
  {
    sub_100002BCC(&v25, &qword_1000B5428, &qword_100093030);
  }

  sub_10002A1BC();
  swift_allocError();
  *v23 = 3;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 72) = 0;
  *(v23 + 80) = 15;
  swift_willThrow();
  return sub_100039234(&v30);
}

uint64_t sub_10005239C()
{
  sub_10002600C(v0 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (*(&v23[0] + 1))
  {
    v27 = v23[2];
    v28 = v23[3];
    v29 = v24;
    v25 = v23[0];
    v26 = v23[1];
    sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
    sub_1000021C0(&qword_1000B5428, &qword_100093030);
    if (swift_dynamicCast())
    {
      sub_100039234(&v25);
      v1 = v30;
    }

    else
    {
      v19 = v25;
      v20 = v26;
      sub_100058B68();
      swift_allocError();
      *v21 = xmmword_100091320;
      *(v21 + 16) = v19;
      *(v21 + 32) = v20;
      *(v21 + 40) = 0;
      swift_willThrow();

      sub_100039234(&v25);
    }

    return v1 & 1;
  }

  sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
  v2 = *(v0 + 120);
  if (!v2[2])
  {
    __break(1u);
LABEL_11:
    result = sub_100058918(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_7:
    v2[2] = v4 - 1;
    sub_100040F6C(&v2[5 * v4 - 1], v23);
    sub_10002F35C(v23, &v25);
    v5 = *(&v26 + 1);
    v6 = v27;
    sub_100006190(&v25, *(&v26 + 1));
    __chkstk_darwin();
    v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8);
    v10 = sub_100067F24(v8, v2, v5, v6);
    v12 = v11;
    v14 = v13;
    sub_100002B38(&v25);
    sub_10002A1BC();
    swift_allocError();
    *v15 = v10;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;
    v16 = v28;
    v17 = v27;
    v18 = v25;
    *(v15 + 40) = v26;
    *(v15 + 24) = v18;
    *(v15 + 56) = v17;
    *(v15 + 72) = v16;
    *(v15 + 80) = 11;
    swift_willThrow();
    sub_100002B38(v23);
    return v1 & 1;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10005268C()
{
  sub_10002600C(v0 + 128, v22, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v22[0] + 1))
  {
    sub_100002BCC(v22, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v3 = v2[2];
        if (v3)
        {
LABEL_7:
          v2[2] = v3 - 1;
          sub_100040F6C(&v2[5 * v3 - 1], v22);
          sub_10002F35C(v22, &v24);
          v4 = *(&v25 + 1);
          v5 = v26;
          sub_100006190(&v24, *(&v25 + 1));
          __chkstk_darwin();
          v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v8 + 16))(v7);
          v9 = sub_100067F24(v7, v2, v4, v5);
          v11 = v10;
          v13 = v12;
          sub_100002B38(&v24);
          sub_10002A1BC();
          swift_allocError();
          *v14 = v9;
          *(v14 + 8) = v11;
          *(v14 + 16) = v13;
          v15 = v27;
          v16 = v26;
          v17 = v24;
          *(v14 + 40) = v25;
          *(v14 + 24) = v17;
          *(v14 + 56) = v16;
          *(v14 + 72) = v15;
          *(v14 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v22);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v26 = v22[2];
  v27 = v22[3];
  v28 = v23;
  v24 = v22[0];
  v25 = v22[1];
  sub_10002600C(&v25 + 8, v22, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v24);
    return v21[1];
  }

  else
  {
    v18 = v24;
    v19 = v25;
    sub_100058B68();
    swift_allocError();
    *v20 = xmmword_100091320;
    *(v20 + 16) = v18;
    *(v20 + 32) = v19;
    *(v20 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v24);
  }
}

uint64_t sub_100052978()
{
  sub_10002600C(v0 + 128, v22, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v22[0] + 1))
  {
    sub_100002BCC(v22, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v3 = v2[2];
        if (v3)
        {
LABEL_8:
          v2[2] = v3 - 1;
          sub_100040F6C(&v2[5 * v3 - 1], v22);
          sub_10002F35C(v22, &v24);
          v4 = *(&v25 + 1);
          v5 = v26;
          sub_100006190(&v24, *(&v25 + 1));
          __chkstk_darwin();
          v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v8 + 16))(v7);
          v9 = sub_100067F24(v7, v2, v4, v5);
          v11 = v10;
          v13 = v12;
          sub_100002B38(&v24);
          sub_10002A1BC();
          swift_allocError();
          *v14 = v9;
          *(v14 + 8) = v11;
          *(v14 + 16) = v13;
          v15 = v27;
          v16 = v26;
          v17 = v24;
          *(v14 + 40) = v25;
          *(v14 + 24) = v17;
          *(v14 + 56) = v16;
          *(v14 + 72) = v15;
          *(v14 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v22);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v26 = v22[2];
  v27 = v22[3];
  v28 = v23;
  v24 = v22[0];
  v25 = v22[1];
  sub_10002600C(&v25 + 8, v22, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = v24;
    v19 = v25;
    sub_100058B68();
    swift_allocError();
    *v20 = xmmword_100091320;
    *(v20 + 16) = v18;
    *(v20 + 32) = v19;
    *(v20 + 40) = 0;
    swift_willThrow();
  }

  return sub_100039234(&v24);
}

uint64_t sub_100052C64()
{
  sub_10002600C(v0 + 128, v22, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v22[0] + 1))
  {
    sub_100002BCC(v22, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v3 = v2[2];
        if (v3)
        {
LABEL_8:
          v2[2] = v3 - 1;
          sub_100040F6C(&v2[5 * v3 - 1], v22);
          sub_10002F35C(v22, &v24);
          v4 = *(&v25 + 1);
          v5 = v26;
          sub_100006190(&v24, *(&v25 + 1));
          __chkstk_darwin();
          v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v8 + 16))(v7);
          v9 = sub_100067F24(v7, v2, v4, v5);
          v11 = v10;
          v13 = v12;
          sub_100002B38(&v24);
          sub_10002A1BC();
          swift_allocError();
          *v14 = v9;
          *(v14 + 8) = v11;
          *(v14 + 16) = v13;
          v15 = v27;
          v16 = v26;
          v17 = v24;
          *(v14 + 40) = v25;
          *(v14 + 24) = v17;
          *(v14 + 56) = v16;
          *(v14 + 72) = v15;
          *(v14 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v22);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v26 = v22[2];
  v27 = v22[3];
  v28 = v23;
  v24 = v22[0];
  v25 = v22[1];
  sub_10002600C(&v25 + 8, v22, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = v24;
    v19 = v25;
    sub_100058B68();
    swift_allocError();
    *v20 = xmmword_100091320;
    *(v20 + 16) = v18;
    *(v20 + 32) = v19;
    *(v20 + 40) = 0;
    swift_willThrow();
  }

  return sub_100039234(&v24);
}

uint64_t sub_100052F50(uint64_t a1)
{
  sub_10002600C(v1 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v3 = *(v1 + 120);
    if (v3[2])
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v3[2];
        if (v4)
        {
LABEL_7:
          v3[2] = v4 - 1;
          sub_100040F6C(&v3[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          v6 = v27;
          sub_100006190(&v25, *(&v26 + 1));
          __chkstk_darwin();
          v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v3, v5, v6);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v3);
    v3 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v25);
    return v22[1];
  }

  else
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v25);
  }
}

uint64_t sub_10005323C(uint64_t a1)
{
  sub_10002600C(v1 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v3 = *(v1 + 120);
    if (v3[2])
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v3[2];
        if (v4)
        {
LABEL_7:
          v3[2] = v4 - 1;
          sub_100040F6C(&v3[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          v6 = v27;
          sub_100006190(&v25, *(&v26 + 1));
          __chkstk_darwin();
          v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v3, v5, v6);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v3);
    v3 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v25);
    return v30[0];
  }

  else
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v25);
  }
}

uint64_t sub_100053528(uint64_t a1)
{
  sub_10002600C(v1 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v3 = *(v1 + 120);
    if (v3[2])
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v3[2];
        if (v4)
        {
LABEL_7:
          v3[2] = v4 - 1;
          sub_100040F6C(&v3[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          v6 = v27;
          sub_100006190(&v25, *(&v26 + 1));
          __chkstk_darwin();
          v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v3, v5, v6);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v3);
    v3 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v25);
    return v30;
  }

  else
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v25);
  }
}

uint64_t sub_100053814(uint64_t a1)
{
  sub_10002600C(v1 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v3 = *(v1 + 120);
    if (v3[2])
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v3[2];
        if (v4)
        {
LABEL_7:
          v3[2] = v4 - 1;
          sub_100040F6C(&v3[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          v6 = v27;
          sub_100006190(&v25, *(&v26 + 1));
          __chkstk_darwin();
          v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v3, v5, v6);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v3);
    v3 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v25);
    return v30;
  }

  else
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v25);
  }
}

uint64_t sub_100053B00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v30 - v7;
  sub_10002600C(v2 + 128, v31, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v31[0] + 1))
  {
    sub_100002BCC(v31, &qword_1000B5978, &qword_100094AA0);
    v11 = *(v2 + 120);
    if (v11[2])
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v12 = v11[2];
        if (v12)
        {
LABEL_7:
          v11[2] = v12 - 1;
          sub_100040F6C(&v11[5 * v12 - 1], v31);
          sub_10002F35C(v31, &v33);
          v13 = *(&v34 + 1);
          v14 = v35;
          sub_100006190(&v33, *(&v34 + 1));
          __chkstk_darwin();
          v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v17 + 16))(v16);
          v18 = sub_100067F24(v16, v11, v13, v14);
          v20 = v19;
          v22 = v21;
          sub_100002B38(&v33);
          sub_10002A1BC();
          swift_allocError();
          *v23 = v18;
          *(v23 + 8) = v20;
          *(v23 + 16) = v22;
          v24 = v36;
          v25 = v35;
          v26 = v33;
          *(v23 + 40) = v34;
          *(v23 + 24) = v26;
          *(v23 + 56) = v25;
          *(v23 + 72) = v24;
          *(v23 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v31);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v11);
    v11 = result;
    v12 = *(result + 16);
    if (v12)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v35 = v31[2];
  v36 = v31[3];
  v37 = v32;
  v33 = v31[0];
  v34 = v31[1];
  sub_10002600C(&v34 + 8, v31, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v33);
    v9 = *(a1 - 8);
    (*(v9 + 56))(v8, 0, 1, a1);
    return (*(v9 + 32))(a2, v8, a1);
  }

  else
  {
    (*(*(a1 - 8) + 56))(v8, 1, 1, a1);
    (*(v6 + 8))(v8, v5);
    v27 = v33;
    v28 = v34;
    sub_100058B68();
    swift_allocError();
    *v29 = xmmword_100091320;
    *(v29 + 16) = v27;
    *(v29 + 32) = v28;
    *(v29 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v33);
  }
}

BOOL sub_100053F40()
{
  sub_10002600C(v0 + 128, v3, &qword_1000B5978, &qword_100094AA0);
  v1 = v4 == 0;
  sub_100002BCC(v3, &qword_1000B5978, &qword_100094AA0);
  return v1;
}

uint64_t sub_10005419C()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v12, v2, v3);
  if (v13)
  {
    sub_100058B58(&v12, v14);
    sub_10004CC10(v14, &v12);
    if (swift_dynamicCast())
    {
      sub_100002B38(v14);
      v4 = v11;
    }

    else
    {
      *&v12 = 0;
      *(&v12 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v12;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      sub_100002B38(v14);
    }

    return v4 & 1;
  }

  else
  {
    sub_100002BCC(&v12, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054344()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_100058B58(&v11, v13);
    sub_10004CC10(v13, &v11);
    if (swift_dynamicCast())
    {
      sub_100002B38(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v13);
    }
  }

  else
  {
    sub_100002BCC(&v11, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000544E8()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v10, v2, v3);
  if (v11)
  {
    sub_100058B58(&v10, v12);
    sub_10004CC10(v12, &v10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v10 = 0;
      *(&v10 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v10;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();
    }

    return sub_100002B38(v12);
  }

  else
  {
    sub_100002BCC(&v10, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005468C()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v10, v2, v3);
  if (v11)
  {
    sub_100058B58(&v10, v12);
    sub_10004CC10(v12, &v10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v10 = 0;
      *(&v10 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v10;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();
    }

    return sub_100002B38(v12);
  }

  else
  {
    sub_100002BCC(&v10, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054830(uint64_t a1)
{
  v2 = v1;
  v3 = v1[13];
  v4 = v1[14];
  sub_100006190((v1 + 10), v3);
  (*(v4 + 32))(&v12, v3, v4);
  if (v13)
  {
    sub_100058B58(&v12, v14);
    sub_10004CC10(v14, &v12);
    if (swift_dynamicCast())
    {
      sub_100002B38(v14);
      return v11;
    }

    else
    {
      *&v12 = 0;
      *(&v12 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v6 = v12;
      v8 = v1[1];
      v7 = v1[2];
      v9 = v2[3];
      sub_100058B68();
      swift_allocError();
      *v10 = v6;
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;
      *(v10 + 32) = v9;
      *(v10 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v14);
    }
  }

  else
  {
    sub_100002BCC(&v12, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000549D4(uint64_t a1)
{
  v2 = v1;
  v3 = v1[13];
  v4 = v1[14];
  sub_100006190((v1 + 10), v3);
  (*(v4 + 32))(&v12, v3, v4);
  if (v13)
  {
    sub_100058B58(&v12, v14);
    sub_10004CC10(v14, &v12);
    if (swift_dynamicCast())
    {
      sub_100002B38(v14);
      return v11;
    }

    else
    {
      *&v12 = 0;
      *(&v12 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v6 = v12;
      v8 = v1[1];
      v7 = v1[2];
      v9 = v2[3];
      sub_100058B68();
      swift_allocError();
      *v10 = v6;
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;
      *(v10 + 32) = v9;
      *(v10 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v14);
    }
  }

  else
  {
    sub_100002BCC(&v12, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054B78(uint64_t a1)
{
  v2 = v1;
  v3 = v1[13];
  v4 = v1[14];
  sub_100006190((v1 + 10), v3);
  (*(v4 + 32))(&v12, v3, v4);
  if (v13)
  {
    sub_100058B58(&v12, v14);
    sub_10004CC10(v14, &v12);
    if (swift_dynamicCast())
    {
      sub_100002B38(v14);
      return v11;
    }

    else
    {
      *&v12 = 0;
      *(&v12 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v6 = v12;
      v8 = v1[1];
      v7 = v1[2];
      v9 = v2[3];
      sub_100058B68();
      swift_allocError();
      *v10 = v6;
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;
      *(v10 + 32) = v9;
      *(v10 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v14);
    }
  }

  else
  {
    sub_100002BCC(&v12, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054D1C(uint64_t a1)
{
  v2 = v1;
  v3 = v1[13];
  v4 = v1[14];
  sub_100006190((v1 + 10), v3);
  (*(v4 + 32))(&v12, v3, v4);
  if (v13)
  {
    sub_100058B58(&v12, v14);
    sub_10004CC10(v14, &v12);
    if (swift_dynamicCast())
    {
      sub_100002B38(v14);
      return v11;
    }

    else
    {
      *&v12 = 0;
      *(&v12 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v6 = v12;
      v8 = v1[1];
      v7 = v1[2];
      v9 = v2[3];
      sub_100058B68();
      swift_allocError();
      *v10 = v6;
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;
      *(v10 + 32) = v9;
      *(v10 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v14);
    }
  }

  else
  {
    sub_100002BCC(&v12, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054EC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = v2[13];
  v10 = v2[14];
  sub_100006190((v2 + 10), v9);
  (*(v10 + 32))(&v18, v9, v10);
  if (v19)
  {
    sub_100058B58(&v18, v20);
    sub_10004CC10(v20, &v18);
    if (swift_dynamicCast())
    {
      sub_100002B38(v20);
      v11 = *(a1 - 8);
      (*(v11 + 56))(v8, 0, 1, a1);
      return (*(v11 + 32))(v21, v8, a1);
    }

    else
    {
      (*(*(a1 - 8) + 56))(v8, 1, 1, a1);
      (*(v6 + 8))(v8, v5);
      *&v18 = 0;
      *(&v18 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v13 = v18;
      v15 = v2[1];
      v14 = v2[2];
      v16 = v3[3];
      sub_100058B68();
      swift_allocError();
      *v17 = v13;
      *(v17 + 16) = v15;
      *(v17 + 24) = v14;
      *(v17 + 32) = v16;
      *(v17 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v20);
    }
  }

  else
  {
    sub_100002BCC(&v18, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100055214()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_100002AA0(v0 + 10, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_10005526C()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_100002AA0(v0 + 10, v1);
  return (*(v2 + 16))(v1, v2) & 1;
}

uint64_t sub_1000552C4()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_100002AA0(v0 + 10, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_100055534()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100055584()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10005562C()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10005567C()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1000557BC()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10005580C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_100055944@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SingleValueDecoder.SingleValueContainer;
  a1[4] = sub_100058C74();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_100058A70(v1, v3 + 16);
  v4 = *(v1 + 16);
  sub_10002600C(v1 + 48, v3 + 144, &qword_1000B5978, &qword_100094AA0);
  *(v3 + 136) = v4;
}

unint64_t sub_1000559E4()
{
  result = qword_1000B5970;
  if (!qword_1000B5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5970);
  }

  return result;
}

double sub_100055A88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 8);
  if (v8 >= Array.endIndex.getter())
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    Array.subscript.getter();
    *(v2 + 8) = v8 + 1;
    *(a2 + 24) = v4;
    v9 = sub_100007DE4(a2);
    (*(v5 + 32))(v9, v7, v4);
  }

  return result;
}

uint64_t sub_100055BDC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      result = sub_100056A44(v11, *v10, *(v10 + 8), *(v10 + 16) | (*(v10 + 17) << 8));
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

uint64_t sub_100055CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100055D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 48;
    for (i = (a2 + 48); ; i += 8)
    {
      v6 = *(v3 - 16);
      v7 = *(v3 - 8);
      v9 = *v3;
      v8 = *(v3 + 8);
      v10 = *(v3 + 16);
      v11 = *(v3 + 24);
      v12 = *(v3 + 32);
      v13 = *(v3 + 40);
      v14 = *(i - 2);
      v15 = *(i - 1);
      v17 = *i;
      v16 = i[1];
      v18 = i[2];
      v19 = i[3];
      v20 = i[4];
      v21 = (*v3 >> 61) & 3;
      v22 = *(i + 40);
      if (v21)
      {
        if (v21 != 1)
        {
          if ((v17 & 0x6000000000000000) != 0x4000000000000000 || v17 != 0x4000000000000000 || v15 | v14 | v16 | v18)
          {
            sub_100058C08(v6, v7, *v3, *(v3 + 8), v10);
            return 0;
          }

          v30 = *(v3 + 32);
          v31 = *(v3 + 40);
          v32 = *(i + 40);
          v33 = i[4];
          sub_100058C08(v6, v7, *v3, *(v3 + 8), v10);
          v20 = v33;
          v22 = v32;
          v13 = v31;
          v12 = v30;
LABEL_33:
          if (v11 != v19)
          {
            return 0;
          }

          goto LABEL_34;
        }

        if ((v17 & 0x6000000000000000) != 0x2000000000000000)
        {
          return 0;
        }

        goto LABEL_13;
      }

      if ((v17 & 0x6000000000000000) != 0)
      {
        return 0;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        v54 = *(i + 40);
        if (v9 >> 6)
        {
          v34 = v17 & 0xC0;
          if (v9 >> 6 == 1)
          {
            if (v34 != 64)
            {
              return 0;
            }

            if (v6 == v14 && v7 == v15)
            {
              if ((v9 ^ v17))
              {
                return 0;
              }
            }

            else
            {
              v51 = *(v3 + 16);
              v53 = i[4];
              v49 = *(v3 + 40);
              v47 = *(v3 + 32);
              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
              result = 0;
              if ((v43 & 1) == 0)
              {
                return result;
              }

              v10 = v51;
              v20 = v53;
              v12 = v47;
              v13 = v49;
              v22 = v54;
              if ((v9 ^ v17))
              {
                return result;
              }
            }

LABEL_61:
            if (v8 == v16 && v10 == v18)
            {
              goto LABEL_33;
            }

            v52 = v20;
            v44 = v13;
            v45 = v12;
            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
            result = 0;
            if ((v46 & 1) == 0)
            {
              return result;
            }

            v42 = v11 == v19;
            v12 = v45;
            v13 = v44;
            v22 = v54;
            goto LABEL_65;
          }

          if (v34 != 128)
          {
            return 0;
          }
        }

        else if (*i >= 0x40u)
        {
          return 0;
        }

        if (v6 != v14 || v7 != v15)
        {
          v50 = *(v3 + 16);
          v35 = *(v3 + 32);
          v48 = *(v3 + 40);
          v36 = i[4];
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v20 = v36;
          v22 = v54;
          v13 = v48;
          v12 = v35;
          v10 = v50;
          if ((v37 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_61;
      }

      if (v17 < 0)
      {
        return 0;
      }

      if (!(v9 >> 6))
      {
        break;
      }

      v29 = v17 & 0xC0;
      if (v9 >> 6 != 1)
      {
        if (v29 != 128)
        {
          return 0;
        }

        goto LABEL_13;
      }

      if (v29 != 64)
      {
        return 0;
      }

      if (v6 != v14 || v7 != v15)
      {
        v52 = i[4];
        v38 = *(i + 40);
        v39 = *(v3 + 40);
        v40 = *(v3 + 32);
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if (v41 & 1) == 0 || ((v9 ^ v17))
        {
          return result;
        }

        v42 = v11 == v19;
        v12 = v40;
        v13 = v39;
        v22 = v38;
LABEL_65:
        v20 = v52;
        if (!v42)
        {
          return result;
        }

        goto LABEL_34;
      }

      result = 0;
      if (((v9 ^ v17) & 1) != 0 || v11 != v19)
      {
        return result;
      }

LABEL_34:
      if (v13)
      {
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == v20)
        {
          v5 = v22;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 64;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i >= 0x40u)
    {
      return 0;
    }

LABEL_13:
    if (v6 == v14 && v7 == v15)
    {
      goto LABEL_33;
    }

    v23 = i[4];
    v24 = *(i + 40);
    v25 = *(v3 + 40);
    v26 = *(v3 + 32);
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v27 & 1) == 0)
    {
      return result;
    }

    v12 = v26;
    v13 = v25;
    v22 = v24;
    v20 = v23;
    if (v11 != v19)
    {
      return result;
    }

    goto LABEL_34;
  }

  return 1;
}

unint64_t sub_1000560F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Hasher.init(_seed:)();
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      Hasher._combine(_:)(1uLL);
      Character.hash(into:)();
      Hasher._combine(_:)(v3 & 1);
      goto LABEL_7;
    }

    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  Hasher._combine(_:)(v6);
  String.hash(into:)();
LABEL_7:
  v7 = Hasher._finalize()();

  return sub_100056374(a1, a2, v3, v7);
}

unint64_t sub_1000561CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = *(a3 + 16);
  Hasher._combine(_:)(v6);
  if (v6)
  {
    v7 = a3 + 40;
    do
    {

      String.hash(into:)();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  v8 = Hasher._finalize()();

  return sub_1000564B4(a1, a2, a3, v8);
}

unint64_t sub_1000562A4(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100056600(a1, v2);
}

unint64_t sub_100056308(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_10001FA30(a1, v2);
}

unint64_t sub_100056374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v13 = a3 & 0xC0;
    do
    {
      v14 = (v12 + 24 * v7);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v14 + 16);
      if (v17 >> 6)
      {
        if (v17 >> 6 == 1)
        {
          if (v13 == 64)
          {
            v18 = v15 == a1 && v16 == a2;
            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((a3 ^ v17) & 1) == 0)
            {
              return v7;
            }
          }

          goto LABEL_4;
        }

        if (v13 != 128)
        {
          goto LABEL_4;
        }
      }

      else if (a3 >= 0x40u)
      {
        goto LABEL_4;
      }

      v19 = v15 == a1 && v16 == a2;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1000564B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v21 = (a3 + 40);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = *(v14 + 16);
        if (v16 == *(a3 + 16))
        {
          if (!v16 || v14 == a3)
          {
            return v7;
          }

          v17 = (v14 + 40);
          for (i = v21; ; i += 2)
          {
            v19 = *(v17 - 1) == *(i - 1) && *v17 == *i;
            if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }

            v17 += 2;
            if (!--v16)
            {
              return v7;
            }
          }
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100056600(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100056798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *v4;
  Hasher.init(_seed:)();
  v10 = v5 >> 6;
  v33 = a1;
  if (v5 >> 6)
  {
    if (v10 != 1)
    {
      if (a3 | a2 || v5 != 128)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      Hasher._combine(_:)(v11);
      goto LABEL_11;
    }

    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  Hasher._combine(_:)(v5 & 1);
LABEL_11:
  v12 = Hasher._finalize()();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_47:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v4;
    sub_10003B5D8(a2, a3, v5);
    sub_100057860(a2, a3, v5, v14, isUniquelyReferenced_nonNull_native);
    *v4 = v36;
    *v33 = a2;
    *(v33 + 8) = a3;
    *(v33 + 16) = v5;
    return 1;
  }

  v15 = ~v13;
  v16 = *(v9 + 48);
  v18 = a2 != 1 || a3 != 0;
  if (v5 == 128)
  {
    v19 = (a3 | a2) != 0;
  }

  else
  {
    v18 = 1;
    v19 = 1;
  }

  v20 = v10 != 2 || v18;
  v21 = v10 != 2 || v19;
  v34 = v21;
  v35 = v20;
  while (1)
  {
    v22 = (v16 + 24 * v14);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v22 + 16);
    if (!(v25 >> 6))
    {
      break;
    }

    if (v25 >> 6 == 1)
    {
      if (v10 == 1)
      {
        goto LABEL_35;
      }
    }

    else if (v24 | v23 || v25 != 128)
    {
      if ((v35 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if ((v34 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_29:
    v14 = (v14 + 1) & v15;
    if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  if (v5 >= 0x40u)
  {
    goto LABEL_29;
  }

LABEL_35:
  v26 = v23 == a2 && v24 == a3;
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v5 ^ v25) & 1) != 0)
  {
    goto LABEL_29;
  }

  sub_10003B5E8(a2, a3, v5);
LABEL_49:
  v29 = *(v9 + 48) + 24 * v14;
  v30 = *v29;
  v31 = *(v29 + 8);
  *v33 = *v29;
  *(v33 + 8) = v31;
  v32 = *(v29 + 16);
  *(v33 + 16) = v32;
  sub_10003B5D8(v30, v31, v32);
  return 0;
}

uint64_t sub_100056A44(uint64_t a1, Swift::UInt a2, Swift::UInt a3, unsigned int a4)
{
  v5 = v4;
  v10 = a4 >> 8;
  v11 = *v5;
  Hasher.init(_seed:)();
  if (v10 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(a2), (a4))
  {
    v12 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    v12 = a3;
  }

  Hasher._combine(_:)(v12);
  v13 = Hasher._finalize()();
  v14 = v11 + 56;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v11 + 48);
    do
    {
      v19 = v18 + 24 * v16;
      v20 = *(v19 + 16);
      LOBYTE(v21) = *(v19 + 17);
      if (v21)
      {
        if ((a4 & 0x100) != 0)
        {
          result = 0;
          a2 = *v19;
          a3 = *(v19 + 8);
          goto LABEL_19;
        }
      }

      else if ((a4 & 0x100) == 0 && *v19 == a2)
      {
        if (*(v19 + 16))
        {
          if (a4)
          {
            result = 0;
            a3 = *(v19 + 8);
            goto LABEL_19;
          }
        }

        else if ((a4 & 1) == 0 && *(v19 + 8) == a3)
        {
          result = 0;
          goto LABEL_19;
        }
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v21 = (a4 >> 8) & 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v5;
  sub_100057B10(a2, a3, a4 & 0x1FF, v16, isUniquelyReferenced_nonNull_native);
  *v5 = v24;
  result = 1;
  v20 = a4;
LABEL_19:
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v20;
  *(a1 + 17) = v21;
  return result;
}

uint64_t sub_100056BF0(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000021C0(&qword_1000B59C0, &unk_100093050);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100056E00(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100057430(v17 + 1);
    }

    sub_1000577BC(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100057CF0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

Swift::Int sub_100056E00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000021C0(&qword_1000B59C8, &qword_100096550);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000021C0(&qword_1000B59C0, &unk_100093050);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100057430(v9 + 1);
        v2 = v15;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10005700C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000021C0(qword_1000B59D8, &qword_100093068);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_100057680(*v15, *(v15 + 8), *(v15 + 16), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      v15 = *(v3 + 48) + 24 * (v12 | (v6 << 6));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10005717C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000021C0(&qword_1000B5990, &qword_100093038);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v32 = *(v18 + 8);
      v20 = *(v18 + 16);
      v21 = *(v18 + 17);
      Hasher.init(_seed:)();
      if (v21 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v19), (v20))
      {
        v22 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v22 = v32;
      }

      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v32;
      *(v14 + 16) = v20;
      *(v14 + 17) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100057430(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000021C0(&qword_1000B59C8, &qword_100096550);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
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

unint64_t sub_100057680(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (!(a3 >> 6))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    goto LABEL_5;
  }

  if (a3 >> 6 == 1)
  {
    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
LABEL_5:
    Hasher._combine(_:)(a3 & 1);
    goto LABEL_11;
  }

  if (a2 | a1 || a3 != 128)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  Hasher._combine(_:)(v8);
LABEL_11:
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v10 = *(a4 + 48) + 24 * result;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

unint64_t sub_1000577BC(Swift::UInt a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100057860(Swift::Int result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (a5)
  {
    sub_10005700C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_100057E48();
      goto LABEL_54;
    }

    sub_100058260(v10 + 1);
  }

  v12 = *v5;
  Hasher.init(_seed:)();
  v13 = a3 >> 6;
  if (a3 >> 6)
  {
    if (v13 != 1)
    {
      if (a2 | v9 || a3 != 128)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      Hasher._combine(_:)(v14);
      goto LABEL_18;
    }

    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  Hasher._combine(_:)(a3 & 1);
LABEL_18:
  result = Hasher._finalize()();
  v15 = v12 + 56;
  v16 = -1 << *(v12 + 32);
  a4 = result & ~v16;
  if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_54;
  }

  v17 = ~v16;
  v18 = *(v12 + 48);
  v20 = v9 != 1 || a2 != 0;
  if (a3 == 128)
  {
    v21 = (a2 | v9) != 0;
  }

  else
  {
    v20 = 1;
    v21 = 1;
  }

  v22 = v13 != 2 || v20;
  v23 = v13 != 2 || v21;
  v33 = v23;
  v34 = v22;
  while (1)
  {
    v24 = v18 + 24 * a4;
    result = *v24;
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    if (!(v26 >> 6))
    {
      break;
    }

    if (v26 >> 6 == 1)
    {
      if (v13 == 1)
      {
        goto LABEL_42;
      }
    }

    else if (v25 | result || v26 != 128)
    {
      if ((v34 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if ((v33 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_36:
    a4 = (a4 + 1) & v17;
    if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  if (a3 >= 0x40u)
  {
    goto LABEL_36;
  }

LABEL_42:
  if (result != v9 || v25 != a2)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if ((a3 ^ v26))
  {
    goto LABEL_36;
  }

LABEL_53:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_54:
  v28 = *v35;
  *(*v35 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v29 = *(v28 + 48) + 24 * a4;
  *v29 = v9;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3;
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }

  return result;
}

Swift::UInt sub_100057B10(Swift::UInt result, Swift::UInt a2, __int16 a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    sub_10005717C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a4;
      result = sub_100057FB0();
      a4 = v11;
      goto LABEL_25;
    }

    sub_1000583B8(v9 + 1);
  }

  v12 = *v5;
  Hasher.init(_seed:)();
  if (a3 & 0x100) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v8), (a3))
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    v13 = a2;
  }

  Hasher._combine(_:)(v13);
  result = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v12 + 48) + 24 * a4;
      if (*(v16 + 17))
      {
        if ((a3 & 0x100) != 0)
        {
          goto LABEL_24;
        }
      }

      else if ((a3 & 0x100) == 0 && *v16 == v8)
      {
        if (*(v16 + 16))
        {
          if (a3)
          {
            goto LABEL_24;
          }
        }

        else if ((a3 & 1) == 0 && *(v16 + 8) == a2)
        {
LABEL_24:
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_25:
  v17 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v18 = *(v17 + 48) + 24 * a4;
  *v18 = v8;
  *(v18 + 8) = a2;
  *(v18 + 16) = a3;
  *(v18 + 17) = HIBYTE(a3) & 1;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

Swift::UInt sub_100057CF0(Swift::UInt result, unint64_t a2, char a3)
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
    sub_100057430(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100058110();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10005863C(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
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
  sub_1000021C0(&qword_1000B59C0, &unk_100093050);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100057E48()
{
  v1 = v0;
  sub_1000021C0(qword_1000B59D8, &qword_100093068);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_10003B5D8(v19, v20, v22);
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

  return result;
}

void *sub_100057FB0()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5990, &qword_100093038);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 17);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 16) = v19;
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

void *sub_100058110()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B59C8, &qword_100096550);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

  return result;
}

uint64_t sub_100058260(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000021C0(qword_1000B59D8, &qword_100093068);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_100057680(v15, v16, v17, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(v3 + 48) + 24 * (v11 | (v6 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_10003B5D8(*v14, v16, v17);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1000583B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000021C0(&qword_1000B5990, &qword_100093038);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v31 = *(v18 + 8);
      v20 = *(v18 + 16);
      v21 = *(v18 + 17);
      Hasher.init(_seed:)();
      if (v21 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v19), (v20))
      {
        v22 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v22 = v31;
      }

      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v31;
      *(v14 + 16) = v20;
      *(v14 + 17) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_30;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_10005863C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000021C0(&qword_1000B59C8, &qword_100096550);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
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

        goto LABEL_28;
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

        v2 = v1;
        goto LABEL_26;
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

uint64_t sub_1000588A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_10005892C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 24 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_100058998()
{
  result = qword_1000B5980;
  if (!qword_1000B5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5980);
  }

  return result;
}

uint64_t sub_1000589EC()
{

  if (v0[9])
  {

    if (v0[14])
    {
      sub_100002B38(v0 + 11);
    }
  }

  return _swift_deallocObject(v0, 129, 7);
}

_OWORD *sub_100058B58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100058B68()
{
  result = qword_1000B5998;
  if (!qword_1000B5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5998);
  }

  return result;
}

uint64_t sub_100058C08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> 61) & 3;
  if (v5 == 1)
  {
  }

  if (!v5)
  {
    return sub_100058C28(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100058C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    sub_100028AE8(a1, a2, a3);
  }

  else
  {

    return sub_100028AE8(a1, a2, a3);
  }
}

unint64_t sub_100058C74()
{
  result = qword_1000B59A0;
  if (!qword_1000B59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B59A0);
  }

  return result;
}

uint64_t sub_100058CC8()
{

  if (v0[9])
  {

    if (v0[14])
    {
      sub_100002B38(v0 + 11);
    }
  }

  if (v0[19])
  {

    if (v0[24])
    {
      sub_100002B38(v0 + 21);
    }
  }

  return _swift_deallocObject(v0, 209, 7);
}

unint64_t sub_100058D80()
{
  result = qword_1000B59B0;
  if (!qword_1000B59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B59B0);
  }

  return result;
}

uint64_t sub_100058DD4()
{

  if (v0[9])
  {
    sub_100002B38(v0 + 6);
  }

  sub_100002B38(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100058EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100058EE0(uint64_t *a1, int a2)
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

uint64_t sub_100058F28(uint64_t result, int a2, int a3)
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

__n128 sub_100058F7C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100058FA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100058FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10005905C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1000590A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
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

uint64_t sub_1000590E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ArgumentDecoder.Error(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for ArgumentDecoder.Error(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ArgumentDecoder.Error(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArgumentDecoder.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100059258(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100059270(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1000592A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 48);
  v3 = v1 + 1;
  while (--v3)
  {
    v4 = v2 + 24;
    v5 = *v2 >> 6;
    v2 += 24;
    if (v5 != 1)
    {
      v6 = *(v4 - 5);

      return v6;
    }
  }

  if (!v1)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  sub_10002BB8C(v6, *(a1 + 40), *(a1 + 48));
  return v6;
}

BOOL sub_100059390(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000593C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000593EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1000594D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100059508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10005BA50(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100059548@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if (*a1 >= 2uLL)
  {
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = sub_1000592A8(v4);
  v7 = v6;
  v9 = v8;

  if (v9 > 0xFD)
  {
    v11 = a1[4];
    if (v11[2])
    {
      v12 = v11[4];
      v13 = v11[5];

      v5 = sub_10004CE4C(45, 0xE100000000000000, v12, v13);
      v7 = v14;
    }

    else
    {
      v7 = 0xE500000000000000;
      v5 = 0x65756C6176;
    }
  }

  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t sub_100059614()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1 == 1)
    {
      return 0;
    }

    v6 = *(v1 + 16);
    if (v0[21])
    {
      if (v6)
      {
        v47 = _swiftEmptyArrayStorage;
        sub_10004E820(0, v6, 0);
        v7 = _swiftEmptyArrayStorage;
        v8 = (v1 + 48);
        while (1)
        {
          v10 = *(v8 - 2);
          v9 = *(v8 - 1);
          v11 = *v8;
          if (!(v11 >> 6))
          {
            break;
          }

          if (v11 >> 6 != 1)
          {
            v49 = 45;
            v13 = 0xE100000000000000;
            goto LABEL_16;
          }

          v49 = 0;
          v50 = 0xE000000000000000;

          v12._countAndFlagsBits = 45;
          v12._object = 0xE100000000000000;
          String.append(_:)(v12);
          Character.write<A>(to:)();
LABEL_17:
          sub_100028AE8(v10, v9, v11);
          v15 = v49;
          v16 = v50;
          v47 = v7;
          v18 = v7[2];
          v17 = v7[3];
          if (v18 >= v17 >> 1)
          {
            sub_10004E820((v17 > 1), v18 + 1, 1);
            v7 = v47;
          }

          v8 += 24;
          v7[2] = v18 + 1;
          v19 = &v7[2 * v18];
          v19[4] = v15;
          v19[5] = v16;
          if (!--v6)
          {
            goto LABEL_33;
          }
        }

        v49 = 11565;
        v13 = 0xE200000000000000;
LABEL_16:
        v50 = v13;
        sub_10002BB8C(v10, v9, v11);
        v14._countAndFlagsBits = v10;
        v14._object = v9;
        String.append(_:)(v14);
        goto LABEL_17;
      }

LABEL_33:
      sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
      sub_10002BB28();
      v33 = BidirectionalCollection<>.joined(separator:)();
      v35 = v34;

      v49 = 15392;
      v50 = 0xE200000000000000;
      v37 = v0[11];
      v36 = v0[12];
      v38 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v38 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {
      }

      else
      {
        sub_100059548(v0, &v47);
        v37 = v47;
        v36 = v48;
      }

      v42._countAndFlagsBits = v37;
      v42._object = v36;
      String.append(_:)(v42);

      v43._countAndFlagsBits = 62;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      v44 = v49;
      v45 = v50;
      v49 = v33;
      v50 = v35;

      v46._countAndFlagsBits = v44;
      v46._object = v45;
      String.append(_:)(v46);

      return v49;
    }

    v20 = _swiftEmptyArrayStorage;
    if (!v6)
    {
LABEL_37:
      v49 = v20;
      sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
      sub_10002BB28();
      v39 = BidirectionalCollection<>.joined(separator:)();

      return v39;
    }

    v47 = _swiftEmptyArrayStorage;
    sub_10004E820(0, v6, 0);
    v20 = _swiftEmptyArrayStorage;
    v21 = (v1 + 48);
    while (1)
    {
      v23 = *(v21 - 2);
      v22 = *(v21 - 1);
      v24 = *v21;
      if (!(v24 >> 6))
      {
        break;
      }

      if (v24 >> 6 != 1)
      {
        v49 = 45;
        v26 = 0xE100000000000000;
        goto LABEL_28;
      }

      v49 = 0;
      v50 = 0xE000000000000000;

      v25._countAndFlagsBits = 45;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      Character.write<A>(to:)();
LABEL_29:
      sub_100028AE8(v23, v22, v24);
      v28 = v49;
      v29 = v50;
      v47 = v20;
      v31 = v20[2];
      v30 = v20[3];
      if (v31 >= v30 >> 1)
      {
        sub_10004E820((v30 > 1), v31 + 1, 1);
        v20 = v47;
      }

      v21 += 24;
      v20[2] = v31 + 1;
      v32 = &v20[2 * v31];
      v32[4] = v28;
      v32[5] = v29;
      if (!--v6)
      {
        goto LABEL_37;
      }
    }

    v49 = 11565;
    v26 = 0xE200000000000000;
LABEL_28:
    v50 = v26;
    sub_10002BB8C(v23, v22, v24);
    v27._countAndFlagsBits = v23;
    v27._object = v22;
    String.append(_:)(v27);
    goto LABEL_29;
  }

  v49 = 60;
  v50 = 0xE100000000000000;
  v4 = v0[11];
  v3 = v0[12];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
  }

  else
  {
    sub_100059548(v0, &v47);
    v4 = v47;
    v3 = v48;
  }

  v40._countAndFlagsBits = v4;
  v40._object = v3;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 62;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  return v49;
}

uint64_t sub_100059AEC()
{
  if (*v0 >= 2uLL)
  {

    v2 = v1[2];
    if (!v2)
    {
LABEL_10:
      v6 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    v2 = _swiftEmptyArrayStorage[2];
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v3 = (v1 + 6);
  while (1)
  {
    v5 = *v3;
    v3 += 24;
    v4 = v5;
    if (v5 & 0xC0) == 0x40 && (v4)
    {
      break;
    }

    if (!--v2)
    {
      goto LABEL_10;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

uint64_t sub_100059B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a7;
  sub_10002A1BC();
  swift_allocError();
  *v16 = a4;
  *(v16 + 8) = a5;
  *(v16 + 16) = a6;
  *(v16 + 24) = v9;
  *(v16 + 32) = a8;
  *(v16 + 40) = a9;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;
  *(v16 + 72) = 0;
  *(v16 + 80) = 12;
  swift_willThrow();

  sub_10005AD50(a5, a6, v9);
}

uint64_t sub_100059C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a7;
  v31 = a5;
  v32 = a6;
  v29 = a1;
  v30 = a4;
  v35 = a3;
  v33 = a2;
  v28 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v27 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(AssociatedConformanceWitness + 8);

  v19(a8, a10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = *(AssociatedTypeWitness - 8);
  if ((*(v20 + 48))(v17, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v20 + 32))(v28, v17, AssociatedTypeWitness);
  }

  (*(v15 + 8))(v17, v14);
  sub_10002A1BC();
  swift_allocError();
  v21 = v31;
  *v22 = v30;
  *(v22 + 8) = v21;
  v24 = v32;
  v23 = v33;
  *(v22 + 16) = v32;
  v25 = v34;
  *(v22 + 24) = v34;
  *(v22 + 32) = a8;
  *(v22 + 40) = a10;
  *(v22 + 48) = v29;
  *(v22 + 56) = v23;
  *(v22 + 64) = v35;
  *(v22 + 72) = 0;
  *(v22 + 80) = 12;
  swift_willThrow();

  sub_10005AD50(v21, v24, v25);
}

uint64_t sub_100059EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t))
{
  v12 = a7;
  result = a10(a8, a9);
  if (v10)
  {
    sub_10002A1BC();
    swift_allocError();
    *v19 = a4;
    *(v19 + 8) = a5;
    *(v19 + 16) = a6;
    *(v19 + 24) = v12;
    *(v19 + 32) = a8;
    *(v19 + 40) = a9;
    *(v19 + 48) = a1;
    *(v19 + 56) = a2;
    *(v19 + 64) = a3;
    *(v19 + 72) = v10;
    *(v19 + 80) = 12;
    swift_willThrow();

    sub_10005AD50(a5, a6, v12);
  }

  return result;
}

uint64_t sub_100059FC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = a5;
  v30 = a8;
  v25 = a7;
  v26 = a3;
  v27 = a4;
  v24 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness;
  __chkstk_darwin();
  v19 = &v22 - v18;
  v20 = v29;
  result = v30(a10, a11, a12, a1, a2, v26, v27, v28, a6);
  if (!v20)
  {
    (*(v24 + 32))(v25, v19, a10, a11, a12, a1, a13);
    return (*(v22 + 8))(v19, v23);
  }

  return result;
}

uint64_t sub_10005A148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a5;
  v24 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v22 - v17;
  if (a3 == 1)
  {
    a1 = sub_100068C4C(&off_1000AC3B8);
  }

  else
  {
  }

  (*(v16 + 16))(v18, a4, v15);
  v19 = *(AssociatedTypeWitness - 8);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    *(&v29 + 1) = AssociatedTypeWitness;
    v20 = sub_100007DE4(&v28);
    (*(v19 + 32))(v20, v18, AssociatedTypeWitness);
  }

  sub_10005AC84(&v28, v26);
  v25[0] = v23;
  v25[1] = a6;
  v25[2] = a7;
  v26[4] = a1;
  v27 = 1;

  sub_10006AD50(v25);
  sub_100039234(v25);
  return sub_100039288(&v28);
}

uint64_t sub_10005A3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a7;
  v13 = sub_100007DE4(v18);
  (*(*(a7 - 8) + 16))(v13, a2, a7);
  sub_10005AC84(v18, v16);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16[4] = a6;
  v17 = 1;

  sub_10006AD50(v15);
  sub_100039234(v15);
  return sub_100039288(v18);
}

uint64_t sub_10005A4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = *(a2 - 8);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v9, a2);
    v14 = (*(a3 + 16))(a2, a3);
    (*(v10 + 8))(v12, a2);
    return v14;
  }
}

uint64_t sub_10005A6A0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = Array.init()();
  v15[2] = a7;
  v15[3] = a2;
  sub_10006A744(a3, a4, a5, a6, v13, sub_10005ACF4, v15, a7);
}

uint64_t sub_10005A784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t sub_10005A854(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      return 0;
    }

    else
    {
      swift_getWitnessTable();
      Sequence.lazy.getter();
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      *(v5 + 24) = a3;
      type metadata accessor for LazySequence();
      swift_getWitnessTable();
      LazySequenceProtocol.map<A>(_:)();

      type metadata accessor for LazyMapSequence();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v6 = BidirectionalCollection<>.joined(separator:)();

      return v6;
    }
  }

  return result;
}

uint64_t sub_10005AA84(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005AAC0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10005AAE4(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_10005AB18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005AB60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005ABF4()
{
  result = qword_1000B5AF0;
  if (!qword_1000B5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5AF0);
  }

  return result;
}

uint64_t sub_10005AC48(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005AC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B5428, &qword_100093030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005AD0C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10005AD50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_10002BB8C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10005AD64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18)
{
  v76 = a7;
  v77 = a5;
  v88 = a4;
  v84 = a8;
  v82 = a12;
  v81 = a11;
  v22 = a6[1];
  v72 = a6[2];
  v23 = a6[4];
  v74 = a6[3];
  v75 = a9;
  v70 = v23;
  v89 = a6[5];
  LODWORD(v73) = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = type metadata accessor for Optional();
  v80 = *(v83 - 8);
  v79 = *(v80 + 64);
  __chkstk_darwin();
  v78 = &v69 - v25;
  v26 = *(a18 + 24);
  v86 = a17;
  v87 = a18;
  v27 = v22;
  v28 = v26(a17, a18);
  v29 = *(*(AssociatedTypeWitness - 8) + 48);
  v85 = a13;
  v30 = v28 | (v29(a13, 1, AssociatedTypeWitness) != 1);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10008E640;
  v90 = a1;
  v91 = a3;
  *(v31 + 32) = a1;
  *(v31 + 40) = a2;
  v92 = a2;
  *(v31 + 48) = a3;
  if (v22)
  {
    v32 = *a6;
    v113[0] = v32;
    v113[1] = v22;
    v33 = v89;
    if (v89)
    {
      v71 = v30;
      sub_100039960(v113, v102);
      v34 = v74;

      v35 = v27;
      v36 = v34;
      v37 = v33;
      v38 = v72;
      v39 = v70;
LABEL_8:

      v41 = v73;
      v30 = v71;
      goto LABEL_10;
    }

    sub_100039960(v113, v102);
    v40 = v74;

    v35 = v27;
    v36 = v40;
    v38 = v72;
  }

  else
  {
    v32 = 0;
    v38 = 0;
    v35 = 0xE000000000000000;
    v36 = 0xE000000000000000;
  }

  if (v27)
  {
    v71 = v30;
    v39 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_8;
  }

  v39 = 0;
  v41 = 0;
  v37 = 0xE000000000000000;
LABEL_10:
  LODWORD(v74) = a16;
  v73 = a15;
  v72 = a14;
  LODWORD(v89) = a10;
  *&v94 = v30;
  *(&v94 + 1) = v76;
  *&v95 = v75;
  *(&v95 + 1) = v31;
  *&v96 = v77;
  BYTE8(v96) = 0;
  *&v97 = v32;
  *(&v97 + 1) = v35;
  *&v98 = v38;
  *(&v98 + 1) = v36;
  *&v99 = v39;
  *(&v99 + 1) = v37;
  LOBYTE(v100) = v41;
  *(&v100 + 1) = 0;
  v101 = 0xE000000000000000;
  v102[0] = v30;
  v102[1] = v76;
  v102[2] = v75;
  v102[3] = v31;
  v102[4] = v77;
  v103 = 0;
  v104 = v32;
  v105 = v35;
  v106 = v38;
  v107 = v36;
  v108 = v39;
  v109 = v37;
  v110 = v41;
  v111 = 0;
  v112 = 0xE000000000000000;
  sub_10002F094(&v94, v93);
  sub_10002F0F0(v102);
  v42 = swift_allocObject();
  v43 = v86;
  v44 = v87;
  v42[2] = v86;
  v42[3] = v44;
  v45 = v82;
  v42[4] = v81;
  v42[5] = v45;
  v46 = v91;
  v47 = v92;
  v42[6] = v90;
  v42[7] = v47;
  v42[8] = v46;
  v48 = v80;
  v49 = v78;
  v50 = v83;
  (*(v80 + 16))(v78, v85, v83);
  v51 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v52 = (v79 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v53[2] = v43;
  v53[3] = v44;
  v54 = v88;
  v53[4] = v88;
  v55 = v53 + v51;
  v56 = v54;
  (*(v48 + 32))(v55, v49, v50);
  v57 = v91;
  v58 = (v53 + v52);
  v59 = v92;
  *v58 = v90;
  v58[1] = v59;
  v58[2] = v57;
  if (v56)
  {
    sub_100028B00(v56);
  }

  v60 = v97;
  v61 = v84;
  *(v84 + 72) = v98;
  v62 = v100;
  *(v61 + 88) = v99;
  *(v61 + 104) = v62;
  *(v61 + 8) = v94;
  v63 = v96;
  *(v61 + 24) = v95;
  *(v61 + 40) = v63;
  if (v74 == 255)
  {
    v64 = 4;
  }

  else
  {
    v64 = v74;
  }

  v66 = v72;
  v65 = v73;
  if (v74 == 255)
  {
    v65 = 0;
    v66 = 0;
  }

  v93[0] = 1;
  *v61 = v56;
  v67 = v101;
  *(v61 + 56) = v60;
  *(v61 + 120) = v67;
  *(v61 + 128) = v66;
  *(v61 + 136) = v65;
  *(v61 + 144) = v64;
  *(v61 + 145) = v89;
  *(v61 + 152) = sub_10005B7B8;
  *(v61 + 160) = v42;
  *(v61 + 168) = 1;
  *(v61 + 176) = sub_10005B95C;
  *(v61 + 184) = v53;
}

double sub_10005B274@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v41 = a6;
  v45 = a5;
  v44 = a4;
  v43 = a3;
  v42 = a2;
  v40 = a1;
  v38 = a11;
  v15 = *(a13 + 8);
  swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v35 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v35 - v17;
  v39 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v21 = (*(a13 + 24))(a7, a12, a13);
  v36 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a12;
  *(v23 + 24) = a13;
  v24 = v35;
  (*(v35 + 16))(v18, a7, v16);
  v25 = v38;
  if (v38 == 255)
  {
    a9 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v27 = a10;
  }

  sub_10005AD64(v40, v42, v43, v44, v37, v45, v21, v46, v36, v41, sub_10005BA88, v23, v18, a9, v27, v25, a12, v39);
  (*(v24 + 8))(v18, v16);
  v28 = v54;
  a8[8] = v53;
  a8[9] = v28;
  v29 = v56;
  a8[10] = v55;
  a8[11] = v29;
  v30 = v50;
  a8[4] = v49;
  a8[5] = v30;
  v31 = v52;
  a8[6] = v51;
  a8[7] = v31;
  v32 = v46[1];
  *a8 = v46[0];
  a8[1] = v32;
  result = *&v47;
  v34 = v48;
  a8[2] = v47;
  a8[3] = v34;
  return result;
}

double sub_10005B5C0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X5>, unsigned __int8 a6@<W6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v20 = swift_allocObject();
  v20[2] = a14;
  v20[3] = a15;
  v20[4] = a7;
  v20[5] = a9;
  sub_10005AD64(a1, a2, a3, a4, _swiftEmptyArrayStorage, a5, 0, v31, 0, a6, sub_10005B738, v20, a10, a11, a12, a13, a14, a15);
  v21 = v39;
  a8[8] = v38;
  a8[9] = v21;
  v22 = v41;
  a8[10] = v40;
  a8[11] = v22;
  v23 = v35;
  a8[4] = v34;
  a8[5] = v23;
  v24 = v37;
  a8[6] = v36;
  a8[7] = v24;
  v25 = v31[1];
  *a8 = v31[0];
  a8[1] = v25;
  result = *&v32;
  v27 = v33;
  a8[2] = v32;
  a8[3] = v27;
  return result;
}

uint64_t sub_10005B700()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005B770()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005B7F0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  if (*(v0 + 32) >= 2uLL)
  {
  }

  v6 = *(AssociatedTypeWitness - 8);
  if (!(*(v6 + 48))(v0 + v4, 1, AssociatedTypeWitness))
  {
    (*(v6 + 8))(v0 + v4, AssociatedTypeWitness);
  }

  return _swift_deallocObject(v0, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 24, v3 | 7);
}

uint64_t sub_10005B95C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for Optional() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_10005A148(a1, a2, v2[4], v2 + v8, *v9, v9[1], v9[2], v5, v6);
}

uint64_t sub_10005BA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10005BAD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10005BB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005BB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005BBC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005BC40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005BC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10005BCF0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_10005BD34()
{
  result = qword_1000B5BC0;
  if (!qword_1000B5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BC0);
  }

  return result;
}

unint64_t sub_10005BD8C()
{
  result = qword_1000B5BC8;
  if (!qword_1000B5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BC8);
  }

  return result;
}

unint64_t sub_10005BDE4()
{
  result = qword_1000B5BD0;
  if (!qword_1000B5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BD0);
  }

  return result;
}

unint64_t sub_10005BE3C()
{
  result = qword_1000B5BD8;
  if (!qword_1000B5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BD8);
  }

  return result;
}

uint64_t sub_10005BEF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, char a7)
{
  v8 = v7;
  v14 = a1;
  v15 = *a6;
  if (!*(*a6 + 16))
  {
    goto LABEL_15;
  }

  v17 = sub_1000561CC(a1, a2, a3);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  v41 = a7;
  v54 = v14;
  v42 = a4;
  sub_100058AFC(*(v15 + 56) + 72 * v17, &v50);
  v19 = *(&v52 + 1);
  v20 = *(*(&v52 + 1) + 16);
  if (v20)
  {
    v39 = v7;
    v21 = sub_10004E478(v20, 0);
    v22 = sub_100062194(&v45, (v21 + 4), v20, v19);
    v23 = v45;
    v40 = v22;

    sub_100018614(v23);
    if (v40 != v20)
    {
      __break(1u);
      goto LABEL_31;
    }

    v8 = v39;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  LOBYTE(a4) = v42;
  *&v45 = v21;

  sub_100080110(&v45);
  if (v8)
  {
LABEL_31:

    __break(1u);
    return result;
  }

  sub_100039234(&v50);
  v24 = *(v45 + 16);

  if (!v24)
  {
    v14 = v54;
LABEL_15:
    *(&v46 + 1) = &type metadata for Bool;
    LOBYTE(v45) = a4 & 1;
    sub_10005AC84(&v45, v51 + 8);
    *&v50 = v14;
    *(&v50 + 1) = a2;
    *&v51[0] = a3;
    *(&v52 + 1) = a5;
    v53 = 1;

    sub_10006AD50(&v50);
    sub_100039234(&v50);
    v27 = &v45;
    return sub_100002BCC(v27, &qword_1000B5428, &qword_100093030);
  }

  if (v41)
  {
    v14 = v54;
    if (v41 == 1)
    {
      if (*(v15 + 16) && (v25 = sub_1000561CC(v54, a2, a3), (v26 & 1) != 0))
      {
        sub_100058AFC(*(v15 + 56) + 72 * v25, &v45);
        v51[1] = v47;
        v52 = v48;
        v53 = v49;
        v50 = v45;
        v51[0] = v46;
      }

      else
      {
        BYTE8(v51[0]) = v42 & 1;
        *&v50 = v14;
        *(&v50 + 1) = a2;
        *&v51[0] = a3;
        *&v52 = &type metadata for Bool;
        *(&v52 + 1) = &_swiftEmptySetSingleton;
        v53 = 1;
      }

      sub_10005AC84(v51 + 8, &v45);
      sub_1000021C0(&qword_1000B5428, &qword_100093030);
      v36 = swift_dynamicCast();
      v37 = v43[0];
      if (!v36)
      {
        v37 = v42;
      }

      *(&v46 + 1) = &type metadata for Bool;
      LOBYTE(v45) = v37 & 1;
      sub_100062CA0(&v45, v51 + 8);

      sub_100055BDC(v38);
      sub_10006AD50(&v50);
      return sub_100039234(&v50);
    }

    goto LABEL_15;
  }

  result = v54;
  if (*(v15 + 16))
  {
    result = sub_1000561CC(v54, a2, a3);
    if (v29)
    {
      sub_100058AFC(*(v15 + 56) + 72 * result, &v50);
      sub_10005AC84(v51 + 8, &v45);
      sub_1000021C0(&qword_1000B5428, &qword_100093030);
      if (swift_dynamicCast() & 1) == 0 || v43[0] == 2 || ((v43[0] ^ v42))
      {
        v30 = *(&v52 + 1);
        v31 = a6[1];
        sub_10002A1BC();
        swift_allocError();
        *v32 = v30;
        *(v32 + 8) = a5;
        *(v32 + 16) = v31;
        v33 = v48;
        v34 = v47;
        v35 = v45;
        *(v32 + 40) = v46;
        *(v32 + 24) = v35;
        *(v32 + 56) = v34;
        *(v32 + 72) = v33;
        *(v32 + 80) = 10;
        swift_willThrow();

        return sub_100039234(&v50);
      }

      v44 = &type metadata for Bool;
      v43[0] = v42 & 1;
      sub_10005AC84(v43, &v46 + 8);
      *&v45 = v54;
      *(&v45 + 1) = a2;
      *&v46 = a3;
      *(&v48 + 1) = a5;
      v49 = 1;

      sub_10006AD50(&v45);
      sub_100039234(&v45);
      sub_100039234(&v50);
      v27 = v43;
      return sub_100002BCC(v27, &qword_1000B5428, &qword_100093030);
    }
  }

  return result;
}

uint64_t sub_10005C3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, void *a8, uint64_t a9)
{
  v10 = v9;
  LODWORD(v88) = a7;
  v99 = *(a8 - 1);
  __chkstk_darwin();
  v79 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v81 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v82 = &v71 - v20;
  v87 = v19;
  v86 = *(v19 - 8);
  __chkstk_darwin();
  v80 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v71 - v22;
  __chkstk_darwin();
  v85 = &v71 - v23;
  v24 = *a6;
  if (!*(*a6 + 16))
  {
    goto LABEL_19;
  }

  v25 = sub_1000561CC(a1, a2, a3);
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  v77 = a4;
  *&v78 = a1;
  *(&v78 + 1) = a2;
  sub_100058AFC(*(v24 + 56) + 72 * v25, v95);
  v27 = v97;
  v28 = *(v97 + 16);
  if (v28)
  {
    v74 = a3;
    v75 = a6;
    v76 = a5;
    v72 = v9;
    v29 = sub_10004E478(v28, 0);
    v73 = sub_100062194(&v89, (v29 + 4), v28, v27);
    v30 = v89;

    sub_100018614(v30);
    if (v73 != v28)
    {
      __break(1u);
      goto LABEL_29;
    }

    v10 = v72;
    a5 = v76;
    a6 = v75;
    a3 = v74;
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  a4 = v77;
  *&v89 = v29;

  sub_100080110(&v89);
  if (v10)
  {
LABEL_29:

    __break(1u);
    return result;
  }

  v31 = *(v89 + 16);

  result = sub_100039234(v95);
  if (!v31)
  {
    a2 = *(&v78 + 1);
    a1 = v78;
LABEL_19:
    *(&v90[0] + 1) = a8;
    v52 = sub_100007DE4(&v89);
    (*(v99 + 16))(v52, a4, a8);
    sub_10005AC84(&v89, v96);
    v95[0] = a1;
    v95[1] = a2;
    v95[2] = a3;
    v97 = a5;
    v98 = 1;

    sub_10006AD50(v95);
    sub_100039234(v95);
    v53 = &v89;
    return sub_100002BCC(v53, &qword_1000B5428, &qword_100093030);
  }

  a1 = v78;
  if (v88)
  {
    if (v88 == 1)
    {
      __chkstk_darwin();
      *(&v71 - 2) = a8;
      *(&v71 - 1) = v33;
      return sub_10006AA44(a1, *(&v78 + 1), a3, a5, a4, String.init(argument:), (&v71 - 4), a8);
    }

    a2 = *(&v78 + 1);
    goto LABEL_19;
  }

  v88 = a9;
  if (*(v24 + 16))
  {
    result = sub_1000561CC(v78, *(&v78 + 1), a3);
    if (v34)
    {
      v74 = a3;
      v75 = a6;
      v76 = a5;
      sub_100058AFC(*(v24 + 56) + 72 * result, v95);
      sub_10005AC84(v96, &v89);
      sub_1000021C0(&qword_1000B5428, &qword_100093030);
      v35 = v85;
      v36 = swift_dynamicCast();
      v37 = v99;
      v38 = *(v99 + 56);
      v38(v35, v36 ^ 1u, 1, a8);
      v39 = *(v37 + 16);
      v40 = v83;
      v72 = v37 + 16;
      v71 = v39;
      v39(v83, a4, a8);
      v38(v40, 0, 1, a8);
      v41 = *(TupleTypeMetadata2 + 48);
      v42 = *(v86 + 16);
      v43 = v82;
      v44 = v35;
      v45 = v87;
      v42(v82, v44, v87);
      v73 = v41;
      v42(&v41[v43], v40, v45);
      v46 = *(v37 + 48);
      if (v46(v43, 1, a8) == 1)
      {
        v47 = *(v86 + 8);
        v48 = v87;
        v47(v40, v87);
        v49 = v46(&v73[v43], 1, a8);
        v50 = v48;
        if (v49 == 1)
        {
          v47(v43, v48);
          v47(v85, v48);
          v51 = v76;
LABEL_27:
          v94[3] = a8;
          v70 = sub_100007DE4(v94);
          v71(v70, v77, a8);
          sub_10005AC84(v94, v90 + 8);
          v89 = v78;
          *&v90[0] = v74;
          v92 = v51;
          v93 = 1;

          sub_10006AD50(&v89);
          sub_100039234(&v89);
          sub_100039234(v95);
          v53 = v94;
          return sub_100002BCC(v53, &qword_1000B5428, &qword_100093030);
        }
      }

      else
      {
        v54 = v80;
        v42(v80, v43, v87);
        v55 = v73;
        if (v46(&v73[v43], 1, a8) != 1)
        {
          v63 = v99;
          v64 = v55 + v43;
          v65 = v54;
          v66 = v79;
          (*(v99 + 32))(v79, v64, a8);
          LODWORD(v88) = dispatch thunk of static Equatable.== infix(_:_:)();
          v67 = *(v63 + 8);
          v67(v66, a8);
          v68 = *(v86 + 8);
          v69 = v87;
          v68(v83, v87);
          v67(v65, a8);
          v68(v43, v69);
          v68(v85, v69);
          v51 = v76;
          v56 = v75;
          if (v88)
          {
            goto LABEL_27;
          }

LABEL_25:
          v57 = v97;
          v58 = v56[1];
          sub_10002A1BC();
          swift_allocError();
          *v59 = v57;
          *(v59 + 8) = v51;
          *(v59 + 16) = v58;
          v60 = v91;
          v61 = v90[1];
          v62 = v89;
          *(v59 + 40) = v90[0];
          *(v59 + 24) = v62;
          *(v59 + 56) = v61;
          *(v59 + 72) = v60;
          *(v59 + 80) = 10;
          swift_willThrow();

          return sub_100039234(v95);
        }

        v47 = *(v86 + 8);
        v50 = v87;
        v47(v83, v87);
        (*(v99 + 8))(v54, a8);
      }

      v51 = v76;
      v56 = v75;
      (*(v81 + 8))(v43, TupleTypeMetadata2);
      v47(v85, v50);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_10005CE10(_OWORD *a1)
{
  v3 = *v1;
  v42 = *(*v1 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_100043B48((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[192 * v5];
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[3];
    *(v6 + 4) = a1[2];
    *(v6 + 5) = v9;
    *(v6 + 2) = v7;
    *(v6 + 3) = v8;
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[7];
    *(v6 + 8) = a1[6];
    *(v6 + 9) = v12;
    *(v6 + 6) = v10;
    *(v6 + 7) = v11;
    v13 = a1[8];
    v14 = a1[9];
    v15 = a1[11];
    *(v6 + 12) = a1[10];
    *(v6 + 13) = v15;
    *(v6 + 10) = v13;
    *(v6 + 11) = v14;
    *v44 = v3;
    v16 = *a1;
    if (*a1 >= 2uLL)
    {
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    v43 = *(v16 + 2);
    if (!v43)
    {
      break;
    }

    sub_1000289DC(a1, v45);
    v17 = 0;
    v3 = (v16 + 3);
    while (v17 < *(v16 + 2))
    {
      v21 = *(v3 - 2);
      v20 = *(v3 - 1);
      v22 = *v3;
      if ((*v3 & 0xC0) == 0x40)
      {
        v23 = 64;
      }

      else
      {
        v23 = *v3;
      }

      v24 = *(v44[1] + 2);
      sub_10002BB8C(*(v3 - 2), *(v3 - 1), *v3);
      if (v24)
      {
        sub_10002BB8C(v21, v20, v22);
        sub_1000560F8(v21, v20, v23);
        v26 = v25;
        sub_100028AE8(v21, v20, v22);
        if (v26)
        {
          sub_100028AE8(v21, v20, v22);
          goto LABEL_11;
        }
      }

      a1 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = v44[1];
      v28 = v45[0];
      v29 = sub_1000560F8(v21, v20, v23);
      v31 = *(v28 + 16);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_32;
      }

      v35 = v30;
      if (*(v28 + 24) < v34)
      {
        sub_10006B49C(v34, isUniquelyReferenced_nonNull_native);
        v29 = sub_1000560F8(v21, v20, v23);
        if ((v35 & 1) != (v36 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_24:
        v16 = a1;
        if ((v35 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v40 = v29;
      sub_10006AE74();
      v29 = v40;
      v16 = a1;
      if ((v35 & 1) == 0)
      {
LABEL_25:
        v19 = v45[0];
        *(v45[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v37 = *(v19 + 6) + 24 * v29;
        *v37 = v21;
        *(v37 + 8) = v20;
        *(v37 + 16) = v23;
        *(*(v19 + 7) + 8 * v29) = v42;
        v38 = *(v19 + 2);
        v33 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v33)
        {
          goto LABEL_33;
        }

        *(v19 + 2) = v39;
        goto LABEL_10;
      }

LABEL_9:
      v18 = v29;
      sub_100028AE8(v21, v20, v22);
      v19 = v45[0];
      *(*(v45[0] + 56) + 8 * v18) = v42;
LABEL_10:
      v44[1] = v19;
LABEL_11:
      ++v17;
      v3 += 24;
      if (v43 == v17)
      {
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v3 = sub_100043B48(0, v42 + 1, 1, v3);
  }

  sub_1000289DC(a1, v45);
}

void *sub_10005D14C@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10005D178(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10005D1C0(uint64_t (**a1)(), unint64_t *a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x180uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    v7 = (*v2 + 192 * v6);
    v8 = v7[2];
    v9 = v7[3];
    v10 = v7[5];
    *(result + 2) = v7[4];
    *(result + 3) = v10;
    *result = v8;
    *(result + 1) = v9;
    v11 = v7[6];
    v12 = v7[7];
    v13 = v7[9];
    *(result + 6) = v7[8];
    *(result + 7) = v13;
    *(result + 4) = v11;
    *(result + 5) = v12;
    v14 = v7[10];
    v15 = v7[11];
    v16 = v7[13];
    *(result + 10) = v7[12];
    *(result + 11) = v16;
    *(result + 8) = v14;
    *(result + 9) = v15;
    v17 = *(result + 3);
    *(result + 14) = *(result + 2);
    *(result + 15) = v17;
    v18 = *(result + 1);
    *(result + 12) = *result;
    *(result + 13) = v18;
    v19 = *(result + 7);
    *(result + 18) = *(result + 6);
    *(result + 19) = v19;
    v20 = *(result + 5);
    *(result + 16) = *(result + 4);
    *(result + 17) = v20;
    v21 = *(result + 11);
    *(result + 22) = *(result + 10);
    *(result + 23) = v21;
    v22 = *(result + 9);
    *(result + 20) = *(result + 8);
    *(result + 21) = v22;
    return sub_10005D2B4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10005D2BC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v5;
  }

  return result;
}

void sub_10005D31C(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_10005D350@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_10005D37C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1000622A8(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_10005D3B8(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_10005D3E0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_10005D3FC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_10005D418(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_10005D434@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_10005D458(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_10005D47C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

char *sub_10005D498()
{
  v1 = sub_10004E58C(*v0, v0[1]);

  return v1;
}

unint64_t sub_10005D514()
{
  result = qword_1000B5BF0;
  if (!qword_1000B5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BF0);
  }

  return result;
}

unint64_t sub_10005D5A8()
{
  result = qword_1000B5C08;
  if (!qword_1000B5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C08);
  }

  return result;
}

unint64_t sub_10005D644()
{
  result = qword_1000B5C20;
  if (!qword_1000B5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C20);
  }

  return result;
}

unint64_t sub_10005D714()
{
  result = qword_1000B5C38;
  if (!qword_1000B5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C38);
  }

  return result;
}

uint64_t sub_10005D7A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(&qword_1000B5C00, &qword_100093BC0);
    sub_10005D5A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005D860(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(&qword_1000B5C18, &qword_100093BC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005D8D8()
{
  result = qword_1000B5C50;
  if (!qword_1000B5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C50);
  }

  return result;
}