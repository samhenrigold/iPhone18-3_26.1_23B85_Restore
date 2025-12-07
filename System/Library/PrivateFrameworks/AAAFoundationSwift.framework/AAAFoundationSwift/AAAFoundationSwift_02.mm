uint64_t sub_1B99D57F0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B99D5868(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1B99D58B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B99D5958(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1B99D59A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B99D5A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B99D5A80()
{
  result = qword_1EBBDCE78;
  if (!qword_1EBBDCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCE78);
  }

  return result;
}

unint64_t sub_1B99D5AD4()
{
  result = qword_1EBBDCE98;
  if (!qword_1EBBDCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCE98);
  }

  return result;
}

unint64_t sub_1B99D5B28()
{
  result = qword_1EBBDCEC0;
  if (!qword_1EBBDCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCEC0);
  }

  return result;
}

unint64_t sub_1B99D5B7C()
{
  result = qword_1EBBDCED8;
  if (!qword_1EBBDCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCED8);
  }

  return result;
}

unint64_t sub_1B99D5BD0()
{
  result = qword_1EBBDCEF0;
  if (!qword_1EBBDCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCEF0);
  }

  return result;
}

unint64_t sub_1B99D5C24()
{
  result = qword_1EBBDCF08;
  if (!qword_1EBBDCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF08);
  }

  return result;
}

unint64_t sub_1B99D5C78()
{
  result = qword_1EBBDCF20;
  if (!qword_1EBBDCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF20);
  }

  return result;
}

unint64_t sub_1B99D5CCC()
{
  result = qword_1EBBDCF38;
  if (!qword_1EBBDCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF38);
  }

  return result;
}

unint64_t sub_1B99D5D20()
{
  result = qword_1EBBDCF50;
  if (!qword_1EBBDCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF50);
  }

  return result;
}

unint64_t sub_1B99D5D74()
{
  result = qword_1EBBDCF68;
  if (!qword_1EBBDCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF68);
  }

  return result;
}

unint64_t sub_1B99D5DC8()
{
  result = qword_1EBBDCF80;
  if (!qword_1EBBDCF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF80);
  }

  return result;
}

unint64_t sub_1B99D5E1C()
{
  result = qword_1EBBDCF98;
  if (!qword_1EBBDCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF98);
  }

  return result;
}

unint64_t sub_1B99D5E70()
{
  result = qword_1EBBDCFB0;
  if (!qword_1EBBDCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCFB0);
  }

  return result;
}

