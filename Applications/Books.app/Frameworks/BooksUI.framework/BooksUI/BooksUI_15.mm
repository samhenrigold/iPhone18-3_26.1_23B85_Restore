void *sub_191540(uint64_t a1, unint64_t a2)
{
  v3 = sub_19158C(a1, a2);
  sub_1916BC(&off_2FF5B8);
  return v3;
}

void *sub_19158C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1917A8(v5, 0);
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

  result = sub_264C20();
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
        v10 = sub_264540();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1917A8(v10, 0);
        result = sub_264BB0();
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

void sub_1916BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_19181C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1917A8(uint64_t a1, uint64_t a2)
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

  sub_2EF0(&qword_322690, &qword_280EB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_19181C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_322690, &qword_280EB0);
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

uint64_t sub_191910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_191978()
{
  v1 = (type metadata accessor for ShelfGridLayoutContext(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = sub_261690();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_191A80(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfGridLayoutContext(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_191000(v4, a1);
}

uint64_t sub_191B00()
{
  sub_51990(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_191B6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31A020, &qword_26E220);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_260BD0();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_2EF0(&qword_316208, &qword_268BD0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_191D64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31A020, &qword_26E220);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_260BD0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_316208, &qword_268BD0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_191F48(uint64_t a1)
{
  sub_78E1C(319);
  if (v1 <= 0x3F)
  {
    sub_193314(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_260BD0();
      if (v3 <= 0x3F)
      {
        sub_193314(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_192084();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_192084()
{
  if (!qword_3195C0)
  {
    v0 = sub_2646F0();
    if (!v1)
    {
      atomic_store(v0, &qword_3195C0);
    }
  }
}

unint64_t sub_1920D8()
{
  result = qword_3224A0;
  if (!qword_3224A0)
  {
    sub_2F9C(&qword_3223E0, &qword_280C58);
    sub_2F9C(&qword_322390, &qword_280BD8);
    sub_18D410();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3224A8, &qword_318978, &qword_26BEA8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3224A0);
  }

  return result;
}

uint64_t sub_1921E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_192328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_19245C(uint64_t a1)
{
  sub_193314(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SeriesEntityCardView.TextLockupViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_192084();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19254C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_260BD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316208, &qword_268BD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 28)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_192688(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_260BD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316208, &qword_268BD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 28)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1927B4(uint64_t a1)
{
  sub_260BD0();
  if (v1 <= 0x3F)
  {
    sub_193314(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_19288C()
{
  result = qword_3225F0;
  if (!qword_3225F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3225F0);
  }

  return result;
}

uint64_t sub_192900@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for SeriesEntityCardView.CardContents(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_18E488(a1, v6, a2);
}

unint64_t sub_192980()
{
  result = qword_322610;
  if (!qword_322610)
  {
    sub_2F9C(&qword_322600, &qword_280DE8);
    sub_8E38(&qword_322618, &qword_322620, &qword_280DF8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322610);
  }

  return result;
}

uint64_t sub_192A60()
{
  v1 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v15 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v15 + 16) & ~v15);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v4 = sub_261690();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 24);
  v6 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v7 = v6[5];
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[6], v8);
  v11 = v6[7];
  v12 = *(v9 + 48);
  if (!v12(v5 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v13 = v6[8];
  if (!v12(v5 + v13, 1, v8))
  {
    v10(v5 + v13, v8);
  }

  return swift_deallocObject();
}

double sub_192CB0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesEntityCardView.CardContents(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_18E210(v4, a1);
}

unint64_t sub_192D30()
{
  result = qword_322658;
  if (!qword_322658)
  {
    sub_2F9C(&qword_322650, &qword_280E80);
    sub_8E38(&qword_322660, &qword_322668, &qword_280E88, &protocol conformance descriptor for CoverStackView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322658);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SeriesEntityCardView.RegularCardLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SeriesEntityCardView.RegularCardLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_192E58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_193018(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_1931D0(uint64_t a1)
{
  sub_193314(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_193314(319, &qword_31A7B8, type metadata accessor for FontConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_193314(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SeriesEntityCardView.TextLockupViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_193314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_19337C()
{
  result = qword_322730;
  if (!qword_322730)
  {
    sub_2F9C(&qword_322738, qword_280EF8);
    sub_192980();
    sub_8E38(&qword_322628, &qword_322608, &qword_280DF0, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322730);
  }

  return result;
}

unint64_t sub_193454()
{
  result = qword_322740;
  if (!qword_322740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322740);
  }

  return result;
}

uint64_t sub_1934A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19351C()
{
  result = qword_3227B0;
  if (!qword_3227B0)
  {
    sub_2F9C(&qword_322760, &unk_281090);
    sub_1935D4();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3227B0);
  }

  return result;
}

unint64_t sub_1935D4()
{
  result = qword_3227B8;
  if (!qword_3227B8)
  {
    sub_2F9C(&qword_322750, &qword_281020);
    sub_8E38(qword_3227C0, &qword_322748, &qword_281018, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3227B8);
  }

  return result;
}

uint64_t _CodeAnyActionModel_KeyedBy.description.getter(uint64_t a1)
{
  sub_2F9C(&qword_316A30, &qword_2697B0);
  sub_2642E0();
  swift_getWitnessTable();
  sub_264EF0();
  return 0;
}

uint64_t _CodeAnyActionModel_KeyedBy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a5@<X8>)
{
  sub_30CC(a1, v10);
  sub_3FC1C();
  sub_2642F0();
  if (v5)
  {
    return sub_3080(a1);
  }

  sub_2EF0(&qword_316A30, &qword_2697B0);
  v9 = sub_2642D0();

  result = sub_3080(a1);
  *a5 = v9;
  return result;
}

uint64_t _CodeAnyActionModel_KeyedBy<>.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_30CC(a1, v7);
  sub_3FC1C();
  v4 = sub_2642A0();
  v5 = sub_1938FC(v4);

  result = sub_3080(a1);
  *a2 = v5;
  return result;
}

void *sub_1938FC(uint64_t a1)
{
  sub_2EF0(&qword_322848, &qword_281278);
  result = sub_264CF0();
  v3 = result;
  v4 = 0;
  v31 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v27 = result + 8;
  v28 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = 16 * v15;
      v17 = (*(v31 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = 40 * v15;
      sub_AAFC8(*(v31 + 56) + 40 * v15, v30);
      sub_30CC(v30, v29);

      sub_3FCA0(v30);
      v21 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v22 = 1 << v15;
      v3 = v28;
      *(v27 + v21) |= v22;
      v23 = (v28[6] + v16);
      *v23 = v19;
      v23[1] = v18;
      result = sub_F7CC(v29, v28[7] + v20);
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_193A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ViewModelWithExternals.subscript.getter(void *a1)
{
  v2 = *(*a1 + class metadata base offset for KeyPath);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v10 - v5;
  (*(v7 + 32))(v8, v7, v4);
  swift_getAtKeyPath();
  return (*(v3 + 8))(v6, v2);
}

uint64_t static GridItemViewModel.topCharts(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v4 = sub_2609A0();
  v6 = v5;
  sub_2E18(a1, a1[3]);
  v7 = sub_2609B0();
  v9 = v8;
  *(&v19 + 1) = &type metadata for GridItemMetadataTitleWithSubtitle;
  v20 = sub_2004C();
  v10 = swift_allocObject();
  *&v18 = v10;
  v10[1].i64[0] = v4;
  v10[1].i64[1] = v6;
  v10[2].i64[0] = v7;
  v10[2].i64[1] = v9;
  v10[3] = vdupq_n_s64(1uLL);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  sub_34A0(&v18, a2, &qword_316BC0, &qword_2707C0);
  *(a2 + 40) = 1;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_30CC(a1, a2 + 96);
  sub_30CC(a1, v17);
  v11 = type metadata accessor for GridItemViewModel(0);
  CardInfo.init(with:alwaysPresentNewCardSet:)(v17, 1, a2 + v11[8]);
  v12 = v11[12];
  v13 = sub_260570();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = v11[11];
  v15 = sub_2605C0();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  *(a2 + 80) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 48) = 0u;
  result = sub_34A0(&v18, a2 + 48, &qword_316D48, &unk_28CD20);
  *(a2 + 88) = 1;
  *(a2 + v11[9]) = 0;
  *(a2 + v11[10]) = 0;
  return result;
}

uint64_t sub_193E28()
{

  return swift_deallocObject();
}

uint64_t sub_193E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  sub_261240();
  v7 = v31;
  v8 = v31 * 0.5;
  v9 = v32;
  v10 = DWORD1(v32);
  v11 = *(&v32 + 1);
  v12 = v33;

  v13 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v15 = v14;
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v29 = v32;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v28 = v34[0];
  v38 = *v30;
  v39 = *&v30[16];
  v36 = v34[0];
  v37 = v32;
  *&v40 = v13;
  *(&v40 + 1) = v14;
  v16 = sub_2EF0(&qword_3228A8, &qword_2814D0);
  (*(*(v16 - 8) + 16))(a2, v4, v16);
  v17 = (a2 + *(sub_2EF0(&qword_3228A0, &qword_2814C8) + 36));
  v18 = *&v30[16];
  v17[2] = *v30;
  v17[3] = v18;
  v17[4] = v40;
  v19 = v37;
  *v17 = v36;
  v17[1] = v19;
  v41[2] = *v30;
  v41[3] = *&v30[16];
  v41[0] = v28;
  v41[1] = v29;
  v42 = v13;
  v43 = v15;
  sub_8198(v34, v21, &qword_3228D0, &qword_2814E0);
  sub_8198(&v36, v21, &qword_3228C8, &qword_2814D8);
  sub_8E80(v41, &qword_3228C8, &qword_2814D8);
  *v21 = v8;
  *&v21[1] = v7;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a1;
  v27 = 256;
  return sub_8E80(v21, &qword_3228D0, &qword_2814E0);
}

uint64_t sub_194074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v45 = a2;
  v44 = sub_2EF0(&qword_322860, &qword_2813A8);
  __chkstk_darwin(v44);
  v3 = &v32[-v2];
  v4 = sub_2EF0(&qword_322868, &unk_2813B0);
  __chkstk_darwin(v4);
  v6 = &v32[-v5];
  v7 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32[-v9];
  if (qword_315938 != -1)
  {
    swift_once();
  }

  v11 = sub_B080(v7, qword_31CB20);
  (*(v8 + 16))(v10, v11, v7);
  sub_260740();
  (*(v8 + 8))(v10, v7);
  if (v58 == 1)
  {
    v12 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v39 = v13;
    v40 = v12;
    KeyPath = swift_getKeyPath();
    v38 = KeyPath;
    v15 = swift_getKeyPath();
    v16 = swift_getKeyPath();
    v17 = swift_getKeyPath();
    v49 = 0;
    v18 = swift_getKeyPath();
    v41 = v4;
    v19 = v18;
    v37 = v18;
    v48 = 0;
    v20 = swift_getKeyPath();
    v47 = 0;
    v21 = swift_getKeyPath();
    v42 = v3;
    v36 = v21;
    v46[128] = 0;
    v33 = v49;
    v34 = v48;
    v35 = v47;
    LOBYTE(v58) = 0;
    v46[0] = 0;
    *&v50 = KeyPath;
    BYTE8(v50) = 0;
    *&v51 = v15;
    BYTE8(v51) = 0;
    *&v52 = v16;
    BYTE8(v52) = 0;
    *&v53 = v17;
    BYTE8(v53) = v49;
    *&v54 = v19;
    BYTE8(v54) = v48;
    *&v55 = v20;
    BYTE8(v55) = v47;
    *&v56 = v21;
    BYTE8(v56) = 0;
    *(&v56 + 9) = 1;
    v23 = v39;
    v22 = v40;
    *&v57 = v40;
    *(&v57 + 1) = v39;
    v24 = sub_2EF0(&qword_322870, &qword_2813C0);
    (*(*(v24 - 8) + 16))(v6, v43, v24);
    v25 = &v6[*(v4 + 36)];
    v26 = v55;
    v25[4] = v54;
    v25[5] = v26;
    v27 = v57;
    v25[6] = v56;
    v25[7] = v27;
    v28 = v51;
    *v25 = v50;
    v25[1] = v28;
    v29 = v53;
    v25[2] = v52;
    v25[3] = v29;
    v58 = v38;
    v59 = 0;
    v60 = v15;
    v61 = 0;
    v62 = v16;
    v63 = 0;
    v64 = v17;
    v65 = v33;
    v66 = v37;
    v67 = v34;
    v68 = v20;
    v69 = v35;
    v70 = v36;
    v71 = 0;
    v72 = 1;
    v73 = v22;
    v74 = v23;
    sub_8198(&v50, v46, &qword_322890, &qword_2813C8);
    sub_8E80(&v58, &qword_322890, &qword_2813C8);
    sub_8198(v6, v42, &qword_322868, &unk_2813B0);
    swift_storeEnumTagMultiPayload();
    sub_1959D4();
    sub_8E38(&qword_322880, &qword_322870, &qword_2813C0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_261F80();
    return sub_8E80(v6, &qword_322868, &unk_2813B0);
  }

  else
  {
    v31 = sub_2EF0(&qword_322870, &qword_2813C0);
    (*(*(v31 - 8) + 16))(v3, v43, v31);
    swift_storeEnumTagMultiPayload();
    sub_1959D4();
    sub_8E38(&qword_322880, &qword_322870, &qword_2813C0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return sub_261F80();
  }
}

uint64_t sub_194608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_261C90();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_3228F8, &qword_281670);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v44 = sub_2EF0(&qword_322900, &qword_281678);
  __chkstk_darwin(v44);
  v11 = &v42 - v10;
  v45 = sub_2EF0(&qword_322908, &qword_281680);
  __chkstk_darwin(v45);
  v47 = &v42 - v12;
  v46 = sub_2EF0(&qword_322910, &qword_281688);
  __chkstk_darwin(v46);
  v48 = &v42 - v13;
  v14 = sub_261D30();
  v15 = &v9[v7[13]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v9[v7[14]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &v9[v7[15]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  *v9 = v14;
  v9[8] = 1;
  sub_194CC4(v2);
  v80 = *(v2 + 8);
  v18 = *v2;
  v79 = *v2;
  if ((v80 & 1) == 0)
  {

    sub_264900();
    v19 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v79, &qword_322918, &qword_2816B8);
    (*(v42 + 8))(v5, v43);
    v18 = v67;
  }

  if (v18 <= 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
  }

  sub_22148(v9, v11, &qword_3228F8, &qword_281670);
  *&v11[*(v44 + 36)] = v20;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v21 = v47;
  sub_22148(v11, v47, &qword_322900, &qword_281678);
  v22 = (v21 + *(v45 + 36));
  v23 = v77;
  v22[4] = v76;
  v22[5] = v23;
  v22[6] = v78;
  v24 = v73;
  *v22 = v72;
  v22[1] = v24;
  v25 = v75;
  v22[2] = v74;
  v22[3] = v25;
  v26 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v28 = v27;
  v29 = sub_261D30();
  v50[0] = 0;
  sub_194EFC(v2, &v67);
  v60 = *&v68[112];
  v61 = *&v68[128];
  v62 = *&v68[144];
  v56 = *&v68[48];
  v57 = *&v68[64];
  v58 = *&v68[80];
  v59 = *&v68[96];
  v52 = v67;
  v53 = *v68;
  v54 = *&v68[16];
  v55 = *&v68[32];
  v63[8] = *&v68[112];
  v63[9] = *&v68[128];
  v63[10] = *&v68[144];
  v63[4] = *&v68[48];
  v63[5] = *&v68[64];
  v63[6] = *&v68[80];
  v63[7] = *&v68[96];
  v63[0] = v67;
  v63[1] = *v68;
  v63[2] = *&v68[16];
  v63[3] = *&v68[32];
  sub_8198(&v52, &v64, &qword_322920, &qword_2816C0);
  sub_8E80(v63, &qword_322920, &qword_2816C0);
  *&v51[119] = v59;
  *&v51[135] = v60;
  *&v51[151] = v61;
  *&v51[167] = v62;
  *&v51[55] = v55;
  *&v51[71] = v56;
  *&v51[87] = v57;
  *&v51[103] = v58;
  *&v51[7] = v52;
  *&v51[23] = v53;
  *&v51[39] = v54;
  *(&v65[8] + 1) = *&v51[128];
  *(&v65[9] + 1) = *&v51[144];
  *(&v65[10] + 1) = *&v51[160];
  *(&v65[4] + 1) = *&v51[64];
  *(&v65[5] + 1) = *&v51[80];
  *(&v65[6] + 1) = *&v51[96];
  *(&v65[7] + 1) = *&v51[112];
  *(v65 + 1) = *v51;
  *(&v65[1] + 1) = *&v51[16];
  *(&v65[2] + 1) = *&v51[32];
  v30 = v50[0];
  v64 = v29;
  LOBYTE(v65[0]) = v50[0];
  *(&v65[3] + 1) = *&v51[48];
  *&v65[11] = *(&v62 + 1);
  *(&v65[11] + 1) = v26;
  v66 = v28;
  v31 = v48;
  sub_22148(v21, v48, &qword_322908, &qword_281680);
  v32 = v31 + *(v46 + 36);
  v33 = v65[10];
  *(v32 + 160) = v65[9];
  *(v32 + 176) = v33;
  *(v32 + 192) = v65[11];
  v34 = v65[6];
  *(v32 + 96) = v65[5];
  *(v32 + 112) = v34;
  v35 = v65[8];
  *(v32 + 128) = v65[7];
  *(v32 + 144) = v35;
  v36 = v65[2];
  *(v32 + 32) = v65[1];
  *(v32 + 48) = v36;
  v37 = v65[4];
  *(v32 + 64) = v65[3];
  *(v32 + 80) = v37;
  v38 = v65[0];
  *v32 = v64;
  *(v32 + 16) = v38;
  *&v68[129] = *&v51[128];
  *&v68[145] = *&v51[144];
  *v69 = *&v51[160];
  *&v68[65] = *&v51[64];
  *&v68[81] = *&v51[80];
  *&v68[97] = *&v51[96];
  *&v68[113] = *&v51[112];
  *&v68[1] = *v51;
  *&v68[17] = *&v51[16];
  v39 = *&v51[48];
  *&v68[33] = *&v51[32];
  *(v32 + 208) = v66;
  v67 = v29;
  v68[0] = v30;
  *&v68[49] = v39;
  *&v69[15] = *&v51[175];
  v70 = v26;
  v71 = v28;
  sub_8198(&v64, v50, &qword_322928, &qword_2816C8);
  sub_8E80(&v67, &qword_322928, &qword_2816C8);
  v40 = v49;
  sub_22148(v31, v49, &qword_322910, &qword_281688);
  result = sub_2EF0(&qword_322930, &qword_2816D0);
  *(v40 + *(result + 36)) = 0;
  return result;
}

void sub_194CC4(uint64_t *a1)
{
  v2 = sub_261C90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  v6 = *a1;
  v9 = v6;
  if ((v10 & 1) == 0)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v9, &qword_322918, &qword_2816B8);
    (*(v3 + 8))(v5, v2);
    v6 = v8[0];
  }

  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v8[0] = 0;
    v8[1] = v6;
    swift_getKeyPath();
    sub_2EF0(&qword_31BEA8, &qword_271FD0);
    sub_C092C();
    sub_2633B0();
  }
}

void sub_194EB4(uint64_t *a1@<X8>)
{
  sub_262F70();
  v2 = sub_263000();

  *a1 = v2;
}

double sub_194EFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262FD0();
  v39 = sub_263000();

  v65 = *(a1 + 24);
  v8 = *(a1 + 16);
  v64 = v8;
  v9 = v65;
  if ((v65 & 1) == 0)
  {

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v64, &qword_322938, &unk_2816D8);
    (*(v5 + 8))(v7, v4);
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v38 = v45;
  v37 = v46;
  v36 = v47;
  v33 = v48;
  v35 = v49;
  v34 = v50;
  v11 = *(a1 + 32);
  v62 = v11;
  v63 = *(a1 + 40);
  v32 = v4;
  v31 = v5;
  if (v63 == 1)
  {
    v44 = v11;
  }

  else
  {

    sub_264900();
    v12 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v62, &qword_322938, &unk_2816D8);
    (*(v5 + 8))(v7, v4);
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v13 = v51;
  v14 = v53;
  v15 = v55;
  v16 = v56;
  v43 = 0;
  v42 = v52;
  v41 = v54;
  sub_262FD0();
  v17 = sub_263000();

  if (v9)
  {
    v40 = v8;
  }

  else
  {

    sub_264900();
    v18 = v16;
    v19 = sub_2624B0();
    sub_260D10();

    v16 = v18;
    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v64, &qword_322938, &unk_2816D8);
    (*(v31 + 8))(v7, v32);
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v20 = v57;
  v21 = v59;
  v22 = v43;
  v23 = v42;
  v24 = v41;
  v25 = v37;
  v26 = v33;
  v27 = v58;
  v28 = v60;
  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v25;
  *(a2 + 24) = v36;
  *(a2 + 32) = v26;
  *(a2 + 40) = v35;
  *(a2 + 48) = v34;
  *(a2 + 56) = 0;
  *(a2 + 64) = v22;
  *(a2 + 72) = v13;
  *(a2 + 80) = v23;
  *(a2 + 88) = v14;
  *(a2 + 96) = v24;
  *(a2 + 104) = v15;
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  *(a2 + 128) = v20;
  *(a2 + 136) = v27;
  *(a2 + 144) = v21;
  *(a2 + 152) = v28;
  result = *&v61;
  *(a2 + 160) = v61;
  return result;
}

uint64_t sub_195440(uint64_t a1)
{
  v2 = sub_2EF0(&qword_322898, &qword_2814C0);
  __chkstk_darwin(v2);
  v4 = &v16[-v3];
  v5 = sub_2EF0(&qword_3228A0, &qword_2814C8);
  __chkstk_darwin(v5);
  v7 = &v16[-v6];
  v8 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-v10];
  if (qword_315938 != -1)
  {
    swift_once();
  }

  v12 = sub_B080(v8, qword_31CB20);
  (*(v9 + 16))(v11, v12, v8);
  sub_260740();
  (*(v9 + 8))(v11, v8);
  if (v16[15] == 1)
  {
    v13 = sub_262F20();
    sub_193E68(v13, v7);

    sub_8198(v7, v4, &qword_3228A0, &qword_2814C8);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3228A8, &qword_2814D0);
    sub_195AE0();
    sub_8E38(&qword_3228B8, &qword_3228A8, &qword_2814D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_261F80();
    return sub_8E80(v7, &qword_3228A0, &qword_2814C8);
  }

  else
  {
    v15 = sub_2EF0(&qword_3228A8, &qword_2814D0);
    (*(*(v15 - 8) + 16))(v4, a1, v15);
    swift_storeEnumTagMultiPayload();
    sub_195AE0();
    sub_8E38(&qword_3228B8, &qword_3228A8, &qword_2814D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return sub_261F80();
  }
}

unint64_t sub_1957EC()
{
  result = qword_322850;
  if (!qword_322850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322850);
  }

  return result;
}

uint64_t sub_195860@<X0>(uint64_t a1@<X0>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_261730();
  a3();
  swift_getWitnessTable();
  v8 = *(*(a1 - 8) + 16);

  return v8(a4, v4, a1);
}

unint64_t sub_195920()
{
  result = qword_322858;
  if (!qword_322858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322858);
  }

  return result;
}

unint64_t sub_1959D4()
{
  result = qword_322878;
  if (!qword_322878)
  {
    sub_2F9C(&qword_322868, &unk_2813B0);
    sub_8E38(&qword_322880, &qword_322870, &qword_2813C0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_322888, &qword_322890, &qword_2813C8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322878);
  }

  return result;
}

unint64_t sub_195AE0()
{
  result = qword_3228B0;
  if (!qword_3228B0)
  {
    sub_2F9C(&qword_3228A0, &qword_2814C8);
    sub_8E38(&qword_3228B8, &qword_3228A8, &qword_2814D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_3228C0, &qword_3228C8, &qword_2814D8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3228B0);
  }

  return result;
}

uint64_t sub_195BC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_195C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_195C70()
{
  result = qword_3228D8;
  if (!qword_3228D8)
  {
    sub_2F9C(&qword_3228E0, &qword_281610);
    sub_1959D4();
    sub_8E38(&qword_322880, &qword_322870, &qword_2813C0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3228D8);
  }

  return result;
}

unint64_t sub_195D2C()
{
  result = qword_3228E8;
  if (!qword_3228E8)
  {
    sub_2F9C(&qword_3228F0, qword_281618);
    sub_195AE0();
    sub_8E38(&qword_3228B8, &qword_3228A8, &qword_2814D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3228E8);
  }

  return result;
}

unint64_t sub_195E08()
{
  result = qword_322940;
  if (!qword_322940)
  {
    sub_2F9C(&qword_322930, &qword_2816D0);
    sub_195E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322940);
  }

  return result;
}

unint64_t sub_195E94()
{
  result = qword_322948;
  if (!qword_322948)
  {
    sub_2F9C(&qword_322910, &qword_281688);
    sub_195F4C();
    sub_8E38(&qword_322968, &qword_322928, &qword_2816C8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322948);
  }

  return result;
}

unint64_t sub_195F4C()
{
  result = qword_322950;
  if (!qword_322950)
  {
    sub_2F9C(&qword_322908, &qword_281680);
    sub_195FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322950);
  }

  return result;
}

unint64_t sub_195FD8()
{
  result = qword_322958;
  if (!qword_322958)
  {
    sub_2F9C(&qword_322900, &qword_281678);
    sub_8E38(&qword_322960, &qword_3228F8, &qword_281670, &protocol conformance descriptor for ColumnHStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322958);
  }

  return result;
}

uint64_t sub_196094@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (!*(*v2 + 16))
  {
    if (a1)
    {
LABEL_8:
      if (qword_315A88 != -1)
      {
        swift_once();
      }

      v6 = &xmmword_353FC0;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  sub_30CC(*v2 + 32, v12);
  sub_2E18(v12, v12[3]);
  v5 = sub_260860();
  sub_3080(v12);
  if (a1)
  {
    if (!v5)
    {
      if (qword_315A78 != -1)
      {
        swift_once();
      }

      v6 = &xmmword_353F60;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_12:
    if (qword_315A90 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_353FF0;
    goto LABEL_18;
  }

  if (qword_315A80 != -1)
  {
    swift_once();
  }

  v6 = &xmmword_353F90;
LABEL_18:
  v7 = *(v6 + 2);
  v8 = *(v6 + 3);
  v9 = *(v6 + 4);
  v10 = *(v6 + 5);
  *a2 = *v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
}

double sub_196238()
{
  result = 152.0;
  xmmword_353F60 = xmmword_281700;
  *&qword_353F70 = xmmword_281710;
  qword_353F80 = &off_300A80;
  qword_353F88 = 0x4020000000000000;
  return result;
}

double sub_196268()
{
  result = 248.0;
  xmmword_353F90 = xmmword_281720;
  *&qword_353FA0 = xmmword_281730;
  qword_353FB0 = &off_300B28;
  qword_353FB8 = 0x4028000000000000;
  return result;
}

double sub_196298()
{
  result = 157.0;
  xmmword_353FC0 = xmmword_281740;
  *&qword_353FD0 = xmmword_281750;
  qword_353FE0 = &off_300AD0;
  qword_353FE8 = 0x4020000000000000;
  return result;
}

double sub_1962C8()
{
  result = 221.0;
  xmmword_353FF0 = xmmword_281760;
  *&qword_354000 = xmmword_281770;
  qword_354010 = &off_300BB8;
  qword_354018 = 0x4028000000000000;
  return result;
}

void sub_196314(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1963A4(uint64_t a1)
{
  v2 = sub_19659C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1963E0(uint64_t a1)
{
  v2 = sub_19659C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FanViewModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2EF0(&qword_322970, &qword_281780);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_2E18(a1, a1[3]);
  sub_19659C();
  sub_265120();
  if (!v2)
  {
    sub_2EF0(&qword_322980, &qword_281788);
    sub_1965F0();
    sub_264DF0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_3080(a1);
}

unint64_t sub_19659C()
{
  result = qword_322978;
  if (!qword_322978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322978);
  }

  return result;
}

unint64_t sub_1965F0()
{
  result = qword_322988;
  if (!qword_322988)
  {
    sub_2F9C(&qword_322980, &qword_281788);
    sub_AD668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322988);
  }

  return result;
}

unint64_t sub_1966C0()
{
  result = qword_322990;
  if (!qword_322990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322990);
  }

  return result;
}

unint64_t sub_196718()
{
  result = qword_322998;
  if (!qword_322998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322998);
  }

  return result;
}

unint64_t sub_196770()
{
  result = qword_3229A0;
  if (!qword_3229A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3229A0);
  }

  return result;
}

uint64_t WantToReadButton.init(assetInfo:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 66) = 0;

  return sub_F7CC(a1, a2 + 72);
}

uint64_t WantToReadButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2604E0();
  __chkstk_darwin(v3 - 8);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssetAction(0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v27 - v9);
  if (sub_196BB4())
  {
    sub_196DBC(v10);
  }

  else
  {
    sub_197B28(v10);
  }

  v11 = sub_2EF0(&qword_319AD0, &qword_26D8C0);
  v12 = (a1 + v11[12]);
  v29 = sub_2EF0(&qword_319AD8, &qword_281960);
  v12[3] = v29;
  v12[4] = sub_8E38(&qword_319AE0, &qword_319AD8, &qword_281960, &unk_268B6C);
  v13 = sub_10934(v12);
  v14 = sub_2610B0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = (a1 + v11[13]);
  v15[3] = v5;
  v15[4] = sub_723E4(&qword_319AE8, &protocol conformance descriptor for AssetAction);
  v16 = sub_10934(v15);
  sub_199378(v10, v16, type metadata accessor for AssetAction);
  sub_198ED4(v1, v31);
  sub_199378(v10, v7, type metadata accessor for AssetAction);
  v17 = (*(v28 + 80) + 128) & ~*(v28 + 80);
  v18 = swift_allocObject();
  v19 = v31[5];
  *(v18 + 5) = v31[4];
  *(v18 + 6) = v19;
  *(v18 + 7) = v31[6];
  v20 = v31[1];
  *(v18 + 1) = v31[0];
  *(v18 + 2) = v20;
  v21 = v31[3];
  *(v18 + 3) = v31[2];
  *(v18 + 4) = v21;
  sub_19944C(v7, v18 + v17, type metadata accessor for AssetAction);
  sub_2604C0();
  sub_260420();
  v22 = a1 + v11[9];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v11[10];
  *(a1 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v24 = a1 + v11[11];
  *v24 = swift_getKeyPath();
  *(v24 + 40) = 0;
  v25 = (v13 + *(v29 + 36));
  *v25 = sub_1991B0;
  v25[1] = v18;
  return sub_1993E0(v10, type metadata accessor for AssetAction);
}

uint64_t sub_196BB4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24[15] = *(v0 + 63);
  v5 = v0[3];
  v23[2] = v0[2];
  *v24 = v5;
  v6 = v0[1];
  v23[0] = *v0;
  v23[1] = v6;
  if (v24[18])
  {
    v7 = v0[3];
    v20 = v0[2];
    v21 = v7;
    v22 = *(v0 + 32);
    v8 = v0[1];
    v18 = *v0;
    v19 = v8;
    v16 = v20;
    v17[0] = v7;
    *(v17 + 15) = *(v0 + 63);
    v14 = v18;
    v15 = v8;
    sub_8198(&v14, &v13, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v23, &qword_317F40, &qword_26E9D0);
    (*(v2 + 8))(v4, v1);
  }

  v14 = v18;
  v15 = v19;
  v16 = v20;
  v17[0] = v21;
  LOWORD(v17[1]) = v22;
  if (*(&v18 + 1))
  {
    v10 = BYTE2(v17[0]);
    sub_8E80(&v14, &qword_317F48, &qword_26A9A0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_196DBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v69 = sub_260560();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_260600();
  __chkstk_darwin(v4 - 8);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2601E0();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v7 - 8);
  v86 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v66 - v10;
  __chkstk_darwin(v11);
  v89 = &v66 - v12;
  v81 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v81);
  v83 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_263DD0();
  __chkstk_darwin(v14 - 8);
  v79 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_263A10();
  v16 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - v19;
  v88 = sub_263AF0();
  v80 = *(v88 - 8);
  __chkstk_darwin(v88);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18((v1 + 72), *(v1 + 96));
  v77 = sub_2606E0();
  v76 = v23;
  sub_2E18((v2 + 72), *(v2 + 96));
  v75 = sub_2606E0();
  v74 = v24;
  sub_2E18((v2 + 72), *(v2 + 96));
  v73 = sub_260870();
  sub_2E18((v2 + 72), *(v2 + 96));
  v71 = sub_2606E0();
  LOBYTE(v95[0]) = 26;
  v25 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(v95, (v1 + 72));
  sub_2E18((v2 + 72), *(v2 + 96));
  sub_2608C0();
  v26 = sub_260060();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v20, 1, v26) == 1)
  {
    sub_8E80(v20, &qword_322C70, &qword_272AD0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_260020();
    v29 = v30;
    (*(v27 + 8))(v20, v26);
  }

  if (qword_315900 != -1)
  {
    swift_once();
  }

  v95[8] = xmmword_31ADC0;
  v95[9] = xmmword_31ADD0;
  v95[10] = xmmword_31ADE0;
  v95[4] = xmmword_31AD80;
  v95[5] = xmmword_31AD90;
  v95[6] = xmmword_31ADA0;
  v95[7] = xmmword_31ADB0;
  v95[0] = xmmword_31AD40;
  v95[3] = xmmword_31AD70;
  v95[1] = *algn_31AD50;
  v95[2] = xmmword_31AD60;
  v31 = &_swiftEmptyDictionarySingleton;
  if (v25)
  {
    v94 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v93 = v25;
    sub_FBD8(&v93, v92);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v92, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v31 = v91;
  }

  if (v29)
  {
    v94 = &type metadata for String;
    *&v93 = v28;
    *(&v93 + 1) = v29;
    sub_FBD8(&v93, v92);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v31;
    sub_DC90(v92, 0x72556E6F69746361, 0xE90000000000006CLL, v33);
    v31 = v91;
  }

  v94 = &type metadata for String;
  *&v93 = 0xD000000000000014;
  *(&v93 + 1) = 0x800000000028F900;
  sub_FBD8(&v93, v92);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v31;
  sub_DC90(v92, 0x79546E6F69746361, 0xEA00000000006570, v34);
  v35 = v91;
  sub_2EF0(&qword_317218, &unk_269760);
  v36 = swift_allocObject();
  v70 = xmmword_267D30;
  *(v36 + 16) = xmmword_267D30;
  *(v36 + 32) = sub_1694E0();
  v94 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v93 = v36;
  sub_FBD8(&v93, v92);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v35;
  sub_DC90(v92, 0x6E6F697461636F6CLL, 0xE800000000000000, v37);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v38 = sub_2639E0();
  sub_B080(v38, qword_353F10);
  v39 = v72;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v40 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v70;
  v42 = v78;
  (*(v16 + 16))(v41 + v40, v39, v78);
  sub_263DC0();
  sub_263AD0();
  (*(v16 + 8))(v39, v42);
  v43 = v83;
  *v83 = 0xD00000000000001ALL;
  *(v43 + 8) = 0x8000000000291540;
  *(v43 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v44 = sub_260620();
  v45 = *(v44 - 8);
  v46 = v22;
  v47 = v89;
  v81 = *(v45 + 56);
  v81(v89, 1, 1, v44);
  v48 = v82;
  sub_2601D0();
  v49 = sub_2601C0();
  v51 = v50;
  (*(v84 + 1))(v48, v85);
  v52 = v90;
  *v90 = v49;
  v52[1] = v51;
  v53 = v47;
  v54 = v76;
  v52[2] = v77;
  v52[3] = v54;
  v55 = v74;
  v52[4] = v75;
  v52[5] = v55;
  *(v52 + 48) = v73 & 1;
  v56 = type metadata accessor for AssetAction(0);
  v57 = v80;
  v58 = *(v80 + 16);
  v59 = v52 + *(v56 + 32);
  v84 = v46;
  v60 = v46;
  v61 = v88;
  v58(v59, v60, v88);
  v85 = v56;
  sub_199378(v43, v52 + *(v56 + 40), type metadata accessor for AssetAction.Kind);
  v62 = v86;
  sub_8198(v47, v86, &qword_316B98, &unk_275840);
  v63 = *(v45 + 48);
  if (v63(v62, 1, v44) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v66);
    (*(v68 + 104))(v67, enum case for LinkActionType.click(_:), v69);
    v64 = v87;
    sub_260610();
    sub_8E80(v89, &qword_316B98, &unk_275840);
    sub_1993E0(v43, type metadata accessor for AssetAction.Kind);
    (*(v57 + 8))(v84, v88);
    if (v63(v62, 1, v44) != 1)
    {
      sub_8E80(v62, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v53, &qword_316B98, &unk_275840);
    sub_1993E0(v43, type metadata accessor for AssetAction.Kind);
    (*(v57 + 8))(v84, v61);
    v64 = v87;
    (*(v45 + 32))(v87, v62, v44);
  }

  v81(v64, 0, 1, v44);
  return sub_129C04(v64, v90 + *(v85 + 36));
}

uint64_t sub_197B28@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v69 = sub_260560();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_260600();
  __chkstk_darwin(v4 - 8);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2601E0();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v7 - 8);
  v86 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v66 - v10;
  __chkstk_darwin(v11);
  v89 = &v66 - v12;
  v81 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v81);
  v83 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_263DD0();
  __chkstk_darwin(v14 - 8);
  v79 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_263A10();
  v16 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - v19;
  v88 = sub_263AF0();
  v80 = *(v88 - 8);
  __chkstk_darwin(v88);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18((v1 + 72), *(v1 + 96));
  v77 = sub_2606E0();
  v76 = v23;
  sub_2E18((v2 + 72), *(v2 + 96));
  v75 = sub_2606E0();
  v74 = v24;
  sub_2E18((v2 + 72), *(v2 + 96));
  v73 = sub_260870();
  sub_2E18((v2 + 72), *(v2 + 96));
  v71 = sub_2606E0();
  LOBYTE(v95[0]) = 1;
  v25 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(v95, (v1 + 72));
  sub_2E18((v2 + 72), *(v2 + 96));
  sub_2608C0();
  v26 = sub_260060();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v20, 1, v26) == 1)
  {
    sub_8E80(v20, &qword_322C70, &qword_272AD0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_260020();
    v29 = v30;
    (*(v27 + 8))(v20, v26);
  }

  if (qword_315900 != -1)
  {
    swift_once();
  }

  v95[8] = xmmword_31ADC0;
  v95[9] = xmmword_31ADD0;
  v95[10] = xmmword_31ADE0;
  v95[4] = xmmword_31AD80;
  v95[5] = xmmword_31AD90;
  v95[6] = xmmword_31ADA0;
  v95[7] = xmmword_31ADB0;
  v95[0] = xmmword_31AD40;
  v95[3] = xmmword_31AD70;
  v95[1] = *algn_31AD50;
  v95[2] = xmmword_31AD60;
  v31 = &_swiftEmptyDictionarySingleton;
  if (v25)
  {
    v94 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v93 = v25;
    sub_FBD8(&v93, v92);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v92, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v31 = v91;
  }

  if (v29)
  {
    v94 = &type metadata for String;
    *&v93 = v28;
    *(&v93 + 1) = v29;
    sub_FBD8(&v93, v92);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v31;
    sub_DC90(v92, 0x72556E6F69746361, 0xE90000000000006CLL, v33);
    v31 = v91;
  }

  v94 = &type metadata for String;
  *&v93 = 0x6E61576F54646461;
  *(&v93 + 1) = 0xEF646165526F5474;
  sub_FBD8(&v93, v92);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v31;
  sub_DC90(v92, 0x79546E6F69746361, 0xEA00000000006570, v34);
  v35 = v91;
  sub_2EF0(&qword_317218, &unk_269760);
  v36 = swift_allocObject();
  v70 = xmmword_267D30;
  *(v36 + 16) = xmmword_267D30;
  *(v36 + 32) = sub_1694E0();
  v94 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v93 = v36;
  sub_FBD8(&v93, v92);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v35;
  sub_DC90(v92, 0x6E6F697461636F6CLL, 0xE800000000000000, v37);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v38 = sub_2639E0();
  sub_B080(v38, qword_353F10);
  v39 = v72;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v40 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v70;
  v42 = v78;
  (*(v16 + 16))(v41 + v40, v39, v78);
  sub_263DC0();
  sub_263AD0();
  (*(v16 + 8))(v39, v42);
  v43 = v83;
  *v83 = 0xD00000000000001ALL;
  *(v43 + 8) = 0x8000000000291540;
  *(v43 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v44 = sub_260620();
  v45 = *(v44 - 8);
  v46 = v22;
  v47 = v89;
  v81 = *(v45 + 56);
  v81(v89, 1, 1, v44);
  v48 = v82;
  sub_2601D0();
  v49 = sub_2601C0();
  v51 = v50;
  (*(v84 + 1))(v48, v85);
  v52 = v90;
  *v90 = v49;
  v52[1] = v51;
  v53 = v47;
  v54 = v76;
  v52[2] = v77;
  v52[3] = v54;
  v55 = v74;
  v52[4] = v75;
  v52[5] = v55;
  *(v52 + 48) = v73 & 1;
  v56 = type metadata accessor for AssetAction(0);
  v57 = v80;
  v58 = *(v80 + 16);
  v59 = v52 + *(v56 + 32);
  v84 = v46;
  v60 = v46;
  v61 = v88;
  v58(v59, v60, v88);
  v85 = v56;
  sub_199378(v43, v52 + *(v56 + 40), type metadata accessor for AssetAction.Kind);
  v62 = v86;
  sub_8198(v47, v86, &qword_316B98, &unk_275840);
  v63 = *(v45 + 48);
  if (v63(v62, 1, v44) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v66);
    (*(v68 + 104))(v67, enum case for LinkActionType.click(_:), v69);
    v64 = v87;
    sub_260610();
    sub_8E80(v89, &qword_316B98, &unk_275840);
    sub_1993E0(v43, type metadata accessor for AssetAction.Kind);
    (*(v57 + 8))(v84, v88);
    if (v63(v62, 1, v44) != 1)
    {
      sub_8E80(v62, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v53, &qword_316B98, &unk_275840);
    sub_1993E0(v43, type metadata accessor for AssetAction.Kind);
    (*(v57 + 8))(v84, v61);
    v64 = v87;
    (*(v45 + 32))(v87, v62, v44);
  }

  v81(v64, 0, 1, v44);
  return sub_129C04(v64, v90 + *(v85 + 36));
}

uint64_t sub_1988A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v39 = a1;
  v42 = a2;
  v2 = sub_262730();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_264010();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_263FA0();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v34);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ButtonViewModel(0);
  v13 = (v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_196BB4();
  if (v16)
  {
    v17 = 0xD000000000000010;
  }

  else
  {
    v17 = 0x7269632E73756C70;
  }

  if (v16)
  {
    v18 = 0x80000000002931F0;
  }

  else
  {
    v18 = 0xEB00000000656C63;
  }

  sub_2EF0(&qword_319AF8, &qword_279110);
  *v11 = v17;
  v11[1] = v18;
  sub_263F90();
  v19 = v36;
  (*(v4 + 104))(v6, enum case for LocalizerLookupStrategy.default(_:), v36);
  v37 = v11;
  sub_260B80();
  (*(v4 + 8))(v6, v19);
  (*(v7 + 8))(v9, v35);
  swift_storeEnumTagMultiPayload();
  v20 = &v15[v13[15]];
  v20[3] = type metadata accessor for AssetAction(0);
  v20[4] = sub_723E4(&qword_319B08, &protocol conformance descriptor for AssetAction);
  v21 = sub_10934(v20);
  sub_199378(v39, v21, type metadata accessor for AssetAction);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  swift_storeEnumTagMultiPayload();
  v43 = 0x403C000000000000;
  v22 = enum case for Font.TextStyle.subheadline(_:);
  v23 = v41;
  v24 = *(v40 + 104);
  v25 = v38;
  v24(v38, enum case for Font.TextStyle.subheadline(_:), v41);
  sub_40130();
  sub_2612E0();
  v43 = 0x4008000000000000;
  v24(v25, v22, v23);
  sub_2612E0();
  v26 = v13[8];
  *&v15[v26] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v27 = v13[16];
  v28 = sub_260BD0();
  (*(*(v28 - 8) + 56))(&v15[v27], 1, 1, v28);
  v15[v13[9]] = 1;
  v15[v13[10]] = 0;
  v15[v13[11]] = 1;
  v29 = &v15[v13[12]];
  *v29 = 1;
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  sub_19944C(v37, &v15[v13[13]], type metadata accessor for ButtonViewModel.Content);
  v15[v13[14]] = 1;
  v43 = 0x4020000000000000;
  v24(v25, v22, v23);
  v30 = v42;
  sub_2612E0();
  v31 = type metadata accessor for ButtonView(0);
  v43 = 0x3FF8000000000000;
  v24(v25, v22, v23);
  sub_2612E0();
  v32 = *(v31 + 24);
  *(v30 + v32) = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  return sub_19944C(v15, v30 + *(v31 + 28), type metadata accessor for ButtonViewModel);
}

uint64_t sub_198F0C()
{
  v1 = type metadata accessor for AssetAction(0);
  v2 = (*(*(v1 - 1) + 80) + 128) & ~*(*(v1 - 1) + 80);
  sub_3060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 82));
  sub_3080((v0 + 88));
  v3 = v0 + v2;

  v4 = v1[8];
  v5 = sub_263AF0();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = sub_260620();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v3 + v1[10];
  type metadata accessor for AssetAction.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 3)
      {

        v12 = *(v9 + 24);
        goto LABEL_15;
      }

