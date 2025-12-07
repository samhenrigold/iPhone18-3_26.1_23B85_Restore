void sub_100001628()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_10000B0C0();
    v4 = v3;

    qword_100014558 = v2;
    unk_100014560 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000016B4()
{
  v0 = sub_10000B010();
  sub_10000561C(v0, qword_100014568);
  sub_100001BDC(v0, qword_100014568);
  if (qword_100014260 != -1)
  {
    swift_once();
  }

  return sub_10000B000();
}

id sub_100001770()
{
  result = [objc_allocWithZone(TUCallProviderManager) init];
  qword_100014580 = result;
  return result;
}

void *sub_1000017A4(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_10000B1F0();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1000055BC(i, v5);
    sub_100005680();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_10000B1D0();
    sub_10000B200();
    sub_10000B210();
    sub_10000B1E0();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_100001890()
{
  v0 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10000AF10();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000AFA0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000B0A0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000AF20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10000AEC0();
  sub_10000561C(v10, static SimFocusAccountEntity.typeDisplayRepresentation);
  sub_100001BDC(v10, static SimFocusAccountEntity.typeDisplayRepresentation);
  sub_10000B040();
  sub_10000AF90();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10000AF40();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10000AEB0();
}

uint64_t SimFocusAccountEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100014278 != -1)
  {
    swift_once();
  }

  v0 = sub_10000AEC0();

  return sub_100001BDC(v0, static SimFocusAccountEntity.typeDisplayRepresentation);
}