void sub_1B99D5EF4()
{
  v2 = v0[10];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v0;
  v4 = v0[9];
  if (v2 >= *(v4 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = *v0;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v14 = v3[5];
  v10 = *(v3 + 48);
  v13 = v2;
  v11 = v3[7];
  v12 = v3[8];
  sub_1B99D5A10(v4 + 32 * v2 + 32, &v19);
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;

  sub_1B99CA6A4(v7, v8);
  sub_1B99CA884(v9, v14, v10);
  sub_1B99CAA28(v11, v12);
  sub_1B99D4FA4();
  sub_1B99D5EC4(v15);
  if (!v1)
  {
    v3[10] = v13 + 1;
  }
}

void sub_1B99D6018()
{
  v1 = v0[10];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v0[9];
  if (v1 >= *(v2 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = *v0;
  v12 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = *(v0 + 48);
  v11 = v0[10];
  v10 = v0[7];
  v9 = v0[8];
  sub_1B99D5A10(v2 + 32 * v1 + 32, v19);
  v15[0] = v3;
  v15[1] = v12;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v7;
  v15[5] = v6;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v20 = v9;
  sub_1B99D5A10(v19, v13);
  if (v14)
  {

    sub_1B99CA6A4(v4, v5);
    sub_1B99CA884(v7, v6, v8);
    sub_1B99CAA28(v10, v20);
    if (swift_dynamicCast())
    {
      sub_1B99D5EC4(v15);
      v0[10] = v11 + 1;
      return;
    }
  }

  else
  {

    sub_1B99CA6A4(v4, v5);
    sub_1B99CA884(v7, v6, v8);
    sub_1B99CAA28(v10, v20);
    sub_1B99A18A4(v13, &qword_1EBBDC658, &qword_1B99F5F40);
  }

  sub_1B99D1CA8(MEMORY[0x1E69E6158], v19);
  swift_willThrow();
  sub_1B99D5EC4(v15);
}

void sub_1B99D61E4()
{
  v1 = v0[10];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v0;
  v3 = v0[9];
  if (v1 >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *v0;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v21 = v2[4];
  v9 = v21;
  v15 = v8;
  v10 = *(v2 + 48);
  v14 = v1;
  v11 = v2[7];
  v12 = v2[8];
  sub_1B99D5A10(v3 + 32 * v1 + 32, v20);
  v16[0] = v4;
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v9;
  v16[5] = v15;
  v17 = v10;
  v18 = v11;
  v19 = v12;

  sub_1B99CA6A4(v6, v7);
  sub_1B99CA884(v21, v15, v10);
  sub_1B99CAA28(v11, v12);
  sub_1B99D1F50(v20);
  if (v13)
  {
    sub_1B99D1CA8(MEMORY[0x1E69E63B0], v20);
    swift_willThrow();
    sub_1B99D5EC4(v16);
  }

  else
  {
    sub_1B99D5EC4(v16);
    v2[10] = v14 + 1;
  }
}

void sub_1B99D6338()
{
  v1 = v0[10];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v0;
  v3 = v0[9];
  if (v1 >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *v0;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v20 = v2[4];
  v9 = v20;
  v14 = v8;
  v10 = *(v2 + 48);
  v13 = v1;
  v11 = v2[7];
  v12 = v2[8];
  sub_1B99D5A10(v3 + 32 * v1 + 32, v19);
  v15[0] = v4;
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v9;
  v15[5] = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;

  sub_1B99CA6A4(v6, v7);
  sub_1B99CA884(v20, v14, v10);
  sub_1B99CAA28(v11, v12);
  if ((sub_1B99D27B4(v19) & 0x100000000) != 0)
  {
    sub_1B99D1CA8(MEMORY[0x1E69E6448], v19);
    swift_willThrow();
    sub_1B99D5EC4(v15);
  }

  else
  {
    sub_1B99D5EC4(v15);
    v2[10] = v13 + 1;
  }
}

uint64_t (*sub_1B99D648C(uint64_t (*result)(_BYTE *), uint64_t a2))(_BYTE *)
{
  v3 = v2[10];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v2[9];
  if (v3 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  v18 = *(v4 + 48);
  v16 = v3;
  v12 = v4[7];
  v13 = v4[8];
  v24 = result;
  sub_1B99D5A10(v5 + 32 * v3 + 32, v23);
  v19[0] = v6;
  v19[1] = v7;
  v19[2] = v8;
  v19[3] = v9;
  v19[4] = v11;
  v19[5] = v10;
  v20 = v18;
  v21 = v12;
  v22 = v13;

  sub_1B99CA6A4(v8, v9);
  sub_1B99CA884(v11, v10, v18);
  sub_1B99CAA28(v12, v13);
  v14 = v24(v23);
  if (v15)
  {
    sub_1B99D1CA8(a2, v23);
    swift_willThrow();
    sub_1B99D5EC4(v19);
  }

  else
  {
    sub_1B99D5EC4(v19);
    v4[10] = v16 + 1;
  }

  return v14;
}

uint64_t (*sub_1B99D65E8(uint64_t (*result)(_BYTE *), uint64_t a2))(_BYTE *)
{
  v3 = v2[10];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v2[9];
  if (v3 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  v17 = *(v4 + 48);
  v15 = v3;
  v12 = v4[7];
  v13 = v4[8];
  v23 = result;
  sub_1B99D5A10(v5 + 32 * v3 + 32, v22);
  v18[0] = v6;
  v18[1] = v7;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v11;
  v18[5] = v10;
  v19 = v17;
  v20 = v12;
  v21 = v13;

  sub_1B99CA6A4(v8, v9);
  sub_1B99CA884(v11, v10, v17);
  sub_1B99CAA28(v12, v13);
  v14 = v23(v22);
  if ((v14 & 0x100) != 0)
  {
    sub_1B99D1CA8(a2, v22);
    swift_willThrow();
    sub_1B99D5EC4(v18);
  }

  else
  {
    sub_1B99D5EC4(v18);
    v4[10] = v15 + 1;
  }

  return v14;
}

uint64_t (*sub_1B99D6744(uint64_t (*result)(_BYTE *), uint64_t a2))(_BYTE *)
{
  v3 = v2[10];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v2[9];
  if (v3 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  v17 = *(v4 + 48);
  v15 = v3;
  v12 = v4[7];
  v13 = v4[8];
  v23 = result;
  sub_1B99D5A10(v5 + 32 * v3 + 32, v22);
  v18[0] = v6;
  v18[1] = v7;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v11;
  v18[5] = v10;
  v19 = v17;
  v20 = v12;
  v21 = v13;

  sub_1B99CA6A4(v8, v9);
  sub_1B99CA884(v11, v10, v17);
  sub_1B99CAA28(v12, v13);
  v14 = v23(v22);
  if ((v14 & 0x10000) != 0)
  {
    sub_1B99D1CA8(a2, v22);
    swift_willThrow();
    sub_1B99D5EC4(v18);
  }

  else
  {
    sub_1B99D5EC4(v18);
    v4[10] = v15 + 1;
  }

  return v14;
}

uint64_t (*sub_1B99D68A0(uint64_t (*result)(_BYTE *), uint64_t a2))(_BYTE *)
{
  v3 = v2[10];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v2[9];
  if (v3 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  v17 = *(v4 + 48);
  v15 = v3;
  v12 = v4[7];
  v13 = v4[8];
  v23 = result;
  sub_1B99D5A10(v5 + 32 * v3 + 32, v22);
  v18[0] = v6;
  v18[1] = v7;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v11;
  v18[5] = v10;
  v19 = v17;
  v20 = v12;
  v21 = v13;

  sub_1B99CA6A4(v8, v9);
  sub_1B99CA884(v11, v10, v17);
  sub_1B99CAA28(v12, v13);
  v14 = v23(v22);
  if ((v14 & 0x100000000) != 0)
  {
    sub_1B99D1CA8(a2, v22);
    swift_willThrow();
    sub_1B99D5EC4(v18);
  }

  else
  {
    sub_1B99D5EC4(v18);
    v4[10] = v15 + 1;
  }

  return v14;
}

uint64_t sub_1B99D6A60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B99D6ABC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDCFE0, &qword_1B99F8018);
  swift_allocObject();
  result = sub_1B99F4AF4();
  qword_1EBBDCFD8 = result;
  return result;
}

uint64_t static AAFTestableSettings.$allowSwiftUITestableOverrides.getter()
{
  if (qword_1EBBDC2B8 != -1)
  {
    swift_once();
  }
}

uint64_t static AAFTestableSettings.allowSwiftUITestableOverrides.getter()
{
  if (qword_1EBBDC2B8 != -1)
  {
    swift_once();
  }

  sub_1B99F4B04();
  return v1;
}

uint64_t sub_1B99D6C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static StandardUnarchiver.unarchivedObject(from:)(a1, a2, *(a3 + 16));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1B99D6CB8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B99D72D4(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t CustomCodableBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F4A64();
  if (!v5)
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_1B99D74FC();
    sub_1B99F4764();
    v12 = v18;
    v11 = v19;
    (*(a4 + 16))(&v18, v18, v19, a3, a4);
    v13 = v18;
    if (v18)
    {
      sub_1B99A92F0(v12, v11);
      *a5 = v13;
    }

    else
    {
      v15 = sub_1B99F42A4();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD000, &qword_1B99F7F20);
      *v17 = a2;
      sub_1B99F4294();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
      swift_willThrow();
      sub_1B99A92F0(v12, v11);
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CustomCodableBox.encode(to:)(void *a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v11[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v11];
  v5 = v11[0];
  if (v4)
  {
    v6 = sub_1B99F3814();
    v8 = v7;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B99F4A94();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1B99D75A0();
    sub_1B99F4794();
    sub_1B99A92F0(v6, v8);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = v5;
    sub_1B99F36E4();

    return swift_willThrow();
  }
}

uint64_t sub_1B99D7100(uint64_t a1, SEL *a2)
{
  v3 = [*v2 *a2];
  v4 = sub_1B99F3C24();

  return v4;
}

uint64_t CustomCodableBox.hashValue.getter()
{
  sub_1B99F4A04();
  sub_1B99F4194();
  return sub_1B99F4A24();
}

uint64_t sub_1B99D7220(uint64_t a1)
{
  sub_1B99F4A04();
  CustomCodableBox.hash(into:)();
  return sub_1B99F4A24();
}

uint64_t sub_1B99D725C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD170, &qword_1B99F7840);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EBBDD178;
    v3 = "*_";
  }

  else
  {
    v2 = &unk_1EBBDD180;
    v3 = &qword_1B99F6228;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_1B99D72D4(uint64_t a1, uint64_t a2)
{
  sub_1B99D725C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F8020;
  *(inited + 32) = sub_1B99BE9A8(0, &qword_1EBBDD118, 0x1E695DF20);
  *(inited + 40) = sub_1B99BE9A8(0, &qword_1EBBDD120, 0x1E696AEC0);
  *(inited + 48) = sub_1B99BE9A8(0, &qword_1EBBDD128, 0x1E696AD98);
  *(inited + 56) = sub_1B99BE9A8(0, &qword_1EBBDD130, 0x1E695DEC8);
  *(inited + 64) = sub_1B99BE9A8(0, &qword_1EBBDD138, 0x1E695DF00);
  *(inited + 72) = sub_1B99BE9A8(0, &qword_1EBBDD140, 0x1E695DEF0);
  *(inited + 80) = sub_1B99BE9A8(0, &qword_1EBBDD148, 0x1E695DFD8);
  *(inited + 88) = sub_1B99BE9A8(0, &qword_1EBBDD150, 0x1E695DFB8);
  *(inited + 96) = sub_1B99BE9A8(0, &qword_1EBBDD158, 0x1E695DFB0);
  *(inited + 104) = sub_1B99BE9A8(0, &unk_1EBBDD160, 0x1E695DFF8);
  sub_1B99BE9A8(0, &qword_1EBBDCFF0, 0x1E696ACD0);
  sub_1B99CB34C(inited);

  sub_1B99F40F4();

  if (!v2)
  {
    if (v5[3])
    {
      if (swift_dynamicCast())
      {
        return v5[19];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B99AC2C8(v5);
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B99D74FC()
{
  result = qword_1EBBDCFF8;
  if (!qword_1EBBDCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCFF8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1B99D75A0()
{
  result = qword_1EBBDD008;
  if (!qword_1EBBDD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD008);
  }

  return result;
}

uint64_t sub_1B99D761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B99D76D4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1B99D83F0(a2, a3, a4);
  if (!v4)
  {
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1B99D7760(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B99F4424();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B99D77B4(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1B99D77E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99D7854(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B99D78C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99D7930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99D79A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B99D7760(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B99D79D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B99D77B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B99D7A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B99D7760(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B99D7A2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B99AD078();
  *a1 = result;
  return result;
}

uint64_t sub_1B99D7A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B99D7AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TypedCodingEnvelope<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v5 = a1;
  v40 = a4;
  v39 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TypedCodingEnvelope.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v44 = sub_1B99F4484();
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v35 - v10;
  v14 = type metadata accessor for TypedCodingEnvelope(0, a2, v12, v13);
  v38 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v17 = v45;
  sub_1B99F4A74();
  if (v17)
  {
    goto LABEL_9;
  }

  v36 = v16;
  v37 = v14;
  v45 = v5;
  v18 = v42;
  v19 = v41;
  v48 = 0;
  v20 = sub_1B99F4464();
  v22 = v21;
  v35 = v11;
  v23 = a2;
  v46 = a2;
  swift_getMetatypeMetadata();
  v24 = sub_1B99F3C54();
  v26 = v25;
  if (v20 != v24 || v22 != v25)
  {
    v28 = v24;
    if ((sub_1B99F4704() & 1) == 0)
    {
      sub_1B99D7F04();
      swift_allocError();
      *v33 = v28;
      v33[1] = v26;
      v33[2] = v20;
      v33[3] = v22;
      swift_willThrow();
      (*(v19 + 8))(v35, v44);
      v5 = v45;
LABEL_9:
      v32 = v5;
      return __swift_destroy_boxed_opaque_existential_1(v32);
    }
  }

  v47 = 1;
  v29 = v44;
  v30 = v35;
  sub_1B99F4474();
  (*(v19 + 8))(v30, v29);
  v31 = v36;
  (*(v39 + 32))(v36, v18, v23);
  (*(v38 + 32))(v40, v31, v37);
  v32 = v45;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

unint64_t sub_1B99D7F04()
{
  result = qword_1EBBDD1F0[0];
  if (!qword_1EBBDD1F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBDD1F0);
  }

  return result;
}

uint64_t TypedCodingEnvelope<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TypedCodingEnvelope.CodingKeys(255, v4, v8, v9);
  swift_getWitnessTable();
  v19 = sub_1B99F44C4();
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v20;
  sub_1B99F4AA4();
  (*(v5 + 16))(v7, v12, v4);
  DynamicType = swift_getDynamicType();
  (*(v5 + 8))(v7, v4);
  v25 = DynamicType;
  v14 = v19;
  swift_getMetatypeMetadata();
  sub_1B99F3C54();
  v24 = 0;
  v15 = v22;
  sub_1B99F44A4();
  if (v15)
  {
    (*(v21 + 8))(v11, v14);
  }

  else
  {
    v17 = v21;

    v23 = 1;
    sub_1B99F44B4();
    return (*(v17 + 8))(v11, v14);
  }
}

uint64_t sub_1B99D8280@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v13 = a5;
  v8 = type metadata accessor for TypedCodingEnvelope(0, a3, a2, a3);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1B99F3684();
  swift_allocObject();
  sub_1B99F3674();
  v14 = a4;
  swift_getWitnessTable();
  sub_1B99F3664();

  if (!v5)
  {
    return (*(*(a3 - 8) + 32))(v13, v10, a3);
  }

  return result;
}

uint64_t sub_1B99D83F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TypedCodingEnvelope(0, v9, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  sub_1B99F36C4();
  swift_allocObject();
  sub_1B99F36B4();
  sub_1B99F3694();
  (*(v6 + 16))(v8, a1, a2);
  (*(v6 + 32))(v15, v8, a2);
  v18[3] = a3;
  swift_getWitnessTable();
  v16 = sub_1B99F36A4();
  (*(v13 + 8))(v15, v12);

  return v16;
}

uint64_t sub_1B99D876C(uint64_t a1)
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

uint64_t sub_1B99D8800(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F4A34();
  MEMORY[0x1EEE9AC00](v9);
  v10 = a1[3];
  v15 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = a2;
  v11[5] = a3;
  v12 = *(v7 + 40);

  v12(v14, sub_1B99D9130, v11, v10, v15, v8, v7);
}

uint64_t sub_1B99D8A60(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v39 = a2;
  v37 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v35 - v8;
  v9 = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v10 = sub_1B99F4A34();
  v41 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v35 - v18;
  swift_getAssociatedConformanceWitness();
  v20 = sub_1B99F4A34();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  (*(v23 + 16))(&v35 - v21, v37, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v10;
    v24 = v39;
    v25 = v40;
    v26 = *(v40 + 32);
    v27 = v42;
    v26(v42, v22, AssociatedTypeWitness);
    v28 = v36;
    (*(v25 + 16))(v36, v27, AssociatedTypeWitness);
    v29 = sub_1B99F46D4();
    if (v29)
    {
      v30 = v29;
      v31 = v40;
      (*(v40 + 8))(v28, AssociatedTypeWitness);
    }

    else
    {
      v30 = swift_allocError();
      v26(v33, v28, AssociatedTypeWitness);
      v31 = v40;
    }

    *v13 = v30;
    v34 = v37;
    swift_storeEnumTagMultiPayload();
    v24(v13);
    (*(v41 + 8))(v13, v34);
    return (*(v31 + 8))(v42, AssociatedTypeWitness);
  }

  else
  {
    (*(v17 + 32))(v19, v22, v9);
    (*(v17 + 16))(v16, v19, v9);
    swift_storeEnumTagMultiPayload();
    v39(v16);
    (*(v41 + 8))(v16, v10);
    return (*(v17 + 8))(v19, v9);
  }
}

char *sub_1B99D8F3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[10];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = v3[12];
  (*(v5 + 16))(&v11 - v6, &v2[v8], v4);
  (*(v3[11] + 48))(0xD000000000000023, 0x80000001B99FAA50, v4);
  v9 = *(v5 + 8);
  v9(v7, v4);
  v9(&v2[v8], v4);
  return v2;
}

uint64_t sub_1B99D909C(uint64_t a1)
{
  sub_1B99D8F3C(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1B99D913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B99F4A34();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  (*(v20 + 16))(&v23 - v18, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v16, v19, a4);
    return sub_1B99DA2D8(v16, v24, a3, a4, a5);
  }

  else
  {
    v22 = *(v9 + 32);
    v22(v12, v19, a3);
    v22(*(*(v24 + 64) + 40), v12, a3);
    return swift_continuation_throwingResume();
  }
}

uint64_t MessageSender.__allocating_init<A, B, C>(encoder:decoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_allocObject();
  v15 = sub_1B99DA36C(a1, a2, a3, a4, a5, a6);
  (*(*(a6 - 8) + 8))(a3, a6);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v15;
}

uint64_t MessageSender.init<A, B, C>(encoder:decoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_1B99DA36C(a1, a2, a3, a4, a5, a6);
  (*(*(a6 - 8) + 8))(a3, a6);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v15;
}

uint64_t sub_1B99D9630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v11);
  return (*(v12 + 8))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t sub_1B99D96BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99D96E4, 0, 0);
}

uint64_t sub_1B99D96E4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_1B99B4C34;
  v6 = *(v0 + 16);

  return sub_1B99B1B48(v6, 0, 0, sub_1B99DA5B8, v3);
}

uint64_t sub_1B99D9804(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v12 + 8))(a3, sub_1B99DA8DC, v10, a4, a5, v11, v12);
}

uint64_t sub_1B99D98D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v8 = MEMORY[0x1E69E7288];

  return sub_1B99D913C(a1, a2, AssociatedTypeWitness, v7, v8);
}

uint64_t MessageSender.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t *sub_1B99D99E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  (*(*(*(*v3 + 96) - 8) + 32))(v3 + *(*v3 + 128), a3);
  (*(*(*(v6 + 80) - 8) + 32))(v3 + *(*v3 + 136), a1);
  (*(*(*(v6 + 88) - 8) + 32))(v3 + *(*v3 + 144), a2);
  return v3;
}

uint64_t sub_1B99D9B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v23 = *v5;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v8 = sub_1B99F4A34();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v23[13];
  v10 = v23[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v21 - v12;
  v14 = *(v9 + 16);
  v24 = a5;
  v14(v25, a4, *(a5 + 16), v10, v9);
  v15 = swift_allocObject();
  v16 = v24;
  v15[2] = a4;
  v15[3] = v16;
  v15[4] = v26;
  v15[5] = v27;
  v15[6] = v5;
  v17 = v23[15];
  v18 = *(v17 + 24);
  v19 = v23[12];

  v18(v13, sub_1B99DA8AC, v15, v19, v17);

  return (*(v21 + 8))(v13, v22);
}

uint64_t sub_1B99D9E68(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v15[2] = a3;
  v16 = a2;
  v15[1] = a1;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F4A34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  v17 = a5;
  v18 = a6;
  v19 = a4;
  swift_getAssociatedTypeWitness();
  v13 = sub_1B99F4A34();
  Result<>.foundation_tryMap<A>(_:)(v13, v12);
  v16(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B99DA038(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(v4 + 112);
  v7 = *(v6 + 16);
  v8 = *(v4 + 88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return v7(AssociatedTypeWitness, a1, AssociatedTypeWitness, AssociatedConformanceWitness, v8, v6);
}

uint64_t *sub_1B99DA140()
{
  v1 = *v0;
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 128));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_1B99DA260()
{
  v0 = sub_1B99DA140();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B99DA2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v7, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B99DA36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v32 = a1;
  v33 = a2;
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v22;
  v36[1] = v23;
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v36[5] = v27;
  v28 = type metadata accessor for InternalMessageSender(0, v36);
  (*(v19 + 16))(v21, v32, a4);
  (*(v14 + 16))(v17, v33, a5);
  (*(v9 + 16))(v12, v35, a6);
  swift_allocObject();
  v29 = sub_1B99D99E0(v21, v17, v12);
  v30 = v34;
  *(v34 + 40) = v28;
  *(v30 + 48) = &off_1F37B2FC8;
  *(v30 + 16) = v29;
  return v30;
}

uint64_t dispatch thunk of MessageSender.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 104) + **(*v4 + 104));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B99A3EB8;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1B99DA784(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

id ExponentialRetryScheduler.__allocating_init(maxRetries:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithMaxRetries:a1 power:2.0];
}

id ExponentialRetryScheduler.__allocating_init(maxRetries:power:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = objc_allocWithZone(v2);
  v7 = ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)(a1, v9, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id ExponentialRetryScheduler.init(maxRetries:power:)(uint64_t a1, uint64_t a2, double a3)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v5 = objc_allocWithZone(swift_getObjectType());
  v6 = ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)(a1, v8, a3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_1B99DAAF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99DAB60()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1B99DB0F4;
  }

  else
  {
    v2 = sub_1B99DAC74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99DAC74()
{
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_1B99F3974();
  *(v0 + 248) = __swift_project_value_buffer(v2, qword_1ED99EC18);
  v3 = v1;
  v4 = sub_1B99F3954();
  v5 = sub_1B99F40D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = *&v6[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v6[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v4, v5, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v7, 0xEu);
    MEMORY[0x1BFAE1C50](v7, -1, -1);
  }

  else
  {

    v4 = *(v0 + 184);
  }

  v8 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  *(v0 + 256) = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  *(v0 + 264) = v8;
  sub_1B99A183C(v0 + 16, v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  v9 = *(v0 + 224);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 272) = v9;
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    v10 = *(v0 + 184);
    v11 = *&v10[*(v0 + 256)];
    v12 = *&v10[*(v0 + 264)];
    *(v0 + 280) = v12;
    if (v11 < v12)
    {
      v13 = v10;
      v14 = sub_1B99F3954();
      v15 = sub_1B99F40D4();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 184);
      if (v16)
      {
        v18 = swift_slowAlloc();
        *v18 = 134218240;
        *(v18 + 4) = v11;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v12;

        _os_log_impl(&dword_1B99A0000, v14, v15, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v18, 0x16u);
        MEMORY[0x1BFAE1C50](v18, -1, -1);
      }

      else
      {
      }

      v27 = swift_task_alloc();
      *(v0 + 288) = v27;
      *v27 = v0;
      v27[1] = sub_1B99DB564;
      v28 = *(v0 + 192);
      v29 = *(v0 + 200);
      v30 = *(v0 + 184);

      return sub_1B99DE050(v0 + 112, v30, v28, v29);
    }

    v9 = *(v0 + 272);
  }

  else
  {
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v0 + 16, v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 104) == 1)
  {
    sub_1B99A18A4(v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v19 = sub_1B99F40C4();
    v20 = sub_1B99F3954();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B99A0000, v20, v19, "All retry failed", v21, 2u);
      MEMORY[0x1BFAE1C50](v21, -1, -1);
    }

    v22 = *(v0 + 224);

    swift_willThrow();
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v23 = *(v0 + 8);
  }

  else
  {
    v24 = *(v0 + 224);
    v25 = *(v0 + 144);
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v31 = *(v0 + 96);
    *v25 = *(v0 + 80);
    v25[1] = v31;

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_1B99DB0F4()
{
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = sub_1B99F3974();
  __swift_project_value_buffer(v2, qword_1ED99EC18);
  v3 = v1;
  v4 = sub_1B99F3954();
  v5 = sub_1B99F40D4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B99A0000, v4, v5, "errorHandler returned error: %@, retry will NOT continue.", v8, 0xCu);
    sub_1B99A18A4(v9, &qword_1EBBDD2A0, &qword_1B99F8738);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
    MEMORY[0x1BFAE1C50](v8, -1, -1);
  }

  else
  {
  }

  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 184);
  *(v0 + 248) = __swift_project_value_buffer(v2, qword_1ED99EC18);
  v13 = v12;
  v14 = sub_1B99F3954();
  v15 = sub_1B99F40D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 184);
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 8) = 1024;
    *(v17 + 10) = *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v14, v15, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v17, 0xEu);
    MEMORY[0x1BFAE1C50](v17, -1, -1);
  }

  else
  {

    v14 = *(v0 + 184);
  }

  v18 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  *(v0 + 256) = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  *(v0 + 264) = v18;
  sub_1B99A183C(v0 + 16, v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  v19 = *(v0 + 224);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 272) = v19;
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    v19 = *(v0 + 272);
  }

  else
  {
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v0 + 16, v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 104) == 1)
  {
    sub_1B99A18A4(v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v20 = sub_1B99F40C4();
    v21 = sub_1B99F3954();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B99A0000, v21, v20, "All retry failed", v22, 2u);
      MEMORY[0x1BFAE1C50](v22, -1, -1);
    }

    v23 = *(v0 + 224);

    swift_willThrow();
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v24 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 224);
    v26 = *(v0 + 144);
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v28 = *(v0 + 96);
    *v26 = *(v0 + 80);
    v26[1] = v28;

    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_1B99DB564()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1B99DBAA8;
  }

  else
  {
    v2 = sub_1B99DB678;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99DB678()
{
  v1 = *(v0 + 184);
  sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);
  v2 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v2;
  v3 = v1;
  v4 = sub_1B99F3954();
  v5 = sub_1B99F40D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *&v8[v7];
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;

    _os_log_impl(&dword_1B99A0000, v4, v5, "Retry succeeded at index: %ld, maxRetry: %ld", v9, 0x16u);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
  }

  else
  {
  }

  sub_1B99A183C(v0 + 16, v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 72) == 1)
  {
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    v10 = *(v0 + 184);
    v11 = *&v10[*(v0 + 256)];
    v12 = *&v10[*(v0 + 264)];
    *(v0 + 280) = v12;
    if (v11 < v12)
    {
      v13 = v10;
      v14 = sub_1B99F3954();
      v15 = sub_1B99F40D4();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 184);
      if (v16)
      {
        v18 = swift_slowAlloc();
        *v18 = 134218240;
        *(v18 + 4) = v11;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v12;

        _os_log_impl(&dword_1B99A0000, v14, v15, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v18, 0x16u);
        MEMORY[0x1BFAE1C50](v18, -1, -1);
      }

      else
      {
      }

      v28 = swift_task_alloc();
      *(v0 + 288) = v28;
      *v28 = v0;
      v28[1] = sub_1B99DB564;
      v29 = *(v0 + 192);
      v30 = *(v0 + 200);
      v31 = *(v0 + 184);

      return sub_1B99DE050(v0 + 112, v31, v29, v30);
    }

    v19 = *(v0 + 272);
  }

  else
  {
    v19 = *(v0 + 272);
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v0 + 16, v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 104) == 1)
  {
    sub_1B99A18A4(v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v20 = sub_1B99F40C4();
    v21 = sub_1B99F3954();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B99A0000, v21, v20, "All retry failed", v22, 2u);
      MEMORY[0x1BFAE1C50](v22, -1, -1);
    }

    v23 = *(v0 + 224);

    swift_willThrow();
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v24 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 224);
    v26 = *(v0 + 144);
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v32 = *(v0 + 96);
    *v26 = *(v0 + 80);
    v26[1] = v32;

    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_1B99DBAA8(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = sub_1B99F40C4();
  v4 = v2;
  v5 = sub_1B99F3954();
  if (os_log_type_enabled(v5, v3))
  {
    v6 = *(v1 + 280);
    v7 = *(v1 + 256);
    v8 = *(v1 + 184);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *&v8[v7];
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;

    _os_log_impl(&dword_1B99A0000, v5, v3, "Error occurred during retry at index: %ld, maxRetry: %ld", v9, 0x16u);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v1 + 152);
  if (v10)
  {
    v11 = v10(*(v1 + 296));
  }

  else
  {
    v11 = 1;
  }

  sub_1B99A183C(v1 + 16, v1 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  v12 = *(v1 + 296);
  if (*(v1 + 72) == 1)
  {
    *(v1 + 272) = v12;
    sub_1B99A18A4(v1 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    if (v11)
    {
      v13 = *(v1 + 184);
      v14 = *&v13[*(v1 + 256)];
      v15 = *&v13[*(v1 + 264)];
      *(v1 + 280) = v15;
      if (v14 < v15)
      {
        v16 = v13;
        v17 = sub_1B99F3954();
        v18 = sub_1B99F40D4();
        v19 = os_log_type_enabled(v17, v18);
        v20 = *(v1 + 184);
        if (v19)
        {
          v21 = swift_slowAlloc();
          *v21 = 134218240;
          *(v21 + 4) = v14;
          *(v21 + 12) = 2048;
          *(v21 + 14) = v15;

          _os_log_impl(&dword_1B99A0000, v17, v18, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v21, 0x16u);
          MEMORY[0x1BFAE1C50](v21, -1, -1);
        }

        else
        {
        }

        v30 = swift_task_alloc();
        *(v1 + 288) = v30;
        *v30 = v1;
        v30[1] = sub_1B99DB564;
        v31 = *(v1 + 192);
        v32 = *(v1 + 200);
        v33 = *(v1 + 184);

        return sub_1B99DE050(v1 + 112, v33, v31, v32);
      }
    }

    v12 = *(v1 + 272);
  }

  else
  {
    sub_1B99A18A4(v1 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v1 + 16, v1 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v1 + 104) == 1)
  {
    sub_1B99A18A4(v1 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v22 = sub_1B99F40C4();
    v23 = sub_1B99F3954();
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B99A0000, v23, v22, "All retry failed", v24, 2u);
      MEMORY[0x1BFAE1C50](v24, -1, -1);
    }

    v25 = *(v1 + 224);

    swift_willThrow();
    sub_1B99A18A4(v1 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v26 = *(v1 + 8);
  }

  else
  {
    v27 = *(v1 + 224);
    v28 = *(v1 + 144);
    sub_1B99A18A4(v1 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v34 = *(v1 + 96);
    *v28 = *(v1 + 80);
    v28[1] = v34;

    v26 = *(v1 + 8);
  }

  return v26();
}

uint64_t ExponentialRetryScheduler.schedule<A>(_:shouldRetry:willRetry:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v9;
  v11[9] = a8;
  v11[10] = v8;
  v11[7] = a6;
  v11[8] = a7;
  v11[5] = a4;
  v11[6] = a5;
  v11[3] = a2;
  v11[4] = a3;
  v11[2] = a1;
  v11[11] = *(a8 - 8);
  v11[12] = swift_task_alloc();
  v13 = sub_1B99F41C4();
  v11[13] = v13;
  v11[14] = *(v13 - 8);
  v11[15] = swift_task_alloc();
  v11[16] = swift_task_alloc();
  v11[17] = swift_task_alloc();
  v11[18] = swift_task_alloc();
  v16 = (a2 + *a2);
  v14 = swift_task_alloc();
  v11[19] = v14;
  *v14 = v11;
  v14[1] = sub_1B99DC0E8;

  return v16(a1);
}

uint64_t sub_1B99DC0E8()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99DC25C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B99DC25C()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = *(v2 + 56);
  v0[21] = v5;
  v0[22] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v6 = v0[20];
  if (v4)
  {
    v7 = v0[5];
    v8 = v6;
    if ((v7(v6) & 1) == 0)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
  }

  v11 = v0[7];
  if (v11)
  {
    v68 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[23] = v12;
    *v12 = v0;
    v12[1] = sub_1B99DC914;
    v13 = v0[20];

    return v68(v13);
  }

  v9 = 1;
LABEL_10:
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v15 = v0[10];
  v16 = sub_1B99F3974();
  v0[25] = __swift_project_value_buffer(v16, qword_1ED99EC18);
  v17 = v15;
  v18 = sub_1B99F3954();
  v19 = sub_1B99F40D4();
  v69 = v9;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[10];
    v21 = swift_slowAlloc();
    *v21 = 67109376;
    *(v21 + 4) = v9;
    *(v21 + 8) = 1024;
    *(v21 + 10) = *&v20[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v20[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v18, v19, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v21, 0xEu);
    MEMORY[0x1BFAE1C50](v21, -1, -1);
  }

  else
  {

    v18 = v0[10];
  }

  v23 = v0[17];
  v22 = v0[18];
  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[11];
  v27 = v0[9];

  v28 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  v0[26] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[27] = v28;
  v29 = *(v25 + 16);
  v0[28] = v29;
  v29(v23, v22, v24);
  v30 = *(v26 + 48);
  v0[29] = v30;
  v31 = v30(v23, 1, v27);
  v32 = *(v25 + 8);
  v0[30] = v32;
  if (v31 == 1)
  {
    v33 = v0[17];
    v34 = v0[13];
    v35 = (v0[14] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v0[31] = v0[20];
    v0[32] = v35;
    v32(v33, v34);
    if (v69)
    {
      v36 = v0[10];
      v37 = *&v36[v0[26]];
      v38 = *&v36[v0[27]];
      v0[33] = v38;
      if (v37 < v38)
      {
        v39 = v36;
        v40 = sub_1B99F3954();
        v41 = sub_1B99F40D4();
        v42 = os_log_type_enabled(v40, v41);
        v43 = v0[10];
        if (v42)
        {
          v44 = swift_slowAlloc();
          *v44 = 134218240;
          *(v44 + 4) = v37;
          *(v44 + 12) = 2048;
          *(v44 + 14) = v38;

          _os_log_impl(&dword_1B99A0000, v40, v41, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v44, 0x16u);
          MEMORY[0x1BFAE1C50](v44, -1, -1);
        }

        else
        {
        }

        v64 = swift_task_alloc();
        v0[34] = v64;
        *v64 = v0;
        v64[1] = sub_1B99DCF8C;
        v65 = v0[16];
        v66 = v0[3];
        v67 = v0[4];

        return sub_1B99DE784(v65, v66, v67);
      }
    }

    v45 = v0[31];
  }

  else
  {
    v45 = v0[20];
    v32(v0[17], v0[13]);
  }

  v46 = v0[29];
  v47 = v0[15];
  v48 = v0[9];
  (v0[28])(v47, v0[18], v0[13]);
  if (v46(v47, 1, v48) == 1)
  {
    (v0[30])(v0[15], v0[13]);
    v49 = sub_1B99F40C4();
    v50 = sub_1B99F3954();
    if (os_log_type_enabled(v50, v49))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B99A0000, v50, v49, "All retry failed", v51, 2u);
      MEMORY[0x1BFAE1C50](v51, -1, -1);
    }

    v52 = v0[30];
    v53 = v0[20];
    v54 = v0[18];
    v55 = v0[13];

    swift_willThrow();
    v52(v54, v55);

    v56 = v0[1];
  }

  else
  {
    v57 = v0[20];
    v58 = v0[15];
    v59 = v0[12];
    v60 = v0[11];
    v61 = v0[9];
    v62 = v0[2];
    (v0[30])(v0[18], v0[13]);

    v63 = *(v60 + 32);
    v63(v59, v58, v61);
    v63(v62, v59, v61);

    v56 = v0[1];
  }

  return v56();
}

uint64_t sub_1B99DC914()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1B99DD5D8;
  }

  else
  {
    v2 = sub_1B99DCA28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99DCA28()
{
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1B99F3974();
  v0[25] = __swift_project_value_buffer(v2, qword_1ED99EC18);
  v3 = v1;
  v4 = sub_1B99F3954();
  v5 = sub_1B99F40D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = *&v6[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v6[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v4, v5, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v7, 0xEu);
    MEMORY[0x1BFAE1C50](v7, -1, -1);
  }

  else
  {

    v4 = v0[10];
  }

  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[9];

  v14 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  v0[26] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[27] = v14;
  v15 = *(v11 + 16);
  v0[28] = v15;
  v15(v9, v8, v10);
  v16 = *(v12 + 48);
  v0[29] = v16;
  v17 = v16(v9, 1, v13);
  v18 = *(v11 + 8);
  v0[30] = v18;
  if (v17 == 1)
  {
    v19 = v0[17];
    v20 = v0[13];
    v21 = (v0[14] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v0[31] = v0[20];
    v0[32] = v21;
    v18(v19, v20);
    v22 = v0[10];
    v23 = *&v22[v0[26]];
    v24 = *&v22[v0[27]];
    v0[33] = v24;
    if (v23 < v24)
    {
      v25 = v22;
      v26 = sub_1B99F3954();
      v27 = sub_1B99F40D4();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[10];
      if (v28)
      {
        v30 = swift_slowAlloc();
        *v30 = 134218240;
        *(v30 + 4) = v23;
        *(v30 + 12) = 2048;
        *(v30 + 14) = v24;

        _os_log_impl(&dword_1B99A0000, v26, v27, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v30, 0x16u);
        MEMORY[0x1BFAE1C50](v30, -1, -1);
      }

      else
      {
      }

      v51 = swift_task_alloc();
      v0[34] = v51;
      *v51 = v0;
      v51[1] = sub_1B99DCF8C;
      v52 = v0[16];
      v53 = v0[3];
      v54 = v0[4];

      return sub_1B99DE784(v52, v53, v54);
    }

    v31 = v0[31];
  }

  else
  {
    v31 = v0[20];
    v18(v0[17], v0[13]);
  }

  v32 = v0[29];
  v33 = v0[15];
  v34 = v0[9];
  (v0[28])(v33, v0[18], v0[13]);
  if (v32(v33, 1, v34) == 1)
  {
    (v0[30])(v0[15], v0[13]);
    v35 = sub_1B99F40C4();
    v36 = sub_1B99F3954();
    if (os_log_type_enabled(v36, v35))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1B99A0000, v36, v35, "All retry failed", v37, 2u);
      MEMORY[0x1BFAE1C50](v37, -1, -1);
    }

    v38 = v0[30];
    v39 = v0[20];
    v40 = v0[18];
    v41 = v0[13];

    swift_willThrow();
    v38(v40, v41);

    v42 = v0[1];
  }

  else
  {
    v43 = v0[20];
    v44 = v0[15];
    v45 = v0[12];
    v46 = v0[11];
    v47 = v0[9];
    v48 = v0[2];
    (v0[30])(v0[18], v0[13]);

    v49 = *(v46 + 32);
    v49(v45, v44, v47);
    v49(v48, v45, v47);

    v42 = v0[1];
  }

  return v42();
}

