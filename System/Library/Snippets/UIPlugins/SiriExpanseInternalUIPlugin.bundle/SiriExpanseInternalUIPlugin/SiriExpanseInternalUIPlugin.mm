uint64_t sub_10C0()
{
  sub_10FC(&qword_C000, "Z\t");
  sub_5A40();
  return v1;
}

uint64_t sub_10FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t (*sub_1184(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_10FC(&qword_C000, "Z\t");
  *(v3 + 32) = sub_5A30();
  return sub_59AC;
}

uint64_t sub_1210()
{
  type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  sub_10FC(&qword_C000, "Z\t");
  sub_5A40();
  return v1;
}

uint64_t sub_1284(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  sub_10FC(&qword_C000, "Z\t");
  return sub_5A50();
}

uint64_t (*sub_12DC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  sub_10FC(&qword_C000, "Z\t");
  *(v3 + 32) = sub_5A30();
  return sub_59AC;
}

uint64_t sub_1378()
{
  if (*v0)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x614C6E6F74747562;
  }
}

uint64_t sub_13BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562;
  if (v6 || (sub_5B20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_5B20();

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

uint64_t sub_14A8(uint64_t a1)
{
  v2 = sub_17A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14E4(uint64_t a1)
{
  v2 = sub_17A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1520(uint64_t a1, uint64_t a2)
{
  if ((sub_5A60() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);

  return sub_5A60();
}

uint64_t sub_15A0(void *a1)
{
  v3 = sub_10FC(&qword_C008, "\\\t");
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_175C(a1, a1[3]);
  sub_17A0();
  sub_5B70();
  v8[15] = 0;
  sub_10FC(&qword_C000, "Z\t");
  sub_1C88(&qword_C010, &protocol conformance descriptor for <A> Loggable<A>);
  sub_5B10();
  if (!v1)
  {
    type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
    v8[14] = 1;
    sub_5B10();
  }

  return (*(v4 + 8))(v6, v3);
}

void *sub_175C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_17A0()
{
  result = qword_C330;
  if (!qword_C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C330);
  }

  return result;
}

uint64_t sub_17F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_5A20();
  type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  return sub_5A20();
}

uint64_t sub_18AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v28 = sub_10FC(&qword_C000, "Z\t");
  v25 = *(v28 - 8);
  v4 = __chkstk_darwin(v28);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v27 = v20 - v7;
  v26 = sub_10FC(&qword_C018, &qword_5D20);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  __chkstk_darwin(v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_175C(a1, a1[3]);
  sub_17A0();
  sub_5B60();
  if (v2)
  {
    return sub_1C3C(a1);
  }

  v21 = v10;
  v22 = v12;
  v14 = v24;
  v13 = v25;
  v30 = 0;
  v15 = sub_1C88(&qword_C020, &protocol conformance descriptor for <A> Loggable<A>);
  v16 = v26;
  sub_5AD0();
  v20[1] = v15;
  v17 = v27;
  v27 = *(v13 + 32);
  (v27)(v22, v17, v28);
  v29 = 1;
  sub_5AD0();
  (*(v14 + 8))(v9, v16);
  v18 = v22;
  (v27)(&v22[*(v21 + 20)], v6, v28);
  sub_1DD4(v18, v23, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
  sub_1C3C(a1);
  return sub_1E3C(v18, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
}

uint64_t sub_1C3C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_17F4(&qword_C000, "Z\t");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_5A60() & 1) == 0)
  {
    return 0;
  }

  return sub_5A60();
}

uint64_t sub_1DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1E9C()
{
  sub_10FC(&qword_C028, &qword_5D28);

  return sub_5A40();
}

uint64_t sub_1EE4(uint64_t a1)
{
  v2 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  __chkstk_darwin(v2 - 8);
  sub_1DD4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExpanseUIModel.ButtonModel);
  sub_10FC(&qword_C028, &qword_5D28);
  sub_5A50();
  return sub_1E3C(a1, type metadata accessor for ExpanseUIModel.ButtonModel);
}

uint64_t (*sub_1FB0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_10FC(&qword_C028, &qword_5D28);
  *(v3 + 32) = sub_5A30();
  return sub_59AC;
}

uint64_t sub_203C(uint64_t a1)
{
  v2 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  __chkstk_darwin(v2);
  sub_1DD4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExpanseUIModel.ButtonModel);
  sub_5A20();
  return sub_1E3C(a1, type metadata accessor for ExpanseUIModel.ButtonModel);
}