uint64_t sub_100001BDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static SimFocusAccountEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014278 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEC0();
  v3 = sub_100001BDC(v2, static SimFocusAccountEntity.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SimFocusAccountEntity.displayRepresentation.getter(void *a1)
{
  v2 = sub_100001F24(&qword_1000142C0, &qword_10000B7B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_10000AF20();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = [a1 name];
  sub_10000B0C0();

  sub_10000AF00();
  (*(v9 + 16))(v12, v14, v8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v16 = sub_10000AE50();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_10000AE60();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_100001F24(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t SimFocusAccountEntity.id.getter(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_10000B0C0();

  return v2;
}

void sub_100001FC0(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_10000B0C0();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_10000201C(uint64_t a1)
{
  v2 = sub_100004BFC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002068()
{
  v1 = sub_100001F24(&qword_1000142C0, &qword_10000B7B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_10000AF20();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = [*v0 name];
  sub_10000B0C0();

  sub_10000AF00();
  (*(v8 + 16))(v11, v13, v7);
  (*(v8 + 56))(v6, 1, 1, v7);
  v15 = sub_10000AE50();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_10000AE60();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1000022C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000238C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000238C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002480(uint64_t a1)
{
  v2 = sub_100004EC8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t SimFocusAccountEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005894;

  return sub_100003E40(a1);
}

uint64_t SimFocusAccountEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005894;

  return sub_100004438(a1, a2);
}

uint64_t SimFocusAccountEntityQuery.suggestedEntities()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005894;

  return sub_10000496C();
}

uint64_t sub_1000026C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100002780;

  return sub_100004438(a2, a3);
}

uint64_t sub_100002780(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100002890(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005878;

  return sub_10000496C();
}

uint64_t sub_100002934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000029F4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000029F4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100002AF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004D5C();
  *v5 = v2;
  v5[1] = sub_10000238C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100002BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005874;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100002C60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005878;

  return sub_10000524C();
}

uint64_t variable initialization expression of PhoneFocusFilterAction._accounts()
{
  v0 = sub_10000AE90();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100001F24(&qword_1000142D0, &unk_10000B7F0);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_10000AF10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000AFA0();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10000B0A0();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000AF20();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_100001F24(&qword_1000142D8, &unk_10000C240);
  sub_10000B040();
  sub_10000AF90();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_10000AF30();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_10000ADD0();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100004BA8();
  sub_100004BFC();
  return sub_10000AE00();
}

uint64_t variable initialization expression of PhoneFocusFilterAction._keychain()
{
  sub_100001F24(&qword_1000142F0, &qword_10000B800);
  sub_10000AD10();
  sub_10000AD00();
  return sub_10000ACE0();
}

Swift::Int sub_1000032A4(uint64_t a1, uint64_t a2)
{
  sub_10000B2C0();
  swift_getWitnessTable();
  sub_10000AFC0();
  return sub_10000B2D0();
}

uint64_t sub_10000330C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_10000AFB0();
}

unint64_t sub_100003378(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003444(v11, 0, 0, 1, a1, a2);
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
    sub_1000055BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005570(v11);
  return v7;
}

unint64_t sub_100003444(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003550(a5, a6);
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
    result = sub_10000B1C0();
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

void *sub_100003550(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000359C(a1, a2);
  sub_1000036CC(&off_100010B08);
  return v3;
}

void *sub_10000359C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000037B8(v5, 0);
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

  result = sub_10000B1C0();
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
        v10 = sub_10000B0E0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000037B8(v10, 0);
        result = sub_10000B1A0();
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

uint64_t sub_1000036CC(uint64_t result)
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

  result = sub_10000382C(result, v11, 1, v3);
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

void *sub_1000037B8(uint64_t a1, uint64_t a2)
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

  sub_100001F24(&qword_100014380, &qword_10000BCB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000382C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F24(&qword_100014380, &qword_10000BCB8);
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

uint64_t sub_100003920(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

void *sub_1000039CC()
{
  v37 = sub_10000AF80();
  v0 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100014270 != -1)
  {
    swift_once();
  }

  v2 = [qword_100014580 telephonyProvider];
  v3 = [v2 prioritizedSenderIdentities];

  v4 = [v3 array];
  v5 = sub_10000B110();

  v6 = sub_1000017A4(v5);

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 > 1)
    {
      v39 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

LABEL_31:

    return _swiftEmptyArrayStorage;
  }

  if (sub_10000B220() <= 1)
  {
    goto LABEL_31;
  }

  v39 = _swiftEmptyArrayStorage;
  v32 = sub_10000B220();
  if (!v32)
  {
    goto LABEL_31;
  }

  v8 = v32;
  if (v32 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_9:
  v9 = 0;
  v38 = v7 & 0xC000000000000001;
  v34 = (v0 + 8);
  v10 = _swiftEmptyArrayStorage;
  v11 = &KeyChainSIMData;
  v35 = v8;
  do
  {
    if (v38)
    {
      v12 = sub_10000B1B0();
    }

    else
    {
      v12 = *(v7 + 8 * v9 + 32);
    }

    v13 = v12;
    v14 = [v12 v11[4].name];
    v15 = sub_10000B0C0();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = v11;
      v20 = v7;
      v21 = [v13 accountUUID];
      v22 = v36;
      sub_10000AF70();

      sub_10000AF60();
      (*v34)(v22, v37);
      v11 = v19;
      v23 = [v13 v19[4].name];
      if (!v23)
      {
        sub_10000B0C0();
        v23 = sub_10000B0B0();
      }

      v24 = [v13 handle];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 normalizedValue];

        if (v26)
        {
          sub_10000B0C0();
        }
      }

      v27 = objc_allocWithZone(TUSIMFocusState);
      v28 = sub_10000B0B0();

      v29 = sub_10000B0B0();

      v30 = [v27 initWithIdentifier:v28 name:v23 phNumber:v29 focusAllowCalls:0];

      v31 = v30;
      sub_10000B0F0();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10000B130();
      }

      sub_10000B140();

      v10 = v39;
      v7 = v20;
      v8 = v35;
    }

    else
    {
    }

    ++v9;
  }

  while (v8 != v9);

  return v10;
}

uint64_t sub_100003E60()
{
  v49 = v0;
  v1 = sub_1000039CC();
  v2 = v1;
  v48[0] = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_17:
    v3 = sub_10000B220();
    v46 = v2;
    v47 = v0;
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v45 = v2 & 0xC000000000000001;
      v43 = v0 + 2;
      v44 = v2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v45)
        {
          v6 = sub_10000B1B0();
        }

        else
        {
          if (v4 >= *(v44 + 16))
          {
            goto LABEL_16;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v2 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v0 = v3;
        v8 = v47[4];
        v9 = [v6 identifier];
        v10 = sub_10000B0C0();
        v12 = v11;

        v47[2] = v10;
        v47[3] = v12;
        v13 = swift_task_alloc();
        *(v13 + 16) = v43;
        LOBYTE(v8) = sub_100003920(sub_100005720, v13, v8);

        if (v8)
        {
          sub_10000B1D0();
          sub_10000B200();
          sub_10000B210();
          sub_10000B1E0();
        }

        else
        {
        }

        v3 = v0;
        ++v4;
        v5 = v2 == v0;
        v2 = v46;
      }

      while (!v5);
      v0 = v47;
      v14 = v48[0];
      if ((v48[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v1;
    v47 = v0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v14 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v14 & 0x4000000000000000) == 0)
    {
      v15 = *(v14 + 16);
      goto LABEL_21;
    }
  }

LABEL_41:
  v15 = sub_10000B220();
LABEL_21:
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v48[0] = _swiftEmptyArrayStorage;
    result = sub_10000B1F0();
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        sub_10000B1B0();
      }

      else
      {
        v19 = *(v14 + 8 * v18 + 32);
      }

      if (qword_100014268 != -1)
      {
        swift_once();
      }

      v20 = sub_10000B010();
      sub_100001BDC(v20, qword_100014568);
      v21 = sub_10000AFF0();
      v22 = sub_10000B160();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "simFocus: init with account", v23, 2u);
      }

      ++v18;
      sub_10000B1D0();
      sub_10000B200();
      sub_10000B210();
      sub_10000B1E0();
    }

    while (v15 != v18);
    v0 = v47;
    v16 = v48[0];
  }

  if (qword_100014268 != -1)
  {
    swift_once();
  }

  v24 = sub_10000B010();
  sub_100001BDC(v24, qword_100014568);

  v25 = sub_10000AFF0();
  v26 = sub_10000B160();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v27 = 136315906;
    v28 = sub_10000B120();
    v30 = sub_100003378(v28, v29, v48);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    sub_10000B170();
    v31 = sub_10000B120();
    v33 = v32;

    v34 = sub_100003378(v31, v33, v48);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2080;
    v35 = sub_10000B120();
    v37 = v36;

    v38 = sub_100003378(v35, v37, v48);

    *(v27 + 24) = v38;
    *(v27 + 32) = 2080;
    v0 = v47;
    v39 = sub_10000B120();
    v41 = sub_100003378(v39, v40, v48);

    *(v27 + 34) = v41;
    _os_log_impl(&_mh_execute_header, v25, v26, "entities for identifiers: %s all %s found %s result %s", v27, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v42 = v0[1];

  return v42(v16);
}