uint64_t sub_1B99DCF8C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1B99DDB34;
  }

  else
  {
    v2 = sub_1B99DD0A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99DD0A0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  (*(v0 + 240))(v2, v4);
  v1(v3, 0, 1, v6);
  (*(v5 + 32))(v2, v3, v4);
  v8 = v7;
  v9 = sub_1B99F3954();
  v10 = sub_1B99F40D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 264);
    v12 = *(v0 + 208);
    v13 = *(v0 + 80);
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = *&v13[v12];
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;

    _os_log_impl(&dword_1B99A0000, v9, v10, "Retry succeeded at index: %ld, maxRetry: %ld", v14, 0x16u);
    MEMORY[0x1BFAE1C50](v14, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 136);
  v17 = *(v0 + 72);
  (*(v0 + 224))(v16, *(v0 + 144), *(v0 + 104));
  if (v15(v16, 1, v17) == 1)
  {
    v18 = *(v0 + 240);
    v19 = *(v0 + 136);
    v20 = *(v0 + 104);
    *(v0 + 256) = (*(v0 + 112) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v19, v20);
    v21 = *(v0 + 80);
    v22 = *&v21[*(v0 + 208)];
    v23 = *&v21[*(v0 + 216)];
    *(v0 + 264) = v23;
    if (v22 < v23)
    {
      v24 = v21;
      v25 = sub_1B99F3954();
      v26 = sub_1B99F40D4();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 80);
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 134218240;
        *(v29 + 4) = v22;
        *(v29 + 12) = 2048;
        *(v29 + 14) = v23;

        _os_log_impl(&dword_1B99A0000, v25, v26, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v29, 0x16u);
        MEMORY[0x1BFAE1C50](v29, -1, -1);
      }

      else
      {
      }

      v50 = swift_task_alloc();
      *(v0 + 272) = v50;
      *v50 = v0;
      v50[1] = sub_1B99DCF8C;
      v51 = *(v0 + 128);
      v52 = *(v0 + 24);
      v53 = *(v0 + 32);

      return sub_1B99DE784(v51, v52, v53);
    }

    v30 = *(v0 + 248);
  }

  else
  {
    v30 = *(v0 + 248);
    (*(v0 + 240))(*(v0 + 136), *(v0 + 104));
  }

  v31 = *(v0 + 232);
  v32 = *(v0 + 120);
  v33 = *(v0 + 72);
  (*(v0 + 224))(v32, *(v0 + 144), *(v0 + 104));
  if (v31(v32, 1, v33) == 1)
  {
    (*(v0 + 240))(*(v0 + 120), *(v0 + 104));
    v34 = sub_1B99F40C4();
    v35 = sub_1B99F3954();
    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1B99A0000, v35, v34, "All retry failed", v36, 2u);
      MEMORY[0x1BFAE1C50](v36, -1, -1);
    }

    v37 = *(v0 + 240);
    v38 = *(v0 + 160);
    v39 = *(v0 + 144);
    v40 = *(v0 + 104);

    swift_willThrow();
    v37(v39, v40);

    v41 = *(v0 + 8);
  }

  else
  {
    v42 = *(v0 + 160);
    v43 = *(v0 + 120);
    v44 = *(v0 + 96);
    v45 = *(v0 + 88);
    v46 = *(v0 + 72);
    v47 = *(v0 + 16);
    (*(v0 + 240))(*(v0 + 144), *(v0 + 104));

    v48 = *(v45 + 32);
    v48(v44, v43, v46);
    v48(v47, v44, v46);

    v41 = *(v0 + 8);
  }

  return v41();
}

uint64_t sub_1B99DD5D8()
{
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1B99F3974();
  __swift_project_value_buffer(v2, qword_1ED99EC18);
  v3 = v1;
  v4 = sub_1B99F3954();
  v5 = sub_1B99F40D4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B99A0000, v4, v5, "errorHandler returned error: %@, retry will NOT continue.", v8, 0xCu);
    sub_1B99A18A4(v9, &qword_1EBBDD2A0, &qword_1B99F8738);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
    MEMORY[0x1BFAE1C50](v8, -1, -1);
  }

  else
  {
  }

  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v12 = v0[10];
  v0[25] = __swift_project_value_buffer(v2, qword_1ED99EC18);
  v13 = v12;
  v14 = sub_1B99F3954();
  v15 = sub_1B99F40D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[10];
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 8) = 1024;
    *(v17 + 10) = *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v14, v15, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v17, 0xEu);
    MEMORY[0x1BFAE1C50](v17, -1, -1);
  }

  else
  {

    v14 = v0[10];
  }

  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[11];
  v23 = v0[9];

  v24 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  v0[26] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[27] = v24;
  v25 = *(v21 + 16);
  v0[28] = v25;
  v25(v19, v18, v20);
  v26 = *(v22 + 48);
  v0[29] = v26;
  v27 = v26(v19, 1, v23);
  v28 = *(v21 + 8);
  v0[30] = v28;
  if (v27 == 1)
  {
    v29 = v0[17];
    v30 = v0[13];
    v31 = (v0[14] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v0[31] = v0[20];
    v0[32] = v31;
    v28(v29, v30);
    v32 = v0[31];
  }

  else
  {
    v32 = v0[20];
    v28(v0[17], v0[13]);
  }

  v33 = v0[29];
  v34 = v0[15];
  v35 = v0[9];
  (v0[28])(v34, v0[18], v0[13]);
  if (v33(v34, 1, v35) == 1)
  {
    (v0[30])(v0[15], v0[13]);
    v36 = sub_1B99F40C4();
    v37 = sub_1B99F3954();
    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B99A0000, v37, v36, "All retry failed", v38, 2u);
      MEMORY[0x1BFAE1C50](v38, -1, -1);
    }

    v39 = v0[30];
    v40 = v0[20];
    v41 = v0[18];
    v42 = v0[13];

    swift_willThrow();
    v39(v41, v42);

    v43 = v0[1];
  }

  else
  {
    v44 = v0[20];
    v45 = v0[15];
    v46 = v0[12];
    v47 = v0[11];
    v48 = v0[9];
    v49 = v0[2];
    (v0[30])(v0[18], v0[13]);

    v50 = *(v47 + 32);
    v50(v46, v45, v48);
    v50(v49, v46, v48);

    v43 = v0[1];
  }

  return v43();
}

uint64_t sub_1B99DDB34(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = sub_1B99F40C4();
  v4 = v2;
  v5 = sub_1B99F3954();
  if (os_log_type_enabled(v5, v3))
  {
    v6 = *(v1 + 264);
    v7 = *(v1 + 208);
    v8 = *(v1 + 80);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *&v8[v7];
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;

    _os_log_impl(&dword_1B99A0000, v5, v3, "Error occurred during retry at index: %ld, maxRetry: %ld", v9, 0x16u);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v1 + 40);
  if (v10)
  {
    v11 = v10(*(v1 + 280));
  }

  else
  {
    v11 = 1;
  }

  v13 = *(v1 + 224);
  v12 = *(v1 + 232);
  v15 = *(v1 + 136);
  v14 = *(v1 + 144);
  v16 = *(v1 + 104);
  v17 = *(v1 + 72);

  v13(v15, v14, v16);
  v18 = v12(v15, 1, v17);
  v19 = *(v1 + 280);
  if (v18 == 1)
  {
    v20 = *(v1 + 240);
    v21 = *(v1 + 136);
    v22 = *(v1 + 104);
    v23 = (*(v1 + 112) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    *(v1 + 248) = v19;
    *(v1 + 256) = v23;
    v20(v21, v22);
    if (v11)
    {
      v24 = *(v1 + 80);
      v25 = *&v24[*(v1 + 208)];
      v26 = *&v24[*(v1 + 216)];
      *(v1 + 264) = v26;
      if (v25 < v26)
      {
        v27 = v24;
        v28 = sub_1B99F3954();
        v29 = sub_1B99F40D4();
        v30 = os_log_type_enabled(v28, v29);
        v31 = *(v1 + 80);
        if (v30)
        {
          v32 = swift_slowAlloc();
          *v32 = 134218240;
          *(v32 + 4) = v25;
          *(v32 + 12) = 2048;
          *(v32 + 14) = v26;

          _os_log_impl(&dword_1B99A0000, v28, v29, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v32, 0x16u);
          MEMORY[0x1BFAE1C50](v32, -1, -1);
        }

        else
        {
        }

        v52 = swift_task_alloc();
        *(v1 + 272) = v52;
        *v52 = v1;
        v52[1] = sub_1B99DCF8C;
        v53 = *(v1 + 128);
        v54 = *(v1 + 24);
        v55 = *(v1 + 32);

        return sub_1B99DE784(v53, v54, v55);
      }
    }

    v19 = *(v1 + 248);
  }

  else
  {
    (*(v1 + 240))(*(v1 + 136), *(v1 + 104));
  }

  v33 = *(v1 + 232);
  v34 = *(v1 + 120);
  v35 = *(v1 + 72);
  (*(v1 + 224))(v34, *(v1 + 144), *(v1 + 104));
  if (v33(v34, 1, v35) == 1)
  {
    (*(v1 + 240))(*(v1 + 120), *(v1 + 104));
    v36 = sub_1B99F40C4();
    v37 = sub_1B99F3954();
    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B99A0000, v37, v36, "All retry failed", v38, 2u);
      MEMORY[0x1BFAE1C50](v38, -1, -1);
    }

    v39 = *(v1 + 240);
    v40 = *(v1 + 160);
    v41 = *(v1 + 144);
    v42 = *(v1 + 104);

    swift_willThrow();
    v39(v41, v42);

    v43 = *(v1 + 8);
  }

  else
  {
    v44 = *(v1 + 160);
    v45 = *(v1 + 120);
    v46 = *(v1 + 96);
    v47 = *(v1 + 88);
    v48 = *(v1 + 72);
    v49 = *(v1 + 16);
    (*(v1 + 240))(*(v1 + 144), *(v1 + 104));

    v50 = *(v47 + 32);
    v50(v46, v45, v48);
    v50(v49, v46, v48);

    v43 = *(v1 + 8);
  }

  return v43();
}

uint64_t sub_1B99DE050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99DE074, 0, 0);
}

uint64_t sub_1B99DE074()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR___AAFExponentialRetryScheduler_power);
  v3 = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[6] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v4 = pow(v2, *(v1 + v3));
  v5 = v4 * 1000000000.0;
  if (COERCE__INT64(fabs(v4 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < 1.84467441e19)
  {
    if (qword_1ED99EB40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  swift_once();
LABEL_5:
  v6 = sub_1B99F3974();
  __swift_project_value_buffer(v6, qword_1ED99EC18);
  v7 = sub_1B99F3954();
  v8 = sub_1B99F40D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v4;
    _os_log_impl(&dword_1B99A0000, v7, v8, "Scheduled after %f second(s)", v9, 0xCu);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
  }

  v10 = v0[3];

  v11 = (v10 + OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay);
  v12 = *(v10 + OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay + 24);
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v16 = (*(v13 + 8) + **(v13 + 8));
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1B99DE2F4;

  return v16(v5, v12, v13);
}

uint64_t sub_1B99DE2F4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B99DE720;
  }

  else
  {
    v2 = sub_1B99DE408;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99DE408(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 48);
  v10 = *(v8 + 24);
  v11 = *(v10 + v9);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = swift_task_alloc();
    v14 = *(v8 + 32);
    *(v10 + v9) = v12;
    *(v8 + 72) = v13;
    *(v13 + 16) = v14;
    v15 = swift_task_alloc();
    *(v8 + 80) = v15;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
    *v15 = v8;
    v15[1] = sub_1B99DE534;
    a1 = *(v8 + 16);
    a6 = sub_1B99DF708;
    a5 = 0x80000001B99FABB0;
    a2 = 0;
    a3 = 0;
    a4 = 0xD00000000000001CLL;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B99DE534()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B99DE6B4;
  }

  else
  {

    v2 = sub_1B99DE650;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99DE650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99DE6B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99DE720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99DE784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99DE7A8, 0, 0);
}

uint64_t sub_1B99DE7A8()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR___AAFExponentialRetryScheduler_power);
  v3 = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[6] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v4 = pow(v2, *(v1 + v3));
  v5 = v4 * 1000000000.0;
  if (COERCE__INT64(fabs(v4 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < 1.84467441e19)
  {
    if (qword_1ED99EB40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  swift_once();
LABEL_5:
  v6 = sub_1B99F3974();
  __swift_project_value_buffer(v6, qword_1ED99EC18);
  v7 = sub_1B99F3954();
  v8 = sub_1B99F40D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v4;
    _os_log_impl(&dword_1B99A0000, v7, v8, "Scheduled after %f second(s)", v9, 0xCu);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
  }

  v10 = v0[5];

  v11 = (v10 + OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay);
  v12 = *(v10 + OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay + 24);
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v16 = (*(v13 + 8) + **(v13 + 8));
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1B99DEA28;

  return v16(v5, v12, v13);
}

uint64_t sub_1B99DEA28()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99DEB58, 0, 0);
  }
}

void sub_1B99DEB58()
{
  v3 = v0[5];
  v2 = v0[6];
  v4 = *(v3 + v2);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v0[3];
    *(v3 + v2) = v5;
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_1B99DEC64;
    v8 = v0[2];

    v9(v8);
  }
}

uint64_t sub_1B99DEC64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ExponentialRetryScheduler.schedule(task:shouldRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99DED80, 0, 0);
}

uint64_t sub_1B99DED80()
{

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1B99DEC64;
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_1B99A2EE4(v6, v4, v2, 0, 0, v3, v7, v5);
}

uint64_t sub_1B99DEE44()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  sub_1B99A3EA8(v1, v2);

  v3 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v3;
  v4 = *(v0 + 72);
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    v6 = *(v4 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v4);
    v8 = sub_1B99F46F4();
    (*(v6 + 8))(v7, v4);

    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 88);
  v9[2](v9, v8, 0);
  _Block_release(v9);
  swift_unknownObjectRelease();
  v10 = *(v0 + 8);

  return v10();
}

id ExponentialRetryScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExponentialRetryScheduler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B99DF090(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B99A3FAC;

  return ExponentialRetryScheduler.schedule<A>(_:shouldRetry:willRetry:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B99DF188(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B99A3EB8;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B99DF220(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1B99DF280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B99A183C(a3, v23 - v10, &qword_1EBBDC4F0, &qword_1B99F5B20);
  v12 = sub_1B99F3EC4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B99A18A4(v11, &qword_1EBBDC4F0, &qword_1B99F5B20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B99F3EB4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B99F3E44();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B99F3C64() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B99A18A4(a3, &qword_1EBBDC4F0, &qword_1B99F5B20);

    return v21;
  }

LABEL_8:
  sub_1B99A18A4(a3, &qword_1EBBDC4F0, &qword_1B99F5B20);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void sub_1B99DF57C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1B99DF650(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B99A3EB8;

  return sub_1B99A1BCC(a1, v4);
}

uint64_t OptionalDependency.init(dependencyId:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a1;
  v9 = sub_1B99F41C4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v16 = *(*(a4 - 8) + 56);
  v16(a5, 1, 1, a4);
  v16(v15, 1, 1, a4);
  type metadata accessor for DependencyRegistry();
  if (a2)
  {
    static DependencyRegistry.locateService<A>(by:config:)(v19, a2, a3, a4, v13);
  }

  else
  {
    static DependencyRegistry.locateService<A>(by:config:)(v19, 0, a3, a4, v13);
  }

  (*(v10 + 8))(v15, v9);
  (*(v10 + 32))(v15, v13, v9);
  return (*(v10 + 40))(a5, v15, v9);
}

uint64_t OptionalDependency.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1B99F41C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_1B99DF974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = sub_1B99F41C4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  (*(v9 + 16))(&v14 - v7, a1);
  v12 = type metadata accessor for OptionalDependency(0, v5, v10, v11);
  return OptionalDependency.wrappedValue.setter(v8, v12);
}

uint64_t OptionalDependency.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B99F41C4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

void (*OptionalDependency.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = *(a2 + 16);
  v8 = sub_1B99F41C4();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_1B99DFBF8;
}

void sub_1B99DFBF8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    v8 = sub_1B99F41C4();
    (*(*(v8 - 8) + 40))(v7, v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = *v2;
    v10 = sub_1B99F41C4();
    (*(*(v10 - 8) + 40))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B99DFD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OptionalDependency(0, *(a3 + a4 - 8), a3, a4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return OptionalDependency.projectedValue.setter(v7, v5);
}

uint64_t OptionalDependency.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*OptionalDependency.projectedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a2 - 8);
  v10 = v9;
  v7[2] = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  (*(v10 + 16))();
  return sub_1B99C94E0;
}

uint64_t sub_1B99E0050(uint64_t a1)
{
  result = sub_1B99F41C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B99E00C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1B99E0240(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t SyncMessageSender.__allocating_init<A, B, C>(encoder:decoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_allocObject();
  v15 = sub_1B99E0B7C(a1, a2, a3, a4, a5, a6);
  (*(*(a6 - 8) + 8))(a3, a6);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v15;
}

uint64_t SyncMessageSender.init<A, B, C>(encoder:decoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_1B99E0B7C(a1, a2, a3, a4, a5, a6);
  (*(*(a6 - 8) + 8))(a3, a6);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v15;
}

uint64_t sub_1B99E06B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t SyncMessageSender.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B99E07C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v21[1] = a4;
  v26 = *v4;
  v7 = v26[11];
  v25 = v26[14];
  v22 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = v21 - v9;
  v10 = v26[13];
  v11 = v26[10];
  v12 = swift_getAssociatedTypeWitness();
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v15 = v30;
  result = (*(v10 + 16))(v29, a2, *(a3 + 16), v11, v10);
  if (!v15)
  {
    v30 = v12;
    v17 = v25;
    (*(v26[15] + 16))(v14, v26[12]);
    v29 = *(*v4 + 144);
    v18 = swift_getAssociatedTypeWitness();
    v19 = *(v17 + 16);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19(v18, v28, v18, AssociatedConformanceWitness, v22, v17);
    (*(v23 + 8))(v28, v24);
    return (*(v27 + 8))(v14, v30);
  }

  return result;
}

uint64_t sub_1B99E0B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v32 = a1;
  v33 = a2;
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v22;
  v36[1] = v23;
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v36[5] = v27;
  v28 = type metadata accessor for InternalSyncMessageSender(0, v36);
  (*(v19 + 16))(v21, v32, a4);
  (*(v14 + 16))(v17, v33, a5);
  (*(v9 + 16))(v12, v35, a6);
  swift_allocObject();
  v29 = sub_1B99D99E0(v21, v17, v12);
  v30 = v34;
  *(v34 + 40) = v28;
  *(v30 + 48) = &off_1F37B2ED0;
  *(v30 + 16) = v29;
  return v30;
}

void *BroadcastDispatcher.__allocating_init<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v5 = sub_1B99E24B0(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

void *BroadcastDispatcher.init<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B99E24B0(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t sub_1B99E0FA0(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD3B8, &unk_1B99F89A0);
  return v5(a1, v6, v3, v4);
}

uint64_t sub_1B99E101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = v6[5];
  v14 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v13);
  return (*(v14 + 16))(a1, a2, a3, a4, a5, a6, v13, v14);
}

uint64_t sub_1B99E10B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v9 = *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD3B8, &unk_1B99F89A0);
  return v9(a1, a2, v10, a3, v7, v8);
}