void *sub_2104()
{
  type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  sub_10FC(&qword_C028, &qword_5D28);
  return sub_5A40();
}

uint64_t sub_2178(uint64_t a1)
{
  v2 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  __chkstk_darwin(v2 - 8);
  sub_1DD4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExpanseUIModel.ButtonModel);
  type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  sub_10FC(&qword_C028, &qword_5D28);
  sub_5A50();
  return sub_1E3C(a1, type metadata accessor for ExpanseUIModel.ButtonModel);
}

uint64_t (*sub_2254(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  sub_10FC(&qword_C028, &qword_5D28);
  *(v3 + 32) = sub_5A30();
  return sub_59AC;
}

uint64_t sub_22F0()
{
  if (*v0)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x427972616D697270;
  }
}

uint64_t sub_2344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x427972616D697270 && a2 == 0xED00006E6F747475;
  if (v6 || (sub_5B20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F7474754279)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_5B20();

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

uint64_t sub_2430(uint64_t a1)
{
  v2 = sub_2664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_246C(uint64_t a1)
{
  v2 = sub_2664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_24A8(void *a1)
{
  v3 = sub_10FC(&qword_C030, &qword_5D30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_175C(a1, a1[3]);
  sub_2664();
  sub_5B70();
  v8[15] = 0;
  sub_10FC(&qword_C028, &qword_5D28);
  sub_2A90(&qword_C038, &protocol conformance descriptor for <A> Loggable<A>);
  sub_5B10();
  if (!v1)
  {
    type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
    v8[14] = 1;
    sub_5B10();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2664()
{
  result = qword_C338;
  if (!qword_C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C338);
  }

  return result;
}

uint64_t sub_26B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2700@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v28 = sub_10FC(&qword_C028, &qword_5D28);
  v25 = *(v28 - 8);
  v4 = __chkstk_darwin(v28);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v27 = v20 - v7;
  v26 = sub_10FC(&qword_C050, &qword_5D38);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  __chkstk_darwin(v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_175C(a1, a1[3]);
  sub_2664();
  sub_5B60();
  if (v2)
  {
    return sub_1C3C(a1);
  }

  v21 = v10;
  v22 = v12;
  v14 = v24;
  v13 = v25;
  v30 = 0;
  v15 = sub_2A90(&qword_C058, &protocol conformance descriptor for <A> Loggable<A>);
  v16 = v26;
  sub_5AD0();
  v20[1] = v15;
  v17 = v27;
  v27 = *(v13 + 32);
  (v27)(v22, v17, v28);
  v29 = 1;
  sub_5AD0();
  (*(v14 + 8))(v9, v16);
  v18 = v22;
  (v27)(&v22[*(v21 + 20)], v6, v28);
  sub_1DD4(v18, v23, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
  sub_1C3C(a1);
  return sub_1E3C(v18, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
}

uint64_t sub_2A90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_17F4(&qword_C028, &qword_5D28);
    sub_26B8(&qword_C040, type metadata accessor for ExpanseUIModel.ButtonModel, &unk_5EB8);
    sub_26B8(&qword_C048, type metadata accessor for ExpanseUIModel.ButtonModel, &unk_5EE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  __chkstk_darwin(v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4(a1, v6, type metadata accessor for ExpanseUIModel.ButtonModel);
  sub_5A20();
  sub_1E3C(a1, type metadata accessor for ExpanseUIModel.ButtonModel);
  type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  sub_1DD4(a2, v6, type metadata accessor for ExpanseUIModel.ButtonModel);
  sub_5A20();
  return sub_1E3C(a2, type metadata accessor for ExpanseUIModel.ButtonModel);
}

uint64_t sub_2CB0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2CE0(uint64_t a1)
{
  sub_2D28();

  return sub_59E0();
}

unint64_t sub_2D28()
{
  result = qword_C060;
  if (!qword_C060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C060);
  }

  return result;
}

uint64_t sub_2D74()
{
  type metadata accessor for ExpanseUIModel.ButtonModel(0);
  sub_10FC(&qword_C068, &qword_5D40);
  return sub_5A00();
}

uint64_t sub_2DB8(uint64_t a1)
{
  type metadata accessor for ExpanseUIModel.ButtonModel(0);
  sub_10FC(&qword_C068, &qword_5D40);
  return sub_5A10();
}

uint64_t (*sub_2E10(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ExpanseUIModel.ButtonModel(0);
  sub_10FC(&qword_C068, &qword_5D40);
  *(v3 + 32) = sub_59F0();
  return sub_2EAC;
}

void sub_2EB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2EFC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_2F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_5B20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000006880 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_5B20();

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

uint64_t sub_3018(uint64_t a1)
{
  v2 = sub_3240();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3054(uint64_t a1)
{
  v2 = sub_3240();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_3090(void *a1)
{
  v3 = sub_10FC(&qword_C070, &qword_5D48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_175C(a1, a1[3]);
  sub_3240();
  sub_5B70();
  v8[15] = 0;
  sub_5B00();
  if (!v1)
  {
    type metadata accessor for ExpanseUIModel.ButtonModel(0);
    v8[14] = 1;
    sub_10FC(&qword_C068, &qword_5D40);
    sub_35CC(&qword_C078, &protocol conformance descriptor for CodableAceObject<A>);
    sub_5B10();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_3240()
{
  result = qword_C340;
  if (!qword_C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C340);
  }

  return result;
}

uint64_t sub_3294@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_10FC(&qword_C068, &qword_5D40);
  v17 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = v15 - v4;
  v21 = sub_10FC(&qword_C080, &qword_5D50);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v15 - v6;
  v8 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  __chkstk_darwin(v8);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_175C(a1, a1[3]);
  sub_3240();
  sub_5B60();
  if (v2)
  {
    return sub_1C3C(a1);
  }

  v16 = v8;
  v12 = v19;
  v11 = v20;
  v23 = 0;
  *v10 = sub_5AC0();
  v10[1] = v13;
  v15[1] = v13;
  v22 = 1;
  sub_35CC(&qword_C088, &protocol conformance descriptor for CodableAceObject<A>);
  sub_5AD0();
  (*(v12 + 8))(v7, v21);
  (*(v17 + 32))(v10 + *(v16 + 20), v5, v11);
  sub_1DD4(v10, v18, type metadata accessor for ExpanseUIModel.ButtonModel);
  sub_1C3C(a1);
  return sub_1E3C(v10, type metadata accessor for ExpanseUIModel.ButtonModel);
}

uint64_t sub_35CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_17F4(&qword_C068, &qword_5D40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_361C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for ExpanseUIModel.ButtonModel(0);
  sub_2D28();
  return sub_59E0();
}

uint64_t sub_36B4(uint64_t a1)
{
  v2 = sub_420C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_36F0(uint64_t a1)
{
  v2 = sub_420C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_3730()
{
  sub_5B30();
  sub_5B40(0);
  return sub_5B50();
}

Swift::Int sub_37A0(uint64_t a1)
{
  sub_5B30();
  sub_5B40(0);
  return sub_5B50();
}

uint64_t sub_37E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_5B20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_3870(uint64_t a1)
{
  v2 = sub_4150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_38AC(uint64_t a1)
{
  v2 = sub_4150();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_3904()
{
  v1 = *v0;
  sub_5B30();
  sub_5B40(v1);
  return sub_5B50();
}

Swift::Int sub_397C(uint64_t a1)
{
  v2 = *v1;
  sub_5B30();
  sub_5B40(v2);
  return sub_5B50();
}

uint64_t sub_39C0()
{
  if (*v0)
  {
    return 0x75427972616E6962;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_3A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000000000068A0 == a2 || (sub_5B20() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x75427972616E6962 && a2 == 0xEC0000006E6F7474)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_5B20();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_3B00(uint64_t a1)
{
  v2 = sub_40FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3B3C(uint64_t a1)
{
  v2 = sub_40FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_3B78(void *a1)
{
  v2 = sub_10FC(&qword_C090, &qword_5D58);
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v24 - v3;
  v28 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  __chkstk_darwin(v28);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10FC(&qword_C098, &qword_5D60);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  __chkstk_darwin(v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ExpanseUIModel(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10FC(&qword_C0A0, &qword_5D68);
  v13 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v24 - v14;
  sub_175C(a1, a1[3]);
  sub_40FC();
  sub_5B70();
  sub_1DD4(v33, v12, type metadata accessor for ExpanseUIModel);
  v16 = (v13 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v29;
    sub_41A4(v12, v29, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    v36 = 1;
    sub_4150();
    v18 = v30;
    v19 = v34;
    sub_5AF0();
    sub_26B8(&qword_C0A8, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel, &unk_5E90);
    v20 = v32;
    sub_5B10();
    (*(v31 + 8))(v18, v20);
    sub_1E3C(v17, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    return (*v16)(v15, v19);
  }

  else
  {
    sub_41A4(v12, v9, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    v35 = 0;
    sub_420C();
    v22 = v34;
    sub_5AF0();
    sub_26B8(&qword_C0B0, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel, &unk_5E10);
    v23 = v27;
    sub_5B10();
    (*(v26 + 8))(v7, v23);
    sub_1E3C(v9, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    return (*v16)(v15, v22);
  }
}

uint64_t sub_40C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_40FC()
{
  result = qword_C348;
  if (!qword_C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C348);
  }

  return result;
}

unint64_t sub_4150()
{
  result = qword_C350;
  if (!qword_C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C350);
  }

  return result;
}

uint64_t sub_41A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_420C()
{
  result = qword_C358[0];
  if (!qword_C358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_C358);
  }

  return result;
}

uint64_t sub_4260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = sub_10FC(&qword_C0B8, &qword_5D70);
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v44 = v34 - v3;
  v4 = sub_10FC(&qword_C0C0, &qword_5D78);
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v43 = v34 - v5;
  v6 = sub_10FC(&qword_C0C8, &qword_5D80);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  v9 = type metadata accessor for ExpanseUIModel(0);
  v10 = __chkstk_darwin(v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v34 - v14;
  __chkstk_darwin(v13);
  v17 = v34 - v16;
  v18 = a1[3];
  v46 = a1;
  sub_175C(a1, v18);
  sub_40FC();
  v19 = v45;
  sub_5B60();
  if (!v19)
  {
    v35 = v17;
    v36 = v12;
    v45 = v15;
    v20 = v44;
    v21 = v9;
    v22 = v42;
    v23 = sub_5AE0();
    if (*(v23 + 16) == 1)
    {
      v34[1] = v23;
      v47 = 1;
      sub_4150();
      v24 = v20;
      sub_5AA0();
      type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
      sub_26B8(&qword_C0D8, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel, &unk_5E68);
      v25 = v36;
      v26 = v24;
      v27 = v38;
      sub_5AD0();
      (*(v41 + 8))(v26, v27);
      (*(v22 + 8))(v8, v6);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v33 = v35;
      sub_41A4(v25, v35, type metadata accessor for ExpanseUIModel);
      sub_41A4(v33, v37, type metadata accessor for ExpanseUIModel);
    }

    else
    {
      v28 = v8;
      v29 = sub_5A90();
      swift_allocError();
      v31 = v30;
      sub_10FC(&qword_C0D0, qword_5D88);
      *v31 = v21;
      sub_5AB0();
      sub_5A80();
      (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
      swift_willThrow();
      (*(v22 + 8))(v28, v6);
      swift_unknownObjectRelease();
    }
  }

  return sub_1C3C(v46);
}

uint64_t sub_4AB4(uint64_t a1)
{
  result = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_4B78(uint64_t a1)
{
  sub_4BE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_4BE4()
{
  if (!qword_C1E8)
  {
    v0 = sub_5A70();
    if (!v1)
    {
      atomic_store(v0, &qword_C1E8);
    }
  }
}

uint64_t sub_4C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_10FC(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_4CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_10FC(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_4D68(uint64_t a1)
{
  sub_5044(319, &unk_C270, type metadata accessor for ExpanseUIModel.ButtonModel, &type metadata accessor for Loggable);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_4E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10FC(&qword_C068, &qword_5D40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10FC(&qword_C068, &qword_5D40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4F98(uint64_t a1)
{
  sub_5044(319, &unk_C2F8, sub_2D28, &type metadata accessor for CodableAceObject);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_5044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_5104(unsigned int *a1, int a2)
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

_WORD *sub_5158(_WORD *result, int a2, int a3)
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

uint64_t _s27SiriExpanseInternalUIPlugin14ExpanseUIModelO10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s27SiriExpanseInternalUIPlugin14ExpanseUIModelO10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_5358()
{
  result = qword_CAA0[0];
  if (!qword_CAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_CAA0);
  }

  return result;
}

unint64_t sub_53B0()
{
  result = qword_CCB0[0];
  if (!qword_CCB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_CCB0);
  }

  return result;
}

unint64_t sub_5408()
{
  result = qword_CEC0[0];
  if (!qword_CEC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_CEC0);
  }

  return result;
}

unint64_t sub_5460()
{
  result = qword_D0D0[0];
  if (!qword_D0D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_D0D0);
  }

  return result;
}

unint64_t sub_54B8()
{
  result = qword_D2E0[0];
  if (!qword_D2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_D2E0);
  }

  return result;
}

unint64_t sub_5510()
{
  result = qword_D4F0;
  if (!qword_D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_D4F0);
  }

  return result;
}

unint64_t sub_5568()
{
  result = qword_D600;
  if (!qword_D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_D600);
  }

  return result;
}

unint64_t sub_55C0()
{
  result = qword_D608[0];
  if (!qword_D608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_D608);
  }

  return result;
}

unint64_t sub_5618()
{
  result = qword_D690;
  if (!qword_D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_D690);
  }

  return result;
}

unint64_t sub_5670()
{
  result = qword_D698[0];
  if (!qword_D698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_D698);
  }

  return result;
}

unint64_t sub_56C8()
{
  result = qword_D720;
  if (!qword_D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_D720);
  }

  return result;
}

unint64_t sub_5720()
{
  result = qword_D728[0];
  if (!qword_D728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_D728);
  }

  return result;
}

unint64_t sub_5778()
{
  result = qword_D7B0;
  if (!qword_D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_D7B0);
  }

  return result;
}

unint64_t sub_57D0()
{
  result = qword_D7B8[0];
  if (!qword_D7B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_D7B8);
  }

  return result;
}

unint64_t sub_5828()
{
  result = qword_D840;
  if (!qword_D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_D840);
  }

  return result;
}

unint64_t sub_5880()
{
  result = qword_D848[0];
  if (!qword_D848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_D848);
  }

  return result;
}

unint64_t sub_58D8()
{
  result = qword_D8D0;
  if (!qword_D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_D8D0);
  }

  return result;
}

unint64_t sub_5930()
{
  result = qword_D8D8[0];
  if (!qword_D8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_D8D8);
  }

  return result;
}