uint64_t sub_100004438(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_100004458, 0, 0);
}

uint64_t sub_100004458()
{
  v43 = v0;
  v1 = sub_1000039CC();
  v2 = v1;
  v42 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10000B220())
  {
    v4 = _swiftEmptyArrayStorage;
    v41 = v0;
    if (!i)
    {
      break;
    }

    v5 = 0;
    v39 = v2 & 0xFFFFFFFFFFFFFF8;
    v40 = v2 & 0xC000000000000001;
    v38 = i;
    while (1)
    {
      if (v40)
      {
        v6 = sub_10000B1B0();
      }

      else
      {
        if (v5 >= *(v39 + 16))
        {
          goto LABEL_33;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = v2;
      v0 = v41;
      v10 = v41[6];
      v11 = v41[7];
      v12 = [v6 name];
      v13 = sub_10000B0C0();
      v15 = v14;

      v41[2] = v13;
      v41[3] = v15;
      v41[4] = v10;
      v41[5] = v11;
      sub_1000056CC();
      LOBYTE(v12) = sub_10000B190();

      if (v12)
      {
        sub_10000B1D0();
        sub_10000B200();
        sub_10000B210();
        sub_10000B1E0();
      }

      else
      {
      }

      v2 = v9;
      ++v5;
      if (v8 == v38)
      {
        v0 = v41;
        v4 = v42;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_15:
  if (qword_100014268 != -1)
  {
    swift_once();
  }

  v16 = sub_10000B010();
  sub_100001BDC(v16, qword_100014568);

  v17 = sub_10000AFF0();
  v18 = sub_10000B160();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[6];
    v19 = v0[7];
    v21 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_100003378(v20, v19, &v42);
    *(v21 + 12) = 2080;
    sub_10000B170();
    v22 = sub_10000B120();
    v24 = v23;

    v25 = sub_100003378(v22, v24, &v42);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2080;
    v26 = sub_10000B120();
    v28 = sub_100003378(v26, v27, &v42);

    *(v21 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "simFocus: entities matching: %s all %s found %s", v21, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if ((v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v29 = sub_10000B220();
    if (v29)
    {
      goto LABEL_23;
    }

LABEL_36:

    v36 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v29 = *(v4 + 16);
  if (!v29)
  {
    goto LABEL_36;
  }

LABEL_23:
  v42 = _swiftEmptyArrayStorage;
  result = sub_10000B1F0();
  if (v29 < 0)
  {
    __break(1u);
    return result;
  }

  v31 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_10000B1B0();
    }

    else
    {
      v32 = *(v4 + 8 * v31 + 32);
    }

    v33 = sub_10000AFF0();
    v34 = sub_10000B160();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "simFocus: init with account", v35, 2u);
    }

    ++v31;
    sub_10000B1D0();
    sub_10000B200();
    sub_10000B210();
    sub_10000B1E0();
  }

  while (v29 != v31);

  v36 = v42;
LABEL_37:
  v37 = v41[1];

  return v37(v36);
}

uint64_t sub_100004988()
{
  v1 = sub_1000039CC();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_10000B220();
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  result = sub_10000B1F0();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_10000B1B0();
    }

    else
    {
      v6 = *(v2 + 8 * v5 + 32);
    }

    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v7 = sub_10000B010();
    sub_100001BDC(v7, qword_100014568);
    v8 = sub_10000AFF0();
    v9 = sub_10000B160();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "simFocus: init with account", v10, 2u);
    }

    ++v5;
    sub_10000B1D0();
    sub_10000B200();
    sub_10000B210();
    sub_10000B1E0();
  }

  while (v3 != v5);
LABEL_15:

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

unint64_t sub_100004BA8()
{
  result = qword_1000142E0;
  if (!qword_1000142E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142E0);
  }

  return result;
}

unint64_t sub_100004BFC()
{
  result = qword_1000142E8;
  if (!qword_1000142E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142E8);
  }

  return result;
}

unint64_t sub_100004C54()
{
  result = qword_1000142F8;
  if (!qword_1000142F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142F8);
  }

  return result;
}

unint64_t sub_100004CAC()
{
  result = qword_100014300;
  if (!qword_100014300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014300);
  }

  return result;
}

unint64_t sub_100004D04()
{
  result = qword_100014308;
  if (!qword_100014308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014308);
  }

  return result;
}

unint64_t sub_100004D5C()
{
  result = qword_100014310;
  if (!qword_100014310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014310);
  }

  return result;
}

unint64_t sub_100004DC0()
{
  result = qword_100014318;
  if (!qword_100014318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014318);
  }

  return result;
}

unint64_t sub_100004E18()
{
  result = qword_100014320;
  if (!qword_100014320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014320);
  }

  return result;
}

unint64_t sub_100004E70()
{
  result = qword_100014328;
  if (!qword_100014328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014328);
  }

  return result;
}

unint64_t sub_100004EC8()
{
  result = qword_100014330;
  if (!qword_100014330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014330);
  }

  return result;
}

unint64_t sub_100004F2C()
{
  result = qword_100014338;
  if (!qword_100014338)
  {
    sub_100004F90(&qword_100014340, &qword_10000B950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014338);
  }

  return result;
}

uint64_t sub_100004F90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004FDC()
{
  result = qword_100014348;
  if (!qword_100014348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014348);
  }

  return result;
}

