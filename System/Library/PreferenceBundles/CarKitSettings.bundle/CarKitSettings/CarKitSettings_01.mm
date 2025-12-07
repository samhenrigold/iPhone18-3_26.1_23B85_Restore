unint64_t sub_2A1B0()
{
  result = qword_7B3A8;
  if (!qword_7B3A8)
  {
    sub_1D648(&qword_7B350, &qword_52B78);
    sub_2C958(&qword_7B3B0, &qword_7B3B8, &qword_52BE0, &protocol conformance descriptor for List<A, B>);
    sub_2A298(&qword_7B3C0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B3A8);
  }

  return result;
}

uint64_t sub_2A298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2A2E8()
{
  result = qword_7B400;
  if (!qword_7B400)
  {
    sub_1D648(&qword_7B3F0, &unk_533A0);
    sub_2C958(&qword_7B408, &qword_7B410, &qword_533B0, &protocol conformance descriptor for Button<A>);
    sub_2C958(&qword_7B418, &qword_7B420, &qword_52C10, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B400);
  }

  return result;
}

unint64_t sub_2A3CC()
{
  result = qword_7B428;
  if (!qword_7B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B428);
  }

  return result;
}

unint64_t sub_2A428()
{
  result = qword_7B440;
  if (!qword_7B440)
  {
    sub_1D648(&qword_7B438, &qword_52C18);
    sub_2A4E0();
    sub_2C958(&qword_7B4A8, &qword_7B4B0, &qword_52C50, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B440);
  }

  return result;
}

unint64_t sub_2A4E0()
{
  result = qword_7B448;
  if (!qword_7B448)
  {
    sub_1D648(&qword_7B450, &qword_52C20);
    sub_2A598();
    sub_2C958(&qword_7B498, &qword_7B4A0, &qword_52C48, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B448);
  }

  return result;
}

unint64_t sub_2A598()
{
  result = qword_7B458;
  if (!qword_7B458)
  {
    sub_1D648(&qword_7B460, &qword_52C28);
    sub_2A61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B458);
  }

  return result;
}

unint64_t sub_2A61C()
{
  result = qword_7B468;
  if (!qword_7B468)
  {
    sub_1D648(&qword_7B470, &qword_52C30);
    sub_2C958(&qword_7B478, &qword_7B480, &qword_52C38, &protocol conformance descriptor for HStack<A>);
    sub_2C958(&qword_7B488, &qword_7B490, &qword_52C40, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B468);
  }

  return result;
}

unint64_t sub_2A708()
{
  result = qword_7B4C0;
  if (!qword_7B4C0)
  {
    sub_1D648(&qword_7B4B8, &qword_52C58);
    sub_1D648(&qword_7B4C8, &qword_52C60);
    sub_4AB6C();
    sub_2C958(&qword_7B4D0, &qword_7B4C8, &qword_52C60, &protocol conformance descriptor for IDView<A, B>);
    sub_2A298(&qword_7B4D8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B4C0);
  }

  return result;
}

unint64_t sub_2A84C()
{
  result = qword_7B4E0;
  if (!qword_7B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B4E0);
  }

  return result;
}

uint64_t sub_2A8A0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_2A910()
{
  result = qword_7B4E8;
  if (!qword_7B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B4E8);
  }

  return result;
}