LABEL_14:
      v12 = *v9;
LABEL_15:

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
LABEL_19:

      goto LABEL_20;
    }

    v11 = sub_260060();
LABEL_18:
    (*(*(v11 - 8) + 8))(v9, v11);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 7)
  {
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
  {
    v11 = sub_2601B0();
    goto LABEL_18;
  }

LABEL_20:

  return swift_deallocObject();
}

uint64_t sub_1991B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetAction(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 128) & ~*(v3 + 80));

  return sub_1988A0(v4, a1);
}

__n128 sub_19925C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_199280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1992C8(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1993E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19944C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1994F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F666E4964726163;
  }

  else
  {
    v3 = 0x6C676E695377656ELL;
  }

  if (v2)
  {
    v4 = 0xED00006472614365;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6F666E4964726163;
  }

  else
  {
    v5 = 0x6C676E695377656ELL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xED00006472614365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264F10();
  }

  return v8 & 1;
}

Swift::Int sub_1995AC()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_19963C(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_1996B8(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_199744(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_3012D0;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1997A4(uint64_t *a1@<X8>)
{
  v2 = 0x6C676E695377656ELL;
  if (*v1)
  {
    v2 = 0x6F666E4964726163;
  }

  v3 = 0xED00006472614365;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1997F0()
{
  if (*v0)
  {
    return 0x6F666E4964726163;
  }

  else
  {
    return 0x6C676E695377656ELL;
  }
}

void sub_199838(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_3012D0;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_19989C(uint64_t a1)
{
  v2 = sub_19A394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1998D8(uint64_t a1)
{
  v2 = sub_19A394();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_199914()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_199980(uint64_t a1)
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

void sub_1999D0(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_301320;
  v6._object = v3;
  v5 = sub_264D40(v4, v6);

  *a2 = v5 != 0;
}

void sub_199A58(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_301358;
  v7._object = a2;
  v6 = sub_264D40(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_199AB0(uint64_t a1)
{
  v2 = sub_19A4B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_199AEC(uint64_t a1)
{
  v2 = sub_19A4B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.NewSingleCardDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_263840();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v51 - v6;
  v7 = sub_2EF0(&qword_3229A8, &qword_281B60);
  __chkstk_darwin(v7 - 8);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v51 - v10;
  v11 = sub_2EF0(&qword_3229B0, &qword_281B68);
  v59 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = sub_2EF0(&qword_3229B8, &unk_281B70);
  v62 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v17 = type metadata accessor for FlowAction.NewSingleCardDestination(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18(a1, a1[3]);
  sub_19A394();
  v20 = v64;
  sub_265120();
  if (v20)
  {
    goto LABEL_16;
  }

  v53 = v11;
  v54 = v13;
  v21 = v62;
  v22 = v63;
  v52 = v19;
  v64 = a1;
  v67 = 0;
  v23 = v14;
  if ((sub_264E10() & 1) == 0)
  {
    v66 = 1;
    sub_19A564(&qword_3229C8, &type metadata accessor for JSONObject, &protocol conformance descriptor for JSONObject);
    sub_264DF0();
    v24 = v21;
    v28 = v58;
    sub_263800();
    v29 = v28;
    v30 = sub_263C10();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      sub_19A3E8(v29);
    }

    else
    {
      sub_2EF0(&unk_3165C0, &qword_28B080);
      v32 = sub_263C00();
      (*(v31 + 8))(v29, v30);
      if (v32)
      {
        v33 = v32;
        type metadata accessor for CardInfo(0);
        v34 = v52;
        sub_2601D0();
        (*(v60 + 8))(v22, v61);
        goto LABEL_13;
      }
    }

    v35 = sub_264C10();
    swift_allocError();
    v37 = v36;
    sub_264D60();
    sub_264BF0();
    (*(*(v35 - 8) + 104))(v37, enum case for DecodingError.dataCorrupted(_:), v35);
    swift_willThrow();
    (*(v60 + 8))(v22, v61);
LABEL_15:
    (*(v24 + 8))(v16, v23);
    a1 = v64;
LABEL_16:
    v44 = a1;
    return sub_3080(v44);
  }

  v65 = 0;
  sub_19A4B8();
  sub_264D50();
  v24 = v21;
  v25 = v60;
  sub_19A564(&qword_3229C8, &type metadata accessor for JSONObject, &protocol conformance descriptor for JSONObject);
  v26 = v57;
  v27 = v61;
  sub_264DF0();
  v38 = v26;
  v39 = v55;
  sub_263800();
  (*(v25 + 8))(v38, v27);
  v40 = sub_263C10();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    sub_19A3E8(v39);
LABEL_14:
    v45 = sub_264C10();
    swift_allocError();
    v47 = v46;
    v49 = v53;
    v48 = v54;
    sub_264D60();
    sub_264BF0();
    (*(*(v45 - 8) + 104))(v47, enum case for DecodingError.dataCorrupted(_:), v45);
    swift_willThrow();
    (*(v59 + 8))(v48, v49);
    goto LABEL_15;
  }

  sub_2EF0(&unk_3165C0, &qword_28B080);
  v42 = sub_263C00();
  (*(v41 + 8))(v39, v40);
  if (!v42)
  {
    goto LABEL_14;
  }

  v33 = v42;
  type metadata accessor for CardInfo(0);
  v34 = v52;
  sub_2601D0();
  (*(v59 + 8))(v54, v53);
LABEL_13:
  v43 = v56;
  (*(v24 + 8))(v16, v23);
  *v34 = v33;
  sub_19A450(v34, v43, type metadata accessor for FlowAction.NewSingleCardDestination);
  v44 = v64;
  return sub_3080(v44);
}

uint64_t type metadata accessor for FlowAction.NewSingleCardDestination(uint64_t a1)
{
  result = qword_322A38;
  if (!qword_322A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_19A394()
{
  result = qword_3229C0;
  if (!qword_3229C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3229C0);
  }

  return result;
}

uint64_t sub_19A3E8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3229A8, &qword_281B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A4B8()
{
  result = qword_3229D0;
  if (!qword_3229D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3229D0);
  }

  return result;
}

uint64_t sub_19A50C(uint64_t a1)
{
  result = sub_19A564(&qword_3229D8, type metadata accessor for FlowAction.NewSingleCardDestination, &protocol conformance descriptor for FlowAction.NewSingleCardDestination);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardInfo(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19A658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19A6C8(uint64_t a1)
{
  result = type metadata accessor for CardInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_19A758()
{
  result = qword_322A70;
  if (!qword_322A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A70);
  }

  return result;
}

unint64_t sub_19A7B0()
{
  result = qword_322A78;
  if (!qword_322A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A78);
  }

  return result;
}

unint64_t sub_19A808()
{
  result = qword_322A80;
  if (!qword_322A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A80);
  }

  return result;
}

unint64_t sub_19A860()
{
  result = qword_322A88;
  if (!qword_322A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A88);
  }

  return result;
}

unint64_t sub_19A8B8()
{
  result = qword_322A90;
  if (!qword_322A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A90);
  }

  return result;
}

unint64_t sub_19A910()
{
  result = qword_322A98;
  if (!qword_322A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322A98);
  }

  return result;
}

uint64_t PageScrollAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageScrollAction(0) + 20);
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PageScrollAction(uint64_t a1)
{
  result = qword_322AF8;
  if (!qword_322AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageScrollAction.location.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for PageScrollAction(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PageScrollAction.init(location:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_260620();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = type metadata accessor for PageScrollAction(0);
  result = sub_263AC0();
  *(a2 + *(v5 + 24)) = v3;
  return result;
}

unint64_t sub_19AB94(uint64_t a1)
{
  result = sub_E3C84();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19ABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316B98, &unk_275840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_263AF0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_19ACE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316B98, &unk_275840);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_263AF0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_19ADE8(uint64_t a1)
{
  sub_143274(319);
  if (v1 <= 0x3F)
  {
    sub_263AF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t CodeAssetInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_30CC(a1, v13);
  sub_19B018(v13, &v11);
  if (!v2)
  {
    v5 = v11;
    sub_260810();

    if (v12)
    {

      sub_F7CC(&v11, v13);
      sub_F7CC(v13, v14);
      v6 = v14[1];
      *a2 = v14[0];
      *(a2 + 16) = v6;
      *(a2 + 32) = v15;
    }

    else
    {
      sub_8E80(&v11, &qword_316D40, &unk_268FC0);
      v7 = sub_264C10();
      swift_allocError();
      v9 = v8;
      sub_2E18(a1, a1[3]);
      sub_2650E0();
      sub_264BF0();
      (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.dataCorrupted(_:), v7);
      swift_willThrow();
    }
  }

  return sub_3080(a1);
}

uint64_t sub_19B018@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v48 = sub_2641D0();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v41 - v5;
  v6 = sub_2EF0(&qword_3229A8, &qword_281B60);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_263840();
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_322B38, &qword_281FA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_260820();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v49 = a1;
  sub_2E18(a1, v18);
  sub_265100();
  if (qword_315AB0 != -1)
  {
    swift_once();
  }

  v19 = sub_2EF0(&qword_322B40, &unk_282F70);
  sub_B080(v19, qword_323388);
  sub_2642C0();

  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    v21 = v49;
    sub_2E18(v49, v49[3]);
    v22 = v46;
    sub_2650F0();
    v20 = v22;
    if (v22)
    {
      (*(v15 + 8))(v17, v14);
      goto LABEL_12;
    }

    v46 = v8;
    sub_2E18(v50, v50[3]);
    sub_19B934(&qword_3229C8, &type metadata accessor for JSONObject, &protocol conformance descriptor for JSONObject);
    sub_264F30();
    v23 = v46;
    sub_263800();
    v24 = sub_263C10();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_8E80(v23, &qword_3229A8, &qword_281B60);
      v21 = v49;
      v26 = v9;
    }

    else
    {
      v27 = sub_263C00();
      v28 = v23;
      v29 = v27;
      (*(v25 + 8))(v28, v24);
      v21 = v49;
      v26 = v9;
      if (v29)
      {
LABEL_11:
        v30 = v43;
        sub_260A00();
        sub_260840();
        v40 = sub_2609F0();

        (*(v42 + 8))(v30, v26);
        (*(v15 + 8))(v17, v14);
        sub_3080(v50);
        *v41 = v40;
        return sub_3080(v21);
      }
    }

    sub_EEE8(_swiftEmptyArrayStorage);

    goto LABEL_11;
  }

  sub_8E80(v13, &qword_322B38, &qword_281FA0);
  sub_2EF0(&qword_322B48, &qword_281FA8);
  sub_19B8D0();
  v20 = swift_allocError();
  swift_willThrow();
  v21 = v49;
LABEL_12:
  v50[6] = v20;
  swift_errorRetain();
  sub_2EF0(&qword_31E968, &qword_27B490);
  v31 = v47;
  v32 = v48;
  if (swift_dynamicCast())
  {

    v33 = v44;
    v34 = v45;
    (*(v45 + 32))(v44, v31, v32);
    v35 = sub_264C10();
    swift_allocError();
    v47 = v36;
    sub_2E18(v21, v21[3]);
    v46 = sub_2650E0();
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_264BC0(23);
    v51._object = 0x80000000002941B0;
    v51._countAndFlagsBits = 0xD000000000000011;
    sub_264530(v51);
    v52._countAndFlagsBits = 0x74657373414DLL;
    v52._object = 0xE600000000000000;
    sub_264530(v52);
    v53._countAndFlagsBits = 8250;
    v53._object = 0xE200000000000000;
    sub_264530(v53);
    sub_264CC0();
    sub_19B934(&qword_322B58, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    (*(v34 + 16))(v37, v33, v32);
    v38 = v47;
    v21 = v49;
    sub_264BF0();
    (*(*(v35 - 8) + 104))(v38, enum case for DecodingError.dataCorrupted(_:), v35);
    swift_willThrow();
    (*(v34 + 8))(v33, v32);
  }

  return sub_3080(v21);
}

unint64_t sub_19B8D0()
{
  result = qword_322B50;
  if (!qword_322B50)
  {
    sub_2F9C(&qword_322B48, &qword_281FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322B50);
  }

  return result;
}

uint64_t sub_19B934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19B980@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_2EF0(&qword_322B68, &qword_281FC0);
  v2 = *(v1 - 8);
  v48 = v1;
  v49 = v2;
  __chkstk_darwin(v1);
  v47 = &v43 - v3;
  v4 = sub_2EF0(&qword_322B70, &qword_281FC8);
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  __chkstk_darwin(v4);
  v44 = &v43 - v6;
  v7 = sub_2EF0(&qword_322B78, &qword_281FD0);
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = sub_2EF0(&qword_31FC40, &qword_27B488);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v52 = &v43 - v15;
  __chkstk_darwin(v16);
  v57 = &v43 - v17;
  __chkstk_darwin(v18);
  v58 = &v43 - v19;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  v59[3] = sub_263E70();
  v59[4] = &protocol witness table for SyncTaskScheduler;
  sub_10934(v59);
  sub_263E60();
  v26 = sub_263C70();
  sub_2640B0();
  sub_263D00();
  v27 = *(v11 + 16);
  v54 = v25;
  v27(v25, v22, v10);
  sub_8E38(&qword_322B80, &qword_322B78, &qword_281FD0, &protocol conformance descriptor for ClosureActionImplementation<A>);
  sub_263CD0();
  v55 = *(v11 + 8);
  v56 = v11 + 8;
  v55(v22, v10);
  (*(v43 + 8))(v9, v7);
  v28 = v44;
  sub_2640E0();
  v29 = v58;
  sub_263D00();
  v53 = v22;
  v27(v22, v29, v10);
  sub_8E38(&qword_322B88, &qword_322B70, &qword_281FC8, &protocol conformance descriptor for CompoundActionImplementation<A>);
  v30 = v45;
  sub_263CD0();
  v55(v29, v10);
  (*(v46 + 8))(v28, v30);
  v31 = v47;
  v51 = v26;
  sub_264070();
  v32 = v57;
  sub_263D00();
  v27(v29, v32, v10);
  sub_8E38(&qword_322B90, &qword_322B68, &qword_281FC0, &protocol conformance descriptor for EmptyActionImplementation<A>);
  v33 = v48;
  sub_263CD0();
  v34 = v55;
  v35 = v56;
  v55(v32, v10);
  (*(v49 + 8))(v31, v33);
  v36 = v52;
  sub_263D00();
  v27(v32, v36, v10);
  sub_19C4E4();
  sub_263CD0();
  v37 = v36;
  v34(v36, v10);
  sub_263D00();
  v27(v36, v13, v10);
  sub_19C538();
  sub_263CD0();
  v34(v13, v10);
  sub_2EF0(&qword_322BA8, qword_281FD8);
  v38 = *(v35 + 64);
  v39 = (*(v35 + 72) + 32) & ~*(v35 + 72);
  v48 = 4 * v38;
  v49 = swift_allocObject();
  v40 = v49 + v39;
  v27((v49 + v39), v54, v10);
  v27((v40 + v38), v53, v10);
  v46 = 2 * v38;
  v27((v40 + 2 * v38), v58, v10);
  v47 = 3 * v38;
  v27((v40 + 3 * v38), v57, v10);
  v27((v40 + 4 * v38), v37, v10);
  sub_263D00();
  v27(v13, v40, v10);
  sub_263CC0();
  v41 = v55;
  v55(v13, v10);
  v27(v13, (v40 + v38), v10);
  sub_263CC0();
  v41(v13, v10);
  v27(v13, (v40 + v46), v10);
  sub_263CC0();
  v41(v13, v10);
  v27(v13, (v40 + v47), v10);
  sub_263CC0();
  v41(v13, v10);
  v27(v13, (v40 + v48), v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_263CC0();
  v41(v13, v10);
  v41(v52, v10);
  v41(v57, v10);
  v41(v58, v10);
  v41(v53, v10);
  return (v41)(v54, v10);
}

uint64_t ActionDispatcher<>.withBuiltInActionImplementations.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2EF0(&qword_322B60, &qword_281FB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_2EF0(&qword_31FC40, &qword_27B488);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_19B980(&v16 - v12);
  v14 = *(v11 + 16);
  v14(v9, v2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v14(a1, v13, v10);
  sub_19C40C(v9, v6);
  sub_263CE0();
  sub_19C47C(v9);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_19C40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_322B60, &qword_281FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19C47C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_322B60, &qword_281FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19C4E4()
{
  result = qword_322B98;
  if (!qword_322B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322B98);
  }

  return result;
}

unint64_t sub_19C538()
{
  result = qword_322BA0;
  if (!qword_322BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322BA0);
  }

  return result;
}

void AttributedString.init(html:font:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

  v8 = sub_19C6C8(a1, a2, a3);
  [*&v8[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];

  v9 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  v10 = sub_25FF40();
  (*(*(v10 - 8) + 16))(a4, &v8[v9], v10);
}

uint64_t type metadata accessor for BooksHTMLConverter(uint64_t a1)
{
  result = qword_322C00;
  if (!qword_322C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_19C6C8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_25FF40();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0x3E79646F623CLL;
  v24 = 0xE600000000000000;
  v25._countAndFlagsBits = a1;
  v25._object = a2;
  sub_264530(v25);
  v26._countAndFlagsBits = 0x3E79646F622F3CLL;
  v26._object = 0xE700000000000000;
  sub_264530(v26);
  v12 = objc_allocWithZone(BUINQMLParser);
  v13 = sub_264420();

  v14 = [v12 initWithString:v13];

  *&v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] = v14;
  *&v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack] = _swiftEmptyArrayStorage;
  v15 = &v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_html];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_font] = a3;

  sub_25FF10();
  (*(v9 + 32))(&v4[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString], v11, v8);
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, "init");
  v17 = *&v16[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser];
  v18 = v16;
  [v17 setDelegate:v18];

  return v18;
}

id sub_19C918()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_19CA08(uint64_t a1)
{
  result = sub_25FF40();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19CDD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19CE2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_19CE90(uint64_t a1, uint64_t a2)
{
  if (a1 == 4)
  {
    if (*(a2 + 16))
    {
      v4 = sub_D5E0(@"href");
      if (v5)
      {
        v6 = (*(a2 + 56) + 16 * v4);
        v8 = *v6;
        v7 = v6[1];
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v16 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack;
    swift_beginAccess();
    v17 = *(v2 + v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_E9894(0, *(v17 + 2) + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_E9894((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[24 * v20];
    *(v21 + 4) = 4;
    *(v21 + 5) = v8;
    *(v21 + 6) = v7;
    *(v2 + v16) = v17;
  }

  else
  {
    v10 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack;
    swift_beginAccess();
    v11 = *(v2 + v10);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((v12 & 1) == 0)
    {
      v11 = sub_E9894(0, *(v11 + 2) + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_E9894((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[24 * v14];
    *(v15 + 5) = 0;
    *(v15 + 6) = 0;
    *(v15 + 4) = a1;
    *(v2 + v10) = v11;
  }

  return swift_endAccess();
}

void sub_19D078()
{
  v1 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 2))
  {
    __break(1u);
LABEL_6:
    v2 = sub_228E38(v2);
    v3 = *(v2 + 2);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(v2 + 2);
  if (v3)
  {
LABEL_4:
    *(v2 + 2) = v3 - 1;
    *(v0 + v1) = v2;
    swift_endAccess();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_19D124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v4 - 8);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v32 - v7;
  v8 = sub_2EF0(&qword_322C78, &qword_282058);
  __chkstk_darwin(v8 - 8);
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_25FF90();
  __chkstk_darwin(v13 - 8);
  v14 = sub_25FF40();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25FF80();
  sub_25FF50();
  v41 = *(v3 + OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_font);
  sub_19D89C();

  sub_25FF70();
  v18 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_tagStack;
  swift_beginAccess();
  v19 = *(*(v3 + v18) + 16);
  if (v19)
  {
    v33 = v15;
    v34 = v14;
    v35 = v3;

    v20 = (v32 + 48);
    v36 = v12;
    while (1)
    {
      v22 = *(v20 - 2);
      if (v22 > 1)
      {
        if (v22 == 2)
        {

          sub_262880();
          v29 = sub_2628B0();
          (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
          sub_8198(v12, v39, &qword_322C78, &qword_282058);
          sub_19D944();
        }

        else
        {
          if (v22 != 3)
          {
            if (v22 != 4 || *v20 == 0)
            {
              goto LABEL_5;
            }

            v24 = v37;
            sub_260050();
            sub_8198(v24, v38, &qword_322C70, &qword_272AD0);
            sub_19D8F0();
            sub_25FF70();

            v25 = v24;
            v26 = &qword_322C70;
            v12 = v36;
            v27 = &qword_272AD0;
            goto LABEL_21;
          }

          sub_262880();
          v30 = sub_2628B0();
          (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
          sub_8198(v12, v39, &qword_322C78, &qword_282058);
          sub_19D998();
        }

        sub_25FF70();

        v25 = v12;
        v26 = &qword_322C78;
        v27 = &qword_282058;
LABEL_21:
        sub_8E80(v25, v26, v27);
        goto LABEL_5;
      }

      if (v22)
      {
        if (v22 != 1)
        {
          goto LABEL_5;
        }

        sub_25FF60();
        if (v40)
        {
          v28 = sub_262660();
LABEL_24:
          v21 = v28;

          goto LABEL_4;
        }
      }

      else
      {

        sub_25FF60();
        if (v40)
        {
          v28 = sub_2625A0();
          goto LABEL_24;
        }
      }

      v21 = 0;
LABEL_4:
      v40 = v21;
      sub_25FF70();

LABEL_5:
      v20 += 3;
      if (!--v19)
      {

        v14 = v34;
        v15 = v33;
        break;
      }
    }
  }

  swift_beginAccess();
  sub_25FF30();
  swift_endAccess();
  return (*(v15 + 8))(v17, v14);
}

void sub_19D6C0(uint64_t a1)
{
  if (qword_315838 != -1)
  {
    swift_once();
  }

  v2 = sub_260D50();
  sub_B080(v2, qword_315F58);
  v3 = v1;
  swift_errorRetain();
  oslog = sub_260D30();
  v4 = sub_2648F0();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_191368(*&v3[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_html], *&v3[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_html + 8], &v10);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v6 = sub_264FF0();
    v8 = sub_191368(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&dword_0, oslog, v4, "Failed to parse the provided HTML string %s with error: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

unint64_t sub_19D89C()
{
  result = qword_322C80;
  if (!qword_322C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322C80);
  }

  return result;
}

unint64_t sub_19D8F0()
{
  result = qword_322C88;
  if (!qword_322C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322C88);
  }

  return result;
}

unint64_t sub_19D944()
{
  result = qword_322C90;
  if (!qword_322C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322C90);
  }

  return result;
}

unint64_t sub_19D998()
{
  result = qword_322C98;
  if (!qword_322C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322C98);
  }

  return result;
}

unint64_t sub_19D9EC()
{
  result = qword_322CA0;
  if (!qword_322CA0)
  {
    type metadata accessor for NQMLAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322CA0);
  }

  return result;
}

double View.synchronousNativeIntentDispatcher(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_30CC(a1, v8);
  v6 = swift_allocObject();
  sub_F7CC(v8, v6 + 16);
  *(v6 + 56) = a2;

  sub_262CA0();

  return result;
}

void *EnvironmentValues.dispatchSynchronousNativeIntent.getter()
{
  sub_19DE58();

  return sub_261CB0();
}

void *sub_19DB64@<X0>(void *a1@<X8>)
{
  sub_19DE58();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

void *sub_19DBB4@<X0>(void *a1@<X8>)
{
  sub_19DE58();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_19DC04(uint64_t *a1)
{
  sub_19DE58();

  return sub_261CC0();
}

uint64_t sub_19DC68(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2637F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a2, v14);
  v8 = swift_allocObject();
  sub_F7CC(v14, v8 + 16);
  v9 = *a1;
  sub_2EF0(&qword_322D18, &qword_282088);
  v10 = swift_allocObject();
  v10[2] = sub_19E664;
  v10[3] = v8;
  v10[4] = v9;

  sub_2637E0();
  v11 = sub_263C60();

  result = (*(v5 + 8))(v7, v4);
  *a1 = v11;
  return result;
}

uint64_t sub_19DE0C()
{
  sub_3080((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_19DE58()
{
  result = qword_322D10;
  if (!qword_322D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322D10);
  }

  return result;
}

double View.synchronousNativeIntentDispatcher(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  sub_262CA0();

  return result;
}

uint64_t sub_19DF48(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2637F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_2EF0(&qword_322D18, &qword_282088);
  v9 = swift_allocObject();
  v9[2] = sub_19E5B0;
  v9[3] = a2;
  v9[4] = v8;
  swift_retain_n();
  sub_2637E0();
  v10 = sub_263C60();

  result = (*(v5 + 8))(v7, v4);
  *a1 = v10;
  return result;
}

void *sub_19E0B8()
{
  sub_2EF0(&qword_322D18, &qword_282088);
  sub_263C70();

  return sub_264190();
}

uint64_t View.synchronousNativeIntentDispatcher(with:implementations:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[3] = &type metadata for SynchronousNativeIntentDispatcher;
  v10[4] = &protocol witness table for SynchronousNativeIntentDispatcher;
  v10[0] = swift_allocObject();
  a2();
  View.synchronousNativeIntentDispatcher(_:with:)(v10, a1, a4, a5);
  return sub_3080(v10);
}

uint64_t sub_19E1DC()
{

  if (*(v0 + 48))
  {
    sub_3080((v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_19E224@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = a1();
  if (a2)
  {
    sub_2EF0(&qword_322D18, &qword_282088);
    sub_263C70();

    sub_264190();
    v6 = a3[3];
    v7 = a3[4];
    sub_2E18(a3, v6);
    sub_30CC(v10, v8);
    (*(v7 + 16))(v9, v8, v6, v7);

    sub_19E5C4(v8);
    sub_3080(v10);
    sub_3080(a3);
    return sub_F7CC(v9, a3);
  }

  return result;
}

uint64_t SynchronousNativeIntentDispatchAction.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2EF0(&qword_322D18, &qword_282088);
  sub_263C70();
  sub_264190();
  v8 = v12;
  v9 = v13;
  sub_2E18(v11, v12);
  (*(v9 + 8))(a1, v7, a2, a3, v8, v9);
  return sub_3080(v11);
}

uint64_t *initializeBufferWithCopyOfBuffer for SynchronousNativeIntentDispatchAction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for SynchronousNativeIntentDispatchAction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for SynchronousNativeIntentDispatchAction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_19E4C4(uint64_t *a1)
{
  sub_2F9C(&qword_322D20, &qword_2820D8);
  sub_261730();
  sub_19E53C();
  return swift_getWitnessTable();
}

unint64_t sub_19E53C()
{
  result = qword_322D28;
  if (!qword_322D28)
  {
    sub_2F9C(&qword_322D20, &qword_2820D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322D28);
  }

  return result;
}

uint64_t sub_19E5C4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_320378, &qword_28A310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19E62C()
{
  sub_3080((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_19E674()
{

  return swift_deallocObject();
}

uint64_t sub_19E724()
{
  sub_262080();
  sub_1A1470(&qword_317430, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return sub_265250();
}

double View.shelfGridColumnSpan(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  sub_1A056C(KeyPath, &v8, a2, a3);

  return result;
}

uint64_t ColumnHStack.init(alignment:fillSinglePage:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X3>)
{
  v11 = type metadata accessor for ColumnHStack(0, a4, a5, a7);
  v12 = a6 + v11[11];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a6 + v11[12];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a6 + v11[13];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  return a3();
}

uint64_t sub_19E8E0(uint64_t a1)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 44);
  result = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {
    v9 = *v7;

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v9, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return result;
}

double sub_19EA2C(uint64_t a1)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 48));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_264900();
  v10 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

double sub_19EB84(uint64_t a1)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 52));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_264900();
  v10 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

double ColumnHStack.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = sub_262080();
  __chkstk_darwin(v4 - 8);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a1 + 16);
  v6 = v51;
  v7 = sub_2F9C(&qword_322D30, &qword_2821F0);
  v50 = *(a1 + 24);
  v8 = v50;
  v9 = sub_8E38(qword_322D38, &qword_322D30, &qword_2821F0, &protocol conformance descriptor for TupleView<A>);
  v61 = v6;
  v62 = v7;
  v63 = v8;
  v64 = v9;
  sub_262100();
  v10 = sub_263090();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = sub_2610F0();
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v47 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = &v44 - v15;
  v52 = v11;
  v53 = v10;
  v16 = sub_263260();
  v45 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v44 = &v44 - v20;
  v21 = sub_261F90();
  v55 = *(v21 - 8);
  v56 = v21;
  __chkstk_darwin(v21);
  v54 = &v44 - v22;
  v23 = *(a1 - 8);
  v24 = *(v23 + 64);
  v26 = __chkstk_darwin(v25);
  (*(v23 + 16))(&v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v26);
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = swift_allocObject();
  v29 = v50;
  *(v28 + 16) = v51;
  *(v28 + 24) = v29;
  (*(v23 + 32))(v28 + v27, &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  LODWORD(v23) = *(v2 + 8);
  sub_19EA2C(a1);
  if (v23 == 1)
  {
    sub_263250();
    v30 = swift_getWitnessTable();
    v31 = v44;
    sub_1609C();
    v32 = *(v45 + 8);
    v32(v18, v16);
    sub_1609C();
    v33 = swift_getWitnessTable();
    v34 = v54;
    sub_1D738(v18, v16, v12, v30, v33);
    v32(v18, v16);
    v32(v31, v16);
  }

  else
  {
    sub_19E724();
    v35 = v47;
    sub_2610E0();
    v36 = swift_getWitnessTable();
    v37 = v46;
    sub_1609C();
    v38 = *(v48 + 8);
    v38(v35, v12);
    sub_1609C();
    v39 = swift_getWitnessTable();
    v34 = v54;
    sub_1D830(v35, v16, v12, v39, v36);
    v38(v35, v12);
    v38(v37, v12);
  }

  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v58 = v40;
  v59 = v41;
  v42 = v56;
  swift_getWitnessTable();
  sub_1609C();
  (*(v55 + 8))(v34, v42);

  return result;
}

uint64_t sub_19F3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ColumnHStack(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v12 = __chkstk_darwin(v11);
  (*(v15 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + *(v14 + 40), a2, v12);
  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v8 + 32))(v17 + v16, v10, v7);
  sub_2EF0(&qword_322D30, &qword_2821F0);
  sub_8E38(qword_322D38, &qword_322D30, &qword_2821F0, &protocol conformance descriptor for TupleView<A>);
  return sub_263080();
}

uint64_t sub_19F5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v58 = a5;
  v63 = a3;
  v64 = a4;
  v61 = type metadata accessor for ColumnHStack(0, a3, a4, a4);
  v7 = *(v61 - 8);
  v60 = *(v7 + 64);
  __chkstk_darwin(v61);
  v62 = &v53 - v8;
  v57 = sub_2EF0(&qword_322DD8, &qword_282280);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v53 - v11;
  v12 = sub_261DE0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2621F0();
  v16 = *(v65 - 8);
  __chkstk_darwin(v65);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v53 - v21;
  v71[0] = 0;
  v23 = a2;
  LODWORD(a2) = *(a2 + 8);
  v24 = (*(v13 + 16))(v15, a1, v12, v20);
  v59 = a2;
  if (a2)
  {
    __chkstk_darwin(v24);
    v25 = v64;
    *(&v53 - 4) = v63;
    *(&v53 - 3) = v25;
    v51 = v71;
    v52 = v23;
    sub_19FEBC(sub_1A14B8, (&v53 - 6), v22);
  }

  else
  {
    sub_1A1470(&qword_322DE0, &type metadata accessor for SubviewsCollection, &protocol conformance descriptor for SubviewsCollection);
    sub_264820();
    sub_264860();
    v26 = sub_264850();
    sub_1D16F0(v26, v27);
  }

  v28 = v23;
  v29 = v61;
  sub_1A0184(v61);
  v31 = v30;
  v54 = v16;
  v32 = *(v16 + 16);
  v53 = v22;
  v32(v18, v22, v65);
  v33 = v62;
  (*(v7 + 16))(v62, v28, v29);
  v34 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v35 = swift_allocObject();
  v36 = v64;
  *(v35 + 2) = v63;
  *(v35 + 3) = v36;
  *(v35 + 4) = v31;
  (*(v7 + 32))(&v35[v34], v33, v29);
  sub_263420();
  sub_2EF0(&qword_322DE8, &qword_282288);
  sub_1A1470(&qword_322DF0, &type metadata accessor for SubviewsCollectionSlice, &protocol conformance descriptor for SubviewsCollectionSlice);
  sub_1A13EC();
  v51 = sub_1A1470(&qword_322E00, &type metadata accessor for Subview, &protocol conformance descriptor for Subview);
  sub_2633C0();
  if (!v59 || (v37 = v71[0], v37 >= sub_19E8E0(v29)))
  {
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v60 = 0;
    v40 = 0;
    v39 = 0;
    LODWORD(v63) = 1;
    goto LABEL_9;
  }

  result = sub_19E8E0(v29);
  if (!__OFSUB__(result, v37))
  {
    sub_19EA2C(v29);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    LODWORD(v63) = 0;
    v64 = v71[1];
    v61 = v75;
    v62 = v73;
    v60 = v76;
    v69 = 0;
    v68 = v72;
    v67 = v74;
    v39 = v72;
    v40 = v74;
    LOBYTE(v70) = 0;
LABEL_9:
    v41 = v56;
    v42 = *(v56 + 16);
    v43 = v55;
    v44 = v66;
    v45 = v57;
    v42(v55, v66, v57);
    v46 = v58;
    v42(v58, v43, v45);
    v47 = &v46[*(sub_2EF0(&qword_322E08, &unk_282290) + 48)];
    *v47 = 0;
    *(v47 + 1) = 0;
    *(v47 + 2) = v64;
    *(v47 + 3) = v39;
    v48 = v61;
    *(v47 + 4) = v62;
    *(v47 + 5) = v40;
    v49 = v60;
    *(v47 + 6) = v48;
    *(v47 + 7) = v49;
    v47[64] = v63;
    v50 = *(v41 + 8);
    v50(v44, v45);
    (*(v54 + 8))(v53, v65);
    return (v50)(v43, v45);
  }

  __break(1u);
  return result;
}

uint64_t sub_19FD1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2615F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263410();
  sub_1A14DC();
  sub_261600();
  result = (*(v9 + 8))(v11, v8);
  v14 = v18;
  v15 = *a2 + v18;
  if (__OFADD__(*a2, v18))
  {
    __break(1u);
  }

  else
  {
    v16 = type metadata accessor for ColumnHStack(0, a4, a5, v13);
    result = sub_19E8E0(v16);
    if (result < v15)
    {
      return result >= v15;
    }

    if (!__OFADD__(*a2, v14))
    {
      *a2 += v14;
      return result >= v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19FE80(uint64_t a1)
{
  sub_1A14DC();
  sub_261600();
  return v2;
}

void *sub_19FEBC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v18 = a3;
  v5 = sub_263430();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261DE0();
  sub_1A1470(&qword_322DE0, &type metadata accessor for SubviewsCollection, &protocol conformance descriptor for SubviewsCollection);
  sub_264820();
  sub_264860();
  v10 = v25;
  if (v25 != v24[0])
  {
    v20 = v5;
    v11 = (v6 + 16);
    v19 = (v6 + 8);
    while (1)
    {
      v12 = v3;
      v13 = sub_2648A0();
      v14 = v20;
      (*v11)(v8);
      v13(v24, 0);
      v15 = v21(v8);
      if (v4)
      {
        (*(*(v9 - 8) + 8))(v12, v9);
        return (*v19)(v8, v14);
      }

      v16 = v15;
      (*v19)(v8, v14);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v3 = v12;
      sub_264870();
      sub_264860();
      v10 = v25;
      if (v25 == v24[0])
      {
        goto LABEL_9;
      }
    }

    v3 = v12;
  }

LABEL_9:
  result = sub_264820();
  if (v10 < v23)
  {
    __break(1u);
  }

  else
  {
    v24[0] = v23;
    v24[1] = v10;
    sub_264890();
    return (*(*(v9 - 8) + 8))(v3, v9);
  }

  return result;
}

void sub_1A0184(uint64_t a1)
{
  sub_19EB84(a1);
  sub_19EA2C(a1);
  sub_19E8E0(a1);
  sub_19EA2C(a1);
}

double sub_1A01E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_2615F0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263410();
  sub_1A14DC();
  sub_261600();
  (*(v10 + 8))(v12, v9);
  v14 = type metadata accessor for ColumnHStack(0, a2, a3, v13);
  sub_19EA2C(v14);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v15 = sub_263430();
  (*(*(v15 - 8) + 16))(a4, a1, v15);
  v16 = (a4 + *(sub_2EF0(&qword_322DE8, &qword_282288) + 36));
  v17 = v19[1];
  *v16 = v19[0];
  v16[1] = v17;
  result = *&v20;
  v16[2] = v20;
  return result;
}

void *sub_1A0404@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t)@<X5>, void *a4@<X8>)
{
  v7 = a1();
  result = a3(&v9, a2, a2, v7);
  *a4 = v9;
  return result;
}

uint64_t sub_1A04D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v9 = a5();
  return a7(&v11, a6, a6, v9);
}

uint64_t sub_1A056C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *(*a1 + class metadata base offset for WritableKeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v16 - v8;
  v10 = sub_262400();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v16 - v13);
  (*(v7 + 16))(v9, a2, v6, v12);
  sub_1A1530(a1, v9, v14);

  sub_262E30();
  return (*(v11 + 8))(v14, v10);
}

void *sub_1A078C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t)@<X5>, void *a4@<X8>)
{
  v7 = a1();
  result = a3(&v9, a2, a2, v7);
  *a4 = v9;
  return result;
}

uint64_t sub_1A0828(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v9 = a5();
  return a7(&v11, a6, a6, v9);
}

uint64_t sub_1A0940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for ColumnHStack(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_19F3AC(v9, v5, v6, v7);
}

void sub_1A0A10(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_60890(319, &qword_322DC0, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_60890(319, &qword_316308, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A0AE8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 9) & ~v6) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))(&a1[v6 + 9] & ~v6);
    }

    v17 = a1[8];
    v18 = v17 >= 2;
    v19 = (v17 + 2147483646) & 0x7FFFFFFF;
    if (v18)
    {
      return (v19 + 1);
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1A0C50(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 9) & ~v9) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 > 0xFE)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 9] & ~v9;

        v17(v18);
      }

      else
      {
        a1[8] = a2 + 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1A0E34(void *a1)
{
  sub_2F9C(&qword_322D30, &qword_2821F0);
  sub_8E38(qword_322D38, &qword_322D30, &qword_2821F0, &protocol conformance descriptor for TupleView<A>);
  sub_262100();
  sub_263090();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_263260();
  sub_2610F0();
  sub_261F90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A0FBC(uint64_t *a1)
{
  sub_2F9C(&qword_322DC8, &qword_285D50);
  sub_261730();
  sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50, &protocol conformance descriptor for _ContainerValueWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_1A1068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ColumnHStack(0, v5, *(v4 + 24), a4);
  v7 = (v6 - 8);
  v8 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  (*(*(v5 - 8) + 8))(v8 + *(v6 + 40), v5);
  sub_3074(*(v8 + v7[13]), *(v8 + v7[13] + 8));
  sub_3074(*(v8 + v7[14]), *(v8 + v7[14] + 8));
  sub_3074(*(v8 + v7[15]), *(v8 + v7[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A118C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ColumnHStack(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_19F5E0(a1, v9, v6, v7, a3);
}

uint64_t sub_1A1228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ColumnHStack(0, v5, *(v4 + 24), a4);
  v7 = (v6 - 8);
  v8 = v4 + ((*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80));
  (*(*(v5 - 8) + 8))(v8 + *(v6 + 40), v5);
  sub_3074(*(v8 + v7[13]), *(v8 + v7[13] + 8));
  sub_3074(*(v8 + v7[14]), *(v8 + v7[14] + 8));
  sub_3074(*(v8 + v7[15]), *(v8 + v7[15] + 8));

  return swift_deallocObject();
}

double sub_1A134C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for ColumnHStack(0, v6, v7, a2);

  return sub_1A01E8(a1, v6, v7, a3);
}

unint64_t sub_1A13EC()
{
  result = qword_322DF8;
  if (!qword_322DF8)
  {
    sub_2F9C(&qword_322DE8, &qword_282288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322DF8);
  }

  return result;
}

uint64_t sub_1A1470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A14DC()
{
  result = qword_322E10;
  if (!qword_322E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322E10);
  }

  return result;
}

uint64_t sub_1A1530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = *a1;
  *a3 = a1;
  v7 = *(v6 + class metadata base offset for WritableKeyPath + 8);
  v8 = sub_262400();
  v9 = *(*(v7 - 8) + 32);
  v10 = a3 + *(v8 + 28);

  return v9(v10, a2, v7);
}

uint64_t View.defaultBlendMode()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DefaultBlendModeModifier(0);
  __chkstk_darwin(v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  sub_262E30();
  return sub_1A1A00(v4);
}

uint64_t type metadata accessor for DefaultBlendModeModifier(uint64_t a1)
{
  result = qword_322E70;
  if (!qword_322E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A1724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22 = a1;
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_3179C0, &qword_269D60);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_263640();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A1D1C(v3, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v13 + 32);
    v16(v15, v11, v12);
  }

  else
  {
    sub_264900();
    v17 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v16 = *(v13 + 32);
  }

  v18 = sub_2EF0(&qword_322EA8, &qword_282390);
  v16((a2 + *(v18 + 36)), v15, v12);
  v19 = sub_2EF0(&qword_322EB0, &unk_282398);
  return (*(*(v19 - 8) + 16))(a2, v22, v19);
}

uint64_t sub_1A1A00(uint64_t a1)
{
  v2 = type metadata accessor for DefaultBlendModeModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A1A5C(uint64_t *a1)
{
  type metadata accessor for DefaultBlendModeModifier(255);
  sub_261730();
  sub_1A1AC8();
  return swift_getWitnessTable();
}

unint64_t sub_1A1AC8()
{
  result = qword_3193A8;
  if (!qword_3193A8)
  {
    type metadata accessor for DefaultBlendModeModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3193A8);
  }

  return result;
}

uint64_t sub_1A1B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317878, &unk_27E490);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A1BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317878, &unk_27E490);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1A1C3C(uint64_t a1)
{
  sub_1A1CA8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A1CA8(uint64_t a1)
{
  if (!qword_3178F8)
  {
    sub_263640();
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_3178F8);
    }
  }
}

uint64_t sub_1A1D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3179C0, &qword_269D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A1D90()
{
  result = qword_322EB8;
  if (!qword_322EB8)
  {
    sub_2F9C(&qword_322EA8, &qword_282390);
    sub_1A1E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322EB8);
  }

  return result;
}

