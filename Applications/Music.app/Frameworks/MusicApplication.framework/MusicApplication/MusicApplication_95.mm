uint64_t sub_8A3570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_8A35B8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_8A3734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_8A3814(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_8A38DC(uint64_t a1)
{
  sub_6A729C(319, &qword_E1DEF8, &unk_E1DF00, UITraitCollection_ptr);
  if (v1 <= 0x3F)
  {
    sub_8A3378(319, &qword_E17548, &type metadata accessor for UIView.Corner);
    if (v2 <= 0x3F)
    {
      sub_13C80(319, &qword_E1C960, UIFont_ptr);
      if (v3 <= 0x3F)
      {
        sub_13C80(319, &unk_E1DF10, UIImageSymbolConfiguration_ptr);
        if (v4 <= 0x3F)
        {
          _s3__C8UIOffsetVMa_0(319);
          if (v5 <= 0x3F)
          {
            _s3__C6CGSizeVMa_0(319);
            if (v6 <= 0x3F)
            {
              sub_8A3378(319, &qword_E1DCD0, _s3__C6CGSizeVMa_0);
              if (v7 <= 0x3F)
              {
                _s3__C23NSDirectionalEdgeInsetsVMa_0(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_8A3A6C()
{
  result = qword_E1DF60;
  if (!qword_E1DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DF60);
  }

  return result;
}

unint64_t sub_8A3AC4()
{
  result = qword_E1DF98;
  if (!qword_E1DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DF98);
  }

  return result;
}

unint64_t sub_8A3B1C()
{
  result = qword_E1DFD0;
  if (!qword_E1DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DFD0);
  }

  return result;
}

unint64_t sub_8A3B74()
{
  result = qword_E1E008;
  if (!qword_E1E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E008);
  }

  return result;
}

uint64_t sub_8A3BFC()
{

  return swift_deallocObject();
}

uint64_t sub_8A3C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_8A3CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_8A3D54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_8A3D9C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v7 = result;

    return sub_307CC(a4, a5);
  }

  return result;
}

void *sub_8A3DE4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_17654(a4, a5);
  }

  return result;
}

uint64_t sub_8A3E2C()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != &dword_0 + 1)
  {
  }

  v26 = v0;
  v7 = *(v5 + 232);
  if (v7 != &dword_0 + 1)
  {
  }

  v8 = v4 + v2;

  v9 = v1[9];
  v10 = sub_ABA680();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != &dword_0 + 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v26 + v15;

  v19 = *(v26 + v15 + 208);
  if (v19 != &dword_0 + 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != &dword_0 + 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != &dword_0 + 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

void sub_8A41A8()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_893150(v6, (v0 + v4), (v0 + v5), v7);
}

uint64_t objectdestroy_263Tm(uint64_t a1)
{
  if (*(v1 + 40))
  {
  }

  return swift_deallocObject();
}

id sub_8A42C0()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

char *sub_8A42E4(char *result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != &dword_0 + 1)
  {
    v8 = result;

    v9 = v8;
    v10 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_8A4344()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_8A43D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_8A4430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_8A44C0()
{
  result = qword_E1E0B8;
  if (!qword_E1E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E0B8);
  }

  return result;
}

uint64_t TextArray.Element.init(text:accessibilityLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

void TextArray.body.getter(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v63 = _swiftEmptyArrayStorage;
    sub_8A5808(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v51 = v5;
    v53 = v6;
    v8 = (v5 + 56);
    v9 = v6;
    do
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 8);
      v13 = *v8;
      sub_AFF30(v10, v11, v12);
      v63 = v7;
      v14 = v7[2];
      v15 = v7[3];

      if (v14 >= v15 >> 1)
      {
        sub_8A5808((v15 > 1), v14 + 1, 1);
        v7 = v63;
      }

      v7[2] = v14 + 1;
      v16 = &v7[4 * v14];
      v16[4] = v10;
      v16[5] = v11;
      *(v16 + 48) = v12;
      v16[7] = v13;
      v8 += 6;
      --v9;
    }

    while (v9);
    v6 = v53;
    v4 = a3;
    v5 = v51;
  }

  v63 = a2;
  v64 = v4;
  sub_7ABE60();

  v17 = sub_AB6F20();
  v19 = v18;
  v60[0] = v17;
  v60[1] = v18;
  v21 = v20 & 1;
  v61 = v20 & 1;
  v62 = v22;
  Array<A>.joined(separator:)(v60, v7, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, &v63);

  sub_36B74(v17, v19, v21);

  v23 = 0;
  v24 = v63;
  v54 = v64;
  v52 = v65;
  v25 = v66;
  v26 = v5 + 72;
  v27 = _swiftEmptyArrayStorage;
LABEL_8:
  v28 = (v26 + 48 * v23);
  while (1)
  {
    if (v6 == v23)
    {
      v63 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B98, &qword_B2B398);
      sub_7C4134();
      v37 = sub_AB9140();
      v39 = v38;

      v63 = v37;
      v64 = v39;
      v40 = sub_AB6F20();
      v42 = v41;
      v44 = v43;
      v45 = sub_AB6E30();
      v47 = v46;
      v56 = v48;
      v59 = v49;
      sub_36B74(v24, v54, v52);

      sub_36B74(v40, v42, v44 & 1);

      *a4 = v45;
      *(a4 + 8) = v47;
      *(a4 + 16) = v56 & 1;
      *(a4 + 24) = v59;
      return;
    }

    if (v23 >= v6)
    {
      break;
    }

    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_20;
    }

    v31 = *v28;
    v28 += 6;
    v30 = v31;
    ++v23;
    if (v31)
    {
      v50 = v25;
      v32 = *(v28 - 7);

      v33 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_8A4C44(0, *(v27 + 2) + 1, 1, v27);
      }

      v35 = *(v27 + 2);
      v34 = *(v27 + 3);
      if (v35 >= v34 >> 1)
      {
        v27 = sub_8A4C44((v34 > 1), v35 + 1, 1, v27);
      }

      *(v27 + 2) = v35 + 1;
      v36 = &v27[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v30;
      v23 = v29;
      v6 = v33;
      v25 = v50;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t TextArray.Element.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7ABE60();

  result = sub_AB6F20();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_8A49D8@<X0>(uint64_t a3@<X8>)
{
  result = sub_AB6E50();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

double sub_8A4A34@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_AFAA90;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void *sub_8A4A54(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17068, &qword_B29C68);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_8A4C44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3D0, &qword_B315F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_8A4D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8, &unk_B2C410);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_8A4EA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_8A5080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0F0, &qword_B345B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8A51A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0E8, &qword_B345A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_8A52C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0C0, &qword_B34580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_8A53D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0E0, &qword_B345A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C490, &qword_B31780);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_8A5504(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0D0, &qword_B34590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0D8, &qword_B34598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8A5638(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0, &unk_B33020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_8A5748(void *a1, int64_t a2, char a3)
{
  result = sub_8535D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A5768(char *a1, int64_t a2, char a3)
{
  result = sub_8537C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A5788(char *a1, int64_t a2, char a3)
{
  result = sub_8538D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A57A8(char *a1, int64_t a2, char a3)
{
  result = sub_8539D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A57C8(char *a1, int64_t a2, char a3)
{
  result = sub_853AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_8A57E8(void *a1, int64_t a2, char a3)
{
  result = sub_853BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A5808(char *a1, int64_t a2, char a3)
{
  result = sub_853EB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_8A587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_AB6600();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return sub_AB6610();
}

uint64_t sub_8A5974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_AB6600();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_AB6610();
}

uint64_t Text.with<A>(style:configurator:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  v21 = a2;
  v22 = a4;
  v6 = a1;
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_8A8260(v12, v13, v11 & 1, v14, v6, v8);
  v17 = v16;
  v19 = v18;
  v21(v15);
  sub_8A6A6C(v10, v6, a3, a5, v22);
  sub_36B74(v15, v17, v19 & 1);

  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_8A5BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  *(&v84 + 1) = a2;
  v85 = a4;
  v80 = a3;
  *&v84 = a1;
  v81 = a6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E188, &qword_B34688);
  __chkstk_darwin();
  v8 = &v71[-v7];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E190, &qword_B34690);
  __chkstk_darwin();
  v76 = &v71[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E198, &qword_B34698);
  __chkstk_darwin();
  v11 = &v71[-v10];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E160, &qword_B34670);
  __chkstk_darwin();
  v74 = &v71[-v12];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E120, &qword_B34650);
  __chkstk_darwin();
  v79 = &v71[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E170, &qword_B34678);
  __chkstk_darwin();
  v16 = &v71[-v15];
  if (a5 > 5u)
  {
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        v75 = v8;
        if (a5 == 8)
        {
          v17 = sub_AB74B0();
          KeyPath = swift_getKeyPath();
          v19 = swift_getKeyPath();
          LOBYTE(v111) = v80 & 1;
          LOBYTE(v105) = 0;
          v119 = v84;
          LOBYTE(v120) = v80 & 1;
          *(&v120 + 1) = v85;
          *&v121 = KeyPath;
          *(&v121 + 1) = v17;
          *&v122 = v19;
          *(&v122 + 1) = 1;
          LOBYTE(v123) = 0;
          v125 = v84;
          LOBYTE(v126) = v80 & 1;
          *(&v126 + 1) = v85;
          *&v127 = KeyPath;
          *(&v127 + 1) = v17;
          *&v128 = v19;
          *(&v128 + 1) = 1;
          LOBYTE(v129) = 0;
          sub_AFF30(v84, *(&v84 + 1), v80 & 1);

          sub_15F84(&v119, &v86, &qword_E1E140, &qword_B34660);
          sub_12E1C(&v125, &qword_E1E140, &qword_B34660);
          v20 = v122;
          v21 = v75;
          *(v75 + 2) = v121;
          *(v21 + 48) = v20;
          *(v21 + 64) = v123;
          v22 = v120;
          *v21 = v119;
          *(v21 + 16) = v22;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140, &qword_B34660);
          sub_8A87C4();
          sub_8A88DC();
          return sub_AB6610();
        }

        goto LABEL_11;
      }

      v56 = sub_AB74B0();
      v75 = v56;
      v57 = swift_getKeyPath();
      v58 = v84;
      *v11 = v84;
      v59 = v80 & 1;
      v11[16] = v59;
      v80 = v59;
      *(v11 + 3) = v85;
      *(v11 + 4) = v57;
      v73 = v57;
      *(v11 + 5) = v56;
      swift_storeEnumTagMultiPayload();
      sub_AFF30(v58, *(&v58 + 1), v59);

      sub_AFF30(v58, *(&v58 + 1), v59);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B160, &qword_B2FF88);
      sub_8A8AB0();
      sub_835A48();
      v60 = v74;
      sub_AB6610();
      sub_15F84(v60, v76, &qword_E1E160, &qword_B34670);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E130, &qword_B34658);
      sub_8A8850();
      sub_8A8A24();
      v61 = v79;
      sub_AB6610();
      sub_12E1C(v60, &qword_E1E160, &qword_B34670);
      sub_15F84(v61, v8, &qword_E1E120, &qword_B34650);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140, &qword_B34660);
      sub_8A87C4();
      sub_8A88DC();
      sub_AB6610();
      sub_36B74(v84, *(&v84 + 1), v80);

      v35 = v61;
      v36 = &qword_E1E120;
      v37 = &qword_B34650;
      return sub_12E1C(v35, v36, v37);
    }

LABEL_9:
    v38 = sub_AB74E0();
    v75 = v8;
    v39 = v38;
    v40 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = v80 & 1;
    LOBYTE(v86) = v80 & 1;
    LOBYTE(v111) = 0;
    v43 = v84;
    v92 = v84;
    LOBYTE(v93) = v80 & 1;
    v44 = v85;
    *(&v93 + 1) = v85;
    *&v94 = v40;
    *(&v94 + 1) = v39;
    *&v95 = v41;
    *(&v95 + 1) = 2;
    v96 = 0;
    v45 = swift_getKeyPath();
    v121 = v94;
    v122 = v95;
    LOBYTE(v123) = v96;
    v119 = v92;
    v120 = v93;
    v97 = v43;
    v98 = v42;
    v99 = v44;
    v100 = v40;
    v101 = v39;
    v102 = v41;
    v103 = 2;
    v104 = 0;
    sub_AFF30(v43, *(&v43 + 1), v42);

    sub_15F84(&v92, &v125, &qword_E1E140, &qword_B34660);
    sub_12E1C(&v97, &qword_E1E140, &qword_B34660);
    v107 = v121;
    v108 = v122;
    v105 = v119;
    v106 = v120;
    *&v109 = v123;
    *(&v109 + 1) = v45;
    v110 = 1;
    v113 = v121;
    v114 = v122;
    v111 = v119;
    v112 = v120;
    v115 = v123;
    v116 = v45;
    v117 = 1;
    sub_15F84(&v105, &v125, &qword_E1E150, &qword_B34668);
    sub_12E1C(&v111, &qword_E1E150, &qword_B34668);
    v127 = v107;
    v128 = v108;
    v129 = v109;
    LOBYTE(v130) = v110;
    v125 = v105;
    v126 = v106;
    v118 = 1;
    HIBYTE(v130) = 1;
    sub_15F84(&v105, &v119, &qword_E1E150, &qword_B34668);
    sub_15F84(&v105, &v119, &qword_E1E150, &qword_B34668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140, &qword_B34660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E150, &qword_B34668);
    sub_8A88DC();
    sub_8A8980();
    sub_AB6610();
    v46 = v89;
    v121 = v88;
    v122 = v89;
    v47 = v90;
    v123 = v90;
    v48 = v91;
    v124 = v91;
    v49 = v86;
    v50 = v87;
    v119 = v86;
    v120 = v87;
    v51 = v76;
    *(v76 + 2) = v88;
    *(v51 + 3) = v46;
    *(v51 + 4) = v47;
    *(v51 + 40) = v48;
    *v51 = v49;
    *(v51 + 1) = v50;
    swift_storeEnumTagMultiPayload();
    sub_15F84(&v119, &v125, &qword_E1E130, &qword_B34658);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E130, &qword_B34658);
    sub_8A8850();
    sub_8A8A24();
    v52 = v79;
    sub_AB6610();
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v130 = v91;
    v125 = v86;
    v126 = v87;
    sub_12E1C(&v125, &qword_E1E130, &qword_B34658);
    sub_15F84(v52, v75, &qword_E1E120, &qword_B34650);
    swift_storeEnumTagMultiPayload();
    sub_8A87C4();
    sub_AB6610();
    v53 = &qword_E1E150;
    v54 = &qword_E1E150;
    v55 = &qword_B34668;
LABEL_12:
    sub_12E1C(&v105, v54, v55);
    sub_12E1C(&v105, v53, v55);
    v35 = v52;
    v36 = &qword_E1E120;
    v37 = &qword_B34650;
    return sub_12E1C(v35, v36, v37);
  }

  if (a5 == 4)
  {
    goto LABEL_9;
  }

  v75 = v8;
  if (a5 != 5)
  {
LABEL_11:
    v62 = sub_AB74D0();
    v63 = swift_getKeyPath();
    v64 = swift_getKeyPath();
    LOBYTE(v119) = v80 & 1;
    LOBYTE(v86) = 0;
    v105 = v84;
    LOBYTE(v106) = v80 & 1;
    *(&v106 + 1) = v85;
    *&v107 = v63;
    *(&v107 + 1) = v62;
    *&v108 = v64;
    *(&v108 + 1) = 1;
    LOBYTE(v109) = 0;
    v111 = v84;
    LOBYTE(v112) = v80 & 1;
    *(&v112 + 1) = v85;
    *&v113 = v63;
    *(&v113 + 1) = v62;
    *&v114 = v64;
    *(&v114 + 1) = 1;
    LOBYTE(v115) = 0;
    sub_AFF30(v84, *(&v84 + 1), v80 & 1);

    sub_15F84(&v105, &v125, &qword_E1E140, &qword_B34660);
    sub_12E1C(&v111, &qword_E1E140, &qword_B34660);
    v127 = v107;
    v128 = v108;
    LOBYTE(v129) = v109;
    v125 = v105;
    v126 = v106;
    LOBYTE(v97) = 0;
    HIBYTE(v130) = 0;
    sub_15F84(&v105, &v119, &qword_E1E140, &qword_B34660);
    sub_15F84(&v105, &v119, &qword_E1E140, &qword_B34660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140, &qword_B34660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E150, &qword_B34668);
    sub_8A88DC();
    sub_8A8980();
    sub_AB6610();
    v65 = v89;
    v121 = v88;
    v122 = v89;
    v66 = v90;
    v123 = v90;
    v67 = v91;
    v124 = v91;
    v68 = v86;
    v69 = v87;
    v119 = v86;
    v120 = v87;
    v70 = v76;
    *(v76 + 2) = v88;
    *(v70 + 3) = v65;
    *(v70 + 4) = v66;
    *(v70 + 40) = v67;
    *v70 = v68;
    *(v70 + 1) = v69;
    swift_storeEnumTagMultiPayload();
    sub_15F84(&v119, &v125, &qword_E1E130, &qword_B34658);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E130, &qword_B34658);
    sub_8A8850();
    sub_8A8A24();
    v52 = v79;
    sub_AB6610();
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v130 = v91;
    v125 = v86;
    v126 = v87;
    sub_12E1C(&v125, &qword_E1E130, &qword_B34658);
    sub_15F84(v52, v75, &qword_E1E120, &qword_B34650);
    swift_storeEnumTagMultiPayload();
    sub_8A87C4();
    sub_AB6610();
    v53 = &qword_E1E140;
    v54 = &qword_E1E140;
    v55 = &qword_B34660;
    goto LABEL_12;
  }

  v24 = sub_AB74E0();
  v73 = swift_getKeyPath();
  v25 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E180, &qword_B34680) + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B860, &qword_B30798) + 28);
  v72 = enum case for Text.Case.uppercase(_:);
  v27 = sub_AB6E60();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v25 + v26, v72, v27);
  (*(v28 + 56))(v25 + v26, 0, 1, v27);
  *v25 = swift_getKeyPath();
  v29 = v84;
  *v16 = v84;
  LOBYTE(v27) = v80 & 1;
  v16[16] = v80 & 1;
  v30 = v73;
  *(v16 + 3) = v85;
  *(v16 + 4) = v30;
  *(v16 + 5) = v24;
  v31 = swift_getKeyPath();
  v32 = &v16[*(v14 + 36)];
  *v32 = v31;
  *(v32 + 1) = 1;
  v32[16] = 0;
  sub_15F84(v16, v11, &qword_E1E170, &qword_B34678);
  swift_storeEnumTagMultiPayload();
  sub_AFF30(v29, *(&v29 + 1), v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B160, &qword_B2FF88);
  sub_8A8AB0();
  sub_835A48();
  v33 = v74;
  sub_AB6610();
  sub_15F84(v33, v76, &qword_E1E160, &qword_B34670);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E130, &qword_B34658);
  sub_8A8850();
  sub_8A8A24();
  v34 = v79;
  sub_AB6610();
  sub_12E1C(v33, &qword_E1E160, &qword_B34670);
  sub_15F84(v34, v75, &qword_E1E120, &qword_B34650);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140, &qword_B34660);
  sub_8A87C4();
  sub_8A88DC();
  sub_AB6610();
  sub_12E1C(v34, &qword_E1E120, &qword_B34650);
  v35 = v16;
  v36 = &qword_E1E170;
  v37 = &qword_B34678;
  return sub_12E1C(v35, v36, v37);
}