uint64_t sub_2A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14628(&qword_7B4F0, qword_52E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2AA54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_14628(&qword_7B4F0, qword_52E00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_2AB18(uint64_t a1)
{
  sub_2ACAC(319);
  if (v1 <= 0x3F)
  {
    sub_2AD68(319, &qword_7B558, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_2AD04(319, &qword_7B560, &qword_7B568, "ָ", &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_16F40(319, &qword_7B570, &off_6D0A8);
        if (v4 <= 0x3F)
        {
          sub_2AD04(319, &qword_7B578, &qword_7B320, &qword_52B40, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_2AD68(319, &unk_7B580, &type metadata for Bool, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2ACAC(uint64_t a1)
{
  if (!qword_7B550)
  {
    sub_4AA3C();
    v1 = sub_4AA5C();
    if (!v2)
    {
      atomic_store(v1, &qword_7B550);
    }
  }
}

void sub_2AD04(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D648(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2AD68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2ADF8()
{
  sub_1D648(&qword_7B338, &qword_52B58);
  sub_1D648(&qword_7B330, &qword_52B50);
  sub_1D648(&qword_7B3E8, &unk_52BF0);
  sub_1D648(&qword_7B328, &qword_52B48);
  sub_4AA3C();
  sub_29EFC();
  sub_2A298(&qword_7B3E0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  swift_getOpaqueTypeConformance2();
  sub_1D648(&qword_7B3F0, &unk_533A0);
  sub_1D648(&qword_7B3F8, &unk_52C00);
  sub_2A2E8();
  sub_2A3CC();
  sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00, &protocol conformance descriptor for TupleView<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2B08C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D648(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2B11C()
{
  result = qword_7B5E8;
  if (!qword_7B5E8)
  {
    sub_1D648(&qword_7B5F0, &unk_52F38);
    sub_2B1CC(&qword_7B5F8, &qword_7B600, BSColor_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B5E8);
  }

  return result;
}

uint64_t sub_2B1CC(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_16F40(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2B210()
{
  result = qword_7B608;
  if (!qword_7B608)
  {
    sub_1D648(&qword_7B568, "ָ");
    sub_2B1CC(&qword_7B610, &qword_7B618, SBSHomeScreenIconStyleConfiguration_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B608);
  }

  return result;
}

uint64_t *sub_2B2C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2B324@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CRHomeScreenLayoutView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_275F4(a1, v6, a2);
}

uint64_t sub_2B3A4()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_14628(&qword_7B310, &qword_52AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AA3C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_24780(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  sub_2478C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_2B550()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v24 = *(v0 + ((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = (v0 + v2 + *(v1 + 36));
  v21 = *v3;
  v20 = v3[1];
  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  if (v25 >> 62)
  {
LABEL_24:
    v22 = v25 & 0xFFFFFFFFFFFFFF8;
    v23 = sub_4BA5C();
  }

  else
  {
    v22 = v25 & 0xFFFFFFFFFFFFFF8;
    v23 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  while (1)
  {
    if (v23 == v4)
    {
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v5 = sub_4B9AC();
    }

    else
    {
      if (v4 >= *(v22 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v5 = *(v25 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = [v5 bundleIdentifier];
    v8 = sub_4B5FC();
    v10 = v9;

    v11 = [v24 bundleIdentifier];
    v12 = sub_4B5FC();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
      break;
    }

    v16 = sub_4BA8C();

    if (v16)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_23;
    }
  }

LABEL_19:

  sub_4B31C();

  sub_4B32C();

  sub_4B31C();
  v19 = v24;
  sub_4B67C();
  if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v26 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_4B6BC();
  }

  sub_4B6CC();
  sub_4B32C();

  return sub_24FA0();
}

uint64_t sub_2B8CC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = sub_4AD0C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_14628(&qword_7B650, &qword_52F70);
  return sub_27990(v4, v3, a1 + *(v5 + 44));
}

unint64_t sub_2B930(uint64_t a1)
{
  v2 = v1;
  v4 = sub_4B95C(*(v2 + 40));

  return sub_2B974(a1, v4);
}

unint64_t sub_2B974(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_2CDAC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_4B96C();
      sub_2CD58(v8);
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

uint64_t sub_2BA3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_4AC8C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2BA94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4AC5C();
  *a1 = result;
  return result;
}

uint64_t sub_2BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_14628(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_2BC3C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_2BBE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4AC2C();
  *a1 = result;
  return result;
}

uint64_t sub_2BC3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_14628(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2BCA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2BCB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2BCC4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

char *sub_2BCD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2BCF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2BCF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_14628(&qword_7B6F8, &qword_54180);
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

uint64_t sub_2BDFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_4BA5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_4BA5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2C958(&qword_7B738, &qword_7B320, &qword_52B40, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_14628(&qword_7B320, &qword_52B40);
            v9 = sub_222D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_16F40(0, &qword_7B638, off_6D0A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2BFB0()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView(0);
  v26 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 28));
  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  if (v27 >> 62)
  {
    v2 = sub_4BA5C();
  }

  else
  {
    v2 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    sub_2BCD0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v3 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v4 = sub_4B9AC();
      }

      else
      {
        v4 = *(v27 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v5 bundleIdentifier];
      v7 = sub_4B5FC();
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_2BCD0((v10 > 1), v11 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
    }

    while (v2 != v3);
  }

  v13.super.isa = sub_4B68C().super.isa;

  sub_4B31C();
  if (!(v27 >> 62))
  {
    v14 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_25:

    isa = sub_4B68C().super.isa;

    [v26 setIconState:v13.super.isa hiddenIcons:isa];

    return;
  }

  v14 = sub_4BA5C();
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_14:
  sub_2BCD0(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v16 = sub_4B9AC();
      }

      else
      {
        v16 = *(v27 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v17 bundleIdentifier];
      v19 = sub_4B5FC();
      v21 = v20;

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_2BCD0((v22 > 1), v23 + 1, 1);
      }

      ++v15;
      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
    }

    while (v14 != v15);
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_2C340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2C358@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CRHomeScreenLayoutView(0);
  v4 = *a1;
  *a2 = sub_4AD0C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_14628(&qword_7B748, &qword_530D0);
  sub_2645C(v4, (a2 + *(v5 + 44)));
  v6 = [v4 isEditable] ^ 1;
  result = sub_14628(&qword_7B470, &qword_52C30);
  *(a2 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_2C424(uint64_t a1)
{
  v2 = (type metadata accessor for CRHomeScreenLayoutView(0) - 8);
  v14 = v1 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));
  v3 = v14;
  v12 = sub_28180(sub_2C880, v13);
  v4 = (v3 + v2[10]);
  v5 = v4[1];
  v18 = *v4;
  v6 = v18;
  v19 = v5;

  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  sub_14628(&qword_7B320, &qword_52B40);
  sub_2C958(&qword_7B720, &qword_7B320, &qword_52B40, &protocol conformance descriptor for [A]);
  sub_2C958(&qword_7B728, &qword_7B320, &qword_52B40, &protocol conformance descriptor for [A]);
  sub_4B7AC();
  v16 = v6;
  v17 = v5;
  v15 = v20;
  sub_4B32C();

  v7 = (v3 + v2[11]);
  v9 = v7[1];
  v18 = *v7;
  v8 = v18;
  v19 = v9;
  sub_4B31C();
  sub_283EC(v12);
  v18 = v16;
  swift_getKeyPath();
  sub_2C958(&qword_7B730, &qword_7B320, &qword_52B40, &protocol conformance descriptor for [A]);
  v10 = sub_4B64C();

  v18 = v8;
  v19 = v9;
  v20 = v10;
  sub_4B32C();
  return sub_24FA0();
}

uint64_t sub_2C694()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2C6F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CRHomeScreenLayoutView(0);

  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  sub_14628(&qword_7B320, &qword_52B40);
  sub_2C958(&qword_7B720, &qword_7B320, &qword_52B40, &protocol conformance descriptor for [A]);
  sub_4B5CC();
  sub_4B32C();

  return sub_24FA0();
}

void *sub_2C880@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for CRHomeScreenLayoutView(0);
  sub_14628(&qword_7B358, &qword_52B80);
  result = sub_4B31C();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v5 = sub_4B9AC();
    goto LABEL_5;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v5 = *(v7 + 8 * v3 + 32);
LABEL_5:
    v6 = v5;

    *a2 = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2C958(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D648(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2C9A0()
{
  type metadata accessor for CRHomeScreenLayoutView(0);
  sub_14628(&qword_7B760, &qword_533F0);
  return sub_4B32C();
}

uint64_t sub_2CA74()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_14628(&qword_7B310, &qword_52AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AA3C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_24780(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  sub_2478C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_2CC14()
{
  v1 = *(type metadata accessor for CRHomeScreenLayoutView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25EDC(v2);
}

uint64_t sub_2CC78()
{
  v2 = *(type metadata accessor for CRHomeScreenLayoutView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DB38;

  return sub_28660(v4, v5, v6, v0 + v3);
}

uint64_t sub_2CE08()
{
  v1 = type metadata accessor for CRHomeScreenLayoutView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_14628(&qword_7B310, &qword_52AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AA3C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_24780(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  sub_2478C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2CFB0()
{
  type metadata accessor for CRHomeScreenLayoutView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E76C;

  return sub_254E4();
}

uint64_t sub_2D0C0()
{
  v1 = [v0 environment];
  v2 = sub_4B5AC();

  if (*(v2 + 16) && (v3 = sub_2D1BC(0xD00000000000001ALL, 0x800000000005B740), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    if (v7 == 49 && v6 == 0xE100000000000000)
    {

      return 1;
    }

    else
    {
      v9 = sub_4BA8C();

      return v9 & 1;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t sub_2D1BC(uint64_t a1, uint64_t a2)
{
  sub_4BACC();
  sub_4B61C();
  v4 = sub_4BAEC();

  return sub_2D234(a1, a2, v4);
}

unint64_t sub_2D234(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_4BA8C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2D2EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_14628(&qword_7B790, &qword_531D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2D370(uint64_t a1)
{
  v2 = sub_4AB1C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_4AC1C();
}

uint64_t sub_2D438()
{
  type metadata accessor for CRWidgetSettingsModel(0);
  sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel, &unk_52788);
  return sub_4AA6C();
}

uint64_t sub_2D4F0()
{
  type metadata accessor for CRWidgetStackView(0);
  sub_14628(&qword_7B798, &qword_531D8);
  sub_4B46C();
  return v1;
}

uint64_t sub_2D564(uint64_t a1)
{
  type metadata accessor for CRWidgetStackView(0);
  sub_14628(&qword_7B798, &qword_531D8);
  return sub_4B47C();
}

uint64_t (*sub_2D5BC(uint64_t *a1))()
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
  type metadata accessor for CRWidgetStackView(0);
  sub_14628(&qword_7B798, &qword_531D8);
  *(v3 + 32) = sub_4B45C();
  return sub_2D658;
}

uint64_t sub_2D65C()
{
  type metadata accessor for CRWidgetStackView(0);
  sub_14628(&qword_7B798, &qword_531D8);
  return sub_4B48C();
}

uint64_t sub_2D6B0()
{
  v1 = *(v0 + *(type metadata accessor for CRWidgetStackView(0) + 28));

  return v1;
}

uint64_t sub_2D6F0()
{
  v1 = *(v0 + *(type metadata accessor for CRWidgetStackView(0) + 32));

  return v1;
}

unint64_t sub_2D778()
{
  result = qword_7B7A8;
  if (!qword_7B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B7A8);
  }

  return result;
}

void *sub_2D7D4()
{
  v14 = sub_4ACDC();
  v1 = *(v14 - 8);
  __chkstk_darwin(v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_14628(&qword_7B790, &qword_531D0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = sub_4AB1C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0;
  sub_2BC3C(v0, v6, &qword_7B790, &qword_531D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_4B7FC();
    v11 = sub_4AFDC();
    sub_4A90C();

    sub_4ACCC();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v14);
  }

  result = (*(v8 + 88))(v10, v7);
  if (result == enum case for DynamicTypeSize.xSmall(_:) || result == enum case for DynamicTypeSize.small(_:) || result == enum case for DynamicTypeSize.medium(_:) || result == enum case for DynamicTypeSize.large(_:) || result == enum case for DynamicTypeSize.xLarge(_:) || result == enum case for DynamicTypeSize.xxLarge(_:) || result == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    type metadata accessor for CRWidgetStackView(0);
    sub_14628(&qword_7B868, &qword_53280);
    return sub_4AA9C();
  }

  else if (result != enum case for DynamicTypeSize.accessibility1(_:) && result != enum case for DynamicTypeSize.accessibility2(_:) && result != enum case for DynamicTypeSize.accessibility3(_:) && result != enum case for DynamicTypeSize.accessibility4(_:) && result != enum case for DynamicTypeSize.accessibility5(_:))
  {
    type metadata accessor for CRWidgetStackView(0);
    sub_14628(&qword_7B868, &qword_53280);
    sub_4AA9C();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_2DC0C()
{
  sub_14628(&qword_7B7B0, &qword_531E8);
  sub_2C958(&qword_7B7B8, &qword_7B7B0, &qword_531E8, &protocol conformance descriptor for TupleView<A>);
  return sub_4B43C();
}

uint64_t sub_2DCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v95 = sub_14628(&qword_7B870, &qword_53288);
  __chkstk_darwin(v95);
  v96 = (v77 - v3);
  v4 = sub_14628(&qword_7BDE8, &qword_53A20);
  v99 = *(v4 - 8);
  v100 = v4;
  v5 = __chkstk_darwin(v4);
  v98 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v97 = v77 - v7;
  v8 = sub_14628(&qword_7BDF0, &qword_53A28);
  v91 = *(v8 - 8);
  v92 = v8;
  __chkstk_darwin(v8);
  v81 = v77 - v9;
  v80 = sub_4ACDC();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_14628(&qword_7BDF8, &qword_53A30);
  v12 = __chkstk_darwin(v11 - 8);
  v94 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v105 = v77 - v14;
  v15 = type metadata accessor for CRWidgetStackView(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v104 = (sub_14628(&qword_7BE00, &qword_53A38) - 8);
  v19 = __chkstk_darwin(v104);
  v93 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v77 - v21;
  v85 = *(v16 + 32);
  v84 = sub_14628(&qword_7B798, &qword_531D8);
  v82 = a1;
  v23 = sub_4B46C();
  v24 = (*(*v106 + 168))(v23);

  v110 = v24;
  KeyPath = swift_getKeyPath();
  sub_39744(a1, v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRWidgetStackView);
  v25 = *(v17 + 80);
  v26 = (v25 + 16) & ~v25;
  v89 = v18;
  v87 = v25;
  v83 = swift_allocObject();
  v88 = v26;
  v90 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_397AC(v90, v83 + v26, type metadata accessor for CRWidgetStackView);
  v103 = sub_14628(&qword_7AD10, &qword_52950);
  v102 = sub_14628(&qword_7BE08, &qword_53A68);
  v27 = sub_2C958(&qword_7BE10, &qword_7AD10, &qword_52950, &protocol conformance descriptor for [A]);
  v28 = sub_3CE84(&qword_7B078, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v29 = sub_1D648(&qword_7B7F0, &qword_53220);
  v30 = sub_1D648(&qword_7B7E8, &qword_53218);
  v31 = sub_1D648(&qword_7B858, &qword_53278);
  v32 = sub_1D648(&qword_7B7E0, &qword_53210);
  v33 = sub_39084();
  v106 = v32;
  v107 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_2C958(&qword_7B860, &qword_7B858, &qword_53278, &protocol conformance descriptor for Button<A>);
  v106 = v30;
  v107 = v31;
  v36 = v82;
  v108 = OpaqueTypeConformance2;
  v109 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v106 = v29;
  v107 = v37;
  v77[1] = swift_getOpaqueTypeConformance2();
  KeyPath = v27;
  v83 = v28;
  sub_4B41C();
  sub_4B46C();
  v38 = v106;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_3CECC;
  *(v39 + 24) = v38;
  v40 = &v22[*(sub_14628(&qword_7BE18, &qword_53A70) + 36)];
  *v40 = sub_2C6CC;
  v40[1] = v39;
  sub_4B46C();
  v41 = v106;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_3CEF0;
  *(v42 + 24) = v41;
  v43 = *(v104 + 11);
  v104 = v22;
  v44 = &v22[v43];
  *v44 = sub_2C854;
  *(v44 + 1) = v42;
  v45 = v36 + *(v16 + 28);
  v46 = *v45;
  LOBYTE(v41) = *(v45 + 8);

  if ((v41 & 1) == 0)
  {
    sub_4B7FC();
    v48 = sub_4AFDC();
    sub_4A90C();

    v49 = v78;
    sub_4ACCC();
    swift_getAtKeyPath();

    v47 = (*(v79 + 8))(v49, v80);
    v46 = v106;
  }

  v50 = (*(*v46 + 344))(v47);

  if (v50)
  {
    v51 = sub_4B46C();
    v52 = (*(*v106 + 176))(v51);

    v106 = v52;
    swift_getKeyPath();
    v53 = v90;
    sub_39744(v36, v90, type metadata accessor for CRWidgetStackView);
    v54 = v88;
    v55 = swift_allocObject();
    sub_397AC(v53, v55 + v54, type metadata accessor for CRWidgetStackView);
    v56 = v81;
    sub_4B41C();
    v57 = v91;
    v58 = v105;
    v59 = v56;
    v60 = v92;
    (*(v91 + 32))(v105, v59, v92);
    v61 = 0;
  }

  else
  {
    v61 = 1;
    v58 = v105;
    v57 = v91;
    v60 = v92;
    v53 = v90;
    v54 = v88;
  }

  (*(v57 + 56))(v58, v61, 1, v60);
  v62 = sub_4AD0C();
  v63 = v96;
  *v96 = v62;
  *(v63 + 8) = 0;
  *(v63 + 16) = 0;
  v64 = sub_14628(&qword_7B878, &qword_53290);
  sub_3131C((v63 + *(v64 + 44)));
  *(v63 + *(v95 + 36)) = 0;
  sub_39744(v36, v53, type metadata accessor for CRWidgetStackView);
  v65 = swift_allocObject();
  sub_397AC(v53, v65 + v54, type metadata accessor for CRWidgetStackView);
  sub_39628();
  v66 = v97;
  sub_4B18C();

  sub_1E284(v63, &qword_7B870, &qword_53288);
  v67 = v93;
  sub_2BC3C(v104, v93, &qword_7BE00, &qword_53A38);
  v68 = v94;
  sub_2BC3C(v58, v94, &qword_7BDF8, &qword_53A30);
  v69 = v98;
  v70 = v99;
  v71 = *(v99 + 16);
  v72 = v100;
  v71(v98, v66, v100);
  v73 = v101;
  sub_2BC3C(v67, v101, &qword_7BE00, &qword_53A38);
  v74 = sub_14628(&qword_7BE20, &qword_53A78);
  sub_2BC3C(v68, v73 + *(v74 + 48), &qword_7BDF8, &qword_53A30);
  v71((v73 + *(v74 + 64)), v69, v72);
  v75 = *(v70 + 8);
  v75(v66, v72);
  sub_1E284(v105, &qword_7BDF8, &qword_53A30);
  sub_1E284(v104, &qword_7BE00, &qword_53A38);
  v75(v69, v72);
  sub_1E284(v68, &qword_7BDF8, &qword_53A30);
  return sub_1E284(v67, &qword_7BE00, &qword_53A38);
}

uint64_t sub_2E918@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v4 = type metadata accessor for CRWidgetStackView(0);
  v86 = *(v4 - 8);
  __chkstk_darwin(v4);
  v87 = v5;
  v88 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14628(&qword_7B7C0, &qword_531F0);
  v68 = *(v6 - 8);
  __chkstk_darwin(v6);
  v67 = &v67 - v7;
  v72 = sub_14628(&qword_7B7C8, &qword_531F8);
  __chkstk_darwin(v72);
  v9 = &v67 - v8;
  v78 = sub_14628(&qword_7B7D0, &qword_53200);
  __chkstk_darwin(v78);
  v77 = &v67 - v10;
  v75 = sub_14628(&qword_7B7D8, &qword_53208);
  __chkstk_darwin(v75);
  v74 = &v67 - v11;
  v79 = sub_14628(&qword_7B7E0, &qword_53210);
  __chkstk_darwin(v79);
  v76 = &v67 - v12;
  v83 = sub_14628(&qword_7B7E8, &qword_53218);
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v67 - v13;
  v14 = sub_14628(&qword_7B7F0, &qword_53220);
  v84 = *(v14 - 8);
  v85 = v14;
  __chkstk_darwin(v14);
  v82 = &v67 - v15;
  v16 = sub_4ACDC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  v20 = *(v4 + 20);
  v90 = v2;
  v21 = v2 + v20;
  v22 = *v21;
  LOBYTE(v4) = *(v21 + 8);

  if ((v4 & 1) == 0)
  {
    sub_4B7FC();
    v23 = sub_4AFDC();
    sub_4A90C();

    sub_4ACCC();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v22 = v91;
  }

  v24 = v22[6];

  v25 = sub_4017C(a1);

  v73 = v6;
  if (v25)
  {
    LOBYTE(v91) = (*&stru_B8.segname[(swift_isaMask & *a1) - 8])();
    v95 = 1;
    sub_22358();
    v26 = sub_4B5DC() ^ 1;
  }

  else
  {
    v26 = 0;
  }

  v27 = *&stru_B8.segname[(swift_isaMask & *a1) - 8];
  LOBYTE(v91) = v27();
  v95 = 1;
  sub_22358();
  if (sub_4B5DC())
  {
    v28 = 0;
  }

  else
  {
    sub_14628(&qword_7B798, &qword_531D8);
    v29 = sub_4B46C();
    v30 = (*(*v91 + 21))(v29);

    if (v30 >> 62)
    {
      v31 = sub_4BA5C();
    }

    else
    {
      v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    }

    v28 = v31 > 1;
  }

  LOBYTE(v91) = v27();
  v95 = 1;
  v70 = sub_4B5DC();
  v32 = v73;
  v33 = swift_allocBox();
  v35 = v34;
  type metadata accessor for CRWidgetModel(0);
  sub_3CE84(&qword_7B7F8, type metadata accessor for CRWidgetModel, &unk_53E10);
  v36 = a1;
  sub_4B49C();
  *v9 = sub_4AD0C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v37 = &v9[*(sub_14628(&qword_7B800, &qword_53228) + 44)];
  LODWORD(v71) = v26 & 1;
  sub_2F6C0(v33, v90, v28, v71, v37);
  v38 = 0;
  v9[*(v72 + 36)] = 0;
  if ((v26 & 1) == 0)
  {
    v39 = v68;
    v40 = v67;
    (*(v68 + 16))(v67, v35, v32);
    sub_4B46C();
    v41 = (*(v39 + 8))(v40, v32);
    v42 = v91;
    LOBYTE(v40) = (*&stru_B8.segname[(swift_isaMask & *v91) - 8])(v41);

    LOBYTE(v91) = v40;
    v95 = 1;
    v38 = sub_4B5DC() ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v38 & 1;
  v45 = v77;
  sub_3C23C(v9, v77, &qword_7B7C8, &qword_531F8);
  v46 = (v45 + *(v78 + 9));
  *v46 = KeyPath;
  v46[1] = sub_2CA54;
  v46[2] = v44;
  v47 = v45;
  v48 = v74;
  sub_3C23C(v47, v74, &qword_7B7D0, &qword_53200);
  *(v48 + *(v75 + 36)) = !v28;
  v49 = v76;
  sub_3C23C(v48, v76, &qword_7B7D8, &qword_53208);
  v50 = v79;
  *(v49 + *(v79 + 36)) = v70 & 1;
  sub_4B02C();
  v51 = sub_39084();
  v52 = v80;
  sub_4B1AC();
  v53 = sub_1E284(v49, &qword_7B7E0, &qword_53210);
  v78 = &v67;
  __chkstk_darwin(v53);
  v54 = v90;
  *(&v67 - 2) = v90;
  *(&v67 - 1) = v33;
  v69 = v33;
  v55 = sub_14628(&qword_7B858, &qword_53278);
  v91 = v50;
  v92 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_2C958(&qword_7B860, &qword_7B858, &qword_53278, &protocol conformance descriptor for Button<A>);
  v59 = v82;
  v58 = v83;
  sub_4B19C();
  (*(v81 + 8))(v52, v58);
  v60 = v54;
  v61 = v88;
  sub_39744(v60, v88, type metadata accessor for CRWidgetStackView);
  v62 = (*(v86 + 80) + 17) & ~*(v86 + 80);
  v63 = (v87 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  *(v64 + 16) = v71;
  sub_397AC(v61, v64 + v62, type metadata accessor for CRWidgetStackView);
  *(v64 + v63) = v69;

  v91 = v58;
  v92 = v55;
  v93 = OpaqueTypeConformance2;
  v94 = v57;
  swift_getOpaqueTypeConformance2();
  v65 = v85;
  sub_4B18C();

  (*(v84 + 8))(v59, v65);
}

uint64_t sub_2F4D0()
{
  v1 = v0;
  v2 = type metadata accessor for CRWidgetStackView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_14628(&qword_7B870, &qword_53288);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  *v7 = sub_4AD0C();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_14628(&qword_7B878, &qword_53290);
  sub_3131C(&v7[*(v8 + 44)]);
  v7[*(v5 + 36)] = 0;
  sub_39744(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRWidgetStackView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_397AC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CRWidgetStackView);
  sub_39628();
  sub_4B18C();

  return sub_1E284(v7, &qword_7B870, &qword_53288);
}

uint64_t sub_2F6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v116) = a4;
  v103 = a3;
  v117 = a5;
  v118 = a2;
  v6 = sub_14628(&qword_7B660, &qword_52F80);
  __chkstk_darwin(v6 - 8);
  v104 = &v96 - v7;
  v115 = sub_14628(&qword_7BD48, &qword_539B8);
  v8 = __chkstk_darwin(v115);
  v120 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v122 = &v96 - v10;
  v109 = sub_14628(&qword_7BCD8, &qword_538C8);
  v98 = *(v109 - 8);
  __chkstk_darwin(v109);
  v97 = &v96 - v11;
  v107 = sub_14628(&qword_7BD50, &qword_539C0);
  __chkstk_darwin(v107);
  v108 = &v96 - v12;
  v13 = sub_4AEBC();
  v101 = *(v13 - 8);
  v102 = v13;
  __chkstk_darwin(v13);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_14628(&qword_7BD58, &qword_539C8);
  v99 = *(v16 - 8);
  v100 = v16;
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  v105 = sub_14628(&qword_7BD60, &qword_539D0);
  __chkstk_darwin(v105);
  v20 = &v96 - v19;
  v21 = sub_14628(&qword_7B7C0, &qword_531F0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - v23;
  v25 = sub_14628(&qword_7BD68, &qword_539D8);
  v26 = __chkstk_darwin(v25 - 8);
  v119 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v121 = &v96 - v28;
  v29 = a1;
  v30 = swift_projectBox();
  v31 = *(v22 + 16);
  v112 = v22 + 16;
  v113 = v30;
  v111 = v31;
  (v31)(v24);
  sub_4B46C();
  v32 = *(v22 + 8);
  v114 = v22 + 8;
  v110 = v32;
  v33 = v32(v24, v21);
  v34 = v125;
  v35 = (*&stru_B8.segname[(swift_isaMask & *v125) - 8])(v33);

  LOBYTE(v136[0]) = v35;
  LOBYTE(v137) = 1;
  sub_223AC();
  sub_4B66C();
  v36 = sub_4B66C();
  v106 = v29;
  if (v125 == v123[0])
  {
    __chkstk_darwin(v36);
    *(&v96 - 2) = v118;

    sub_14628(&qword_7BDC8, &qword_53A10);
    sub_3CB14();
    sub_4B35C();
    sub_4AEAC();
    sub_2C958(&qword_7BD88, &qword_7BD58, &qword_539C8, &protocol conformance descriptor for Button<A>);
    sub_3CE84(&qword_7BD90, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v37 = v100;
    v38 = v102;
    sub_4B15C();
    (*(v101 + 8))(v15, v38);
    (*(v99 + 8))(v18, v37);
    *&v20[*(sub_14628(&qword_7BD80, &qword_539E0) + 36)] = 0x3FF0000000000000;
    type metadata accessor for CRWidgetStackView(0);
    sub_14628(&qword_7B798, &qword_531D8);
    v39 = sub_4B46C();
    LOBYTE(v38) = (*(*v125 + 160))(v39);

    KeyPath = swift_getKeyPath();
    v41 = swift_allocObject();
    *(v41 + 16) = v38 & 1;
    v42 = &v20[*(v105 + 36)];
    *v42 = KeyPath;
    v42[1] = sub_3D3D0;
    v42[2] = v41;
    sub_2BC3C(v20, v108, &qword_7BD60, &qword_539D0);
    swift_storeEnumTagMultiPayload();
    sub_3C7F8();
    v43 = sub_1D648(&qword_7BD08, &qword_53998);
    v44 = sub_3C3A0();
    v125 = v43;
    v126 = v44;
    swift_getOpaqueTypeConformance2();
    v45 = v121;
    sub_4AE7C();
    sub_1E284(v20, &qword_7BD60, &qword_539D0);
    v46 = 0;
    v47 = v45;
  }

  else
  {
    v48 = v108;
    v49 = v109;
    v47 = v121;
    if (v103)
    {
      v46 = 1;
    }

    else
    {
      v50 = v97;
      sub_308A0(0);
      v51 = v98;
      v52 = v49;
      (*(v98 + 16))(v48, v50, v49);
      swift_storeEnumTagMultiPayload();
      sub_3C7F8();
      v53 = sub_1D648(&qword_7BD08, &qword_53998);
      v54 = sub_3C3A0();
      v125 = v53;
      v126 = v54;
      swift_getOpaqueTypeConformance2();
      sub_4AE7C();
      (*(v51 + 8))(v50, v52);
      v46 = 0;
    }
  }

  v55 = sub_14628(&qword_7BDA8, &qword_539F0);
  (*(*(v55 - 8) + 56))(v47, v46, 1, v55);
  v56 = v113;
  v57 = v111;
  v111(v24, v113, v21);
  sub_4B46C();
  v58 = v110;
  v110(v24, v21);
  v59 = v122;
  sub_3DEC4(v125, 0, 0, 70.0, 70.0);
  sub_4B4CC();
  sub_4AABC();
  v60 = (v59 + *(sub_14628(&qword_7BDB0, &qword_539F8) + 36));
  v61 = v136[5];
  *v60 = v136[4];
  v60[1] = v61;
  v60[2] = v136[6];
  v57(v24, v56, v21);
  sub_4B46C();
  v62 = v58(v24, v21);
  v63 = v125;
  v64 = (*(&stru_68.size + (swift_isaMask & *v125)))(v62);

  *(v59 + *(v115 + 52)) = v64;
  sub_4B4CC();
  sub_4AABC();
  v113 = v139;
  v114 = v137;
  v111 = v142;
  v112 = v141;
  v135 = 1;
  v134 = v138;
  v133 = v140;
  v118 = sub_4AD8C();
  LOBYTE(v125) = 1;
  sub_30A94(v136);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  *&v132[7] = v136[0];
  *&v132[23] = v136[1];
  *&v132[39] = v136[2];
  *&v132[55] = v136[3];
  LODWORD(v115) = v125;
  if (v116)
  {
    v65 = sub_4B2DC();
    v70 = sub_4B05C();
    v71 = v104;
    (*(*(v70 - 8) + 56))(v104, 1, 1, v70);
    v67 = sub_4B07C();
    sub_1E284(v71, &qword_7B660, &qword_52F80);
    v66 = swift_getKeyPath();
    v69 = sub_4B26C();
    v68 = swift_getKeyPath();
  }

  v108 = v68;
  v109 = v69;
  v110 = v65;
  v116 = v67;
  v72 = v119;
  sub_2BC3C(v121, v119, &qword_7BD68, &qword_539D8);
  v73 = v120;
  sub_2BC3C(v122, v120, &qword_7BD48, &qword_539B8);
  v74 = v135;
  v75 = v134;
  v76 = v133;
  v77 = v117;
  sub_2BC3C(v72, v117, &qword_7BD68, &qword_539D8);
  v78 = sub_14628(&qword_7BDB8, &qword_53A00);
  sub_2BC3C(v73, v77 + v78[12], &qword_7BD48, &qword_539B8);
  v79 = v77 + v78[16];
  *v79 = 0;
  *(v79 + 8) = v74;
  v80 = v113;
  *(v79 + 16) = v114;
  *(v79 + 24) = v75;
  *(v79 + 32) = v80;
  *(v79 + 40) = v76;
  v81 = v111;
  *(v79 + 48) = v112;
  *(v79 + 56) = v81;
  v82 = v77 + v78[20];
  v83 = v118;
  v123[0] = v118;
  v123[1] = 0;
  v84 = v115;
  v124[0] = v115;
  *&v124[1] = *v132;
  *&v124[33] = *&v132[32];
  *&v124[17] = *&v132[16];
  *&v124[49] = *&v132[48];
  *&v124[64] = *&v132[63];
  v85 = *v124;
  *v82 = v118;
  *(v82 + 16) = v85;
  v86 = *&v124[16];
  v87 = *&v124[32];
  v88 = *&v124[48];
  *(v82 + 80) = *&v124[64];
  *(v82 + 48) = v87;
  *(v82 + 64) = v88;
  *(v82 + 32) = v86;
  v89 = v77 + v78[24];
  *v89 = 0;
  *(v89 + 8) = 1;
  v90 = (v77 + v78[28]);
  sub_2BC3C(v123, &v125, &qword_7BDC0, &qword_53A08);
  v92 = v109;
  v91 = v110;
  v93 = v116;
  v94 = v108;
  sub_3CA28(v110, v66, v116, v108, v109);
  sub_3CA98(v91, v66, v93, v94, v92);
  *v90 = v91;
  v90[1] = v66;
  v90[2] = v93;
  v90[3] = v94;
  v90[4] = v92;
  sub_1E284(v122, &qword_7BD48, &qword_539B8);
  sub_1E284(v121, &qword_7BD68, &qword_539D8);
  sub_3CA98(v91, v66, v93, v94, v92);
  v125 = v83;
  v126 = 0;
  v127 = v84;
  v129 = *&v132[16];
  v130 = *&v132[32];
  *v131 = *&v132[48];
  *&v131[15] = *&v132[63];
  v128 = *v132;
  sub_1E284(&v125, &qword_7BDC0, &qword_53A08);
  sub_1E284(v120, &qword_7BD48, &qword_539B8);
  return sub_1E284(v119, &qword_7BD68, &qword_539D8);
}

void sub_305D0(uint64_t a1)
{
  v1 = sub_14628(&qword_7B7C0, &qword_531F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_4B46C();
  (*(v2 + 8))(v4, v1);
  v6 = v8;
  (*&stru_B8.segname[swift_isaMask & *v8])(0);
}

uint64_t sub_3070C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_14628(&qword_7BCD8, &qword_538C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  sub_308A0(1);
  type metadata accessor for CRWidgetStackView(0);
  sub_14628(&qword_7B798, &qword_531D8);
  v6 = sub_4B46C();
  v7 = (*(*v12[1] + 160))(v6);

  if (v7)
  {
    v8 = [objc_opt_self() tertiaryLabelColor];
    v9 = sub_4B2BC();
  }

  else
  {
    v9 = sub_4B28C();
  }

  v10 = v9;
  (*(v3 + 32))(a1, v5, v2);
  result = sub_14628(&qword_7BDC8, &qword_53A10);
  *(a1 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_308A0(char a1)
{
  v2 = sub_14628(&qword_7B660, &qword_52F80);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_4B2DC();
  sub_2D7D4();
  v6 = sub_4B05C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_4B07C();
  sub_1E284(v4, &qword_7B660, &qword_52F80);
  KeyPath = swift_getKeyPath();
  v9 = sub_4B01C();
  sub_4AA1C();
  v22 = 0;
  v14 = 0.0;
  *&v16 = v5;
  *(&v16 + 1) = KeyPath;
  *&v17 = v7;
  if (a1)
  {
    v14 = 1.0;
  }

  BYTE8(v17) = v9;
  *&v18 = v10;
  *(&v18 + 1) = v11;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  LOBYTE(v20) = 0;
  *(&v20 + 1) = v14;
  sub_4B00C();
  sub_14628(&qword_7BD08, &qword_53998);
  sub_3C3A0();
  sub_4B1AC();
  v21[2] = v18;
  v21[3] = v19;
  v21[4] = v20;
  v21[0] = v16;
  v21[1] = v17;
  return sub_1E284(v21, &qword_7BD08, &qword_53998);
}

uint64_t sub_30A94@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_14628(&qword_7B7C0, &qword_531F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = swift_projectBox();
  v40 = *(v4 + 16);
  v41 = v7;
  v40(v6, v7, v3);
  sub_4B46C();
  v39 = *(v4 + 8);
  v8 = v39(v6, v3);
  v9 = v44;
  (*(&stru_B8.reloff + (swift_isaMask & *v44)))(v8);

  sub_4B04C();
  v10 = sub_4B0DC();
  v42 = v11;
  v43 = v10;
  v13 = v12;
  v15 = v14;

  v40(v6, v41, v3);
  sub_4B46C();
  v16 = v39(v6, v3);
  v17 = v44;
  (*(&stru_B8.flags + (swift_isaMask & *v44)))(v16);
  v19 = v18;

  if (v19)
  {
    sub_4B03C();
    v20 = sub_4B0DC();
    v22 = v21;
    LODWORD(v40) = v13;
    v24 = v23;
    v41 = v15;

    sub_4B2AC();
    v25 = sub_4B0BC();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = v24 & 1;
    LOBYTE(v13) = v40;
    sub_2BCB4(v20, v22, v32);
    v15 = v41;

    v33 = v29 & 1;
    sub_2BCA4(v25, v27, v29 & 1);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v33 = 0;
    v31 = 0;
  }

  v34 = v13 & 1;
  v36 = v42;
  v35 = v43;
  sub_2BCA4(v43, v42, v34);

  sub_3CC08(v25, v27, v33, v31);
  sub_3CC4C(v25, v27, v33, v31);
  LOBYTE(v44) = v34;
  *a2 = v35;
  *(a2 + 8) = v36;
  *(a2 + 16) = v34;
  *(a2 + 24) = v15;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v33;
  *(a2 + 56) = v31;
  sub_3CC4C(v25, v27, v33, v31);
  sub_2BCB4(v35, v36, v34);
}

uint64_t sub_30E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRWidgetStackView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_14628(&qword_7B768, &qword_53120);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  sub_4A9EC();
  v10 = sub_4AA0C();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_39744(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRWidgetStackView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_397AC(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for CRWidgetStackView);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_4B34C();
}

void sub_3102C(uint64_t a1, uint64_t a2)
{
  v2 = sub_14628(&qword_7B7C0, &qword_531F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  type metadata accessor for CRWidgetStackView(0);
  sub_14628(&qword_7B798, &qword_531D8);
  sub_4B46C();
  v6 = v10;
  v7 = swift_projectBox();
  (*(v3 + 16))(v5, v7, v2);
  sub_4B46C();
  (*(v3 + 8))(v5, v2);
  v8 = v10;
  (*(*v6 + 216))(v10);
}

uint64_t sub_311A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4B2DC();
  *a1 = result;
  return result;
}

void sub_311DC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_14628(&qword_7B7C0, &qword_531F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  if (a1)
  {
    v9 = *(a2 + *(type metadata accessor for CRWidgetStackView(0) + 32));
    v10 = swift_projectBox();
    (*(v6 + 16))(v8, v10, v5);
    sub_4B46C();
    (*(v6 + 8))(v8, v5);
    v11 = v13;
    v9(v13);
  }
}

uint64_t sub_3131C@<X0>(char *a2@<X8>)
{
  v72 = a2;
  v2 = sub_14628(&qword_7BCD0, &qword_538C0);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v62 - v6;
  v73 = sub_14628(&qword_7BCD8, &qword_538C8);
  v71 = *(v73 - 8);
  v8 = __chkstk_darwin(v73);
  v76 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v75 = &v62 - v10;
  sub_308A0(0);
  sub_3C354();
  v11 = sub_4B82C();
  [v11 _effectiveCornerRadius];
  v13 = v12;

  v14 = *(sub_4AB7C() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = sub_4AD7C();
  (*(*(v16 - 8) + 104))(v7 + v14, v15, v16);
  *v7 = v13;
  *(v7 + 8) = v13;
  sub_4B27C();
  v17 = sub_4B29C();

  v18 = sub_14628(&qword_7BCE8, &qword_538D0);
  *(v7 + *(v18 + 52)) = v17;
  *(v7 + *(v18 + 56)) = 256;
  v19 = sub_4B4CC();
  v21 = v20;
  v22 = v7 + *(sub_14628(&qword_7BCF0, &qword_538D8) + 36);
  sub_31A08(v22);
  v23 = (v22 + *(sub_14628(&qword_7BCF8, &qword_538E0) + 36));
  *v23 = v19;
  v23[1] = v21;
  sub_4B4CC();
  sub_4AABC();
  v24 = *(v3 + 44);
  v77 = v7;
  v25 = (v7 + v24);
  v26 = v81;
  *v25 = v80;
  v25[1] = v26;
  v25[2] = v82;
  sub_4B4CC();
  sub_4AABC();
  v70 = v83;
  v69 = v85;
  v68 = v87;
  v67 = v88;
  v91 = 1;
  v90 = v84;
  v89 = v86;
  v78 = sub_3E584(0xD00000000000001BLL, 0x800000000005B930);
  v79 = v27;
  sub_2A3CC();
  v28 = sub_4B0FC();
  v30 = v29;
  LOBYTE(v7) = v31;
  sub_4B08C();
  v32 = sub_4B0DC();
  v34 = v33;
  v36 = v35;

  sub_2BCB4(v28, v30, v7 & 1);

  type metadata accessor for CRWidgetStackView(0);
  sub_14628(&qword_7B798, &qword_531D8);
  v37 = sub_4B46C();
  LOBYTE(v30) = (*(*v78 + 160))(v37);

  if (v30)
  {
    v38 = [objc_opt_self() tertiaryLabelColor];
    sub_4B2BC();
  }

  else
  {
    sub_4B26C();
  }

  v64 = sub_4B0BC();
  v63 = v39;
  v65 = v40;
  v66 = v41;

  sub_2BCB4(v32, v34, v36 & 1);

  v42 = v71;
  v43 = *(v71 + 16);
  v44 = v76;
  v45 = v73;
  v43(v76, v75, v73);
  v46 = v74;
  sub_2BC3C(v77, v74, &qword_7BCD0, &qword_538C0);
  v47 = v91;
  v48 = v90;
  v49 = v89;
  v50 = v72;
  v43(v72, v44, v45);
  v51 = sub_14628(&qword_7BD00, &qword_538E8);
  sub_2BC3C(v46, &v50[v51[12]], &qword_7BCD0, &qword_538C0);
  v52 = &v50[v51[16]];
  *v52 = 0;
  v52[8] = v47;
  *(v52 + 2) = v70;
  v52[24] = v48;
  *(v52 + 4) = v69;
  v52[40] = v49;
  v53 = v67;
  *(v52 + 6) = v68;
  *(v52 + 7) = v53;
  v54 = &v50[v51[20]];
  v55 = v64;
  v56 = v63;
  *v54 = v64;
  *(v54 + 1) = v56;
  v57 = v65 & 1;
  v54[16] = v65 & 1;
  *(v54 + 3) = v66;
  v58 = &v50[v51[24]];
  *v58 = 0;
  v58[8] = 1;
  v59 = v55;
  sub_2BCA4(v55, v56, v57);

  sub_1E284(v77, &qword_7BCD0, &qword_538C0);
  v60 = *(v42 + 8);
  v60(v75, v45);
  sub_2BCB4(v59, v56, v57);

  sub_1E284(v46, &qword_7BCD0, &qword_538C0);
  return (v60)(v76, v45);
}

uint64_t sub_31A08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_14628(&qword_7B660, &qword_52F80);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_14628(&qword_7B670, &unk_52FC0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = (v23 - v7);
  v9 = sub_4B2DC();
  v10 = sub_4B05C();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_4B07C();
  sub_1E284(v4, &qword_7B660, &qword_52F80);
  KeyPath = swift_getKeyPath();
  v13 = (v8 + *(v6 + 44));
  v14 = *(sub_14628(&qword_7B678, &qword_53920) + 28);
  sub_4AD9C();
  v15 = sub_4ADAC();
  (*(*(v15 - 8) + 56))(v13 + v14, 0, 1, v15);
  *v13 = swift_getKeyPath();
  *v8 = v9;
  v8[1] = KeyPath;
  v8[2] = v11;
  type metadata accessor for CRWidgetStackView(0);
  sub_14628(&qword_7B798, &qword_531D8);
  v16 = sub_4B46C();
  LOBYTE(v9) = (*(*v23[1] + 160))(v16);

  if (v9)
  {
    v17 = [objc_opt_self() tertiaryLabelColor];
    v18 = sub_4B2BC();
  }

  else
  {
    v18 = sub_4B26C();
  }

  v19 = v18;
  v20 = swift_getKeyPath();
  sub_3C23C(v8, a1, &qword_7B670, &unk_52FC0);
  result = sub_14628(&qword_7B680, &qword_53030);
  v22 = (a1 + *(result + 36));
  *v22 = v20;
  v22[1] = v19;
  return result;
}

uint64_t sub_31CE4(uint64_t a1)
{
  v2 = type metadata accessor for CRWidgetStackView(0);
  sub_14628(&qword_7B798, &qword_531D8);
  v3 = sub_4B46C();
  v4 = (*(*v6 + 160))(v3);

  if ((v4 & 1) == 0)
  {
    return (*(a1 + *(v2 + 28)))(result);
  }

  return result;
}

uint64_t sub_31D90@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  sub_14628(&qword_7B790, &qword_531D0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for CRWidgetStackView(0);
  v12 = a6 + v11[5];
  type metadata accessor for CRWidgetSettingsModel(0);
  sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel, &unk_52788);
  *v12 = sub_4AA6C();
  v12[8] = v13 & 1;
  type metadata accessor for CRWidgetStackModel(0);
  sub_3CE84(&qword_7B048, type metadata accessor for CRWidgetStackModel, &unk_52A20);
  sub_4B49C();
  v14 = (a6 + v11[7]);
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + v11[8]);
  *v15 = a4;
  v15[1] = a5;
  v16 = v11[9];
  sub_14628(&qword_7B7A0, &qword_531E0);
  sub_4B30C();
  *(a6 + v16) = v18;
  sub_2D778();
  return sub_4AA8C();
}

uint64_t sub_31F5C()
{
  sub_14628(&qword_7B7B0, &qword_531E8);
  sub_2C958(&qword_7B7B8, &qword_7B7B0, &qword_531E8, &protocol conformance descriptor for TupleView<A>);
  return sub_4B43C();
}

uint64_t sub_32048(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(0);
  sub_3CE84(a3, a4, a5);

  return sub_4B49C();
}

uint64_t sub_320C8()
{
  sub_14628(&qword_7B898, &qword_532A0);
  sub_4B46C();
  return v1;
}

uint64_t (*sub_32144(uint64_t *a1))()
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
  sub_14628(&qword_7B898, &qword_532A0);
  *(v3 + 32) = sub_4B45C();
  return sub_3D3CC;
}

void sub_321D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_3221C()
{
  sub_14628(&qword_7B898, &qword_532A0);

  return sub_4B48C();
}

uint64_t sub_32264()
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8A0, &qword_532A8);
  sub_4B3BC();
  return v1;
}

uint64_t sub_322CC(uint64_t a1)
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8A0, &qword_532A8);
  return sub_4B3CC();
}

void (*sub_3233C(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CRWidgetStackRowView(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = sub_14628(&qword_7B8A0, &qword_532A8);
  sub_4B3BC();
  return sub_32400;
}

void sub_32400(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 72);
  *(*a1 + 24) = *(*a1 + 64);
  v4 = v1[10];
  v1[4] = v3;
  v1[5] = v4;
  v1[7] = v2;
  sub_4B3CC();

  free(v1);
}

uint64_t sub_32470()
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8A0, &qword_532A8);
  sub_4B3EC();
  return v1;
}

uint64_t sub_324DC()
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8A8, &qword_532B0);
  sub_4B3BC();
  return v1;
}

uint64_t sub_32544(uint64_t a1)
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8A8, &qword_532B0);
  return sub_4B3CC();
}

void (*sub_325B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CRWidgetStackRowView(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v9 = v8;

  v4[11] = sub_14628(&qword_7B8A8, &qword_532B0);
  sub_4B3BC();
  return sub_32680;
}

void sub_32680(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_4B3CC();
  }

  else
  {
    sub_4B3CC();
  }

  free(v2);
}

uint64_t sub_32744()
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8A8, &qword_532B0);
  sub_4B3EC();
  return v1;
}

uint64_t sub_327B0()
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8B0, &qword_532B8);
  sub_4B3BC();
  return v1;
}

uint64_t sub_32818(char a1)
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8B0, &qword_532B8);
  return sub_4B3CC();
}

void (*sub_32888(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CRWidgetStackRowView(0) + 28));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = sub_14628(&qword_7B8B0, &qword_532B8);
  sub_4B3BC();
  return sub_3294C;
}

void sub_3294C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_4B3CC();

  free(v1);
}

uint64_t sub_329C4()
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8B0, &qword_532B8);
  sub_4B3EC();
  return v1;
}

uint64_t sub_32A30@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v57 = type metadata accessor for CRWidgetStackRowView(0);
  v59 = *(v57 - 8);
  v2 = __chkstk_darwin(v57);
  v60 = v3;
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v58 = &v54 - v4;
  v5 = sub_14628(&qword_7B898, &qword_532A0);
  v56 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v54 - v6;
  v63 = type metadata accessor for CRWidgetStackView(0);
  v8 = __chkstk_darwin(v63);
  v65 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v54 - v10);
  v55 = sub_14628(&qword_7B8B8, &qword_532C0);
  __chkstk_darwin(v55);
  v13 = &v54 - v12;
  v14 = sub_14628(&qword_7B8C0, &qword_532C8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = sub_14628(&qword_7B8C8, &qword_532D0);
  v19 = __chkstk_darwin(v18 - 8);
  v64 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v62 = &v54 - v21;
  v22 = v1;
  v23 = sub_4B46C();
  v24 = (*(*v71 + 120))(v23);

  if (v24 >> 62)
  {
    v25 = sub_4BA5C();
  }

  else
  {
    v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
  }

  if (v25 < 2)
  {
    v27 = 1;
    v26 = v62;
  }

  else
  {
    sub_33288(v22, v13);
    sub_39AFC();
    sub_4B44C();
    v26 = v62;
    (*(v15 + 32))(v62, v17, v14);
    v27 = 0;
  }

  (*(v15 + 56))(v26, v27, 1, v14);
  v28 = v26;
  sub_4B48C();
  swift_getKeyPath();
  sub_4B4AC();

  (*(v56 + 8))(v7, v5);
  v29 = v71;
  v30 = v72;
  v31 = v73;
  v32 = v22 + *(v57 + 20);
  v33 = *v32;
  v34 = *(v32 + 16);
  v69 = v33;
  v70 = v34;
  sub_14628(&qword_7B8A0, &qword_532A8);
  v35 = sub_4B3BC();
  __chkstk_darwin(v35);
  *(&v54 - 2) = v36;
  swift_getKeyPath();
  *&v69 = v29;
  *(&v69 + 1) = v30;
  v70 = v31;
  sub_14628(&qword_7B8D0, &qword_53340);
  sub_4B3AC();

  v37 = v58;
  sub_39744(v22, v58, type metadata accessor for CRWidgetStackRowView);
  v38 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v39 = swift_allocObject();
  sub_397AC(v37, v39 + v38, type metadata accessor for CRWidgetStackRowView);
  v40 = v22;
  v41 = v61;
  sub_39744(v40, v61, type metadata accessor for CRWidgetStackRowView);
  v42 = swift_allocObject();
  sub_397AC(v41, v42 + v38, type metadata accessor for CRWidgetStackRowView);
  *v11 = swift_getKeyPath();
  sub_14628(&qword_7B790, &qword_531D0);
  swift_storeEnumTagMultiPayload();
  v43 = v63;
  v44 = v11 + *(v63 + 20);
  type metadata accessor for CRWidgetSettingsModel(0);
  sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel, &unk_52788);
  *v44 = sub_4AA6C();
  v44[8] = v45 & 1;
  type metadata accessor for CRWidgetStackModel(0);
  sub_3CE84(&qword_7B048, type metadata accessor for CRWidgetStackModel, &unk_52A20);
  sub_4B49C();
  v46 = (v11 + v43[7]);
  *v46 = sub_39814;
  v46[1] = v39;
  v47 = (v11 + v43[8]);
  *v47 = sub_399F8;
  v47[1] = v42;
  v48 = v43[9];
  v67 = 0;
  sub_14628(&qword_7B7A0, &qword_531E0);
  sub_4B30C();
  *(v11 + v48) = v68;
  *&v68 = 0x4036000000000000;
  sub_2D778();
  sub_4AA8C();
  v49 = v64;
  sub_2BC3C(v28, v64, &qword_7B8C8, &qword_532D0);
  v50 = v65;
  sub_39744(v11, v65, type metadata accessor for CRWidgetStackView);
  v51 = v66;
  sub_2BC3C(v49, v66, &qword_7B8C8, &qword_532D0);
  v52 = sub_14628(&qword_7B8D8, &qword_53348);
  sub_39744(v50, v51 + *(v52 + 48), type metadata accessor for CRWidgetStackView);
  sub_39AA0(v11);
  sub_1E284(v28, &qword_7B8C8, &qword_532D0);
  sub_39AA0(v50);
  return sub_1E284(v49, &qword_7B8C8, &qword_532D0);
}

double sub_33288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = sub_4AE9C();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_14628(&qword_7B8F8, &qword_53358);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v25 - v5;
  v30 = sub_14628(&qword_7BC90, &qword_53878);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v25 = &v25 - v7;
  v8 = sub_14628(&qword_7B8F0, &qword_53350);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  sub_4AD5C();
  v12 = (a1 + *(type metadata accessor for CRWidgetStackRowView(0) + 20));
  v13 = *v12;
  v14 = *(v12 + 2);
  v36 = v13;
  *&v37 = v14;
  sub_14628(&qword_7B8A0, &qword_532A8);
  sub_4B3EC();
  v36 = v34;
  *&v37 = v35;
  v33 = a1;
  sub_14628(&qword_7BC98, &qword_53880);
  sub_3C174();
  sub_4B38C();
  sub_4AE8C();
  sub_2C958(&qword_7B900, &qword_7B8F8, &qword_53358, &protocol conformance descriptor for Picker<A, B, C>);
  v15 = v25;
  v16 = v26;
  v17 = v29;
  sub_4B17C();
  (*(v31 + 8))(v4, v17);
  (*(v27 + 8))(v6, v16);
  sub_4B4CC();
  sub_4AB9C();
  (*(v28 + 32))(v11, v15, v30);
  v18 = &v11[*(v9 + 44)];
  v19 = v41;
  *(v18 + 4) = v40;
  *(v18 + 5) = v19;
  *(v18 + 6) = v42;
  v20 = v37;
  *v18 = v36;
  *(v18 + 1) = v20;
  v21 = v39;
  *(v18 + 2) = v38;
  *(v18 + 3) = v21;
  v22 = v32;
  sub_3C23C(v11, v32, &qword_7B8F0, &qword_53350);
  v23 = v22 + *(sub_14628(&qword_7B8B8, &qword_532C0) + 36);
  *(v23 + 32) = 0;
  result = 0.0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  return result;
}

uint64_t sub_33748(uint64_t a1)
{
  v2 = type metadata accessor for CRWidgetStackRowView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14628(&qword_7B898, &qword_532A0);
  v6 = sub_4B46C();
  v7 = (*(*v14 + 120))(v6);

  v8 = sub_3A238(v7);

  v18 = v8;
  swift_getKeyPath();
  sub_39744(a1, v5, type metadata accessor for CRWidgetStackRowView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_397AC(v5, v10 + v9, type metadata accessor for CRWidgetStackRowView);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_3C2A8;
  *(v11 + 24) = v10;
  sub_14628(&qword_7BCA8, &qword_538A8);
  sub_14628(&qword_7BCB0, &qword_538B0);
  sub_2C958(&qword_7BCB8, &qword_7BCA8, &qword_538A8, &protocol conformance descriptor for [A]);
  sub_3CE84(&qword_7BCC0, type metadata accessor for CRWidgetStackModel, &unk_529B8);
  v14 = &type metadata for Text;
  v15 = &type metadata for Int;
  v16 = &protocol witness table for Text;
  v17 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  return sub_4B41C();
}

void sub_33A20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4AD4C();
  __chkstk_darwin(v4 - 8);
  sub_4AD3C();
  v10._object = 0x800000000005B900;
  v10._countAndFlagsBits = 0xD000000000000017;
  sub_4AD2C(v10);
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_4AD1C();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    sub_4AD2C(v11);
    sub_4AD6C();
    _s5DummyCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    *a2 = sub_4B0EC();
    *(a2 + 8) = v7;
    *(a2 + 16) = v8 & 1;
    *(a2 + 24) = v9;
    *(a2 + 32) = a1;
    *(a2 + 40) = 1;
  }
}

uint64_t sub_33BCC@<X0>(uint64_t a8@<X8>)
{
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  v11 = [v10 bundleForClass:ObjCClassFromMetadata];
  result = sub_4B0EC();
  *a8 = result;
  *(a8 + 8) = v13;
  *(a8 + 16) = v14 & 1;
  *(a8 + 24) = v15;
  return result;
}

unint64_t sub_33CEC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  result = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = sub_4B9AC();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_33D54(uint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *a2;

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_21A94(v6);
    v6 = result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    *(&stru_20.cmd + 8 * v4 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;

    *a2 = v6;
    return result;
  }

  __break(1u);
  return result;
}

int *sub_33DE0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  type metadata accessor for CRWidgetStackRowModel(0);
  sub_3CE84(&qword_7B080, type metadata accessor for CRWidgetStackRowModel, &unk_52A3C);
  sub_4B49C();
  result = type metadata accessor for CRWidgetStackRowView(0);
  v18 = (a9 + result[5]);
  *v18 = a2;
  v18[1] = a3;
  v18[2] = a4;
  v19 = (a9 + result[6]);
  *v19 = a5;
  v19[1] = a6;
  v19[2] = a7;
  v20 = a9 + result[7];
  *v20 = a8;
  *(v20 + 8) = a10;
  *(v20 + 16) = a11;
  return result;
}

uint64_t sub_33EE0(uint64_t a1)
{
  type metadata accessor for CRWidgetSettingsModel(0);
  sub_4B30C();
  return v2;
}

uint64_t sub_33F20(uint64_t a1)
{
  sub_14628(&qword_7B7A0, &qword_531E0);
  sub_4B30C();
  return v2;
}

uint64_t sub_33FA0()
{
  sub_14628(&qword_7B918, &qword_53370);
  v0 = sub_4B31C();
  v1 = (*(*v6 + 560))(v0);

  if (!v1)
  {
    return 0;
  }

  v3 = (*(*v1 + 120))(v2);

  sub_14628(&qword_7B920, &qword_53378);
  sub_4B31C();
  if (v3 >> 62)
  {
    if (v6 < sub_4BA5C())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v6 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_10:

    return 0;
  }

LABEL_4:
  sub_4B31C();
  result = v6;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_4B9AC();
    goto LABEL_8;
  }

  if (v6 < 0)
  {
    __break(1u);
  }

  else if (v6 < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    v5 = *(v3 + 8 * v6 + 32);

LABEL_8:

    return v5;
  }

  __break(1u);
  return result;
}

__n128 sub_34154@<Q0>(__n128 *a1@<X8>, unint64_t a2@<X0>)
{
  sub_3A428(a2, v5);
  v3 = v5[3];
  a1[2] = v5[2];
  a1[3] = v3;
  a1[4] = v5[4];
  result = v5[1];
  *a1 = v5[0];
  a1[1] = result;
  return result;
}

uint64_t sub_3419C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_14628(&qword_7B928, &qword_53380);
  __chkstk_darwin(v3);
  v5 = (&v26 - v4);
  v6 = sub_14628(&qword_7B930, &qword_53388);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  *v5 = sub_4B4CC();
  v5[1] = v10;
  v11 = sub_14628(&qword_7B938, &unk_53390);
  sub_34540(v2, v5 + *(v11 + 44));
  v31 = sub_3E584(0xD000000000000017, 0x800000000005B760);
  v32 = v12;
  v13 = sub_2C958(&qword_7B940, &qword_7B928, &qword_53380, &protocol conformance descriptor for ZStack<A>);
  v14 = sub_2A3CC();
  sub_4B1CC();

  sub_1E284(v5, &qword_7B928, &qword_53380);
  v30 = v2;
  sub_14628(&qword_7B3E8, &unk_52BF0);
  v31 = v3;
  v32 = &type metadata for String;
  v33 = v13;
  v34 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_1D648(&qword_7B3F0, &unk_533A0);
  v16 = sub_1D648(&qword_7B3F8, &unk_52C00);
  v17 = sub_2A2E8();
  v18 = sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00, &protocol conformance descriptor for TupleView<A>);
  v31 = v15;
  v32 = &type metadata for String;
  v33 = v16;
  v34 = v17;
  v35 = v14;
  v36 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v29;
  v20 = v27;
  sub_4B23C();
  (*(v28 + 8))(v9, v20);
  v21 = swift_allocObject();
  v22 = v2[3];
  v21[3] = v2[2];
  v21[4] = v22;
  v21[5] = v2[4];
  v23 = v2[1];
  v21[1] = *v2;
  v21[2] = v23;
  v24 = (v19 + *(sub_14628(&qword_7B948, &qword_533C8) + 36));
  sub_4AACC();
  sub_3A5B0(v2, &v31);
  result = sub_4B70C();
  *v24 = &unk_533C0;
  v24[1] = v21;
  return result;
}

uint64_t sub_34540@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v3 = sub_14628(&qword_7BA18, &unk_53470);
  __chkstk_darwin(v3);
  v5 = v16 - v4;
  v6 = sub_14628(&qword_7BC78, &qword_53868);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = sub_14628(&qword_7BC80, &qword_53870);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - v11;
  v17 = *a1;
  sub_14628(&qword_7B918, &qword_53370);
  v13 = sub_4B31C();
  v14 = (*(*v16[1] + 440))(v13);

  if (v14)
  {
    sub_4AA7C();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_2C958(&qword_7BC88, &qword_7BC80, &qword_53870, &protocol conformance descriptor for ProgressView<A, B>);
    sub_3BA54();
    sub_4AE7C();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_34874(v5);
    sub_2BC3C(v5, v8, &qword_7BA18, &unk_53470);
    swift_storeEnumTagMultiPayload();
    sub_2C958(&qword_7BC88, &qword_7BC80, &qword_53870, &protocol conformance descriptor for ProgressView<A, B>);
    sub_3BA54();
    sub_4AE7C();
    return sub_1E284(v5, &qword_7BA18, &unk_53470);
  }
}

uint64_t sub_34874@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v49 = sub_4B4BC();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_14628(&qword_7B950, &qword_533D0);
  __chkstk_darwin(v4);
  v6 = v39 - v5;
  v42 = sub_14628(&qword_7B958, &qword_533D8);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v50 = v39 - v7;
  v44 = sub_14628(&qword_7B960, &qword_533E0);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - v8;
  v51 = v1;
  sub_14628(&qword_7B968, &qword_533E8);
  sub_2C958(&qword_7B970, &qword_7B968, &qword_533E8, &protocol conformance descriptor for TupleView<A>);
  sub_4B09C();
  v9 = *(v4 + 36);
  v39[0] = v4;
  v10 = &v6[v9];
  *v10 = sub_37D68;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v52 = v1[3];
  sub_14628(&qword_7B760, &qword_533F0);
  sub_4B33C();
  v11 = swift_allocObject();
  v12 = v1[3];
  v11[3] = v1[2];
  v11[4] = v12;
  v11[5] = v1[4];
  v13 = v1[1];
  v11[1] = *v1;
  v11[2] = v13;
  sub_3A5B0(v1, &v54);
  v14 = sub_14628(&qword_7B978, &qword_533F8);
  v15 = sub_3A654();
  v16 = sub_3A70C();
  sub_4B21C();

  sub_1E284(v6, &qword_7B950, &qword_533D0);
  v52 = v1[1];
  sub_14628(&qword_7B9A8, &qword_53408);
  sub_4B33C();
  v39[1] = *(&v54 + 1);
  v39[2] = v54;
  v40 = v55;
  v52 = v54;
  v53 = v55;
  v17 = swift_allocObject();
  v18 = v1[3];
  v17[3] = v1[2];
  v17[4] = v18;
  v17[5] = v1[4];
  v19 = v1[1];
  v17[1] = *v1;
  v17[2] = v19;
  sub_3A5B0(v1, &v54);
  v20 = type metadata accessor for CRWidgetModel(0);
  v21 = sub_14628(&qword_7B9B0, &qword_53410);
  *&v54 = v39[0];
  *(&v54 + 1) = v14;
  v55 = v15;
  v56 = v16;
  v39[0] = swift_getOpaqueTypeConformance2();
  v22 = sub_3CE84(&qword_7B9B8, type metadata accessor for CRWidgetModel, &unk_53DD8);
  v23 = sub_1D648(&qword_7B9C0, &qword_53418);
  v24 = sub_3A7D0();
  *&v54 = v23;
  *(&v54 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v41;
  v26 = v42;
  v27 = v50;
  sub_4B22C();

  (*(v43 + 8))(v27, v26);
  v54 = *v2;
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B31C();
  type metadata accessor for CRWidgetSettingsModel(0);
  *&v54 = v26;
  *(&v54 + 1) = v20;
  v55 = v21;
  v56 = v39[0];
  v57 = v22;
  v58 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel, &unk_52788);
  v28 = v46;
  v29 = v44;
  sub_4B16C();

  (*(v45 + 8))(v25, v29);
  KeyPath = swift_getKeyPath();
  v31 = (v28 + *(sub_14628(&qword_7BA18, &unk_53470) + 36));
  v32 = *(sub_14628(&qword_7B378, &unk_52BD0) + 28);
  v33 = v48;
  v34 = v47;
  v35 = v49;
  (*(v48 + 104))(v47, enum case for EditMode.active(_:), v49);
  sub_4B3FC();
  (*(v33 + 8))(v34, v35);
  v36 = sub_14628(&qword_7B380, &qword_53480);
  result = (*(*(v36 - 8) + 56))(v31 + v32, 0, 1, v36);
  *v31 = KeyPath;
  return result;
}

uint64_t sub_35070@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_14628(&qword_7B410, &qword_533B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - v5;
  v7 = sub_14628(&qword_7B3F0, &unk_533A0);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  *&v33 = sub_3E584(0xD000000000000013, 0x800000000005B8A0);
  *(&v33 + 1) = v10;
  v11 = swift_allocObject();
  v12 = a1[3];
  v11[3] = a1[2];
  v11[4] = v12;
  v11[5] = a1[4];
  v13 = a1[1];
  v11[1] = *a1;
  v11[2] = v13;
  sub_3A5B0(a1, &v31);
  v26 = sub_2A3CC();
  sub_4B37C();
  v33 = *a1;
  v31 = *a1;
  sub_14628(&qword_7B918, &qword_53370);
  v14 = sub_4B31C();
  v15 = (*(*v29 + 248))(v14);

  if (v15)
  {
    v31 = v33;
    v16 = sub_4B31C();
    v17 = (*(*v29 + 440))(v16);
  }

  else
  {
    v17 = 1;
  }

  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v17 & 1;
  (*(v4 + 32))(v9, v6, v3);
  v20 = &v9[*(v7 + 36)];
  *v20 = KeyPath;
  v20[1] = sub_3D3D0;
  v20[2] = v19;
  v29 = sub_3E584(0xD00000000000001BLL, 0x800000000005B8C0);
  v30 = v21;
  v28 = a1[2];
  sub_14628(&qword_7B760, &qword_533F0);
  v22 = sub_4B33C();
  v25 = v24;
  v24[1] = v32;
  __chkstk_darwin(v22);
  sub_14628(&qword_7B3F8, &unk_52C00);
  sub_2A2E8();
  sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00, &protocol conformance descriptor for TupleView<A>);
  sub_4B1DC();

  return sub_1E284(v9, &qword_7B3F0, &unk_533A0);
}

uint64_t sub_354DC@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = sub_14628(&qword_7B768, &qword_53120);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_14628(&qword_7B410, &qword_533B0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v32 = &v31 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v35[10] = sub_3E584(0xD000000000000013, 0x800000000005B8A0);
  v35[11] = v17;
  sub_4A9EC();
  v18 = sub_4AA0C();
  v19 = *(*(v18 - 8) + 56);
  v19(v5, 0, 1, v18);
  v20 = swift_allocObject();
  v21 = a1[3];
  v20[3] = a1[2];
  v20[4] = v21;
  v20[5] = a1[4];
  v22 = a1[1];
  v20[1] = *a1;
  v20[2] = v22;
  sub_3A5B0(a1, v35);
  sub_2A3CC();
  sub_4B36C();
  v35[0] = sub_3E584(0xD00000000000001ALL, 0x800000000005B8E0);
  v35[1] = v23;
  sub_4A9FC();
  v19(v5, 0, 1, v18);
  sub_4B36C();
  v24 = *(v7 + 16);
  v25 = v32;
  v24(v32, v16, v6);
  v26 = v33;
  v24(v33, v14, v6);
  v27 = v34;
  v24(v34, v25, v6);
  v28 = sub_14628(&qword_7B770, &qword_53860);
  v24(&v27[*(v28 + 48)], v26, v6);
  v29 = *(v7 + 8);
  v29(v14, v6);
  v29(v16, v6);
  v29(v26, v6);
  return (v29)(v25, v6);
}

uint64_t sub_358A0(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_4A93C();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_4BA2C();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v4 = sub_4BA3C();
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();
  sub_4B6FC();
  v1[32] = sub_4B6EC();
  v6 = sub_4B6DC();
  v1[33] = v6;
  v1[34] = v5;

  return _swift_task_switch(sub_35A58, v6, v5);
}

uint64_t sub_35A58()
{
  v1 = *(v0 + 168);
  v2 = *v1;
  *(v0 + 40) = *v1;
  *(v0 + 56) = v2;
  *(v0 + 280) = sub_14628(&qword_7B918, &qword_53370);
  v3 = sub_4B31C();
  v4 = (*(**(v0 + 136) + 440))(v3);

  if ((v4 & 1) != 0 && (sub_4B73C() & 1) == 0)
  {
    *(v0 + 88) = *(v0 + 40);
    sub_4B31C();
    v18 = *(v0 + 152);
    *(v0 + 288) = v18;
    v22 = (*(*v18 + 584) + **(*v18 + 584));
    v19 = swift_task_alloc();
    *(v0 + 296) = v19;
    *v19 = v0;
    v19[1] = sub_35E10;
    v17 = v22;
  }

  else
  {
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = sub_49558();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_4A91C();
    v10 = sub_4B80C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Finished loading task", v11, 2u);
    }

    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);

    (*(v13 + 8))(v12, v14);
    *(v0 + 72) = *(v0 + 40);
    sub_4B31C();
    v15 = *(v0 + 144);
    *(v0 + 328) = v15;
    v21 = (*(*v15 + 600) + **(*v15 + 600));
    v16 = swift_task_alloc();
    *(v0 + 336) = v16;
    *v16 = v0;
    v16[1] = sub_36AE4;
    v17 = v21;
  }

  return v17();
}

uint64_t sub_35E10()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return _swift_task_switch(sub_35F54, v3, v2);
}

uint64_t sub_35F54()
{
  *(v0 + 104) = *(v0 + 40);
  v1 = sub_4B31C();
  v2 = (*(**(v0 + 160) + 440))(v1);

  if (v2)
  {
    sub_4BABC();
    *(v0 + 120) = xmmword_53190;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return _swift_task_switch(sub_363C8, 0, 0);
  }

  else
  {
    *(v0 + 56) = *(v0 + 40);
    *(v0 + 280) = sub_14628(&qword_7B918, &qword_53370);
    v3 = sub_4B31C();
    v4 = (*(**(v0 + 136) + 440))(v3);

    if ((v4 & 1) != 0 && (sub_4B73C() & 1) == 0)
    {
      *(v0 + 88) = *(v0 + 40);
      sub_4B31C();
      v18 = *(v0 + 152);
      *(v0 + 288) = v18;
      v22 = (*(*v18 + 584) + **(*v18 + 584));
      v19 = swift_task_alloc();
      *(v0 + 296) = v19;
      *v19 = v0;
      v19[1] = sub_35E10;
      v17 = v22;
    }

    else
    {
      v6 = *(v0 + 184);
      v5 = *(v0 + 192);
      v7 = *(v0 + 176);
      v8 = sub_49558();
      (*(v6 + 16))(v5, v8, v7);
      v9 = sub_4A91C();
      v10 = sub_4B80C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_0, v9, v10, "Finished loading task", v11, 2u);
      }

      v13 = *(v0 + 184);
      v12 = *(v0 + 192);
      v14 = *(v0 + 176);

      (*(v13 + 8))(v12, v14);
      *(v0 + 72) = *(v0 + 40);
      sub_4B31C();
      v15 = *(v0 + 144);
      *(v0 + 328) = v15;
      v21 = (*(*v15 + 600) + **(*v15 + 600));
      v16 = swift_task_alloc();
      *(v0 + 336) = v16;
      *v16 = v0;
      v16[1] = sub_36AE4;
      v17 = v21;
    }

    return v17();
  }
}

uint64_t sub_363C8()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = sub_3CE84(&qword_7BC68, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_4BA9C();
  sub_3CE84(&qword_7BC70, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_4BA4C();
  v5 = *(v2 + 8);
  v0[38] = v5;
  v0[39] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_3654C;
  v8 = v0[28];
  v7 = v0[29];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v7, v4);
}

uint64_t sub_3654C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[38];
    v4 = v2[28];
    v5 = v2[25];

    v3(v4, v5);
    v6 = sub_36A70;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v2[30];
    v9 = v2[31];
    v11 = v2[29];
    (v2[38])(v2[28], v2[25]);
    (*(v10 + 8))(v9, v11);
    v7 = v2[33];
    v8 = v2[34];
    v6 = sub_366C0;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_366C0()
{
  *(v0 + 56) = *(v0 + 40);
  *(v0 + 280) = sub_14628(&qword_7B918, &qword_53370);
  v1 = sub_4B31C();
  v2 = (*(**(v0 + 136) + 440))(v1);

  if ((v2 & 1) != 0 && (sub_4B73C() & 1) == 0)
  {
    *(v0 + 88) = *(v0 + 40);
    sub_4B31C();
    v16 = *(v0 + 152);
    *(v0 + 288) = v16;
    v20 = (*(*v16 + 584) + **(*v16 + 584));
    v17 = swift_task_alloc();
    *(v0 + 296) = v17;
    *v17 = v0;
    v17[1] = sub_35E10;
    v15 = v20;
  }

  else
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 176);
    v6 = sub_49558();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_4A91C();
    v8 = sub_4B80C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Finished loading task", v9, 2u);
    }

    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);

    (*(v11 + 8))(v10, v12);
    *(v0 + 72) = *(v0 + 40);
    sub_4B31C();
    v13 = *(v0 + 144);
    *(v0 + 328) = v13;
    v19 = (*(*v13 + 600) + **(*v13 + 600));
    v14 = swift_task_alloc();
    *(v0 + 336) = v14;
    *v14 = v0;
    v14[1] = sub_36AE4;
    v15 = v19;
  }

  return v15();
}