unint64_t sub_100005034()
{
  result = qword_100014350;
  if (!qword_100014350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014350);
  }

  return result;
}

unint64_t sub_10000508C()
{
  result = qword_100014358;
  if (!qword_100014358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014358);
  }

  return result;
}

unint64_t sub_1000050E8()
{
  result = qword_100014360;
  if (!qword_100014360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014360);
  }

  return result;
}

unint64_t sub_100005140()
{
  result = qword_100014368;
  if (!qword_100014368)
  {
    sub_100004F90(&qword_100014370, qword_10000BAC8);
    sub_100004E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014368);
  }

  return result;
}

unint64_t sub_1000051C8()
{
  result = qword_100014378;
  if (!qword_100014378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014378);
  }

  return result;
}

uint64_t sub_100005268()
{
  v20 = v0;
  v1 = sub_1000039CC();
  if (qword_100014268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000B010();
  sub_100001BDC(v2, qword_100014568);

  v3 = sub_10000AFF0();
  v4 = sub_10000B160();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    sub_10000B170();
    v7 = sub_10000B120();
    v9 = sub_100003378(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "simFocus: All SIM accounts: %s", v5, 0xCu);
    sub_100005570(v6);
  }

  if (v1 >> 62)
  {
    v10 = sub_10000B220();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_17:

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_7:
  v19 = _swiftEmptyArrayStorage;
  result = sub_10000B1F0();
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v12 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_10000B1B0();
    }

    else
    {
      v13 = *(v1 + 8 * v12 + 32);
    }

    v14 = sub_10000AFF0();
    v15 = sub_10000B160();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "simFocus: init with account", v16, 2u);
    }

    ++v12;
    sub_10000B1D0();
    sub_10000B200();
    sub_10000B210();
    sub_10000B1E0();
  }

  while (v10 != v12);

  v17 = v19;
LABEL_18:
  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_100005570(void *a1)
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

uint64_t sub_1000055BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000561C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100005680()
{
  result = qword_100014388;
  if (!qword_100014388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014388);
  }

  return result;
}

unint64_t sub_1000056CC()
{
  result = qword_100014390;
  if (!qword_100014390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014390);
  }

  return result;
}

uint64_t sub_100005720(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000B260() & 1;
  }
}

void type metadata accessor for CFString()
{
  if (!qword_100014398)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014398);
    }
  }
}