uint64_t sub_8A6A6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v200 = a4;
  LODWORD(v190) = a2;
  v186 = a1;
  v193 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1AB20, &unk_B2F7C0);
  v185 = a3;
  v6 = sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B860, &qword_B30798);
  v7 = sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40, &qword_B30EC0);
  v8 = sub_AB5D50();
  v9 = sub_AB6620();
  v175 = *(v9 - 8);
  __chkstk_darwin();
  v174 = &v171 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BFF8, &qword_B310F0);
  __chkstk_darwin();
  v12 = &v171 - v11;
  v199 = v7;
  v173 = *(v7 - 8);
  __chkstk_darwin();
  v14 = &v171 - v13;
  v198 = v8;
  v177 = *(v8 - 8);
  __chkstk_darwin();
  v16 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v171 - v17;
  v19 = sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1CDC8, &qword_B31FA8);
  v176 = *(sub_AB5D50() - 8);
  __chkstk_darwin();
  v181 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v180 = &v171 - v21;
  v195 = v22;
  v179 = *(sub_AB6620() - 8);
  __chkstk_darwin();
  v178 = &v171 - v23;
  v197 = v24;
  v194 = v9;
  v183 = *(sub_AB6620() - 8);
  __chkstk_darwin();
  v182 = &v171 - v25;
  v201 = v6;
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v28 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v171 - v29;
  v184 = *(v19 - 8);
  __chkstk_darwin();
  v32 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v187 = &v171 - v33;
  v189 = v34;
  v196 = v19;
  sub_AB6620();
  __chkstk_darwin();
  v188 = &v171 - v35;
  v191 = v37;
  v192 = v36;
  if (v190 > 5u)
  {
    if (v190 != 6)
    {
      v38 = v26;
      if (v190 == 7)
      {
        sub_AB74B0();
        v110 = v200;
        sub_AB70B0();

        v111 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0);
        v264 = v110;
        v265 = v111;
        v112 = v201;
        WitnessTable = swift_getWitnessTable();
        sub_7FF188();
        v114 = v198;
        v115 = *(v38 + 8);
        v187 = v38 + 8;
        v190 = v115;
        v115(v28, v112);
        sub_7FF188();
        v116 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860, &qword_B30798);
        v262 = WitnessTable;
        v263 = v116;
        v117 = swift_getWitnessTable();
        v118 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40, &qword_B30EC0);
        v260 = v117;
        v261 = v118;
        v119 = swift_getWitnessTable();
        v120 = v174;
        sub_8A5974(v28, v114, v112, v119, WitnessTable);
        v258 = WitnessTable;
        v259 = v118;
        v121 = swift_getWitnessTable();
        v186 = v121;
        v122 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8, &qword_B31FA8);
        v256 = v121;
        v257 = v122;
        v123 = swift_getWitnessTable();
        v254 = v121;
        v255 = v123;
        v124 = v197;
        v125 = swift_getWitnessTable();
        v252 = v119;
        v253 = WitnessTable;
        v126 = v194;
        v127 = swift_getWitnessTable();
        v128 = v182;
        sub_8A5974(v120, v124, v126, v125, v127);
        (*(v175 + 8))(v120, v126);
        v250 = v125;
        v251 = v127;
        v129 = v189;
        v130 = swift_getWitnessTable();
        v56 = v188;
        sub_8A587C(v128, v129, v196, v130, v186);
        v131 = v128;
        v84 = v200;
        (*(v183 + 8))(v131, v129);
        v132 = v30;
        v133 = v201;
        v134 = v190;
        v190(v28, v201);
        v134(v132, v133);
        goto LABEL_14;
      }

      v39 = v200;
      if (v190 == 8)
      {
        sub_AB74B0();
        sub_AB70B0();

        v40 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0);
        v298 = v39;
        v299 = v40;
        v41 = v201;
        v42 = swift_getWitnessTable();
        v43 = v32;
        sub_AB7380();
        (*(v38 + 8))(v30, v41);
        v186 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40, &qword_B30EC0);
        v296 = v42;
        v297 = v186;
        v44 = v184;
        v45 = v196;
        v46 = swift_getWitnessTable();
        sub_7FF188();
        v190 = *(v44 + 8);
        v190(v43, v45);
        sub_7FF188();
        v47 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8, &qword_B31FA8);
        v294 = v46;
        v295 = v47;
        v48 = swift_getWitnessTable();
        v292 = v46;
        v293 = v48;
        v49 = swift_getWitnessTable();
        v50 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860, &qword_B30798);
        v290 = v42;
        v291 = v50;
        v288 = swift_getWitnessTable();
        v289 = v186;
        v286 = swift_getWitnessTable();
        v287 = v42;
        v51 = swift_getWitnessTable();
        v284 = v49;
        v285 = v51;
        v52 = v189;
        v53 = swift_getWitnessTable();
        v54 = v188;
        sub_8A5974(v43, v52, v45, v53, v46);
        v55 = v43;
        v56 = v54;
        v57 = v190;
        v190(v55, v45);
        v57(v187, v45);
LABEL_9:
        v84 = v200;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_10:
    sub_AB74E0();
    v85 = v200;
    sub_AB70B0();

    v86 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0);
    v232 = v85;
    v233 = v86;
    v87 = v201;
    v88 = swift_getWitnessTable();
    v89 = v187;
    v90 = v88;
    v185 = v88;
    sub_AB7380();
    (*(v26 + 8))(v30, v87);
    v186 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40, &qword_B30EC0);
    v230 = v90;
    v231 = v186;
    v91 = v196;
    v92 = swift_getWitnessTable();
    v93 = v181;
    sub_AB7210();
    (*(v184 + 8))(v89, v91);
    v94 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8, &qword_B31FA8);
    v228 = v92;
    v229 = v94;
    v95 = v195;
    v96 = swift_getWitnessTable();
    sub_7FF188();
    v190 = *(v176 + 8);
    v190(v93, v95);
    sub_7FF188();
    v97 = v178;
    v177 = v92;
    sub_8A5974(v93, v91, v95, v92, v96);
    v226 = v92;
    v227 = v96;
    v98 = v197;
    v99 = swift_getWitnessTable();
    v100 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860, &qword_B30798);
    v101 = v185;
    v224 = v185;
    v225 = v100;
    v222 = swift_getWitnessTable();
    v223 = v186;
    v220 = swift_getWitnessTable();
    v221 = v101;
    v102 = v194;
    v103 = swift_getWitnessTable();
    v104 = v182;
    sub_8A587C(v97, v98, v102, v99, v103);
    (*(v179 + 8))(v97, v98);
    v218 = v99;
    v219 = v103;
    v105 = v95;
    v106 = v196;
    v107 = v189;
    v108 = swift_getWitnessTable();
    v56 = v188;
    sub_8A587C(v104, v107, v106, v108, v177);
    (*(v183 + 8))(v104, v107);
    v84 = v200;
    v109 = v190;
    v190(v181, v105);
    v109(v180, v105);
    goto LABEL_14;
  }

  v172 = v18;
  if (v190 == 4)
  {
    goto LABEL_10;
  }

  v38 = v26;
  v39 = v200;
  if (v190 == 5)
  {
    sub_AB74E0();
    sub_AB70B0();

    v58 = enum case for Text.Case.uppercase(_:);
    v59 = sub_AB6E60();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v12, v58, v59);
    (*(v60 + 56))(v12, 0, 1, v59);
    v61 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0);
    v248 = v39;
    v249 = v61;
    v62 = v201;
    v63 = swift_getWitnessTable();
    v64 = v14;
    sub_AB7340();
    sub_12E1C(v12, &qword_E1BFF8, &qword_B310F0);
    (*(v38 + 8))(v30, v62);
    v65 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860, &qword_B30798);
    v246 = v63;
    v247 = v65;
    v66 = v199;
    v67 = swift_getWitnessTable();
    sub_AB7380();
    (*(v173 + 8))(v64, v66);
    v68 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40, &qword_B30EC0);
    v244 = v67;
    v245 = v68;
    v69 = v198;
    v70 = swift_getWitnessTable();
    v171 = v16;
    sub_7FF188();
    v190 = *(v177 + 8);
    v177 += 8;
    v190(v16, v69);
    sub_7FF188();
    v71 = v174;
    sub_8A587C(v16, v69, v201, v70, v63);
    v242 = v63;
    v243 = v68;
    v72 = swift_getWitnessTable();
    v73 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8, &qword_B31FA8);
    v240 = v72;
    v187 = v72;
    v241 = v73;
    v74 = swift_getWitnessTable();
    v238 = v72;
    v239 = v74;
    v75 = v197;
    v76 = swift_getWitnessTable();
    v236 = v70;
    v237 = v63;
    v77 = v194;
    v78 = swift_getWitnessTable();
    v79 = v182;
    sub_8A5974(v71, v75, v77, v76, v78);
    (*(v175 + 8))(v71, v77);
    v234 = v76;
    v235 = v78;
    v80 = v196;
    v81 = v189;
    v82 = swift_getWitnessTable();
    v56 = v188;
    sub_8A587C(v79, v81, v80, v82, v187);
    (*(v183 + 8))(v79, v81);
    v83 = v190;
    v190(v171, v69);
    v83(v172, v69);
    goto LABEL_9;
  }

LABEL_12:
  sub_AB74D0();
  sub_AB70B0();

  v135 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0);
  v216 = v39;
  v217 = v135;
  v136 = v201;
  v137 = swift_getWitnessTable();
  v138 = v184;
  v139 = v137;
  v140 = v32;
  sub_AB7380();
  (*(v38 + 8))(v30, v136);
  v141 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40, &qword_B30EC0);
  v214 = v139;
  v215 = v141;
  v142 = v196;
  v143 = swift_getWitnessTable();
  sub_7FF188();
  v190 = *(v138 + 8);
  v184 = v138 + 8;
  v190(v32, v142);
  sub_7FF188();
  v144 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8, &qword_B31FA8);
  v212 = v143;
  v213 = v144;
  v186 = v143;
  v145 = v195;
  v146 = swift_getWitnessTable();
  v147 = v178;
  sub_8A587C(v140, v142, v145, v143, v146);
  v210 = v143;
  v211 = v146;
  v148 = v197;
  v185 = swift_getWitnessTable();
  v149 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860, &qword_B30798);
  v208 = v139;
  v209 = v149;
  v206 = swift_getWitnessTable();
  v207 = v141;
  v204 = swift_getWitnessTable();
  v205 = v139;
  v150 = v194;
  v151 = swift_getWitnessTable();
  v152 = v182;
  v153 = v185;
  sub_8A587C(v147, v148, v150, v185, v151);
  (*(v179 + 8))(v147, v148);
  v202 = v153;
  v203 = v151;
  v154 = v200;
  v155 = v189;
  v156 = swift_getWitnessTable();
  v157 = v188;
  sub_8A587C(v152, v155, v142, v156, v186);
  (*(v183 + 8))(v152, v155);
  v158 = v140;
  v84 = v154;
  v56 = v157;
  v159 = v190;
  v190(v158, v142);
  v159(v187, v142);
LABEL_14:
  v160 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0);
  v282 = v84;
  v283 = v160;
  v161 = swift_getWitnessTable();
  v162 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40, &qword_B30EC0);
  v280 = v161;
  v281 = v162;
  v163 = swift_getWitnessTable();
  v164 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8, &qword_B31FA8);
  v278 = v163;
  v279 = v164;
  v165 = swift_getWitnessTable();
  v276 = v163;
  v277 = v165;
  v166 = swift_getWitnessTable();
  v167 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860, &qword_B30798);
  v274 = v161;
  v275 = v167;
  v272 = swift_getWitnessTable();
  v273 = v162;
  v270 = swift_getWitnessTable();
  v271 = v161;
  v168 = swift_getWitnessTable();
  v268 = v166;
  v269 = v168;
  v266 = swift_getWitnessTable();
  v267 = v163;
  v169 = v192;
  swift_getWitnessTable();
  sub_7FF188();
  return (*(v191 + 8))(v56, v169);
}

double Text.with(style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>)
{
  v7 = a1;
  v9 = sub_8A8260(a2, a3, a4 & 1, a5, a1, a7);
  v11 = v10;
  v13 = v12;
  sub_8A5BB4(v9, v10, v12 & 1, v14, v7, a6);
  sub_36B74(v9, v11, v13 & 1);

  return result;
}

uint64_t sub_8A8260(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5, __n128 a6)
{
  if (a5 <= 3u)
  {
    if (a5 != 2)
    {
      sub_AB6C40();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 <= 5u)
  {
    if (a5 != 4)
    {
      sub_AB6C10();
      v8 = sub_AB6E00();
      v10 = v9;
      v12 = v11;
      sub_AB6C90();
      v6 = sub_AB6E80();

      sub_36B74(v8, v10, v12 & 1);

      return v6;
    }

    goto LABEL_8;
  }

  if (a5 - 6 < 2)
  {
LABEL_8:
    sub_AB6B90();
    goto LABEL_9;
  }

  sub_AB6C50();
LABEL_9:
  v6 = sub_AB6E80();

  return v6;
}

unint64_t sub_8A83C0()
{
  result = qword_E1E100;
  if (!qword_E1E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E100);
  }

  return result;
}

uint64_t sub_8A8434(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1AB20, &unk_B2F7C0);
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40, &qword_B30EC0);
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1CDC8, &qword_B31FA8);
  sub_AB5D50();
  sub_AB6620();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B860, &qword_B30798);
  sub_AB5D50();
  sub_AB5D50();
  sub_AB6620();
  sub_AB6620();
  sub_AB6620();
  sub_8A86E0(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0);
  swift_getWitnessTable();
  sub_8A86E0(&qword_E1BED8, &qword_E1BE40, &qword_B30EC0);
  swift_getWitnessTable();
  sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8, &qword_B31FA8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_8A86E0(&qword_E1BEF0, &qword_E1B860, &qword_B30798);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_8A86E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_8A8738()
{
  result = qword_E1E108;
  if (!qword_E1E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E110, &qword_B34648);
    sub_8A87C4();
    sub_8A88DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E108);
  }

  return result;
}

unint64_t sub_8A87C4()
{
  result = qword_E1E118;
  if (!qword_E1E118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E120, &qword_B34650);
    sub_8A8850();
    sub_8A8A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E118);
  }

  return result;
}

unint64_t sub_8A8850()
{
  result = qword_E1E128;
  if (!qword_E1E128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E130, &qword_B34658);
    sub_8A88DC();
    sub_8A8980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E128);
  }

  return result;
}

unint64_t sub_8A88DC()
{
  result = qword_E1E138;
  if (!qword_E1E138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E140, &qword_B34660);
    sub_835A48();
    sub_8A86E0(&qword_E1BED8, &qword_E1BE40, &qword_B30EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E138);
  }

  return result;
}

unint64_t sub_8A8980()
{
  result = qword_E1E148;
  if (!qword_E1E148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E150, &qword_B34668);
    sub_8A88DC();
    sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8, &qword_B31FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E148);
  }

  return result;
}