uint64_t sub_36A70()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1 = v0[33];
  v2 = v0[34];

  return _swift_task_switch(sub_3D3C8, v1, v2);
}

uint64_t sub_36AE4()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return _swift_task_switch(sub_36C28, v3, v2);
}

uint64_t sub_36C28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_36CB8@<X0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v103 = a2;
  v3 = sub_14628(&qword_7BBF8, &qword_53758);
  v102 = *(v3 - 8);
  __chkstk_darwin(v3);
  v90 = &v76[-v4];
  v89 = sub_14628(&qword_7BC00, &qword_53760);
  v88 = *(v89 - 8);
  v5 = __chkstk_darwin(v89);
  v101 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v95 = &v76[-v7];
  v87 = sub_14628(&qword_7BC08, &qword_53768);
  v86 = *(v87 - 8);
  v8 = __chkstk_darwin(v87);
  v93 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v92 = &v76[-v10];
  v84 = type metadata accessor for CRWidgetStackRowView(0);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v76[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_14628(&qword_7BC10, &qword_53770);
  v13 = __chkstk_darwin(v12 - 8);
  v91 = &v76[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v76[-v15];
  v17 = sub_14628(&qword_7BC18, &qword_53778);
  v18 = __chkstk_darwin(v17 - 8);
  v100 = &v76[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v97 = &v76[-v20];
  v21 = sub_14628(&qword_7BC20, &qword_53780);
  v98 = *(v21 - 8);
  v99 = v21;
  v22 = __chkstk_darwin(v21);
  v96 = &v76[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v76[-v24];
  v104 = a1;
  sub_4AD5C();
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *&v106 = sub_4B0EC();
  *(&v106 + 1) = v28;
  LOBYTE(v107) = v29 & 1;
  v108 = v30;
  sub_14628(&qword_7BC28, &qword_53788);
  v31 = sub_2C958(&qword_7BC30, &qword_7BC28, &qword_53788, &protocol conformance descriptor for Toggle<A>);
  v94 = v25;
  sub_4B44C();
  v109 = *a1;
  v106 = *a1;
  sub_14628(&qword_7B918, &qword_53370);
  v32 = sub_4B31C();
  LOBYTE(ObjCClassFromMetadata) = (*(*v105 + 248))(v32);

  if (ObjCClassFromMetadata)
  {
    v106 = v109;
    v33 = sub_4B31C();
    v34 = (*(*v105 + 560))(v33);

    v82 = v3;
    v81 = v31;
    if (v34)
    {
      v36 = (*(*v34 + 120))(v35);
      if (v36 >> 62)
      {
        v37 = sub_4BA5C();
      }

      else
      {
        v37 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      }

      v38 = v16;

      if (v37 >= 1)
      {
        v105 = a1[4];
        sub_14628(&qword_7B920, &qword_53378);
        sub_4B33C();
        v79 = v106;
        v39 = v107;
        v105 = a1[1];
        sub_14628(&qword_7B9A8, &qword_53408);
        sub_4B33C();
        v78 = v106;
        v40 = v107;
        v105 = a1[3];
        sub_14628(&qword_7B760, &qword_533F0);
        sub_4B33C();
        v41 = v106;
        v77 = v107;
        type metadata accessor for CRWidgetStackRowModel(0);
        sub_3CE84(&qword_7B080, type metadata accessor for CRWidgetStackRowModel, &unk_52A3C);
        v42 = v83;
        sub_4B49C();
        v43 = v84;
        v44 = v42 + *(v84 + 20);
        *v44 = v79;
        *(v44 + 16) = v39;
        v45 = v42 + *(v43 + 24);
        *v45 = v78;
        *(v45 + 16) = v40;
        v46 = v42 + *(v43 + 28);
        *v46 = v41;
        *(v46 + 16) = v77;
        sub_397AC(v42, v38, type metadata accessor for CRWidgetStackRowView);
        v47 = 0;
LABEL_11:
        v80 = v38;
        v50 = (*(v85 + 56))(v38, v47, 1, v43);
        __chkstk_darwin(v50);
        sub_14628(&qword_7BC40, &qword_53798);
        sub_2C958(&qword_7BC48, &qword_7BC40, &qword_53798, &protocol conformance descriptor for TupleView<A>);
        v51 = v92;
        v52 = sub_4B43C();
        __chkstk_darwin(v52);
        v53 = v95;
        sub_4B43C();
        v54 = v91;
        sub_2BC3C(v38, v91, &qword_7BC10, &qword_53770);
        v55 = v86;
        v85 = *(v86 + 16);
        v56 = v93;
        v57 = v87;
        (v85)(v93, v51, v87);
        v58 = v88;
        v59 = *(v88 + 16);
        v60 = v89;
        v59(v101, v53, v89);
        v61 = v90;
        sub_2BC3C(v54, v90, &qword_7BC10, &qword_53770);
        v62 = sub_14628(&qword_7BC50, &qword_537A0);
        (v85)(&v61[*(v62 + 48)], v56, v57);
        v63 = v101;
        v59(&v61[*(v62 + 64)], v101, v60);
        v64 = *(v58 + 8);
        v64(v95, v60);
        v65 = *(v55 + 8);
        v65(v92, v57);
        sub_1E284(v80, &qword_7BC10, &qword_53770);
        v64(v63, v60);
        v65(v93, v57);
        sub_1E284(v91, &qword_7BC10, &qword_53770);
        v49 = v97;
        sub_3C23C(v61, v97, &qword_7BBF8, &qword_53758);
        v48 = 0;
        v3 = v82;
        goto LABEL_12;
      }

      v47 = 1;
    }

    else
    {
      v47 = 1;
      v38 = v16;
    }

    v43 = v84;
    goto LABEL_11;
  }

  v48 = 1;
  v49 = v97;
LABEL_12:
  (*(v102 + 56))(v49, v48, 1, v3);
  v67 = v98;
  v66 = v99;
  v68 = *(v98 + 16);
  v69 = v96;
  v70 = v94;
  v68(v96, v94, v99);
  v71 = v100;
  sub_2BC3C(v49, v100, &qword_7BC18, &qword_53778);
  v72 = v103;
  v68(v103, v69, v66);
  v73 = sub_14628(&qword_7BC38, &qword_53790);
  sub_2BC3C(v71, &v72[*(v73 + 48)], &qword_7BC18, &qword_53778);
  sub_1E284(v49, &qword_7BC18, &qword_53778);
  v74 = *(v67 + 8);
  v74(v70, v66);
  sub_1E284(v71, &qword_7BC18, &qword_53778);
  return (v74)(v69, v66);
}

uint64_t sub_37990@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v30 = a1;
  v34 = a2;
  v3 = sub_14628(&qword_7BC28, &qword_53788);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v32 = &v30 - v8;
  v9 = __chkstk_darwin(v7);
  v31 = &v30 - v10;
  __chkstk_darwin(v9);
  v35 = &v30 - v11;
  v40 = sub_3E584(0xD000000000000016, 0x800000000005B840);
  v41 = v12;
  v36 = *a1;
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B33C();
  v13 = v37;
  v14 = v38;
  v15 = v39;
  swift_getKeyPath();
  v37 = v13;
  v38 = v14;
  v39 = v15;
  sub_14628(&qword_7BC58, &qword_537D0);
  sub_4B3DC();

  sub_2A3CC();
  sub_4B39C();
  v40 = sub_3E584(0xD00000000000001CLL, 0x800000000005B860);
  v41 = v16;
  v36 = *v30;
  sub_4B33C();
  v17 = v37;
  v18 = v38;
  v19 = v39;
  swift_getKeyPath();
  v37 = v17;
  v38 = v18;
  v39 = v19;
  sub_4B3DC();

  v20 = v31;
  sub_4B39C();
  v21 = *(v4 + 16);
  v22 = v32;
  v23 = v35;
  v21(v32, v35, v3);
  v24 = v33;
  v25 = v20;
  v21(v33, v20, v3);
  v26 = v34;
  v21(v34, v22, v3);
  v27 = sub_14628(&qword_7BC60, &qword_53828);
  v21(&v26[*(v27 + 48)], v24, v3);
  v28 = *(v4 + 8);
  v28(v25, v3);
  v28(v23, v3);
  v28(v24, v3);
  return (v28)(v22, v3);
}

id sub_37D68()
{
  v0 = objc_opt_self();

  return [v0 setHasShownEditWidgetsNotification:1];
}

uint64_t sub_37DA4()
{
  v15 = *v0;
  v13 = *v0;
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B31C();
  v1 = v14[6];

  v13 = v15;
  v2 = sub_4B31C();
  (*(*v14 + 71))(v2);

  v3 = [objc_allocWithZone(CRCarPlayWidgetDenyList) init];
  v4 = [v3 denyListExtensions];

  v5 = sub_4B74C();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_38FF0(*(v5 + 16), 0);
  v8 = sub_3A0E0(&v13, v7 + 4, v6, v5);
  sub_3AA5C(v13);
  if (v8 != v6)
  {
    __break(1u);
LABEL_4:
  }

  v9 = swift_allocObject();
  v10 = v0[3];
  v9[3] = v0[2];
  v9[4] = v10;
  v9[5] = v0[4];
  v11 = v0[1];
  v9[1] = *v0;
  v9[2] = v11;
  sub_3A5B0(v0, &v13);
  return sub_4A77C();
}

uint64_t sub_37FB4(void *a1)
{
  v2 = sub_14628(&qword_7B9C0, &qword_53418);
  __chkstk_darwin(v2);
  v4 = &v8 - v3;
  sub_380A8(*a1, &v8 - v3);
  LOBYTE(a1) = sub_4AFFC();
  v5 = sub_4AB4C();
  v6 = &v4[*(v2 + 36)];
  *v6 = v5;
  v6[8] = a1;
  sub_3A7D0();
  sub_4B1FC();
  return sub_1E284(v4, &qword_7B9C0, &qword_53418);
}

uint64_t sub_380A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v35 = sub_14628(&qword_7BA20, &qword_53488);
  __chkstk_darwin(v35);
  v36 = &v34 - v5;
  v6 = sub_14628(&qword_7BA10, &qword_53438);
  v7 = __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - v11;
  v13 = (*(&stru_68.size + (swift_isaMask & *a1)))(v10);
  v14 = [v13 intentReference];

  if (v14)
  {
    v15 = [v14 intent];
  }

  result = (*&stru_B8.segname[(swift_isaMask & *a1) + 16])();
  if (result)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    v18 = *v3;
    *(v17 + 40) = v3[1];
    v19 = v3[3];
    *(v17 + 56) = v3[2];
    *(v17 + 72) = v19;
    *(v17 + 88) = v3[4];
    *(v17 + 24) = v18;
    v20 = a1;
    sub_3A5B0(v3, v38);
    nullsub_2();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
    v30 = *(v6 + 52);
    v31 = sub_4A6AC();
    (*(*(v31 - 8) + 16))(&v9[v30], &v20[v29], v31);
    *v9 = v22;
    *(v9 + 1) = v24;
    *(v9 + 2) = v26;
    *(v9 + 3) = v28;
    sub_3C23C(v9, v12, &qword_7BA10, &qword_53438);
    sub_2BC3C(v12, v36, &qword_7BA10, &qword_53438);
    swift_storeEnumTagMultiPayload();
    sub_14628(&qword_7BA28, qword_53490);
    v32 = sub_1D648(&qword_7B9E0, &qword_53428);
    v33 = sub_3A950();
    v38[0] = v32;
    v38[1] = v33;
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BA08, &qword_7BA10, &qword_53438, &protocol conformance descriptor for IDView<A, B>);
    sub_4AE7C();
    return sub_1E284(v12, &qword_7BA10, &qword_53438);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_38454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  v30 = a1;
  v31 = a2;
  v9 = sub_14628(&qword_7BBD8, &unk_54520);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_14628(&qword_7BBE0, &unk_53740);
  __chkstk_darwin(v12 - 8);
  sub_4B8BC();

  sub_4A7FC();

  sub_4A7FC();
  v13 = sub_14628(&qword_7BBE8, &unk_54530);
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v14 = sub_4B8AC();
  v15 = objc_allocWithZone(CHSWidget);
  v16 = sub_4B5EC();
  v17 = [v15 initWithExtensionIdentity:v14 kind:v16 family:1 intent:0 activityIdentifier:0];

  v18 = sub_33FA0();
  if (v18 && (v19 = v18, v34 = *a9, sub_14628(&qword_7B918, &qword_53370), sub_4B31C(), v20 = *(v36 + 48), , v21 = (*(*v19 + 192))(v30, v31, v17, v20, 0, 1), , v20, v21))
  {
    v34 = *a9;
    v22 = v21;
    sub_4B31C();
    v23 = *(v36 + 48);

    v24 = sub_4017C(v22);

    if (v24 && (v25 = (*&stru_B8.segname[(swift_isaMask & *v22) + 16])()) != 0 && (v26 = v25, v27 = [v25 promptsForUserConfiguration], v26, (v27 & 1) != 0))
    {
      v28 = *(a9 + 2);
      v35 = *(a9 + 3);
      v36 = v28;
      *&v34 = v28;
      *(&v34 + 1) = v35;
      v33 = v21;
      v29 = v22;
      sub_2BC3C(&v36, v32, &qword_7B7A0, &qword_531E0);
      sub_2BC3C(&v35, v32, &qword_7BBF0, &qword_53750);
      sub_14628(&qword_7B9A8, &qword_53408);
      sub_4B32C();

      sub_1E284(&v36, &qword_7B7A0, &qword_531E0);
      sub_1E284(&v35, &qword_7BBF0, &qword_53750);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_38870(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_14628(&qword_7B7C0, &qword_531F0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = (*(&stru_68.size + (swift_isaMask & *a2)))(v8);
  v12 = [v11 intentReference];

  if (v12)
  {
    v13 = [v12 intent];

    v14 = [v13 _indexingHash];
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 _indexingHash];
  if (v12)
  {
    v16 = v14 == v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    type metadata accessor for CRWidgetModel(0);
    sub_3CE84(&qword_7B7F8, type metadata accessor for CRWidgetModel, &unk_53E10);
    v17 = a2;
    sub_4B49C();
    sub_4B46C();
    v18 = v22;
    v19 = [objc_allocWithZone(CHSIntentReference) initWithIntent:a1];
    (*&stru_108.sectname[swift_isaMask & *v18])();

    (*(v7 + 8))(v10, v6);
  }

  v22 = *(a3 + 16);
  v21[1] = 0;
  sub_14628(&qword_7B9A8, &qword_53408);
  return sub_4B32C();
}

uint64_t sub_38BE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_4AB0C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  a1[3] = type metadata accessor for $s14CarKitSettings0031CRWidgetSettingsViewswift_yFFIifMX387_0_33_B5659505F23A2A00E14031F4658893577PreviewfMf_15PreviewRegistryfMu_.__P_Previewable_Transform_Wrapper(0);
  a1[4] = sub_3BD6C();
  sub_2B2C0(a1);
  sub_4AAFC();
  (*(v3 + 16))(v6, v8, v2);
  sub_4B30C();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_38D20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4ACFC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRWidgetSettingsModel(0);
  type metadata accessor for CRWidgetTestStore();
  v6 = sub_3E574();
  v7 = sub_19E1C(v6, &off_6FA48);
  v8 = sub_3A428(v7, v15);
  (*(v3 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v2, v8);
  sub_14800();
  sub_4B20C();
  (*(v3 + 8))(v5, v2);
  v16[2] = v15[2];
  v16[3] = v15[3];
  v16[4] = v15[4];
  v16[0] = v15[0];
  v16[1] = v15[1];
  sub_3D308(v16);
  KeyPath = swift_getKeyPath();
  v10 = (a1 + *(sub_14628(&qword_7BEC0, &qword_53B10) + 36));
  v11 = *(sub_14628(&qword_7BED8, &qword_53B18) + 28);
  v12 = enum case for DynamicTypeSize.accessibility5(_:);
  v13 = sub_4AB1C();
  result = (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = KeyPath;
  return result;
}

uint64_t sub_38F14()
{
  v0 = sub_14628(&qword_7BEB8, &qword_53B08);
  __chkstk_darwin(v0 - 8);
  sub_14628(&qword_7BE28, &unk_53A80);
  sub_4B33C();
  sub_14628(&qword_7BEC0, &qword_53B10);
  sub_3D224();
  return sub_4AB3C();
}

void *sub_38FF0(uint64_t a1, uint64_t a2)
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

  sub_14628(&qword_7B6F8, &qword_54180);
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

unint64_t sub_39084()
{
  result = qword_7B808;
  if (!qword_7B808)
  {
    sub_1D648(&qword_7B7E0, &qword_53210);
    sub_3913C();
    sub_2C958(&qword_7B848, &qword_7B850, &qword_53270, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B808);
  }

  return result;
}

unint64_t sub_3913C()
{
  result = qword_7B810;
  if (!qword_7B810)
  {
    sub_1D648(&qword_7B7D8, &qword_53208);
    sub_391F4();
    sub_2C958(&qword_7B488, &qword_7B490, &qword_52C40, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B810);
  }

  return result;
}

unint64_t sub_391F4()
{
  result = qword_7B818;
  if (!qword_7B818)
  {
    sub_1D648(&qword_7B7D0, &qword_53200);
    sub_392AC();
    sub_2C958(&qword_7B418, &qword_7B420, &qword_52C10, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B818);
  }

  return result;
}

unint64_t sub_392AC()
{
  result = qword_7B820;
  if (!qword_7B820)
  {
    sub_1D648(&qword_7B7C8, &qword_531F8);
    sub_2C958(&qword_7B828, &qword_7B830, &qword_53260, &protocol conformance descriptor for HStack<A>);
    sub_2C958(&qword_7B838, &qword_7B840, &qword_53268, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B820);
  }

  return result;
}

uint64_t sub_39398()
{
  v1 = type metadata accessor for CRWidgetStackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_14628(&qword_7B790, &qword_531D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AB1C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = v1[6];
  v9 = sub_14628(&qword_7B798, &qword_531D8);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  v10 = v1[10];
  v11 = sub_14628(&qword_7B868, &qword_53280);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

void sub_39594()
{
  v1 = *(type metadata accessor for CRWidgetStackView(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_311DC(v3, v0 + v2, v4);
}

unint64_t sub_39628()
{
  result = qword_7B880;
  if (!qword_7B880)
  {
    sub_1D648(&qword_7B870, &qword_53288);
    sub_2C958(&qword_7B888, &qword_7B890, &qword_53298, &protocol conformance descriptor for HStack<A>);
    sub_2C958(&qword_7B838, &qword_7B840, &qword_53268, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B880);
  }

  return result;
}

uint64_t sub_39744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_397AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_39814()
{
  type metadata accessor for CRWidgetStackRowView(0);
  sub_14628(&qword_7B8B0, &qword_532B8);
  return sub_4B3CC();
}

uint64_t sub_398B8()
{
  v1 = (type metadata accessor for CRWidgetStackRowView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_14628(&qword_7B898, &qword_532A0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_399F8(void *a1)
{
  type metadata accessor for CRWidgetStackRowView(0);
  v2 = a1;
  sub_14628(&qword_7B8A8, &qword_532B0);
  return sub_4B3CC();
}

uint64_t sub_39AA0(uint64_t a1)
{
  v2 = type metadata accessor for CRWidgetStackView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_39AFC()
{
  result = qword_7B8E0;
  if (!qword_7B8E0)
  {
    sub_1D648(&qword_7B8B8, &qword_532C0);
    sub_39BB4();
    sub_2C958(&qword_7B908, &qword_7B910, &unk_53360, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B8E0);
  }

  return result;
}

unint64_t sub_39BB4()
{
  result = qword_7B8E8;
  if (!qword_7B8E8)
  {
    sub_1D648(&qword_7B8F0, &qword_53350);
    sub_1D648(&qword_7B8F8, &qword_53358);
    sub_4AE9C();
    sub_2C958(&qword_7B900, &qword_7B8F8, &qword_53358, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B8E8);
  }

  return result;
}

uint64_t sub_39CD0(uint64_t *a1)
{
  if (sub_49C9C(2, 26, 0, 0))
  {
    sub_4AF1C();

    return sub_4AB2C();
  }

  else
  {
    sub_4AB8C();
    swift_getWitnessTable();
    sub_4AECC();
    sub_4AB2C();
    sub_4B92C();
    swift_getWitnessTable();
    sub_4AB8C();
    swift_getWitnessTable();
    sub_4AECC();
    return sub_4AB2C();
  }
}

uint64_t sub_39E34(uint64_t *a1)
{
  if (sub_49C9C(2, 26, 0, 0))
  {
    sub_4AF1C();
    sub_4AB2C();
  }

  else
  {
    sub_4AB8C();
    swift_getWitnessTable();
    sub_4AECC();
    sub_4AB2C();
    sub_4B92C();
    swift_getWitnessTable();
    sub_4AB8C();
    swift_getWitnessTable();
    sub_4AECC();
    sub_4AB2C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_3A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_14628(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_2BC3C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

void *sub_3A0E0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v14 = (&dword_0 + 1);
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
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
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

unint64_t sub_3A238(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = sub_4B9AC();
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_4BA5C();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_14628(&qword_7BCC8, &qword_538B8);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

__n128 sub_3A428@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_14628(&qword_7B7A0, &qword_531E0);
  sub_4B30C();
  sub_4B30C();
  sub_4B30C();
  sub_4B30C();
  result = v5;
  a2->n128_u64[0] = a1;
  a2->n128_u64[1] = 0;
  a2[1] = v5;
  a2[2].n128_u8[0] = v5.n128_u8[0];
  a2[2].n128_u64[1] = v5.n128_u64[1];
  a2[3].n128_u8[0] = v5.n128_u8[0];
  a2[3].n128_u64[1] = v5.n128_u64[1];
  a2[4] = v5;
  return result;
}

uint64_t sub_3A51C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DB38;

  return sub_358A0(v0 + 16);
}

uint64_t sub_3A5F0@<X0>(uint64_t a1@<X8>)
{
  sub_37DA4();
  v2 = sub_4AFFC();
  v3 = sub_4AB4C();
  result = sub_14628(&qword_7B978, &qword_533F8);
  v5 = a1 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = v2;
  return result;
}

unint64_t sub_3A654()
{
  result = qword_7B980;
  if (!qword_7B980)
  {
    sub_1D648(&qword_7B950, &qword_533D0);
    sub_2C958(&qword_7B988, &qword_7B990, &qword_53400, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B980);
  }

  return result;
}

unint64_t sub_3A70C()
{
  result = qword_7B998;
  if (!qword_7B998)
  {
    sub_1D648(&qword_7B978, &qword_533F8);
    sub_3CE84(&qword_7B9A0, &type metadata accessor for WidgetGallery, &protocol conformance descriptor for WidgetGallery);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B998);
  }

  return result;
}

unint64_t sub_3A7D0()
{
  result = qword_7B9C8;
  if (!qword_7B9C8)
  {
    sub_1D648(&qword_7B9C0, &qword_53418);
    sub_3A85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B9C8);
  }

  return result;
}

unint64_t sub_3A85C()
{
  result = qword_7B9D0;
  if (!qword_7B9D0)
  {
    sub_1D648(&qword_7B9D8, &qword_53420);
    sub_1D648(&qword_7B9E0, &qword_53428);
    sub_3A950();
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BA08, &qword_7BA10, &qword_53438, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B9D0);
  }

  return result;
}

unint64_t sub_3A950()
{
  result = qword_7B9E8;
  if (!qword_7B9E8)
  {
    sub_1D648(&qword_7B9E0, &qword_53428);
    sub_3AA08();
    sub_2C958(&qword_7B9F8, &qword_7BA00, &qword_53430, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B9E8);
  }

  return result;
}

unint64_t sub_3AA08()
{
  result = qword_7B9F0;
  if (!qword_7B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B9F0);
  }

  return result;
}

uint64_t sub_3AA8C()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_3AB70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_14628(&qword_7BA30, qword_535D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_14628(&qword_7B798, &qword_531D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_14628(&qword_7B868, &qword_53280);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_3AD1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_14628(&qword_7BA30, qword_535D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_14628(&qword_7B798, &qword_531D8);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = sub_14628(&qword_7B868, &qword_53280);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_3AEB4(uint64_t a1)
{
  sub_3D1A4(319, &qword_7BA90, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_3D1A4(319, &qword_7BA98, type metadata accessor for CRWidgetSettingsModel, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_3D1A4(319, &qword_7BAA0, type metadata accessor for CRWidgetStackModel, &type metadata accessor for Bindable);
      if (v3 <= 0x3F)
      {
        sub_3B044();
        if (v4 <= 0x3F)
        {
          sub_3B3CC(319, &qword_7BAB0, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_3B094(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_3B044()
{
  result = qword_7BAA8;
  if (!qword_7BAA8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_7BAA8);
  }

  return result;
}

void sub_3B094(uint64_t a1)
{
  if (!qword_7BAB8)
  {
    sub_2D778();
    v1 = sub_4AAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_7BAB8);
    }
  }
}

uint64_t sub_3B104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14628(&qword_7B898, &qword_532A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_3B1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_14628(&qword_7B898, &qword_532A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_3B2AC(uint64_t a1)
{
  sub_3D1A4(319, &qword_7BB58, type metadata accessor for CRWidgetStackRowModel, &type metadata accessor for Bindable);
  if (v1 <= 0x3F)
  {
    sub_3B438(319, &qword_7BB60, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_3B3CC(319, &qword_7BB68, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_3B438(319, &unk_7BB70, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_3B3CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D648(&qword_7B7A0, &qword_531E0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_3B438(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_4B40C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_3B484(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_3B4A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_3B4E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3B560()
{
  result = qword_7BBA8;
  if (!qword_7BBA8)
  {
    sub_1D648(&qword_7BBB0, &qword_53728);
    sub_2C958(&qword_7B7B8, &qword_7B7B0, &qword_531E8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BBA8);
  }

  return result;
}

uint64_t sub_3B61C()
{
  sub_1D648(&qword_7B7F0, &qword_53220);
  sub_1D648(&qword_7B7E8, &qword_53218);
  sub_1D648(&qword_7B858, &qword_53278);
  sub_1D648(&qword_7B7E0, &qword_53210);
  sub_39084();
  swift_getOpaqueTypeConformance2();
  sub_2C958(&qword_7B860, &qword_7B858, &qword_53278, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3B758()
{
  sub_1D648(&qword_7B870, &qword_53288);
  sub_39628();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_3B804()
{
  result = qword_7BBC8;
  if (!qword_7BBC8)
  {
    sub_1D648(&qword_7B948, &qword_533C8);
    sub_1D648(&qword_7B930, &qword_53388);
    sub_1D648(&qword_7B3E8, &unk_52BF0);
    sub_1D648(&qword_7B928, &qword_53380);
    sub_2C958(&qword_7B940, &qword_7B928, &qword_53380, &protocol conformance descriptor for ZStack<A>);
    sub_2A3CC();
    swift_getOpaqueTypeConformance2();
    sub_1D648(&qword_7B3F0, &unk_533A0);
    sub_1D648(&qword_7B3F8, &unk_52C00);
    sub_2A2E8();
    sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_3CE84(&qword_7B3C0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BBC8);
  }

  return result;
}

unint64_t sub_3BA54()
{
  result = qword_7BBD0;
  if (!qword_7BBD0)
  {
    sub_1D648(&qword_7BA18, &unk_53470);
    sub_1D648(&qword_7B960, &qword_533E0);
    type metadata accessor for CRWidgetSettingsModel(255);
    sub_1D648(&qword_7B958, &qword_533D8);
    type metadata accessor for CRWidgetModel(255);
    sub_1D648(&qword_7B9B0, &qword_53410);
    sub_1D648(&qword_7B950, &qword_533D0);
    sub_1D648(&qword_7B978, &qword_533F8);
    sub_3A654();
    sub_3A70C();
    swift_getOpaqueTypeConformance2();
    sub_3CE84(&qword_7B9B8, type metadata accessor for CRWidgetModel, &unk_53DD8);
    sub_1D648(&qword_7B9C0, &qword_53418);
    sub_3A7D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_3CE84(&qword_7ACD0, type metadata accessor for CRWidgetSettingsModel, &unk_52788);
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7B3D8, &qword_7B378, &unk_52BD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BBD0);
  }

  return result;
}

unint64_t sub_3BD6C()
{
  result = qword_7CF50[0];
  if (!qword_7CF50[0])
  {
    type metadata accessor for $s14CarKitSettings0031CRWidgetSettingsViewswift_yFFIifMX387_0_33_B5659505F23A2A00E14031F4658893577PreviewfMf_15PreviewRegistryfMu_.__P_Previewable_Transform_Wrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_7CF50);
  }

  return result;
}

uint64_t sub_3BDC4()
{
  sub_3E584(0xD000000000000019, 0x800000000005B880);
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B33C();
  swift_getKeyPath();
  sub_14628(&qword_7BC58, &qword_537D0);
  sub_4B3DC();

  sub_2A3CC();
  return sub_4B39C();
}

uint64_t sub_3BEF0()
{
  sub_3E584(0xD000000000000018, 0x800000000005B820);
  sub_14628(&qword_7B918, &qword_53370);
  sub_4B33C();
  swift_getKeyPath();
  sub_14628(&qword_7BC58, &qword_537D0);
  sub_4B3DC();

  sub_2A3CC();
  return sub_4B39C();
}

uint64_t sub_3C074()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_3C0DC()
{
  sub_14628(&qword_7B918, &qword_53370);
  v0 = sub_4B31C();
  (*(*v2 + 592))(v0);
}

unint64_t sub_3C174()
{
  result = qword_7BCA0;
  if (!qword_7BCA0)
  {
    sub_1D648(&qword_7BC98, &qword_53880);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BCA0);
  }

  return result;
}

uint64_t sub_3C23C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_14628(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_3C2A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CRWidgetStackRowView(0);

  sub_33A20(a1, a2);
}

uint64_t sub_3C2EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_3C354()
{
  result = qword_7BCE0;
  if (!qword_7BCE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7BCE0);
  }

  return result;
}

unint64_t sub_3C3A0()
{
  result = qword_7BD10;
  if (!qword_7BD10)
  {
    sub_1D648(&qword_7BD08, &qword_53998);
    sub_3C42C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD10);
  }

  return result;
}

unint64_t sub_3C42C()
{
  result = qword_7BD18;
  if (!qword_7BD18)
  {
    sub_1D648(&qword_7BD20, &qword_539A0);
    sub_3C4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD18);
  }

  return result;
}

unint64_t sub_3C4B8()
{
  result = qword_7BD28;
  if (!qword_7BD28)
  {
    sub_1D648(&qword_7BD30, &qword_539A8);
    sub_2C958(&qword_7BD38, &qword_7BD40, &qword_539B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD28);
  }

  return result;
}

uint64_t sub_3C570()
{
  v1 = type metadata accessor for CRWidgetStackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_14628(&qword_7B790, &qword_531D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AB1C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = v1[6];
  v9 = sub_14628(&qword_7B798, &qword_531D8);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  v10 = v1[10];
  v11 = sub_14628(&qword_7B868, &qword_53280);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

void sub_3C76C()
{
  v1 = *(type metadata accessor for CRWidgetStackView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_3102C(v0 + v2, v3);
}

unint64_t sub_3C7F8()
{
  result = qword_7BD70;
  if (!qword_7BD70)
  {
    sub_1D648(&qword_7BD60, &qword_539D0);
    sub_3C8B0();
    sub_2C958(&qword_7B418, &qword_7B420, &qword_52C10, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD70);
  }

  return result;
}

unint64_t sub_3C8B0()
{
  result = qword_7BD78;
  if (!qword_7BD78)
  {
    sub_1D648(&qword_7BD80, &qword_539E0);
    sub_1D648(&qword_7BD58, &qword_539C8);
    sub_4AEBC();
    sub_2C958(&qword_7BD88, &qword_7BD58, &qword_539C8, &protocol conformance descriptor for Button<A>);
    sub_3CE84(&qword_7BD90, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BD98, &qword_7BDA0, &qword_539E8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BD78);
  }

  return result;
}

uint64_t sub_3CA28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3CA98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_3CB14()
{
  result = qword_7BDD0;
  if (!qword_7BDD0)
  {
    sub_1D648(&qword_7BDC8, &qword_53A10);
    sub_1D648(&qword_7BD08, &qword_53998);
    sub_3C3A0();
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BDD8, &qword_7BDE0, &qword_53A18, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BDD0);
  }

  return result;
}

uint64_t sub_3CC08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2BCA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_3CC4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2BCB4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_3CC94()
{
  v1 = type metadata accessor for CRWidgetStackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_14628(&qword_7B790, &qword_531D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_4AB1C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[6];
  v8 = sub_14628(&qword_7B798, &qword_531D8);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v1[10];
  v10 = sub_14628(&qword_7B868, &qword_53280);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3CE84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3CF14()
{
  v1 = *(type metadata accessor for CRWidgetStackView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_31CE4(v2);
}

uint64_t sub_3D000(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7BE28, &unk_53A80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_3D08C(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7BE28, &unk_53A80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_3D108(uint64_t a1)
{
  sub_3D1A4(319, &unk_7BE88, &type metadata accessor for NavigationPath, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_3D1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_3D224()
{
  result = qword_7BEC8;
  if (!qword_7BEC8)
  {
    sub_1D648(&qword_7BEC0, &qword_53B10);
    sub_14800();
    swift_getOpaqueTypeConformance2();
    sub_2C958(&qword_7BED0, &qword_7BED8, &qword_53B18, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BEC8);
  }

  return result;
}

id sub_3D3DC()
{
  v1 = v0 + OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = v3;

  return v2;
}

void sub_3D450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

id sub_3D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_3D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView];
  *v5 = a1;
  *(v5 + 1) = a2;
  *(v5 + 2) = a3;
  *(v5 + 3) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for CRWidgetConfigurationView.Coordinator();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_3D618(uint64_t a1, uint64_t a2)
{
  v4 = (*(&stru_20.maxprot + (swift_isaMask & *v2)))(a1);
  v6 = v5;

  v6(a2);
}

id sub_3D7D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRWidgetConfigurationView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_3D8BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = sub_3DC64(a2, a3);
  v4 = [objc_allocWithZone(WFWidgetConfigurationViewController) initWithOptions:v3];

  sub_14628(&qword_7BEF8, &qword_53B60);
  sub_4AFCC();
  [v4 setDelegate:v6];

  return v4;
}

id sub_3D960(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRWidgetConfigurationView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v14.receiver = v9;
  v14.super_class = v8;
  v11 = a1;
  v12 = a2;

  return objc_msgSendSuper2(&v14, "init");
}

id sub_3D9EC()
{
  v1 = sub_3DC64(*v0, *(v0 + 8));
  v2 = [objc_allocWithZone(WFWidgetConfigurationViewController) initWithOptions:v1];

  sub_14628(&qword_7BEF8, &qword_53B60);
  sub_4AFCC();
  [v2 setDelegate:v4];

  return v2;
}

void *sub_3DA94@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v5 = type metadata accessor for CRWidgetConfigurationView.Coordinator();
  v11 = *(v1 + 8);
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator_widgetConfigurationView];
  *v7 = v3;
  *(v7 + 8) = v11;
  *(v7 + 3) = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v8 = v3;
  v9 = v11;

  result = objc_msgSendSuper2(&v12, "init");
  *a1 = result;
  return result;
}

uint64_t sub_3DB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3DE70();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_3DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3DE70();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_3DC3C(uint64_t a1)
{
  sub_3DE70();
  sub_4AFAC();
  __break(1u);
}

id sub_3DC64(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(WFWidgetConfigurationOptions) init];
  v5 = [a2 displayName];
  [v4 setWidgetDisplayName:v5];

  v6 = [a2 widgetDescription];
  [v4 setWidgetDescription:v6];

  [v4 setWidgetConfigurationType:0];
  [v4 setFamily:1];
  [v4 setIntent:a1];
  [v4 setWidgetConfigurationStyle:2];
  return v4;
}

unint64_t sub_3DD6C()
{
  result = qword_7BF00;
  if (!qword_7BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BF00);
  }

  return result;
}

__n128 sub_3DDCC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3DDD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_3DE20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3DE70()
{
  result = qword_7BF90;
  if (!qword_7BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7BF90);
  }

  return result;
}

uint64_t sub_3DEC4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  v11 = sub_4A7BC();

  return WrapViewController.init(_:updater:)(sub_3DFCC, v10, sub_3E3A4, 0, v11);
}

uint64_t sub_3DF84()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_3DFCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_3C354();
  v3 = sub_4B82C();
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [v3 _effectiveCornerRadius];
  v8 = (*(&stru_68.size + (swift_isaMask & *v1)))(v7);
  v9 = [objc_allocWithZone(CHUISWidgetHostViewController) initWithWidget:v8 metrics:v3 widgetConfigurationIdentifier:0];

  [v9 setInteractionDisabled:1];
  [v9 setContentType:1];
  [v9 setColorScheme:2];
  v10 = [objc_allocWithZone(CHSWidgetRenderScheme) initWithRenderingMode:0 backgroundViewPolicy:1];
  [v9 setRenderScheme:v10];

  [v9 setVisibility:2];
  [v9 setShowsWidgetLabel:0];
  [v9 setPresentationMode:2];
  [v9 setVisibleEntryShouldSnapshot:1];
  v11 = v9;
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  [v3 _effectiveSizePixelAlignedForDisplayScale:v6];
  [v13 setFrame:{0.0, 0.0, v14, v15}];

  v16 = [v11 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 layer];

  [v18 setCornerCurve:kCACornerCurveContinuous];
  v19 = [v11 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  v21 = [v19 layer];

  [v3 _effectiveCornerRadius];
  [v21 setCornerRadius:?];

  v22 = [v11 view];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v22;
  v24 = [v22 layer];

  [v24 setAllowsHitTesting:0];
  v25 = [v11 view];

  if (!v25)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v25 setAutoresizingMask:18];

  if (v2)
  {
    v2(v11);
  }

  v26 = objc_allocWithZone(sub_4A7BC());
  sub_4A7AC();
}

void sub_3E3A4(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 superview];

  if (!v4)
  {
    return;
  }

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a1 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 setFrame:{v6, v8, v10, v12}];
}

__n128 sub_3E4B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3E4C4(uint64_t a1, int a2)
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

uint64_t sub_3E4E4(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_7C000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_7C000);
    }
  }
}

uint64_t sub_3E584(uint64_t a1, void *a2)
{
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._countAndFlagsBits = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v7 = sub_4A5FC(v10, v11, v6, v12, 0, v9);

  return v7;
}

unint64_t sub_3E664(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

Swift::Int sub_3E690()
{
  v1 = *v0;
  sub_4BACC();
  sub_4BADC(v1);
  return sub_4BAEC();
}

Swift::Int sub_3E704(uint64_t a1)
{
  v2 = *v1;
  sub_4BACC();
  sub_4BADC(v2);
  return sub_4BAEC();
}

unint64_t *sub_3E748@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_3E76C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
  v4 = sub_4A6AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_3E844()
{
  swift_getKeyPath();
  (*&stru_108.segname[(swift_isaMask & *v0) - 8])();

  v1 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_3E8EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(&stru_68.size + (swift_isaMask & **a1)))();
  *a2 = result;
  return result;
}

void sub_3E9AC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_3EAF8();
  v6 = v5;
  v7 = sub_4B8FC();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11 = v2;
    v12 = a1;
    (*&stru_108.segname[swift_isaMask & *v2])(v10, sub_3EB44);
  }
}

unint64_t sub_3EAF8()
{
  result = qword_7C0A0;
  if (!qword_7C0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7C0A0);
  }

  return result;
}

void sub_3EB44()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

uint64_t (*sub_3EBB0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*&stru_108.segname[(swift_isaMask & *v1) - 8])(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_40324(&qword_7B7F8, type metadata accessor for CRWidgetModel, &unk_53E10);
  sub_4A70C();

  v4[7] = sub_3E7E4(v4);
  return sub_3ED10;
}

uint64_t type metadata accessor for CRWidgetModel(uint64_t a1)
{
  result = qword_7D3E0;
  if (!qword_7D3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3EDC8()
{
  swift_getKeyPath();
  (*&stru_108.segname[(swift_isaMask & *v0) - 8])();

  v1 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_3EE60@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_B8.segname[(swift_isaMask & **a1) - 8])();
  *a2 = result;
  return result;
}

uint64_t sub_3EF14(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    v7 = v1;
    v8 = a1;
    (*&stru_108.segname[swift_isaMask & *v1])(v6, sub_3F028);
  }

  return result;
}

uint64_t sub_3F028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t (*sub_3F084(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*&stru_108.segname[(swift_isaMask & *v1) - 8])(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_40324(&qword_7B7F8, type metadata accessor for CRWidgetModel, &unk_53E10);
  sub_4A70C();

  v4[7] = sub_3ED68(v4);
  return sub_3F1E4;
}

void *sub_3F1F0()
{
  v1 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_3F23C(void *a1)
{
  v3 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    v6 = [v5 intentType];
    if (v6)
    {

      v7 = (*(&stru_68.size + (swift_isaMask & *v1)))();
      v8 = [v7 intentReference];

      if (v8)
      {
LABEL_6:

        v5 = v8;
        goto LABEL_7;
      }

      v9 = [v5 defaultIntentReference];
      if (v9)
      {
        v10 = *&stru_108.sectname[swift_isaMask & *v1];
        v11 = v9;
        v8 = v9;
        v10(v11);

        v5 = v8;
        goto LABEL_6;
      }
    }

LABEL_7:
  }
}

uint64_t (*sub_3F394(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_3F41C;
}

void sub_3F41C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      v6 = [v5 intentType];
      if (v6)
      {
        v7 = v3[3];

        v8 = (*(&stru_68.size + (swift_isaMask & *v7)))();
        v9 = [v8 intentReference];

        if (v9)
        {
LABEL_7:

          v5 = v9;
          goto LABEL_8;
        }

        v10 = [v5 defaultIntentReference];
        if (v10)
        {
          v11 = *&stru_108.sectname[swift_isaMask & *v3[3]];
          v12 = v10;
          v9 = v10;
          v11(v12);

          v5 = v9;
          goto LABEL_7;
        }
      }

LABEL_8:
    }
  }

  free(v3);
}

uint64_t sub_3F580()
{
  v1 = (*(&stru_68.size + (swift_isaMask & *v0)))();
  v2 = [v1 extensionIdentity];

  swift_beginAccess();
  sub_14628(&qword_7BBE0, &unk_53740);
  v3 = sub_4A80C();
  v5 = v4;
  swift_endAccess();

  v6 = objc_allocWithZone(LSApplicationExtensionRecord);
  v8 = sub_4020C(v3, v5);
  v9 = [v8 containingBundleRecord];

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 localizedName];
  v11 = sub_4B5FC();

  return v11;
}

void *sub_3F6E8()
{
  if ((*&stru_B8.segname[(swift_isaMask & *v0) - 8])() == 1)
  {
    return sub_3E584(0xD000000000000011, 0x800000000005BA50);
  }

  result = (*&stru_B8.segname[(swift_isaMask & *v0) + 16])();
  if (result)
  {
    v2 = result;
    v3 = [result displayName];

    if (v3)
    {
      v4 = sub_4B5FC();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_3F7E8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor] = 0;
  sub_4A71C();
  v8 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
  v9 = sub_4A6AC();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  *&v7[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget] = a2;
  v7[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

id sub_3F900(uint64_t a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_descriptor] = 0;
  sub_4A71C();
  v7 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
  v8 = sub_4A6AC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  *&v3[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__chsWidget] = a2;
  v3[OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel__suggestionSource] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for CRWidgetModel(0);
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t sub_3FA14(uint64_t a1)
{
  v3 = *(&stru_68.size + (swift_isaMask & *v1));
  v4 = v3();
  v5 = [v4 extensionIdentity];

  v6 = v3();
  v7 = [v6 kind];

  if (!v7)
  {
    sub_4B5FC();
    v7 = sub_4B5EC();
  }

  v9 = (v3)(v8);
  v10 = [v9 family];

  v11 = v3();
  v12 = [v11 activityIdentifier];

  if (v12)
  {
    sub_4B5FC();

    v12 = sub_4B5EC();
  }

  v13 = [objc_allocWithZone(CHSWidget) initWithExtensionIdentity:v5 kind:v7 family:v10 intentReference:a1 activityIdentifier:v12];

  v14 = *(&stru_68.offset + (swift_isaMask & *v1));

  return v14(v13);
}

id sub_3FD8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRWidgetModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3FE90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14CarKitSettings13CRWidgetModel_id;
  v5 = sub_4A6AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_3FF0C(void *a1)
{
  v3 = sub_4A6AC();
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 id];
  sub_4A68C();

  v7 = [a1 chsWidget];
  v8 = [a1 suggestionSource];
  if (v8 == &dword_0 + 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 == &dword_0 + 1;
  }

  v10 = (*(v1 + 256))(v5, v7, v9);

  return v10;
}

id sub_4000C(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_4A66C().super.isa;
  v4 = (*(&stru_68.size + (swift_isaMask & *a1)))();
  v5 = [v2 initWithID:isa chsWidget:v4 suggestionSource:(*&stru_B8.segname[(swift_isaMask & *a1) - 8])()];

  return v5;
}

id sub_400F8(void *a1)
{
  v2 = v1;
  v3 = (*(&stru_68.size + (swift_isaMask & *a1)))();
  v4 = [v2 widgetDescriptorForWidget:v3];

  return v4;
}

BOOL sub_4017C(void *a1)
{
  v1 = (*&stru_B8.segname[(swift_isaMask & *a1) + 16])();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 intentType];
  v4 = v3 != 0;
  if (v3)
  {
  }

  return v4;
}

id sub_4020C(uint64_t a1, uint64_t a2)
{
  v3 = sub_4B5EC();

  v8 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_4A60C();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_40324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_40374(uint64_t a1)
{
  result = sub_4A6AC();
  if (v2 <= 0x3F)
  {
    result = sub_4A72C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRWidgetModel.SuggestionSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CRWidgetModel.SuggestionSource(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t CARSpinnerHeaderView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CARSpinnerHeaderView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title];
  swift_beginAccess();
  result = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7)
  {
    if (a2)
    {
      v8 = result == a1 && v7 == a2;
      if (v8 || (sub_4BA8C() & 1) != 0)
      {
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  [v2 setNeedsUpdateConfiguration];
}

void (*CARSpinnerHeaderView.title.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_40880;
}

void sub_40880(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    CARSpinnerHeaderView.title.setter(v3, v4);
  }

  else
  {
    v5 = (*(v2 + 40) + *(v2 + 48));
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v4;
    if (v7)
    {
      if (v4)
      {
        v8 = v6 == v3 && v7 == v4;
        if (v8 || (sub_4BA8C() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v4)
    {
      goto LABEL_14;
    }

    [*(v2 + 40) setNeedsUpdateConfiguration];
  }

LABEL_13:

LABEL_14:

  free(v2);
}

uint64_t CARSpinnerHeaderView.isSpinning.getter()
{
  v1 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning;
  swift_beginAccess();
  return *(v0 + v1);
}

id CARSpinnerHeaderView.isSpinning.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

void (*CARSpinnerHeaderView.isSpinning.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_40B48;
}

void sub_40B48(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

uint64_t CARSpinnerHeaderView.updateConfiguration(using:)()
{
  v1 = v0;
  v2 = sub_14628(&qword_7C0E0, &qword_53EA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_14628(&qword_7C0E8, &qword_53EA8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v15[-v10];
  v16 = v1;
  sub_14628(&qword_7C0F0, &qword_53EB0);
  sub_2C958(&qword_7C0F8, &qword_7C0F0, &qword_53EB0, &protocol conformance descriptor for HStack<A>);
  sub_4AF0C();
  sub_4AFEC();
  sub_4AEFC();
  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_4B02C();
  v17[3] = v5;
  v17[4] = sub_2C958(&qword_7C100, &qword_7C0E8, &qword_53EA8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_2B2C0(v17);
  sub_4AEFC();
  v12(v11, v5);
  sub_4B7BC();
  sub_4A9CC();
  v13 = sub_4A9DC();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  return sub_4B7CC();
}

id sub_40E4C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_4AD0C();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v5 = sub_14628(&qword_7C130, &unk_53EE8);
  return sub_40EA4(v4, (a2 + *(v5 + 44)));
}

id sub_40EA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = sub_4AF3C();
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14628(&qword_7BC80, &qword_53870);
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v8 = &v63 - v7;
  v75 = sub_14628(&qword_7C138, &qword_53EF8);
  v9 = *(v75 - 8);
  __chkstk_darwin(v75);
  v70 = &v63 - v10;
  v11 = sub_14628(&qword_7C140, &qword_53F00);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v63 - v16;
  v18 = (*(&stru_20.nsects + (swift_isaMask & *a1)))(v15);
  v20 = v19;
  if (v19)
  {
    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v63 = v8;
      v64 = v5;
      v65 = v3;
      v66 = v9;
      v72 = v17;
      v67 = v14;
      v76 = v18;
      v77 = v19;
      sub_2A3CC();

      v22 = sub_4B0FC();
      v24 = v23;
      v26 = v25;
      sub_4B08C();
      v27 = sub_4B0DC();
      v29 = v28;
      v31 = v30;
      v73 = v32;

      sub_2BCB4(v22, v24, v26 & 1);

      sub_4B06C();
      v33 = sub_4B0AC();
      v35 = v34;
      v37 = v36;
      sub_2BCB4(v27, v29, v31 & 1);

      result = [objc_opt_self() _defaultTextColorForTableViewStyle:1 isSectionHeader:1];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v76 = sub_4B25C();
      v39 = sub_4B0CC();
      v41 = v40;
      v43 = v42;
      v20 = v44;
      v45 = v33;
      v46 = v39;
      sub_2BCB4(v45, v35, v37 & 1);

      v47 = v43 & 1;
      v73 = v41;
      sub_2BCA4(v46, v41, v43 & 1);

      v9 = v66;
      v14 = v67;
      v17 = v72;
      v5 = v64;
      v3 = v65;
      v8 = v63;
    }

    else
    {

      v46 = 0;
      v73 = 0;
      v47 = 0;
      v20 = 0;
    }
  }

  else
  {
    v46 = 0;
    v73 = 0;
    v47 = 0;
  }

  if ((*&stru_68.segname[swift_isaMask & *a1])(v18))
  {
    sub_4AA7C();
    sub_4AF2C();
    sub_2C958(&qword_7BC88, &qword_7BC80, &qword_53870, &protocol conformance descriptor for ProgressView<A, B>);
    v72 = v17;
    sub_41A94();
    v48 = v8;
    v49 = v70;
    v67 = v46;
    v50 = v69;
    sub_4B14C();
    (*(v71 + 8))(v5, v3);
    (*(v68 + 8))(v48, v50);
    v51 = sub_4AEEC();
    *(v49 + *(sub_14628(&qword_7C158, &qword_53F10) + 36)) = v51;
    v52 = (v49 + *(v75 + 36));
    v53 = v9;
    v54 = *(sub_14628(&qword_7C160, &qword_53F18) + 28);
    v55 = enum case for ControlSize.regular(_:);
    v56 = sub_4AA4C();
    v57 = v52 + v54;
    v9 = v53;
    v46 = v67;
    v58 = v55;
    v17 = v72;
    (*(*(v56 - 8) + 104))(v57, v58, v56);
    *v52 = swift_getKeyPath();
    sub_41BD8(v49, v17);
    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  (*(v9 + 56))(v17, v59, 1, v75);
  sub_419BC(v17, v14);
  v61 = v73;
  v60 = v74;
  *v74 = v46;
  v60[1] = v61;
  v60[2] = v47;
  v60[3] = v20;
  v62 = sub_14628(&qword_7C148, &qword_53F08);
  sub_419BC(v14, v60 + *(v62 + 48));
  sub_3CC08(v46, v61, v47, v20);
  sub_3CC4C(v46, v61, v47, v20);
  sub_41A2C(v17);
  sub_41A2C(v14);
  return sub_3CC4C(v46, v61, v47, v20);
}

id CARSpinnerHeaderView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_4B5EC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithReuseIdentifier:v3];

  return v4;
}

id CARSpinnerHeaderView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title];
  *v3 = 0;
  v3[1] = 0;
  v2[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning] = 0;
  if (a2)
  {
    v4 = sub_4B5EC();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v2;
  v7.super_class = type metadata accessor for CARSpinnerHeaderView();
  v5 = objc_msgSendSuper2(&v7, "initWithReuseIdentifier:", v4);

  return v5;
}

id CRSettingsHeaderCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id CARSpinnerHeaderView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CARSpinnerHeaderView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id CARSpinnerHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARSpinnerHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_419BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7C140, &qword_53F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_41A2C(uint64_t a1)
{
  v2 = sub_14628(&qword_7C140, &qword_53F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_41A94()
{
  result = qword_7C150;
  if (!qword_7C150)
  {
    sub_4AF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C150);
  }

  return result;
}

uint64_t sub_41B10(uint64_t a1)
{
  v2 = sub_4AA4C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_4ABDC();
}

uint64_t sub_41BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7C138, &qword_53EF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_41C84(uint64_t a1, unsigned __int8 a2)
{
  sub_4BACC();
  sub_4BADC(a2);
  sub_4B90C();
  return sub_4BAEC();
}

Swift::Int sub_41CE4()
{
  v1 = *(v0 + 8);
  sub_4BACC();
  sub_4BADC(v1);
  sub_4B90C();
  return sub_4BAEC();
}

Swift::Int sub_41D88(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_4BACC();
  sub_4BADC(v2);
  sub_4B90C();
  return sub_4BAEC();
}

id sub_41DFC()
{
  v0 = objc_allocWithZone(CRPairedVehicleManager);

  return [v0 init];
}

uint64_t sub_41E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_14628(&qword_7C168, &qword_53F70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  *(swift_allocObject() + 16) = a1;
  v7 = a1;
  sub_14628(&qword_7C170, &qword_53F78);
  v8 = sub_4A83C();
  v9 = sub_1D648(&qword_7C178, &qword_53F80);
  v10 = sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v11 = sub_14854();
  v12 = sub_445AC();
  v15[2] = v8;
  v15[3] = &type metadata for Route;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  swift_getOpaqueTypeConformance2();
  sub_4B59C();
  *(swift_allocObject() + 16) = v7;
  sub_44858();
  v13 = v7;
  sub_4B55C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_42070(void *a1)
{
  v2 = sub_4B8DC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_4A86C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_4A83C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B8CC();
  sub_4A84C();
  sub_4A82C();
  *(swift_allocObject() + 16) = a1;
  v8 = a1;
  sub_14628(&qword_7C178, &qword_53F80);
  sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_14854();
  sub_445AC();
  sub_4B1EC();

  return (*(v5 + 8))(v7, v4);
}

void sub_422DC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v51 = a3;
  v4 = sub_4A86C();
  __chkstk_darwin(v4 - 8);
  v48 = sub_4A83C();
  v44 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_14628(&qword_7C270, &qword_54188);
  __chkstk_darwin(v49);
  v8 = (&v44 - v7);
  v46 = sub_14628(&qword_7C278, &qword_54190);
  __chkstk_darwin(v46);
  v10 = &v44 - v9;
  v50 = sub_14628(&qword_7C198, &qword_53F88);
  __chkstk_darwin(v50);
  v47 = &v44 - v11;
  v12 = sub_4A6AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRHomeScreenLayoutView(0);
  __chkstk_darwin(v16);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  if (!*(a1 + 8))
  {
    v26 = [*a1 identifier];
    if (v26)
    {
      v27 = v26;
      sub_4A68C();

      sub_4A65C();
      (*(v13 + 8))(v15, v12);
      v28 = [v19 certificateSerialNumber];
      if (v28)
      {
        v29 = v28;
        v30 = sub_4A64C();
        v32 = v31;

        v33 = objc_allocWithZone(CRHomeScreenPersistenceManager);
        v34 = sub_4B5EC();

        isa = sub_4A63C().super.isa;
        v36 = [v33 initWithVehicleId:v34 certificateSerial:isa];

        sub_1475C(v30, v32);
        sub_288FC(v36, v18);
        sub_24718(v18, v10);
        swift_storeEnumTagMultiPayload();
        sub_44E10(&qword_7AC30, type metadata accessor for CRHomeScreenLayoutView, &unk_52C68);
        sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
        v37 = v47;
        sub_4AE7C();
        sub_44EC4(v37, v8);
        swift_storeEnumTagMultiPayload();
        sub_14628(&qword_7C1A8, &qword_53F90);
        sub_44638();
        sub_44724();
        sub_4AE7C();
        sub_1E284(v37, &qword_7C198, &qword_53F88);
        sub_44F34(v18);
        return;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (*(a1 + 8) == 1)
  {
    v20 = objc_opt_self();
    v21 = [objc_allocWithZone(CRFeatureAvailability) init];
    v22 = [v20 specifierForStoredVehicle:v19 vehicleManager:v45 featureAvailability:v21];

    if (v22)
    {
      sub_4A85C();
      sub_4A82C();
      v23 = v44;
      v24 = v48;
      (*(v44 + 16))(v10, v6, v48);
      swift_storeEnumTagMultiPayload();
      sub_44E10(&qword_7AC30, type metadata accessor for CRHomeScreenLayoutView, &unk_52C68);
      sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
      v25 = v47;
      sub_4AE7C();
      sub_44EC4(v25, v8);
      swift_storeEnumTagMultiPayload();
      sub_14628(&qword_7C1A8, &qword_53F90);
      sub_44638();
      sub_44724();
      sub_4AE7C();
      sub_1E284(v25, &qword_7C198, &qword_53F88);
      (*(v23 + 8))(v6, v24);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v38 = sub_44B94(*a1);
  if (v38)
  {
    sub_34154(v52, v38);
    v39 = v52[0];
    v40 = v52[1];
    v41 = v52[2];
    v42 = v52[3];
    v43 = v52[4];
  }

  else
  {
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
  }

  *v8 = v39;
  v8[1] = v40;
  v8[2] = v41;
  v8[3] = v42;
  v8[4] = v43;
  swift_storeEnumTagMultiPayload();
  sub_14628(&qword_7C1A8, &qword_53F90);
  sub_44638();
  sub_44724();
  sub_4AE7C();
}

uint64_t sub_42A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = sub_4AB0C();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_4A93C();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = sub_4A62C();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  sub_4B6FC();
  v3[31] = sub_4B6EC();
  v8 = sub_4B6DC();

  return _swift_task_switch(sub_42C18, v8, v7);
}

uint64_t sub_42C18()
{
  v90 = v0;
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[22];

  sub_4B57C();
  v78 = sub_49558();
  v79 = *(v6 + 16);
  v79(v5);
  v76 = *(v4 + 16);
  v76(v2, v1, v3);
  v7 = sub_4A91C();
  v8 = sub_4B7DC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[29];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];
  v15 = v0[21];
  v14 = v0[22];
  if (v9)
  {
    v87 = v0[21];
    v16 = swift_slowAlloc();
    v83 = v8;
    v17 = swift_slowAlloc();
    v89 = v17;
    *v16 = 136446210;
    sub_44E10(&qword_7C260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v18 = sub_4BA6C();
    v85 = v13;
    v20 = v19;
    v82 = *(v11 + 8);
    v82(v10, v12);
    v21 = sub_43F34(v18, v20, &v89);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_0, v7, v83, "Received deep link url %{public}s", v16, 0xCu);
    sub_14710(v17);

    v22 = *(v14 + 8);
    v23 = v85;
    v24 = v87;
  }

  else
  {

    v82 = *(v11 + 8);
    v82(v10, v12);
    v22 = *(v14 + 8);
    v23 = v13;
    v24 = v15;
  }

  v77 = v22;
  v22(v23, v24);
  sub_4B56C();
  v25 = sub_4A61C();
  v26 = v25;
  if (*(v25 + 2) >= 3uLL && (*(v25 + 4) == 47 && *(v25 + 5) == 0xE100000000000000 || (sub_4BA8C() & 1) != 0) && ((result = *(v26 + 6), result == 0x59414C50524143) && *(v26 + 7) == 0xE700000000000000 || (result = sub_4BA8C(), (result & 1) != 0)))
  {
    v28 = *(v26 + 2);
    if (v28 < 2)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v28 - 2 > *(v26 + 3) >> 1)
    {
      v26 = sub_43E28(isUniquelyReferenced_nonNull_native, v28, 1, v26);
    }

    result = sub_44D50(0, 2, 0);
    v30 = 0;
    v88 = v26;
    v31 = *(v26 + 2);
    if (v31 != 1)
    {
      if (v31)
      {
        v30 = 0;
        v32 = (v26 + 56);
        v33 = 1;
        while (1)
        {
          if (v31 == v33)
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (v33 >= *(v26 + 2))
          {
            goto LABEL_47;
          }

          v34 = *(v32 - 1);
          v35 = *v32;
          v36 = *(v32 - 3) == 0x656C6369686576 && *(v32 - 2) == 0xE700000000000000;
          if (v36 || (sub_4BA8C() & 1) != 0)
          {
            v84 = v0[17];
            v86 = v30;
            v37 = swift_allocObject();
            *(v37 + 16) = 0;
            v38 = swift_allocObject();
            v38[2] = v37;
            v38[3] = v34;
            v38[4] = v35;
            v0[6] = sub_44E98;
            v0[7] = v38;
            v0[2] = _NSConcreteStackBlock;
            v0[3] = 1107296256;
            v0[4] = sub_43B10;
            v0[5] = &unk_6F8E0;
            v39 = _Block_copy(v0 + 2);
            swift_bridgeObjectRetain_n();

            [v84 syncFetchAllVehiclesWithCompletion:v39];
            _Block_release(v39);
            swift_beginAccess();
            v40 = *(v37 + 16);
            v41 = v40;

            if (!v40)
            {
              v42 = v34;
              (v79)(v0[24], v78, v0[21]);

              v43 = sub_4A91C();
              v44 = sub_4B7EC();

              v45 = os_log_type_enabled(v43, v44);
              v46 = v0[24];
              v47 = v0[21];
              v48 = v35;
              if (v45)
              {
                v49 = swift_slowAlloc();
                v50 = swift_slowAlloc();
                v89 = v50;
                *v49 = 136315138;
                v51 = sub_43F34(v42, v48, &v89);

                *(v49 + 4) = v51;
                _os_log_impl(&dword_0, v43, v44, "Invalid vehicle identifier: %s", v49, 0xCu);
                sub_14710(v50);
              }

              else
              {
              }

              v77(v46, v47);
              sub_4B58C();

              goto LABEL_43;
            }

            v0[13] = v40;
            *(v0 + 112) = 1;
            sub_14854();
            result = sub_4AAEC();
            v30 = v40;
            v26 = v88;
          }

          else
          {
            if ((v34 != 0x73746567646977 || v35 != 0xE700000000000000) && (sub_4BA8C() & 1) == 0 || !v30)
            {
              v52 = v0[30];
              v53 = v0[28];
              v54 = v0[26];
              (v79)(v0[23], v78, v0[21]);
              v76(v53, v52, v54);
              v55 = sub_4A91C();
              v56 = sub_4B7EC();
              v57 = os_log_type_enabled(v55, v56);
              v58 = v0[28];
              v59 = v0[26];
              v60 = v0[23];
              v61 = v0[21];
              if (v57)
              {
                v62 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                *v62 = 136315394;
                sub_44E10(&qword_7C260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v80 = v61;
                v81 = v60;
                v63 = sub_4BA6C();
                v65 = v64;
                v82(v58, v59);
                v66 = sub_43F34(v63, v65, &v89);

                *(v62 + 4) = v66;
                *(v62 + 12) = 2080;

                v67 = sub_4B6AC();
                v69 = v68;

                v70 = sub_43F34(v67, v69, &v89);

                *(v62 + 14) = v70;
                _os_log_impl(&dword_0, v55, v56, "Unable to parse deeplink url %s with components: %s", v62, 0x16u);
                swift_arrayDestroy();

                v72 = v80;
                v71 = v81;
              }

              else
              {

                v82(v58, v59);
                v71 = v60;
                v72 = v61;
              }

              v77(v71, v72);
              goto LABEL_42;
            }

            v0[11] = v30;
            *(v0 + 96) = 2;
            sub_14854();
            result = sub_4AAEC();
          }

          ++v33;
          v32 += 2;
          if (v31 == v33)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_49;
    }

LABEL_42:
    sub_4B58C();
  }

  else
  {
    sub_4B58C();
  }

LABEL_43:
  v73 = v0[30];
  v74 = v0[26];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v82(v73, v74);

  v75 = v0[1];

  return v75();
}

void sub_43620(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v8 = sub_4A6AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_4A93C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  if (a2)
  {
    swift_errorRetain();
    v19 = sub_49558();
    (*(v13 + 16))(v18, v19, v12);
    swift_errorRetain();
    v20 = sub_4A91C();
    v21 = sub_4B7EC();

    v22 = v13;
    if (os_log_type_enabled(v20, v21))
    {
      v23 = v12;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_0, v20, v21, "Error fetching all vehicles: %@", v24, 0xCu);
      sub_1E284(v25, &qword_7AD38, &qword_52780);

      v12 = v23;
    }

    else
    {
    }

    (*(v22 + 8))(v18, v12);
  }

  else
  {
    v46 = a3;
    if (a1)
    {
      v27 = a1 & 0xFFFFFFFFFFFFFF8;
      v48 = a1;
      if (a1 >> 62)
      {
        goto LABEL_29;
      }

      v28 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      for (i = v46; v28; i = v46)
      {
        v30 = 0;
        v47 = v48 & 0xC000000000000001;
        v31 = (v9 + 8);
        while (1)
        {
          if (v47)
          {
            v32 = sub_4B9AC();
          }

          else
          {
            if (v30 >= *(v27 + 16))
            {
              goto LABEL_28;
            }

            v32 = *(v48 + 8 * v30 + 32);
          }

          v33 = v32;
          v34 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          v9 = v28;
          v35 = [v32 identifier];
          if (!v35)
          {
            __break(1u);
            return;
          }

          v36 = v35;
          sub_4A68C();

          v37 = sub_4A65C();
          v39 = v38;
          (*v31)(v11, v8);
          if (v37 == v49 && v39 == v50)
          {

            goto LABEL_26;
          }

          v40 = sub_4BA8C();

          if (v40)
          {
            goto LABEL_26;
          }

          ++v30;
          v28 = v9;
          if (v34 == v9)
          {
            v33 = 0;
LABEL_26:
            i = v46;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v28 = sub_4BA5C();
      }

      v33 = 0;
LABEL_31:
      swift_beginAccess();
      v45 = *(i + 16);
      *(i + 16) = v33;
    }

    else
    {
      v41 = sub_49558();
      (*(v13 + 16))(v16, v41, v12);
      v42 = sub_4A91C();
      v43 = sub_4B7EC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "No vehicles found", v44, 2u);

        (*(v13 + 8))(v16, v12);
      }

      else
      {

        (*(v13 + 8))(v16, v12);
      }
    }
  }
}

uint64_t sub_43B10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_16F40(0, &qword_7AC08, CRVehicle_ptr);
    v4 = sub_4B69C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_43BB4@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = sub_14628(&qword_7C168, &qword_53F70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = *v1;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_14628(&qword_7C170, &qword_53F78);
  v8 = sub_4A83C();
  v9 = sub_1D648(&qword_7C178, &qword_53F80);
  v10 = sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v11 = sub_14854();
  v12 = sub_445AC();
  v15[2] = v8;
  v15[3] = &type metadata for Route;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  swift_getOpaqueTypeConformance2();
  sub_4B59C();
  *(swift_allocObject() + 16) = v7;
  sub_44858();
  v13 = v7;
  sub_4B55C();
  return (*(v3 + 8))(v5, v2);
}

id sub_43DEC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(CRPairedVehicleManager) init];
  *a1 = result;
  return result;
}

char *sub_43E28(char *result, int64_t a2, char a3, char *a4)
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
    sub_14628(&qword_7B6F8, &qword_54180);
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

unint64_t sub_43F34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_44000(v11, 0, 0, 1, a1, a2);
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
    sub_16250(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_14710(v11);
  return v7;
}

unint64_t sub_44000(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4410C(a5, a6);
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
    result = sub_4B9CC();
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

void *sub_4410C(uint64_t a1, unint64_t a2)
{
  v3 = sub_44158(a1, a2);
  sub_44288(&off_6F710);
  return v3;
}

void *sub_44158(uint64_t a1, unint64_t a2)
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

  v6 = sub_44374(v5, 0);
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

  result = sub_4B9CC();
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
        v10 = sub_4B63C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_44374(v10, 0);
        result = sub_4B98C();
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

uint64_t sub_44288(uint64_t result)
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

  result = sub_443E8(result, v11, 1, v3);
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

void *sub_44374(uint64_t a1, uint64_t a2)
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

  sub_14628(&qword_7C268, &qword_54178);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_443E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_14628(&qword_7C268, &qword_54178);
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

uint64_t sub_444DC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
LABEL_4:
        sub_16F40(0, &qword_7C280, NSObject_ptr);
        return sub_4B8FC() & 1;
      }
    }

    else if (a4 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_4456C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_445AC()
{
  result = qword_7C188;
  if (!qword_7C188)
  {
    sub_1D648(&qword_7C178, &qword_53F80);
    sub_44638();
    sub_44724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C188);
  }

  return result;
}

unint64_t sub_44638()
{
  result = qword_7C190;
  if (!qword_7C190)
  {
    sub_1D648(&qword_7C198, &qword_53F88);
    sub_44E10(&qword_7AC30, type metadata accessor for CRHomeScreenLayoutView, &unk_52C68);
    sub_44E10(&qword_7C180, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C190);
  }

  return result;
}

unint64_t sub_44724()
{
  result = qword_7C1A0;
  if (!qword_7C1A0)
  {
    sub_1D648(&qword_7C1A8, &qword_53F90);
    sub_14800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C1A0);
  }

  return result;
}

uint64_t sub_447A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E76C;

  return sub_42A38(a1, a2, v6);
}

unint64_t sub_44858()
{
  result = qword_7C1B0;
  if (!qword_7C1B0)
  {
    sub_1D648(&qword_7C168, &qword_53F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C1B0);
  }

  return result;
}

unint64_t sub_448C0()
{
  result = qword_7C1B8;
  if (!qword_7C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C1B8);
  }

  return result;
}

unint64_t sub_44918()
{
  result = qword_7C1C0;
  if (!qword_7C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C1C0);
  }

  return result;
}

uint64_t sub_44994(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_449A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_449F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_44A80()
{
  sub_1D648(&qword_7C168, &qword_53F70);
  sub_44858();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_44AE4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB38;

  return sub_42A38(a1, a2, v6);
}

id sub_44B94(void *a1)
{
  v2 = sub_4A6AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 identifier];
  if (result)
  {
    v7 = result;
    sub_4A68C();

    sub_4A65C();
    (*(v3 + 8))(v5, v2);
    result = [a1 certificateSerialNumber];
    if (result)
    {
      v8 = result;
      v9 = sub_4A64C();
      v11 = v10;

      v12 = objc_allocWithZone(CRHomeScreenPersistenceManager);
      v13 = sub_4B5EC();

      isa = sub_4A63C().super.isa;
      v15 = [v12 initWithVehicleId:v13 certificateSerial:isa];

      sub_1475C(v9, v11);
      type metadata accessor for CRWidgetSettingsModel(0);
      return sub_19E1C(v15, &off_6ED48);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_44D50(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_44E10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_44E58()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_44EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_44EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7C198, &qword_53F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_44F34(uint64_t a1)
{
  v2 = type metadata accessor for CRHomeScreenLayoutView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TypedIdentifier.init(rawValue:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (a2)
  {
    sub_4A7FC();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_4A81C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

id sub_45044(double a1)
{
  [v1 size];
  v4 = v3;
  v6 = v5;
  [v1 cornerRadius];
  v8 = v7;
  v9 = [v1 fontStyle];
  v10 = [v1 margins];
  v11 = [objc_allocWithZone(CHSWidgetMetrics) initWithSize:v9 cornerRadius:v10 scaleFactor:objc_msgSend(v1 fontStyle:"dynamicTextSupport") margins:v4 supportsDynamicText:{v6, v8, a1}];

  return v11;
}

uint64_t sub_4512C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_4ACDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_14628(&qword_7B310, &qword_52AE0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_45314(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_4AA3C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_4B7FC();
    v13 = sub_4AFDC();
    sub_4A90C();

    sub_4ACCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_45314(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7B310, &qword_52AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_45384()
{
  v1 = (v0 + *(type metadata accessor for BlurView(0) + 20));
  v2 = *v1;
  sub_15A8C(*v1, v1[1]);
  return v2;
}

uint64_t type metadata accessor for BlurView(uint64_t a1)
{
  result = qword_7D790;
  if (!qword_7D790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_45414(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BlurView(0) + 20));
  result = sub_15AD4(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_454A4()
{
  v1 = sub_4AA3C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v21 - v6;
  sub_4512C((v21 - v6));
  (*(v2 + 104))(v5, enum case for ColorScheme.dark(_:), v1);
  v8 = sub_4AA2C();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  if (v8)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [objc_opt_self() effectWithStyle:v10];
  v12 = sub_4AB4C();
  v13 = sub_4AFFC();
  v21[1] = v11;
  v21[2] = v12;
  v22 = v13;
  v14 = (v0 + *(type metadata accessor for BlurView(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  if (*v14)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = sub_45854;
  }

  else
  {
    v18 = nullsub_2;
    v17 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  sub_15A8C(v15, v16);
  sub_14628(&qword_7C288, qword_541C8);
  sub_45774();
  sub_4B18C();
}

uint64_t sub_45714()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_45774()
{
  result = qword_7C290;
  if (!qword_7C290)
  {
    sub_1D648(&qword_7C288, qword_541C8);
    sub_45800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C290);
  }

  return result;
}

unint64_t sub_45800()
{
  result = qword_7C298;
  if (!qword_7C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C298);
  }

  return result;
}

uint64_t sub_4587C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_14628(&qword_7B310, &qword_52AE0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for BlurView(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_458E8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_14628(&qword_7B310, &qword_52AE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_45948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_45994(a1, a4);
  result = type metadata accessor for BlurView(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_45994(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7B4F0, qword_52E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_45A34()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

uint64_t sub_45AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_45FC0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_45B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_45FC0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_45BC4(uint64_t a1)
{
  sub_45FC0();
  sub_4AE4C();
  __break(1u);
}

uint64_t sub_45C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14628(&qword_7B4F0, qword_52E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_45CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_14628(&qword_7B4F0, qword_52E00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_45DAC(uint64_t a1)
{
  sub_2ACAC(319);
  if (v1 <= 0x3F)
  {
    sub_45E30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_45E30(uint64_t a1)
{
  if (!qword_7C2F8)
  {
    sub_1D648(&unk_7C300, &qword_54320);
    v1 = sub_4B92C();
    if (!v2)
    {
      atomic_store(v1, &qword_7C2F8);
    }
  }
}

uint64_t sub_45EA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_45EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_45F5C()
{
  sub_1D648(&qword_7C288, qword_541C8);
  sub_45774();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_45FC0()
{
  result = qword_7C330;
  if (!qword_7C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C330);
  }

  return result;
}

id CRSettingsHeaderCell.updateConfiguration(using:)()
{
  v1 = sub_14628(&qword_7C338, qword_54370);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-1] - v3;
  sub_461A4();
  sub_4AF0C();
  sub_4AFFC();
  v7[3] = v1;
  v7[4] = sub_2C958(&qword_7C340, &qword_7C338, qword_54370, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_2B2C0(v7);
  sub_4AEFC();
  (*(v2 + 8))(v4, v1);
  sub_4B81C();
  return [v0 setSelectionStyle:0];
}

unint64_t sub_461A4()
{
  result = qword_7D7A0[0];
  if (!qword_7D7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_7D7A0);
  }

  return result;
}

id CRSettingsHeaderCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_4B5EC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id CRSettingsHeaderCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_4B5EC();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:specifier:", a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id CRSettingsHeaderCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_4B5EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id CRSettingsHeaderCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_4B5EC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

id CRSettingsHeaderCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

double sub_468C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_4AD8C();
  v43 = 0;
  sub_46BC4(&v26);
  v56 = v38;
  v57 = v39;
  v58 = v40;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v60[12] = v38;
  v60[13] = v39;
  v60[14] = v40;
  v60[8] = v34;
  v60[9] = v35;
  v60[10] = v36;
  v60[11] = v37;
  v60[4] = v30;
  v60[5] = v31;
  v60[6] = v32;
  v60[7] = v33;
  v60[0] = v26;
  v60[1] = v27;
  v59 = v41;
  v61 = v41;
  v60[2] = v28;
  v60[3] = v29;
  sub_2BC3C(&v44, &v25, &qword_7C370, &qword_54408);
  sub_1E284(v60, &qword_7C370, &qword_54408);
  *&v42[199] = v56;
  *&v42[215] = v57;
  *&v42[231] = v58;
  *&v42[135] = v52;
  *&v42[151] = v53;
  *&v42[167] = v54;
  *&v42[183] = v55;
  *&v42[71] = v48;
  *&v42[87] = v49;
  *&v42[103] = v50;
  *&v42[119] = v51;
  *&v42[7] = v44;
  *&v42[23] = v45;
  *&v42[39] = v46;
  v42[247] = v59;
  *&v42[55] = v47;
  v4 = v43;
  v5 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v6 = sub_4B25C();
  v7 = sub_4AFFC();
  v8 = (a2 + *(sub_14628(&qword_7C378, &qword_54410) + 36));
  v9 = *(sub_4AB7C() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = sub_4AD7C();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #28.0 }

  *v8 = _Q0;
  *&v8[*(sub_14628(&qword_7C380, &qword_54418) + 36)] = 256;
  v17 = *&v42[208];
  *(a2 + 209) = *&v42[192];
  *(a2 + 225) = v17;
  *(a2 + 241) = *&v42[224];
  v18 = *&v42[144];
  *(a2 + 145) = *&v42[128];
  *(a2 + 161) = v18;
  v19 = *&v42[176];
  *(a2 + 177) = *&v42[160];
  *(a2 + 193) = v19;
  v20 = *&v42[80];
  *(a2 + 81) = *&v42[64];
  *(a2 + 97) = v20;
  v21 = *&v42[112];
  *(a2 + 113) = *&v42[96];
  *(a2 + 129) = v21;
  v22 = *&v42[16];
  *(a2 + 17) = *v42;
  *(a2 + 33) = v22;
  result = *&v42[32];
  v24 = *&v42[48];
  *(a2 + 49) = *&v42[32];
  *a2 = v3;
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = v4;
  *(a2 + 257) = *&v42[240];
  *(a2 + 65) = v24;
  *(a2 + 265) = v26;
  *(a2 + 268) = *(&v26 + 3);
  *(a2 + 272) = v6;
  *(a2 + 280) = v7;
  return result;
}

uint64_t sub_46BC4@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = sub_4B2EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRSettingsHeaderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass:ObjCClassFromMetadata];
  v8 = sub_4B5EC();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

  if (v9)
  {
    v10 = v9;
    sub_4B2CC();
    (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
    v11 = sub_4B2FC();

    (*(v2 + 8))(v4, v1);
    v85 = v11;

    v84 = 1;
  }

  else
  {
    v85 = 0;
    v84 = 0;
  }

  v12 = [v6 bundleForClass:ObjCClassFromMetadata];
  v79._countAndFlagsBits = 0xE000000000000000;
  v154.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v154.value._object = 0xEB00000000656C62;
  v152._countAndFlagsBits = 0xD000000000000017;
  v152._object = 0x800000000005BC40;
  v13.super.isa = v12;
  v156._countAndFlagsBits = 0;
  v156._object = 0xE000000000000000;
  v14 = sub_4A5FC(v152, v154, v13, v156, 0, v79);
  v16 = v15;

  v136 = v14;
  v137 = v16;
  v83 = sub_2A3CC();
  v17 = sub_4B0FC();
  v82 = ObjCClassFromMetadata;
  v19 = v18;
  v21 = v20;
  sub_4B08C();
  v22 = sub_4B0DC();
  v81 = v6;
  v23 = v22;
  v25 = v24;
  LOBYTE(v14) = v26;

  sub_2BCB4(v17, v19, v21 & 1);

  sub_4B06C();
  v27 = sub_4B0AC();
  v29 = v28;
  v31 = v30;
  sub_2BCB4(v23, v25, v14 & 1);

  LODWORD(v136) = sub_4AEDC();
  v91 = sub_4B0CC();
  v92 = v32;
  v89 = v33;
  v35 = v34;
  sub_2BCB4(v27, v29, v31 & 1);

  v90 = sub_4AFEC();
  sub_4AA1C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v87 = v35 & 1;
  LOBYTE(v119[0]) = v35 & 1;
  LOBYTE(v111) = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v136) = 1;
  v44 = [v81 bundleForClass:v82];
  v80._countAndFlagsBits = 0xE000000000000000;
  v153._object = 0x800000000005BC60;
  v153._countAndFlagsBits = 0xD000000000000015;
  v155.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v155.value._object = 0xEB00000000656C62;
  v45.super.isa = v44;
  v157._countAndFlagsBits = 0;
  v157._object = 0xE000000000000000;
  v46 = sub_4A5FC(v153, v155, v45, v157, 0, v80);
  v48 = v47;

  v136 = v46;
  v137 = v48;
  v49 = sub_4B0FC();
  v51 = v50;
  v53 = v52;
  sub_4B03C();
  v54 = sub_4B0DC();
  v83 = v54;
  v56 = v55;
  LOBYTE(v19) = v57;
  v59 = v58;

  sub_2BCB4(v49, v51, v53 & 1);

  v60 = sub_4AFEC();
  sub_4AA1C();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  LOBYTE(v136) = v19 & 1;
  LOBYTE(v119[0]) = 0;
  LODWORD(v14) = sub_4AEEC();
  v69 = swift_getKeyPath();
  LOBYTE(v136) = 1;
  *&v103 = v91;
  *(&v103 + 1) = v89;
  LOBYTE(v104) = v87;
  *(&v104 + 1) = *v101;
  DWORD1(v104) = *&v101[3];
  *(&v104 + 1) = v92;
  LOBYTE(v105) = v90;
  *(&v105 + 1) = *v100;
  DWORD1(v105) = *&v100[3];
  *(&v105 + 1) = v37;
  *&v106 = v39;
  *(&v106 + 1) = v41;
  *&v107 = v43;
  BYTE8(v107) = 0;
  HIDWORD(v107) = *&v102[3];
  *(&v107 + 9) = *v102;
  v108 = KeyPath;
  v109 = 0;
  v110 = 1;
  v95[102] = 1;
  *&v95[86] = KeyPath;
  *&v95[70] = v107;
  *&v95[54] = v106;
  *&v95[38] = v105;
  *&v95[22] = v104;
  *&v95[6] = v103;
  *&v111 = v54;
  *(&v111 + 1) = v56;
  LOBYTE(v112) = v19 & 1;
  DWORD1(v112) = *&v97[3];
  *(&v112 + 1) = *v97;
  *(&v112 + 1) = v59;
  LOBYTE(v113) = v60;
  DWORD1(v113) = *&v96[3];
  *(&v113 + 1) = *v96;
  *(&v113 + 1) = v62;
  *&v114 = v64;
  *(&v114 + 1) = v66;
  *&v115 = v68;
  BYTE8(v115) = 0;
  BYTE11(v115) = v99;
  *(&v115 + 9) = v98;
  HIDWORD(v115) = v14;
  v116 = v69;
  v117 = 0;
  v118 = 1;
  v94[103] = 1;
  *&v94[87] = v69;
  *&v94[71] = v115;
  *&v94[55] = v114;
  *&v94[39] = v113;
  *&v94[23] = v112;
  *&v94[7] = v111;
  v70 = v85;

  sub_2BC3C(&v103, &v136, &qword_7C388, &qword_54450);
  sub_2BC3C(&v111, &v136, &qword_7C390, &qword_54458);

  v71 = *&v95[32];
  v72 = v86;
  *(v86 + 66) = *&v95[48];
  v73 = *&v95[80];
  *(v72 + 82) = *&v95[64];
  *(v72 + 98) = v73;
  v74 = *&v95[16];
  *(v72 + 18) = *v95;
  *(v72 + 34) = v74;
  *(v72 + 50) = v71;
  v75 = *&v94[32];
  *(v72 + 169) = *&v94[48];
  v76 = *&v94[80];
  *(v72 + 185) = *&v94[64];
  *(v72 + 201) = v76;
  v77 = *&v94[16];
  *(v72 + 121) = *v94;
  *(v72 + 137) = v77;
  v93 = 0;
  *v72 = v70;
  *(v72 + 8) = 0;
  *(v72 + 16) = v84;
  *(v72 + 113) = *&v95[95];
  *(v72 + 217) = *&v94[96];
  *(v72 + 153) = v75;
  *(v72 + 232) = 0x4024000000000000;
  *(v72 + 240) = 0;
  v119[0] = v83;
  v119[1] = v56;
  v120 = v19 & 1;
  *&v121[3] = *&v97[3];
  *v121 = *v97;
  v122 = v59;
  v123 = v60;
  *&v124[3] = *&v96[3];
  *v124 = *v96;
  v125 = v62;
  v126 = v64;
  v127 = v66;
  v128 = v68;
  v129 = 0;
  v131 = v99;
  v130 = v98;
  v132 = v14;
  v133 = v69;
  v134 = 0;
  v135 = 1;
  sub_1E284(v119, &qword_7C390, &qword_54458);
  v136 = v91;
  v137 = v89;
  v138 = v87;
  *v139 = *v101;
  *&v139[3] = *&v101[3];
  v140 = v92;
  v141 = v90;
  *v142 = *v100;
  *&v142[3] = *&v100[3];
  v143 = v37;
  v144 = v39;
  v145 = v41;
  v146 = v43;
  v147 = 0;
  *&v148[3] = *&v102[3];
  *v148 = *v102;
  v149 = KeyPath;
  v150 = 0;
  v151 = 1;
  sub_1E284(&v136, &qword_7C388, &qword_54450);
}