unint64_t sub_1A1E1C()
{
  result = qword_322EC0;
  if (!qword_322EC0)
  {
    sub_2F9C(&qword_322EB0, &unk_282398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322EC0);
  }

  return result;
}

uint64_t ShelfFooterSeeAllComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for ShelfFooterSeeAllComponentModel(0);
  sub_8198(v1 + *(v6 + 24), v5, &qword_315D40, &qword_288230);
  return sub_22148(v5, a1, &qword_315D48, &qword_266E40);
}

uint64_t type metadata accessor for ShelfFooterSeeAllComponentModel(uint64_t a1)
{
  result = qword_322F88;
  if (!qword_322F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A1F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for ShelfFooterSeeAllComponentModel(0);
  sub_8198(a1 + *(v7 + 24), v6, &qword_315D40, &qword_288230);
  return sub_22148(v6, a2, &qword_315D48, &qword_266E40);
}

uint64_t ShelfFooterSeeAllComponentModel.init(id:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 40) = 0u;
  v8 = a4 + 40;
  sub_34A0(v13, a4 + 40, &qword_315D38, &unk_266E30);
  v9 = *(type metadata accessor for ShelfFooterSeeAllComponentModel(0) + 24);
  v10 = sub_263E50();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  *(a4 + 32) = *(a1 + 32);
  sub_34A0(a2, v8, &qword_315D38, &unk_266E30);
  return sub_34A0(a3, a4 + v9, &qword_315D48, &qword_266E40);
}