unint64_t sub_8A8A24()
{
  result = qword_E1E158;
  if (!qword_E1E158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E160, &qword_B34670);
    sub_8A8AB0();
    sub_835A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E158);
  }

  return result;
}

unint64_t sub_8A8AB0()
{
  result = qword_E1E168;
  if (!qword_E1E168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E170, &qword_B34678);
    sub_8A8B54();
    sub_8A86E0(&qword_E1BED8, &qword_E1BE40, &qword_B30EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E168);
  }

  return result;
}

unint64_t sub_8A8B54()
{
  result = qword_E1E178;
  if (!qword_E1E178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E180, &qword_B34680);
    sub_835A48();
    sub_8A86E0(&qword_E1BEF0, &qword_E1B860, &qword_B30798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E178);
  }

  return result;
}

__n128 VerticalToggleSlider.packageDefinition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_7D38E4(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t VerticalToggleSlider.packageDefinition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_7D38E4(v12, v11);
  sub_7D38E4(a1, v11);
  sub_12E1C(v18, &qword_E18248, &qword_B2B8F0);
  sub_8AC5D4(v12);
  sub_12E1C(v12, &qword_E18248, &qword_B2B8F0);
  return sub_12E1C(a1, &qword_E18248, &qword_B2B8F0);
}

void (*VerticalToggleSlider.packageDefinition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_7D38E4(v4, v4 + 416);
  return sub_8A8EA8;
}

void sub_8A8EA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_7D38E4(v2 + 624, v2 + 728);
    sub_7D38E4(v2 + 624, v2 + 728);
    sub_7D38E4(v2 + 104, v2 + 728);
    sub_12E1C(v4, &qword_E18248, &qword_B2B8F0);
    sub_8AC5D4((v2 + 104));
    sub_12E1C(v2 + 104, &qword_E18248, &qword_B2B8F0);
    sub_12E1C(v2 + 624, &qword_E18248, &qword_B2B8F0);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_7D38E4(v2 + 208, v2 + 624);
    sub_7D38E4(v4, v2 + 624);
    sub_12E1C(v2 + 416, &qword_E18248, &qword_B2B8F0);
    sub_8AC5D4((v2 + 208));
    sub_12E1C(v2 + 208, &qword_E18248, &qword_B2B8F0);
    v28 = v4;
  }

  sub_12E1C(v28, &qword_E18248, &qword_B2B8F0);

  free(v2);
}

void VerticalToggleSlider.isOn.setter(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = v2;
  sub_8AD6E0(v3);
}

void (*VerticalToggleSlider.isOn.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) != 2;
  return sub_8A9198;
}

void sub_8A9198(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(a1 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  sub_8AD6E0(v4);
}

void VerticalToggleSlider.value.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    if (v2 > a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_8AAADC(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((a1 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));
  }
}

uint64_t (*VerticalToggleSlider.value.modify(uint64_t (**a1)()))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *result = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  *(result + 1) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  *(result + 2) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  v7 = *(v1 + v6);
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    *(result + 3) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    v9 = (v1 + v8);
    v10 = v9[1];
    v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    if (*v9 > v11)
    {
      v11 = *v9;
    }

    if (v10 < v11)
    {
      v11 = v9[1];
    }

    *(result + 8) = v5 + ((v7 - v5) * ((v11 - *v9) / (v10 - *v9)));
    return sub_8A9310;
  }

  return result;
}

void sub_8A9310(float **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + *(*a1 + 1));
  v5 = *(v3 + *(*a1 + 2));
  if (a2)
  {
    if (v4 <= v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 > v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v2[8];
  if (v4 > v6)
  {
    v6 = v4;
  }

  if (v5 < v6)
  {
    v6 = v5;
  }

  sub_8AAADC(*(v3 + *(v2 + 3)) + ((*(v3 + *(v2 + 3) + 4) - *(v3 + *(v2 + 3))) * ((v6 - v4) / (v5 - v4))));

  free(v2);
}

void VerticalToggleSlider.minValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) <= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_ABAD90(145);
    v9._object = 0x8000000000B777E0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_AB94A0(v9);
    sub_AB9B10();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_AB94A0(v10);
    sub_AB9B10();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x8000000000B77830;
    sub_AB94A0(v11);
    if (qword_E16900 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_E73880);

    v3 = sub_AB4BA0();
    v4 = sub_AB9F40();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_7AB3E0(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_0, v3, v4, "%{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
  }
}

void (*VerticalToggleSlider.minValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  return sub_8A9618;
}

void VerticalToggleSlider.maxValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) >= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_ABAD90(145);
    v9._object = 0x8000000000B777E0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_AB94A0(v9);
    sub_AB9B10();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_AB94A0(v10);
    sub_AB9B10();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x8000000000B77830;
    sub_AB94A0(v11);
    if (qword_E16900 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_E73880);

    v3 = sub_AB4BA0();
    v4 = sub_AB9F40();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_7AB3E0(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_0, v3, v4, "%{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a1;
  }
}

void (*VerticalToggleSlider.maxValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  return sub_8A98B0;
}

void VerticalToggleSlider.valueRange.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

void VerticalToggleSlider.valueRange.setter(float a1, float a2)
{
  if (a1 >= a2)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_ABAD90(164);
    v10._object = 0x8000000000B777E0;
    v10._countAndFlagsBits = 0xD000000000000042;
    sub_AB94A0(v10);
    sub_AB9B10();
    v11._countAndFlagsBits = 3026478;
    v11._object = 0xE300000000000000;
    sub_AB94A0(v11);
    sub_AB9B10();
    v12._countAndFlagsBits = 0xD00000000000005BLL;
    v12._object = 0x8000000000B77880;
    sub_AB94A0(v12);
    if (qword_E16900 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_E73880);

    v4 = sub_AB4BA0();
    v5 = sub_AB9F40();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136446210;
      v8 = sub_7AB3E0(0, 0xE000000000000000, v9);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_0, v4, v5, "%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a2;
  }
}

uint64_t (*VerticalToggleSlider.valueRange.modify(uint64_t (*result)()))()
{
  *result = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 2) = v2;
    *(result + 3) = v3;
    return sub_8A9B8C;
  }

  return result;
}

float VerticalToggleSlider.minLevelOffsetRatio.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.minLevelOffsetRatio.setter(float a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  if (v4 != a1)
  {
    sub_8AB4F0(0x100000000);
    v5 = sub_8AB0D8();
    v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v7 = [v1 traitCollection];
    if (v6 == 2)
    {

      v8 = 0.0;
    }

    else if (v6)
    {

      v8 = 1.0;
    }

    else
    {
      v9 = v7;
      v10 = [v7 accessibilityContrast];

      v8 = 0.5;
      if (v10 == &dword_0 + 1)
      {
        v8 = 1.0;
      }
    }

    [v5 setAlpha:v8];
  }
}

void (*VerticalToggleSlider.minLevelOffsetRatio.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 40) = *v6;
  return sub_8A9D9C;
}

void sub_8A9D9C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    VerticalToggleSlider.minLevelOffsetRatio.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      sub_8AB4F0(0x100000000);
      v8 = sub_8AB0D8();
      v9 = v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v10 = [v7 traitCollection];
      if (v9 == 2)
      {

        v11 = 0.0;
      }

      else if (v9)
      {

        v11 = 1.0;
      }

      else
      {
        v12 = v10;
        v13 = [v10 accessibilityContrast];

        v11 = 0.5;
        if (v13 == &dword_0 + 1)
        {
          v11 = 1.0;
        }
      }

      [v8 setAlpha:v11];
    }
  }

  free(v2);
}

uint64_t VerticalToggleSlider.interactionScaleFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.interactionScaleFactor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isTapToToggleEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.isVisuallyDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isVisuallyDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = sub_8AB054();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

void (*VerticalToggleSlider.isVisuallyDisabled.modify(uint64_t *a1))(id **a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_8AA25C;
}

void sub_8AA25C(id **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = *(*a1 + 40);
  v7 = v4[v5];
  v4[v5] = v6;
  if ((a2 & 1) == 0)
  {
    if (((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  if (((v6 ^ v7) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = [v3[3] isEnabled] ^ 1;
LABEL_8:
  v9 = *(v3[3] + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  if (v9)
  {
    v10 = 0.4;
    if (!v8)
    {
      v10 = 1.0;
    }

    [v9 setAlpha:v10];
  }

  v11 = sub_8AB054();
  v12 = v11;
  v13 = 1.0;
  if (v8)
  {
    v13 = 0.5;
  }

  [v11 setAlpha:v13];

LABEL_15:

  free(v3);
}

uint64_t VerticalToggleSlider.isContinuous.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isContinuous.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.automaticallyDisablesOnMaxValue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.longPressMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.longPressMode.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_8ABEC8();
  }
}

void (*VerticalToggleSlider.longPressMode.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_8AA65C;
}

void sub_8AA65C(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    sub_8ABEC8();
  }

  free(v2);
}

uint64_t VerticalToggleSlider.growAnchorPoint.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.growAnchorPoint.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = sub_8AAA20();
  v5 = v1[v3];
  v6 = [v1 traitCollection];
  *&v7 = sub_8AC8A0(v6, v5).n128_u64[0];
  v9 = v8;

  [v4 setAnchorPoint:{v7, v9}];
  v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
  [v1 bounds];
  [v10 setFrame:?];
}

uint64_t (*VerticalToggleSlider.growAnchorPoint.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_8AA87C;
}

void sub_8AA87C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_8AAA20();
    v7 = v4[v5];
    v8 = [v4 traitCollection];
    *&v9 = sub_8AC8A0(v8, v7).n128_u64[0];
    v11 = v10;

    [v6 setAnchorPoint:{v9, v11}];
    v12 = *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
    [v4 bounds];
    [v12 setFrame:?];
  }

  free(v3);
}

id sub_8AA96C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_8AAA20()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  }

  else
  {
    v4 = sub_8AA96C();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_8AAADC(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = a1;
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
    v4 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      sub_8AB4F0(0x100000000);
      v10 = sub_8AB0D8();
      v5 = v1[v3];
      v6 = [v1 traitCollection];
      if (v5 == 2)
      {

        v7 = 0.0;
      }

      else if (v5)
      {

        v7 = 1.0;
      }

      else
      {
        v8 = v6;
        v9 = [v6 accessibilityContrast];

        v7 = 0.5;
        if (v9 == &dword_0 + 1)
        {
          v7 = 1.0;
        }
      }

      [v10 setAlpha:v7];
    }
  }
}

id sub_8AABE8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIButtonFeedbackGenerator) initWithStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_8AAC60()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = sub_8AB054();
  v4 = [v3 contentView];

  v5 = [v4 layer];
  if (v2 != &dword_0 + 1)
  {
    [v5 setCompositingFilter:kCAFilterPlusL];

    v11 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    v14 = [v13 colorWithAlphaComponent:0.18];

    [v11 setBackgroundColor:v14];
    v15 = sub_8AB0D8();
    v16 = [v12 whiteColor];
    [v15 setBackgroundColor:v16];
LABEL_8:

    sub_8ABC50();
    return;
  }

  [v5 setCompositingFilter:0];

  v6 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v7 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
  if (v6 != 2)
  {
    v17 = objc_allocWithZone(UIColor);
    v20[4] = sub_8AD630;
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_119878;
    v20[3] = &block_descriptor_102_0;
    v18 = _Block_copy(v20);
    v19 = [v17 initWithDynamicProvider:v18];
    _Block_release(v18);

    [v7 setBackgroundColor:v19];

    goto LABEL_7;
  }

  v8 = [v0 tintColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 colorWithAlphaComponent:0.2];

    [v7 setBackgroundColor:v10];
LABEL_7:
    v16 = sub_8AB0D8();
    v15 = [v0 tintColor];
    [v16 setBackgroundColor:v15];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_8AAF94()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  if (v0[v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v0 isEnabled] ^ 1;
  }

  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v3)
  {
    v4 = 0.4;
    if (!v2)
    {
      v4 = 1.0;
    }

    [v3 setAlpha:v4];
  }

  v5 = sub_8AB054();
  v6 = v5;
  v7 = 1.0;
  if (v2)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

id sub_8AB054()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_8AB0D8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  }

  else
  {
    v4 = sub_8AB054();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_8AB194()
{
  v1 = sub_8AAA20();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] setAutoresizingMask:18];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = v3;
  v7 = [v0 traitCollection];
  *&v8 = sub_8AC8A0(v7, v5).n128_u64[0];
  v10 = v9;

  [v6 setAnchorPoint:{v8, v10}];
  v11 = *&v0[v2];
  [v0 bounds];
  [v11 setFrame:?];

  [v0 addSubview:*&v0[v2]];
  v12 = sub_8AA96C();
  [v12 setClipsToBounds:1];

  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setUserInteractionEnabled:0];
  [*&v0[v13] setAutoresizingMask:18];
  v14 = *&v0[v2];
  v15 = *&v0[v13];
  [v14 bounds];
  [v15 setFrame:?];

  return [*&v0[v2] addSubview:*&v0[v13]];
}

void sub_8AB354()
{
  v1 = sub_8AB0D8();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView];
  v4 = sub_AB9260();
  [v3 setAccessibilityIdentifier:v4];

  [*&v0[v2] setAutoresizingMask:26];
  v5 = sub_8AB054();
  v6 = [v5 contentView];

  [v6 addSubview:*&v0[v2]];
  sub_8AB4F0(0x100000000);
  v7 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = *&v0[v2];
  v8 = [v0 traitCollection];
  if (v7 == 2)
  {

    v9 = 0.0;
  }

  else if (v7)
  {

    v9 = 1.0;
  }

  else
  {
    v10 = v8;
    v11 = [v8 accessibilityContrast];

    v9 = 0.5;
    if (v11 == &dword_0 + 1)
    {
      v9 = 1.0;
    }
  }

  [v12 setAlpha:v9];
}

void sub_8AB4F0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v31 = sub_8AB0D8();
    v2 = sub_8AB054();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v31 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    v12 = sub_8AB054();
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    Height = CGRectGetHeight(v33);
    v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio);
    swift_beginAccess();
    v23 = Height * *v22;
    v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
    [*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) bounds];
    v25 = CGRectGetHeight(v34);
    if ((a1 & 0x100000000) != 0)
    {
      v26 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    }

    else
    {
      v26 = *&a1;
    }

    v27 = v23 + (v25 - v23) * v26;
    [*(v1 + v24) bounds];
    v28 = CGRectGetHeight(v35) - v27;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = sub_8AB0D8();
    [*(v1 + v24) bounds];
    [v30 setFrame:{0.0, v29, CGRectGetWidth(v36), v27}];
  }
}

void sub_8AB6CC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v3;
  v58 = v2[96];
  v4 = *(v2 + 1);
  v52 = *v2;
  v53 = v4;
  v5 = *(v2 + 3);
  v54 = *(v2 + 2);
  v55 = v5;
  v59[0] = v52;
  v59[1] = v4;
  v59[2] = v54;
  v59[3] = v5;
  v59[4] = v56;
  v59[5] = v3;
  v60 = v58;
  if (*(&v52 + 1))
  {
    v6 = *(v2 + 5);
    v50[4] = *(v2 + 4);
    v50[5] = v6;
    v51 = v2[96];
    v7 = *(v2 + 1);
    v50[0] = *v2;
    v50[1] = v7;
    v8 = *(v2 + 3);
    v50[2] = *(v2 + 2);
    v50[3] = v8;
    v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
    v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v10)
    {
      v11 = v10;
      sub_7D38E4(&v52, v48);
      CoreAnimationPackageView.reset()();
    }

    else
    {
      v12 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
      v48[4] = v56;
      v48[5] = v57;
      v49 = v58;
      v48[0] = v52;
      v48[1] = v53;
      v48[2] = v54;
      v48[3] = v55;
      sub_7A1348(v48, v47);
      sub_7A1348(v59, v47);
      v13 = CoreAnimationPackageView.init(definition:)(v50);
      v14 = UIView.forAutolayout.getter();

      v11 = v14;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = *&v1[v9];
      *&v1[v9] = v11;
      if (v15)
      {
        v16 = v11;
        v17 = v15;
        v18 = sub_ABA790();

        if ((v18 & 1) == 0)
        {
          [v17 removeFromSuperview];
        }
      }

      v19 = sub_8AB054();
      v20 = [v19 contentView];

      [v20 addSubview:v11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_B13C80;
      v22 = [v11 topAnchor];
      v23 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
      v24 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] topAnchor];
      v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24];

      *(v21 + 32) = v25;
      v26 = [v11 leadingAnchor];
      v27 = [*&v1[v23] leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v21 + 40) = v28;
      v29 = [v11 trailingAnchor];
      v30 = [*&v1[v23] trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      *(v21 + 48) = v31;
      v32 = [v11 bottomAnchor];
      v33 = [*&v1[v23] bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v21 + 56) = v34;
      v35 = [v11 heightAnchor];
      v36 = [v11 widthAnchor];

      v37 = [v35 constraintEqualToAnchor:v36];
      *(v21 + 64) = v37;
      Array<A>.activate()(v21);
    }

    v38 = &v11[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
    if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] == 2)
    {
      swift_beginAccess();
      v39 = *v38;
      v40 = v38[1];
      *v38 = xmmword_B28420;
      sub_7A3608(v39, v40);
    }

    else
    {
      swift_beginAccess();
      v41 = *v38;
      v42 = v38[1];
      *v38 = xmmword_B28410;
      v43 = v11;
      sub_7A3608(v41, v42);

      sub_13C80(0, &qword_E1B340, OS_dispatch_queue_ptr);
      v44 = sub_ABA150();
      v45 = swift_allocObject();
      *(v45 + 16) = v1;
      *(v45 + 24) = v43;
      v46 = v1;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_8B1558, v45, 1.0);
    }

    sub_8ABC50();
    sub_12E1C(&v52, &qword_E18248, &qword_B2B8F0);
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
    if (!v11)
    {
      return;
    }

    [v11 removeFromSuperview];
  }
}