uint64_t sub_100005830(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005898()
{
  sub_100006B9C();
  result = sub_10000B180();
  qword_1000145A0 = result;
  return result;
}

uint64_t sub_1000058DC()
{
  sub_100006B9C();
  result = sub_10000B180();
  qword_1000145A8 = result;
  return result;
}

uint64_t sub_100005964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001F24(&qword_100014458, &qword_10000BDE0);
  result = sub_10000B240();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_100006B38(v21, v31);
      }

      else
      {
        sub_1000055BC(v21, v31);
        v22 = v20;
      }

      sub_10000B2C0();
      type metadata accessor for CFString();
      sub_100005830(&qword_100014460, &unk_10000BD28);
      sub_10000AFC0();
      result = sub_10000B2D0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_100006B38(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_100005C30(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10000A6B8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100005DD8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100005964(v13, a3 & 1);
    v8 = sub_10000A6B8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString();
      result = sub_10000B270();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100005570(v19);

    return sub_100006B38(a1, v19);
  }

  else
  {
    sub_100005D70(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_100005D70(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100006B38(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_100005DD8()
{
  v1 = v0;
  sub_100001F24(&qword_100014458, &qword_10000BDE0);
  v2 = *v0;
  v3 = sub_10000B230();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000055BC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100006B38(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

unint64_t sub_100005F58()
{
  sub_100001F24(&qword_100014468, &qword_10000BDE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BDA0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString();
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v1;
  *(inited + 72) = kSecAttrService;
  v2 = qword_100014288;
  v3 = kSecClass;
  v4 = kSecClassGenericPassword;
  v5 = kSecAttrService;
  if (v2 != -1)
  {
    swift_once();
  }

  v6 = qword_1000145A8;
  v7 = sub_100006B9C();
  *(inited + 80) = v6;
  *(inited + 104) = v7;
  *(inited + 112) = kSecAttrAccessGroup;
  v8 = qword_100014280;
  v9 = v6;
  v10 = kSecAttrAccessGroup;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_1000145A0;
  *(inited + 144) = v7;
  *(inited + 120) = v11;
  v12 = v11;
  v13 = sub_10000A948(inited);
  swift_setDeallocating();
  sub_100001F24(&qword_100014478, &qword_10000C2A0);
  swift_arrayDestroy();
  return v13;
}

void sub_1000060E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005F58();
  type metadata accessor for CFString();
  v26 = v5;
  *&v25 = kSecAttrAccessibleAfterFirstUnlock;
  sub_100006B38(&v25, v24);
  v6 = kSecAttrAccessibleAfterFirstUnlock;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  sub_100005C30(v24, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
  v8 = v27;
  v26 = &type metadata for Data;
  *&v25 = a1;
  *(&v25 + 1) = a2;
  sub_100006B38(&v25, v24);
  sub_100006A7C(a1, a2);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v8;
  sub_100005C30(v24, kSecValueData, v9);
  sub_100005830(&qword_1000143A0, &unk_10000BD54);
  isa = sub_10000B030().super.isa;

  v11 = SecItemAdd(isa, 0);

  if (v11 == sub_10000B020())
  {
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v12 = sub_10000B010();
    sub_100001BDC(v12, qword_100014568);
    v13 = sub_10000AFF0();
    v14 = sub_10000B150();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "simFocus: Successfully added item to keychain", v15, 2u);
    }
  }

  else
  {
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v16 = sub_10000B010();
    sub_100001BDC(v16, qword_100014568);
    v17 = sub_10000AFF0();
    v18 = sub_10000B150();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      sub_100006B48();
      swift_allocError();
      *v21 = v11;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "simFocus: failed adding item to key chain, error: %@", v19, 0xCu);
      sub_100006AD0(v20);
    }

    sub_100006B48();
    swift_allocError();
    *v23 = v11;
    swift_willThrow();
  }
}

void sub_100006440(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    a2.n128_u64[0] = 138412802;
    v41 = a2;
    do
    {
      v18 = *v3;
      v19 = [v18 identifier];
      if (!v19)
      {
        sub_10000B0C0();
        v19 = sub_10000B0B0();
      }

      v20 = [v18 name];
      if (!v20)
      {
        sub_10000B0C0();
        v20 = sub_10000B0B0();
      }

      v21 = [v18 phNumber];
      if (!v21)
      {
        sub_10000B0C0();
        v21 = sub_10000B0B0();
      }

      v22 = [objc_allocWithZone(TUSIMFocusState) initWithIdentifier:v19 name:v20 phNumber:v21 focusAllowCalls:1];

      v23 = v22;
      sub_10000B0F0();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10000B130();
      }

      sub_10000B140();
      if (qword_100014268 != -1)
      {
        swift_once();
      }

      v24 = sub_10000B010();
      sub_100001BDC(v24, qword_100014568);
      v25 = v18;
      v26 = v23;
      v27 = sub_10000AFF0();
      v28 = sub_10000B150();

      if (os_log_type_enabled(v27, v28))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v4 = v41.n128_u32[0];
        *(v4 + 4) = v26;
        *v5 = v26;
        *(v4 + 12) = 2080;
        v42 = v26;
        v6 = v2;
        v7 = [v25 phNumber];
        v43 = v3;
        v8 = sub_10000B0C0();
        v10 = v9;

        v11 = sub_100003378(v8, v10, &v44);

        *(v4 + 14) = v11;
        *(v4 + 22) = 2080;
        v12 = [v25 name];
        v13 = sub_10000B0C0();
        v15 = v14;

        v16 = v13;
        v2 = v6;
        v17 = sub_100003378(v16, v15, &v44);

        *(v4 + 24) = v17;
        v3 = v43;
        _os_log_impl(&_mh_execute_header, v27, v28, "simFocus: Add simFocusState to keychain: %@ with phNUmber: %s, name: %s", v4, 0x20u);
        sub_100006AD0(v5);

        swift_arrayDestroy();
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v29 = objc_opt_self();
  sub_10000B170();
  isa = sub_10000B100().super.isa;
  v44 = 0;
  v31 = [v29 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v44];

  v32 = v44;
  if (v31)
  {
    v33 = sub_10000AF50();
    v35 = v34;

    sub_100006A7C(v33, v35);

    sub_1000060E0(v33, v35);
    sub_100006A28(v33, v35);
    sub_100006A28(v33, v35);
  }

  else
  {
    v36 = v32;

    sub_10000AEF0();

    swift_willThrow();
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v37 = sub_10000B010();
    sub_100001BDC(v37, qword_100014568);
    v38 = sub_10000AFF0();
    v39 = sub_10000B150();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "simFocus: Error while serializing SimAccounts array to data", v40, 2u);
    }

    sub_100006A14(0, 0xF000000000000000);
  }
}

uint64_t sub_100006A14(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006A28(result, a2);
  }

  return result;
}

uint64_t sub_100006A28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100006A7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100006AD0(uint64_t a1)
{
  v2 = sub_100001F24(&qword_100014448, &qword_10000BDD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_100006B38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100006B48()
{
  result = qword_100014450;
  if (!qword_100014450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014450);
  }

  return result;
}

unint64_t sub_100006B9C()
{
  result = qword_100014470;
  if (!qword_100014470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014470);
  }

  return result;
}

void sub_100006BE8()
{
  sub_100005F58();
  type metadata accessor for CFString();
  sub_100005830(&qword_1000143A0, &unk_10000BD54);
  isa = sub_10000B030().super.isa;

  v1 = SecItemDelete(isa);

  if (v1)
  {
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v2 = sub_10000B010();
    sub_100001BDC(v2, qword_100014568);
    v3 = sub_10000AFF0();
    v4 = sub_10000B150();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_100006B48();
      swift_allocError();
      *v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "simFocus: failed deleting item from key chain, error: %@", v5, 0xCu);
      sub_100006AD0(v6);

LABEL_10:
    }
  }

  else
  {
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v9 = sub_10000B010();
    sub_100001BDC(v9, qword_100014568);
    v3 = sub_10000AFF0();
    v10 = sub_10000B150();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, v10, "simFocus: deleted item from keychain", v11, 2u);
      goto LABEL_10;
    }
  }
}

uint64_t getEnumTagSinglePayload for KeyChainSIMData.KeychainError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for KeyChainSIMData.KeychainError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_100006EA8()
{
  result = qword_100014480;
  if (!qword_100014480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014480);
  }

  return result;
}