uint64_t sub_1B99E114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = v7[5];
  v16 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v15);
  return (*(v16 + 32))(a1, a2, a3, a4, a5, a6, a7, v15, v16);
}

uint64_t BroadcastDispatcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B99E1250(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  *(v1 + v3) = sub_1B99F3DE4();
  v5 = *(*v1 + 112);
  swift_getFunctionTypeMetadata2();
  *(v1 + v5) = sub_1B99F3DE4();
  (*(*(v4 - 8) + 32))(v1 + *(*v1 + 96), a1, v4);
  return v1;
}

uint64_t sub_1B99E13A8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v17 - v8;
  v22 = a2;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v20 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 104);
  swift_beginAccess();
  v13 = *(v2 + v12);
  swift_getFunctionTypeMetadata1();

  if (!sub_1B99F3E14())
  {
  }

  v18 = (v10 + 16);
  v19 = (v6 + 8);
  v14 = v20;
  v15 = sub_1B99F3DF4();
  sub_1B99F3DD4();
  if (v15)
  {
    v23 = 1;
    v24 = *(v13 + 32);
    (*v18)(v14, v21, v22);

    swift_dynamicCast();
    v24(v9);

    return (*v19)(v9, AssociatedTypeWitness);
  }

  else
  {
    result = sub_1B99F4274();
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99E16D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a2;
  v23 = a3;
  v9 = *v6;
  v10 = *(*v6 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - v13;
  (*(v11 + 16))(&v21 - v13, v6 + *(v9 + 96), v10);
  v15 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v10;
  *(v17 + 3) = a4;
  *(v17 + 4) = *(v9 + 88);
  *(v17 + 5) = a5;
  *(v17 + 6) = v21;
  (*(v11 + 32))(&v17[v15], v14, v10);
  v18 = &v17[v16];
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  v24 = sub_1B99E2874;
  v25 = v17;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  sub_1B99F3E24();

  sub_1B99F3E04();
  return swift_endAccess();
}

uint64_t sub_1B99E1904(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v12 + 16))(v13);
  if (!v6)
  {
    a3(v11);
    return (*(v9 + 8))(v11, a6);
  }

  return result;
}