void sub_8ABC50()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v3 = v1;
    v19 = v3;
    if (v2 == 2)
    {
      v4 = [v3 layer];
      [v4 setCompositingFilter:0];

      v5 = [v0 traitCollection];
      v6 = [v5 accessibilityContrast];

      if (v6 != &dword_0 + 1)
      {
        v12 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v11 = v19;
        v13 = *&v19[v12];
        *&v19[v12] = 0;
        if (v13)
        {
          sub_7A4638();

          return;
        }

        goto LABEL_15;
      }

      CoreAnimationPackageView.foregroundColor.setter([v0 tintColor]);
    }

    else
    {
      v7 = [v0 traitCollection];
      v8 = [v7 accessibilityContrast];

      if (v8 != &dword_0 + 1)
      {
        v14 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v15 = v19;
        v16 = *&v19[v14];
        *&v19[v14] = 0;
        if (v16)
        {
          sub_7A4638();

          v15 = v19;
        }

        v17 = [v15 layer];
        v18 = kCAFilterDestOut;
        [v17 setCompositingFilter:v18];

        v11 = v20;
        goto LABEL_15;
      }

      v9 = [objc_opt_self() whiteColor];
      CoreAnimationPackageView.foregroundColor.setter(v9);
      v10 = [v19 layer];
      [v10 setCompositingFilter:0];
    }

    v11 = v19;

LABEL_15:
  }
}

void sub_8ABEC8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer];
  if (v0[v1] - 1 > 1)
  {
    if (!v3)
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v4 = 0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"longPressed:"];
    [v4 setMinimumPressDuration:0.25];
    [v0 addGestureRecognizer:v4];
  }

  v5 = *&v0[v2];
  *&v0[v2] = v4;
}

void sub_8ABFA8(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 == 2 || v4 == 1 && v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v5 = [a1 state];
    if ((v5 - 3) >= 3)
    {
      if (v5 == &dword_0 + 2)
      {
        v7 = sub_8AAA20();
        [a1 locationInView:v7];
        v9 = v8;
        v11 = v10;

        sub_8AC348(v9, v11);
      }

      else if (v5 == &dword_0 + 1)
      {
        v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
        v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 1;
        sub_8AD6E0(v6);
        [v1 sendActionsForControlEvents:0x10000];
        [v1 sendActionsForControlEvents:4096];
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {
      sub_8AC244();
    }
  }
}

void sub_8AC0E4(void *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == &dword_0 + 2)
      {
        v12 = sub_8AAA20();
        [a1 locationInView:v12];
        v14 = v13;
        v16 = v15;

        sub_8AC348(v14, v16);
      }

      else if (v4 == &dword_0 + 1)
      {
        [v1 sendActionsForControlEvents:0x10000];
        v5 = v1[v2];
        v1[v2] = 1;
        sub_8AD6E0(v5);
        v6 = sub_8AAA20();
        [a1 locationInView:v6];
        v8 = v7;
        v10 = v9;

        v11 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
        *v11 = v8;
        *(v11 + 1) = v10;
        v11[16] = 0;
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {

      sub_8AC244();
    }
  }
}

id sub_8AC244()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue];
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue];
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
    v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    v5 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    if (v4 > v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    }

    if (v5 < v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    }

    if (v1 + ((v2 - v1) * ((v3 - v4) / (v5 - v4)))) == v2 && (v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue, swift_beginAccess(), (v0[v6]))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = v7;
    sub_8AD6E0(v8);
    v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    return [v0 sendActionsForControlEvents:0x40000];
  }

  return result;
}

void sub_8AC348(double a1, double a2)
{
  v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  if (v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation + 16])
  {
    *v4 = a1;
    v4[1] = a2;
    v5 = a2;
    *(v4 + 16) = 0;
  }

  else
  {
    v5 = v4[1];
  }

  v6 = sub_8AAA20();
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  Height = CGRectGetHeight(v39);
  v16 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v17 = Height * (1.0 - *v16);
  v18 = (v5 - a2) * (1.0 / v17) + *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue];
  v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
  v20 = v18;
  if (v19 <= v20)
  {
    v19 = v18;
  }

  if (*&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4] < v19)
  {
    v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
  }

  sub_8AAADC(v19);
  if (v17 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v25 = v17 * v18;
    if (v17 * v18 < 0.0 || v25 > v17)
    {
      if (v25 >= 0.0)
      {
        v27 = v25 + 0.0 - v17;
      }

      else
      {
        v27 = v25 + 0.0;
      }

      v22.n128_f64[0] = fabs(v27);
      v23.n128_u64[1] = 0xBF8B4E81B4E81B4FLL;
      v28 = vmulq_n_f64(xmmword_B28430, v22.n128_f64[0]);
      v22.n128_f64[1] = v27;
      v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      v29 = vmulq_f64(v22, v21);
    }

    else
    {
      v28 = xmmword_E1E1A0;
      v29 = *&qword_E1E1B0;
    }

    v30 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v21.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v22.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v23.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v24.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    *v30 = v28;
    v30[1] = v29;
    sub_8B0208(v21, v22, v23, v24);
    LOBYTE(v38) = 1;
    sub_8AB4F0(0x100000000);
    v31 = sub_8AB0D8();
    v32 = v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v33 = [v2 traitCollection];
    if (v32 == 2)
    {

      v34 = 0.0;
    }

    else if (v32)
    {

      v34 = 1.0;
    }

    else
    {
      v35 = v33;
      v36 = [v33 accessibilityContrast];

      v34 = 0.5;
      if (v36 == &dword_0 + 1)
      {
        v34 = 1.0;
      }
    }

    [v31 setAlpha:v34];

    v37 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
    swift_beginAccess();
    if (v2[v37])
    {
      [v2 sendActionsForControlEvents:4096];
    }
  }
}

void sub_8AC5D4(uint64_t *a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v61 = *(v3 + 64);
  v62 = v5;
  v6 = *(v3 + 16);
  v58[0] = *v3;
  v58[1] = v6;
  v7 = *(v3 + 16);
  v8 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v8;
  v52 = v4;
  v53 = v61;
  v54 = *(v3 + 80);
  v63 = *(v3 + 96);
  v9 = v58[0];
  v55 = *(v3 + 96);
  v50 = v7;
  v51 = v59;
  v11 = *a1;
  v10 = a1[1];
  if (*(&v58[0] + 1))
  {
    if (v10)
    {
      *&v26 = *a1;
      *(&v26 + 1) = v10;
      v12 = *(a1 + 4);
      v29 = *(a1 + 3);
      v30 = v12;
      v31 = *(a1 + 5);
      v32 = *(a1 + 96);
      v13 = *(a1 + 2);
      v27 = *(a1 + 1);
      v28 = v13;
      v41 = v32;
      v39 = v12;
      v40 = v31;
      v37 = v13;
      v38 = v29;
      v35 = v26;
      v36 = v27;
      v14 = *(v3 + 64);
      v56[3] = *(v3 + 48);
      v56[4] = v14;
      v56[5] = *(v3 + 80);
      v57 = *(v3 + 96);
      v15 = *(v3 + 32);
      v56[1] = *(v3 + 16);
      v56[2] = v15;
      v56[0] = v58[0];
      sub_7D38E4(v58, v33);
      sub_7D38E4(v58, v33);
      sub_7D38E4(a1, v33);
      v16 = _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v56, &v35);
      sub_12E1C(v58, &qword_E18248, &qword_B2B8F0);
      sub_12E1C(&v26, &qword_E18248, &qword_B2B8F0);
      v33[0] = v9;
      v33[4] = v53;
      v33[5] = v54;
      v34 = v55;
      v33[1] = v50;
      v33[2] = v51;
      v33[3] = v52;
      sub_12E1C(v33, &qword_E18248, &qword_B2B8F0);
      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v10)
  {
    v35 = *&v58[0];
    v24 = *(v3 + 64);
    v38 = *(v3 + 48);
    v39 = v24;
    v40 = *(v3 + 80);
    v41 = *(v3 + 96);
    v25 = *(v3 + 32);
    v36 = *(v3 + 16);
    v37 = v25;
    sub_7D38E4(v58, v56);
    sub_7D38E4(a1, v56);
    sub_12E1C(&v35, &qword_E18248, &qword_B2B8F0);
    return;
  }

  v35 = v58[0];
  v17 = *(v3 + 64);
  v38 = *(v3 + 48);
  v39 = v17;
  v40 = *(v3 + 80);
  v41 = *(v3 + 96);
  v18 = *(v3 + 32);
  v36 = *(v3 + 16);
  v37 = v18;
  v42 = v11;
  v43 = v10;
  v19 = *(a1 + 2);
  v44 = *(a1 + 1);
  v45 = v19;
  v20 = *(a1 + 3);
  v21 = *(a1 + 4);
  v22 = *(a1 + 5);
  v49 = *(a1 + 96);
  v48 = v22;
  v47 = v21;
  v46 = v20;
  sub_7D38E4(v58, v56);
  sub_7D38E4(a1, v56);
  sub_12E1C(&v35, &qword_E1E328, &qword_B34948);
LABEL_7:
  v23 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  sub_8AB6CC();
}

__n128 sub_8AC8A0(char *a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = [a1 layoutDirection];
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v3 && (a1 + 1) >= 2)
        {
          if (a1 != &dword_0 + 1)
          {
            goto LABEL_42;
          }

LABEL_34:
          v4 = CGPoint.centerRight.unsafeMutableAddressor();
          goto LABEL_41;
        }

LABEL_40:
        v4 = CGPoint.centerLeft.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (!v3 || (a1 + 1) < 2)
      {
LABEL_17:
        v4 = CGPoint.topRight.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (a1 != &dword_0 + 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (a2)
      {
        v4 = CGPoint.topCenter.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (v3 && (a1 + 1) >= 2)
      {
        if (a1 != &dword_0 + 1)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    v4 = CGPoint.topLeft.unsafeMutableAddressor();
    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v4 = CGPoint.center.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (!v3 || (a1 + 1) < 2)
    {
      goto LABEL_34;
    }

    if (a1 != &dword_0 + 1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 6)
  {
    if (!v3 || (a1 + 1) < 2)
    {
      goto LABEL_38;
    }

    if (a1 == &dword_0 + 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v4 = CGPoint.bottomCenter.unsafeMutableAddressor();
LABEL_41:
      v5 = v4;
      swift_beginAccess();
      return *v5;
    }

    if (!v3 || (a1 + 1) < 2)
    {
LABEL_31:
      v4 = CGPoint.bottomRight.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (a1 == &dword_0 + 1)
    {
LABEL_38:
      v4 = CGPoint.bottomLeft.unsafeMutableAddressor();
      goto LABEL_41;
    }
  }

LABEL_42:
  result.n128_u64[0] = sub_8AC8A0(0, a2).n128_u64[0];
  result.n128_u64[1] = v7;
  return result;
}

char *VerticalToggleSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v10 = &v42 - v9;
  v11 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  v11[96] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio] = 1040402485;
  v12 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
  *v12 = 0;
  v12[8] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint] = 8;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange] = 0x3F80000000000000;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2;
  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *&v4[v13] = [objc_opt_self() effectWithBlurRadius:10.0];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer] = 0;
  v14 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = 0;
  v15 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  v16 = *&qword_E1E1B0;
  *v15 = xmmword_E1E1A0;
  v15[1] = v16;
  v17 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
  *v17 = 0x3FF0000000000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0x3FF0000000000000;
  v17[4] = 0;
  v17[5] = 0;
  v18 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = 0x3FF0000000000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0x3FF0000000000000;
  v19 = type metadata accessor for VerticalToggleSlider();
  v18[4] = 0;
  v18[5] = 0;
  v43.receiver = v4;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  [v20 setDeliversTouchesForGesturesToSuperview:0];
  sub_13C80(0, &qword_E17A80, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_ABA7D0();
  [v20 addAction:v21 forControlEvents:64];

  v22 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v20 action:"dragged:"];
  [v20 addGestureRecognizer:v22];

  sub_8ABEC8();
  [v20 setClipsToBounds:0];
  sub_8AB194();
  v23 = sub_8AB054();
  [v23 setUserInteractionEnabled:0];

  v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  [*&v20[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] setClipsToBounds:0];
  [*&v20[v24] setAutoresizingMask:18];
  v25 = *&v20[v24];
  v26 = sub_8AA96C();
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v25 setFrame:{v28, v30, v32, v34}];
  v35 = [*&v20[v24] contentView];
  v36 = [v35 layer];

  [v36 setCompositingFilter:kCAFilterPlusL];
  [*&v20[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] addSubview:*&v20[v24]];
  sub_8AB354();
  sub_8AAC60();
  sub_8AB6CC();
  v37 = sub_8AA96C();
  sub_ABA670();
  v38 = sub_ABA680();
  (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
  sub_ABA6A0();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_E19B00, &unk_B33030);
  v39 = swift_allocObject();
  v42 = xmmword_AF4EC0;
  *(v39 + 16) = xmmword_AF4EC0;
  *(v39 + 32) = sub_AB5190();
  *(v39 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_ABA6F0();
  swift_unknownObjectRelease();

  v40 = swift_allocObject();
  *(v40 + 16) = v42;
  *(v40 + 32) = sub_AB4DA0();
  *(v40 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_ABA6F0();

  swift_unknownObjectRelease();

  return v20;
}

void VerticalToggleSlider.isEnabled.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for VerticalToggleSlider();
  v14.receiver = v2;
  v14.super_class = v4;
  v5 = objc_msgSendSuper2(&v14, "isEnabled");
  v13.receiver = v2;
  v13.super_class = v4;
  objc_msgSendSuper2(&v13, "setEnabled:", v3 & 1);
  if (v5 != [v2 isEnabled])
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
    swift_beginAccess();
    if (v2[v6])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v2 isEnabled] ^ 1;
    }

    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v8)
    {
      v9 = 0.4;
      if (!v7)
      {
        v9 = 1.0;
      }

      [v8 setAlpha:v9];
    }

    v10 = sub_8AB054();
    v11 = v10;
    v12 = 1.0;
    if (v7)
    {
      v12 = 0.5;
    }

    [v10 setAlpha:v12];
  }
}

Swift::Void __swiftcall VerticalToggleSlider.layoutSubviews()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for VerticalToggleSlider();
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v4 = sub_8AA96C();
  sub_ABA670();
  v5 = sub_ABA680();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  sub_ABA6A0();
}

Swift::Void __swiftcall VerticalToggleSlider.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_8AAC60();
}

BOOL VerticalToggleSlider.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v8 = CGRectInset(v7, -14.0, -14.0);
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v8, v6);
}

id sub_8AD630(void *a1)
{
  v2 = [a1 userInterfaceStyle] == &dword_0 + 2;
  v3 = [objc_opt_self() tintColor];
  v4 = [v3 resolvedColorWithTraitCollection:a1];

  v5 = [v4 colorWithAlphaComponent:dbl_B28440[v2]];
  return v5;
}