unint64_t sub_1A2200()
{
  v1 = 0x6575676573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A2250@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A3820(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2278(uint64_t a1)
{
  v2 = sub_1A254C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A22B4(uint64_t a1)
{
  v2 = sub_1A254C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfFooterSeeAllComponentModel.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_322EC8, &qword_2823A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_2E18(a1, a1[3]);
  sub_1A254C();
  sub_265140();
  v8[15] = 0;
  sub_2EF0(&qword_315D28, &qword_266E20);
  sub_8E38(&qword_322ED8, &qword_315D28, &qword_266E20, &protocol conformance descriptor for CodeAnyHashable<A>);
  sub_264E90();
  if (!v1)
  {
    v8[14] = 1;
    sub_2EF0(&qword_315D30, &qword_266E28);
    sub_8E38(&qword_322EE0, &qword_315D30, &qword_266E28, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_264E90();
    type metadata accessor for ShelfFooterSeeAllComponentModel(0);
    v8[13] = 2;
    sub_2EF0(&qword_315D40, &qword_288230);
    sub_1A25A0();
    sub_264E90();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A254C()
{
  result = qword_322ED0;
  if (!qword_322ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322ED0);
  }

  return result;
}

unint64_t sub_1A25A0()
{
  result = qword_322EE8;
  if (!qword_322EE8)
  {
    sub_2F9C(&qword_315D40, &qword_288230);
    sub_1A265C(&qword_322EF0, &qword_322EF8, &protocol conformance descriptor for ImpressionMetrics, &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322EE8);
  }

  return result;
}

uint64_t sub_1A265C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(&qword_315D48, &qword_266E40);
    sub_1A36C0(a2, &type metadata accessor for ImpressionMetrics, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ShelfFooterSeeAllComponentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v3);
  v5 = &v23 - v4;
  v6 = sub_2EF0(&qword_322F00, &qword_2823B0);
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ShelfFooterSeeAllComponentModel(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v13 = (v12 + 40);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  sub_34A0(&v29, (v12 + 40), &qword_315D38, &unk_266E30);
  v14 = *(v10 + 32);
  v15 = sub_263E50();
  v16 = *(*(v15 - 8) + 56);
  v28 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = a1[3];
  v27 = a1;
  sub_2E18(a1, v17);
  sub_1A254C();
  v18 = v26;
  sub_265120();
  if (v18)
  {
    sub_3080(v27);
    sub_8E80(v13, &qword_315D30, &qword_266E28);
    return sub_8E80(&v12[v28], &qword_315D40, &qword_288230);
  }

  else
  {
    v26 = v5;
    sub_2EF0(&qword_315D28, &qword_266E20);
    v32 = 0;
    sub_8E38(&qword_315D60, &qword_315D28, &qword_266E20, &protocol conformance descriptor for CodeAnyHashable<A>);
    v19 = v25;
    sub_264DF0();
    v20 = v30;
    *v12 = v29;
    *(v12 + 1) = v20;
    *(v12 + 4) = v31;
    sub_2EF0(&qword_315D30, &qword_266E28);
    v32 = 1;
    sub_8E38(&qword_315D68, &qword_315D30, &qword_266E28, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_264DF0();
    sub_34A0(&v29, v13, &qword_315D30, &qword_266E28);
    LOBYTE(v29) = 2;
    sub_8EE0();
    v21 = v26;
    sub_264DF0();
    (*(v24 + 8))(v8, v19);
    sub_34A0(v21, &v12[v28], &qword_315D40, &qword_288230);
    sub_1A2B88(v12, v23);
    sub_3080(v27);
    return sub_1A2BEC(v12);
  }
}

uint64_t sub_1A2B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterSeeAllComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2BEC(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterSeeAllComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_8198(v2 + *(a1 + 24), &v9 - v6, &qword_315D40, &qword_288230);
  return sub_22148(v7, a2, &qword_315D48, &qword_266E40);
}

uint64_t ShelfFooterSeeAllComponent.content(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_322F08, &qword_2823B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - v6);
  sub_8198(a1 + 40, &v20, &qword_315D30, &qword_266E28);
  if (v21)
  {
    sub_F7CC(&v20, v22);
    v8 = type metadata accessor for SeeAllView(0);
    sub_30CC(v22, v7 + *(v8 + 24));
    *v7 = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v9 = *(v8 + 20);
    *(v7 + v9) = swift_getKeyPath();
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v9) = sub_262560();
    sub_2610C0();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_3080(v22);
    v18 = v7 + *(v4 + 36);
    *v18 = v9;
    *(v18 + 1) = v11;
    *(v18 + 2) = v13;
    *(v18 + 3) = v15;
    *(v18 + 4) = v17;
    v18[40] = 0;
    sub_22148(v7, a2, &qword_322F08, &qword_2823B8);
    return (*(v5 + 56))(a2, 0, 1, v4);
  }

  else
  {
    sub_8E80(&v20, &qword_315D38, &unk_266E30);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_1A2F7C(uint64_t a1)
{
  sub_1A31BC();

  return sub_260B30();
}

uint64_t sub_1A2FC8(uint64_t a1)
{
  result = sub_1A36C0(&qword_322F10, type metadata accessor for ShelfFooterSeeAllComponentModel, &protocol conformance descriptor for ShelfFooterSeeAllComponentModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A306C()
{
  result = qword_322F20;
  if (!qword_322F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322F20);
  }

  return result;
}

unint64_t sub_1A31BC()
{
  result = qword_322F28;
  if (!qword_322F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322F28);
  }

  return result;
}

double sub_1A3210@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1, v5, &qword_315D28, &qword_266E20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1A3268@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1 + 40, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1A3350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_315D40, &qword_288230);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3420(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_315D40, &qword_288230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A34D0(uint64_t a1)
{
  sub_9CAC();
  if (v1 <= 0x3F)
  {
    sub_9D28(319);
    if (v2 <= 0x3F)
    {
      sub_9DD8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A3580()
{
  result = qword_322FC8;
  if (!qword_322FC8)
  {
    sub_2F9C(&qword_322FD0, &qword_282600);
    sub_1A3604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FC8);
  }

  return result;
}

unint64_t sub_1A3604()
{
  result = qword_322FD8;
  if (!qword_322FD8)
  {
    sub_2F9C(&qword_322F08, &qword_2823B8);
    sub_1A36C0(&qword_322FE0, type metadata accessor for SeeAllView, &protocol conformance descriptor for SeeAllView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FD8);
  }

  return result;
}

uint64_t sub_1A36C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A371C()
{
  result = qword_322FE8;
  if (!qword_322FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FE8);
  }

  return result;
}

unint64_t sub_1A3774()
{
  result = qword_322FF0;
  if (!qword_322FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FF0);
  }

  return result;
}

unint64_t sub_1A37CC()
{
  result = qword_322FF8;
  if (!qword_322FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FF8);
  }

  return result;
}

uint64_t sub_1A3820(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000028FFC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t PressedOverlayButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_2624A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_31E010, &qword_282730);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v12 - v9;
  (*(v3 + 16))(v5, a1, v2, v8);
  sub_263240();
  sub_8E38(&qword_31E018, &qword_31E010, &qword_282730, &protocol conformance descriptor for Button<A>);
  sub_1A3B0C();
  sub_262A60();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1A3B0C()
{
  result = qword_323008;
  if (!qword_323008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323008);
  }

  return result;
}

uint64_t sub_1A3B8C()
{
  sub_2F9C(&qword_31E010, &qword_282730);
  sub_8E38(&qword_31E018, &qword_31E010, &qword_282730, &protocol conformance descriptor for Button<A>);
  sub_1A3B0C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3C64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262290();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2622A0();
  if (sub_2622B0())
  {
    if (qword_315A98 != -1)
    {
      swift_once();
    }

    v6 = qword_323000;
    v7 = sub_262EE0();
  }

  else
  {
    v7 = sub_262FA0();
  }

  v8 = v7;
  v9 = sub_262500();
  (*(v3 + 32))(a1, v5, v2);
  result = sub_2EF0(&qword_323010, &qword_2827E8);
  v11 = a1 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

void sub_1A3DB8()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1A3E80;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1A3F1C;
  v3[3] = &unk_30D9F0;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_323000 = v2;
}

id sub_1A3E80(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == &dword_0 + 2)
  {
    v3 = 0.921568627;
    v4 = 0.960784314;
    v5 = 0.12;
  }

  else
  {
    v3 = 0.0156862745;
    v4 = 0.0588235294;
    v5 = 0.15;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:v5];
}

id sub_1A3F1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1A3F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A3FA0()
{
  result = qword_323018;
  if (!qword_323018)
  {
    sub_2F9C(&qword_323010, &qword_2827E8);
    sub_9A100();
    sub_8E38(&qword_323020, &qword_323028, &unk_2827F0, &protocol conformance descriptor for _OverlayStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323018);
  }

  return result;
}

uint64_t IntentResult.dispatchState.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_264A60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_260AD0();
  v8 = 1;
  LODWORD(v3) = (*(*(v3 - 8) + 48))(v7, 1, v3);
  result = (*(v5 + 8))(v7, v4);
  if (v3 == 1)
  {
    result = sub_260AE0();
    if (result)
    {

      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  *a2 = v8;
  return result;
}

uint64_t sub_1A419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A43A0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *EnvironmentValues.pageIntentDispatchState.getter()
{
  sub_3C60();

  return sub_261CB0();
}

uint64_t (*EnvironmentValues.pageIntentDispatchState.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_3C60();
  sub_261CB0();
  return sub_1A42E8;
}

unint64_t sub_1A4324()
{
  result = qword_323030;
  if (!qword_323030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323030);
  }

  return result;
}

unint64_t sub_1A43A0()
{
  result = qword_323038;
  if (!qword_323038)
  {
    sub_2F9C(qword_323040, &qword_2828E8);
    sub_1A4324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323038);
  }

  return result;
}

unint64_t MetricsFieldsConvertible.metricsFields.getter(uint64_t a1, uint64_t a2)
{
  sub_25FE70();
  swift_allocObject();
  sub_25FE60();
  v9 = sub_25FE50();
  v11 = v10;

  v12 = objc_opt_self();
  isa = sub_260070().super.isa;
  v19[0] = 0;
  v14 = [v12 JSONObjectWithData:isa options:0 error:v19];

  if (v14)
  {
    v15 = v19[0];
    sub_264AC0();
    swift_unknownObjectRelease();
    sub_2EF0(&qword_320CD0, &unk_27D9A0);
    if (swift_dynamicCast())
    {
      v8 = sub_1A4738(v18);
    }

    else
    {
      v8 = sub_E678(_swiftEmptyArrayStorage);
    }

    sub_16A088(v9, v11);
  }

  else
  {
    v16 = v19[0];
    sub_25FFB0();

    swift_willThrow();
    sub_16A088(v9, v11);
    if (qword_315840 != -1)
    {
      swift_once();
    }

    v2 = sub_260D50();
    sub_B080(v2, qword_315F70);
    swift_errorRetain();
    v3 = sub_260D30();
    v4 = sub_2648F0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&dword_0, v3, v4, "Failed to convert metrics model into MetricsFields: %@", v5, 0xCu);
      sub_8E80(v6, &qword_316450, &qword_2681E0);
    }

    v8 = sub_E678(_swiftEmptyArrayStorage);
  }

  return v8;
}