unint64_t sub_100006F00()
{
  result = qword_100014488;
  if (!qword_100014488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014488);
  }

  return result;
}

unint64_t sub_100006FC0()
{
  result = qword_100014490;
  if (!qword_100014490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014490);
  }

  return result;
}

uint64_t sub_100007068()
{
  sub_10000ADE0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000070CC(uint64_t a1)
{
  v2 = sub_100006FC0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000711C()
{
  result = qword_100014498;
  if (!qword_100014498)
  {
    sub_100004F90(&qword_1000144A0, &unk_10000BF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014498);
  }

  return result;
}

uint64_t sub_100007180@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for KeyChainSIMData();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1000071B8(uint64_t a1)
{
  v2 = sub_10000730C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100007264();
  sub_10000AFE0();
  return 0;
}

unint64_t sub_100007264()
{
  result = qword_1000144A8;
  if (!qword_1000144A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144A8);
  }

  return result;
}

unint64_t sub_10000730C()
{
  result = qword_1000144B0;
  if (!qword_1000144B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144B0);
  }

  return result;
}

void sub_100007370()
{
  v0 = sub_10000B010();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AD10();
  sub_10000AD00();
  type metadata accessor for KeyChainSIMData();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  sub_10000ACF0();

  sub_100007584(v9);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {

    sub_10000B000();
    v6 = sub_10000AFF0();
    v7 = sub_10000B150();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "PhoneFocus App AppIntents Extension launched", v8, 2u);
    }

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100007584(uint64_t a1)
{
  v2 = sub_100001F24(&qword_1000144B8, qword_10000BFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhoneFocusFilterAction.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000B010();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000076CC, 0, 0);
}

void sub_1000076CC()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_10000B0C0();

  sub_10000B000();
  v4 = sub_10000AFF0();
  v5 = sub_10000B150();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "simFocus: Perform called", v6, 2u);
  }

  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];

  v10 = *(v9 + 8);
  v10(v7, v8);
  sub_10000ACD0();
  sub_100006BE8();

  sub_10000ADF0();
  v11 = v0[3];
  if (!v11)
  {
    v20 = [v1 mainBundle];
    v21 = [v20 bundleIdentifier];

    if (v21)
    {
      sub_10000B0C0();

      sub_10000B000();
      v22 = sub_10000AFF0();
      v23 = sub_10000B150();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "simFocus: focus disabled", v24, 2u);
      }

      v25 = v0[10];
      v26 = v0[8];

      v10(v25, v26);
      if (qword_1000142A0 != -1)
      {
        swift_once();
      }

      sub_10000A498(0);
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v12 = [v1 mainBundle];
  v13 = [v12 bundleIdentifier];

  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_10000B0C0();

  sub_10000B000();
  v14 = sub_10000AFF0();
  v15 = sub_10000B150();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "simFocus: focus enabled", v16, 2u);
  }

  v17 = v0[11];
  v18 = v0[8];

  v10(v17, v18);
  if (qword_1000142A0 != -1)
  {
    swift_once();
  }

  sub_10000A498(1);
  sub_10000ACD0();
  sub_100006440(v11, v19);

LABEL_17:
  sub_10000ADE0();

  v27 = v0[1];

  v27();
}

uint64_t sub_100007BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100007C60;

  return static SetFocusFilterIntent.suggestedFocusFilters(for:)(a1, a2, a3);
}

uint64_t sub_100007C60(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t static PhoneFocusFilterAction.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014290 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF20();
  v3 = sub_100001BDC(v2, static PhoneFocusFilterAction.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static PhoneFocusFilterAction.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014298 != -1)
  {
    swift_once();
  }

  v2 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  v3 = sub_100001BDC(v2, static PhoneFocusFilterAction.description);
  swift_beginAccess();
  return sub_100009CC4(v3, a1);
}

uint64_t sub_100007EB4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000238C;

  return PhoneFocusFilterAction.perform()(a1, v5, v4);
}