void sub_8AD6E0(int a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v5 = &v159[-v4];
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v7 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  if (v7 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 == 2)
  {
    if (v7)
    {
      sub_8AAADC(1.0);
    }
  }

  else if (((v7 ^ a1) & 1) == 0)
  {
    return;
  }

  v8 = sub_8AABE8();
  [v8 userInteractionStarted];

  v9 = objc_opt_self();
  if ([v9 areAnimationsEnabled])
  {
    v10 = v1[v6];
    if (a1 == 2)
    {
      if (v10 == 2)
      {
        return;
      }

      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 24) = v10 & 1;
      if (v10)
      {
        v12 = qword_E16C80;
        v13 = v1;
        if (v12 != -1)
        {
          swift_once();
        }

        v14 = qword_E1E1F0;
        [qword_E1E1F0 settlingDuration];
        v16 = v15;
        [v14 mass];
        v18 = v17;
        [v14 stiffness];
        v20 = v19;
        [v14 damping];
        v22 = v21;
        *&aBlock.tx = sub_8B1664;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_171_1;
        v23 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v23 options:0 mass:v16 stiffness:0.0 damping:v18 initialVelocity:v20 animations:v22 completion:0.0];
        _Block_release(v23);
        if (qword_E16C88 != -1)
        {
          swift_once();
        }

        v24 = qword_E1E1F8;
        v25 = swift_allocObject();
        *(v25 + 16) = v13;
        v26 = v13;
        [v24 settlingDuration];
        v28 = v27;
        [v24 mass];
        v30 = v29;
        [v24 stiffness];
        v32 = v31;
        [v24 damping];
        v34 = v33;
        *&aBlock.tx = sub_8B1680;
        *&aBlock.ty = v25;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_177_2;
        v35 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v35 options:0 mass:v28 stiffness:0.0 damping:v30 initialVelocity:v32 animations:v34 completion:0.0];
        _Block_release(v35);
      }

      else
      {
        v97 = qword_E16C60;
        v98 = v1;
        if (v97 != -1)
        {
          swift_once();
        }

        v99 = qword_E1E1D0;
        [qword_E1E1D0 settlingDuration];
        v101 = v100;
        [v99 mass];
        v103 = v102;
        [v99 stiffness];
        v105 = v104;
        [v99 damping];
        v107 = v106;
        *&aBlock.tx = sub_8B1664;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_159;
        v108 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v108 options:0 mass:v101 stiffness:0.2 damping:v103 initialVelocity:v105 animations:v107 completion:0.0];
        _Block_release(v108);
        if (qword_E16C58 != -1)
        {
          swift_once();
        }

        v109 = qword_E1E1C8;
        v110 = swift_allocObject();
        *(v110 + 16) = v98;
        v111 = v98;
        [v109 settlingDuration];
        v113 = v112;
        [v109 mass];
        v115 = v114;
        [v109 stiffness];
        v117 = v116;
        [v109 damping];
        v119 = v118;
        *&aBlock.tx = sub_8B1670;
        *&aBlock.ty = v110;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_165_3;
        v120 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v120 options:0 mass:v113 stiffness:0.0 damping:v115 initialVelocity:v117 animations:v119 completion:0.0];
        _Block_release(v120);

        sub_13C80(0, &qword_E1B340, OS_dispatch_queue_ptr);
        v121 = sub_ABA150();
        v122 = swift_allocObject();
        *(v122 + 16) = v111;
        v123 = v111;
        OS_dispatch_queue.asyncAfter(_:block:)(sub_8B1678, v122, 0.3);
      }

LABEL_65:

      return;
    }

    if (v10 != 2)
    {
      if (((a1 ^ v10) & 1) == 0)
      {
        return;
      }

      v73 = swift_allocObject();
      *(v73 + 16) = v2;
      *(v73 + 24) = v10 & 1;
      v74 = swift_allocObject();
      *(v74 + 16) = v2;
      *(v74 + 24) = v10 & 1;
      if (v10)
      {
        v75 = qword_E16C80;
        v76 = v2;
        if (v75 != -1)
        {
          swift_once();
        }

        v77 = qword_E1E1F0;
        [qword_E1E1F0 settlingDuration];
        v79 = v78;
        [v77 mass];
        v81 = v80;
        [v77 stiffness];
        v83 = v82;
        [v77 damping];
        v85 = v84;
        *&aBlock.tx = sub_8B1598;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_123_3;
        v86 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v86 options:0 mass:v79 stiffness:0.0 damping:v81 initialVelocity:v83 animations:v85 completion:0.0];
        _Block_release(v86);
        if (qword_E16C88 != -1)
        {
          swift_once();
        }

        v87 = qword_E1E1F8;
        [qword_E1E1F8 settlingDuration];
        v89 = v88;
        [v87 mass];
        v91 = v90;
        [v87 stiffness];
        v93 = v92;
        [v87 damping];
        v95 = v94;
        *&aBlock.tx = sub_8B15A4;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &block_descriptor_126_0;
      }

      else
      {
        v138 = qword_E16C90;
        v139 = v2;
        if (v138 != -1)
        {
          swift_once();
        }

        v140 = qword_E1E200;
        v141 = swift_allocObject();
        *(v141 + 16) = v139;
        v142 = v139;
        [v140 settlingDuration];
        v144 = v143;
        [v140 mass];
        v146 = v145;
        [v140 stiffness];
        v148 = v147;
        [v140 damping];
        v150 = v149;
        *&aBlock.tx = sub_8B1598;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_114_4;
        v151 = _Block_copy(&aBlock);

        *&aBlock.tx = UIScreen.Dimensions.size.getter;
        *&aBlock.ty = v141;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1811AC;
        *&aBlock.d = &block_descriptor_117_2;
        v152 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v151 options:v152 mass:v144 stiffness:0.0 damping:v146 initialVelocity:v148 animations:v150 completion:0.0];
        _Block_release(v152);
        _Block_release(v151);

        if (qword_E16C98 != -1)
        {
          swift_once();
        }

        v153 = qword_E1E208;
        [qword_E1E208 settlingDuration];
        v89 = v154;
        [v153 mass];
        v91 = v155;
        [v153 stiffness];
        v93 = v156;
        [v153 damping];
        v95 = v157;
        *&aBlock.tx = sub_8B15A4;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &block_descriptor_120;
      }

      *&aBlock.c = sub_1B5EB4;
      *&aBlock.d = v96;
      v158 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v158 options:0 mass:v89 stiffness:0.0 damping:v91 initialVelocity:v93 animations:v95 completion:0.0];
      _Block_release(v158);
      goto LABEL_65;
    }

    if ((a1 & 1) == 0)
    {
      if (qword_E16C70 != -1)
      {
        swift_once();
      }

      v44 = qword_E1E1E0;
      v45 = swift_allocObject();
      *(v45 + 16) = v2;
      v46 = v2;
      [v44 settlingDuration];
      v48 = v47;
      [v44 mass];
      v50 = v49;
      [v44 stiffness];
      v52 = v51;
      [v44 damping];
      v54 = v53;
      *&aBlock.tx = sub_8B15E8;
      *&aBlock.ty = v45;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1B5EB4;
      *&aBlock.d = &block_descriptor_132_2;
      v55 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v55 options:0 mass:v48 stiffness:0.0 damping:v50 initialVelocity:v52 animations:v54 completion:0.0];
      _Block_release(v55);
    }

    if (qword_E16C78 != -1)
    {
      swift_once();
    }

    v56 = qword_E1E1E8;
    *&v57 = COERCE_DOUBLE(swift_allocObject());
    v58 = *&v57;
    v59 = a1 & 1;
    if (a1)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = 0.1;
    }

    *(v57 + 16) = v59;
    *(v57 + 24) = v2;
    if (a1)
    {
      v61 = 0.6;
    }

    else
    {
      v61 = 0.7;
    }

    v62 = swift_allocObject();
    *(v62 + 16) = v2;
    v63 = objc_opt_self();
    v64 = v2;
    [v63 begin];
    [v63 setAnimationTimingFunction:v56];
    *&aBlock.tx = sub_8B1628;
    aBlock.ty = v58;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1B5EB4;
    *&aBlock.d = &block_descriptor_141_2;
    v65 = _Block_copy(&aBlock);

    *&aBlock.tx = UIScreen.Dimensions.size.getter;
    *&aBlock.ty = v62;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1811AC;
    *&aBlock.d = &block_descriptor_144_1;
    v66 = _Block_copy(&aBlock);

    [v9 animateWithDuration:2 delay:v65 options:v66 animations:0.75 completion:v60];
    _Block_release(v66);
    _Block_release(v65);
    [v63 commit];

    sub_13C80(0, &qword_E1B340, OS_dispatch_queue_ptr);
    v67 = sub_ABA150();
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v69 = v64;
    OS_dispatch_queue.asyncAfter(_:block:)(sub_8B1634, v68, v61);

    if (!v59)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *&aBlock.tx = sub_8B165C;
      *&aBlock.ty = v70;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1B5EB4;
      *&aBlock.d = &block_descriptor_153_2;
      v71 = _Block_copy(&aBlock);
      v72 = v69;

      [v9 animateWithDuration:0 delay:v71 options:0 animations:0.25 completion:0.7];
      _Block_release(v71);
    }
  }

  else
  {
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsUpdateConstraints];
    v36 = [v1 superview];
    [v36 setNeedsLayout];

    v37 = [v1 superview];
    [v37 layoutIfNeeded];

    [v1 updateConstraintsIfNeeded];
    v38 = v1[v6];
    v39 = 1.0;
    v40 = 1.0;
    if (v38 != 2 && (v38 & 1) != 0)
    {
      v41 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      v42 = 2.0;
      if ((v41[1] & 1) == 0)
      {
        v42 = *v41;
      }

      v43 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      if (v43[1])
      {
        v39 = 2.0;
      }

      else
      {
        v39 = *v43;
      }

      v40 = v42;
    }

    CGAffineTransformMakeScale(&aBlock, v40, v39);
    v124 = *&aBlock.c;
    v125 = *&aBlock.tx;
    v126 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
    *v126 = *&aBlock.a;
    *(v126 + 1) = v124;
    *(v126 + 2) = v125;
    v127 = sub_8AAA20();
    v128 = *(v126 + 1);
    *&aBlock.a = *v126;
    *&aBlock.c = v128;
    *&aBlock.tx = *(v126 + 2);
    [v127 setTransform:&aBlock];

    sub_8AB6CC();
    LOBYTE(aBlock.a) = 1;
    sub_8AB4F0(0x100000000);
    v129 = sub_8AB0D8();
    v130 = v1[v6];
    v131 = [v2 traitCollection];
    if (v130 == 2)
    {

      v132 = 0.0;
    }

    else if (v130)
    {

      v132 = 1.0;
    }

    else
    {
      v133 = v131;
      v134 = [v131 accessibilityContrast];

      v132 = 0.5;
      if (v134 == &dword_0 + 1)
      {
        v132 = 1.0;
      }
    }

    [v129 setAlpha:v132];

    v135 = sub_8AA96C();
    sub_ABA670();
    v136 = sub_ABA680();
    (*(*(v136 - 8) + 56))(v5, 0, 1, v136);
    sub_ABA6A0();

    v137 = [objc_opt_self() clearColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v137, &aBlock, 0.0, 0.0, 0.0, 0.0);
    UIView.shadow.setter(&aBlock);
  }
}

void sub_8AEAB0(unsigned __int8 *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v29[-v5];
  [a1 invalidateIntrinsicContentSize];
  [a1 setNeedsUpdateConstraints];
  v7 = [a1 superview];
  [v7 setNeedsLayout];

  v8 = [a1 superview];
  [v8 layoutIfNeeded];

  [a1 updateConstraintsIfNeeded];
  v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v10 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v11 = 1.0;
  v12 = 1.0;
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v13 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    v14 = 2.0;
    if ((v13[8] & 1) == 0)
    {
      v14 = *v13;
    }

    v15 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    if (v15[8])
    {
      v11 = 2.0;
    }

    else
    {
      v11 = *v15;
    }

    v12 = v14;
  }

  CGAffineTransformMakeScale(&v30, v12, v11);
  v16 = *&v30.c;
  v17 = *&v30.tx;
  v18 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = *&v30.a;
  *(v18 + 1) = v16;
  *(v18 + 2) = v17;
  v19 = sub_8AAA20();
  v20 = *(v18 + 1);
  *&v30.a = *v18;
  *&v30.c = v20;
  *&v30.tx = *(v18 + 2);
  [v19 setTransform:&v30];

  v21 = sub_8AA96C();
  sub_ABA670();
  v22 = sub_ABA680();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  sub_ABA6A0();

  if (a2)
  {
    LOBYTE(v30.a) = 1;
    sub_8AB4F0(0x100000000);
    v23 = sub_8AB0D8();
    v24 = a1[v9];
    v25 = [a1 traitCollection];
    if (v24 == 2)
    {

      v26 = 0.0;
    }

    else if (v24)
    {

      v26 = 1.0;
    }

    else
    {
      v27 = v25;
      v28 = [v25 accessibilityContrast];

      v26 = 0.5;
      if (v28 == &dword_0 + 1)
      {
        v26 = 1.0;
      }
    }

    [v23 setAlpha:v26];

    sub_8AB6CC();
  }

  else
  {
    LOBYTE(v30.a) = 0;
    sub_8AB4F0(1065353216);
  }

  sub_8AAC60();
}

uint64_t sub_8AEDC8()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.3, 9.0, 0.0, 5.0);
  return UIView.shadow.setter(v2);
}

uint64_t sub_8AEE38(unsigned __int8 *a1)
{
  v2 = sub_8AB0D8();
  v3 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v4 = [a1 traitCollection];
  if (v3 == 2)
  {

    v5 = 0.0;
  }

  else if (v3)
  {

    v5 = 1.0;
  }

  else
  {
    v6 = v4;
    v7 = [v4 accessibilityContrast];

    v5 = 0.5;
    if (v7 == &dword_0 + 1)
    {
      v5 = 1.0;
    }
  }

  [v2 setAlpha:v5];

  sub_8AB6CC();
  v8 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v8, v10, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v10);
}

double sub_8AEF38(void *a1)
{
  if (qword_E16C68 != -1)
  {
    swift_once();
  }

  v2 = qword_E1E1D8;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  [v4 begin];
  [v4 setAnimationTimingFunction:v2];
  v6 = objc_opt_self();
  v9[4] = sub_8B1688;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1B5EB4;
  v9[3] = &block_descriptor_183_1;
  v7 = _Block_copy(v9);

  [v6 animateWithDuration:2 delay:v7 options:0 animations:0.85 completion:0.0];
  _Block_release(v7);
  [v4 commit];

  return result;
}

void sub_8AF0D0(uint64_t a1)
{
  v2 = sub_8AB0D8();
  v3 = sub_8AB054();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v13.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v14.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
  v15.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
  v16.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
  v17 = *&qword_E1E1B0;
  *v12 = xmmword_E1E1A0;
  v12[1] = v17;
  sub_8B0208(v13, v14, v15, v16);
}

uint64_t sub_8AF184(char a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  v4 = __chkstk_darwin();
  v9 = v27 - v8;
  if (a1)
  {
    v10 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v4.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v5.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v6.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v7.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    v11 = *&qword_E1E1B0;
    *v10 = xmmword_E1E1A0;
    *(v10 + 1) = v11;
    sub_8B0208(v4, v5, v6, v7);
    LOBYTE(v27[0]) = 1;
    sub_8AB4F0(0x100000000);
    v12 = sub_8AB0D8();
    v13 = a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v14 = [a2 traitCollection];
    if (v13 == 2)
    {

      v15 = 0.0;
    }

    else if (v13)
    {

      v15 = 1.0;
    }

    else
    {
      v16 = v14;
      v17 = [v14 accessibilityContrast];

      v15 = 0.5;
      if (v17 == &dword_0 + 1)
      {
        v15 = 1.0;
      }
    }

    [v12 setAlpha:v15];
  }

  v18 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = 0x3FF0000000000000;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0x3FF0000000000000;
  *(v18 + 4) = 0;
  *(v18 + 5) = 0;
  v19 = sub_8AAA20();
  v20 = *(v18 + 1);
  v27[0] = *v18;
  v27[1] = v20;
  v27[2] = *(v18 + 2);
  [v19 setTransform:v27];

  [a2 invalidateIntrinsicContentSize];
  [a2 setNeedsUpdateConstraints];
  v21 = [a2 superview];
  [v21 setNeedsLayout];

  v22 = [a2 superview];
  [v22 layoutIfNeeded];

  [a2 updateConstraintsIfNeeded];
  v23 = sub_8AA96C();
  sub_ABA670();
  v24 = sub_ABA680();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  sub_ABA6A0();

  v25 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v25, v27, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v27);
}

void sub_8AF450(unsigned __int8 *a1)
{
  v7 = sub_8AB0D8();
  v2 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v3 = [a1 traitCollection];
  if (v2 == 2)
  {

    v4 = 0.0;
  }

  else if (v2)
  {

    v4 = 1.0;
  }

  else
  {
    v5 = v3;
    v6 = [v3 accessibilityContrast];

    v4 = 0.5;
    if (v6 == &dword_0 + 1)
    {
      v4 = 1.0;
    }
  }

  [v7 setAlpha:v4];
}

void sub_8AF514(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v5 = &v25[-v4];
  v6 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  v7 = 1.0;
  v8 = 1.0;
  if (v6 != 2 && (v6 & 1) != 0)
  {
    v9 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    v10 = 2.0;
    if ((*(v9 + 8) & 1) == 0)
    {
      v10 = *v9;
    }

    v11 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    if (*(v11 + 8))
    {
      v7 = 2.0;
    }

    else
    {
      v7 = *v11;
    }

    v8 = v10;
  }

  CGAffineTransformMakeScale(&v26, v8, v7);
  v12 = *&v26.c;
  v13 = *&v26.tx;
  v14 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v14 = *&v26.a;
  v14[1] = v12;
  v14[2] = v13;
  v15 = sub_8AAA20();
  v16 = v14[1];
  *&v26.a = *v14;
  *&v26.c = v16;
  *&v26.tx = v14[2];
  [v15 setTransform:&v26];

  v17 = sub_8AA96C();
  sub_ABA670();
  v18 = sub_ABA680();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  sub_ABA6A0();

  if ((a2 & 1) == 0)
  {
    v23 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v19.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v20.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
    v21.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
    v22.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
    v24 = *&qword_E1E1B0;
    *v23 = xmmword_E1E1A0;
    v23[1] = v24;
    sub_8B0208(v19, v20, v21, v22);
  }
}