uint64_t sub_1B99E1A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v6 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v21 - v10;
  v28 = a3;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 112);
  swift_beginAccess();
  v14 = *(v4 + v13);
  swift_getFunctionTypeMetadata2();

  if (!sub_1B99F3E14())
  {
  }

  v21 = v29 - 8;
  v22 = (v11 + 16);
  v23 = (v8 + 8);
  v15 = v25;
  v16 = sub_1B99F3DF4();
  sub_1B99F3DD4();
  if (v16)
  {
    v30 = 1;
    v31 = *(v14 + 32);
    v17 = AssociatedTypeWitness;
    (*v22)(v24, v26, v28);

    swift_dynamicCast();
    v18 = v29;
    v32[3] = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v27, v18);
    v31(v15, v32);

    __swift_destroy_boxed_opaque_existential_1(v32);
    return (*v23)(v15, v17);
  }

  else
  {
    result = sub_1B99F4274();
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99E1DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v27 = a2;
  v28 = a3;
  v10 = *v7;
  v11 = *(*v7 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v24 - v14;
  (*(v12 + 16))(&v24 - v14, v7 + *(v10 + 96), v11);
  v16 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v11;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  v20 = v25;
  v19 = v26;
  *(v18 + 5) = *(v10 + 88);
  *(v18 + 6) = v20;
  *(v18 + 7) = v19;
  (*(v12 + 32))(&v18[v16], v15, v11);
  v21 = &v18[v17];
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  v29 = sub_1B99E2784;
  v30 = v18;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata2();
  sub_1B99F3E24();

  sub_1B99F3E04();
  return swift_endAccess();
}

uint64_t sub_1B99E1FF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a3;
  v39 = a6;
  v32 = a5;
  v33 = a4;
  v36 = a2;
  v13 = sub_1B99F41C4();
  v34 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v35 = &v32 - v15;
  v37 = *(a8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v41;
  result = (*(a9 + 16))(a7, a1, a7, a10, v39, a9);
  if (!v22)
  {
    v41 = v18;
    v24 = v34;
    v25 = v36;
    sub_1B99B3944(v36, v40);
    v26 = v35;
    v27 = swift_dynamicCast();
    v28 = *(v37 + 56);
    if (v27)
    {
      v28(v26, 0, 1, a8);
      v29 = v37;
      v30 = v41;
      (*(v37 + 32))(v41, v26, a8);
      v33(v21, v30);
      (*(v29 + 8))(v30, a8);
    }

    else
    {
      v28(v26, 1, 1, a8);
      (*(v24 + 8))(v26, v13);
      sub_1B99E2820();
      swift_allocError();
      sub_1B99B3944(v25, v31);
      swift_willThrow();
    }

    return (*(v19 + 8))(v21, a7);
  }

  return result;
}

uint64_t sub_1B99E2324()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_1B99E23CC()
{
  v0 = sub_1B99E2324();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B99E24B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InternalBroadcastDispatcher(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  swift_allocObject();
  v13 = sub_1B99E1250(v8);
  v3[5] = v12;
  v3[6] = &off_1F37B2EA8;
  v3[2] = v13;
  return v3;
}

uint64_t sub_1B99E26C8(uint64_t a1)
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

uint64_t sub_1B99E2784(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(v2[2] - 8) + 80) + 64) & ~*(*(v2[2] - 8) + 80);
  v4 = v2 + ((*(*(v2[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1B99E1FF4(a1, a2, v2 + v3, *v4, *(v4 + 1), v2[2], v2[3], v2[4], v2[5], v2[6]);
}

unint64_t sub_1B99E2820()
{
  result = qword_1EBBDD3C0;
  if (!qword_1EBBDD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD3C0);
  }

  return result;
}

uint64_t sub_1B99E2874(uint64_t a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 56) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = v1 + ((*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1B99E1904(a1, v1 + v2, *v3, *(v3 + 8), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1B99E2908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B99E2950(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void static NSBundle.current(dsoHandle:)(uint64_t a1)
{
  v1 = sub_1B99F37C4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  if (dyld_image_path_containing_address())
  {
    sub_1B99F3CC4();
    sub_1B99F3784();
    sub_1B99F37A4();
    v8 = *(v2 + 8);
    v8(v5, v1);
    v9 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    v10 = sub_1B99F3794();
    v11 = [v9 initWithURL_];

    if (v11)
    {
      v8(v7, v1);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t dispatch thunk of AsyncMessageTransport.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B99A3EB8;

  return v11(a1, a2, a3, a4);
}

id NSSecureCodingEnvelope.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1B99E3A24(a1);
  (*(*(*(v2 + 10) - 8) + 8))(a1);
  return v5;
}

id NSSecureCodingEnvelope.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1B99E3A24(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1B99E2E00(void *a1)
{
  v22 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - v6;
  v10 = type metadata accessor for TypedCodingEnvelope(0, v4, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  sub_1B99F3614();
  swift_allocObject();
  sub_1B99F3604();
  (*(v5 + 16))(v7, &v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)], v4);
  TypedCodingEnvelope.init(value:)(v7, v4, v13);
  v23 = *((v3 & v2) + 0x60);
  swift_getWitnessTable();
  v14 = sub_1B99F35F4();
  v15 = v13;
  v17 = v16;
  (*(v11 + 8))(v15, v10);

  v18 = sub_1B99F37E4();
  v19 = sub_1B99F3C04();
  [v22 encodeObject:v18 forKey:v19];

  return sub_1B99A92F0(v14, v17);
}

void sub_1B99E30D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1B99E2E00(v4);
}

id NSSecureCodingEnvelope.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = (*MEMORY[0x1E69E7D40] & *v4);
  v8 = v7[10];
  v9 = type metadata accessor for TypedCodingEnvelope(0, v8, a3, a4);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1B99E3B04();
  v12 = sub_1B99F4174();
  if (v12 && (v22 = xmmword_1B99F8BA0, v13 = v12, sub_1B99F3804(), v13, v14 = *(&v22 + 1), *(&v22 + 1) >> 60 != 15))
  {
    v15 = v22;
    sub_1B99F35E4();
    swift_allocObject();
    sub_1B99F35D4();
    v21 = v7[11];
    v16 = v21;
    swift_getWitnessTable();
    sub_1B99F35C4();
    sub_1B99A92DC(v15, v14);

    (*(*(v8 - 8) + 32))(&v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x68)], v11, v8);
    v18 = type metadata accessor for NSSecureCodingEnvelope(0, v8, v16, v7[12]);
    v20.receiver = v5;
    v20.super_class = v18;
    v19 = objc_msgSendSuper2(&v20, sel_init);

    return v19;
  }

  else
  {

    type metadata accessor for NSSecureCodingEnvelope(0, v8, v7[11], v7[12]);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1B99E348C(uint64_t a1)
{
  type metadata accessor for NSSecureCodingEnvelope(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD3C8, &qword_1B99F8BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1B99A18A4(v12, &unk_1EBBDD3D0, qword_1B99F8BB8);
LABEL_10:
    v6 = 0;
    return v6 & 1;
  }

  sub_1B99A1904(v12, v14);
  sub_1B99D5A10(a1, v8);
  if (!v8[3])
  {
    sub_1B99A18A4(v8, &qword_1EBBDC658, &qword_1B99F5F40);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_1B99A18A4(&v9, &unk_1EBBDD3D0, qword_1B99F8BB8);
    __swift_destroy_boxed_opaque_existential_1(v14);
    goto LABEL_10;
  }

  sub_1B99A1904(&v9, v12);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v6 = (*(v5 + 8))(v12, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v6 & 1;
}

uint64_t sub_1B99E3678(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1B99F4214();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1B99E348C(v8);

  sub_1B99A18A4(v8, &qword_1EBBDC658, &qword_1B99F5F40);
  return v6 & 1;
}

id NSSecureCodingEnvelope.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NSSecureCodingEnvelope.__deallocating_deinit()
{
  v1 = type metadata accessor for NSSecureCodingEnvelope(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x50), *((*MEMORY[0x1E69E7D40] & *v0) + 0x58), *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B99E38C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  sub_1B99B6424(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD3C8, &qword_1B99F8BB0);
  type metadata accessor for NSSecureCodingEnvelope(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), *((v4 & v3) + 0x60));
  if (swift_dynamicCast())
  {
    v5 = sub_1B99F3BF4();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

id sub_1B99E3A24(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  (*(*(v4 - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)], a1, v4);
  v5 = type metadata accessor for NSSecureCodingEnvelope(0, v4, *((v3 & v2) + 0x58), *((v3 & v2) + 0x60));
  v7.receiver = v1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

unint64_t sub_1B99E3B04()
{
  result = qword_1EBBDD140;
  if (!qword_1EBBDD140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBDD140);
  }

  return result;
}

uint64_t sub_1B99E3B98(uint64_t a1)
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

uint64_t sub_1B99E3D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v21 = (v27 + 16);
  swift_beginAccess();
  v5 = *(v3 + 32);
  v28 = *(v3 + 24);
  swift_beginAccess();
  v26 = *(v3 + 40);
  v29 = *(v3 + 48);
  v6 = *(v3 + 56);
  swift_beginAccess();
  v8 = *(v3 + 64);
  v7 = *(v3 + 72);
  swift_beginAccess();
  v9 = *(v3 + 16);
  v10 = type metadata accessor for DictionaryEncoderImplementation();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = v9;
  *&v12 = v28;
  *(&v12 + 1) = v5;
  *&v13 = v26;
  *(&v13 + 1) = v29;
  *(v11 + 32) = v12;
  *(v11 + 48) = v13;
  *(v11 + 64) = v6;
  *(v11 + 72) = v8;
  *(v11 + 80) = v7;
  *(v11 + 88) = sub_1B99E426C;
  *(v11 + 96) = v4;
  *(v11 + 104) = sub_1B99E42C4;
  *(v11 + 112) = v4;
  *(v11 + 120) = sub_1B99E4368;
  *(v11 + 128) = v27;
  v31 = v10;
  v14 = v26;
  v32 = sub_1B99E4394();
  v30[0] = v11;
  swift_retain_n();
  sub_1B99CA6A4(v28, v5);
  sub_1B99CA884(v26, v29, v6);
  sub_1B99CAA28(v8, v7);

  sub_1B99CA6A4(v28, v5);
  sub_1B99CA884(v26, v29, v6);
  sub_1B99CAA28(v8, v7);

  sub_1B99F3B54();
  if (v22)
  {
    sub_1B99A3EA8(v28, v5);
    sub_1B99CA900(v26, v29, v6);
    sub_1B99CAA8C(v8, v7);

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v23 = v7;
    __swift_destroy_boxed_opaque_existential_1(v30);
    swift_beginAccess();
    v15 = *v21;
    if (*v21)
    {
      swift_willThrow();
      v16 = v15;

      sub_1B99A3EA8(v28, v5);
      sub_1B99CA900(v26, v29, v6);
      sub_1B99CAA8C(v8, v23);

      return v14;
    }

    swift_beginAccess();
    sub_1B99A183C(v4 + 16, v30, &qword_1EBBDC658, &qword_1B99F5F40);
    if (v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE38, &qword_1B99F8D80);
      if (swift_dynamicCast())
      {

        sub_1B99A3EA8(v28, v5);
        sub_1B99CA900(v26, v29, v6);
        sub_1B99CAA8C(v8, v23);
        v14 = v33;

        return v14;
      }
    }

    else
    {
      sub_1B99AC2C8(v30);
    }

    v14 = sub_1B99F42C4();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950);
    v19[3] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
    sub_1B99F4294();
    (*(*(v14 - 8) + 104))(v19, *MEMORY[0x1E69E6B30], v14);
    swift_willThrow();

    sub_1B99A3EA8(v28, v5);
    sub_1B99CA900(v26, v29, v6);
    sub_1B99CAA8C(v8, v23);
  }

  return v14;
}

id sub_1B99E4314(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

unint64_t sub_1B99E4394()
{
  result = qword_1EBBDD540;
  if (!qword_1EBBDD540)
  {
    type metadata accessor for DictionaryEncoderImplementation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD540);
  }

  return result;
}

uint64_t DictionaryEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1B99C1E80(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t DictionaryEncoder.init()()
{
  *(v0 + 16) = sub_1B99C1E80(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t DictionaryEncoder.deinit()
{

  sub_1B99A3EA8(*(v0 + 24), *(v0 + 32));
  sub_1B99CA900(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_1B99CAA8C(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t DictionaryEncoder.__deallocating_deinit()
{

  sub_1B99A3EA8(*(v0 + 24), *(v0 + 32));
  sub_1B99CA900(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_1B99CAA8C(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B99E4518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v6 = v3[3];
  v22 = v5;
  v23 = v3[2];
  v8 = v3[4];
  v7 = v3[5];
  v10 = v3[6];
  v9 = v3[7];
  v11 = v4[9];
  v12 = v4[10];
  v13 = *(v4 + 64);
  *&v27 = v8;
  *(&v27 + 1) = v7;
  *&v28 = v10;
  *(&v28 + 1) = v9;
  LOBYTE(v29) = v13;
  *(&v29 + 1) = v11;
  *&v30 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v5;
  v15 = v4[15];
  v16 = v4[16];
  *&v35 = sub_1B99EC5E0;
  *(&v35 + 1) = v14;
  v36 = sub_1B99EC60C;
  v37 = v4;
  v38 = v15;
  v39 = v16;
  swift_retain_n();

  sub_1B99CA6A4(v8, v7);
  sub_1B99CA884(v10, v9, v13);
  sub_1B99CAA28(v11, v12);
  v17 = v22;

  sub_1B99E49D8(v23, v6, &v27, &v35, v40);
  v32 = v40[5];
  v33 = v40[6];
  v27 = v40[0];
  v28 = v40[1];
  v29 = v40[2];
  v34 = v41;
  v30 = v40[3];
  v31 = v40[4];
  v19 = _s18AAAFoundationSwift14KeyedContainerVMa_0(0, a2, a3, v18);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v26, v40, v19);
  swift_getWitnessTable();
  sub_1B99F44D4();

  return (*(v20 + 8))(v40, v19);
}

uint64_t sub_1B99E4758(void **a1, uint64_t a2)
{
  v3 = *a1;
  (*(a2 + 88))(v15);
  if (!v15[3])
  {
    goto LABEL_5;
  }

  sub_1B99A183C(v15, v13, &qword_1EBBDC658, &qword_1B99F5F40);
  if (!v14)
  {
    sub_1B99AC2C8(v13);
LABEL_7:
    v6 = sub_1B99F42C4();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950);
    v8[3] = sub_1B99BE9A8(0, qword_1EBBDD5E8, 0x1E695DF90);
    *v8 = v3;
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    v9 = v3;

    sub_1B99F4264();
    MEMORY[0x1BFAE0580](0xD00000000000003CLL, 0x80000001B99FAE30);
    sub_1B99A183C(v15, v13, &qword_1EBBDC658, &qword_1B99F5F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
    v10 = sub_1B99F3C44();
    MEMORY[0x1BFAE0580](v10);

    sub_1B99F4294();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B30], v6);
    swift_willThrow();
    return sub_1B99AC2C8(v15);
  }

  sub_1B99BE9A8(0, qword_1EBBDD5E8, 0x1E695DF90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v12 != v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(a2 + 104);
  v14 = sub_1B99BE9A8(0, qword_1EBBDD5E8, 0x1E695DF90);
  v13[0] = v3;
  v5 = v3;
  v4(v13);
  sub_1B99AC2C8(v13);
  return sub_1B99AC2C8(v15);
}

uint64_t sub_1B99E49D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  *(a5 + 48) = v5;
  *(a5 + 56) = *(a3 + 40);
  v7 = *a4;
  v8 = *(a4 + 2);
  v9 = *a4;
  v10 = a4[1];
  *(a5 + 104) = a4[2];
  *(a5 + 88) = v10;
  *(a5 + 72) = v9;

  v7(&v15, v11);
  v12 = v15;
  v14 = v15;
  v8(&v14);
}

void sub_1B99E4B1C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v4 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = *(v1 + 32);
  v17 = *(v1 + 40);
  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v9 = *(v1 + 72);
  v8 = *(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  v11 = v2[16];
  v23 = v2[15];
  v20 = v2[11];
  swift_retain_n();
  v12 = v3;
  swift_retain_n();
  v22 = v12;

  sub_1B99CA6A4(v19, v17);
  v21 = v6;
  sub_1B99CA884(v6, v5, v7);
  v24 = v8;
  v25 = v9;
  sub_1B99CAA28(v9, v8);

  v20(v28, v13);
  if (!v28[3])
  {
    sub_1B99AC2C8(v28);
    goto LABEL_5;
  }

  sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v15 = v22;
    v14 = v22;
    goto LABEL_6;
  }

  v14 = v27;
  v15 = v22;
LABEL_6:
  v28[0] = v14;
  sub_1B99E4EBC(v28, v2);

  a1[3] = &_s18AAAFoundationSwift16UnkeyedContainerVN_0;
  a1[4] = sub_1B99EC54C();
  v16 = swift_allocObject();
  *a1 = v16;

  *(v16 + 16) = v4;
  *(v16 + 24) = v18;
  *(v16 + 32) = v19;
  *(v16 + 40) = v17;
  *(v16 + 48) = v21;
  *(v16 + 56) = v5;
  *(v16 + 64) = v7;
  *(v16 + 72) = v25;
  *(v16 + 80) = v24;
  *(v16 + 88) = sub_1B99EC504;
  *(v16 + 96) = v10;
  *(v16 + 104) = sub_1B99EC530;
  *(v16 + 112) = v2;
  *(v16 + 120) = v23;
  *(v16 + 128) = v11;
}

uint64_t sub_1B99E4DF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  (*(a1 + 88))(v11);
  if (v11[3])
  {
    sub_1B99BE9A8(0, a3, a4);
    result = swift_dynamicCast();
    if (result)
    {
      *a5 = v10;
      return result;
    }
  }

  else
  {
    sub_1B99AC2C8(v11);
  }

  *a5 = a2;

  return a2;
}

uint64_t sub_1B99E4EBC(void **a1, uint64_t a2)
{
  v3 = *a1;
  (*(a2 + 88))(v15);
  if (!v15[3])
  {
    goto LABEL_5;
  }

  sub_1B99A183C(v15, v13, &qword_1EBBDC658, &qword_1B99F5F40);
  if (!v14)
  {
    sub_1B99AC2C8(v13);
LABEL_7:
    v6 = sub_1B99F42C4();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950);
    v8[3] = sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
    *v8 = v3;
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    v9 = v3;

    sub_1B99F4264();
    MEMORY[0x1BFAE0580](0xD000000000000037, 0x80000001B99FADF0);
    sub_1B99A183C(v15, v13, &qword_1EBBDC658, &qword_1B99F5F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
    v10 = sub_1B99F3C44();
    MEMORY[0x1BFAE0580](v10);

    sub_1B99F4294();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B30], v6);
    swift_willThrow();
    return sub_1B99AC2C8(v15);
  }

  sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v12 != v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(a2 + 104);
  v14 = sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
  v13[0] = v3;
  v5 = v3;
  v4(v13);
  sub_1B99AC2C8(v13);
  return sub_1B99AC2C8(v15);
}

uint64_t sub_1B99E513C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v2[9];
  v15 = v2[15];
  v16 = v2[10];
  v14 = v2[16];
  a1[3] = &_s18AAAFoundationSwift20SingleValueContainerVN_0;
  v11 = *(v2 + 64);
  a1[4] = sub_1B99EC470();
  v12 = swift_allocObject();
  *a1 = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v5;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  *(v12 + 48) = v9;
  *(v12 + 56) = v8;
  *(v12 + 64) = v11;
  *(v12 + 72) = v10;
  *(v12 + 80) = v16;
  *(v12 + 88) = sub_1B99EC42C;
  *(v12 + 96) = v2;
  *(v12 + 104) = sub_1B99EC454;
  *(v12 + 112) = v2;
  *(v12 + 120) = v15;
  *(v12 + 128) = v14;
  swift_retain_n();

  sub_1B99CA6A4(v6, v7);
  sub_1B99CA884(v9, v8, v11);
  sub_1B99CAA28(v10, v16);
}

uint64_t sub_1B99E5274(uint64_t a1, uint64_t a2)
{
  (*(a2 + 88))(v16);
  sub_1B99A183C(v16, v14, &qword_1EBBDC658, &qword_1B99F5F40);
  if (v15)
  {
    sub_1B99BE9A8(0, qword_1EBBDD010, 0x1E69E58C0);
    if (swift_dynamicCast())
    {
      v4 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B99AC2C8(v14);
  }

  v4 = 0;
LABEL_6:
  sub_1B99A183C(a1, v14, &qword_1EBBDC658, &qword_1B99F5F40);
  if (!v15)
  {
    sub_1B99AC2C8(v14);
LABEL_12:
    v5 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  sub_1B99BE9A8(0, qword_1EBBDD010, 0x1E69E58C0);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v5 = v13;
  if (!v4)
  {
LABEL_9:
    if (!v5)
    {
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
LABEL_16:
    v6 = 0;
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_19:
    (*(a2 + 104))(a1);
    return sub_1B99AC2C8(v16);
  }

LABEL_13:
  swift_unknownObjectRelease();
  if (!v5)
  {
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  v6 = v4 == v5;
  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v6)
  {
    goto LABEL_19;
  }

  v7 = sub_1B99F42C4();
  swift_allocError();
  v9 = v8;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950) + 48);
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  v10 = swift_allocObject();
  *v9 = v10;
  sub_1B99A183C(a1, v10 + 16, &qword_1EBBDC658, &qword_1B99F5F40);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;

  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0xD000000000000037, 0x80000001B99FADF0);
  sub_1B99A183C(v16, v14, &qword_1EBBDC658, &qword_1B99F5F40);
  v11 = sub_1B99F3C44();
  MEMORY[0x1BFAE0580](v11);

  sub_1B99F4294();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B30], v7);
  swift_willThrow();
  return sub_1B99AC2C8(v16);
}

uint64_t sub_1B99E5594()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  sub_1B99A3EA8(*(v0 + 32), *(v0 + 40));
  sub_1B99CA900(v1, v2, v5);
  sub_1B99CAA8C(v3, v4);

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

void (*sub_1B99E56A8(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = v2[4];
  v9 = v2[6];
  v29 = v2[5];
  v30 = v9;
  v10 = v2[1];
  v24 = *v2;
  v11 = v2[2];
  v12 = v2[3];
  v25 = v10;
  v26 = v11;
  v31 = *(v2 + 14);
  v27 = v12;
  v28 = v8;
  (*(v5 + 16))(v7);
  v13 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = v29;
  v16 = v30;
  v17 = v27;
  *(v14 + 96) = v28;
  *(v14 + 112) = v15;
  *(v14 + 128) = v16;
  v18 = v25;
  v19 = v26;
  *(v14 + 32) = v24;
  *(v14 + 48) = v18;
  v20 = *(a2 + 24);
  *(v14 + 16) = v4;
  *(v14 + 24) = v20;
  *(v14 + 144) = v31;
  *(v14 + 64) = v19;
  *(v14 + 80) = v17;
  (*(v5 + 32))(v14 + v13, v7, v4);
  (*(*(a2 - 8) + 16))(v23, &v24, a2);
  return sub_1B99ECB84;
}

void sub_1B99E5860(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 9);
  v11 = *(a2 + 11);
  v36 = *(a2 + 12);
  v10(&v28);
  v12 = v28;
  v13 = a2[5];
  v32 = a2[4];
  v33 = v13;
  v34 = a2[6];
  v35 = *(a2 + 14);
  v14 = a2[1];
  v28 = *a2;
  v29 = v14;
  v15 = a2[3];
  v30 = a2[2];
  v31 = v15;
  v17 = _s18AAAFoundationSwift14KeyedContainerVMa_0(0, a4, a5, v16);
  v18 = sub_1B99CB88C(a3, v17);
  v20 = v19;
  sub_1B99A183C(a1, &v28, &qword_1EBBDC658, &qword_1B99F5F40);
  v21 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    v27[1] = v27;
    v23 = *(v21 - 8);
    MEMORY[0x1EEE9AC00](v22);
    v25 = v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v25);
    v26 = sub_1B99F46F4();
    (*(v23 + 8))(v25, v21);
    __swift_destroy_boxed_opaque_existential_1(&v28);
  }

  else
  {
    v26 = 0;
  }

  *&v28 = v18;
  *(&v28 + 1) = v20;
  [v12 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v28 = v12;
  v11(&v28);
}

uint64_t sub_1B99E5AA0(uint64_t a1, uint64_t a2)
{
  v4 = v2[5];
  v5 = v2[3];
  v27 = v2[4];
  v28 = v4;
  v6 = v2[5];
  v29 = v2[6];
  v7 = v2[1];
  v24[0] = *v2;
  v24[1] = v7;
  v8 = v2[3];
  v10 = *v2;
  v9 = v2[1];
  v25 = v2[2];
  v26 = v8;
  v11 = v2[6];
  v21 = v6;
  v22 = v11;
  v16 = v10;
  v17 = v9;
  v18 = v25;
  v30 = *(v2 + 14);
  v23 = *(v2 + 14);
  v19 = v5;
  v20 = v27;
  v12 = sub_1B99E56A8(a1, a2);
  v31[4] = v27;
  v31[5] = v21;
  v31[6] = v22;
  v31[0] = v16;
  v31[1] = v17;
  v32 = v23;
  v31[2] = v25;
  v31[3] = v19;
  v13 = *(a2 - 8);
  (*(v13 + 16))(v15, v24, a2);
  (*(v13 + 8))(v31, a2);
  v17 = 0u;
  v16 = 0u;
  v12(&v16);
  sub_1B99AC2C8(&v16);
}

uint64_t sub_1B99E5C04(char a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[5];
  v7 = v3[3];
  v29 = v3[4];
  v30 = v6;
  v8 = v3[5];
  v31 = v3[6];
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v12 = *v3;
  v11 = v3[1];
  v27 = v3[2];
  v28 = v10;
  v13 = v3[6];
  v23 = v8;
  v24 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v27;
  v32 = *(v3 + 14);
  v25 = *(v3 + 14);
  v21 = v7;
  v22 = v29;
  v14 = sub_1B99E56A8(a2, a3);
  v33[4] = v29;
  v33[5] = v23;
  v33[6] = v24;
  v33[0] = v18;
  v33[1] = v19;
  v34 = v25;
  v33[2] = v27;
  v33[3] = v21;
  v15 = *(a3 - 8);
  (*(v15 + 16))(v17, v26, a3);
  (*(v15 + 8))(v33, a3);
  *(&v19 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v18) = a1;
  v14(&v18);

  return sub_1B99AC2C8(&v18);
}

uint64_t sub_1B99E5D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a3, a4);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a4 - 8);
  (*(v17 + 16))(v19, v28, a4);
  (*(v17 + 8))(v35, a4);
  *(&v21 + 1) = MEMORY[0x1E69E6158];
  *&v20 = a1;
  *(&v20 + 1) = a2;

  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E5EF8(uint64_t a1, uint64_t a2, double a3)
{
  v6 = v3[5];
  v7 = v3[3];
  v29 = v3[4];
  v30 = v6;
  v8 = v3[5];
  v31 = v3[6];
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v12 = *v3;
  v11 = v3[1];
  v27 = v3[2];
  v28 = v10;
  v13 = v3[6];
  v23 = v8;
  v24 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v27;
  v32 = *(v3 + 14);
  v25 = *(v3 + 14);
  v21 = v7;
  v22 = v29;
  v14 = sub_1B99E56A8(a1, a2);
  v33[4] = v29;
  v33[5] = v23;
  v33[6] = v24;
  v33[0] = v18;
  v33[1] = v19;
  v34 = v25;
  v33[2] = v27;
  v33[3] = v21;
  v15 = *(a2 - 8);
  (*(v15 + 16))(v17, v26, a2);
  (*(v15 + 8))(v33, a2);
  *(&v19 + 1) = MEMORY[0x1E69E63B0];
  *&v18 = a3;
  v14(&v18);

  return sub_1B99AC2C8(&v18);
}

uint64_t sub_1B99E6064(uint64_t a1, uint64_t a2, float a3)
{
  v6 = v3[5];
  v7 = v3[3];
  v29 = v3[4];
  v30 = v6;
  v8 = v3[5];
  v31 = v3[6];
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v12 = *v3;
  v11 = v3[1];
  v27 = v3[2];
  v28 = v10;
  v13 = v3[6];
  v23 = v8;
  v24 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v27;
  v32 = *(v3 + 14);
  v25 = *(v3 + 14);
  v21 = v7;
  v22 = v29;
  v14 = sub_1B99E56A8(a1, a2);
  v33[4] = v29;
  v33[5] = v23;
  v33[6] = v24;
  v33[0] = v18;
  v33[1] = v19;
  v34 = v25;
  v33[2] = v27;
  v33[3] = v21;
  v15 = *(a2 - 8);
  (*(v15 + 16))(v17, v26, a2);
  (*(v15 + 8))(v33, a2);
  *(&v19 + 1) = MEMORY[0x1E69E6448];
  *&v18 = a3;
  v14(&v18);

  return sub_1B99AC2C8(&v18);
}

uint64_t sub_1B99E61D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a2, a3);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v19, v28, a3);
  (*(v17 + 8))(v35, a3);
  *(&v21 + 1) = a4;
  LOBYTE(v20) = a1;
  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E6340(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a2, a3);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v19, v28, a3);
  (*(v17 + 8))(v35, a3);
  *(&v21 + 1) = a4;
  LOWORD(v20) = a1;
  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E64B0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a2, a3);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v19, v28, a3);
  (*(v17 + 8))(v35, a3);
  *(&v21 + 1) = a4;
  LODWORD(v20) = a1;
  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E6620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a2, a3);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v19, v28, a3);
  (*(v17 + 8))(v35, a3);
  *(&v21 + 1) = a4;
  *&v20 = a1;
  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E6790(uint64_t a1, void (*a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v88 = a2;
  v7 = *(v5 + 80);
  v8 = *(v5 + 48);
  v73 = *(v5 + 64);
  v74 = v7;
  v9 = *(v5 + 80);
  v75 = *(v5 + 96);
  v10 = *(v5 + 16);
  v70[0] = *v5;
  v70[1] = v10;
  v11 = *(v5 + 48);
  v13 = *v5;
  v12 = *(v5 + 16);
  v71 = *(v5 + 32);
  v72 = v11;
  v66 = v73;
  v67 = v9;
  v68 = *(v5 + 96);
  v62 = v13;
  v63 = v12;
  v76 = *(v5 + 112);
  v14 = v76;
  v52 = *&v70[0];
  v15 = *(&v73 + 1);
  v69 = *(v5 + 112);
  v64 = v71;
  v65 = v8;
  v16 = *(a3 - 8);
  v36 = v74;
  v50 = v75;
  v45 = *(v16 + 16);
  v46 = *(&v70[0] + 1);
  v45(&v54, v70);

  v18 = sub_1B99CB88C(v88, a3);
  v38 = v19;
  v77[4] = v66;
  v77[5] = v67;
  v77[6] = v68;
  v78 = v69;
  v77[0] = v62;
  v77[1] = v63;
  v77[2] = v64;
  v77[3] = v65;
  v44 = *(v16 + 8);
  v44(v77, a3);
  v51 = *(v6 + 16);
  v20 = *(v6 + 32);
  v40 = *(v6 + 24);
  v41 = *(v6 + 40);
  v42 = *(v6 + 64);
  v43 = *(v6 + 56);
  v21 = *(v6 + 48);
  v22 = swift_allocObject();
  *(v22 + 24) = v36;
  *(v22 + 40) = v50;
  v23 = *(v6 + 80);
  v25 = *(v6 + 48);
  v82 = *(v6 + 64);
  v24 = v82;
  v83 = v23;
  v26 = *(v6 + 80);
  v84 = *(v6 + 96);
  v27 = *(v6 + 16);
  v79[0] = *v6;
  v79[1] = v27;
  v28 = *(v6 + 48);
  v30 = *v6;
  v29 = *(v6 + 16);
  v80 = *(v6 + 32);
  v81 = v28;
  v31 = *(v6 + 96);
  v59 = v26;
  v60 = v31;
  v54 = v30;
  v55 = v29;
  v56 = v80;
  v37 = v22;
  *(v22 + 16) = v15;
  *(v22 + 56) = v14;
  *(v22 + 64) = v18;
  *(v22 + 72) = v38;
  v85 = *(v6 + 112);
  *&v50 = *(&v84 + 1);
  v32 = v85;
  v61 = *(v6 + 112);
  v57 = v25;
  v58 = v24;
  v88 = sub_1B99E56A8(v88, a3);
  v39 = v33;
  v86[4] = v58;
  v86[5] = v59;
  v86[6] = v60;
  v86[0] = v54;
  v86[1] = v55;
  v87 = v61;
  v86[2] = v56;
  v86[3] = v57;

  sub_1B99CA6A4(v51, v40);
  sub_1B99CA884(v20, v41, v21);
  sub_1B99CAA28(v43, v42);
  (v45)(v53, v79, a3);

  v44(v86, a3);
  v34 = swift_allocObject();
  *(v34 + 16) = v88;
  *(v34 + 24) = v39;
  v62 = __PAIR128__(v46, v52);
  *&v63 = v51;
  *(&v63 + 1) = v40;
  *&v64 = v20;
  *(&v64 + 1) = v41;
  LOBYTE(v65) = v21;
  *(&v65 + 1) = v43;
  *&v66 = v42;
  *(&v66 + 1) = sub_1B99ECC24;
  *&v67 = v37;
  *(&v67 + 1) = sub_1B99ECB5C;
  *&v68 = v34;
  *(&v68 + 1) = v50;
  v69 = v32;
  sub_1B99E6B5C(a1, a4, a5);
  v59 = v67;
  v60 = v68;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v61 = v69;
  v57 = v65;
  v58 = v66;
  return sub_1B99EC9BC(&v54);
}

uint64_t sub_1B99E6B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = a3;
  v58 = sub_1B99F38A4();
  v54 = *(v58 - 8);
  v7 = MEMORY[0x1EEE9AC00](v58);
  v53 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v53 - v9;
  v10 = sub_1B99F37C4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v20;
  v21 = *(v20 + 16);
  v55 = a1;
  v21(v19, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v11 + 32))(v14, v17, v10);
    v22 = sub_1B99F3774();
    v23 = *(v4 + 88);
    v62 = MEMORY[0x1E69E6158];
    v60 = v22;
    v61 = v24;
    v23(&v60);
    (*(v11 + 8))(v14, v10);
    sub_1B99AC2C8(&v60);
  }

  else if (swift_dynamicCast())
  {
    v25 = v60;
    v26 = v61;
    sub_1B99EB174(v60, v61);
    sub_1B99A92F0(v25, v26);
  }

  else
  {
    v27 = v57;
    v28 = v58;
    if (swift_dynamicCast())
    {
      v30 = v53;
      v29 = v54;
      (*(v54 + 32))(v53, v27, v28);
      sub_1B99EB5CC(v30);
      (*(v29 + 8))(v30, v28);
    }

    else
    {
      v57 = v19;
      v31 = *(v4 + 80);
      v32 = *(v4 + 96);
      v33 = *(v4 + 48);
      v67 = *(v4 + 64);
      v68 = v31;
      v69 = v32;
      v34 = *(v4 + 16);
      v64[0] = *v4;
      v64[1] = v34;
      v35 = *(v4 + 48);
      v36 = *(v4 + 16);
      v65 = *(v4 + 32);
      v66 = v35;
      v71[1] = v65;
      v71[2] = v33;
      v70 = *(v4 + 112);
      v58 = a2;
      v54 = *(&v64[0] + 1);
      v38 = v64[0];
      v73 = v38 >> 64;
      v37 = v38;
      v74 = *&v64[0];
      v72 = *(v4 + 64);
      v71[0] = v36;
      v39 = swift_allocObject();
      v40 = *(v4 + 80);
      *(v39 + 80) = *(v4 + 64);
      *(v39 + 96) = v40;
      *(v39 + 112) = *(v4 + 96);
      *(v39 + 128) = *(v4 + 112);
      v41 = *(v4 + 16);
      *(v39 + 16) = *v4;
      *(v39 + 32) = v41;
      v42 = *(v4 + 48);
      *(v39 + 48) = *(v4 + 32);
      *(v39 + 64) = v42;
      v43 = swift_allocObject();
      v44 = *(v4 + 80);
      *(v43 + 80) = *(v4 + 64);
      *(v43 + 96) = v44;
      *(v43 + 112) = *(v4 + 96);
      *(v43 + 128) = *(v4 + 112);
      v45 = *(v4 + 16);
      *(v43 + 16) = *v4;
      *(v43 + 32) = v45;
      v46 = *(v4 + 48);
      *(v43 + 48) = *(v4 + 32);
      *(v43 + 64) = v46;
      v47 = *(&v69 + 1);
      v48 = v70;
      v49 = type metadata accessor for DictionaryEncoderImplementation();
      v50 = swift_allocObject();
      *(v50 + 16) = v37;
      a2 = v58;
      *(v50 + 24) = v54;
      v51 = *(v4 + 32);
      *(v50 + 32) = *(v4 + 16);
      *(v50 + 48) = v51;
      *(v50 + 64) = *(v4 + 48);
      *(v50 + 80) = *(v4 + 64);
      *(v50 + 88) = sub_1B99EC42C;
      *(v50 + 96) = v39;
      *(v50 + 104) = sub_1B99EC7DC;
      *(v50 + 112) = v43;
      *(v50 + 120) = v47;
      *(v50 + 128) = v48;
      v63[3] = v49;
      v63[4] = sub_1B99E4394();
      v63[0] = v50;
      sub_1B99EC7F8(v64, &v60);
      sub_1B99EC7F8(v64, &v60);
      sub_1B99A183C(&v74, &v60, &qword_1EBBDD670, &qword_1B99F97E0);
      sub_1B99A183C(&v73, &v60, &qword_1EBBDD678, &qword_1B99F97E8);
      sub_1B99EC830(v71, &v60);

      sub_1B99F3B54();
      __swift_destroy_boxed_opaque_existential_1(v63);
      v19 = v57;
    }
  }

  return (*(v59 + 8))(v19, a2);
}