void sub_100007F60(uint64_t *a1@<X8>)
{
  _s10PhoneFocus0aB12FilterActionVACycfC_0();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t PhoneFocusFilterAction.displayRepresentation.getter@<X0>(uint64_t a3@<X8>)
{
  v18[0] = a3;
  v3 = sub_100001F24(&qword_1000142C0, &qword_10000B7B0);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = sub_10000AF10();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000AFA0();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10000B0A0();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10000AF20();
  __chkstk_darwin(v15 - 8);
  sub_10000B040();
  sub_10000AF90();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_10000AF40();
  sub_100008EC4(v8);
  v16 = sub_10000AE50();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  return sub_10000AE60();
}

uint64_t sub_1000082A4(uint64_t a1)
{
  v2 = sub_100009E10();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000082E0(uint64_t a1)
{
  v2 = sub_100009E68();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t static PhoneFocusFilterAction.typeDisplayRepresentation.getter()
{
  v0 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10000AF10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000AFA0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000B0A0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000AF20();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10000B040();
  sub_10000AF90();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10000AF40();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10000AEB0();
}

uint64_t sub_1000085F0()
{
  v0 = sub_10000AF10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000AFA0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000B0A0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000AF20();
  sub_10000561C(v6, static PhoneFocusFilterAction.title);
  sub_100001BDC(v6, static PhoneFocusFilterAction.title);
  sub_10000B040();
  sub_10000AF90();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000AF40();
}

uint64_t PhoneFocusFilterAction.title.unsafeMutableAddressor()
{
  if (qword_100014290 != -1)
  {
    swift_once();
  }

  v0 = sub_10000AF20();

  return sub_100001BDC(v0, static PhoneFocusFilterAction.title);
}

uint64_t static PhoneFocusFilterAction.title.setter(uint64_t a1)
{
  if (qword_100014290 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF20();
  v3 = sub_100001BDC(v2, static PhoneFocusFilterAction.title);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PhoneFocusFilterAction.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100014290 != -1)
  {
    swift_once();
  }

  v1 = sub_10000AF20();
  sub_100001BDC(v1, static PhoneFocusFilterAction.title);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1000089CC()
{
  v0 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v14[0] = sub_10000AF10();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000AFA0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000B0A0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000AF20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  sub_10000561C(v10, static PhoneFocusFilterAction.description);
  v11 = sub_100001BDC(v10, static PhoneFocusFilterAction.description);
  sub_10000B040();
  sub_10000AF90();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_10000AF40();
  (*(v9 + 56))(v2, 1, 1, v8);
  sub_10000AE20();
  v12 = sub_10000AE10();
  return (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
}

uint64_t PhoneFocusFilterAction.description.unsafeMutableAddressor()
{
  if (qword_100014298 != -1)
  {
    swift_once();
  }

  v0 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);

  return sub_100001BDC(v0, static PhoneFocusFilterAction.description);
}

uint64_t static PhoneFocusFilterAction.description.setter(uint64_t a1)
{
  if (qword_100014298 != -1)
  {
    swift_once();
  }

  v2 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  v3 = sub_100001BDC(v2, static PhoneFocusFilterAction.description);
  swift_beginAccess();
  sub_100009D34(a1, v3);
  swift_endAccess();
  return sub_100009DA4(a1);
}

uint64_t (*static PhoneFocusFilterAction.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100014298 != -1)
  {
    swift_once();
  }

  v1 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  sub_100001BDC(v1, static PhoneFocusFilterAction.description);
  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_100008EC4(uint64_t a1@<X8>)
{
  v2 = sub_10000AF10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000AFA0();
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000B0A0();
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000B080();
  __chkstk_darwin(v12 - 8);
  v42 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADF0();
  v14 = v43;
  if (!v43)
  {
    if (qword_1000142A0 != -1)
    {
      swift_once();
    }

    sub_10000A164(0);
    sub_10000B040();
    sub_10000AF90();
    (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
    sub_10000AF40();
    goto LABEL_22;
  }

  v41 = v11;
  v15 = v43[2];
  if (v15)
  {
    v36 = v3;
    v37 = v2;
    v38 = v8;
    v39 = v5;
    v40 = a1;
    v43 = _swiftEmptyArrayStorage;
    sub_100009528(0, v15, 0);
    v16 = 4;
    v17 = v43;
    v35 = v15;
    v18 = v15;
    do
    {
      v19 = v14[v16];
      v20 = [v19 name];
      v21 = sub_10000B0C0();
      v23 = v22;

      v43 = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_100009528((v24 > 1), v25 + 1, 1);
        v17 = v43;
      }

      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      ++v16;
      --v18;
    }

    while (v18);

    v5 = v39;
    a1 = v40;
    v2 = v37;
    v15 = v35;
    v3 = v36;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  if (qword_1000142A0 != -1)
  {
    swift_once();
  }

  sub_10000A164(1);
  if (v15 == 1)
  {
    sub_10000B070();
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    sub_10000B060(v49);
    if (v17[2])
    {
      v31 = v17[4];
      v32 = v17[5];

      v50._countAndFlagsBits = v31;
      v50._object = v32;
      sub_10000B050(v50);

      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      sub_10000B060(v51);
      sub_10000B090();
      sub_10000AF90();
      (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
      goto LABEL_21;
    }
  }

  else
  {
    if (v15 != 2)
    {
      v34 = sub_10000AF20();
      (*(*(v34 - 8) + 56))(a1, 1, 1, v34);

      return;
    }

    sub_10000B070();
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    sub_10000B060(v44);
    if (v17[2])
    {
      v27 = v17[4];
      v28 = v17[5];

      v45._countAndFlagsBits = v27;
      v45._object = v28;
      sub_10000B050(v45);

      v46._countAndFlagsBits = 8236;
      v46._object = 0xE200000000000000;
      sub_10000B060(v46);
      if (v17[2] >= 2uLL)
      {
        v29 = v17[6];
        v30 = v17[7];

        v47._countAndFlagsBits = v29;
        v47._object = v30;
        sub_10000B050(v47);

        v48._countAndFlagsBits = 0;
        v48._object = 0xE000000000000000;
        sub_10000B060(v48);
        sub_10000B090();
        sub_10000AF90();
        (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
LABEL_21:
        sub_10000AF30();
LABEL_22:
        v33 = sub_10000AF20();
        (*(*(v33 - 8) + 56))(a1, 0, 1, v33);
        return;
      }

      goto LABEL_26;
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

char *sub_100009528(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100009548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100009548(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F24(&qword_1000144F8, &unk_10000C230);
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

void _s10PhoneFocus0aB12FilterActionVACycfC_0()
{
  v0 = sub_10000B010();
  v29 = *(v0 - 8);
  v30 = v0;
  __chkstk_darwin(v0);
  v28 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000AE90();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001F24(&qword_1000142D0, &unk_10000B7F0);
  v5 = __chkstk_darwin(v4 - 8);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_10000AF10();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000AFA0();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10000B0A0();
  __chkstk_darwin(v17 - 8);
  v18 = sub_10000AF20();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v31 = sub_100001F24(&qword_1000142D8, &unk_10000C240);
  sub_10000B040();
  sub_10000AF90();
  (*(v13 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_10000AF30();
  (*(v19 + 56))(v11, 1, 1, v18);
  *&v36 = 0;
  v20 = sub_10000ADD0();
  v21 = *(*(v20 - 8) + 56);
  v21(v8, 1, 1, v20);
  v21(v32, 1, 1, v20);
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_100004BA8();
  sub_100004BFC();
  sub_10000AE00();
  sub_100001F24(&qword_1000142F0, &qword_10000B800);
  sub_10000AD10();
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  sub_10000AD00();
  sub_10000ACE0();
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    sub_10000B0C0();

    v24 = v28;
    sub_10000B000();
    v25 = sub_10000AFF0();
    v26 = sub_10000B150();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "simFocus: init called", v27, 2u);
    }

    (*(v29 + 8))(v24, v30);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100009CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009DA4(uint64_t a1)
{
  v2 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100009E10()
{
  result = qword_1000144C8;
  if (!qword_1000144C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144C8);
  }

  return result;
}

unint64_t sub_100009E68()
{
  result = qword_1000144D0;
  if (!qword_1000144D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D0);
  }

  return result;
}

unint64_t sub_100009EC0()
{
  result = qword_1000144D8;
  if (!qword_1000144D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D8);
  }

  return result;
}

unint64_t sub_100009F18()
{
  result = qword_1000144E0;
  if (!qword_1000144E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E0);
  }

  return result;
}

unint64_t sub_100009FDC()
{
  result = qword_1000144E8;
  if (!qword_1000144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E8);
  }

  return result;
}

unint64_t sub_10000A034()
{
  result = qword_1000144F0;
  if (!qword_1000144F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144F0);
  }

  return result;
}

__n128 sub_10000A088(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000A094(uint64_t *a1, int a2)
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

uint64_t sub_10000A0DC(uint64_t result, int a2, int a3)
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

id sub_10000A134()
{
  result = [objc_allocWithZone(type metadata accessor for PhoneFocusMetrics()) init];
  qword_1000145E0 = result;
  return result;
}

void sub_10000A164(char a1)
{
  sub_100001F24(&qword_100014530, &qword_10000C278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000C250;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x800000010000CA90;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  v4 = sub_10000AA50(inited);
  swift_setDeallocating();
  sub_10000AB54(inited + 32);
  v5 = *(v1 + OBJC_IVAR____TtC10PhoneFocus17PhoneFocusMetrics_analyticsLogger);
  v6 = sub_10000B0B0();
  sub_10000A2B8(v4);

  sub_10000ABBC();
  isa = sub_10000B030().super.isa;

  [v5 logEvent:v6 withCoreAnalyticsDictionary:isa];
}

void sub_10000A2B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001F24(&qword_100014548, &qword_10000C288);
    v2 = sub_10000B250();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_10000A73C(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10000A498(char a1)
{
  sub_100001F24(&qword_100014530, &qword_10000C278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000C250;
  *(inited + 32) = 0xD00000000000002ALL;
  *(inited + 40) = 0x800000010000CB00;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  v4 = sub_10000AA50(inited);
  swift_setDeallocating();
  sub_10000AB54(inited + 32);
  v5 = *(v1 + OBJC_IVAR____TtC10PhoneFocus17PhoneFocusMetrics_analyticsLogger);
  v6 = sub_10000B0B0();
  sub_10000A2B8(v4);

  sub_10000ABBC();
  isa = sub_10000B030().super.isa;

  [v5 logEvent:v6 withCoreAnalyticsDictionary:isa];
}

id sub_10000A650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneFocusMetrics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000A6B8(uint64_t a1)
{
  sub_10000B2C0();
  type metadata accessor for CFString();
  sub_10000AC08();
  sub_10000AFC0();
  v2 = sub_10000B2D0();

  return sub_10000A7B4(a1, v2);
}

unint64_t sub_10000A73C(uint64_t a1, uint64_t a2)
{
  sub_10000B2C0();
  sub_10000B0D0();
  v4 = sub_10000B2D0();

  return sub_10000A890(a1, a2, v4);
}

unint64_t sub_10000A7B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_10000AC08();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10000AFB0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000A890(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000B260())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000A948(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001F24(&qword_100014458, &qword_10000BDE0);
    v3 = sub_10000B250();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000AC60(v4, &v11);
      v5 = v11;
      result = sub_10000A6B8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006B38(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_10000AA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001F24(&qword_100014550, &unk_10000C290);
    v3 = sub_10000B250();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000A73C(v5, v6);
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

uint64_t sub_10000AB54(uint64_t a1)
{
  v2 = sub_100001F24(&qword_100014538, &qword_10000C280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000ABBC()
{
  result = qword_100014540;
  if (!qword_100014540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014540);
  }

  return result;
}

unint64_t sub_10000AC08()
{
  result = qword_100014460;
  if (!qword_100014460)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014460);
  }

  return result;
}

uint64_t sub_10000AC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F24(&qword_100014478, &qword_10000C2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}