uint64_t sub_8AF70C(unsigned __int8 *a1, char a2)
{
  LOBYTE(v19) = 1;
  sub_8AB4F0(0x100000000);
  v4 = sub_8AB0D8();
  v5 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v6 = [a1 traitCollection];
  if (v5 == 2)
  {

    v7 = 0.0;
  }

  else if (v5)
  {

    v7 = 1.0;
  }

  else
  {
    v8 = v6;
    v9 = [v6 accessibilityContrast];

    v7 = 0.5;
    if (v9 == &dword_0 + 1)
    {
      v7 = 1.0;
    }
  }

  [v4 setAlpha:v7];

  v10 = objc_opt_self();
  if (a2)
  {
    v11 = [v10 blackColor];
    v12 = 0.3;
    v13 = 9.0;
    v14 = 5.0;
  }

  else
  {
    v11 = [v10 clearColor];
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  UIView.Shadow.init(color:opacity:radius:offset:)(v11, &v16, v12, v13, 0.0, v14);
  v19 = v16;
  v20 = v17;
  v21 = v18;
  return UIView.shadow.setter(&v19);
}

double sub_8AF87C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) != 2)
  {
    v2 = (a2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    *v2 = xmmword_B28450;
    sub_7A3608(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall VerticalToggleSlider.didMoveToWindow()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 windowScene];

    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, v4, 1, 1, sub_8B138C, v5);
    }

    else
    {
      v2 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = v2;
}

void sub_8AFA30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_8AB6CC();
  }
}

id sub_8AFAD8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_8AFB24(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v4, *a1);
}

void VerticalToggleSlider.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, "isHighlighted");
  v5.receiver = v1;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "setHighlighted:", a1 & 1);
  sub_8AFC54(v4);
}

void sub_8AFC54(char a1)
{
  v2 = v1;
  if ([v1 isHighlighted] != (a1 & 1))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = objc_opt_self();
    v5 = v2;
    if ([v4 areAnimationsEnabled])
    {
      if (qword_E16C50 != -1)
      {
        swift_once();
      }

      v6 = qword_E1E1C0;
      [qword_E1E1C0 settlingDuration];
      v8 = v7;
      [v6 mass];
      v10 = v9;
      [v6 stiffness];
      v12 = v11;
      [v6 damping];
      v14 = v13;
      *&v24.tx = sub_8B1510;
      *&v24.ty = v3;
      *&v24.a = _NSConcreteStackBlock;
      *&v24.b = 1107296256;
      *&v24.c = sub_1B5EB4;
      *&v24.d = &block_descriptor_96_0;
      v15 = _Block_copy(&v24);

      [v4 _animateUsingSpringWithDuration:6 delay:v15 options:0 mass:v8 stiffness:0.0 damping:v10 initialVelocity:v12 animations:v14 completion:0.0];
      _Block_release(v15);
    }

    else
    {
      if ([v5 isHighlighted])
      {
        CGAffineTransformMakeScale(&v24, 0.95, 0.95);
        v17 = *&v24.a;
        v16 = *&v24.c;
        v18 = *&v24.tx;
      }

      else
      {
        v16 = xmmword_B03DB0;
        v17 = xmmword_B28300;
        v18 = 0uLL;
      }

      *&v24.a = v17;
      *&v24.c = v16;
      *&v24.tx = v18;
      [v5 setTransform:&v24];
      v19 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v19)
      {
        v20 = v19;
        if ([v5 isHighlighted])
        {
          CGAffineTransformMakeScale(&v24, 0.9, 0.9);
          v22 = *&v24.a;
          v21 = *&v24.c;
          v23 = *&v24.tx;
        }

        else
        {
          v21 = xmmword_B03DB0;
          v22 = xmmword_B28300;
          v23 = 0uLL;
        }

        *&v24.a = v22;
        *&v24.c = v21;
        *&v24.tx = v23;
        [v20 setTransform:&v24];
      }
    }
  }
}

void sub_8AFF24(char *a1)
{
  if ([a1 isHighlighted])
  {
    CGAffineTransformMakeScale(&v10, 0.95, 0.95);
    v3 = *&v10.a;
    v2 = *&v10.c;
    v4 = *&v10.tx;
  }

  else
  {
    v2 = xmmword_B03DB0;
    v3 = xmmword_B28300;
    v4 = 0uLL;
  }

  *&v10.a = v3;
  *&v10.c = v2;
  *&v10.tx = v4;
  [a1 setTransform:&v10];
  v5 = *&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v5)
  {
    v6 = v5;
    if ([a1 isHighlighted])
    {
      CGAffineTransformMakeScale(&v10, 0.9, 0.9);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    else
    {
      v7 = xmmword_B03DB0;
      v8 = xmmword_B28300;
      v9 = 0uLL;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [v6 setTransform:&v10];
  }
}

void sub_8B0030(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    if (v3[v4] == 1)
    {
      [v3 sendActionsForControlEvents:0x10000];
      v5 = v3[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v3[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2 * (v5 != 2);
      sub_8AD6E0(v5);
      [v3 sendActionsForControlEvents:4096];
      [v3 sendActionsForControlEvents:0x40000];
    }
  }
}

void sub_8B0208(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v8 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  *&v9.f64[0] = v55.n128_u64[0];
  *&v9.f64[1] = v56.n128_u64[0];
  *&v10.f64[0] = v57.n128_u64[0];
  *&v10.f64[1] = v58.n128_u64[0];
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange], v9), vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16], v10)))) & 1) == 0)
  {
    v11 = sub_8AA96C();
    sub_ABA670();
    v12 = sub_ABA680();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    sub_ABA6A0();

    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v8, xmmword_E1E1A0), vceqq_f64(v8[1], *&qword_E1E1B0)))))
    {
      v42 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
      [*&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] anchorPoint];
      v44 = v43;
      v46 = v45;
      v47 = CGPoint.center.unsafeMutableAddressor();
      swift_beginAccess();
      if (v44 != *v47 || v46 != v47[1])
      {
        [*&v5[v42] setAnchorPoint:?];
        v49 = *&v5[v42];
        [v5 bounds];
        [v49 setFrame:?];
      }

      v50 = &v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
      *v50 = 0x3FF0000000000000;
      *(v50 + 1) = 0;
      *(v50 + 2) = 0;
      *(v50 + 3) = 0x3FF0000000000000;
      *(v50 + 4) = 0;
      *(v50 + 5) = 0;
      v51 = *&v5[v42];
      *&aBlock.a = 0x3FF0000000000000uLL;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      *&aBlock.tx = 0uLL;
      [v51 setTransform:{&aBlock, *&v55}];
      v52 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v52)
      {
        v53 = *(v50 + 1);
        *&aBlock.a = *v50;
        *&aBlock.c = v53;
        *&aBlock.tx = *(v50 + 2);
        CGAffineTransformInvert(&v64, &aBlock);
        aBlock = v64;
        [v52 setTransform:&aBlock];
      }

      v54 = *&v5[v42];
      [v5 bounds];
      [v54 setFrame:?];
    }

    else
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v5;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_8B14E0;
      *(v15 + 24) = v14;
      *&aBlock.tx = sub_2D4D0;
      *&aBlock.ty = v15;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1822E0;
      *&aBlock.d = &block_descriptor_228;
      v16 = _Block_copy(&aBlock);
      v17 = v5;

      [v13 performWithoutAnimation:v16];
      _Block_release(v16);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v19 = sub_8AAA20();
        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v66.origin.x = v21;
        v66.origin.y = v23;
        v66.size.width = v25;
        v66.size.height = v27;
        v28 = CGRectGetWidth(v66) + v8->f64[1];
        v29 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
        [*&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] frame];
        v30 = v28 / CGRectGetWidth(v67);
        [*&v17[v29] frame];
        v31 = CGRectGetHeight(v68) + v8->f64[0];
        [*&v17[v29] frame];
        Height = CGRectGetHeight(v69);
        CGAffineTransformMakeScale(&aBlock, v30, v31 / Height);
        v58 = *&aBlock.c;
        v57 = *&aBlock.a;
        v64 = aBlock;
        v33 = *&aBlock.tx;
        CGAffineTransformMakeTranslation(&aBlock, 0.0, -v8[1].f64[1]);
        static CGAffineTransform.+ infix(_:_:)(&v64, &aBlock, &v61);
        v34 = &v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
        v35 = v62;
        v36 = v63;
        v37 = v61;
        *v34 = v61;
        *(v34 + 1) = v62;
        *(v34 + 2) = v63;
        v38 = *&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
        *&v60.a = v37;
        *&v60.c = v35;
        *&v60.tx = v36;
        [v38 setTransform:&v60];
        v39 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
        v40 = *&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
        if (v40)
        {
          v60 = *v34;
          CGAffineTransformInvert(&v59, &v60);
          v60 = v59;
          [v40 setTransform:&v60];
          v41 = *&v17[v39];
          if (v41)
          {
            *&v60.a = v57;
            *&v60.c = v58;
            *&v60.tx = v33;
            CGAffineTransformInvert(&v59, &v60);
            v60 = v59;
            [v41 setTransform:&v60];
          }
        }
      }
    }
  }
}

void sub_8B0860(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24] <= 0.0)
  {
    v2 = CGPoint.topCenter.unsafeMutableAddressor();
  }

  else
  {
    v2 = CGPoint.bottomCenter.unsafeMutableAddressor();
  }

  v3 = v2;
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = sub_8AA96C();
  [v6 anchorPoint];
  v8 = v7;
  v10 = v9;

  if (v8 != v5 || v10 != v4)
  {
    v12 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
    [*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setAnchorPoint:{v5, v4}];
    v13 = *&a1[v12];
    [a1 bounds];
    [v13 setFrame:?];
  }
}

id sub_8B0988()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:465.0 damping:21.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1C0 = result;
  return result;
}

id sub_8B09D8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1C8 = result;
  return result;
}

id sub_8B0A2C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:194.0 damping:24.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1D0 = result;
  return result;
}

id sub_8B0A7C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_E1E1D8 = result;
  return result;
}

id sub_8B0AC8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:158.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1E0 = result;
  return result;
}

id sub_8B0B18()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v2 :0.0 :v1 :v3];
  qword_E1E1E8 = result;
  return result;
}

id sub_8B0B64()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:288.0 damping:26.5 initialVelocity:{0.0, 0.0}];
  qword_E1E1F0 = result;
  return result;
}

id sub_8B0BB8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1F8 = result;
  return result;
}

id sub_8B0C0C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_E1E200 = result;
  return result;
}

id sub_8B0C60()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_E1E208 = result;
  return result;
}

id VerticalToggleSlider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_8B0EC4()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

id VerticalToggleSlider.accessibilitySetSliderValue(_:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    if (v2 > v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_8AAADC(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((v4 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));

    return sub_8AC244();
  }

  return result;
}

uint64_t sub_8B1034()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_8B1098(char *a1)
{
  v2 = sub_8AAA20();
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v4 = a1[v3];
  v5 = [a1 traitCollection];
  *&v6 = sub_8AC8A0(v5, v4).n128_u64[0];
  v8 = v7;

  [v2 setAnchorPoint:{v6, v8}];
}

void _s11MusicCoreUI20VerticalToggleSliderC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio) = 1040402485;
  v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint) = 8;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) = 0x3F80000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = 2;
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *(v0 + v3) = [objc_opt_self() effectWithBlurRadius:10.0];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer) = 0;
  v4 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v6 = *&qword_E1E1B0;
  *v5 = xmmword_E1E1A0;
  v5[1] = v6;
  v7 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform);
  *v7 = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  v8 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v8 = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_8B1398()
{
  result = qword_E1E2F0;
  if (!qword_E1E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E2F0);
  }

  return result;
}

unint64_t sub_8B13F0()
{
  result = qword_E1E2F8;
  if (!qword_E1E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E2F8);
  }

  return result;
}

double sub_8B1494(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
  }

  return result;
}

double block_copy_helper_228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_8B1518()
{

  return swift_deallocObject();
}

uint64_t sub_8B1560()
{

  return swift_deallocObject();
}

uint64_t sub_8B15B0()
{

  return swift_deallocObject();
}

uint64_t sub_8B15F0()
{

  return swift_deallocObject();
}

unint64_t WaveformPlayIndicator.init(settings:)(void *a1)
{
  v2 = v1;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  v3 = *(v32 - 8);
  __chkstk_darwin();
  v5 = &v30 - v4;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v6 = (v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v7 = objc_opt_self();
  v31 = [v7 tintColor];
  v8 = [v7 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.35];

  v10 = [v7 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = [v7 labelColor];
  v13 = [v12 colorWithAlphaComponent:0.6];

  *v6 = v31;
  v6[1] = v9;
  v6[2] = v11;
  v6[3] = v13;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v2 + v14) = [objc_opt_self() zero];
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v36 = 0;
  sub_AB54D0();
  (*(v3 + 32))(v2 + v15, v5, v32);
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v2 + v16) = sub_8B7040();
  v17 = v33;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings) = v33;
  v18 = v17;
  v19 = [v18 stops];
  sub_13C80(0, &qword_E19E40, NSNumber_ptr);
  v20 = sub_AB9760();

  if (v20 >> 62)
  {
    v21 = sub_ABB060();
  }

  else
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  }

  v22 = ObjectType;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars) = v21 - 1;
    v35.receiver = v2;
    v35.super_class = v22;
    v21 = objc_msgSendSuper2(&v35, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    result = sub_8B1C6C(v23);
    v2 = result;
    if (!(result >> 62))
    {
      v25 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (v25)
      {
        goto LABEL_6;
      }

LABEL_15:

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_E19B00, &unk_B33030);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_AF4EC0;
      *(v29 + 32) = sub_AB4DB0();
      *(v29 + 40) = &protocol witness table for UITraitActiveAppearance;
      sub_ABA6F0();

      swift_unknownObjectRelease();

      return v21;
    }
  }

  result = sub_ABB060();
  v25 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v25 >= 1)
  {
    v26 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v27 = sub_ABAE20();
      }

      else
      {
        v27 = *(v2 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      [v21 addSubview:v27];
      [v28 setAlpha:0.0];
    }

    while (v25 != v26);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_8B1C6C(__n128 a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars;
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars))
  {
    v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars);
  }

  else
  {
    sub_8B6538(a1);
    v3 = v4;
    *(v1 + v2) = v4;
  }

  return v3;
}

void sub_8B1CD0()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 <= 1)
  {
    if (!*(v0 + v1))
    {
      return;
    }

    v12 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v12 + 8);
    v14 = sub_8B1C6C(v13);
    v15 = v14;
    if (v14 >> 62)
    {
      v16 = sub_ABB060();
      if (!v16)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v16 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      if (!v16)
      {
        goto LABEL_34;
      }
    }

    if (v16 >= 1)
    {
      for (i = 0; i != v16; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = sub_ABAE20();
        }

        else
        {
          v18 = *(v15 + 8 * i + 32);
        }

        v19 = v18;
        [v18 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

LABEL_38:
    __break(1u);
    return;
  }

  if (v2 == 2)
  {
    v20 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v0 + v20);
    v22 = sub_8B1C6C(v21);
    v23 = v22;
    if (v22 >> 62)
    {
      v24 = sub_ABB060();
      if (!v24)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v24 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
      if (!v24)
      {
        goto LABEL_34;
      }
    }

    if (v24 >= 1)
    {
      for (j = 0; j != v24; ++j)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = sub_ABAE20();
        }

        else
        {
          v26 = *(v23 + 8 * j + 32);
        }

        v27 = v26;
        [v26 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 != 3)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v6 = sub_8B1C6C(v5);
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_ABB060();
    if (v8)
    {
LABEL_6:
      if (v8 >= 1)
      {
        for (k = 0; k != v8; ++k)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_ABAE20();
          }

          else
          {
            v10 = *(v7 + 8 * k + 32);
          }

          v11 = v10;
          [v10 setBackgroundColor:v4];
        }

        goto LABEL_34;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      goto LABEL_6;
    }
  }

LABEL_34:
}