uint64_t sub_1B99E70D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = v5[5];
  v10 = v5[3];
  v66 = v5[4];
  v67 = v9;
  v11 = v5[5];
  v68 = v5[6];
  v12 = v5[1];
  v63[0] = *v5;
  v63[1] = v12;
  v13 = v5[3];
  v15 = *v5;
  v14 = v5[1];
  v64 = v5[2];
  v65 = v13;
  v76 = v66;
  v77 = v11;
  v78 = v5[6];
  v72 = v15;
  v73 = v14;
  v69 = *(v5 + 14);
  v16 = *&v63[0];
  v44 = *(&v66 + 1);
  v45 = *(&v63[0] + 1);
  v43 = *(&v67 + 1);
  v39 = v69;
  v40 = v68;
  v41 = v67;
  v42 = *(&v68 + 1);
  v79 = *(v5 + 14);
  v74 = v64;
  v75 = v10;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v70, v63);

  v18 = sub_1B99CB88C(a2, a3);
  v38 = v19;
  v70[4] = v76;
  v70[5] = v77;
  v70[6] = v78;
  v71 = v79;
  v70[0] = v72;
  v70[1] = v73;
  v70[2] = v74;
  v70[3] = v75;
  (*(v17 + 8))(v70, a3);
  v48 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8E0, &qword_1B99F6480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F5C20;
  v21 = *(a3 + 16);
  *(inited + 56) = v21;
  *(inited + 64) = *(a3 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, a2, v21);
  *&v72 = v16;

  sub_1B99EBF94(inited);
  v30 = *(v6 + 3);
  v33 = *(v6 + 5);
  v34 = *(v6 + 4);
  v36 = *(v6 + 7);
  v37 = v72;
  v35 = *(v6 + 8);
  v32 = *(v6 + 48);
  *&v50 = *(v6 + 2);
  v31 = v50;
  *(&v50 + 1) = v30;
  *&v51 = v34;
  *(&v51 + 1) = v33;
  LOBYTE(v52) = v32;
  *(&v52 + 1) = v36;
  *&v53 = v35;
  v23 = swift_allocObject();
  v23[2] = v44;
  v23[3] = v41;
  v23[4] = v43;
  v23[5] = v40;
  v23[6] = v42;
  v23[7] = v39;
  v23[8] = v18;
  v23[9] = v38;
  v23[10] = v48;
  v24 = swift_allocObject();
  v24[2] = v44;
  v24[3] = v41;
  v24[4] = v43;
  v24[5] = v40;
  v24[6] = v42;
  v24[7] = v39;
  v24[8] = v18;
  v24[9] = v38;
  *&v58 = sub_1B99ECAD8;
  *(&v58 + 1) = v23;
  v59 = sub_1B99ECBF0;
  v60 = v24;
  v61 = v42;
  v62 = v39;
  swift_retain_n();

  sub_1B99CA6A4(v31, v30);
  sub_1B99CA884(v34, v33, v32);
  sub_1B99CAA28(v36, v35);

  v25 = v48;
  sub_1B99E49D8(v37, v45, &v50, &v58, &v72);
  v55 = v77;
  v56 = v78;
  v50 = v72;
  v51 = v73;
  v52 = v74;
  v57 = v79;
  v53 = v75;
  v54 = v76;
  v27 = _s18AAAFoundationSwift14KeyedContainerVMa_0(0, a4, a5, v26);
  v28 = *(v27 - 8);
  (*(v28 + 16))(v49, &v72, v27);
  swift_getWitnessTable();
  sub_1B99F44D4();

  return (*(v28 + 8))(&v72, v27);
}

void sub_1B99E7524(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = v3[5];
  v8 = v3[3];
  *v62 = v3[4];
  *&v62[16] = v7;
  v9 = v3[5];
  *&v62[32] = v3[6];
  v10 = v3[1];
  v59[0] = *v3;
  v59[1] = v10;
  v11 = v3[3];
  v13 = *v3;
  v12 = v3[1];
  v60 = v3[2];
  v61 = v11;
  v14 = v3[6];
  v53 = v9;
  v54 = v14;
  v48 = v13;
  v49 = v12;
  v50 = v60;
  v15 = *(v3 + 14);
  v63 = v15;
  v16 = v59[0];
  v36 = *&v62[8];
  v56 = *&v62[8];
  v57 = *&v62[24];
  v39 = *&v62[24];
  v40 = *&v62[40];
  *&v58 = *&v62[40];
  *(&v58 + 1) = v15;
  v55 = *(v3 + 14);
  v51 = v8;
  v52 = *v62;
  v17 = *(a2 - 8);
  (*(v17 + 16))(v64, v59, a2);

  v18 = sub_1B99CB88C(a1, a2);
  v34 = v19;
  v35 = v18;
  v64[4] = v52;
  v64[5] = v53;
  v64[6] = v54;
  v65 = v55;
  v64[0] = v48;
  v64[1] = v49;
  v64[2] = v50;
  v64[3] = v51;
  (*(v17 + 8))(v64, a2);
  v20 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8E0, &qword_1B99F6480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F5C20;
  v22 = *(a2 + 16);
  *(inited + 56) = v22;
  *(inited + 64) = *(a2 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, a1, v22);
  *&v48 = v16;

  sub_1B99EBF94(inited);
  v24 = *(v4 + 3);
  v45 = *(v4 + 4);
  v46 = *(v4 + 2);
  LOBYTE(v17) = *(v4 + 48);
  v43 = *(v4 + 7);
  v44 = *(v4 + 5);
  v42 = *(v4 + 8);
  v25 = swift_allocObject();
  v26 = v57;
  *(v25 + 16) = v56;
  *(v25 + 32) = v26;
  *(v25 + 48) = v58;
  *(v25 + 64) = v35;
  *(v25 + 72) = v34;
  *(v25 + 80) = v20;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 16) = v56;
  *(v27 + 32) = v28;
  *(v27 + 48) = v58;
  *(v27 + 64) = v35;
  *(v27 + 72) = v34;

  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v29 = v20;
  v38 = v24;
  sub_1B99CA6A4(v46, v24);
  v37 = v17;
  sub_1B99CA884(v45, v44, v17);
  sub_1B99CAA28(v43, v42);

  v30 = sub_1B99E7A8C(&v56, v35, v34, v29, &qword_1EBBDD5E0, 0x1E695DF70, &v47);
  v31 = v47;
  v36(&v48, v30);
  v32 = v48;
  *&v48 = v35;
  *(&v48 + 1) = v34;

  [v32 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  *&v48 = v32;
  v39(&v48);

  a3[3] = &_s18AAAFoundationSwift16UnkeyedContainerVN_0;
  a3[4] = sub_1B99EC54C();
  v33 = swift_allocObject();
  *a3 = v33;

  *(v33 + 16) = v16;
  *(v33 + 32) = v46;
  *(v33 + 40) = v38;
  *(v33 + 48) = v45;
  *(v33 + 56) = v44;
  *(v33 + 64) = v37;
  *(v33 + 72) = v43;
  *(v33 + 80) = v42;
  *(v33 + 88) = sub_1B99ECA2C;
  *(v33 + 96) = v25;
  *(v33 + 104) = sub_1B99ECA60;
  *(v33 + 112) = v27;
  *(v33 + 120) = v40;
  *(v33 + 128) = v15;
}

uint64_t sub_1B99E7A8C@<X0>(void (**a1)(void **__return_ptr)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  (*a1)(&v19);
  v12 = v19;
  *&v17 = a2;
  *(&v17 + 1) = a3;

  v13 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v13)
  {
    sub_1B99F4214();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v20[0] = v17;
  v20[1] = v18;
  if (*(&v18 + 1))
  {
    sub_1B99BE9A8(0, a5, a6);
    result = swift_dynamicCast();
    if (result)
    {
      *a7 = v16;
      return result;
    }
  }

  else
  {
    sub_1B99AC2C8(v20);
  }

  *a7 = a4;

  return a4;
}

void sub_1B99E7BEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  (*a2)(v10);
  v8 = v10[0];
  v10[0] = a3;
  v10[1] = a4;

  [v8 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  v9 = *(a2 + 16);
  v10[0] = v8;
  v9(v10);
}

unint64_t sub_1B99E7CB4@<X0>(uint64_t *a1@<X8>)
{
  v13 = *v1;
  v14 = v1[1];
  v18 = v1[3];
  v19 = v1[2];
  v15 = v1[5];
  v16 = v1[4];
  v22 = v1[7];
  v20 = v1[8];
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[11];
  v4 = v1[12];
  v7 = v1[13];
  v6 = v1[14];
  v21 = *(v1 + 48);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v2;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = v7;
  v8[7] = v6;
  v8[8] = 0x7265707573;
  v8[9] = 0xE500000000000000;
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v5;
  v9[5] = v4;
  v9[6] = v7;
  v9[7] = v6;
  v9[8] = 0x7265707573;
  v9[9] = 0xE500000000000000;
  v10 = type metadata accessor for DictionaryEncoderImplementation();
  v11 = swift_allocObject();
  *(v11 + 16) = v13;
  *(v11 + 24) = v14;
  *(v11 + 32) = v19;
  *(v11 + 40) = v18;
  *(v11 + 48) = v16;
  *(v11 + 56) = v15;
  *(v11 + 64) = v21;
  *(v11 + 72) = v22;
  *(v11 + 80) = v20;
  *(v11 + 88) = sub_1B99ECC24;
  *(v11 + 96) = v8;
  *(v11 + 104) = sub_1B99ECBD8;
  *(v11 + 112) = v9;
  *(v11 + 120) = v7;
  *(v11 + 128) = v6;
  a1[3] = v10;
  a1[4] = sub_1B99E4394();
  *a1 = v11;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1B99CA6A4(v19, v18);
  sub_1B99CA884(v16, v15, v21);

  return sub_1B99CAA28(v22, v20);
}

uint64_t sub_1B99E7E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[5];
  v7 = v3[3];
  v54 = v3[4];
  v55 = v6;
  v8 = v3[5];
  v56 = v3[6];
  v9 = v3[1];
  v51[0] = *v3;
  v51[1] = v9;
  v10 = v3[3];
  v12 = *v3;
  v11 = v3[1];
  v52 = v3[2];
  v53 = v10;
  v47 = v54;
  v48 = v8;
  v49 = v3[6];
  v43 = v12;
  v44 = v11;
  v57 = *(v3 + 14);
  v38 = v57;
  v35 = *(&v51[0] + 1);
  v36 = *&v51[0];
  v14 = *(&v54 + 1);
  v13 = v55;
  v15 = v56;
  v34 = *(&v55 + 1);
  v41 = *(&v56 + 1);
  v50 = *(v3 + 14);
  v45 = v52;
  v46 = v7;
  v16 = *(a2 - 8);
  (*(v16 + 16))(v58, v51, a2);

  v17 = v13;

  v18 = v15;

  v19 = sub_1B99CB88C(a1, a2);
  v40 = v20;
  v58[4] = v47;
  v58[5] = v48;
  v58[6] = v49;
  v59 = v50;
  v58[0] = v43;
  v58[1] = v44;
  v58[2] = v45;
  v58[3] = v46;
  (*(v16 + 8))(v58, a2);
  v39 = *(v3 + 3);
  v30 = *(v3 + 2);
  v31 = *(v3 + 5);
  v32 = *(v3 + 4);
  v33 = *(v3 + 7);
  v42 = *(v3 + 8);
  v29 = *(v3 + 48);
  v21 = swift_allocObject();
  v21[2] = v14;
  v21[3] = v17;
  v22 = v17;
  v21[4] = v34;
  v21[5] = v18;
  v23 = v18;
  v21[6] = v41;
  v21[7] = v38;
  v21[8] = v19;
  v21[9] = v40;
  v24 = v19;
  v25 = swift_allocObject();
  v25[2] = v14;
  v25[3] = v22;
  v25[4] = v34;
  v25[5] = v23;
  v25[6] = v41;
  v25[7] = v38;
  v25[8] = v24;
  v25[9] = v40;
  v26 = type metadata accessor for DictionaryEncoderImplementation();
  v27 = swift_allocObject();
  *(v27 + 16) = v36;
  *(v27 + 24) = v35;
  *(v27 + 32) = v30;
  *(v27 + 40) = v39;
  *(v27 + 48) = v32;
  *(v27 + 56) = v31;
  *(v27 + 64) = v29;
  *(v27 + 72) = v33;
  *(v27 + 80) = v42;
  *(v27 + 88) = sub_1B99EC9EC;
  *(v27 + 96) = v21;
  *(v27 + 104) = sub_1B99ECA0C;
  *(v27 + 112) = v25;
  *(v27 + 120) = v41;
  *(v27 + 128) = v38;
  a3[3] = v26;
  a3[4] = sub_1B99E4394();
  *a3 = v27;
  swift_retain_n();

  sub_1B99CA6A4(v30, v39);
  sub_1B99CA884(v32, v31, v29);
  sub_1B99CAA28(v33, v42);
}

double sub_1B99E8184@<D0>(void (**a1)(void **__return_ptr)@<X0>, _OWORD *a4@<X8>)
{
  (*a1)(&v8);
  v5 = v8;

  v6 = [v5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v6)
  {
    sub_1B99F4214();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_1B99E8248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*a2)(v16);
  v8 = v16[0];
  sub_1B99A183C(a1, v16, &qword_1EBBDC658, &qword_1B99F5F40);
  v9 = v17;
  if (v17)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v18 = v16;
    v11 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v10);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_1B99F46F4();
    (*(v11 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
  }

  v16[0] = a3;
  v16[1] = a4;

  [v8 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = *(a2 + 16);
  v16[0] = v8;
  v15(v16);
}

void sub_1B99E895C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 88);
  (*(a2 + 72))(&v6);
  v5 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v5 setObject:sub_1B99F41B4() atIndexedSubscript:a3];
  swift_unknownObjectRelease();
  v6 = v5;
  v4(&v6);
}

uint64_t sub_1B99E8A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v31 = *v3;
  v32 = *(v3 + 1);
  v5 = *(v3 + 3);
  v7 = *(v3 + 4);
  v6 = *(v3 + 5);
  v9 = *(v3 + 7);
  v8 = *(v3 + 8);
  v10 = *(v3 + 48);
  *&v51 = *(v3 + 2);
  v4 = v51;
  *(&v51 + 1) = v5;
  *&v52 = v7;
  *(&v52 + 1) = v6;
  LOBYTE(v53) = v10;
  *(&v53 + 1) = v9;
  *&v54 = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v30;
  v12 = *(v3 + 13);
  v13 = *(v3 + 14);
  *&v44 = sub_1B99EC984;
  *(&v44 + 1) = v11;
  v45 = nullsub_1;
  v46 = 0;
  v47 = v12;
  v48 = v13;

  sub_1B99CA6A4(v4, v5);
  sub_1B99CA884(v7, v6, v10);
  sub_1B99CAA28(v9, v8);
  v14 = v30;

  v15 = sub_1B99E49D8(v31, v32, &v51, &v44, v49);
  v16 = v3[5];
  v55 = v3[4];
  v56 = v16;
  v57 = v3[6];
  v58 = *(v3 + 14);
  v17 = v3[1];
  v51 = *v3;
  v52 = v17;
  v18 = v3[3];
  v53 = v3[2];
  v54 = v18;
  v19 = *(&v55 + 1);
  v20 = *(&v56 + 1);
  (*(&v55 + 1))(v36, v15);
  v21 = v36[0];
  v22 = [v36[0] count];

  v35[3] = sub_1B99BE9A8(0, qword_1EBBDD5E8, 0x1E695DF90);
  v35[0] = v14;
  v23 = v14;
  v24 = sub_1B99EC91C(&v51, v36);
  v19(v36, v24);
  v25 = v36[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v25 setObject:sub_1B99F41B4() atIndexedSubscript:v22];
  swift_unknownObjectRelease();
  v36[0] = v25;
  v20(v36);
  sub_1B99EC954(&v51);

  sub_1B99AC2C8(v35);
  v40 = v49[4];
  v41 = v49[5];
  v42 = v49[6];
  v43 = v50;
  *v36 = v49[0];
  v37 = v49[1];
  v38 = v49[2];
  v39 = v49[3];
  v27 = _s18AAAFoundationSwift14KeyedContainerVMa_0(0, a2, a3, v26);
  v28 = *(v27 - 8);
  (*(v28 + 16))(v35, v49, v27);
  swift_getWitnessTable();
  sub_1B99F44D4();

  return (*(v28 + 8))(v49, v27);
}

void sub_1B99E8F64(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[5];
  v31 = v1[4];
  v7 = *(v1 + 48);
  v8 = v1[8];
  v23 = v1[3];
  v24 = v1[7];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = v1[14];
  v26 = v9;
  v27 = v1[13];
  v11 = *(v1 + 5);
  v35 = *(v1 + 4);
  v36 = v11;
  v37 = *(v1 + 6);
  v38 = v10;
  v12 = *(v1 + 1);
  v34[0] = *v1;
  v34[1] = v12;
  v13 = *(v1 + 3);
  v34[2] = *(v1 + 2);
  v34[3] = v13;
  v14 = *(&v35 + 1);
  v25 = *(&v36 + 1);
  v30 = v3;

  v29 = v4;

  sub_1B99CA6A4(v5, v23);
  sub_1B99CA884(v31, v6, v7);
  sub_1B99CAA28(v24, v8);
  v15 = v2;

  (*(&v35 + 1))(&v32, v16);
  v17 = v32;
  v18 = [v32 count];

  v33[3] = sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
  v33[0] = v15;
  v19 = v15;
  v20 = sub_1B99EC91C(v34, &v32);
  v14(&v32, v20);
  v21 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v21 setObject:sub_1B99F41B4() atIndexedSubscript:v18];
  swift_unknownObjectRelease();
  v32 = v21;
  v25(&v32);
  sub_1B99EC954(v34);

  sub_1B99AC2C8(v33);
  a1[3] = &_s18AAAFoundationSwift16UnkeyedContainerVN_0;
  a1[4] = sub_1B99EC54C();
  v22 = swift_allocObject();
  *a1 = v22;

  *(v22 + 16) = v30;
  *(v22 + 24) = v29;
  *(v22 + 32) = v5;
  *(v22 + 40) = v23;
  *(v22 + 48) = v31;
  *(v22 + 56) = v6;
  *(v22 + 64) = v7;
  *(v22 + 72) = v24;
  *(v22 + 80) = v8;
  *(v22 + 88) = sub_1B99ECC28;
  *(v22 + 96) = v26;
  *(v22 + 104) = nullsub_1;
  *(v22 + 112) = 0;
  *(v22 + 120) = v27;
  *(v22 + 128) = v10;
}

uint64_t sub_1B99E942C@<X0>(uint64_t *a1@<X8>)
{
  v29 = v1[1];
  v30 = *v1;
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = v1[8];
  v8 = *(v1 + 4);
  v9 = *(v1 + 6);
  v40 = *(v1 + 5);
  v41 = v9;
  v42 = v1[14];
  v10 = *(v1 + 1);
  v35 = *v1;
  v11 = *(v1 + 2);
  v36 = v10;
  v37 = v11;
  v38 = *(v1 + 3);
  v39 = v8;
  v12 = *(v1 + 48);
  v28 = *(&v8 + 1);
  v31 = v42;
  v32 = *(&v41 + 1);

  sub_1B99CA6A4(v2, v3);
  v13 = v12;
  sub_1B99CA884(v4, v5, v12);
  v14 = sub_1B99CAA28(v6, v7);
  v28(v34, v14);
  v15 = v34[0];
  v16 = [v34[0] count];

  v17 = swift_allocObject();
  v18 = v40;
  v19 = v41;
  v20 = v38;
  *(v17 + 80) = v39;
  *(v17 + 96) = v18;
  *(v17 + 112) = v19;
  v21 = v36;
  v22 = v37;
  *(v17 + 16) = v35;
  *(v17 + 32) = v21;
  v23 = v42;
  *(v17 + 48) = v22;
  *(v17 + 64) = v20;
  *(v17 + 128) = v23;
  *(v17 + 136) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1B99EC8FC;
  *(v24 + 24) = v17;
  v25 = type metadata accessor for DictionaryEncoderImplementation();
  v26 = swift_allocObject();
  *(v26 + 16) = v30;
  *(v26 + 24) = v29;
  *(v26 + 32) = v2;
  *(v26 + 40) = v3;
  *(v26 + 48) = v4;
  *(v26 + 56) = v5;
  *(v26 + 64) = v13;
  *(v26 + 72) = v6;
  *(v26 + 80) = v7;
  *(v26 + 88) = sub_1B99E9628;
  *(v26 + 96) = 0;
  *(v26 + 104) = sub_1B99ECC08;
  *(v26 + 112) = v24;
  *(v26 + 120) = v32;
  *(v26 + 128) = v31;
  a1[3] = v25;
  a1[4] = sub_1B99E4394();
  *a1 = v26;
  sub_1B99EC91C(&v35, v34);
}

double sub_1B99E9628@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1B99E9634()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v10 = *(v0 + 40);
  v11 = *(v0 + 64);
  v5 = *(v0 + 72);
  v13 = *(v0 + 88);
  v6 = *(v0 + 48);
  v5(v14);
  v7 = v14[0];
  v12 = [v14[0] count];

  *v14 = 0u;
  v15 = 0u;

  sub_1B99CA6A4(v1, v2);
  sub_1B99CA884(v3, v10, v6);
  sub_1B99CAA28(v4, v11);

  (v5)(&v16, v8);
  v9 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v9 setObject:sub_1B99F41B4() atIndexedSubscript:v12];
  swift_unknownObjectRelease();
  v16 = v9;
  v13(&v16);

  sub_1B99A3EA8(v1, v2);
  sub_1B99CA900(v3, v10, v6);
  sub_1B99CAA8C(v4, v11);

  sub_1B99AC2C8(v14);
}