uint64_t sub_1A4738(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v39 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A52CC(*(a1 + 56) + 32 * v13, v38);
    *&v37 = v16;
    *(&v37 + 1) = v15;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_1A52CC(&v35, &v28);
    if (v29)
    {
      sub_FBD8(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_FBD8(v33, v30);
      v17 = v2[2];
      if (v2[3] <= v17)
      {

        sub_14D5B4(v17 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      sub_265050();
      sub_264500();
      result = sub_265080();
      v19 = (v2 + 8);
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~v2[(v21 >> 6) + 8]) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *&v19[8 * v22];
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~v2[(v21 >> 6) + 8])) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *&v19[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
      *(v2[6] + 16 * v23) = v18;
      sub_FBD8(v30, (v2[7] + 32 * v23));
      ++v2[2];
      v10 = v32;
    }

    else
    {

      sub_8E80(&v34, &qword_323148, &qword_2829F0);
      v10 = &v28;
    }

    result = sub_8E80(v10, &qword_316200, &qword_267FD0);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t NotEncoded<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  __chkstk_darwin(a1);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_30CC(v11, v14);
  sub_2647C0();
  result = sub_3080(a1);
  if (!v4)
  {
    return (*(v8 + 32))(a4, v10, a2);
  }

  return result;
}

uint64_t NotDecoded.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_264A60();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t NotDecoded.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = sub_264A60();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t NotDecoded.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = sub_264A60();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t NotDecoded.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_3080(a1);
  v5 = *(*(a2 - 8) + 56);
  v5(a3, 1, 1, a2);
  v6 = sub_264A60();
  (*(*(v6 - 8) + 8))(a3, v6);
  return (v5)(a3, 1, 1, a2);
}