void sub_8B1FB4(char a1, char a2, __n128 a3)
{
  if (a1 == a2 && (a1 != 3 || (sub_8B3504(a3) & 1) != 0))
  {
    return;
  }

  v70 = sub_8B1C6C(a3);
  type metadata accessor for AnimationGroup();
  v3 = swift_allocObject();
  v4 = v69;
  v5 = v3;
  *(v3 + 16) = _swiftEmptyArrayStorage;
  v73 = (v3 + 16);
  *(v3 + 24) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask;
  if (*&v69[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask])
  {

    sub_AB9A00();

    v4 = v69;
  }

  *&v4[v6] = 0;

  if (a1 == 3)
  {
    sub_8B3804(v7);
  }

  if (a2 == 1)
  {
    v16 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.33 controlPoint2:{1.0, 0.67, 1.0}];
    v17 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v16 timingParameters:0.9];

    v18 = swift_allocObject();
    *(v18 + 16) = v69;
    v19 = v69;
    sub_8B6804(v17, sub_8B976C, v18, 0.0);
  }

  else if (a2 == 4)
  {
    v8 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v9 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v8 timingParameters:0.25];

    v10 = swift_allocObject();
    *(v10 + 16) = v69;
    v78 = sub_8B9774;
    v79 = v10;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_1B5EB4;
    v77 = &block_descriptor_90_3;
    v11 = _Block_copy(&aBlock);
    v12 = v69;

    [v9 addAnimations:v11];
    _Block_release(v11);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = 4;
    v78 = sub_8B977C;
    v79 = v13;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_624AE8;
    v77 = &block_descriptor_96_1;
    v14 = _Block_copy(&aBlock);
    v15 = v12;

    [v9 addCompletion:v14];
    _Block_release(v14);
    sub_8B6804(v9, 0, 0, 0.0);
  }

  if (!a1)
  {
    v66 = v5;

    sub_8B41D4(v20);
    v22 = v21;
    sub_8B3C18();
    v71 = *(v22 + 16);
    v72 = v22;
    if (v71)
    {
      v5 = 0;
      v23 = (v22 + 40);
      while (v5 < *(v72 + 16))
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v26 = objc_allocWithZone(UICubicTimingParameters);
        v27 = v24;
        v28 = v25;
        v29 = [v26 initWithControlPoint1:0.32 controlPoint2:{0.0, 0.67, 0.0}];
        v30 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v29 timingParameters:0.5];

        v31 = swift_allocObject();
        *(v31 + 16) = v28;
        *(v31 + 24) = v24;
        v78 = sub_8B9720;
        v79 = v31;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_1B5EB4;
        v77 = &block_descriptor_81_0;
        v32 = _Block_copy(&aBlock);
        swift_retain_n();
        v33 = v28;
        v34 = v27;

        [v30 addAnimations:v32];
        _Block_release(v32);

        swift_beginAccess();
        v35 = *v73;
        v36 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v73 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_8A52C4(0, *(v35 + 2) + 1, 1, v35);
          *v73 = v35;
        }

        v39 = *(v35 + 2);
        v38 = *(v35 + 3);
        if (v39 >= v38 >> 1)
        {
          v35 = sub_8A52C4((v38 > 1), v39 + 1, 1, v35);
        }

        *(v35 + 2) = v39 + 1;
        v40 = &v35[16 * v39];
        *(v40 + 4) = v36;
        *(v40 + 5) = v5 * 0.03;
        *v73 = v35;
        swift_endAccess();

        v23 += 2;
        if (v71 == ++v5)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_21:

    v5 = v66;
  }

  v41 = v70;
  if (a2)
  {
    if (a2 == 2)
    {

      v47 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
      v48 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v47 timingParameters:0.15];

      v49 = swift_allocObject();
      v46 = v69;
      *(v49 + 16) = v69;
      *(v49 + 24) = a1;
      v50 = v69;
      sub_8B6804(v48, sub_8B96CC, v49, 0.0);
    }

    else
    {
      if (a2 == 3)
      {
        v42 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
        v43 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v42 timingParameters:0.15];

        v44 = swift_allocObject();
        *(v44 + 16) = v69;
        v45 = v69;
        sub_8B6804(v43, sub_8B96D8, v44, 0.0);
      }

      v46 = v69;
    }

    goto LABEL_39;
  }

  if (v70 >> 62)
  {
LABEL_37:
    v56 = sub_ABB060();
    v41 = v70;
    v51 = v56;
    if (!v56)
    {
      goto LABEL_38;
    }

LABEL_30:
    if (v51 < 1)
    {
      __break(1u);
      return;
    }

    v52 = 0;
    v53 = v41 & 0xC000000000000001;
    do
    {
      if (v53)
      {
        v54 = sub_ABAE20();
      }

      else
      {
        v54 = *(v41 + 8 * v52 + 32);
      }

      v55 = v54;
      ++v52;
      [v54 setAlpha:{0.0, v66}];

      v41 = v70;
    }

    while (v51 != v52);
    goto LABEL_38;
  }

  v51 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
  if (v51)
  {
    goto LABEL_30;
  }

LABEL_38:

  v46 = v69;
  sub_8B3C18();
LABEL_39:
  v57 = *&v46[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation];
  if (v57)
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v46;
    *(v58 + 24) = v5;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_8B968C;
    *(v59 + 24) = v58;
    swift_beginAccess();
    v60 = *(v57 + 24);
    v61 = v46;

    v62 = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 24) = v60;
    if ((v62 & 1) == 0)
    {
      v60 = sub_8A53D0(0, v60[2] + 1, 1, v60);
      *(v57 + 24) = v60;
    }

    v64 = v60[2];
    v63 = v60[3];
    if (v64 >= v63 >> 1)
    {
      v60 = sub_8A53D0((v63 > 1), v64 + 1, 1, v60);
    }

    v60[2] = v64 + 1;
    v65 = &v60[2 * v64];
    v65[4] = sub_70638;
    v65[5] = v59;
    *(v57 + 24) = v60;
    swift_endAccess();
  }

  else
  {
    sub_8B6990();
  }
}

uint64_t WaveformPlayIndicator.mode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

void WaveformPlayIndicator.mode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_8B1FB4(v4, a1, v5);
}

void (*WaveformPlayIndicator.mode.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_8B2AE8;
}

void sub_8B2AE8(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  v6 = v2[40];
  *(v4 + v3) = v6;
  sub_8B1FB4(v5, v6, a2);

  free(v2);
}

void sub_8B2B5C()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.2];

  v5 = [v0 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.6];

  static WaveformPlayIndicator.ColorPalette.overlay = v1;
  *algn_E73F58 = v2;
  qword_E73F60 = v4;
  unk_E73F68 = v6;
}

uint64_t *WaveformPlayIndicator.ColorPalette.overlay.unsafeMutableAddressor()
{
  if (qword_E16CA0 != -1)
  {
    swift_once();
  }

  return &static WaveformPlayIndicator.ColorPalette.overlay;
}

uint64_t static WaveformPlayIndicator.ColorPalette.overlay.getter()
{
  if (qword_E16CA0 != -1)
  {
    swift_once();
  }

  v0 = static WaveformPlayIndicator.ColorPalette.overlay;
  v1 = *algn_E73F58;
  v2 = qword_E73F60;
  v3 = unk_E73F68;
  v4 = static WaveformPlayIndicator.ColorPalette.overlay;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  return v0;
}

uint64_t static WaveformPlayIndicator.ColorPalette.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  if (sub_ABA790() & 1) != 0 && (sub_ABA790() & 1) != 0 && (sub_ABA790())
  {
    return sub_ABA790() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8B2DEC(uint64_t *a1, uint64_t *a2)
{
  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  if (sub_ABA790() & 1) != 0 && (sub_ABA790() & 1) != 0 && (sub_ABA790())
  {
    return sub_ABA790() & 1;
  }

  else
  {
    return 0;
  }
}

void *WaveformPlayIndicator.colorPalette.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = v2;
  v7 = v3;
  v8 = v5;
  v9 = v4;
  return v2;
}

void WaveformPlayIndicator.colorPalette.setter(void *a1, void *a2, void *a3, void *a4)
{
  sub_8B9288(a1, a2, a3, a4);
}

void (*WaveformPlayIndicator.colorPalette.modify(uint64_t *a1))(void ***a1, char a2)
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
  *(v3 + 56) = v1;
  v5 = v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  return sub_8B302C;
}

void sub_8B302C(void ***a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  if (a2)
  {
    v7 = v4;
    v8 = v3;
    v9 = v6;
    v10 = v5;
    sub_8B9288(v7, v8, v9, v10);

    v4 = *v2;
    v3 = v2[1];
    v6 = v2[2];
    v5 = v2[3];
  }

  else
  {
    sub_8B9288(**a1, v3, v6, v5);
  }

  free(v2);
}

id WaveformPlayIndicator.waveform.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaveformPlayIndicator.waveform.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v1[v6] == 2)
  {
    v7 = objc_opt_self();
    v8 = *&v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v8 animationDuration];
    v10 = v9;
    [v8 springDamping];
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v16[4] = sub_8B93DC;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1B5EB4;
    v16[3] = &block_descriptor_229;
    v14 = _Block_copy(v16);
    v15 = v1;

    [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];

    _Block_release(v14);
  }

  else
  {
  }
}

void (*WaveformPlayIndicator.waveform.modify(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  return sub_8B3378;
}

void sub_8B3378(void ****a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
    swift_beginAccess();
    if (*(v4 + v5) == 2)
    {
      v6 = v3[9];
      v7 = objc_opt_self();
      v8 = *(v6 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings);
      [v8 animationDuration];
      v10 = v9;
      [v8 springDamping];
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      v3[4] = sub_8B9CCC;
      v3[5] = v13;
      *v3 = _NSConcreteStackBlock;
      v3[1] = 1107296256;
      v3[2] = sub_1B5EB4;
      v3[3] = &block_descriptor_10_3;
      v14 = _Block_copy(v3);
      v15 = v6;

      [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];
      _Block_release(v14);
    }
  }

  free(v3);
}

uint64_t sub_8B3504(__n128 a1)
{
  v1 = sub_8B1C6C(a1);
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_ABAE20();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 layer];
      v9 = sub_AB9260();

      v10 = [v8 animationForKey:v9];

      if (!v10 || (v10, v11 = [v6 layer], v12 = sub_AB9260(), , v13 = objc_msgSend(v11, "animationForKey:", v12), v11, v12, !v13) || (v13, v14 = objc_msgSend(v6, "layer"), v15 = sub_AB9260(), , v16 = objc_msgSend(v14, "animationForKey:", v15), v14, v15, !v16))
      {

        return 0;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  return 1;
}

void sub_8B3804(__n128 a1)
{
  v1 = sub_8B1C6C(a1);
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  sub_ABAEC0();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_ABAE20();
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v5 layer];

      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
    }

    while (v3 != v4);

    v2 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      while (1)
      {
        v8 = sub_ABB060();
        if (!v8)
        {
          break;
        }

LABEL_11:
        v9 = 0;
        v18 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v10 = sub_ABAE20();
          }

          else
          {
            if (v9 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_21;
            }

            v10 = _swiftEmptyArrayStorage[v9 + 4];
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v13 = sub_AB9260();
          [v11 removeAnimationForKey:v13];

          v14 = sub_AB9260();
          [v11 removeAnimationForKey:v14];

          v15 = sub_AB9260();
          [v11 removeAnimationForKey:v15];

          v16 = [v11 presentationLayer];
          if (v16)
          {
            v17 = v16;
            [v16 frame];
            [v11 setFrame:?];
            [v17 cornerRadius];
            [v11 setCornerRadius:?];
          }

          ++v9;
          if (v12 == v8)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v3 = sub_ABB060();
        if (v3)
        {
          goto LABEL_3;
        }

LABEL_23:

        v2 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v8 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      if (v8)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
  }
}

void sub_8B3B0C(uint64_t a1, __n128 a2)
{
  sub_8B3C18();
  v3 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v6 = sub_8B1C6C(v5);
  v7 = v6;
  if (!(v6 >> 62))
  {
    v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v8 = sub_ABB060();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_ABAE20();
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      [v10 setBackgroundColor:v4];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_8B3C18()
{
  [v0 bounds];
  Width = CGRectGetWidth(v28);
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  v3 = CGRectGetWidth(v29);
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v0[v4] == 2)
  {
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
    swift_beginAccess();
    v6 = *&v0[v5];
  }

  else
  {
    v6 = [objc_opt_self() zero];
  }

  v27 = v6;
  v8 = sub_8B1C6C(v7);
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v11 = Width / *&v2;
    Width = v11 * 0.5;
    v12 = v3 / *&v2 - v11 * 0.5;
    v3 = v11 * 0.5 * 0.5;
    v13 = 4;
    v14 = v12 * 0.5;
    while (1)
    {
      v15 = v13 - 4;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = sub_ABAE20();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_24;
        }

        v16 = *(v9 + 8 * v13);
      }

      v17 = v16;
      v18 = v13 - 3;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v2 = v14 + v3 + v11 * v15;
      [v0 bounds];
      [v17 setCenter:{v2, CGRectGetMidY(v30)}];
      v19 = [v17 layer];
      [v19 setCornerRadius:v11 * 0.5 * 0.5];

      v20 = [v27 amplitudes];
      sub_13C80(0, &qword_E19E40, NSNumber_ptr);
      v21 = sub_AB9760();

      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = sub_ABAE20();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v22 = *(v21 + 8 * v13);
      }

      v23 = v22;

      [v23 doubleValue];
      v25 = v24;

      [v0 bounds];
      Height = CGRectGetHeight(v31);
      if (v25 < 1.0)
      {
        Height = v25 * Height;
      }

      if (Width > Height)
      {
        v2 = v11 * 0.5;
      }

      else
      {
        v2 = Height;
      }

      [v17 bounds];
      [v17 setBounds:?];
      [v17 bounds];
      [v17 setBounds:?];

      ++v13;
      if (v18 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
}

double sub_8B3F5C(uint64_t a1, char *a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (a2[v7] == a3)
  {
    v9 = sub_AB9990();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_AB9940();
    v10 = a2;
    v11 = sub_AB9930();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    *&v10[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask] = sub_7C7F60(0, 0, v6, &unk_B34C18, v12);
  }

  return result;
}

void sub_8B40C8(uint64_t a1)
{
  sub_8B3C18();
  v2 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v5 = sub_8B1C6C(v4);
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v7 = sub_ABB060();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_ABAE20();
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      [v9 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_8B41D4(unint64_t a1)
{
  sub_8B88B4(a1);
  v2 = v1;

  v3 = v2[2];
  if (v3 < 2)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 >> 1;
  v7 = v3 - 1;
  v8 = 16 * v3 + 24;
  v24 = v3 >> 1;
  while (1)
  {
    if (v5 == v7)
    {
      goto LABEL_5;
    }

    v12 = v2[2];
    if (v5 >= v12)
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_14;
    }

    v13 = v2[v4 + 4];
    v14 = v2[v4 + 5];
    v15 = *(v2 + v8 - 8);
    v16 = *(v2 + v8);
    v17 = v16;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_8B8580(v2);
    }

    v21 = &v2[v4];
    v22 = v2[v4 + 4];
    v23 = v2[v4 + 5];
    v21[4] = v20;
    v21[5] = v16;

    if (v7 >= v2[2])
    {
      goto LABEL_15;
    }

    v9 = (v2 + v8);
    v10 = *(v2 + v8 - 8);
    v11 = *(v2 + v8);
    *(v9 - 1) = v18;
    *v9 = v14;

    v6 = v24;
LABEL_5:
    ++v5;
    --v7;
    v8 -= 16;
    v4 += 2;
    if (v6 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_8B431C(uint64_t a1)
{
  sub_8B3C18();
  v2 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v5 = sub_8B1C6C(v4);
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_8B4428();
    return;
  }

  v7 = sub_ABB060();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_ABAE20();
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      [v9 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_8B4428()
{
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  if (!v2)
  {
    return;
  }

  v3 = sub_5C9088(3uLL);
  if (v3 > 2)
  {
    __break(1u);
LABEL_13:
    v6 = sub_ABB060();
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v46 = *(&off_D34EC0 + v3 + 32);
  v5 = sub_8B1C6C(v4);
  v1 = v5;
  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (v6)
  {
LABEL_5:
    v48[0] = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = sub_ABAE20();
      }

      else
      {
        v8 = *(v1 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 layer];

      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
    }

    while (v6 != v7);

    v11 = v48[0];
    goto LABEL_15;
  }

LABEL_14:

  v11 = _swiftEmptyArrayStorage;
LABEL_15:
  v43 = v11;
  if (v11 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v13 = 0;
    v45 = v2;
    v44 = i;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v14 = sub_ABAE20();
      }

      else
      {
        if (v13 >= *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_55;
        }

        v14 = *(v43 + 32 + 8 * v13);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = sub_8B72EC(v46, v13);
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = v17;
      v19 = v17 + 64;
      v20 = 1 << v17[32];
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(v17 + 8);
      v2 = (v20 + 63) >> 6;

      v23 = 0;
      if (v22)
      {
        while (1)
        {
          v24 = v23;
LABEL_34:
          v25 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v26 = *(*(v18 + 7) + 8 * (v25 | (v24 << 6)));
          v27 = sub_AB9260();

          [v15 addAnimation:v26 forKey:v27];

          v23 = v24;
          if (!v22)
          {
            goto LABEL_31;
          }
        }
      }

      while (1)
      {
LABEL_31:
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v24 >= v2)
        {
          break;
        }

        v22 = *&v19[8 * v24];
        ++v23;
        if (v22)
        {
          goto LABEL_34;
        }
      }

      i = v44;
      v2 = v45;
      if (!*(v18 + 2))
      {
        goto LABEL_19;
      }

      v28 = sub_85A8E8(1);
      if ((v29 & 1) == 0)
      {
        goto LABEL_19;
      }

      v30 = [*(*(v18 + 7) + 8 * v28) values];
      if (!v30)
      {
        goto LABEL_19;
      }

      v31 = v30;
      v32 = sub_AB9760();

      if (!*(v32 + 16))
      {
        goto LABEL_18;
      }

      sub_808B0(v32 + 32, v48);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v18 + 2))
      {
        goto LABEL_19;
      }

      v33 = sub_85A8E8(0);
      if ((v34 & 1) == 0)
      {
        goto LABEL_19;
      }

      v35 = [*(*(v18 + 7) + 8 * v33) values];
      if (!v35)
      {
        goto LABEL_19;
      }

      v36 = v35;
      v37 = sub_AB9760();

      if (!*(v37 + 16))
      {
LABEL_18:

LABEL_19:

        goto LABEL_20;
      }

      sub_808B0(v37 + 32, v48);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v18 + 2))
      {
        goto LABEL_19;
      }

      v38 = sub_85A8E8(2);
      if ((v39 & 1) == 0)
      {
        goto LABEL_19;
      }

      v40 = *(*(v18 + 7) + 8 * v38);

      v41 = [v40 values];

      if (!v41)
      {
        goto LABEL_20;
      }

      v42 = sub_AB9760();

      if (!*(v42 + 16))
      {
        goto LABEL_19;
      }

      sub_808B0(v42 + 32, v48);

      if (swift_dynamicCast())
      {
        [v15 frame];
        [v15 setFrame:?];
        [v15 setCornerRadius:v47];
      }

LABEL_20:

      v13 = v16;
      if (v16 == i)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_57:
}