uint64_t sub_1B99E9820(void *a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v15 = v4;
  v6 = *(v2 + 32);
  v17 = *(v2 + 40);
  v18 = *(v2 + 64);
  v19 = *(v2 + 56);
  v13 = *(v2 + 72);
  v16 = *(v2 + 88);
  v7 = *(v2 + 48);
  v13(v20);
  v8 = v20[0];
  v14 = [v20[0] count];

  v20[3] = MEMORY[0x1E69E6158];
  v20[0] = a1;
  v20[1] = a2;

  sub_1B99CA6A4(v4, v5);
  sub_1B99CA884(v6, v17, v7);
  sub_1B99CAA28(v19, v18);

  (v13)(&v21, v9);
  v10 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v10 setObject:sub_1B99F41B4() atIndexedSubscript:v14];
  swift_unknownObjectRelease();
  v21 = v10;
  v16(&v21);

  sub_1B99A3EA8(v15, v5);
  sub_1B99CA900(v6, v17, v7);
  sub_1B99CAA8C(v19, v18);

  return sub_1B99AC2C8(v20);
}

uint64_t sub_1B99E9A14(double a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 56);
  v13 = *(v1 + 40);
  v14 = *(v1 + 64);
  v7 = *(v1 + 72);
  v16 = *(v1 + 88);
  v12 = *(v1 + 48);
  v7(v18);
  v8 = v18[0];
  v15 = [v18[0] count];

  v18[3] = MEMORY[0x1E69E63B0];
  v18[0] = *&a1;

  sub_1B99CA6A4(v3, v4);
  sub_1B99CA884(v5, v13, v12);
  sub_1B99CAA28(v6, v14);

  (v7)(&v17, v9);
  v10 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v10 setObject:sub_1B99F41B4() atIndexedSubscript:v15];
  swift_unknownObjectRelease();
  v17 = v10;
  v16(&v17);

  sub_1B99A3EA8(v3, v4);
  sub_1B99CA900(v5, v13, v12);
  sub_1B99CAA8C(v6, v14);

  return sub_1B99AC2C8(v18);
}

uint64_t sub_1B99E9C18(float a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 56);
  v13 = *(v1 + 40);
  v14 = *(v1 + 64);
  v7 = *(v1 + 72);
  v16 = *(v1 + 88);
  v12 = *(v1 + 48);
  v7(v18);
  v8 = v18[0];
  v15 = [v18[0] count];

  v18[3] = MEMORY[0x1E69E6448];
  *v18 = a1;

  sub_1B99CA6A4(v3, v4);
  sub_1B99CA884(v5, v13, v12);
  sub_1B99CAA28(v6, v14);

  (v7)(&v17, v9);
  v10 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v10 setObject:sub_1B99F41B4() atIndexedSubscript:v15];
  swift_unknownObjectRelease();
  v17 = v10;
  v16(&v17);

  sub_1B99A3EA8(v3, v4);
  sub_1B99CA900(v5, v13, v12);
  sub_1B99CAA8C(v6, v14);

  return sub_1B99AC2C8(v18);
}

uint64_t sub_1B99E9E1C(char a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v16 = v3;
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 72);
  v17 = *(v2 + 88);
  v19 = *(v2 + 64);
  v8 = *(v2 + 48);
  v7(v20);
  v9 = v20[0];
  v15 = [v20[0] count];

  v20[3] = a2;
  LOBYTE(v20[0]) = a1;

  sub_1B99CA6A4(v3, v4);
  sub_1B99CA884(v6, v5, v8);
  sub_1B99CAA28(v18, v19);

  (v7)(&v21, v10);
  v11 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v15];
  swift_unknownObjectRelease();
  v21 = v11;
  v17(&v21);

  sub_1B99A3EA8(v16, v4);
  sub_1B99CA900(v6, v5, v8);
  sub_1B99CAA8C(v18, v19);

  return sub_1B99AC2C8(v20);
}

uint64_t sub_1B99EA000(__int16 a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v16 = v3;
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 72);
  v17 = *(v2 + 88);
  v19 = *(v2 + 64);
  v8 = *(v2 + 48);
  v7(v20);
  v9 = v20[0];
  v15 = [v20[0] count];

  v20[3] = a2;
  LOWORD(v20[0]) = a1;

  sub_1B99CA6A4(v3, v4);
  sub_1B99CA884(v6, v5, v8);
  sub_1B99CAA28(v18, v19);

  (v7)(&v21, v10);
  v11 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v15];
  swift_unknownObjectRelease();
  v21 = v11;
  v17(&v21);

  sub_1B99A3EA8(v16, v4);
  sub_1B99CA900(v6, v5, v8);
  sub_1B99CAA8C(v18, v19);

  return sub_1B99AC2C8(v20);
}

uint64_t sub_1B99EA1E4(int a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v16 = v3;
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 72);
  v17 = *(v2 + 88);
  v19 = *(v2 + 64);
  v8 = *(v2 + 48);
  v7(v20);
  v9 = v20[0];
  v15 = [v20[0] count];

  v20[3] = a2;
  LODWORD(v20[0]) = a1;

  sub_1B99CA6A4(v3, v4);
  sub_1B99CA884(v6, v5, v8);
  sub_1B99CAA28(v18, v19);

  (v7)(&v21, v10);
  v11 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v15];
  swift_unknownObjectRelease();
  v21 = v11;
  v17(&v21);

  sub_1B99A3EA8(v16, v4);
  sub_1B99CA900(v6, v5, v8);
  sub_1B99CAA8C(v18, v19);

  return sub_1B99AC2C8(v20);
}

uint64_t sub_1B99EA3C8(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v16 = v3;
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 72);
  v17 = *(v2 + 88);
  v19 = *(v2 + 64);
  v8 = *(v2 + 48);
  v7(v20);
  v9 = v20[0];
  v15 = [v20[0] count];

  v20[3] = a2;
  v20[0] = a1;

  sub_1B99CA6A4(v3, v4);
  sub_1B99CA884(v6, v5, v8);
  sub_1B99CAA28(v18, v19);

  (v7)(&v21, v10);
  v11 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v15];
  swift_unknownObjectRelease();
  v21 = v11;
  v17(&v21);

  sub_1B99A3EA8(v16, v4);
  sub_1B99CA900(v6, v5, v8);
  sub_1B99CAA8C(v18, v19);

  return sub_1B99AC2C8(v20);
}

uint64_t sub_1B99EA5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = *(v3 + 72);
  (v20)(&v26);
  v5 = v26;
  v6 = [v26 count];

  v17 = *v3;
  v7 = *(v3 + 3);
  v34 = *(v4 + 2);
  v9 = *(v4 + 4);
  v8 = *(v4 + 5);
  v18 = *(v4 + 8);
  v19 = *(v4 + 7);
  v10 = *(v4 + 13);
  v11 = *(v4 + 14);
  v12 = *(v4 + 48);
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  v14 = swift_allocObject();
  v15 = *(v4 + 88);
  *(v13 + 24) = v20;
  *(v13 + 40) = v15;
  *(v14 + 16) = v20;
  *(v14 + 32) = v15;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  *(v14 + 64) = v6;
  v26 = v17;
  *&v27 = v34;
  *(&v27 + 1) = v7;
  *&v28 = v9;
  *(&v28 + 1) = v8;
  LOBYTE(v29) = v12;
  *(&v29 + 1) = v19;
  *&v30 = v18;
  *(&v30 + 1) = sub_1B99EC990;
  *&v31 = v13;
  *(&v31 + 1) = sub_1B99EC99C;
  *&v32 = v14;
  *(&v32 + 1) = v10;
  v33 = v11;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1B99CA6A4(v34, v7);
  sub_1B99CA884(v9, v8, v12);
  sub_1B99CAA28(v19, v18);
  sub_1B99E6B5C(a1, a2, a3);
  v24[4] = v30;
  v24[5] = v31;
  v24[6] = v32;
  v24[0] = v26;
  v24[1] = v27;
  v25 = v33;
  v24[2] = v28;
  v24[3] = v29;
  return sub_1B99EC9BC(v24);
}

double sub_1B99EA7A4@<D0>(uint64_t a1@<X0>, void (**a2)(id *__return_ptr)@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  (*a2)(&v10);
  v6 = v10;
  v7 = [v10 count];

  if (v7 <= a1)
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    v5(&v10);
    v8 = v10;
    [v10 objectAtIndexedSubscript_];

    sub_1B99F4214();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1B99EA888(uint64_t a1, void (**a2)(void **__return_ptr), uint64_t a3)
{
  (*a2)(&v7);
  v5 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v5 setObject:sub_1B99F41B4() atIndexedSubscript:a3];
  swift_unknownObjectRelease();
  v6 = a2[2];
  v7 = v5;
  v6(&v7);
}

uint64_t sub_1B99EA944(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v13 = *(v1 + 40);
  v14 = *(v1 + 64);
  v5 = *(v1 + 72);
  v12 = *(v1 + 24);
  v6 = *(v1 + 48);
  v5(v17);
  v7 = v17[0];
  v15 = [v17[0] count];

  v17[3] = MEMORY[0x1E69E6370];
  LOBYTE(v17[0]) = a1;

  sub_1B99CA6A4(v2, v12);
  sub_1B99CA884(v3, v13, v6);
  sub_1B99CAA28(v4, v14);

  (v5)(&v18, v8);
  v9 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v9 setObject:sub_1B99F41B4() atIndexedSubscript:v15];
  swift_unknownObjectRelease();
  v18 = v9;
  v16(&v18);

  sub_1B99A3EA8(v2, v12);
  sub_1B99CA900(v3, v13, v6);
  sub_1B99CAA8C(v4, v14);

  return sub_1B99AC2C8(v17);
}

id sub_1B99EAB48()
{
  (*(v0 + 72))(&v4);
  v1 = v4;
  v2 = [v4 count];

  return v2;
}

uint64_t sub_1B99EB0C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  v5[0] = swift_allocObject();
  sub_1B99A183C(a1, v5[0] + 16, &qword_1EBBDC658, &qword_1B99F5F40);
  v3(v5);
  return sub_1B99AC2C8(v5);
}

uint64_t sub_1B99EB174(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = sub_1B99F37F4();
      v5 = *(v2 + 88);
      v53[3] = MEMORY[0x1E69E6158];
      v53[0] = v4;
      v53[1] = v6;
      v5(v53);
      return sub_1B99AC2C8(v53);
    }

    v28 = *(v2 + 80);
    v29 = *(v2 + 96);
    v60 = *(v2 + 64);
    v61 = v28;
    v62 = v29;
    v30 = *(v2 + 16);
    v57[0] = *v2;
    v57[1] = v30;
    v31 = *(v2 + 48);
    v32 = *(v2 + 16);
    v58 = *(v2 + 32);
    v59 = v31;
    v33 = *(v2 + 48);
    v75[1] = v58;
    v75[2] = v33;
    v34 = *(v2 + 64);
    v63 = *(v2 + 112);
    v35 = *(&v57[0] + 1);
    v49 = *&v57[0];
    v50 = v34;
    v77 = *(&v57[0] + 1);
    v78 = *&v57[0];
    v76 = *(v2 + 64);
    v75[0] = v32;
    v36 = swift_allocObject();
    v37 = *(v2 + 80);
    *(v36 + 80) = *(v2 + 64);
    *(v36 + 96) = v37;
    *(v36 + 112) = *(v2 + 96);
    *(v36 + 128) = *(v2 + 112);
    v38 = *(v2 + 16);
    *(v36 + 16) = *v2;
    *(v36 + 32) = v38;
    v39 = *(v2 + 48);
    *(v36 + 48) = *(v2 + 32);
    *(v36 + 64) = v39;
    v40 = swift_allocObject();
    v41 = *(v2 + 80);
    *(v40 + 80) = *(v2 + 64);
    *(v40 + 96) = v41;
    *(v40 + 112) = *(v2 + 96);
    *(v40 + 128) = *(v2 + 112);
    v42 = *(v2 + 16);
    *(v40 + 16) = *v2;
    *(v40 + 32) = v42;
    v43 = *(v2 + 48);
    *(v40 + 48) = *(v2 + 32);
    *(v40 + 64) = v43;
    v45 = *(&v62 + 1);
    v44 = v63;
    v46 = type metadata accessor for DictionaryEncoderImplementation();
    v47 = swift_allocObject();
    *(v47 + 16) = v49;
    *(v47 + 24) = v35;
    v48 = *(v2 + 32);
    *(v47 + 32) = *(v2 + 16);
    *(v47 + 48) = v48;
    *(v47 + 64) = *(v2 + 48);
    *(v47 + 80) = *(v2 + 64);
    *(v47 + 88) = sub_1B99ECC2C;
    *(v47 + 96) = v36;
    *(v47 + 104) = sub_1B99ECC30;
    *(v47 + 112) = v40;
    *(v47 + 120) = v45;
    *(v47 + 128) = v44;
    v55 = v46;
    v56 = sub_1B99E4394();
    v54[0] = v47;
    sub_1B99EC7F8(v57, v53);
    sub_1B99EC7F8(v57, v53);
    sub_1B99CAA28(v3, v50);
    sub_1B99A183C(&v78, v53, &qword_1EBBDD670, &qword_1B99F97E0);
    sub_1B99A183C(&v77, v53, &qword_1EBBDD678, &qword_1B99F97E8);
    sub_1B99EC830(v75, v53);

    v3(a1, a2, v54);
    sub_1B99CAA8C(v3, v50);
  }

  else
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 96);
    v10 = *(v2 + 48);
    v67 = *(v2 + 64);
    v68 = v8;
    v69 = v9;
    v11 = *(v2 + 16);
    v64[0] = *v2;
    v64[1] = v11;
    v12 = *(v2 + 48);
    v13 = *(v2 + 16);
    v65 = *(v2 + 32);
    v66 = v12;
    v71[1] = v65;
    v71[2] = v10;
    v70 = *(v2 + 112);
    v14 = v64[0];
    v73 = *(&v64[0] + 1);
    v74 = *&v64[0];
    v72 = *(v2 + 64);
    v71[0] = v13;
    v15 = swift_allocObject();
    v16 = *(v2 + 80);
    *(v15 + 80) = *(v2 + 64);
    *(v15 + 96) = v16;
    *(v15 + 112) = *(v2 + 96);
    *(v15 + 128) = *(v2 + 112);
    v17 = *(v2 + 16);
    *(v15 + 16) = *v2;
    *(v15 + 32) = v17;
    v18 = *(v2 + 48);
    *(v15 + 48) = *(v2 + 32);
    *(v15 + 64) = v18;
    v19 = swift_allocObject();
    v20 = *(v2 + 80);
    *(v19 + 80) = *(v2 + 64);
    *(v19 + 96) = v20;
    *(v19 + 112) = *(v2 + 96);
    *(v19 + 128) = *(v2 + 112);
    v21 = *(v2 + 16);
    *(v19 + 16) = *v2;
    *(v19 + 32) = v21;
    v22 = *(v2 + 48);
    *(v19 + 48) = *(v2 + 32);
    *(v19 + 64) = v22;
    v23 = *(&v69 + 1);
    v24 = v70;
    v25 = type metadata accessor for DictionaryEncoderImplementation();
    v26 = swift_allocObject();
    *(v26 + 16) = v14;
    v27 = *(v2 + 32);
    *(v26 + 32) = *(v2 + 16);
    *(v26 + 48) = v27;
    *(v26 + 64) = *(v2 + 48);
    *(v26 + 80) = *(v2 + 64);
    *(v26 + 88) = sub_1B99ECC2C;
    *(v26 + 96) = v15;
    *(v26 + 104) = sub_1B99ECC30;
    *(v26 + 112) = v19;
    *(v26 + 120) = v23;
    *(v26 + 128) = v24;
    v55 = v25;
    v56 = sub_1B99E4394();
    v54[0] = v26;
    sub_1B99EC7F8(v64, v53);
    sub_1B99EC7F8(v64, v53);
    sub_1B99A183C(&v74, v53, &qword_1EBBDD670, &qword_1B99F97E0);
    sub_1B99A183C(&v73, v53, &qword_1EBBDD678, &qword_1B99F97E8);
    sub_1B99EC830(v71, v53);

    sub_1B99F3834();
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1B99EB5CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v5 = *(v1 + 80);
      v6 = *(v1 + 96);
      v7 = *(v1 + 48);
      v67 = *(v1 + 64);
      v68 = v5;
      v69 = v6;
      v8 = *(v1 + 16);
      v64[0] = *v1;
      v64[1] = v8;
      v9 = *(v1 + 48);
      v10 = *(v1 + 16);
      v65 = *(v1 + 32);
      v66 = v9;
      v82[1] = v65;
      v82[2] = v7;
      v70 = *(v1 + 112);
      v56 = *(&v64[0] + 1);
      v11 = v64[0];
      v84 = v11 >> 64;
      v57 = v11;
      v85 = *&v64[0];
      v83 = *(v1 + 64);
      v82[0] = v10;
      v12 = swift_allocObject();
      v13 = *(v1 + 80);
      *(v12 + 80) = *(v1 + 64);
      *(v12 + 96) = v13;
      *(v12 + 112) = *(v1 + 96);
      *(v12 + 128) = *(v1 + 112);
      v14 = *(v1 + 16);
      *(v12 + 16) = *v1;
      *(v12 + 32) = v14;
      v15 = *(v1 + 48);
      *(v12 + 48) = *(v1 + 32);
      *(v12 + 64) = v15;
      v16 = swift_allocObject();
      v17 = *(v1 + 80);
      *(v16 + 80) = *(v1 + 64);
      *(v16 + 96) = v17;
      *(v16 + 112) = *(v1 + 96);
      *(v16 + 128) = *(v1 + 112);
      v18 = *(v1 + 16);
      *(v16 + 16) = *v1;
      *(v16 + 32) = v18;
      v19 = *(v1 + 48);
      *(v16 + 48) = *(v1 + 32);
      *(v16 + 64) = v19;
      v20 = v3;
      v21 = *(&v69 + 1);
      v22 = v70;
      v23 = type metadata accessor for DictionaryEncoderImplementation();
      v24 = swift_allocObject();
      *(v24 + 16) = __PAIR128__(v56, v57);
      v25 = *(v2 + 32);
      *(v24 + 32) = *(v2 + 16);
      *(v24 + 48) = v25;
      *(v24 + 64) = *(v2 + 48);
      *(v24 + 80) = *(v2 + 64);
      *(v24 + 88) = sub_1B99ECC2C;
      *(v24 + 96) = v12;
      *(v24 + 104) = sub_1B99ECC30;
      *(v24 + 112) = v16;
      *(v24 + 120) = v21;
      *(v24 + 128) = v22;
      v62 = v23;
      v63 = sub_1B99E4394();
      v61[0] = v24;
      sub_1B99EC7F8(v64, v59);
      sub_1B99CA884(v4, v20, 1);
      sub_1B99EC7F8(v64, v59);
      sub_1B99A183C(&v85, v59, &qword_1EBBDD670, &qword_1B99F97E0);
      sub_1B99A183C(&v84, v59, &qword_1EBBDD678, &qword_1B99F97E8);
      sub_1B99EC830(v82, v59);

      (v4)(a1, v61);
      sub_1B99CA900(v4, v20, 1);
      return __swift_destroy_boxed_opaque_existential_1(v61);
    }

    if (!(v4 | v3))
    {
      v34 = *(v1 + 80);
      v35 = *(v1 + 96);
      v36 = *(v1 + 48);
      v74 = *(v1 + 64);
      v75 = v34;
      v76 = v35;
      v37 = *(v1 + 16);
      v71[0] = *v1;
      v71[1] = v37;
      v38 = *(v1 + 48);
      v39 = *(v1 + 16);
      v72 = *(v1 + 32);
      v73 = v38;
      v78[1] = v72;
      v78[2] = v36;
      v77 = *(v1 + 112);
      v40 = v71[0];
      v80 = *(&v71[0] + 1);
      v81 = *&v71[0];
      v79 = *(v1 + 64);
      v78[0] = v39;
      v41 = swift_allocObject();
      v42 = *(v1 + 80);
      *(v41 + 80) = *(v1 + 64);
      *(v41 + 96) = v42;
      *(v41 + 112) = *(v1 + 96);
      *(v41 + 128) = *(v1 + 112);
      v43 = *(v1 + 16);
      *(v41 + 16) = *v1;
      *(v41 + 32) = v43;
      v44 = *(v1 + 48);
      *(v41 + 48) = *(v1 + 32);
      *(v41 + 64) = v44;
      v45 = swift_allocObject();
      v46 = *(v1 + 80);
      *(v45 + 80) = *(v1 + 64);
      *(v45 + 96) = v46;
      *(v45 + 112) = *(v1 + 96);
      *(v45 + 128) = *(v1 + 112);
      v47 = *(v1 + 16);
      *(v45 + 16) = *v1;
      *(v45 + 32) = v47;
      v48 = *(v1 + 48);
      *(v45 + 48) = *(v1 + 32);
      *(v45 + 64) = v48;
      v49 = *(&v76 + 1);
      v50 = v77;
      v51 = type metadata accessor for DictionaryEncoderImplementation();
      v52 = swift_allocObject();
      *(v52 + 16) = v40;
      v53 = *(v2 + 32);
      *(v52 + 32) = *(v2 + 16);
      *(v52 + 48) = v53;
      *(v52 + 64) = *(v2 + 48);
      *(v52 + 80) = *(v2 + 64);
      *(v52 + 88) = sub_1B99ECC2C;
      *(v52 + 96) = v41;
      *(v52 + 104) = sub_1B99ECC30;
      *(v52 + 112) = v45;
      *(v52 + 120) = v49;
      *(v52 + 128) = v50;
      v62 = v51;
      v63 = sub_1B99E4394();
      v61[0] = v52;
      sub_1B99EC7F8(v71, v59);
      sub_1B99EC7F8(v71, v59);
      sub_1B99A183C(&v81, v59, &qword_1EBBDD670, &qword_1B99F97E0);
      sub_1B99A183C(&v80, v59, &qword_1EBBDD678, &qword_1B99F97E8);
      sub_1B99EC830(v78, v59);

      sub_1B99F3894();
      return __swift_destroy_boxed_opaque_existential_1(v61);
    }

    sub_1B99F3864();
    if (v4 ^ 1 | v3)
    {
      v33 = v33 * 1000.0;
    }

    v55 = *(v1 + 88);
    v60 = MEMORY[0x1E69E63B0];
    *v59 = v33;
    v55(v59);
  }

  else
  {
    v26 = v4;
    v27 = sub_1B99F3844();
    v28 = [v26 stringFromDate_];

    v29 = sub_1B99F3C24();
    v31 = v30;

    v32 = *(v2 + 88);
    v60 = MEMORY[0x1E69E6158];
    v59[0] = v29;
    v59[1] = v31;
    v32(v59);
    sub_1B99CA900(v4, v3, 0);
  }

  return sub_1B99AC2C8(v59);
}