uint64_t sub_1A4DFC(void *a1)
{
  sub_2E18(a1, a1[3]);
  sub_265130();
  sub_17450(v2, v2[3]);
  sub_264F60();
  return sub_3080(v2);
}

uint64_t sub_1A4E98(uint64_t a1)
{
  result = sub_264A60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4F08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1A5088(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1A52CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316200, &qword_267FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MoreButtonView.init(assetInfo:contextActionMenuView:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for MoreButtonView(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  result = sub_F7CC(a1, a4 + v8[6]);
  v11 = (a4 + v8[7]);
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t type metadata accessor for MoreButtonView(uint64_t a1)
{
  result = qword_3231D8;
  if (!qword_3231D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A5460@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A688C(v10, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A5644@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for MoreButtonView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A688C(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MoreButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v2 - 8);
  v41 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_261FA0();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261760();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_323150, &qword_282A48);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v35 = sub_2EF0(&qword_323158, &qword_282A50);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v33 - v14;
  v42 = v1;
  sub_2EF0(&qword_323160, &qword_282A58);
  sub_8E38(&qword_323168, &qword_323160, &qword_282A58, &protocol conformance descriptor for Menu<A, B>);
  sub_263230();
  sub_261750();
  v16 = sub_8E38(&qword_323170, &qword_323150, &qword_282A48, &protocol conformance descriptor for Button<A>);
  v17 = sub_1A5E08(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  sub_262A50();
  (*(v34 + 8))(v9, v7);
  (*(v11 + 8))(v13, v10);
  v18 = v37;
  sub_2618C0();
  v43 = v10;
  v44 = v7;
  v45 = v16;
  v46 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1A5E08(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v19 = v40;
  v20 = v35;
  v21 = v38;
  sub_262AA0();
  (*(v39 + 8))(v18, v21);
  (*(v36 + 8))(v15, v20);
  v22 = v41;
  sub_1A5460(v41);
  sub_1A6824(v22, type metadata accessor for SizeConstants);
  LOBYTE(v22) = sub_262500();
  sub_2610C0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = sub_2EF0(&qword_323178, &qword_282A60);
  v32 = v19 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_1A5D64(uint64_t a1)
{
  sub_2EF0(&qword_323220, &qword_282AD0);
  sub_1A66E0();
  return sub_262750();
}

uint64_t sub_1A5E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A5E6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MoreButtonView(0);
  (*(a1 + *(v4 + 28)))(v12, a1 + *(v4 + 24));
  v5 = sub_2E18(v12, v12[3]);
  v6 = __chkstk_darwin(v5);
  (*(v8 + 16))(&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = sub_263310();
  result = sub_3080(v12);
  *a2 = v9;
  return result;
}

uint64_t sub_1A5F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v2 - 8);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v5 - 8);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21[1] = sub_2630B0();
  sub_262650();
  sub_262A20();

  sub_1A5644(v7);
  v8 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_1A6824(v7, type metadata accessor for ColorConstants);
  KeyPath = swift_getKeyPath();
  v10 = (a1 + *(sub_2EF0(&qword_3217D0, &qword_27F0D0) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  sub_1A5460(v4);
  sub_1A6824(v4, type metadata accessor for SizeConstants);
  LOBYTE(v8) = sub_262500();
  sub_2610C0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a1 + *(sub_2EF0(&qword_323238, &qword_282AD8) + 36);
  *v19 = v8;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  result = sub_2EF0(&qword_323220, &qword_282AD0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1A61A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F68, &unk_269C50);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1A62E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_316F68, &unk_269C50);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1A6408(uint64_t a1)
{
  sub_14B364(319, &qword_317C68, type metadata accessor for SizeConstants);
  if (v1 <= 0x3F)
  {
    sub_14B364(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v2 <= 0x3F)
    {
      sub_44744();
      if (v3 <= 0x3F)
      {
        sub_16D28();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A64F8()
{
  result = qword_323218;
  if (!qword_323218)
  {
    sub_2F9C(&qword_323178, &qword_282A60);
    sub_2F9C(&qword_323158, &qword_282A50);
    sub_261FA0();
    sub_2F9C(&qword_323150, &qword_282A48);
    sub_261760();
    sub_8E38(&qword_323170, &qword_323150, &qword_282A48, &protocol conformance descriptor for Button<A>);
    sub_1A5E08(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1A5E08(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323218);
  }

  return result;
}

unint64_t sub_1A66E0()
{
  result = qword_323228;
  if (!qword_323228)
  {
    sub_2F9C(&qword_323220, &qword_282AD0);
    sub_1A6798();
    sub_8E38(&qword_323240, &qword_323248, &qword_282AE0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323228);
  }

  return result;
}

unint64_t sub_1A6798()
{
  result = qword_323230;
  if (!qword_323230)
  {
    sub_2F9C(&qword_323238, &qword_282AD8);
    sub_17CB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323230);
  }

  return result;
}

uint64_t sub_1A6824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A688C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A68F4(void (*a1)(_OWORD *__return_ptr, void *), uint64_t a2, unint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3;
    v41 = _swiftEmptyArrayStorage;
    sub_2DB24(0, v4, 0);
    v30 = v5 + 56;
    v31 = _swiftEmptyArrayStorage;
    v6 = sub_264B20();
    if (v6 < 0 || (v7 = v6, v6 >= 1 << *(v5 + 32)))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v27 = v5 + 64;
      v28 = v4;
      v8 = *(v5 + 36);
      v9 = 1;
      while (1)
      {
        v10 = v7 >> 6;
        if ((*(v30 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          break;
        }

        v11 = v5;
        v12 = (*(v5 + 48) + 16 * v7);
        v13 = v12[1];
        v38[0] = *v12;
        v38[1] = v13;

        a1(v39, v38);
        if (v3)
        {
          goto LABEL_29;
        }

        v37 = v40;
        v35 = v39[3];
        v36 = v39[4];
        v33 = v39[1];
        v34 = v39[2];
        v32 = v39[0];
        v14 = v31;
        v41 = v31;
        v16 = v31[2];
        v15 = v31[3];
        if (v16 >= v15 >> 1)
        {
          sub_2DB24((v15 > 1), v16 + 1, 1);
          v14 = v41;
        }

        v14[2] = v16 + 1;
        v17 = &v14[11 * v16];
        *(v17 + 2) = v32;
        *(v17 + 3) = v33;
        *(v17 + 56) = v37;
        *(v17 + 5) = v35;
        *(v17 + 6) = v36;
        *(v17 + 4) = v34;
        v18 = 1 << *(v11 + 32);
        if (v7 >= v18)
        {
          goto LABEL_26;
        }

        v19 = *(v30 + 8 * v10);
        if ((v19 & (1 << v7)) == 0)
        {
          goto LABEL_27;
        }

        v5 = v11;
        if (v8 != *(v11 + 36))
        {
          goto LABEL_28;
        }

        v20 = v19 & (-2 << (v7 & 0x3F));
        v31 = v14;
        if (v20)
        {
          v7 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v21 = v28;
        }

        else
        {
          v22 = v10 << 6;
          v23 = v10 + 1;
          v21 = v28;
          v24 = (v27 + 8 * v10);
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_1AA7A0(v7, v8, 0);
              v7 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          sub_1AA7A0(v7, v8, 0);
          v7 = v18;
        }

LABEL_19:
        v3 = 0;
        if (v9 == v21)
        {
          return;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = *(v5 + 36);
          ++v9;
          if (v7 < 1 << *(v5 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    __break(1u);
  }
}

void sub_1A6BC4(void (*a1)(_OWORD *__return_ptr, void *), uint64_t a2, unint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3;
    v37 = _swiftEmptyArrayStorage;
    sub_2DB44(0, v4, 0);
    v33 = _swiftEmptyArrayStorage;
    v6 = v5 + 56;
    v7 = sub_264B20();
    v8 = 0;
    v29 = v5 + 64;
    v30 = v4;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = v8;
      v11 = *(v5 + 36);
      v12 = v5;
      v13 = (*(v5 + 48) + 16 * v7);
      v14 = v13[1];
      v34[0] = *v13;
      v34[1] = v14;

      a1(v35, v34);
      if (v3)
      {
        goto LABEL_26;
      }

      v15 = v33;
      v37 = v33;
      v17 = v33[2];
      v16 = v33[3];
      if (v17 >= v16 >> 1)
      {
        sub_2DB44((v16 > 1), v17 + 1, 1);
        v15 = v37;
      }

      v15[2] = v17 + 1;
      v33 = v15;
      v18 = &v15[7 * v17];
      v19 = v35[0];
      v20 = v35[1];
      v21 = v35[2];
      v18[10] = v36;
      *(v18 + 3) = v20;
      *(v18 + 4) = v21;
      *(v18 + 2) = v19;
      v9 = 1 << *(v12 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v22 = *(v6 + 8 * v10);
      if ((v22 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v12;
      if (v11 != *(v12 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v7 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1AA7A0(v7, v11, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1AA7A0(v7, v11, 0);
      }

LABEL_4:
      v3 = 0;
      v8 = v32 + 1;
      v7 = v9;
      if (v32 + 1 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:

    __break(1u);
  }
}

void sub_1A6E54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_2DAA4(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = sub_264B20();
    if (v5 < 0 || (v6 = v5, v5 >= 1 << *(a1 + 32)))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v52 = *(a1 + 36);
      v31 = v1;
      v7 = 1;
      while (1)
      {
        v8 = v6 >> 6;
        if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          break;
        }

        if (v52 != *(a1 + 36))
        {
          goto LABEL_26;
        }

        v9 = (*(a1 + 48) + 16 * v6);
        v11 = *v9;
        v10 = v9[1];
        v12 = (*(a1 + 56) + 72 * v6);
        v39[0] = *v12;
        v14 = v12[2];
        v13 = v12[3];
        v15 = v12[1];
        v40 = *(v12 + 32);
        v39[2] = v14;
        v39[3] = v13;
        v39[1] = v15;
        v16 = *v12;
        v17 = v12[1];
        v18 = v12[2];
        v19 = v12[3];
        v38 = *(v12 + 32);
        v36 = v18;
        v37 = v19;
        v34 = v16;
        v35 = v17;
        memmove(__dst, v12, 0x42uLL);
        v32 = v11;
        v43[0] = v11;
        v43[1] = v10;
        v46 = v36;
        v47 = v37;
        v48 = v38;
        v44 = v34;
        v45 = v35;
        swift_bridgeObjectRetain_n();
        sub_14FF5C(v39, v33);
        sub_14FF5C(__dst, v33);
        sub_8E80(v43, &qword_3232C8, &qword_282E10);
        v49[2] = __dst[2];
        v49[3] = __dst[3];
        v50 = v42;
        v49[0] = __dst[0];
        v49[1] = __dst[1];
        sub_1AA6F4(v49);
        v51 = v3;
        v21 = v3[2];
        v20 = v3[3];
        if (v21 >= v20 >> 1)
        {
          sub_2DAA4((v20 > 1), v21 + 1, 1);
          v3 = v51;
        }

        v3[2] = v21 + 1;
        v22 = &v3[2 * v21];
        v22[4] = v32;
        v22[5] = v10;
        v23 = 1 << *(a1 + 32);
        if (v6 >= v23)
        {
          goto LABEL_27;
        }

        v4 = a1 + 64;
        v24 = *(a1 + 64 + 8 * v8);
        if ((v24 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (v52 != *(a1 + 36))
        {
          goto LABEL_29;
        }

        v25 = v24 & (-2 << (v6 & 0x3F));
        if (v25)
        {
          v6 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v26 = v8 << 6;
          v27 = v8 + 1;
          v28 = (a1 + 72 + 8 * v8);
          while (v27 < (v23 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              sub_1AA7A0(v6, v52, 0);
              v6 = __clz(__rbit64(v29)) + v26;
              goto LABEL_19;
            }
          }

          sub_1AA7A0(v6, v52, 0);
          v6 = v23;
        }

LABEL_19:
        if (v7 == v31)
        {
          return;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          ++v7;
          if (v6 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

unint64_t sub_1A7174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v14 = *(v1 + 32);
  result = sub_EC9BC();
  v8 = *(*&v13[0] + 16);
  if (result == v8)
  {
    v9 = sub_260620();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else if (result >= v8)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v1 + 40);
    (*(&v13[0] + 1))(*&v13[0] + 40 * result + 32);
    v11(v5);
    sub_8E80(v5, &qword_316B98, &unk_275840);
    v12 = sub_260620();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  return result;
}

uint64_t sub_1A731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_264B20();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v5 = sub_1AA154(&v12, result, *(a1 + 36), 0, a1);
    v6 = v14;
    v17[2] = v14;
    v7 = v15;
    v17[3] = v15;
    v25 = v15;
    v24 = v14;
    v8 = v13;
    v9 = v12;
    v17[0] = v12;
    v17[1] = v13;
    v23 = v13;
    v22 = v12;
    *&v11 = v5;
    *(&v11 + 1) = v10;
    v18 = v16;
    v26 = v16;
    *&v19[0] = v5;
    *(&v19[0] + 1) = v10;
    v20 = v16;
    v19[1] = v12;
    v19[2] = v13;
    v19[3] = v14;
    v19[4] = v15;
    *(a2 + 80) = v16;
    *(a2 + 48) = v6;
    *(a2 + 64) = v7;
    *(a2 + 16) = v9;
    *(a2 + 32) = v8;
    *a2 = v19[0];
    v21[0] = v5;
    v21[1] = v10;

    sub_14FF5C(v17, v27);
    sub_8198(v19, v27, &qword_3232C8, &qword_282E10);
    sub_8E80(v21, &qword_3232C8, &qword_282E10);
    v27[2] = v13;
    v27[3] = v14;
    v27[4] = v15;
    v28 = v16;
    v27[0] = v11;
    v27[1] = v12;
    return sub_8E80(v27, &qword_3232C8, &qword_282E10);
  }

  return result;
}

uint64_t sub_1A74B0@<X0>(uint64_t a1@<X8>)
{
  sub_261570();
  sub_1AA748();
  sub_264820();
  sub_264860();
  if (v9[4] == v9[0])
  {
    v2 = sub_261490();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_2648A0();
    v6 = v5;
    v7 = sub_261490();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

double EnvironmentValues.libraryAssetState.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1A807C();
  sub_261CB0();
  v2 = *(v6[0] + 16);

  if (v2 == 1 && (sub_261CB0(), sub_1A731C(v6[0], v6), , v6[1]))
  {

    v3 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v3;
    *(a1 + 64) = v11;
    v4 = v8;
    *a1 = v7;
    *(a1 + 16) = v4;
  }

  else
  {
    *(a1 + 64) = 0;
    *&v4 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v4;
}

uint64_t View.observeLibraryAssetState(for:libraryAssetStateObserverProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[0] = a3;
  v22[3] = a6;
  v22[2] = sub_261730();
  v10 = sub_261F90();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v22 - v15;
  sub_2EF0(&qword_317240, &qword_269790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v18 = sub_127F84(inited);
  swift_setDeallocating();
  sub_12801C(inited + 32);
  View.observeLibraryAssetStates(for:libraryAssetStateObserverProvider:)(v18, v22[0], a4, a5, v13);

  v19 = sub_126060();
  v22[6] = a5;
  v22[7] = v19;
  v22[4] = swift_getWitnessTable();
  v22[5] = a5;
  swift_getWitnessTable();
  sub_1609C();
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_1609C();
  return (v20)(v16, v10);
}

uint64_t LibraryAssetStateRequiring.assetIDsToObserveState.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v12[0] = v2;
  v12[1] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_E9098(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_E9098((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_8E80(v12, &qword_316DD0, &qword_2692C0);
  v10 = sub_127F84(v6);

  return v10;
}

uint64_t sub_1A7A30@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = 0;
  sub_2EF0(&qword_3232D0, &qword_282E18);
  sub_2631D0();
  v6 = v17[0];
  v7 = v17[1];
  KeyPath = swift_getKeyPath();
  v15[2] = a2;

  sub_1A68F4(sub_1AA7AC, v15, a1);
  v10 = v9;

  if (*(v10 + 16))
  {
    sub_2EF0(&qword_3160F0, &unk_267EE0);
    v11 = sub_264D10();
  }

  else
  {
    v11 = &_swiftEmptyDictionarySingleton;
  }

  v17[0] = v11;

  sub_1A94D0(v12, 1, v17);

  v13 = v17[0];
  *a3 = a1;
  *(a3 + 8) = v13;
  *(a3 + 16) = 0;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = KeyPath;
  *(a3 + 80) = v16;
  return sub_3080(a2);
}

uint64_t sub_1A7B98@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  v5 = a2[3];
  v6 = a2[4];
  sub_2E18(a2, v5);
  v7 = *(v6 + 16);

  return v7(v3, v4, v5, v6);
}

uint64_t sub_1A7C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_3232A0, &qword_282DA0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  KeyPath = swift_getKeyPath();
  v53 = *(v2 + 24);
  sub_2EF0(&qword_3232A8, &unk_282DD0);
  sub_2631E0();
  v10 = v59[0];
  if (v59[0])
  {
    v41 = KeyPath;
    v42 = v6;
    v43 = a1;
    v44 = v2;
    v45 = v8;
    v46 = a2;
    sub_2EF0(&qword_3160F0, &unk_267EE0);
    result = sub_264CF0();
    v12 = result;
    v13 = 0;
    v14 = v10 + 64;
    v15 = 1 << *(v10 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v48 = result + 64;
    v49 = result;
    v47 = v10;
    if (v17)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v17));
        v50 = (v17 - 1) & v17;
LABEL_11:
        v22 = v19 | (v13 << 6);
        v51 = 16 * v22;
        v23 = *(v10 + 56);
        v24 = (*(v10 + 48) + 16 * v22);
        v25 = v24[1];
        v52 = *v24;
        sub_30CC(v23 + 40 * v22, v59);
        v27 = v60;
        v26 = v61;
        sub_2E18(v59, v60);
        v28 = *(v26 + 16);

        v28(&v53, v27, v26);
        result = sub_3080(v59);
        *(v48 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v12 = v49;
        v29 = (*(v49 + 48) + v51);
        *v29 = v52;
        v29[1] = v25;
        v30 = *(v12 + 56) + 72 * v22;
        *v30 = v53;
        *(v30 + 64) = v57;
        *(v30 + 48) = v56;
        *(v30 + 32) = v55;
        *(v30 + 16) = v54;
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          break;
        }

        *(v12 + 16) = v33;
        v10 = v47;
        v17 = v50;
        if (!v50)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v20 = v13;
      while (1)
      {
        v13 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v13 >= v18)
        {

          a2 = v46;
          v8 = v45;
          v3 = v44;
          a1 = v43;
          v6 = v42;
          KeyPath = v41;
          goto LABEL_16;
        }

        v21 = *(v14 + 8 * v13);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v50 = (v21 - 1) & v21;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v34 = *(v2 + 16);
    *&v53 = *(v2 + 8);
    *(&v53 + 1) = v34;
    sub_2EF0(&qword_3232C0, &unk_282DF0);
    sub_2631E0();
    v12 = v59[0];
LABEL_16:
    v35 = sub_2EF0(&qword_3232B0, &qword_282DE0);
    (*(*(v35 - 8) + 16))(v8, a1, v35);
    v36 = &v8[*(v6 + 36)];
    *v36 = KeyPath;
    v36[1] = v12;
    sub_1AA5B0(v3, &v53);
    v37 = swift_allocObject();
    v38 = v56;
    *(v37 + 48) = v55;
    *(v37 + 64) = v38;
    *(v37 + 80) = v57;
    *(v37 + 96) = v58;
    v39 = v54;
    *(v37 + 16) = v53;
    *(v37 + 32) = v39;
    sub_1AA664(v8, a2);
    result = sub_2EF0(&qword_3232B8, &qword_282DE8);
    v40 = (a2 + *(result + 36));
    *v40 = sub_1AA65C;
    v40[1] = v37;
    v40[2] = 0;
    v40[3] = 0;
  }

  return result;
}

uint64_t EnvironmentValues.libraryAssetStates.getter()
{
  sub_1A807C();
  sub_261CB0();
  return v1;
}

unint64_t sub_1A807C()
{
  result = qword_323278;
  if (!qword_323278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323278);
  }

  return result;
}

void *sub_1A80D0@<X0>(void *a1@<X8>)
{
  sub_1A807C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A8120(uint64_t *a1)
{
  sub_1A807C();

  return sub_261CC0();
}

void sub_1A81BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v11 = v2;
  v12 = v3;
  sub_2EF0(&qword_3232A8, &unk_282DD0);
  sub_2631E0();
  if (v10)
  {
  }

  else
  {
    __chkstk_darwin(0);
    v9[2] = a1;
    sub_1A6BC4(sub_1AA6D4, v9, v4);
    if (*(v5 + 16))
    {
      sub_2EF0(&qword_320390, &qword_27C478);
      v6 = sub_264D10();
    }

    else
    {
      v6 = &_swiftEmptyDictionarySingleton;
    }

    v11 = v6;

    sub_1A9820(v7, 1, &v11);

    v8 = v11;
    v11 = v2;
    v12 = v3;
    v10 = v8;
    sub_2631F0();
  }
}

uint64_t sub_1A8318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;

  sub_40EF0(v21);
  v6 = v22;
  v7 = v23;
  sub_2E18(v21, v22);
  v8 = *(a2 + 16);
  *&v29[0] = *(a2 + 8);
  *(&v29[0] + 1) = v8;
  sub_2EF0(&qword_3232C0, &unk_282DF0);
  result = sub_2631E0();
  v10 = v24;
  if (*(v24 + 16))
  {
    result = sub_D410(v4, v5);
    if (v11)
    {
      v12 = *(v10 + 56) + 72 * result;
      v24 = *v12;
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 64);
      v25 = *(v12 + 16);
      v26 = v14;
      v28 = v15;
      v27 = v13;
      sub_14FF5C(&v24, v29);

      v18 = v26;
      v19 = v27;
      v20 = v28;
      v16 = v24;
      v17 = v25;
      (*(v7 + 8))(v4, v5, &v16, v6, v7);
      v29[2] = v18;
      v29[3] = v19;
      v30 = v20;
      v29[0] = v16;
      v29[1] = v17;
      sub_1AA6F4(v29);
      return sub_3080(v21);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t View.observeLibraryAssetStates(for:libraryAssetStateObserverProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v5 = a3;
  v43 = a2;
  v47 = a5;
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_261730();
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v46 = sub_261F90();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = &v41 - v18;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 == 1 && (v19 = [objc_opt_self() standardUserDefaults], v41 = v11, v20 = v6, v21 = v19, v22 = sub_264420(), v42 = v5, v23 = v22, v24 = objc_msgSend(v21, "integerForKey:", v22), v21, v25 = v8, v26 = v41, v23, v5 = v42, (v24 & 0x20) != 0))
  {
    v32 = v49;
    sub_1609C();
    sub_1609C();
    v33 = sub_126060();
    v50 = v32;
    v51 = v33;
    WitnessTable = swift_getWitnessTable();
    sub_1D830(v25, v12, v5, WitnessTable, v32);
    v35 = *(v20 + 8);
    v35(v25, v5);
    v35(v26, v5);
  }

  else
  {
    sub_30CC(v43, v58);

    sub_1A7A30(v27, v58, v59);
    v28 = v49;
    sub_262E30();
    sub_1AA224(v59);
    v29 = sub_126060();
    v56 = v28;
    v57 = v29;
    v30 = swift_getWitnessTable();
    sub_1609C();
    v31 = *(v44 + 8);
    v31(v14, v12);
    sub_1609C();
    sub_1D738(v14, v12, v5, v30, v28);
    v31(v14, v12);
    v31(v17, v12);
  }

  v36 = sub_126060();
  v37 = v49;
  v54 = v49;
  v55 = v36;
  v52 = swift_getWitnessTable();
  v53 = v37;
  v38 = v46;
  swift_getWitnessTable();
  v39 = v48;
  sub_1609C();
  return (*(v45 + 8))(v39, v38);
}

{
  v38 = a2;
  v41 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_261730();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v39 = v37 - v18;
  v19 = sub_261F90();
  v42 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v37 - v20;
  sub_8198(a1, &v46, &qword_323280, &unk_282B20);
  if (!v47)
  {
    sub_8E80(&v46, &qword_323280, &unk_282B20);
LABEL_9:
    sub_1609C();
    sub_1609C();
    v32 = sub_126060();
    v52 = a4;
    v53 = v32;
    WitnessTable = swift_getWitnessTable();
    sub_1D830(v10, v14, a3, WitnessTable, a4);
    v34 = *(v41 + 8);
    v34(v10, a3);
    v34(v13, a3);
    goto LABEL_10;
  }

  v37[0] = v19;
  v37[1] = a5;
  sub_F7CC(&v46, &v54);
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 == 1)
  {
    v22 = [objc_opt_self() standardUserDefaults];
    v23 = sub_264420();
    v24 = [v22 integerForKey:v23];

    if ((v24 & 0x20) != 0)
    {
      sub_3080(&v54);
      v19 = v37[0];
      goto LABEL_9;
    }
  }

  v25 = v55;
  v26 = v56;
  sub_2E18(&v54, v55);
  v27 = (*(v26 + 8))(v25, v26);
  sub_30CC(v38, v45);
  sub_1A7A30(v27, v45, &v46);
  sub_262E30();
  sub_1AA224(&v46);
  v28 = sub_126060();
  v43 = a4;
  v44 = v28;
  v29 = swift_getWitnessTable();
  v30 = v39;
  sub_1609C();
  v31 = *(v40 + 8);
  v31(v16, v14);
  sub_1609C();
  sub_1D738(v16, v14, a3, v29, a4);
  v31(v16, v14);
  v31(v30, v14);
  sub_3080(&v54);
  v19 = v37[0];
LABEL_10:
  v35 = sub_126060();
  v50 = a4;
  v51 = v35;
  v48 = swift_getWitnessTable();
  v49 = a4;
  swift_getWitnessTable();
  sub_1609C();
  return (*(v42 + 8))(v21, v19);
}

unint64_t sub_1A8FD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_F5B8(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

uint64_t sub_1A9008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AA4D8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.libraryAssetStates.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_1A807C();
  sub_261CB0();
  return sub_1A90CC;
}

void sub_1A90CC(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_261CC0();
  }

  else
  {
    sub_261CC0();
  }
}

uint64_t EnvironmentValues.ownedAssetIDs.getter()
{
  sub_1A807C();
  sub_261CB0();
  v0 = sub_1A9C04(v5);

  sub_1A6E54(v0);
  v2 = v1;

  v3 = sub_127F84(v2);

  return v3;
}

double sub_1A91F0()
{
  qword_323270 = 0;
  result = 0.0;
  xmmword_323250 = 0u;
  unk_323260 = 0u;
  return result;
}

uint64_t sub_1A9208@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_315AA0 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_8198(&xmmword_323250, v1, &unk_31EF78, &qword_279C50);
}

void *EnvironmentValues.libraryAssetStateObserverProvider.getter()
{
  sub_129290();

  return sub_261CB0();
}

uint64_t EnvironmentValues.libraryAssetStateObserverProvider.setter(uint64_t a1)
{
  sub_8198(a1, v3, &unk_31EF78, &qword_279C50);
  sub_129290();
  sub_261CC0();
  return sub_8E80(a1, &unk_31EF78, &qword_279C50);
}

void (*EnvironmentValues.libraryAssetStateObserverProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_129290();
  sub_261CB0();
  return sub_1A93D0;
}

void sub_1A93D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_8198(*a1, v2 + 40, &unk_31EF78, &qword_279C50);
    sub_8198(v2 + 40, v2 + 80, &unk_31EF78, &qword_279C50);
    sub_261CC0();
    sub_8E80(v2 + 40, &unk_31EF78, &qword_279C50);
  }

  else
  {
    sub_8198(*a1, v2 + 40, &unk_31EF78, &qword_279C50);
    sub_261CC0();
  }

  sub_8E80(v2, &unk_31EF78, &qword_279C50);

  free(v2);
}

void sub_1A94D0(uint64_t a1, char a2, void *a3)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
LABEL_18:

    return;
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_264FB0();
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(a1 + v6 + 64);
    v39 = *(a1 + v6 + 48);
    v40 = v7;
    v8 = *(a1 + v6 + 32);
    v37 = *(a1 + v6 + 16);
    v38 = v8;
    v36 = *(a1 + v6);
    v9 = *(a1 + v6 + 80);
    v41 = v9;
    v32 = v39;
    v33 = v40;
    v30 = v37;
    v31 = v8;
    v10 = v36;
    sub_8198(&v36, &v35, &qword_3160F8, &qword_2697C0);
    if (!*(&v10 + 1))
    {
      goto LABEL_18;
    }

    v35 = v10;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    LOWORD(v40) = v9;
    v11 = *a3;
    v13 = sub_D410(v10, *(&v10 + 1));
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_21;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_14F388();
      if (v17)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v20 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    *(v20[6] + 16 * v13) = v10;
    v21 = v20[7] + 72 * v13;
    *v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v39;
    *(v21 + 64) = v40;
    *(v21 + 32) = v23;
    *(v21 + 48) = v24;
    *(v21 + 16) = v22;
    v25 = v20[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_22;
    }

    ++v5;
    v20[2] = v27;
    v6 += 88;
    a2 = 1;
    if (v29 == v5)
    {
      goto LABEL_18;
    }
  }

  sub_14E2B8(v16, a2 & 1);
  v18 = sub_D410(v10, *(&v10 + 1));
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_23;
  }

  v13 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v28 = swift_allocError();
  swift_willThrow();
  v42 = v28;
  swift_errorRetain();
  sub_2EF0(&qword_31E968, &qword_27B490);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1AA6F4(&v36);

    return;
  }

LABEL_24:
  sub_264BC0(30);
  v43._object = 0x80000000002926D0;
  v43._countAndFlagsBits = 0xD00000000000001BLL;
  sub_264530(v43);
  sub_264CC0();
  v44._countAndFlagsBits = 39;
  v44._object = 0xE100000000000000;
  sub_264530(v44);
  sub_264CD0();
  __break(1u);
}

void sub_1A9820(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_8198(a1 + 32, &v43, &qword_3171A8, &unk_282E00);
  v8 = v43;
  v7 = v44;
  v41 = v43;
  v42 = v44;
  sub_F7CC(v45, v40);
  v9 = *a3;
  v10 = sub_D410(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_14E654(v15, a2 & 1);
    v10 = sub_D410(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_264FB0();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v19 = v10;
  sub_14F59C();
  v10 = v19;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v46 = v18;
    swift_errorRetain();
    sub_2EF0(&qword_31E968, &qword_27B490);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_3080(v40);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v8;
  v21[1] = v7;
  sub_F7CC(v40, v20[7] + 40 * v10);
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v14)
  {
    v20[2] = v23;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v24 = a1 + 88;
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      sub_8198(v24, &v43, &qword_3171A8, &unk_282E00);
      v27 = v43;
      v26 = v44;
      v41 = v43;
      v42 = v44;
      sub_F7CC(v45, v40);
      v28 = *a3;
      v29 = sub_D410(v27, v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        sub_14E654(v33, 1);
        v29 = sub_D410(v27, v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v27;
      v37[1] = v26;
      sub_F7CC(v40, v36[7] + 40 * v29);
      v38 = v36[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v36[2] = v39;
      v24 += 56;
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_264BC0(30);
  v47._object = 0x80000000002926D0;
  v47._countAndFlagsBits = 0xD00000000000001BLL;
  sub_264530(v47);
  sub_264CC0();
  v48._countAndFlagsBits = 39;
  v48._object = 0xE100000000000000;
  sub_264530(v48);
  sub_264CD0();
  __break(1u);
}

unint64_t *sub_1A9C04(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1A9D64(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1A9E58(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1A9D64(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 72 * v10 + 16) <= 1u)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1A9ED0(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_1A9ED0(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1A9E58(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1A9D64(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1A9ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_2EF0(&qword_3160F0, &unk_267EE0);
  result = sub_264D10();
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
  v39 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 72 * v16);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v45 = *(v21 + 32);
    v43 = v23;
    v44 = v24;
    v41 = *v21;
    v42 = v22;
    sub_265050();

    sub_14FF5C(&v41, v40);
    sub_264500();
    result = sub_265080();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 16 * v28);
    *v33 = v19;
    v33[1] = v20;
    v34 = *(v9 + 56) + 72 * v28;
    *v34 = v41;
    v35 = v42;
    v36 = v43;
    v37 = v44;
    *(v34 + 64) = v45;
    *(v34 + 32) = v36;
    *(v34 + 48) = v37;
    *(v34 + 16) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v39;
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

uint64_t sub_1AA154(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v19 = v5;
    v20 = v6;
    v7 = *(*(a5 + 48) + 16 * a2);
    v8 = *(a5 + 56) + 72 * a2;
    v17[0] = *v8;
    v10 = *(v8 + 32);
    v9 = *(v8 + 48);
    v11 = *(v8 + 16);
    v18 = *(v8 + 64);
    v17[2] = v10;
    v17[3] = v9;
    v17[1] = v11;
    v12 = *v8;
    v13 = *(v8 + 16);
    v14 = *(v8 + 32);
    v15 = *(v8 + 48);
    *(result + 64) = *(v8 + 64);
    *(result + 32) = v14;
    *(result + 48) = v15;
    *result = v12;
    *(result + 16) = v13;

    sub_14FF5C(v17, v16);
    return v7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1AA254@<X0>(void *a1@<X8>)
{
  sub_1A807C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_1AA314(void *a1)
{
  sub_261730();
  sub_261F90();
  sub_126060();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_1AA3D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AA3FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1AA444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AA4D8()
{
  result = qword_323288;
  if (!qword_323288)
  {
    sub_2F9C(&qword_323290, &qword_282D98);
    sub_1AA55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323288);
  }

  return result;
}

unint64_t sub_1AA55C()
{
  result = qword_323298;
  if (!qword_323298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323298);
  }

  return result;
}

uint64_t sub_1AA5E8()
{

  if (*(v0 + 96))
  {
    sub_3080((v0 + 56));
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1AA664(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3232A0, &qword_282DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AA748()
{
  result = qword_31D960;
  if (!qword_31D960)
  {
    sub_261570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D960);
  }

  return result;
}

double sub_1AA7A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1AA7D0()
{
  result = qword_3232D8;
  if (!qword_3232D8)
  {
    sub_2F9C(&qword_3232B8, &qword_282DE8);
    sub_1AA85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3232D8);
  }

  return result;
}

unint64_t sub_1AA85C()
{
  result = qword_3232E0;
  if (!qword_3232E0)
  {
    sub_2F9C(&qword_3232A0, &qword_282DA0);
    sub_8E38(&qword_3232E8, &qword_3232B0, &qword_282DE0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_3232F0, &qword_3232F8, &qword_282E50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3232E0);
  }

  return result;
}

uint64_t sub_1AA974()
{
  sub_1AA9A4();
  result = sub_261D40();
  qword_354020 = result;
  return result;
}