void sub_8B4A00(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v5 = *&a1[v4];
  v7 = sub_8B1C6C(v6);
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_ABB060();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_ABAE20();
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    [v11 setBackgroundColor:v5];
  }

LABEL_10:

  if (a2 == 3)
  {
    v13 = objc_opt_self();
    v14 = *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v14 animationDuration];
    v16 = v15;
    [v14 springDamping];
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    aBlock[4] = sub_8B9CCC;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_136_0;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    [v13 animateWithDuration:0 delay:v20 usingSpringWithDamping:0 initialSpringVelocity:v16 options:0.0 animations:v18 completion:0.0];
    _Block_release(v20);
  }
}

void sub_8B4C28(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = a2;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_8B99C4;
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(a2 + 24);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_8A53D0(0, v6[2] + 1, 1, v6);
    *(a2 + 24) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_8A53D0((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_710F8;
  v11[5] = v5;
  *(a2 + 24) = v6;
  swift_endAccess();

  sub_8B6990();
}

void sub_8B4D84(char *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  if (!*&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_8B3C18();
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_8B3C18();
  }
}

void sub_8B4E24()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v62);
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  Height = CGRectGetHeight(v63);
  v5 = &v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  swift_beginAccess();
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  type metadata accessor for AnimationGroup();
  v8 = swift_allocObject();
  *(v8 + 16) = _swiftEmptyArrayStorage;
  v9 = (v8 + 16);
  *(v8 + 24) = _swiftEmptyArrayStorage;
  v46 = (v8 + 24);
  v54 = v7;
  v53 = v6;
  v11 = sub_8B1C6C(v10);
  v12 = v11;
  v47 = v8;
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v14 = 0;
    v51 = v12 & 0xFFFFFFFFFFFFFF8;
    v52 = v12 & 0xC000000000000001;
    v3 = Width / *&v3 * 0.5;
    Height = Height * 0.7;
    Width = 0.11;
    v49 = i;
    v50 = v12;
    v48 = v9;
    while (1)
    {
      if (v52)
      {
        v15 = sub_ABAE20();
      }

      else
      {
        if (v14 >= *(v51 + 16))
        {
          goto LABEL_16;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v55 = v14 + 1;
      v17 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v18 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v17 timingParameters:0.25];

      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      *(v19 + 24) = v53;
      *(v19 + 32) = Height;
      v60 = sub_8B9CC4;
      v61 = v19;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1B5EB4;
      v59 = &block_descriptor_109_2;
      v20 = _Block_copy(&aBlock);
      v21 = v53;
      v22 = v16;

      [v18 addAnimations:v20];
      _Block_release(v20);
      v23 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v24 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v23 timingParameters:0.25];

      v25 = swift_allocObject();
      *(v25 + 16) = v22;
      *(v25 + 24) = v54;
      *(v25 + 32) = v3;
      v60 = sub_8B9904;
      v61 = v25;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1B5EB4;
      v59 = &block_descriptor_115_1;
      v26 = _Block_copy(&aBlock);
      v27 = v54;
      v28 = v22;

      [v24 addAnimations:v26];
      _Block_release(v26);
      v29 = swift_allocObject();
      *(v29 + 16) = v24;
      v60 = sub_8B9974;
      v61 = v29;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v9 = v48;
      v58 = sub_624AE8;
      v59 = &block_descriptor_121_2;
      v30 = _Block_copy(&aBlock);
      v31 = v24;

      [v18 addCompletion:v30];
      _Block_release(v30);
      swift_beginAccess();
      v32 = *v48;
      v33 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v48 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_8A52C4(0, *(v32 + 2) + 1, 1, v32);
        *v48 = v32;
      }

      v36 = *(v32 + 2);
      v35 = *(v32 + 3);
      if (v36 >= v35 >> 1)
      {
        v32 = sub_8A52C4((v35 > 1), v36 + 1, 1, v32);
      }

      *(v32 + 2) = v36 + 1;
      v37 = &v32[16 * v36];
      *(v37 + 4) = v33;
      *(v37 + 5) = v14 * 0.1;
      *v48 = v32;
      swift_endAccess();

      ++v14;
      v12 = v50;
      if (v55 == v49)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v38 = swift_allocObject();
  *(v38 + 16) = v1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_8B9CC8;
  *(v39 + 24) = v38;
  swift_beginAccess();
  v40 = *v46;
  v41 = v1;

  v42 = swift_isUniquelyReferenced_nonNull_native();
  *v46 = v40;
  if ((v42 & 1) == 0)
  {
    v40 = sub_8A53D0(0, v40[2] + 1, 1, v40);
    *v46 = v40;
  }

  v44 = v40[2];
  v43 = v40[3];
  if (v44 >= v43 >> 1)
  {
    v40 = sub_8A53D0((v43 > 1), v44 + 1, 1, v40);
  }

  v40[2] = v44 + 1;
  v45 = &v40[2 * v44];
  v45[4] = sub_710F8;
  v45[5] = v39;
  *(v47 + 24) = v40;
  swift_endAccess();

  *&v41[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = v47;

  sub_8B6990();
}

uint64_t sub_8B54C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_ABAF40();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_AB9940();
  v4[6] = sub_AB9930();
  v7 = sub_AB98B0();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_8B55BC, v7, v6);
}

uint64_t sub_8B55BC(__n128 a1)
{
  result = sub_AB9A10();
  if (result)
  {

    v3 = v1[1];

    return v3();
  }

  v4 = *(v1[2] + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  v5 = 100 * v4;
  if ((v4 * 100) >> 64 != (100 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = __OFADD__(v5, 500);
  v7 = v5 + 500;
  if (v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = __OFADD__(v7, 600);
  v8 = v7 + 600;
  v1[9] = v8;
  if (v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = 1000000000000000 * v8;
  v10 = (v8 * 0x38D7EA4C68000uLL) >> 64;
  sub_8B4E24();
  sub_ABB4F0();
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_8B5740;

  return sub_8B80C8(v9, v10, 0, 0, 1);
}

uint64_t sub_8B5740()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_8B9C90;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_8B58D8;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_8B58D8(__n128 a1)
{
  if (sub_AB9A10())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[9];
    sub_8B4E24();
    sub_ABB4F0();
    v5 = swift_task_alloc();
    v1[10] = v5;
    *v5 = v1;
    v5[1] = sub_8B5740;

    return sub_8B80C8(1000000000000000 * v4, (v4 * 0x38D7EA4C68000uLL) >> 64, 0, 0, 1);
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.tintColorDidChange()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "tintColorDidChange");
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    v2 = [v0 tintColor];
    if (!v2)
    {
      goto LABEL_15;
    }

    v4 = v2;
    v5 = sub_8B1C6C(v3);
    v6 = v5;
    if (v5 >> 62)
    {
      v7 = sub_ABB060();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (v7)
      {
LABEL_5:
        if (v7 >= 1)
        {
          for (i = 0; i != v7; ++i)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v9 = sub_ABAE20();
            }

            else
            {
              v9 = *(v6 + 8 * i + 32);
            }

            v10 = v9;
            [v9 setBackgroundColor:v4];
          }

          goto LABEL_12;
        }

        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }

LABEL_12:
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.didMoveToWindow()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v1 = [v0 window];
  v2 = v1;
  if (v1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2 != 0;
  v4 = v0;
  sub_AB5520();
  sub_8B5E1C(v3);
}

void WaveformPlayIndicator.isVisible.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  v2 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_AB5520();
  sub_8B5E1C(v2);
}

void sub_8B5E1C(char a1)
{
  v1 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((&v2 + 1));

  if (BYTE1(v2) != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v2);

    if (v2 == 1)
    {
      sub_8B3C18();
    }
  }
}

uint64_t WaveformPlayIndicator.isVisible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_8B5F64(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

void sub_8B5FE4(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  v3 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_AB5520();
  sub_8B5E1C(v3);
}

void (*WaveformPlayIndicator.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_8B6148;
}

void sub_8B6148(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  sub_AB5510((a1 + 9));

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  sub_AB5520();
  sub_8B5E1C(v4);
}

double WaveformPlayIndicator.$isVisible.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  sub_AB54E0();
  swift_endAccess();
  return result;
}

uint64_t WaveformPlayIndicator.$isVisible.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8, &qword_B33780);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WaveformPlayIndicator.$isVisible.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8, &qword_B33780);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

void sub_8B6538(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  if (v2 < 0)
  {
    __break(1u);
  }

  else if (v2)
  {
    sub_ABAEC0();
    do
    {
      v3 = [objc_allocWithZone(UIView) init];
      v4 = [v3 layer];
      [v4 setCornerCurve:kCACornerCurveContinuous];

      v5 = [v3 layer];
      [v5 setAllowsEdgeAntialiasing:1];

      v6 = [v3 tintColor];
      [v3 setBackgroundColor:v6];

      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      --v2;
    }

    while (v2);
  }
}

void sub_8B6804(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v16[4] = a2;
    v16[5] = a3;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1B5EB4;
    v16[3] = &block_descriptor_63_5;
    v9 = _Block_copy(v16);
    sub_307CC(a2, a3);

    [a1 addAnimations:v9];
    _Block_release(v9);
    sub_17654(a2, a3);
  }

  swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_8A52C4(0, *(v10 + 2) + 1, 1, v10);
    *(v4 + 16) = v10;
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_8A52C4((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v15 = &v10[16 * v14];
  *(v15 + 4) = v11;
  *(v15 + 5) = a4;
  *(v4 + 16) = v10;
  swift_endAccess();
}

void sub_8B6990()
{
  v1 = v0;
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin();
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch_group_create();
  swift_beginAccess();
  v8 = *(*(v0 + 16) + 16);
  if (v8)
  {
    v23 = v0;
    v24 = v3;
    v25 = v2;

    v9 = (v22 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      v12 = v10;
      dispatch_group_enter(v7);
      [v12 startAnimationAfterDelay:v11];
      v13 = swift_allocObject();
      *(v13 + 16) = v7;
      v35 = sub_8B963C;
      v36 = v13;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_624AE8;
      v34 = &block_descriptor_57_3;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v16 = v7;

      [v15 addCompletion:v14];
      _Block_release(v14);

      --v8;
    }

    while (v8);

    v3 = v24;
    v2 = v25;
    v1 = v23;
  }

  sub_13C80(0, &qword_E1B340, OS_dispatch_queue_ptr);
  v25 = sub_ABA150();
  v35 = sub_8B9644;
  v36 = v1;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_1B5EB4;
  v34 = &block_descriptor_60_2;
  v17 = _Block_copy(&aBlock);

  v18 = v26;
  sub_AB7C30();
  v30 = _swiftEmptyArrayStorage;
  sub_8B987C(&qword_E17588, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17590, &unk_B34C00);
  sub_36A00(&qword_E17598, &qword_E17590, &unk_B34C00, &protocol conformance descriptor for [A]);
  v19 = v29;
  sub_ABABB0();
  v20 = v25;
  sub_ABA0F0();
  _Block_release(v17);

  (*(v3 + 8))(v19, v2);
  (*(v27 + 8))(v18, v28);
}

double sub_8B6DC4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t JSShareRequestCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_8B6E98()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_E1E330);
  v5 = __swift_project_value_buffer(v0, qword_E1E330);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v6 = qword_E73660;
  v7 = sub_AB9260();
  v8 = sub_AB9260();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_AB3150();

    (*(v1 + 32))(v5, v3, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_8B7040()
{
  v1 = v0;
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = xmmword_B28460;
  *(v1 + 32) = 0x4030000000000000;
  if (qword_E16CA8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_E1E330);
  (*(v3 + 16))(v5, v6, v2);
  *(v1 + 40) = sub_8B8C44(v5);
  *(v1 + 48) = v7;
  return v1;
}

id sub_8B72EC(uint64_t a1, unint64_t a2)
{
  sub_8B7A50(a1, a2);
  if (!v3)
  {
LABEL_25:
    if (qword_E16CB0 != -1)
    {
LABEL_43:
      swift_once();
    }

    v33 = sub_AB4BC0();
    __swift_project_value_buffer(v33, qword_E1E348);
    v34 = sub_AB4BA0();
    v35 = sub_AB9F50();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "BouncyBars asset does not have expected layers / animations", v36, 2u);
    }

    return 0;
  }

  v4 = v3;
  v5 = [v3 values];
  if (!v5)
  {

    goto LABEL_25;
  }

  v6 = v5;
  v7 = sub_AB9760();

  [v4 copy];
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_13C80(0, &qword_E1E600, CAKeyframeAnimation_ptr);
  swift_dynamicCast();
  v8 = v49;
  [v4 copy];
  sub_ABAB50();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v45 = v49;
  v43 = v4;
  [v4 copy];
  sub_ABAB50();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v44 = v49;
  v46 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v46 + 32;
    while (1)
    {
      if (v10 >= v9)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      *&v49 = v10;
      sub_808B0(v11, &v49 + 8);
      v52 = v49;
      v53 = v50;
      v54 = v51;
      if (!v51)
      {
        goto LABEL_31;
      }

      v47 = v49;
      sub_9ACFC((&v52 + 8), &v49);
      if (!swift_dynamicCast())
      {
        swift_bridgeObjectRelease_n();
        if (qword_E16CB0 != -1)
        {
          swift_once();
        }

        v39 = sub_AB4BC0();
        __swift_project_value_buffer(v39, qword_E1E348);
        v40 = sub_AB4BA0();
        v41 = sub_AB9F50();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_0, v40, v41, "BouncyBars asset does not have expected layers / animations", v42, 2u);
        }

        return 0;
      }

      v12 = v48 / 100.0 * v2[4];
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v12;
      result = [v8 values];
      if (!result)
      {
        break;
      }

      v14 = result;
      v15 = sub_AB9760();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_8B8594(v15);
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v47 >= *(v15 + 16))
      {
        goto LABEL_39;
      }

      v16 = v15 + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0((v16 + 32));
      sub_9ACFC(&v49, (v16 + 32));
      isa = sub_AB9740().super.isa;

      [v8 setValues:isa];

      v18 = v45;
      v19 = sub_AB9260();
      [v18 setKeyPath:v19];

      v20 = v2[3];
      v21 = v20 + v2[2];
      if (v20 > v21)
      {
        goto LABEL_40;
      }

      v22 = v20 + v48 / 100.0 * (v21 - v20);
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22;
      result = [v18 values];
      if (!result)
      {
        goto LABEL_45;
      }

      v23 = result;
      v24 = sub_AB9760();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_8B8594(v24);
      }

      if (v47 >= *(v24 + 16))
      {
        goto LABEL_41;
      }

      v25 = v24 + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0((v25 + 32));
      sub_9ACFC(&v49, (v25 + 32));
      v26 = sub_AB9740().super.isa;

      [v18 setValues:v26];

      v27 = v44;
      v28 = sub_AB9260();
      [v27 setKeyPath:v28];

      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22 * 0.5;
      result = [v27 values];
      if (!result)
      {
        goto LABEL_46;
      }

      v29 = result;
      v30 = sub_AB9760();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_8B8594(v30);
      }

      if (v47 >= *(v30 + 16))
      {
        goto LABEL_42;
      }

      ++v10;
      v31 = v30 + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0((v31 + 32));
      sub_9ACFC(&v49, (v31 + 32));
      v32 = sub_AB9740().super.isa;

      [v27 setValues:v32];

      v9 = *(v46 + 16);
      v11 += 32;
      if (v10 == v9)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_30:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
LABEL_31:
    swift_bridgeObjectRelease_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E608, &qword_B34BF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF8820;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = 1;
    *(inited + 56) = v45;
    *(inited + 64) = 2;
    *(inited + 72) = v44;
    v38 = sub_7B6FB4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E610, &qword_B34BF8);
    swift_arrayDestroy();

    return v38;
  }

  return result;
}

void sub_8B7A50(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 40);
  v5 = (a1 << 56) + 0x41746E6169726156;

  v6 = sub_8B7C2C(v5, 0xE800000000000000, v4);

  if (!v6)
  {
    return;
  }

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  sub_13C80(0, &qword_E17818, CALayer_ptr);
  v8 = sub_AB9760();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) > a2)
    {
      v9 = *(v8 + 8 * a2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v9 = sub_ABAE20();
LABEL_7:
  v10 = v9;

  v11 = [v10 animationKeys];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB9760();

    if (*(v13 + 16))
    {

      v14 = sub_AB9260();

      v15 = [v10 animationForKey:v14];

      if (v15)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }

    else
    {
    }
  }

  else
  {
  }
}