uint64_t sub_1B99EBAC8()
{
  v1 = *(v0 + 88);
  memset(v4, 0, sizeof(v4));
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  v3[0] = swift_allocObject();
  sub_1B99A183C(v4, v3[0] + 16, &qword_1EBBDC658, &qword_1B99F5F40);
  v1(v3);
  sub_1B99AC2C8(v4);
  return sub_1B99AC2C8(v3);
}

uint64_t sub_1B99EBB84(char a1)
{
  v2 = *(v1 + 88);
  v5 = MEMORY[0x1E69E6370];
  v4[0] = a1;
  v2(v4);
  return sub_1B99AC2C8(v4);
}

uint64_t sub_1B99EBBD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = a1;
  v5[1] = a2;

  v3(v5);
  return sub_1B99AC2C8(v5);
}

uint64_t sub_1B99EBC34(double a1)
{
  v2 = *(v1 + 88);
  v4[3] = MEMORY[0x1E69E63B0];
  *v4 = a1;
  v2(v4);
  return sub_1B99AC2C8(v4);
}

uint64_t sub_1B99EBC88(float a1)
{
  v2 = *(v1 + 88);
  v5 = MEMORY[0x1E69E6448];
  *v4 = a1;
  v2(v4);
  return sub_1B99AC2C8(v4);
}

uint64_t sub_1B99EBDD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 88);
  v8 = a4;
  v7[0] = a1;
  v5(v7, a2, a3);
  return sub_1B99AC2C8(v7);
}

uint64_t sub_1B99EBE40(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 88);
  v8 = a4;
  v7[0] = a1;
  v5(v7, a2, a3);
  return sub_1B99AC2C8(v7);
}

uint64_t sub_1B99EBEAC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 88);
  v8 = a4;
  v7[0] = a1;
  v5(v7, a2, a3);
  return sub_1B99AC2C8(v7);
}

uint64_t sub_1B99EBF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 88);
  v7[3] = a4;
  v7[0] = a1;
  v5(v7, a2, a3);
  return sub_1B99AC2C8(v7);
}

void *sub_1B99EBF94(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B99B2B78(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC8E8, &qword_1B99F6488);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_18AAAFoundationSwift17DictionaryEncoderC20DateEncodingStrategyO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B99EC320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B99EC370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B99EC3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B99EC470()
{
  result = qword_1EBBDD5D0;
  if (!qword_1EBBDD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD5D0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1B99EC54C()
{
  result = qword_1EBBDD5D8;
  if (!qword_1EBBDD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD5D8);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99EC640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B99EC6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1B99EC728(uint64_t *a1, int a2)
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

uint64_t sub_1B99EC770(uint64_t result, int a2, int a3)
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

uint64_t objectdestroy_44Tm(uint64_t a1)
{

  if (*(v1 + 32))
  {
  }

  sub_1B99CA900(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  if (*(v1 + 72) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

id sub_1B99EC984@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t objectdestroy_147Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t objectdestroy_135Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void RetryScheduler.schedule<A>(_:shouldRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 24) + **(a8 + 24);
  v9 = swift_task_alloc();
  *(v8 + 16) = v9;
  *v9 = v8;
  v9[1] = sub_1B99A3FAC;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1B99ECDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B99A3FAC;

  return RetryScheduler.schedule<A>(_:)(a1, a2, a3, a5, a4, a6);
}

uint64_t RetryScheduler.schedule<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B99A3FAC;

  return v15(a1, a2, a3, 0, 0, a5, a4, a6);
}

uint64_t dispatch thunk of RetryScheduler.schedule<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B99A3FAC;

  return v15(a1, a2, a3, a4, a5, a6);
}

void sub_1B99ED13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B99A3FAC;

  RetryScheduler.schedule<A>(_:shouldRetry:)(a1, a2, a3, a4, a5, a7, a6, a8);
}

uint64_t dispatch thunk of RetryScheduler.schedule<A>(_:shouldRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B99A3FAC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1B99ED390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B99A3EB8;

  RetryScheduler.schedule<A>(_:shouldRetry:)(a1, a2, a3, a4, a5, a7, a6, a8);
}

uint64_t dispatch thunk of RetryScheduler.schedule<A>(_:shouldRetry:willRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 24) + **(a10 + 24));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1B99A3EB8;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of SchedulerDelay.delay(nanoseconds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B99A3FAC;

  return v9(a1, a2, a3);
}

Swift::Void __swiftcall OSActivity.close()()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
}

uint64_t sub_1B99ED764()
{
  qword_1ED99E0E0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t AnyJSONValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F4A64();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = sub_1B99F4754();
    *(&v10 + 1) = MEMORY[0x1E69E6530];
    v11 = &protocol witness table for Int;
    *&v9 = v5;
    __swift_destroy_boxed_opaque_existential_1(v8);
    v6 = v10;
    *a2 = v9;
    *(a2 + 16) = v6;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B99EDCA0()
{
  result = qword_1EBBDD6A0;
  if (!qword_1EBBDD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD6A0);
  }

  return result;
}

unint64_t sub_1B99EDCF4()
{
  result = qword_1EBBDD6B0;
  if (!qword_1EBBDD6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD6A8, &qword_1B99F9920);
    sub_1B99EDC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD6B0);
  }

  return result;
}

uint64_t sub_1B99EDD80(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_1B99A183C(*(a1 + 56) + 40 * v11, v38, &qword_1EBBDD698, &qword_1B99F9918);
      *&v37 = v14;
      *(&v37 + 1) = v13;
      v33 = v37;
      v34 = v38[0];
      v35 = v38[1];
      v36 = v39;
      sub_1B99A183C(&v34, &v29, &qword_1EBBDD698, &qword_1B99F9918);
      if (*(&v30[0] + 1))
      {
        break;
      }

      sub_1B99A18A4(&v29, &qword_1EBBDD698, &qword_1B99F9918);
      result = sub_1B99A18A4(&v33, &qword_1EBBDD738, &qword_1B99F9AF0);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    sub_1B99B6424(&v29, v27);

    sub_1B99EF28C(&v29);
    sub_1B99A1904(v27, v32);
    v29 = v33;
    v30[0] = v34;
    v30[1] = v35;
    v31 = v36;
    sub_1B99A1904(v32, v28);
    v15 = *(v1 + 16);
    if (*(v1 + 24) <= v15)
    {
      sub_1B99EF9F0(v15 + 1, 1);
      v1 = v40;
    }

    v16 = v29;
    sub_1B99F4A04();
    sub_1B99F3B84();
    result = sub_1B99F4A24();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v17 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v1 + 48) + 16 * v21) = v16;
    sub_1B99A1904(v28, *(v1 + 56) + 40 * v21);
    ++*(v1 + 16);
    result = sub_1B99A18A4(v30, &qword_1EBBDD698, &qword_1B99F9918);
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void *AnyJSONValue.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F4A94();
  sub_1B99B6424(v1, &v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6C8, &qword_1B99F9938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6C0, &qword_1B99F9930);
  if (swift_dynamicCast())
  {
    v4 = *(v47 + 16);
    if (v4)
    {
      v55 = MEMORY[0x1E69E7CC0];
      sub_1B99EF1EC(0, v4, 0);
      v5 = v55;
      v6 = v47 + 32;
      do
      {
        sub_1B99A183C(v6, &v47, &qword_1EBBDD6F8, &qword_1B99F9968);
        v50 = v47;
        v51 = v48;
        v52 = v49;
        if (*(&v48 + 1))
        {
          sub_1B99A1904(&v50, v45);
          sub_1B99A1904(v45, &v50);
        }

        else
        {
          sub_1B99A18A4(&v50, &qword_1EBBDD6F8, &qword_1B99F9968);
          v50 = 0u;
          v51 = 0u;
          v52 = 0;
        }

        v55 = v5;
        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1B99EF1EC((v7 > 1), v8 + 1, 1);
          v5 = v55;
        }

        *(v5 + 16) = v8 + 1;
        v9 = v5 + 40 * v8;
        v10 = v50;
        v11 = v51;
        *(v9 + 64) = v52;
        *(v9 + 32) = v10;
        *(v9 + 48) = v11;
        v6 += 40;
        --v4;
      }

      while (v4);
    }

    else
    {

      v5 = MEMORY[0x1E69E7CC0];
    }

    *&v50 = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD680, &qword_1B99F9910);
    sub_1B99EF39C(&qword_1EBBDD700, sub_1B99EF414, MEMORY[0x1E69E6300]);
    sub_1B99F4794();

    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  sub_1B99B6424(v1, &v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6B8, &qword_1B99F9928);
  if (!swift_dynamicCast())
  {
    sub_1B99B6424(v1, &v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDF0, &qword_1B99F9940);
    if (swift_dynamicCast())
    {
      sub_1B99A1904(v45, &v50);
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
      sub_1B99F4794();
      __swift_destroy_boxed_opaque_existential_1(&v50);
    }

    else
    {
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      sub_1B99A18A4(v45, &qword_1EBBDD6D0, &qword_1B99F9948);
      v36 = sub_1B99F42C4();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950);
      v39 = *(v1 + 24);
      v40 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v38[3] = v39;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
      (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v40, v39);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1B99F4A84();
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_1B99F4264();
      sub_1B99F43A4();
      MEMORY[0x1BFAE0580](0xD000000000000019, 0x80000001B99FAF90);
      sub_1B99F4294();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6B30], v36);
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6D8, &qword_1B99F9958);
  result = sub_1B99F43F4();
  v13 = result;
  v14 = 0;
  v43 = result;
  v44 = v47;
  v15 = 1 << *(v47 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v47 + 64;
  v18 = v16 & *(v47 + 64);
  v19 = (v15 + 63) >> 6;
  v42 = result + 8;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_21:
      v23 = v20 | (v14 << 6);
      v24 = 16 * v23;
      v25 = (*(v44 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = 40 * v23;
      sub_1B99B6424(*(v44 + 56) + 40 * v23, &v50);
      result = sub_1B99A1904(&v50, &v47);
      *(v42 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v13 = v43;
      v29 = (v43[6] + v24);
      *v29 = v27;
      v29[1] = v26;
      v30 = v43[7] + v28;
      v31 = v49;
      v32 = v48;
      *v30 = v47;
      *(v30 + 16) = v32;
      *(v30 + 32) = v31;
      v33 = v43[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v43[2] = v35;

      if (!v18)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        *&v50 = v13;
        __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6E0, &qword_1B99F9960);
        sub_1B99EF2BC();
        sub_1B99F4794();

        return __swift_destroy_boxed_opaque_existential_1(v53);
      }

      v22 = *(v17 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B99EE7AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD6C8, &qword_1B99F9938);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v47 - v9;
  v11 = *(v8 + 48);
  v12 = *(a2 - 8);
  (*(v12 + 16))(&v47 - v9, v3, a2);
  sub_1B99B6424(a1, &v10[v11]);
  if (swift_dynamicCast())
  {
    v13 = v53;
    if (swift_dynamicCast())
    {
      if (v13 == v59)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_1B99F4704();
      }

LABEL_43:

      goto LABEL_56;
    }
  }

  sub_1B99BE9A8(0, &qword_1EBBDD128, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v15 = v53;
    if (swift_dynamicCast())
    {
      v16 = v59;
      sub_1B99BE9A8(0, qword_1EBBDD010, 0x1E69E58C0);
      v14 = sub_1B99F4184();

LABEL_56:
      __swift_destroy_boxed_opaque_existential_1(&v10[v11]);
      (*(v12 + 8))(v10, a2);
      return v14 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6C0, &qword_1B99F9930);
  if (swift_dynamicCast())
  {
    v17 = v65;
    result = swift_dynamicCast();
    if (result)
    {
      v19 = v64;
      v20 = *(v17 + 16);
      if (v20 == *(v64 + 16))
      {
        v51 = v11;
        v52 = v12;
        if (v20)
        {
          v21 = 0;
          v22 = 32;
          do
          {
            if (v21 >= *(v17 + 16))
            {
              goto LABEL_63;
            }

            result = sub_1B99A183C(v17 + v22, &v59, &qword_1EBBDD6F8, &qword_1B99F9968);
            v23 = *(v19 + 16);
            if (v21 == v23)
            {

              sub_1B99A18A4(&v59, &qword_1EBBDD6F8, &qword_1B99F9968);
              goto LABEL_50;
            }

            if (v21 >= v23)
            {
              goto LABEL_64;
            }

            v53 = v59;
            v54 = v60;
            v55 = v61;
            sub_1B99A183C(v19 + v22, v56, &qword_1EBBDD6F8, &qword_1B99F9968);
            if (*(&v54 + 1) | v56[3])
            {
              sub_1B99A183C(&v53, &v62, &qword_1EBBDD6F8, &qword_1B99F9968);
              if (!v63)
              {
                sub_1B99A18A4(&v62, &qword_1EBBDD6F8, &qword_1B99F9968);
LABEL_53:
                sub_1B99A18A4(&v53, &qword_1EBBDD720, &qword_1B99F9AD8);
LABEL_54:

                v14 = 0;
                goto LABEL_55;
              }

              sub_1B99A1904(&v62, &v59);
              sub_1B99A183C(v56, &v57, &qword_1EBBDD6F8, &qword_1B99F9968);
              if (!v58)
              {
                sub_1B99A18A4(&v57, &qword_1EBBDD6F8, &qword_1B99F9968);
                __swift_destroy_boxed_opaque_existential_1(&v59);
                goto LABEL_53;
              }

              sub_1B99A1904(&v57, &v62);
              v24 = *(&v60 + 1);
              __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
              LOBYTE(v24) = sub_1B99EE7AC(&v62, v24);
              __swift_destroy_boxed_opaque_existential_1(&v62);
              __swift_destroy_boxed_opaque_existential_1(&v59);
              result = sub_1B99A18A4(&v53, &qword_1EBBDD720, &qword_1B99F9AD8);
              if ((v24 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            else
            {
              result = sub_1B99A18A4(&v53, &qword_1EBBDD720, &qword_1B99F9AD8);
            }

            ++v21;
            v22 += 40;
          }

          while (v20 != v21);
        }

LABEL_50:
        v14 = 1;
LABEL_55:
        v12 = v52;
        v11 = v51;
        goto LABEL_56;
      }

      goto LABEL_46;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6B8, &qword_1B99F9928);
  if (!swift_dynamicCast())
  {
LABEL_45:
    (*(v7 + 8))(v10, TupleTypeMetadata2);
    v14 = 0;
    return v14 & 1;
  }

  v25 = v65;
  if (!swift_dynamicCast())
  {

    goto LABEL_45;
  }

  v26 = v64;

  v27 = sub_1B99EF040(v25, v26);

  if ((v27 & 1) == 0)
  {
LABEL_46:

    v14 = 0;
    goto LABEL_56;
  }

  v51 = v11;
  v52 = v12;
  v28 = *(v25 + 64);
  v48 = v25 + 64;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;

  v33 = 0;
  v50 = v25;
  v49 = v26;
  while (v31)
  {
LABEL_37:
    v35 = __clz(__rbit64(v31)) | (v33 << 6);
    v36 = *(v25 + 56);
    v37 = (*(v25 + 48) + 16 * v35);
    v38 = *v37;
    v39 = v37[1];
    sub_1B99B6424(v36 + 40 * v35, &v54);
    *&v53 = v38;
    *(&v53 + 1) = v39;
    sub_1B99A183C(&v53, &v59, &qword_1EBBDD718, "4N");
    v40 = v59;
    v41 = v49;
    v42 = *(v49 + 16);

    if (!v42)
    {

LABEL_59:

      __swift_destroy_boxed_opaque_existential_1(&v60);
      sub_1B99A18A4(&v53, &qword_1EBBDD718, "4N");
LABEL_60:
      v14 = 0;
LABEL_61:
      v12 = v52;
      v11 = v51;
      goto LABEL_43;
    }

    v43 = sub_1B99EF914(v40, *(&v40 + 1));
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      goto LABEL_59;
    }

    v31 &= v31 - 1;
    sub_1B99B6424(*(v41 + 56) + 40 * v43, &v57);
    sub_1B99A1904(&v57, &v62);
    __swift_destroy_boxed_opaque_existential_1(&v60);
    v46 = v56[0];
    __swift_project_boxed_opaque_existential_1(&v54, v56[0]);
    LOBYTE(v46) = sub_1B99EE7AC(&v62, v46);
    __swift_destroy_boxed_opaque_existential_1(&v62);
    result = sub_1B99A18A4(&v53, &qword_1EBBDD718, "4N");
    v25 = v50;
    if ((v46 & 1) == 0)
    {

      goto LABEL_60;
    }
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v32)
    {

      v14 = 1;
      goto LABEL_61;
    }

    v31 = *(v48 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1B99EF040(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      sub_1B99EF914(v14, v13);
      LOBYTE(v14) = v15;

      if (v14)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t static AnyJSONValue.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_1B99EE7AC(a2, v3) & 1;
}

uint64_t sub_1B99EF1A8(void *a1, uint64_t a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_1B99EE7AC(a2, v3) & 1;
}

void *sub_1B99EF1EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B99EF698(a1, a2, a3, *v3, &qword_1EBBDD728, &qword_1B99F9AE0, &qword_1EBBDD698, &qword_1B99F9918);
  *v3 = result;
  return result;
}

char *sub_1B99EF22C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B99EF594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B99EF24C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B99EF698(a1, a2, a3, *v3, &qword_1EBBDD730, &qword_1B99F9AE8, &qword_1EBBDD6F8, &qword_1B99F9968);
  *v3 = result;
  return result;
}

unint64_t sub_1B99EF2BC()
{
  result = qword_1EBBDD6E8;
  if (!qword_1EBBDD6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD6E0, &qword_1B99F9960);
    sub_1B99EF348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD6E8);
  }

  return result;
}

unint64_t sub_1B99EF348()
{
  result = qword_1EBBDD6F0;
  if (!qword_1EBBDD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD6F0);
  }

  return result;
}

uint64_t sub_1B99EF39C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD680, &qword_1B99F9910);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B99EF448(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD698, &qword_1B99F9918);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B99EF4D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B99EF51C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1B99EF574(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B99EF7E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B99EF594(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD748, &unk_1B99F9B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1B99EF698(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1B99EF7E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD710, "8N");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
    swift_arrayInitWithCopy();
  }

  return v10;
}