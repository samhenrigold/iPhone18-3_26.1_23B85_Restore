void sub_1A499E8CC(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  *a3 = 0x403C000000000000;
  v6 = *(a2 + 20);
  *(a3 + v6) = swift_getKeyPath();
  sub_1A499C5F8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = (a3 + *(a2 + 24));
  type metadata accessor for PhotosDetailsFilenameWidgetViewModel(0);
  sub_1A499EFB8(&qword_1EB146568, type metadata accessor for PhotosDetailsFilenameWidgetViewModel, &unk_1A533DFE8);
  v9 = v5;
  *v7 = sub_1A5248494();
  v7[1] = v8;
  PXDisplayCollectionDetailedCountsMake();
}

uint64_t sub_1A499EA34(uint64_t a1)
{
  result = sub_1A499EFB8(&qword_1EB1442A8, type metadata accessor for PhotosDetailsFilenameWidgetView, &unk_1A537887C);
  *(a1 + 8) = result;
  return result;
}

void sub_1A499EAD0(uint64_t a1)
{
  sub_1A499C5F8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A499EB9C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A499EB9C(uint64_t a1)
{
  if (!qword_1EB146620)
  {
    type metadata accessor for PhotosDetailsFilenameWidgetViewModel(255);
    sub_1A499EFB8(&qword_1EB146568, type metadata accessor for PhotosDetailsFilenameWidgetViewModel, &unk_1A533DFE8);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146620);
    }
  }
}

unint64_t sub_1A499EC30()
{
  result = qword_1EB146628;
  if (!qword_1EB146628)
  {
    sub_1A499EECC(255, &qword_1EB146618, sub_1A499E9F8, sub_1A3EC447C, MEMORY[0x1E697E830]);
    sub_1A499CBB4(&qword_1EB146630, sub_1A499E9F8, sub_1A499ED54);
    sub_1A499EFB8(&qword_1EB122308, sub_1A3EC447C, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146628);
  }

  return result;
}

unint64_t sub_1A499ED54()
{
  result = qword_1EB146638;
  if (!qword_1EB146638)
  {
    sub_1A499CD8C(255);
    sub_1A499EFB8(&qword_1EB146640, sub_1A499CDC8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146638);
  }

  return result;
}

void sub_1A499EE04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A499EE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A499C83C(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A499EECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A499EF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A499EFB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A499F000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static CGImageRef.forTexture(with:opaque:drawBlock:)(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A499F134;
  v11[3] = &block_descriptor_315;
  v8 = _Block_copy(v11);

  v9 = MEMORY[0x1A590CA90](a1 & 1, 0, v8, a4, a5);
  _Block_release(v8);
  return v9;
}

void sub_1A499F134(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v11(a3, a4, a5, a6);
}

uint64_t static CGImageRef.forTexture(with:solidColor:)(void *a1, double a2, double a3)
{
  v6 = [a1 CGColor];
  Alpha = CGColorGetAlpha(v6);

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v13[4] = sub_1A499F36C;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1A499F134;
  v13[3] = &block_descriptor_3_12;
  v9 = _Block_copy(v13);
  v10 = a1;

  v11 = MEMORY[0x1A590CA90](Alpha >= 1.0, 0, v9, a2, a3);
  _Block_release(v9);

  return v11;
}

BOOL sub_1A499F314()
{
  v1 = [v0 CGColor];
  Alpha = CGColorGetAlpha(v1);

  return Alpha >= 1.0;
}

void sub_1A499F36C(CGContext *a1, double a2, double a3, double a4, double a5)
{
  v11 = [*(v5 + 16) CGColor];
  CGContextSetFillColorWithColor(a1, v11);

  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  CGContextFillRect(a1, *&v12);
}

uint64_t sub_1A499F404(void *a1, void *a2)
{
  if (qword_1EB1E38B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1A499F578(a1, qword_1EB1E38B8);
  if (v5)
  {
    v6 = v5;
LABEL_13:
    swift_endAccess();
    return v6;
  }

  swift_endAccess();
  v7 = *(v2 + 168);
  v8 = a1;
  v6 = v7(v8, a2);
  swift_beginAccess();
  if ((qword_1EB1E38B8 & 0xC000000000000001) == 0)
  {

    goto LABEL_12;
  }

  if (qword_1EB1E38B8 < 0)
  {
    v9 = qword_1EB1E38B8;
  }

  else
  {
    v9 = qword_1EB1E38B8 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1A524E2B4();
  if (!__OFADD__(result, 1))
  {
    qword_1EB1E38B8 = sub_1A499FC0C(v9, result + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = qword_1EB1E38B8;
    sub_1A49A0080(v6, v8, isUniquelyReferenced_nonNull_native);
    qword_1EB1E38B8 = v12;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1A499F578(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1A524E6B4();

    if (v3)
    {
      type metadata accessor for LemonadePickerShelvesDataSource();
      swift_dynamicCast();
    }
  }

  else if (*(a2 + 16))
  {
    sub_1A3C39EA4(a1);
    if (v4)
    {
    }
  }
}

unint64_t sub_1A499F624(uint64_t a1, uint64_t a2)
{
  result = sub_1A49A0510(MEMORY[0x1E69E7CC0], a2);
  qword_1EB1E38B8 = result;
  return result;
}

void sub_1A499F690(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 40) = v2;
}

uint64_t sub_1A499F720(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  *(v4 + 48) = [objc_allocWithZone(off_1E77217D8) init];
  *(v4 + 16) = a1;
  type metadata accessor for LemonadeFeatureLibrary(0);
  v5 = a1;
  v6 = sub_1A3D8FF1C(v5, a2);

  *(v4 + 24) = v6;
  return v4;
}

uint64_t sub_1A499F7BC()
{
  if (*(v0 + 32))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 1;
}

void sub_1A499F834(char *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *a1;
    v14 = *(v1 + 32);
    LOBYTE(v13) = v3;
    swift_bridgeObjectRetain_n();
    v4 = LemonadeShelfIdentifier.rawValue.getter();
    v6 = sub_1A3C62374(v4, v5, v2);

    if (v6)
    {
      LOBYTE(v13) = v3;
      v7 = LemonadeShelfIdentifier.rawValue.getter();
      sub_1A3C57714(v7, v8);

      *(v1 + 32) = v14;

      v11 = *sub_1A42F823C();
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      *(v12 + 24) = v11;

      sub_1A524D1B4();
    }

    v9 = LemonadeShelfIdentifier.rawValue.getter();
    sub_1A3C44714(&v13, v9, v10);
  }
}

uint64_t sub_1A499F978()
{

  return swift_deallocClassInstance();
}

void (*sub_1A499FAF0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return sub_1A3D3D728;
}

void sub_1A499FB84(uint64_t a1)
{
  type metadata accessor for LemonadePickerShelvesDataSource();
  sub_1A49A04C8(&qword_1EB146680, v1, type metadata accessor for LemonadePickerShelvesDataSource, &unk_1A537899C);

    ;
  }
}

uint64_t sub_1A499FC0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A49A041C(0, a2);
    v2 = sub_1A524E784();
    v20 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v5 = v3;
      sub_1A3C4B4AC(0, v4);
      v6 = v5;
      do
      {
        v18 = v6;
        swift_dynamicCast();
        type metadata accessor for LemonadePickerShelvesDataSource();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1A499FE1C(v13 + 1, 1);
        }

        v2 = v20;
        result = sub_1A524DBE4();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v6 = sub_1A524E6C4();
      }

      while (v6);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1A499FE1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A49A041C(0, a2);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_1A524DBE4();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A49A0080(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A3C39EA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A499FE1C(v13, a3 & 1);
      v8 = sub_1A3C39EA4(a2);
      if ((v14 & 1) != (v9 & 1))
      {
LABEL_18:
        sub_1A3C4B4AC(0, v9);
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1A49A01EC(v8, v9);
      v8 = v16;
    }
  }

  v17 = *v4;
  if (v14)
  {
    *(v17[7] + 8 * v8) = a1;

    return;
  }

  v17[(v8 >> 6) + 8] |= 1 << v8;
  v9 = a2;
  *(v17[6] + 8 * v8) = a2;
  *(v17[7] + 8 * v8) = a1;
  v18 = v17[2];
  v12 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17[2] = v19;

  v20 = a2;
}

void sub_1A49A01EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A49A041C(0, a2);
  v4 = *v2;
  v5 = sub_1A524E764();
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
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

uint64_t sub_1A49A0358(uint64_t a1, uint64_t a2)
{
  result = sub_1A49A04C8(&qword_1EB146678, a2, type metadata accessor for LemonadePickerShelvesDataSource, &unk_1A53789C4);
  *(a1 + 8) = result;
  return result;
}

void sub_1A49A041C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB146688)
  {
    sub_1A3C4B4AC(255, a2);
    type metadata accessor for LemonadePickerShelvesDataSource();
    sub_1A49A04C8(&qword_1EB126BD0, 255, sub_1A3C4B4AC, MEMORY[0x1E69E81B8]);
    v2 = sub_1A524E7A4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB146688);
    }
  }
}

uint64_t sub_1A49A04C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49A0510(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A49A041C(0, a2);
    v4 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);

      result = sub_1A3C39EA4(v7);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v6;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A49A05FC(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1A5249574();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_1A49A0D60(0);
  sub_1A49A085C(a2, a3 + *(v6 + 44));
}

void sub_1A49A085C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[3] = a1;
  v12[5] = a2;
  sub_1A49A1424(0);
  MEMORY[0x1EEE9AC00](v2);
  v12[4] = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v12[2] = v12 - v5;
  sub_1A49A0E6C(0);
  MEMORY[0x1EEE9AC00](v6);
  v12[6] = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  *v10 = sub_1A5249314();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A49A3404(0);
  sub_1A49A2728(&v10[*(v11 + 44)]);
}

void sub_1A49A0D60(uint64_t a1)
{
  if (!qword_1EB146698)
  {
    sub_1A49A0FD0(255, &qword_1EB1466A0, sub_1A49A0DE4);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146698);
    }
  }
}

void sub_1A49A0DE4(uint64_t a1, double a2)
{
  if (!qword_1EB1466A8)
  {
    sub_1A49A0E6C(255);
    sub_1A3E435C4(255);
    sub_1A49A1424(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1466A8);
    }
  }
}

void sub_1A49A0E6C(uint64_t a1)
{
  if (!qword_1EB1466B0)
  {
    sub_1A49A13C0(255, &qword_1EB1466B8, sub_1A49A0F30, MEMORY[0x1E697E5E0]);
    sub_1A49A1160(255, &qword_1EB127FB8, &qword_1EB128688, sub_1A49A1258, sub_1A49A12D8);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1466B0);
    }
  }
}

void sub_1A49A0F30(uint64_t a1)
{
  if (!qword_1EB1466C0)
  {
    sub_1A49A0FD0(255, &qword_1EB1466C8, sub_1A49A1024);
    sub_1A49A2E38(&qword_1EB1466E0, &qword_1EB1466C8, sub_1A49A1024);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1466C0);
    }
  }
}

void sub_1A49A0FD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524BE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A49A1024(uint64_t a1)
{
  if (!qword_1EB1466D0)
  {
    sub_1A3DF14C0(255);
    sub_1A49A109C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1466D0);
    }
  }
}

void sub_1A49A109C(uint64_t a1)
{
  if (!qword_1EB1466D8)
  {
    sub_1A4108874(255, &qword_1EB128720, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A49A1160(255, &qword_1EB127FC0, &qword_1EB128738, MEMORY[0x1E697EAF0], sub_1A3E33BE8);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1466D8);
    }
  }
}

void sub_1A49A1160(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1A49A11D4(255, a3, a4);
    a5();
    v7 = sub_1A5249724();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49A11D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A405D430(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A49A1258(uint64_t a1)
{
  if (!qword_1EB127658)
  {
    sub_1A3E43880();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127658);
    }
  }
}

unint64_t sub_1A49A12D8()
{
  result = qword_1EB128690;
  if (!qword_1EB128690)
  {
    sub_1A49A11D4(255, &qword_1EB128688, sub_1A49A1258);
    sub_1A3E43880();
    swift_getOpaqueTypeConformance2();
    sub_1A405D6B4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128690);
  }

  return result;
}

void sub_1A49A13C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A49A1424(uint64_t a1)
{
  if (!qword_1EB1466E8)
  {
    sub_1A49A3550(255, &qword_1EB1466F0, MEMORY[0x1E697F960]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1466E8);
    }
  }
}

void sub_1A49A14A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E697F960];
    sub_1A49A35DC(255, &qword_1EB146700, sub_1A419A5C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v8 = v7;
    sub_1A49A35DC(255, &qword_1EB146708, sub_1A411848C, MEMORY[0x1E6981148], v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A49A157C(uint64_t a1)
{
  if (!qword_1EB146710)
  {
    sub_1A5249C04();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146710);
    }
  }
}

uint64_t sub_1A49A1614@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v108 = sub_1A5249C04();
  v90 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v89 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49A157C(0);
  v109 = v4;
  v94 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411848C();
  v101 = v6;
  v92 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6981148];
  v9 = MEMORY[0x1E697F948];
  sub_1A49A35DC(0, &qword_1EB146788, sub_1A411848C, MEMORY[0x1E6981148], MEMORY[0x1E697F948]);
  v98 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - v11;
  v13 = MEMORY[0x1E697F960];
  sub_1A49A35DC(0, &qword_1EB146708, sub_1A411848C, v8, MEMORY[0x1E697F960]);
  v105 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v85 - v15;
  v96 = sub_1A5249544();
  v87 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4108874(0, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v95 = v18;
  v86 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v85 - v20;
  sub_1A419A5C4(0, v19);
  v99 = v22;
  v88 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49A3550(0, &qword_1EB146790, MEMORY[0x1E697F948]);
  v106 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v107 = &v85 - v25;
  sub_1A49A14A0(0, &qword_1EB146798, MEMORY[0x1E697F948]);
  v102 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v85 - v27;
  v28 = MEMORY[0x1E6981E70];
  sub_1A49A35DC(0, &qword_1EB1467A0, sub_1A419A5C4, MEMORY[0x1E6981E70], v9);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v85 - v30;
  sub_1A49A35DC(0, &qword_1EB146700, sub_1A419A5C4, v28, v13);
  v103 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v85 - v33;
  sub_1A49A14A0(0, &qword_1EB1466F8, MEMORY[0x1E697F960]);
  v36 = v35;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = (&v85 - v38);
  v40 = (*(**&a1[OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content] + 120))(v37);
  if (v41 > 1)
  {
    if (v41 != 2)
    {
      if (v41 == 3)
      {
        sub_1A5249434();
        v49 = sub_1A524A444();
        v92 = v36;
        v50 = v49;
        v52 = v51;
        v94 = v39;
        v54 = v53;
        sub_1A524B3B4();
        v55 = sub_1A524A364();
        v57 = v56;
        v59 = v58;
        v61 = v60;

        sub_1A3E04DF4(v50, v52, v54 & 1);

        *v12 = v55;
        *(v12 + 1) = v57;
        v12[16] = v59 & 1;
        *(v12 + 3) = v61;
        swift_storeEnumTagMultiPayload();
        sub_1A3E75E68(v55, v57, v59 & 1);
        sub_1A49A3928(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

LABEL_8:
      v111 = v40;
      v112 = v41;
      sub_1A3D5F9DC();
      v62 = sub_1A524A464();
      v64 = v63;
      v111 = v62;
      v112 = v63;
      v92 = v36;
      v66 = v65 & 1;
      LOBYTE(v113) = v65 & 1;
      v114 = v67;
      v68 = v89;
      sub_1A5249BF4();
      v69 = v93;
      v70 = MEMORY[0x1E6981148];
      v71 = v108;
      v72 = MEMORY[0x1E6981138];
      sub_1A524AB14();
      (*(v90 + 8))(v68, v71);
      sub_1A3E04DF4(v62, v64, v66);

      v73 = v94;
      v74 = v109;
      (v94[2])(v107, v69, v109);
      swift_storeEnumTagMultiPayload();
      sub_1A49A3648();
      v111 = v70;
      v112 = v71;
      v113 = v72;
      v114 = MEMORY[0x1E69803B8];
      swift_getOpaqueTypeConformance2();
      sub_1A5249744();
      return v73[1](v69, v74);
    }

    v101 = sub_1A5249434();
    v92 = v36;
    v94 = v39;
    *(swift_allocObject() + 16) = a1;
    v77 = a1;
    sub_1A524B744();
    sub_1A5249534();
    v101 = sub_1A3D6E520();
    v78 = sub_1A49A3928(&unk_1EB122DF0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    v80 = v96;
    v79 = v97;
    v81 = v95;
    sub_1A524A934();
    (*(v87 + 8))(v17, v80);
    (*(v86 + 8))(v21, v81);
    v82 = v88;
    v83 = v99;
    (*(v88 + 16))(v31, v79, v99);
    swift_storeEnumTagMultiPayload();
    v111 = v81;
    v112 = v80;
    v113 = v101;
    v114 = v78;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    sub_1A3D2E6FC(v34, v104);
    swift_storeEnumTagMultiPayload();
    sub_1A49A36E4();
    sub_1A49A3840();
    v84 = v94;
    sub_1A5249744();
    sub_1A3D2E798(v34);
    sub_1A3D2E5CC(v84, v107);
    swift_storeEnumTagMultiPayload();
    sub_1A49A3648();
    v111 = MEMORY[0x1E6981148];
    v112 = v108;
    v113 = MEMORY[0x1E6981138];
    v114 = MEMORY[0x1E69803B8];
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    sub_1A3D2E64C(v84);
    return (*(v82 + 8))(v97, v83);
  }

  else
  {
    if (v41)
    {
      if (v41 == 1)
      {
        v42 = v91;
        sub_1A5248074();
        v43 = v92;
        v44 = v101;
        (*(v92 + 16))(v12, v42, v101);
        swift_storeEnumTagMultiPayload();
        sub_1A49A3928(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
        v45 = v100;
        v46 = MEMORY[0x1E6981148];
        v47 = MEMORY[0x1E6981138];
        sub_1A5249744();
        sub_1A49A3970(v45, v104);
        swift_storeEnumTagMultiPayload();
        sub_1A49A36E4();
        sub_1A49A3840();
        sub_1A5249744();
        sub_1A49A3A0C(v45);
        sub_1A3D2E5CC(v39, v107);
        swift_storeEnumTagMultiPayload();
        sub_1A49A3648();
        v111 = v46;
        v112 = v108;
        v113 = v47;
        v114 = MEMORY[0x1E69803B8];
        swift_getOpaqueTypeConformance2();
        sub_1A5249744();
        sub_1A3D2E64C(v39);
        return (*(v43 + 8))(v42, v44);
      }

      goto LABEL_8;
    }

    swift_storeEnumTagMultiPayload();
    v75 = sub_1A3D6E520();
    v76 = sub_1A49A3928(&unk_1EB122DF0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    v111 = v95;
    v112 = v96;
    v113 = v75;
    v114 = v76;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    sub_1A3D2E6FC(v34, v104);
    swift_storeEnumTagMultiPayload();
    sub_1A49A36E4();
    sub_1A49A3840();
    sub_1A5249744();
    sub_1A3D2E798(v34);
    sub_1A3D2E5CC(v39, v107);
    swift_storeEnumTagMultiPayload();
    sub_1A49A3648();
    v111 = MEMORY[0x1E6981148];
    v112 = v108;
    v113 = MEMORY[0x1E6981138];
    v114 = MEMORY[0x1E69803B8];
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return sub_1A3D2E64C(v39);
  }
}

uint64_t sub_1A49A2678()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3E5387C;

  return sub_1A45E153C();
}

void sub_1A49A2728(uint64_t *a1@<X8>)
{
  v72 = a1;
  sub_1A49A109C(0);
  v65 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1 - 8);
  v71 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v63 - v4;
  sub_1A5249434();
  v6 = sub_1A524A444();
  v8 = v7;
  v10 = v9;
  v64 = objc_opt_self();
  v11 = [v64 labelColor];
  sub_1A524B284();
  v12 = sub_1A524A364();
  v67 = v13;
  v68 = v12;
  v69 = v14;
  v70 = v15;

  sub_1A3E04DF4(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  sub_1A5249434();
  v16 = sub_1A524A444();
  v18 = v17;
  v20 = v19;
  sub_1A524A184();
  v22 = v21;
  v23 = sub_1A3FE1A88();
  sub_1A3FE1A98(v22, 12.0, v23);

  v24 = sub_1A524A3C4();
  v26 = v25;
  v28 = v27;

  sub_1A3E04DF4(v16, v18, v20 & 1);

  sub_1A524B434();
  v29 = sub_1A524A364();
  v31 = v30;
  v33 = v32;
  v63 = v34;

  sub_1A3E04DF4(v24, v26, v28 & 1);

  v35 = sub_1A524A064();
  v74 = v33 & 1;
  v73 = 0;
  v36 = &v5[*(v65 + 44)];
  v37 = *(sub_1A5248A14() + 20);
  v38 = *MEMORY[0x1E697F468];
  v39 = sub_1A52494A4();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #3.0 }

  *v36 = _Q0;
  v45 = [v64 separatorColor];
  v46 = sub_1A524B284();
  v47 = swift_getKeyPath();
  v48 = MEMORY[0x1E697EAF0];
  sub_1A49A11D4(0, &qword_1EB128738, MEMORY[0x1E697EAF0]);
  v50 = &v36[*(v49 + 36)];
  *v50 = v47;
  v50[1] = v46;
  v51 = sub_1A524BC74();
  v53 = v52;
  sub_1A49A1160(0, &qword_1EB127FC0, &qword_1EB128738, v48, sub_1A3E33BE8);
  v55 = &v36[*(v54 + 36)];
  *v55 = v51;
  v55[1] = v53;
  *v5 = v29;
  *(v5 + 1) = v31;
  v5[16] = v33 & 1;
  *(v5 + 5) = *&v76[3];
  *(v5 + 17) = *v76;
  *(v5 + 3) = v63;
  v5[32] = v35;
  *(v5 + 9) = *&v75[3];
  *(v5 + 33) = *v75;
  *(v5 + 40) = xmmword_1A53522F0;
  *(v5 + 56) = xmmword_1A53522F0;
  v5[72] = 0;
  v56 = v71;
  sub_1A49A3AC4(v5, v71, sub_1A49A109C);
  v57 = v72;
  v59 = v67;
  v58 = v68;
  *v72 = v68;
  v57[1] = v59;
  LOBYTE(v53) = v69 & 1;
  *(v57 + 16) = v69 & 1;
  v60 = KeyPath;
  v57[3] = v70;
  v57[4] = v60;
  v57[5] = 1;
  *(v57 + 48) = 0;
  v57[7] = 0;
  *(v57 + 64) = 1;
  v61 = v57;
  sub_1A49A1024(0);
  sub_1A49A3AC4(v56, v61 + *(v62 + 64), sub_1A49A109C);
  sub_1A3E75E68(v58, v59, v53);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49A2C14(uint64_t a1)
{
  type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
  sub_1A49A3928(&qword_1EB146690, type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel, &unk_1A533DFE8);

  return sub_1A5248494();
}

uint64_t sub_1A49A2C90@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
  sub_1A49A3928(&qword_1EB146690, type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A49A2D18(uint64_t a1)
{
  if (!qword_1EB146718)
  {
    sub_1A49A2D98(255);
    sub_1A405D430(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146718);
    }
  }
}

void sub_1A49A2D98(uint64_t a1)
{
  if (!qword_1EB146720)
  {
    sub_1A49A0FD0(255, &qword_1EB1466A0, sub_1A49A0DE4);
    sub_1A49A2E38(&qword_1EB146728, &qword_1EB1466A0, sub_1A49A0DE4);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146720);
    }
  }
}

uint64_t sub_1A49A2E38(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A49A0FD0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A49A2EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49A2F24(uint64_t a1)
{
  if (!qword_1EB146740)
  {
    sub_1A49A2EB0(255, &qword_1EB146738, sub_1A49A2E88, sub_1A3FA9268);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146740);
    }
  }
}

uint64_t sub_1A49A2FB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A49A2678();
}

unint64_t sub_1A49A3048(uint64_t a1)
{
  result = sub_1A484EB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A49A309C()
{
  result = qword_1EB146750;
  if (!qword_1EB146750)
  {
    sub_1A49A2EB0(255, &qword_1EB146748, sub_1A49A2F24, MEMORY[0x1E697C028]);
    sub_1A49A32B4(&qword_1EB146758, sub_1A49A2F24, sub_1A49A31A8);
    sub_1A49A3928(&qword_1EB128940, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146750);
  }

  return result;
}

unint64_t sub_1A49A31A8()
{
  result = qword_1EB146760;
  if (!qword_1EB146760)
  {
    sub_1A49A2EB0(255, &qword_1EB146738, sub_1A49A2E88, sub_1A3FA9268);
    sub_1A49A32B4(&qword_1EB146768, sub_1A49A2E88, sub_1A49A3334);
    sub_1A49A3928(&qword_1EB12F910, sub_1A3FA9268, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146760);
  }

  return result;
}

uint64_t sub_1A49A32B4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49A3334()
{
  result = qword_1EB146770;
  if (!qword_1EB146770)
  {
    sub_1A49A2D18(255);
    sub_1A49A3928(&qword_1EB146778, sub_1A49A2D98, MEMORY[0x1E6981870]);
    sub_1A405D6B4(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146770);
  }

  return result;
}

void sub_1A49A3404(uint64_t a1)
{
  if (!qword_1EB146780)
  {
    sub_1A49A0FD0(255, &qword_1EB1466C8, sub_1A49A1024);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146780);
    }
  }
}

uint64_t sub_1A49A3488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49A34F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A49A3550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A49A14A0(255, &qword_1EB1466F8, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A49A157C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A49A35DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A49A3648()
{
  result = qword_1EB1467A8;
  if (!qword_1EB1467A8)
  {
    sub_1A49A14A0(255, &qword_1EB1466F8, MEMORY[0x1E697F960]);
    sub_1A49A36E4();
    sub_1A49A3840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1467A8);
  }

  return result;
}

unint64_t sub_1A49A36E4()
{
  result = qword_1EB1467B0;
  if (!qword_1EB1467B0)
  {
    sub_1A49A35DC(255, &qword_1EB146700, sub_1A419A5C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A4108874(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249544();
    sub_1A3D6E520();
    sub_1A49A3928(&unk_1EB122DF0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1467B0);
  }

  return result;
}

unint64_t sub_1A49A3840()
{
  result = qword_1EB1467B8;
  if (!qword_1EB1467B8)
  {
    sub_1A49A35DC(255, &qword_1EB146708, sub_1A411848C, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A49A3928(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1467B8);
  }

  return result;
}

uint64_t sub_1A49A3928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A49A3970(uint64_t a1, uint64_t a2)
{
  sub_1A49A35DC(0, &qword_1EB146708, sub_1A411848C, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49A3A0C(uint64_t a1)
{
  sub_1A49A35DC(0, &qword_1EB146708, sub_1A411848C, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A49A3AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49A3B2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ConcatenatingAssetsDataSourceManager.init(dataSourceManagers:mode:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers) = a1;
  *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_mode) = a2;
  v3 = v2;
  v4 = type metadata accessor for ConcatenatingAssetsDataSourceManager();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49A3DE4(void *a2@<X8>, double a3@<D0>)
{
  v6 = *(v3 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v6 >> 62)
  {
    v7 = sub_1A524E2B4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_12:
    sub_1A49A5D54(0);
    a2[3] = v16;
    *a2 = v8;
    return;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1A3D3E490(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v8 = v18;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1A59097F0](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = sub_1A524C634();
      v13 = [v11 pauseChangeDeliveryWithTimeout:v12 identifier:a3];

      sub_1A524E0B4();
      swift_unknownObjectRelease();
      v18 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A3D3E490((v14 > 1), v15 + 1, 1);
        v8 = v18;
      }

      ++v9;
      *(v8 + 16) = v15 + 1;
      sub_1A3C57128(&v17, (v8 + 32 * v15 + 32));
    }

    while (v7 != v9);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1A49A4040(uint64_t a1)
{
  sub_1A3C2F0BC(a1, &v14);
  sub_1A49A5D54(0);
  if (!swift_dynamicCast())
  {
LABEL_18:
    sub_1A524E6E4();
    __break(1u);
    return;
  }

  v2 = v11;
  v3 = *(v11 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers;
    v6 = v11 + 32;
    while (v4 < *(v2 + 16))
    {
      *&v11 = v4;
      sub_1A3C2F0BC(v6, &v11 + 8);
      v14 = v11;
      v15 = v12;
      v16 = v13;
      if (!v13)
      {
        goto LABEL_14;
      }

      v10 = v11;
      sub_1A3C57128((&v14 + 8), &v11);
      v7 = *(v1 + v5);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](v10);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v7 + 8 * v10 + 32);
      }

      v9 = v8;
      ++v4;
      __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
      [v9 resumeChangeDeliveryAndBackgroundLoading_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(&v11);
      v6 += 32;
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
LABEL_14:
}

void sub_1A49A4284(__n128 a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = sub_1A49A5AA4();
    [v3 setDataSource:v4 changeDetails:0];
  }
}

void sub_1A49A4354(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v7 >> 62)
  {
    v8 = sub_1A524E2B4();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 >= 1)
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1A59097F0](v9, v7);
        if (!a3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = *(v7 + 8 * v9 + 32);
        if (!a3)
        {
LABEL_11:
          v10 = 0;
          goto LABEL_6;
        }
      }

      v10 = sub_1A524CF34();
LABEL_6:
      ++v9;
      [v11 setCurationEnabledForAllCollections:a1 & 1 curationLength:a2 collectionsToDiff:v10];

      if (v8 == v9)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A4508()
{
  v1 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v1 >> 62)
  {
    v2 = sub_1A524E2B4();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1A59097F0](v4, v1);
        if (v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
        if (v3)
        {
LABEL_11:
          v3 = 1;
          goto LABEL_6;
        }
      }

      v3 = [v5 forceAccurateAllSectionsIfNeeded];
LABEL_6:
      ++v4;

      if (v2 == v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A4640(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers];
  if (v4 >> 62)
  {
    v9 = a1;
    v5 = sub_1A524E2B4();
    a1 = v9;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = a1;
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 *a3];
    }
  }
}

uint64_t sub_1A49A4BC4()
{
  v1 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v1 >> 62)
  {
    result = sub_1A524E2B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1A59097F0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = [v3 sortDescriptors];

  if (!v5)
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v6 = sub_1A524CA34();

  return v6;
}

BOOL sub_1A49A4D68(SEL *a1)
{
  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A59097F0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v9 = [v7 *a1];

    v5 = v6 + 1;
  }

  while (!v9);
  return v4 != v6;
}

void sub_1A49A4F64(char a1, SEL *a2)
{
  v5 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 *a2];
    }
  }
}

void sub_1A49A5030(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v7, v5);
        if (!a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
        if (!a2)
        {
LABEL_11:
          v8 = 0;
          goto LABEL_6;
        }
      }

      v8 = sub_1A524CF34();
LABEL_6:
      ++v7;
      [v9 setFilterPredicate:a1 provideIncrementalChangeDetailsForAssetCollections:v8];

      if (v6 == v7)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A51D4(char a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v7, v5);
        if (!a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
        if (!a2)
        {
LABEL_11:
          v8 = 0;
          goto LABEL_6;
        }
      }

      v8 = sub_1A524CF34();
LABEL_6:
      ++v7;
      [v9 setIncludeOthersInSocialGroupAssets:a1 & 1 provideIncrementalChangeDetailsForAssetCollections:v8];

      if (v6 == v7)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A5378(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v9 = *&a1[OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers];
  if (v9 >> 62)
  {
    v10 = sub_1A524E2B4();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v11 = a1;
    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1A59097F0](i, v9);
      }

      else
      {
        v13 = *(v9 + 8 * i + 32);
      }

      v14 = v13;
      [v13 *a5];
    }

    swift_unknownObjectRelease();
  }
}

void sub_1A49A549C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v3 >> 62)
  {
    v4 = sub_1A524E2B4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v5, v3);
        if (!a1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
        if (!a1)
        {
LABEL_11:
          v6 = 0;
          goto LABEL_6;
        }
      }

      v6 = sub_1A524CF34();
LABEL_6:
      ++v5;
      [v7 setAllowedUUIDs_];

      if (v4 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A562C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v4 >> 62)
  {
    v5 = sub_1A524E2B4();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_1A4892848();
      v9 = sub_1A524C3D4();
      sub_1A3FC306C(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v10 = sub_1A524C3D4();
      sub_1A3C5D0E8(0, &qword_1EB120790, &protocolRef_PXDisplayAssetCollection);
      v11 = sub_1A524CA14();
      [v8 setAllowedUUIDs:v9 manualOrderUUIDs:v10 forAssetCollections:v11];
    }

    while (v5 != v6);
  }
}

void sub_1A49A58D8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v4 >> 62)
  {
    v5 = sub_1A524E2B4();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = sub_1A524CF34();
      if (a2)
      {
        v7 = sub_1A524CF34();
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      [v9 setAllowedUUIDs:v10 provideIncrementalChangeDetailsForAssetCollections:v7];
    }

    while (v5 != v6);
  }
}

id sub_1A49A5AA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v2 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      v11 = sub_1A524E2B4();
      v9 = MEMORY[0x1E69E7CC0];
      if (!v11)
      {
LABEL_10:
        type metadata accessor for ConcatenatingAssetsDataSource(0, v8);
        return ConcatenatingAssetsDataSource.__allocating_init(underlyingDataSources:mode:)(v9, *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_mode));
      }

      v3 = v11;
      v13 = MEMORY[0x1E69E7CC0];
      sub_1A524E554();
      if ((v3 & 0x8000000000000000) == 0)
      {
LABEL_4:
        v4 = 0;
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x1A59097F0](v4, v2);
          }

          else
          {
            v5 = *(v2 + 8 * v4 + 32);
          }

          v6 = v5;
          ++v4;
          v7 = [v5 dataSource];

          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
        }

        while (v3 != v4);
        v9 = v13;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1A524E554();
      goto LABEL_4;
    }
  }

  sub_1A3C52C70(0, &qword_1EB126A20, &off_1E77214A0);
  v12 = [swift_getObjCClassFromMetadata() emptyDataSource];

  return v12;
}

id ConcatenatingAssetsDataSourceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConcatenatingAssetsDataSourceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcatenatingAssetsDataSourceManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A49A5D54(uint64_t a1)
{
  if (!qword_1EB1467D0)
  {
    sub_1A3FC306C(255, &unk_1EB12C320, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    sub_1A49A5DE0();
    v1 = sub_1A524E734();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1467D0);
    }
  }
}

unint64_t sub_1A49A5DE0()
{
  result = qword_1EB1467E0;
  if (!qword_1EB1467E0)
  {
    sub_1A3FC306C(255, &unk_1EB12C320, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1467E0);
  }

  return result;
}

void sub_1A49A5E60(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v3 >> 62)
  {
    v4 = sub_1A524E2B4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 setFilterPredicate_];
    }
  }
}

void sub_1A49A5F2C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v3 >> 62)
  {
    v4 = sub_1A524E2B4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v5, v3);
        if (a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
        if (a1)
        {
LABEL_10:
          sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
          v8 = v7;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      v6 = v7;
      ++v5;
      [v7 setSortDescriptors_];

      if (v4 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A60C8(id a1)
{
  v1 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v1);
  sub_1A524C174();
}

void sub_1A49A6550(uint64_t a1)
{
  if (!qword_1EB1468B8)
  {
    sub_1A43F465C();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1468B8);
    }
  }
}

void sub_1A49A66D4()
{
  v1 = [*v0 viewModel];
  v3[4] = sub_1A49A65A8;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3D7692C;
  v3[3] = &block_descriptor_3_13;
  v2 = _Block_copy(v3);
  [v1 performChanges_];
  _Block_release(v2);
}

uint64_t sub_1A49A67B8()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49A6B00(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadePeopleHomeView(0);
  sub_1A49B13D8(v0 + *(v11 + 64), v7, &qword_1EB128A80, sub_1A3D63A58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A49AFC64(v7, v10, sub_1A3D63A58);
  }

  else
  {
    v12 = sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_1A49A6D7C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  if ((*(*(v14 - 8) + 48))(v10, 1, v14) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A49AFC04(v10, sub_1A3D63A58);
  return 0;
}

void sub_1A49A6B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49A6B64@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49A6B00(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A49B13D8(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_1A49A6D7C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_1A49A6DE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A524B694();
  *(a5 + 32) = v26;
  *(a5 + 40) = *(&v26 + 1);
  v10 = type metadata accessor for LemonadePeopleHomeView(0);
  v11 = v10[15];
  *(a5 + v11) = swift_getKeyPath();
  v12 = MEMORY[0x1E697DCB8];
  sub_1A49A6B00(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v13 = v10[16];
  *(a5 + v13) = swift_getKeyPath();
  sub_1A49A6B00(0, &qword_1EB128A80, sub_1A3D63A58, v12);
  swift_storeEnumTagMultiPayload();
  v14 = v10[17];
  *(a5 + v14) = swift_getKeyPath();
  sub_1A49A6B00(0, &qword_1EB128A90, MEMORY[0x1E69C2948], v12);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + v10[18];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a5 + v10[19];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a5 + v10[20];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a5 + v10[21];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a5 + v10[22];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  v20 = v10[23];
  sub_1A440B51C(0);
  sub_1A524B694();
  *(a5 + v20) = v26;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  v21 = *(a1 + 16);
  *(swift_allocObject() + 16) = v21;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  v22 = v21;

  sub_1A5247C74();
  sub_1A49AEA74(0, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
  sub_1A5247C74();
  type metadata accessor for LemonadePeopleHomeView.SelectionState(0);
  sub_1A5247C74();
  sub_1A49A6D7C(0, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);

  sub_1A5247C74();
  *(swift_allocObject() + 16) = v22;
  type metadata accessor for PhotoKitSocialGroupActionManager();
  v23 = v22;
  sub_1A5247C74();
  *(swift_allocObject() + 16) = v23;
  type metadata accessor for LemonadePeopleProgressStatus(0);
  v24 = v23;
  sub_1A5247C74();
  sub_1A5246F24();
  sub_1A5247C74();
  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A3F54B78();

  return result;
}

uint64_t sub_1A49A72EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  result = sub_1A3F283BC(v3);
  *a1 = result;
  return result;
}

uint64_t sub_1A49A7330@<X0>(uint64_t *a1@<X8>)
{
  sub_1A49AEA74(0, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
  swift_allocObject();
  result = sub_1A5242844();
  *a1 = result;
  return result;
}

uint64_t sub_1A49A739C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadePeopleHomeView.SelectionState(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_1A5241604();
  *a1 = v2;
  return result;
}

uint64_t sub_1A49A73EC()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A49A7434@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeSocialGroupSectionProvider(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 40);
  v9 = v8;
  sub_1A4965B64(v7, v8, 0, 0, 1, v6);
  v10 = sub_1A49AEAC8(&qword_1EB145E00, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A53770EC);
  v11 = sub_1A3C66934(v6, v4, v10);
  result = sub_1A49AFC04(v6, type metadata accessor for LemonadeSocialGroupSectionProvider);
  *a2 = v11;
  return result;
}

id sub_1A49A7550@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for PhotoKitSocialGroupActionManager();
  v4 = v3;
  result = sub_1A4680978(MEMORY[0x1E69E7CC0], v4);
  *a1 = result;
  return result;
}

void sub_1A49A75BC()
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  type metadata accessor for LemonadePeopleHomeView(0);
  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  v4 = v3;
  sub_1A5247C84();
  if (sub_1A3F546F4() == 4)
  {
    [*(v2 + 24) viewMode];
  }

  sub_1A49AF2F0(0, &qword_1EB1468C0, MEMORY[0x1E697DA80]);
  v5 = sub_1A5247C84();
  (*(*v6 + 280))(v5);
  sub_1A49A6D7C(0, &qword_1EB1365E0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A427202C();
  sub_1A5246484();
}

void sub_1A49A77E8(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v81 = a4;
  v66 = a5;
  v63 = type metadata accessor for LemonadePeoplePlaceholderView(0);
  v62[37] = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62[36] = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AF1D8(0);
  v62[35] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62[34] = v62 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v64 = v62 - v14;
  sub_1A3E7CAB0(0);
  v62[33] = v15;
  v62[32] = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v62[31] = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A5249234();
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v68 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for LemonadePeopleHomeView(0);
  v19 = *(v82 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v21 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE5A4(0);
  v73 = *(v22 - 8);
  v74 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v62[5] = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE57C(0);
  v72 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v62[2] = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE4DC(0, v25);
  v62[13] = v27;
  v62[11] = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v62[1] = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE414(0);
  v62[7] = v29;
  MEMORY[0x1EEE9AC00](v29);
  v62[8] = v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE444(0, &qword_1EB146920, sub_1A49AE414, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v62[6] = v31;
  MEMORY[0x1EEE9AC00](v31);
  v62[10] = v62 - v32;
  sub_1A49AE388(0);
  v62[9] = v33;
  MEMORY[0x1EEE9AC00](v33);
  v62[14] = v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE360(0);
  v71 = v35;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v62[12] = v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE25C(0, v36);
  v62[19] = v38;
  v62[16] = *(v38 - 8);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v62[15] = v62 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE120(0, v39);
  v62[20] = v41;
  v62[18] = *(v41 - 8);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v62[17] = v62 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49ADFB4(0, v42);
  v62[23] = v44;
  v62[22] = *(v44 - 8);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v62[21] = v62 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49ADD88(0, v45);
  v67 = v47;
  v62[24] = *(v47 - 8);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v78 = v62 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49ADAE0(v48);
  v62[26] = v50;
  v62[25] = *(v50 - 8);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v79 = v62 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AD804(v51);
  v62[30] = v53;
  v62[29] = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v62[28] = v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v62[27] = v62 - v56;
  v62[0] = a1;
  sub_1A49B08D4(a1, v21, type metadata accessor for LemonadePeopleHomeView);
  v57 = *(v19 + 80);
  v58 = (v57 + 16) & ~v57;
  v59 = v58 + v20;
  v60 = ((v58 + v20) & 0xFFFFFFFFFFFFFFF8) + 8;
  v62[3] = (v58 + v20) & 0xFFFFFFFFFFFFFFF8;
  v76 = v57;
  v61 = swift_allocObject();
  v77 = v58;
  v80 = v21;
  sub_1A49AFC64(v21, v61 + v58, type metadata accessor for LemonadePeopleHomeView);
  v75 = v59;
  *(v61 + v59) = a2;
  v62[4] = v60;
  *(v61 + v60) = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49A90F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v66 = a3;
  v78 = a1;
  v74 = a5;
  v71 = sub_1A5242D14();
  v6 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v61 - v9;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE804(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE7DC(0);
  v68 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE7AC(0);
  v70 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AEFD4(0, &qword_1EB146950, sub_1A49AE7AC, sub_1A49AEB10, MEMORY[0x1E69C30A8]);
  v76 = *(v22 - 8);
  v77 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v61 - v23;
  v24 = type metadata accessor for LemonadePeopleHomeView(0);
  v25 = a2 + *(v24 + 88);
  v26 = *(v25 + 1);
  if ((v25[32] & 1) == 0)
  {
    v65 = v24;
    v27 = v11;
    v28 = *v25;
    v30 = *(v25 + 2);
    v29 = *(v25 + 3);
    v64 = v30;
    v63 = v29;

    v31 = sub_1A524D254();
    v32 = sub_1A524A014();
    v62 = v10;
    v33 = a2;
    v34 = v32;
    sub_1A5246DF4(v31, &dword_1A3C1C000, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    a2 = v33;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3F1D444(v28, v26, v64, v63, 0);
    (*(v27 + 8))(v13, v62);
    v26 = v81[1];
  }

  *v16 = sub_1A5249574();
  *(v16 + 1) = v26;
  v16[16] = 0;
  sub_1A49B136C(0, &unk_1EB146A98, sub_1A49AE898, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A49A97E0(a2, v66 & 1, v67, &v16[*(v35 + 44)]);
  v36 = sub_1A524A074();
  v37 = v72;
  sub_1A49A6B64(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v72);
  v38 = v73;
  v39 = v71;
  (*(v6 + 104))(v73, *MEMORY[0x1E69C2210], v71);
  sub_1A5242D04();
  v40 = *(v6 + 8);
  v40(v38, v39);
  v40(v37, v39);
  sub_1A5247BC4();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v69;
  sub_1A49AFE20(v16, v69, sub_1A49AE804);
  v50 = v49 + *(v68 + 36);
  *v50 = v36;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  KeyPath = swift_getKeyPath();
  sub_1A49AFE20(v49, v21, sub_1A49AE7DC);
  v52 = v70;
  v53 = &v21[*(v70 + 36)];
  *v53 = KeyPath;
  v53[8] = 2;
  v54 = sub_1A49AEB10();
  v55 = v75;
  v56 = v78;
  sub_1A524A5E4();
  sub_1A49B084C(v21, sub_1A49AE7AC);
  v57 = a2[3];
  v81[3] = type metadata accessor for LemonadeNavigationContext(0);
  v81[4] = sub_1A49AEAC8(&qword_1EB125720, type metadata accessor for LemonadeNavigationContext, &unk_1A5353238);
  v81[0] = v57;

  v79 = v52;
  v80 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v77;
  sub_1A458C30C(v56, v81, v77, OpaqueTypeConformance2);
  (*(v76 + 8))(v55, v59);
  return __swift_destroy_boxed_opaque_existential_0(v81);
}

uint64_t sub_1A49A97E0@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v89 = a2;
  v93 = a4;
  v5 = type metadata accessor for LemonadePeopleHomePeopleSection(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v78 - v8;
  v9 = sub_1A5249234();
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadePeopleHomeGroupSection(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v91 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v78 - v14;
  v15 = sub_1A5244084();
  v87 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PersonSuggestionBanner.Style(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PersonSuggestionBanner(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A49AE9C0(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE98C(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v88 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
  v33 = *a1;
  v34 = *(*a1 + 40);
  v95 = &v78 - v35;
  if (!v34)
  {
    v78 = v20;
    v79 = v28;
    v80 = v21;
    v81 = v23;
    v82 = v17;
    v83 = v15;
    type metadata accessor for LemonadePeopleHomeView(0);
    sub_1A49A6B00(0, &qword_1EB146A68, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E697DA80]);
    v36 = sub_1A5247C84();
    v37 = (*(*v97 + 304))(v36);

    if (v37)
    {
      swift_unknownObjectRelease();
      v38 = sub_1A5247C84();
      v39 = (*(*v97 + 232))(v38);

      if ((v39 & 1) == 0)
      {
        sub_1A5247CA4();
        v40 = v97;
        v41 = v98;
        v42 = v99;
        v43 = sub_1A4001618();
        v44 = v78;
        sub_1A49B08D4(v43, v78, type metadata accessor for PersonSuggestionBanner.Style);
        v45 = sub_1A4000F0C();
        v46 = v81;
        sub_1A4000F28(v40, v41, v42, v44, v45, v47, v81);
        v48 = v82;
        sub_1A49A6B64(&qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E69C2948], v82);
        sub_1A49AEAC8(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner, &unk_1A5311528);
        v49 = v79;
        sub_1A524A784();
        (*(v87 + 8))(v48, v83);
        sub_1A49AFC04(v46, type metadata accessor for PersonSuggestionBanner);
        (*(v26 + 32))(v95, v49, v25);
      }
    }
  }

  (*(v26 + 56))(v32);
  v50 = *(v33 + 40);
  v51 = *(a1 + 32);
  v52 = a1[5];
  LOBYTE(v97) = v51;
  v98 = v52;
  sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  LODWORD(v87) = v100;
  v53 = a1;
  v54 = a1 + *(type metadata accessor for LemonadePeopleHomeView(0) + 80);
  v55 = *v54;
  if (v54[8] != 1)
  {

    v56 = sub_1A524D254();
    v57 = sub_1A524A014();
    sub_1A5246DF4(v56, &dword_1A3C1C000, v57, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v58 = v84;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v55, 0);
    (*(v85 + 8))(v58, v86);
    LOBYTE(v55) = v97;
  }

  v59 = v53[3];
  sub_1A49AF264(0, &qword_1EB13A288, MEMORY[0x1E697DA80]);

  sub_1A5247C84();
  v60 = v97;

  v61 = v55 & 1;
  v62 = v96;
  sub_1A49FB088(v50 != 0, v87, v61, v89 & 1, v59, v33, v60, v96);
  v63 = *(v33 + 40) != 0;
  LOBYTE(v97) = v51;
  v98 = v52;
  sub_1A524B6A4();
  LOBYTE(v60) = v100;
  v64 = *(v33 + 40);
  v65 = v64;
  v66 = v90;
  v67 = v92;
  sub_1A455984C(v63, v60, v66, v59, v64, v92);
  v68 = sub_1A5249574();
  v69 = v95;
  v70 = v88;
  sub_1A3D2F380(v95, v88);
  v71 = v91;
  sub_1A49B08D4(v62, v91, type metadata accessor for LemonadePeopleHomeGroupSection);
  v72 = v94;
  sub_1A49B08D4(v67, v94, type metadata accessor for LemonadePeopleHomePeopleSection);
  v73 = v93;
  sub_1A3D2F380(v70, v93);
  sub_1A49AE8CC(0);
  v75 = v74;
  sub_1A49B08D4(v71, v73 + *(v74 + 48), type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A49B08D4(v72, v73 + *(v75 + 64), type metadata accessor for LemonadePeopleHomePeopleSection);
  v76 = v73 + *(v75 + 80);
  *v76 = v68;
  *(v76 + 8) = 0x4034000000000000;
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  *(v76 + 32) = 1;
  sub_1A49AFC04(v67, type metadata accessor for LemonadePeopleHomePeopleSection);
  sub_1A49AFC04(v96, type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A49B084C(v69, sub_1A49AE98C);
  sub_1A49AFC04(v72, type metadata accessor for LemonadePeopleHomePeopleSection);
  sub_1A49AFC04(v71, type metadata accessor for LemonadePeopleHomeGroupSection);
  return sub_1A49B084C(v70, sub_1A49AE98C);
}

double sub_1A49AA160(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AA37C();
  v6 = *(a1 + *(type metadata accessor for LemonadePeopleHomeView(0) + 76) + 8);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A49B131C(0, &qword_1EB1261A8, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52FC9F0;
  strcpy(v10, "social-groups");
  HIWORD(v10[1]) = -4864;
  sub_1A524E384();
  v10[0] = 0x656C706F6570;
  v10[1] = 0xE600000000000000;
  sub_1A524E384();
  sub_1A5242FA4();

  return result;
}

double sub_1A49AA37C()
{
  v1 = v0;
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for LemonadePeopleHomeView(0) + 84) + 8);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v14 = v2;
  v9 = *(*(*(v1 + 24) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v10._object = 0x80000001A53F5E40;
  v10._countAndFlagsBits = 0xD000000000000017;
  LemonadeLocalizedPeopleAndPetsTitle(for:key:)(v9, v10);

  sub_1A5243DE4();

  if ((v6 & 1) == 0)
  {
    v11 = sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v14);
  }

  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A3F546F4();

  sub_1A5243DF4();

  return result;
}

void sub_1A49AA644(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + *(type metadata accessor for LemonadePeopleHomeView(0) + 76) + 8);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5242FA4();

  v9 = *(a1 + 40);
  v10[16] = *(a1 + 32);
  v11 = v9;
  sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v10[15] == 1)
  {
    sub_1A49AA80C();
  }
}

void sub_1A49AA80C()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  LOBYTE(aBlock) = *(v0 + 32);
  v15 = v5;
  v20 = 0;
  sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v6 = *(v0 + *(type metadata accessor for LemonadePeopleHomeView(0) + 72) + 8);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_1A52441E4();

  v9 = sub_1A49A67B8();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 px_barAppearance];
    v18 = sub_1A49AD710;
    v19 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1A421179C;
    v17 = &block_descriptor_87_7;
    v12 = _Block_copy(&aBlock);
    [v11 performChangesWithAnimationOptions:0 changes:v12];

    _Block_release(v12);
  }
}

uint64_t sub_1A49AAA74()
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v0 forceHideProcessingUI])
  {
    v1 = 0;
  }

  else if (sub_1A3F541D4())
  {
    v1 = 1;
  }

  else
  {
    v1 = [v0 forceShowProcessingUI];
  }

  return v1;
}

uint64_t sub_1A49AAB0C@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v67 = a3;
  sub_1A49AF0C8(0);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AF094(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadePeopleHomeView(0);
  v66 = *(v14 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = type metadata accessor for LemonadePeopleHomeNavigationBar(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AF060(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v70 = &v55 - v23;
  if (*(*a1 + 40) || (a2 & 1) != 0)
  {
    v51 = v21;
    (*(v11 + 56))(v21, 1, 1, v10, v22);
    v52 = sub_1A49AEAC8(&qword_1EB146A10, sub_1A49AF094, MEMORY[0x1E697C5E0]);
    v48 = v70;
    MEMORY[0x1A5904D00](v51, v10, v52);
    v49 = sub_1A49AF060;
    v50 = v51;
  }

  else
  {
    v61 = *(a1 + 32);
    v60 = *(a1 + 40);
    LOBYTE(v73[0]) = v61;
    *(&v73[0] + 1) = v60;
    v65 = v21;
    sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    v59 = v24;
    sub_1A524B6A4();
    v56 = v75;
    v58 = v14;
    v57 = MEMORY[0x1E697DA80];
    sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
    v64 = v13;
    v55 = v67;
    sub_1A5247C84();
    v25 = *&v73[0];
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v63 = v10;
    v26 = *(v66 + 80);
    v66 = v19;
    v27 = (v26 + 16) & ~v26;
    v28 = swift_allocObject();
    v67 = a4;
    v29 = v28;
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for LemonadePeopleHomeView);
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v30 = swift_allocObject();
    v62 = v11;
    v31 = v30;
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v27, type metadata accessor for LemonadePeopleHomeView);
    sub_1A48C0180(v56, v55, v25, sub_1A49B093C, v29, sub_1A49B0AE4, v31, v71);
    LOBYTE(v73[0]) = v61;
    *(&v73[0] + 1) = v60;
    sub_1A524B6A4();
    v61 = v75;
    sub_1A49A6B00(0, &qword_1EB146A70, type metadata accessor for LemonadePeopleHomeView.SelectionState, v57);
    sub_1A5247C84();
    v32 = *&v73[0];
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v33 = swift_allocObject();
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v27, type metadata accessor for LemonadePeopleHomeView);
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v34 = swift_allocObject();
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v27, type metadata accessor for LemonadePeopleHomeView);
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v35 = swift_allocObject();
    v36 = v35 + v27;
    v19 = v66;
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v36, type metadata accessor for LemonadePeopleHomeView);
    sub_1A4311908(v61, v32, sub_1A49B0AFC, v33, sub_1A49B0B58, v34, sub_1A49B1464, v35, v73);
    v37 = (v68 + *(v69 + 48));
    sub_1A49B08D4(v71, v68, type metadata accessor for LemonadePeopleHomeNavigationBar);
    v75 = *&v74[16];
    v76 = v74[24];
    v38 = v73[1];
    v39 = *v74;
    v37[2] = v73[2];
    v37[3] = v39;
    *(v37 + 57) = *&v74[9];
    *v37 = v73[0];
    v37[1] = v38;

    sub_1A49B08D4(&v75, v72, sub_1A430FE90);
    v40 = v64;
    sub_1A52495D4();
    v41 = v62;
    v42 = v65;
    v43 = v40;
    v44 = v40;
    v45 = v63;
    (*(v62 + 16))(v65, v43, v63);
    v46 = v41;
    (*(v41 + 56))(v42, 0, 1, v45);
    v47 = sub_1A49AEAC8(&qword_1EB146A10, sub_1A49AF094, MEMORY[0x1E697C5E0]);
    v48 = v70;
    MEMORY[0x1A5904D00](v42, v45, v47);

    sub_1A49AFC04(&v75, sub_1A430FE90);
    sub_1A49AFC04(v42, sub_1A49AF060);
    (*(v46 + 8))(v44, v45);
    v49 = type metadata accessor for LemonadePeopleHomeNavigationBar;
    v50 = v71;
  }

  sub_1A49AFC04(v50, v49);
  v53 = sub_1A49AF130();
  MEMORY[0x1A5904CD0](v48, v19, v53);
  return sub_1A49AFC04(v48, sub_1A49AF060);
}

void sub_1A49AB3A4()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadePeopleHomeView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  v14[5] = sub_1A49AB9A0();
  v8 = *(*v0 + 16);
  sub_1A49AF2F0(0, &qword_1EB1468C0, MEMORY[0x1E697DA80]);
  v14[4] = v8;
  sub_1A5247C84();
  v9 = aBlock;
  sub_1A49AF264(0, &qword_1EB13A288, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v10 = aBlock;
  sub_1A49A67B8();
  sub_1A49A6B00(0, &qword_1EB146A20, type metadata accessor for PhotoKitSocialGroupActionManager, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A49B08D4(v1, v7, type metadata accessor for LemonadePeopleHomeView);
  sub_1A49B08D4(v7, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1A49AFC64(v7, v12 + v11, type metadata accessor for LemonadePeopleHomeView);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;

  PXPresentationEnvironmentForSender();
}

id sub_1A49AB9A0()
{
  sub_1A3E7CAB0(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for LemonadePeopleHomeView(0) + 72);
  v31 = v0;
  v11 = *(v0 + v10 + 8);

  v12 = MEMORY[0x1E69E7CC0];
  if ((v11 & 1) == 0)
  {
    v13 = sub_1A524D254();
    v14 = v12;
    v15 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v12 = v14;
    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  sub_1A52441D4();

  v16 = sub_1A5241F14();
  (*(v3 + 8))(v5, v2);
  v34 = v12;
  if (v16 >> 62)
  {
LABEL_24:
    v17 = sub_1A524E2B4();
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    v30 = v19;
    v20 = v18;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1A59097F0](v20, v16);
      }

      else
      {
        if (v20 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v21 = *(v16 + 8 * v20 + 32);
      }

      v22 = v21;
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      sub_1A52430E4();
      v23 = v33;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v24 = PhotosModel.photokitObject.getter(v23);

      if (v24)
      {
        break;
      }

LABEL_8:
      __swift_destroy_boxed_opaque_existential_0(v32);
      ++v20;
      if (v18 == v17)
      {
        goto LABEL_25;
      }
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_8;
    }

    v25 = __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1A5907D70](v25);
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v19 = v34;
  }

  while (v18 != v17);
LABEL_25:

  v26 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  v27 = sub_1A524CA14();

  v28 = [v26 peopleFetchResultFromFastEnumeration:v27 photoLibrary:*(*v31 + 16)];

  return v28;
}

double sub_1A49ABDB0()
{
  v0 = sub_1A49AB9A0();
  v1 = [v0 count];
  type metadata accessor for LemonadePeopleHomeView(0);
  sub_1A49A6B00(0, &qword_1EB146A70, type metadata accessor for LemonadePeopleHomeView.SelectionState, MEMORY[0x1E697DA80]);
  v3 = v2;
  sub_1A5247C84();
  v4 = v26;
  swift_beginAccess();
  v5 = (v1 > 0) ^ *(v26 + 16);
  v20 = v0;
  v21 = v3;
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    v19[1] = v19;
    MEMORY[0x1EEE9AC00](KeyPath);
    v25 = v4;
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
    sub_1A52415C4();
  }

  else
  {
    *(v26 + 16) = v1 > 0;
  }

  sub_1A5247C84();
  v7 = v25;
  swift_beginAccess();
  if (((v1 > 0) ^ *(v7 + 17)))
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    v24 = v7;
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
    sub_1A52415C4();
  }

  else
  {
    *(v7 + 17) = v1 > 0;
  }

  v9 = v20;
  sub_1A5247C84();
  v10 = v24;
  v11 = [v9 fetchedObjects];
  if (v11)
  {
    sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
    v12 = sub_1A524CA34();

    if (v12 >> 62)
    {
      if (sub_1A524E2B4() >= 2)
      {
        goto LABEL_10;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_10:
      type metadata accessor for PeopleMergeUtilities(0, v13);
      LOBYTE(v11) = sub_1A3D76994(v12, v14);
      goto LABEL_15;
    }

    LOBYTE(v11) = 0;
LABEL_15:

    swift_beginAccess();
    if ((v11 & 1) != *(v10 + 18))
    {
      goto LABEL_16;
    }

LABEL_12:
    *(v10 + 18) = v11 & 1;

    goto LABEL_17;
  }

  swift_beginAccess();
  if ((*(v10 + 18) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v15 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v15);
  v23 = v10;
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
  sub_1A52415C4();

LABEL_17:
  sub_1A5247C84();
  v16 = v23;
  swift_beginAccess();
  if (((v1 > 1) ^ *(v16 + 19)))
  {
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    v22 = v16;
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
    sub_1A52415C4();
  }

  else
  {

    *(v16 + 19) = v1 > 1;
  }

  return result;
}

void sub_1A49AC3B8(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
    sub_1A52415C4();
  }
}

void sub_1A49AC4DC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
    sub_1A52415C4();
  }
}

void sub_1A49AC600(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
    sub_1A52415C4();
  }
}

void sub_1A49AC724(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 19) == v2)
  {
    *(v1 + 19) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
    sub_1A52415C4();
  }
}

void sub_1A49AC848(char a1, void *a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if (a2)
  {
    type metadata accessor for LemonadePeopleHomeView(0);
    v14 = a2;
    sub_1A49A6B00(0, &qword_1EB146A78, MEMORY[0x1E69E9420], MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v15 = a2;
    v16 = sub_1A5246F04();
    v17 = sub_1A524D244();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 67109378;
      *(v18 + 4) = a1 & 1;
      *(v18 + 8) = 2112;
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 10) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1A3C1C000, v16, v17, "People Home View: Error presenting the create new Social Group view with success: %{BOOL}d and error: %@", v18, 0x12u);
      sub_1A3CB65E4(v19);
      MEMORY[0x1A590EEC0](v19, -1, -1);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {
    }

    v10 = v13;
  }

  else
  {
    type metadata accessor for LemonadePeopleHomeView(0);
    sub_1A49A6B00(0, &qword_1EB146A78, MEMORY[0x1E69E9420], MEMORY[0x1E697DA80]);
    if (a1)
    {
      sub_1A5247C84();
      v22 = sub_1A5246F04();
      v23 = sub_1A524D224();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 4) = 1;
        _os_log_impl(&dword_1A3C1C000, v22, v23, "People Home View: Presented the create new Social Group view with success: %{BOOL}d", v24, 8u);
        MEMORY[0x1A590EEC0](v24, -1, -1);
      }

      v10 = v7;
    }

    else
    {
      sub_1A5247C84();
      v25 = sub_1A5246F04();
      v26 = sub_1A524D244();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 67109378;
        *(v27 + 8) = 2112;
        *(v27 + 10) = 0;
        *v28 = 0;
        _os_log_impl(&dword_1A3C1C000, v25, v26, "People Home View: Issue presenting the create new Social Group view with success: %{BOOL}d and error: %@", v27, 0x12u);
        sub_1A3CB65E4(v28);
        MEMORY[0x1A590EEC0](v28, -1, -1);
        MEMORY[0x1A590EEC0](v27, -1, -1);
      }
    }
  }

  (*(v5 + 8))(v10, v4);
  sub_1A49AA80C();
}

void sub_1A49ACC58(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void), uint64_t a8)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  PXPresentationEnvironmentForSender();
}

uint64_t sub_1A49ACFC0()
{
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 16);
}

void sub_1A49AD074(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1A49AD158()
{
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 17);
}

void sub_1A49AD20C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 17);
}

uint64_t sub_1A49AD2F0()
{
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 18);
}

void sub_1A49AD3A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 18);
}

uint64_t sub_1A49AD488()
{
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 19);
}

void sub_1A49AD53C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState, &unk_1A5378EA0);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 19);
}

uint64_t sub_1A49AD620()
{
  v1 = OBJC_IVAR____TtCV12PhotosUICore22LemonadePeopleHomeView14SelectionState___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A49AD6C0(void *a1)
{
  [a1 setPrefersTabBarVisible_];

  return [a1 setPrefersToolbarVisible_];
}

id sub_1A49AD710(void *a1)
{
  [a1 setPrefersTabBarVisible_];

  return [a1 setPrefersToolbarVisible_];
}

void sub_1A49AD794(uint64_t a1, double a2)
{
  if (!qword_1EB1468D8)
  {
    sub_1A49AD804(a2);
    sub_1A49AF1D8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1468D8);
    }
  }
}

void sub_1A49AD804(double a1)
{
  if (!qword_1EB1468E0)
  {
    sub_1A49ADAE0(a1);
    sub_1A49ADD88(255, v1);
    sub_1A3E7CAB0(255);
    sub_1A49ADFB4(255, v2);
    sub_1A49AEFD4(255, &qword_1EB1469E8, sub_1A49AF060, sub_1A49AF130, MEMORY[0x1E697C790]);
    sub_1A49AE120(255, v3);
    sub_1A49AE25C(255, v4);
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus, &unk_1A533A170);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AF060(255);
    sub_1A49AF130();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AEAC8(&qword_1EB12D5D8, sub_1A3E7CAB0, MEMORY[0x1E69C1CA8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1468E0);
    }
  }
}

void sub_1A49ADAE0(double a1)
{
  if (!qword_1EB1468E8)
  {
    sub_1A49ADD88(255, a1);
    sub_1A3E7CAB0(255);
    sub_1A49ADFB4(255, v1);
    sub_1A49AEFD4(255, &qword_1EB1469E8, sub_1A49AF060, sub_1A49AF130, MEMORY[0x1E697C790]);
    sub_1A49AE120(255, v2);
    sub_1A49AE25C(255, v3);
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus, &unk_1A533A170);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AF060(255);
    sub_1A49AF130();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AEAC8(&qword_1EB12D5D8, sub_1A3E7CAB0, MEMORY[0x1E69C1CA8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1468E8);
    }
  }
}

void sub_1A49ADD88(uint64_t a1, double a2)
{
  if (!qword_1EB1468F0)
  {
    sub_1A49ADFB4(255, a2);
    sub_1A49AEFD4(255, &qword_1EB1469E8, sub_1A49AF060, sub_1A49AF130, MEMORY[0x1E697C790]);
    sub_1A49AE120(255, v2);
    sub_1A49AE25C(255, v3);
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus, &unk_1A533A170);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AF060(255);
    sub_1A49AF130();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1468F0);
    }
  }
}

void sub_1A49ADFB4(uint64_t a1, double a2)
{
  if (!qword_1EB1468F8)
  {
    sub_1A49AE120(255, a2);
    sub_1A49AE25C(255, v2);
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus, &unk_1A533A170);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1468F8);
    }
  }
}

void sub_1A49AE120(uint64_t a1, double a2)
{
  if (!qword_1EB146900)
  {
    sub_1A49AE25C(255, a2);
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus, &unk_1A533A170);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146900);
    }
  }
}

void sub_1A49AE25C(uint64_t a1, double a2)
{
  if (!qword_1EB146908)
  {
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus, &unk_1A533A170);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146908);
    }
  }
}

void sub_1A49AE388(uint64_t a1)
{
  if (!qword_1EB146918)
  {
    sub_1A49AE444(255, &qword_1EB146920, sub_1A49AE414, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146918);
    }
  }
}

void sub_1A49AE444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A49B131C(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A49AE4DC(uint64_t a1, double a2)
{
  if (!qword_1EB146930)
  {
    sub_1A49AE57C(255);
    sub_1A49AECBC();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146930);
    }
  }
}

void sub_1A49AE5A4(uint64_t a1)
{
  if (!qword_1EB146940)
  {
    sub_1A49AE6B8(255);
    sub_1A49AEFD4(255, &qword_1EB146950, sub_1A49AE7AC, sub_1A49AEB10, MEMORY[0x1E69C30A8]);
    sub_1A49AE7AC(255);
    sub_1A49AEB10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5242CE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146940);
    }
  }
}

void sub_1A49AE6B8(uint64_t a1)
{
  if (!qword_1EB146948)
  {
    sub_1A49AEFD4(255, &qword_1EB146950, sub_1A49AE7AC, sub_1A49AEB10, MEMORY[0x1E69C30A8]);
    sub_1A49AE7AC(255);
    sub_1A49AEB10();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146948);
    }
  }
}

void sub_1A49AE804(uint64_t a1)
{
  if (!qword_1EB146968)
  {
    sub_1A49AE898(255);
    sub_1A49AEAC8(&qword_1EB146998, sub_1A49AE898, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146968);
    }
  }
}

void sub_1A49AE8CC(uint64_t a1)
{
  if (!qword_1EB146978)
  {
    sub_1A49AE98C(255);
    type metadata accessor for LemonadePeopleHomeGroupSection(255);
    type metadata accessor for LemonadePeopleHomePeopleSection(255);
    sub_1A49AEA74(255, &qword_1EB146990, MEMORY[0x1E6981840], MEMORY[0x1E6981838], MEMORY[0x1E6981860]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB146978);
    }
  }
}

void sub_1A49AE9C0(uint64_t a1)
{
  if (!qword_1EB146988)
  {
    type metadata accessor for PersonSuggestionBanner(255);
    sub_1A49AEAC8(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner, &unk_1A5311528);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146988);
    }
  }
}

void sub_1A49AEA74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A49AEAC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A49AEB10()
{
  result = qword_1EB1469A0;
  if (!qword_1EB1469A0)
  {
    sub_1A49AE7AC(255);
    sub_1A49AEBA8();
    sub_1A49AEC58(&qword_1EB122120, &qword_1EB122118, &type metadata for LemonadeFeedContentsTopPaddingKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469A0);
  }

  return result;
}

unint64_t sub_1A49AEBA8()
{
  result = qword_1EB1469A8;
  if (!qword_1EB1469A8)
  {
    sub_1A49AE7DC(255);
    sub_1A49AEAC8(&qword_1EB1469B0, sub_1A49AE804, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469A8);
  }

  return result;
}

uint64_t sub_1A49AEC58(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A49B131C(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49AECBC()
{
  result = qword_1EB1469B8;
  if (!qword_1EB1469B8)
  {
    sub_1A49AE57C(255);
    sub_1A49AEAC8(&qword_1EB1469C0, sub_1A49AE5A4, MEMORY[0x1E69C21D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469B8);
  }

  return result;
}

uint64_t sub_1A49AEDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49AEE24()
{
  result = qword_1EB1469D8;
  if (!qword_1EB1469D8)
  {
    v1 = MEMORY[0x1E69E6530];
    sub_1A49AE444(255, &qword_1EB146920, sub_1A49AE414, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
    sub_1A49AEEF0();
    sub_1A49AEC58(&qword_1EB1277C0, &unk_1EB1277B0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469D8);
  }

  return result;
}

unint64_t sub_1A49AEEF0()
{
  result = qword_1EB1469E0;
  if (!qword_1EB1469E0)
  {
    sub_1A49AE414(255);
    sub_1A49AE57C(255);
    sub_1A49AECBC();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A49AEC58(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469E0);
  }

  return result;
}

void sub_1A49AEFD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A49AF0C8(uint64_t a1)
{
  if (!qword_1EB146A00)
  {
    type metadata accessor for LemonadePeopleHomeNavigationBar(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146A00);
    }
  }
}

unint64_t sub_1A49AF130()
{
  result = qword_1EB146A08;
  if (!qword_1EB146A08)
  {
    sub_1A49AF060(255);
    sub_1A49AEAC8(&qword_1EB146A10, sub_1A49AF094, MEMORY[0x1E697C5E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146A08);
  }

  return result;
}

void sub_1A49AF200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A49AF264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A49AEA74(255, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49AF2F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A49A6D7C(255, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49AF454(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v3 <= 0x3F)
    {
      sub_1A49B131C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v4 <= 0x3F)
      {
        sub_1A49A6B00(319, &qword_1EB146A68, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E697DA80]);
        if (v5 <= 0x3F)
        {
          sub_1A49AF264(319, &qword_1EB13A288, MEMORY[0x1E697DA80]);
          if (v6 <= 0x3F)
          {
            sub_1A49A6B00(319, &qword_1EB146A70, type metadata accessor for LemonadePeopleHomeView.SelectionState, MEMORY[0x1E697DA80]);
            if (v7 <= 0x3F)
            {
              sub_1A49AF2F0(319, &qword_1EB1468C0, MEMORY[0x1E697DA80]);
              if (v8 <= 0x3F)
              {
                sub_1A49A6B00(319, &qword_1EB146A20, type metadata accessor for PhotoKitSocialGroupActionManager, MEMORY[0x1E697DA80]);
                if (v9 <= 0x3F)
                {
                  sub_1A49A6B00(319, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
                  if (v10 <= 0x3F)
                  {
                    sub_1A49A6B00(319, &qword_1EB146A78, MEMORY[0x1E69E9420], MEMORY[0x1E697DA80]);
                    if (v11 <= 0x3F)
                    {
                      sub_1A49A6B00(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                      if (v12 <= 0x3F)
                      {
                        sub_1A49A6B00(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
                        if (v13 <= 0x3F)
                        {
                          sub_1A49A6B00(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
                          if (v14 <= 0x3F)
                          {
                            sub_1A49A6B00(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
                            if (v15 <= 0x3F)
                            {
                              sub_1A49A6B00(319, &qword_1EB124868, MEMORY[0x1E69C2320], MEMORY[0x1E697DCC0]);
                              if (v16 <= 0x3F)
                              {
                                sub_1A49B131C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                                if (v17 <= 0x3F)
                                {
                                  sub_1A49A6B00(319, &qword_1EB124848, MEMORY[0x1E69C28E8], MEMORY[0x1E697DCC0]);
                                  if (v18 <= 0x3F)
                                  {
                                    sub_1A49B131C(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
                                    if (v19 <= 0x3F)
                                    {
                                      sub_1A49A6B00(319, &qword_1EB13A290, sub_1A440B51C, MEMORY[0x1E6981790]);
                                      if (v20 <= 0x3F)
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
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A49AF968(uint64_t a1)
{
  result = sub_1A5241614();
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

void sub_1A49AFA08(uint64_t a1)
{
  if (!qword_1EB146A88)
  {
    sub_1A49AD760(255);
    sub_1A49AEAC8(&qword_1EB146A90, sub_1A49AD760, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146A88);
    }
  }
}

uint64_t sub_1A49AFC04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49AFC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49AFCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadePeopleHomeView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + v7);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1A49A90F0(a1, (v2 + v6), v8, v9, a2);
}

uint64_t sub_1A49AFDAC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadePeopleHomeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A49AFE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_89Tm()
{
  v1 = type metadata accessor for LemonadePeopleHomeView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v0 + v2 + v1[8];
  v6 = MEMORY[0x1E6981E90];
  sub_1A49A6B00(0, &qword_1EB146A28, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981E90]);
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = MEMORY[0x1E6981E98];
  sub_1A49A6B00(0, &qword_1EB1271F0, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981E98]);

  v9 = v0 + v2 + v1[9];
  sub_1A49AF264(0, &qword_1EB13A2A0, MEMORY[0x1E6981E90]);
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_1A49AF264(0, &qword_1EB127298, MEMORY[0x1E6981E98]);

  v11 = v0 + v2 + v1[10];
  sub_1A49A6B00(0, &qword_1EB146A30, type metadata accessor for LemonadePeopleHomeView.SelectionState, v6);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A49A6B00(0, &qword_1EB146A38, type metadata accessor for LemonadePeopleHomeView.SelectionState, v8);

  v13 = v0 + v2 + v1[11];
  sub_1A49AF2F0(0, &qword_1EB146A40, MEMORY[0x1E6981E90]);
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1A49AF2F0(0, &qword_1EB127250, MEMORY[0x1E6981E98]);

  v15 = v0 + v2 + v1[12];
  sub_1A49A6B00(0, &qword_1EB146A48, type metadata accessor for PhotoKitSocialGroupActionManager, v6);
  (*(*(v16 - 8) + 8))(v15, v16);
  sub_1A49A6B00(0, &qword_1EB127200, type metadata accessor for PhotoKitSocialGroupActionManager, v8);

  v17 = v0 + v2 + v1[13];
  sub_1A49A6B00(0, &qword_1EB121428, type metadata accessor for LemonadePeopleProgressStatus, v6);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A49A6B00(0, &qword_1EB127238, type metadata accessor for LemonadePeopleProgressStatus, v8);

  v19 = v0 + v2 + v1[14];
  v20 = MEMORY[0x1E69E9420];
  sub_1A49A6B00(0, &qword_1EB146A50, MEMORY[0x1E69E9420], v6);
  (*(*(v21 - 8) + 8))(v19, v21);
  sub_1A49A6B00(0, &qword_1EB146A58, v20, v8);

  v22 = v1[15];
  sub_1A49A6B00(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1A5242D14();
    (*(*(v23 - 8) + 8))(v4 + v22, v23);
  }

  else
  {
  }

  v24 = v1[16];
  sub_1A49A6B00(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A49A6D7C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v26 = v25;
    v27 = *(v25 - 8);
    if (!(*(v27 + 48))(v4 + v24, 1, v25))
    {
      (*(v27 + 8))(v4 + v24, v26);
    }
  }

  else
  {
  }

  v28 = v1[17];
  sub_1A49A6B00(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_1A5244084();
    (*(*(v29 - 8) + 8))(v4 + v28, v29);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v4 + v1[20]), *(v4 + v1[20] + 8));

  v30 = v4 + v1[22];
  sub_1A3F1D444(*v30, *(v30 + 8), *(v30 + 16), *(v30 + 24), *(v30 + 32));

  return swift_deallocObject();
}

double sub_1A49B05E4(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for LemonadePeopleHomeView(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  v8 = *(v2 + v7);
  v9 = v2 + v6;
  v10 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = *a1;
  v12 = *a2;
  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v13 forceHideProcessingUI])
  {

LABEL_3:
    v20 = *(v9 + *(v5 + 92));
    v19[0] = 0;
    goto LABEL_9;
  }

  if (sub_1A3F541D4())
  {

    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [v13 forceShowProcessingUI];

    if (v8 & 1 | ((v14 & 1) == 0))
    {
      goto LABEL_3;
    }
  }

  LOBYTE(v19[0]) = 1;
  sub_1A3F5CDFC(v19, v10, &v20);
  LOBYTE(v19[0]) = v20;
  v19[1] = *(&v20 + 1);
  sub_1A440B550(0);
  v16 = objc_allocWithZone(v15);
  v17 = sub_1A52485F4();
  v20 = *(v9 + *(v5 + 92));
  v19[0] = v17;
LABEL_9:
  sub_1A49A6B00(0, &qword_1EB13A290, sub_1A440B51C, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  if (v11 != v12)
  {
    return sub_1A49AA37C();
  }

  return result;
}

uint64_t sub_1A49B084C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49B08D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A49B093C()
{
  v1 = *(type metadata accessor for LemonadePeopleHomeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  LOBYTE(aBlock) = v3;
  v10 = v4;
  sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v15 == 1)
  {
    sub_1A49AA80C();
  }

  else
  {
    LOBYTE(aBlock) = v3;
    v10 = v4;
    v15 = 1;
    sub_1A524B6B4();
    v5 = sub_1A49A67B8();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 px_barAppearance];
      v13 = sub_1A49AD6C0;
      v14 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = sub_1A421179C;
      v12 = &block_descriptor_126_0;
      v8 = _Block_copy(&aBlock);
      [v7 performChangesWithAnimationOptions:0 changes:v8];

      _Block_release(v8);
    }
  }
}

uint64_t objectdestroy_40Tm_0()
{
  v1 = type metadata accessor for LemonadePeopleHomeView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[8];
  v4 = MEMORY[0x1E6981E90];
  sub_1A49A6B00(0, &qword_1EB146A28, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981E90]);
  (*(*(v5 - 8) + 8))(v3, v5);
  v6 = MEMORY[0x1E6981E98];
  sub_1A49A6B00(0, &qword_1EB1271F0, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981E98]);

  v7 = v2 + v1[9];
  sub_1A49AF264(0, &qword_1EB13A2A0, MEMORY[0x1E6981E90]);
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1A49AF264(0, &qword_1EB127298, MEMORY[0x1E6981E98]);

  v9 = v2 + v1[10];
  sub_1A49A6B00(0, &qword_1EB146A30, type metadata accessor for LemonadePeopleHomeView.SelectionState, v4);
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_1A49A6B00(0, &qword_1EB146A38, type metadata accessor for LemonadePeopleHomeView.SelectionState, v6);

  v11 = v2 + v1[11];
  sub_1A49AF2F0(0, &qword_1EB146A40, MEMORY[0x1E6981E90]);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A49AF2F0(0, &qword_1EB127250, MEMORY[0x1E6981E98]);

  v13 = v2 + v1[12];
  sub_1A49A6B00(0, &qword_1EB146A48, type metadata accessor for PhotoKitSocialGroupActionManager, v4);
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1A49A6B00(0, &qword_1EB127200, type metadata accessor for PhotoKitSocialGroupActionManager, v6);

  v15 = v2 + v1[13];
  sub_1A49A6B00(0, &qword_1EB121428, type metadata accessor for LemonadePeopleProgressStatus, v4);
  (*(*(v16 - 8) + 8))(v15, v16);
  sub_1A49A6B00(0, &qword_1EB127238, type metadata accessor for LemonadePeopleProgressStatus, v6);

  v17 = v2 + v1[14];
  v18 = MEMORY[0x1E69E9420];
  sub_1A49A6B00(0, &qword_1EB146A50, MEMORY[0x1E69E9420], v4);
  (*(*(v19 - 8) + 8))(v17, v19);
  sub_1A49A6B00(0, &qword_1EB146A58, v18, v6);

  v20 = v1[15];
  sub_1A49A6B00(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1A5242D14();
    (*(*(v21 - 8) + 8))(v2 + v20, v21);
  }

  else
  {
  }

  v22 = v1[16];
  sub_1A49A6B00(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A49A6D7C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v24 = v23;
    v25 = *(v23 - 8);
    if (!(*(v25 + 48))(v2 + v22, 1, v23))
    {
      (*(v25 + 8))(v2 + v22, v24);
    }
  }

  else
  {
  }

  v26 = v1[17];
  sub_1A49A6B00(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_1A5244084();
    (*(*(v27 - 8) + 8))(v2 + v26, v27);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[20]), *(v2 + v1[20] + 8));

  v28 = v2 + v1[22];
  sub_1A3F1D444(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32));

  return swift_deallocObject();
}

void sub_1A49B131C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A49B136C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A49B13D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A49A6B00(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_1A49B14C0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v17 = sub_1A49B3478(a1, a2, a3 & 1, a4 & 1, a5, a6, a7);
  (*(*(*(v8 + 11) - 8) + 8))(a2);
  (*(*(*(v8 + 10) - 8) + 8))(a1);
  return v17;
}

void sub_1A49B15B4(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - v7;
  v11 = *((v10 & v9) + 0x68);
  v12 = *(v11 + 8);
  v13 = v12(v4, v11, v6);
  v14 = *((*v3 & *v1) + 0x78);
  swift_beginAccess();
  (*(v5 + 16))(v8, &v2[v14], v4);
  v15 = (v12)(v4, v11);
  (*(v5 + 8))(v8, v4);
  v16 = v13;
  v17 = v15;
  if (v13 == v15)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  if (v13)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {

    swift_unknownObjectRelease();
    v19 = swift_unknownObjectRelease();
LABEL_12:
    sub_1A49B1F2C(v19);
    sub_1A49B1E80(*&v2[*((*v3 & *v2) + 0xB0)] + 1);
    return;
  }

  v20 = [v16 isContentEqualTo:v17];
  v21 = v20;
  if (!v20)
  {
    v21 = [v17 isContentEqualTo:v16];
  }

  swift_unknownObjectRelease();
  v19 = swift_unknownObjectRelease();
  if (v21 != 2)
  {
    goto LABEL_12;
  }
}

uint64_t sub_1A49B1814@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x58) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_1A49B18C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  sub_1A49B3798(a1);
  v5 = *(*(*((v4 & v3) + 0x58) - 8) + 8);

  return v5(a1);
}

void (*sub_1A49B1950(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[3] = v1;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[5] = v9;
  v11 = *(v9 + 64);
  if (v3)
  {
    v4[6] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
    v7 = *v6;
  }

  else
  {
    v4[6] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v5[7] = v12;
  v13 = *((v7 & *v1) + 0x78);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v5[8] = v14;
  v5[9] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v12, &v1[v13], v8);
  return sub_1A49B1AE0;
}

void sub_1A49B1AE0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_1A49B3798(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_1A49B3798(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

double sub_1A49B1BBC(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98)) = a1;
  swift_unknownObjectRelease();
  return result;
}

void sub_1A49B1C1C(char a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != *(v1 + *((*v2 & *v1) + 0xA0)))
  {
    v6 = [v1 createAnimation];
    [v6 setDuration_];
    [v6 setCurve_];
    [v6 setScope_];
    v5 = sub_1A49B1D34();
    [v5 setNeedsUpdateOf_];
  }
}

id sub_1A49B1D34()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0xA8);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v13 = v0;
    v5 = objc_allocWithZone(off_1E7721940);
    v6 = v0;
    v7 = *(v1 + 96);
    v12[0] = *(v1 + 80);
    v12[1] = v7;
    type metadata accessor for HighlightsItemLayout(0, v12);
    v8 = [v5 initWithTarget:sub_1A524EA94() needsUpdateSelector:sel_setNeedsUpdate];

    swift_unknownObjectRelease();
    v9 = *(v0 + v2);
    *(v0 + v2) = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

void sub_1A49B1E80(__int16 a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (*(v1 + *((*v2 & *v1) + 0xB0)) != v4)
  {
    v5 = sub_1A49B1D34();
    [v5 setNeedsUpdateOf_];
  }
}

double sub_1A49B1F2C(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x58);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - v8;
  (*(v4 + 192))(v7);
  v10 = (*(*(v4 + 104) + 8))(v5);
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    sub_1A3C37560(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F9790;
    *(v11 + 32) = v10;
    sub_1A3D435C4();
    swift_unknownObjectRetain_n();
    sub_1A524CA14();

    PXDisplayAssetFetchResultFromArray();
  }

  *(v2 + *((*v3 & *v2) + 0x98)) = 0;
  swift_unknownObjectRelease();
  return result;
}

void sub_1A49B2144()
{
  v0 = sub_1A49B1D34();
  [v0 setNeedsUpdateOf_];
}

void sub_1A49B2190()
{
  [v0 referenceSize];
  [v0 setContentSize_];
  [v0 contentSize];
  sub_1A524D9A4();
}

id sub_1A49B22A0()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = sub_1A49B1D34();
  [v2 updateIfNeeded];

  v3 = *(v1 + 96);
  v6[0] = *(v1 + 80);
  v6[1] = v3;
  v4 = type metadata accessor for HighlightsItemLayout(0, v6);
  v7.receiver = v0;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_updateIfNeeded);
}

void sub_1A49B2340(void *a1)
{
  v1 = a1;
  sub_1A49B22A0();
}

void sub_1A49B2388(void *a1)
{
  v1 = a1;
  sub_1A49B23DC(&selRef_displayScaleDidChange);
}

void sub_1A49B23DC(SEL *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v6[0] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6[1] = v3;
  v4 = type metadata accessor for HighlightsItemLayout(0, v6);
  v7.receiver = v1;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, *a1);
  v5 = sub_1A49B1D34();
  [v5 setNeedsUpdateOf_];
}

void sub_1A49B247C(void *a1)
{
  v1 = a1;
  sub_1A49B23DC(&selRef_referenceSizeDidChange);
}

uint64_t sub_1A49B24D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, &v1[v2], v3);
}

id sub_1A49B2574()
{
  sub_1A49B24D0(v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1A524EA94();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1A49B26A8(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  if ([v1 objectReferenceForSpriteIndex_])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v34[0] = v31;
  v34[1] = v32;
  sub_1A3EBECA4(v34, &v31);
  v5 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1A524EA94();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  else
  {
    v11 = 0;
  }

  v27 = [v1 spriteReferenceForSpriteIndex:a1 objectReference:v11];
  swift_unknownObjectRelease();
  type metadata accessor for HighlightsHitTestResult();
  v12 = *(v1 + *((*v3 & *v1) + 0x80));
  v13 = *((*v3 & *v1) + 0x70);
  v15 = v4[12];
  *(&v32 + 1) = v4[10];
  v14 = *(&v32 + 1);
  v33 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v1 + v13, v14);
  v17 = *((*v3 & *v1) + 0xC0);
  v19 = v4[13];
  v29 = v4[11];
  v18 = v29;
  v30 = v19;
  __swift_allocate_boxed_opaque_existential_1(v28);
  v17();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *&v22 = v14;
  *(&v22 + 1) = v18;
  *&v23 = v15;
  *(&v23 + 1) = v19;
  *(v21 + 16) = v22;
  *(v21 + 32) = v23;
  *(v21 + 48) = v20;

  v24 = v1;
  v25 = sub_1A46B6308(v12, &v31, v28, v27, v1, sub_1A49B3918, v21);
  sub_1A3C35B00(v34);

  return v25;
}

id sub_1A49B29FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = sub_1A49B26A8(a3);

  return v5;
}

void (*sub_1A49B2A48())()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  sub_1A49B1C1C(1);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *((v2 & v1) + 0x50);
  *(v5 + 24) = *(v3 + 88);
  *(v5 + 40) = *((v2 & v1) + 0x68);
  *(v5 + 48) = v4;
  return sub_1A49B3E34;
}

uint64_t sub_1A49B2B3C(uint64_t a1)
{
  v17 = a1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v16[1] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16[2] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  sub_1A3C2F0BC(v17, v18);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v2);
    (*(v9 + 32))(v12, v8, v2);
    sub_1A5246224();
  }

  v14(v8, 1, 1, v2);
  (*(v6 + 8))(v8, v5);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1A49B2ED8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v5 = sub_1A49B2B3C(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

id sub_1A49B2F44()
{
  v0 = [objc_opt_self() grayColor];

  return v0;
}

id sub_1A49B2F8C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a1;
  sub_1A49B3990(v6);

  v7 = sub_1A524C634();

  return v7;
}

double sub_1A49B30B0()
{
  sub_1A49B3CD8();

  swift_unknownObjectRetain();
  return result;
}

id sub_1A49B30D8()
{
  sub_1A49B3CD8();
  v0 = swift_unknownObjectRetain();

  return v0;
}

id sub_1A49B3118(void *a1)
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_1A49B3204(v6);

  v7 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v7;
}

id sub_1A49B3270()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for HighlightsItemLayout(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_1A49B32E8(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x70)]);
  (*(*(*((v4 & v3) + 0x58) - 8) + 8))(&a1[*((*v2 & *a1) + 0x78)]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = *&a1[*((*v2 & *a1) + 0xA8)];
}

id sub_1A49B3478(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v11 = *v8;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40] & *v8;
  *(v8 + *((v13 & v11) + 0x98)) = 0;
  *(v8 + *((*v12 & *v8) + 0xA0)) = 0;
  *(v8 + *((*v12 & *v8) + 0xA8)) = 0;
  *(v8 + *((*v12 & *v8) + 0xB0)) = 0;
  v15 = a3 & 1;
  v16 = a4 & 1;
  v17 = *((v13 & v11) + 0x50);
  (*(*(v17 - 8) + 16))(v8 + *((*v12 & *v8) + 0x70), a1, v17);
  v18 = *((v13 & v11) + 0x58);
  (*(*(v18 - 8) + 16))(v8 + *((*v12 & *v8) + 0x78), a2, v18);
  *(v8 + *((*v12 & *v8) + 0x80)) = v15;
  v19 = *((v13 & v11) + 0x68);
  *(v8 + *((*v12 & *v8) + 0x90)) = (*(v19 + 8))(v18, v19);
  v20 = v8 + *((*v12 & *v8) + 0x88);
  *v20 = v16;
  *(v20 + 1) = a5;
  *(v20 + 2) = a6;
  *(v20 + 3) = a7;
  *&v21 = *(v14 + 96);
  *&v22 = v17;
  *(&v22 + 1) = v18;
  *(&v21 + 1) = v19;
  v29[0] = v22;
  v29[1] = v21;
  v23 = type metadata accessor for HighlightsItemLayout(0, v29);
  v30.receiver = v8;
  v30.super_class = v23;
  v24 = objc_msgSendSuper2(&v30, sel_init);
  v25 = sub_1A49B1D34();
  [v25 addUpdateSelector:sel_updateContent needsUpdate:1];

  [v24 setContentSource_];
  sub_1A49B1F2C([v24 addSpriteCount:2 withInitialState:0]);

  return v24;
}

uint64_t sub_1A49B3798(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11[-v5];
  v9 = *((v8 & v7) + 0x78);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v1[v9], v3);
  swift_beginAccess();
  (*(v4 + 24))(&v1[v9], a1, v3);
  swift_endAccess();
  sub_1A49B15B4(v6);
  return (*(v4 + 8))(v6, v3);
}

void (*sub_1A49B3918())()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1A49B2A48();

    return sub_1A49B3E34;
  }

  return result;
}

uint64_t sub_1A49B3990(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + 0x58);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - v7;
  (*(v3 + 192))(v6);
  v9 = (*(*(v3 + 104) + 16))(*(v1 + *((*v2 & *v1) + 0x80)), v4);
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    return v9;
  }

  else
  {
    return 4271950;
  }
}

void sub_1A49B3B00()
{
  sub_1A49B418C(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = v1;
  PXSystemFontOfSizeAndWeight();
}

uint64_t sub_1A49B3D34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1A49B3E34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A49B1C1C(0);
  }
}

uint64_t sub_1A49B3E8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v0 + 6);
  Sprite.init(rect:mediaKind:)(2, &v29, v1, v2, v3, v4);
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v6 = MEMORY[0x1E69E7D40];
  SpriteConfiguration.mediaVersion(_:)(*(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xB0)), &type metadata for Sprite, &protocol witness table for Sprite, v33);

  v7 = v34;
  v8 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  (*(v8 + 16))(&v29, v7, v8, 2.0);
  v9 = *(&v30 + 1);
  v10 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
  LOBYTE(v5) = *(v5 + *((*v6 & *v5) + 0x88));
  v11 = sub_1A48F1CA4(v5);
  (*(v10 + 144))(&v25, v9, v10, v11);
  v12 = static SpriteBuilder.buildExpression(_:)(&v25);
  __swift_destroy_boxed_opaque_existential_0(&v25);
  __swift_destroy_boxed_opaque_existential_0(&v29);
  __swift_destroy_boxed_opaque_existential_0(v33);
  v13 = sub_1A48F1CA4(v5);
  v14 = sub_1A48F1CA4(v5);
  v36.origin.x = v1;
  v36.origin.y = v2;
  v36.size.width = v3;
  v36.size.height = v4;
  v37 = CGRectInset(v36, v13, v14);
  Sprite.init(rect:mediaKind:)(3, &v29, v37.origin.x, v37.origin.y, v37.size.width, v37.size.height);
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  SpriteConfiguration.zPosition(_:)(&type metadata for Sprite, &protocol witness table for Sprite, 3.0);

  v15 = static SpriteBuilder.buildExpression(_:)(v33);
  __swift_destroy_boxed_opaque_existential_0(v33);
  sub_1A49B418C(0, &qword_1EB138D80, sub_1A42A59CC, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A52FC9F0;
  *(v16 + 32) = v12;
  *(v16 + 40) = v15;
  v23 = static SpriteBuilder.buildBlock(_:)(v16, v17, v18, v19, v20, v21, v22);

  return v23;
}

void sub_1A49B418C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1A49B42F0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1A49B4350@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49B43AC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1A49B4410(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPlacesMapOptionsController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A49B44F8()
{
  v1 = [*(v0 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController) mapStyle];

  return sub_1A49B5C34(v1);
}

uint64_t sub_1A49B4568()
{
  if (![*(v0 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController) supportsPerspectiveToggling])
  {
    return 0;
  }

  v1 = [*(v0 + OBJC_IVAR___PXPlacesMapOptionsController_mapFetchResultController) mapView];
  [v1 _zoomLevel];
  v3 = v2;
  v4 = [v1 _canEnter3DMode];
  v5 = [v1 _isPitched];
  v6 = [v1 _isShowingCuratedElevatedGround];

  v7 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
  v8 = PXMapOptionsMapStyle.usesImagery.getter(v7);

  if (v5)
  {
    return 1;
  }

  if (v4 && (v3 >= 16.0 ? (v10 = v6) : (v10 = 0), ((v10 | v8) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A49B46E8()
{
  v1 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1A49B47E0(char a1)
{
  v3 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v4);
  if (v5)
  {
    [v5 mapOptionsControllerDidInvalidateMapOptions_];
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A49B4884@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

double sub_1A49B48E4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  v5 = swift_beginAccess();
  *(v3 + v4) = v2;
  v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))(v5);
  if (v6)
  {
    [v6 mapOptionsControllerDidInvalidateMapOptions_];
    swift_unknownObjectRelease();
  }

  return result;
}

void PlacesMapOptionsController.init(mapModeController:mapFetchResultController:locationAuthorizationMonitor:)(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton] = 0;
  *&v3[OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController] = 0;
  v7 = &v3[OBJC_IVAR___PXPlacesMapOptionsController_locationAuthorizationMonitorObservation];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR___PXPlacesMapOptionsController_mapViewObservation];
  *v8 = 0;
  v8[1] = 0;
  *&v3[OBJC_IVAR___PXPlacesMapOptionsController_mapModeController] = a1;
  *&v3[OBJC_IVAR___PXPlacesMapOptionsController_mapFetchResultController] = a2;
  *&v3[OBJC_IVAR___PXPlacesMapOptionsController_locationAuthorizationMonitor] = a3;
  v25.receiver = v3;
  v25.super_class = type metadata accessor for PlacesMapOptionsController();
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = objc_msgSendSuper2(&v25, sel_init);
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x68);
  v15 = v12;
  v16 = v14();
  v17 = (v16 < 5) & (0x19u >> v16);
  v18 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  v19 = swift_beginAccess();
  *(v15 + v18) = v17;
  v20 = (*((*v13 & *v15) + 0x90))(v19);
  if (v20)
  {
    [v20 mapOptionsControllerDidInvalidateMapOptions_];
    swift_unknownObjectRelease();
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v11;
  type metadata accessor for PlacesLocationAuthorizationMonitor(0);
  sub_1A49B68C0(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor, &protocol conformance descriptor for PlacesLocationAuthorizationMonitor);
  v23 = v11;
  v24 = v15;
  sub_1A5245C54();
}

id PlacesMapOptionsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlacesMapOptionsController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlacesMapOptionsController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void PlacesMapOptionsController.mapOptionsViewDidTapMapModeSettingsButton(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapOptionsChooseMapSheetController(0, v8);
  v9 = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  [v9 setModalPresentationStyle_];
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x90);
  v12 = swift_unknownObjectRetain();
  v11(v12);
  v13 = *((*v10 & *v9) + 0x78);
  v14 = swift_unknownObjectRetain();
  v13(v14, &off_1F1731688);
  v15 = sub_1A49B5C34([*(v2 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController) mapStyle]);
  (*((*v10 & *v9) + 0xA8))(v15);
  v16 = *(v2 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController);
  *(v2 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController) = v9;
  v17 = v9;

  v18 = [a1 window];
  v19 = [v18 rootViewController];

  v20 = v19;
  v21 = sub_1A3CB8D34();
  (*(v5 + 16))(v7, v21, v4);
  if (v20)
  {

    (*(v5 + 8))(v7, v4);
    [v20 px:v17 presentOverTopmostPresentedViewController:1 animated:0 completion:?];
  }

  else
  {
    v22 = sub_1A5246F04();
    v23 = sub_1A524D244();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v24 = 136315138;
      sub_1A3C2EF94(0xD000000000000045, 0x80000001A53F5F40, &v26);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t PlacesMapOptionsController.mapOptionsViewDidTapPerspectiveButton(_:)()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController) toggle3DModeIfPossible];
  if ((result & 1) == 0)
  {
    v7 = sub_1A3CB8D34();
    (*(v2 + 16))(v5, v7, v1);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v10 = 136315138;
      sub_1A3C2EF94(0xD000000000000046, 0x80000001A53F5F90, &v12);
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

id PlacesMapOptionsController.chooseMapViewDidTapCardForMapStyle(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController);
  v3 = sub_1A49B6188(a1);

  return [v2 setMapStyle_];
}

void sub_1A49B56B4(void *a1, uint64_t a2)
{
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    v13 = sub_1A3CB8D34();
    (*(v9 + 16))(v11, v13, v8);
    (*(v5 + 16))(v7, a2, v4);
    v14 = a1;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = v8;
      v18 = v17;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v18 = 136315394;
      sub_1A49B68C0(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v22[3] = v16;
      v19 = sub_1A524EA44();
      v21 = v20;
      (*(v5 + 8))(v7, v4);
      sub_1A3C2EF94(v19, v21, &v26);
    }

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

double sub_1A49B5A28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1A524C3E4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);

  return result;
}

void PlacesMapOptionsController.mapSheetControllerDidTapDismiss(_:)(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController);
  *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController) = 0;
}

void sub_1A49B5BEC(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController);
  *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController) = 0;
}

uint64_t sub_1A49B5C34(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 2)
    {
      return 1;
    }

    else
    {
      sub_1A49B6908();
      v6 = swift_allocError();
      *v7 = a1;
      *(v7 + 8) = 0;
      swift_willThrow();
      v8 = sub_1A3CB8D34();
      (*(v3 + 16))(v5, v8, v2);
      v9 = v6;
      v10 = sub_1A5246F04();
      v11 = sub_1A524D244();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        v14 = v6;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_1A3C1C000, v10, v11, "Attempting to convert from unsupported enum case, this should not happen. Falling back to Standard: %@", v12, 0xCu);
        sub_1A3CB65E4(v13);
        MEMORY[0x1A590EEC0](v13, -1, -1);
        MEMORY[0x1A590EEC0](v12, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return a1;
}

void sub_1A49B5E74(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  sub_1A46A3474();
  v12 = v3;
  sub_1A46A4194();
  if (sub_1A524E114())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = MEMORY[0x1E69E7D40];
      v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))(Strong);
      v8 = (v7 < 5) & (0x19u >> v7);
      v9 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
      v10 = swift_beginAccess();
      *(v5 + v9) = v8;
      v11 = (*((*v6 & *v5) + 0x90))(v10);
      if (v11)
      {
        [v11 mapOptionsControllerDidInvalidateMapOptions_];
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1A49B5FBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PXPlacesMapViewChanged(0);
    sub_1A49B68C0(&qword_1EB120800, type metadata accessor for PXPlacesMapViewChanged, &unk_1A5379260);
    sub_1A524EE54();
  }
}

uint64_t sub_1A49B6188(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      return 2;
    }

    else
    {
      sub_1A49B6908();
      v6 = swift_allocError();
      *v7 = a1;
      *(v7 + 8) = 1;
      swift_willThrow();
      v8 = sub_1A3CB8D34();
      (*(v3 + 16))(v5, v8, v2);
      v9 = v6;
      v10 = sub_1A5246F04();
      v11 = sub_1A524D244();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        v14 = v6;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_1A3C1C000, v10, v11, "Attempting to convert from unsupported enum case, this should not happen. Falling back to Standard: %@", v12, 0xCu);
        sub_1A3CB65E4(v13);
        MEMORY[0x1A590EEC0](v13, -1, -1);
        MEMORY[0x1A590EEC0](v12, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return a1;
}

void _s12PhotosUICore26PlacesMapOptionsControllerC06chooseD28ViewDidTapAttributionWithURLyy10Foundation0M0VF_0(uint64_t a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A5240D44();
    (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    aBlock[4] = sub_1A49B6850;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A49B5A28;
    aBlock[3] = &block_descriptor_317;
    v10 = _Block_copy(aBlock);

    [v6 openURL:v7 configuration:0 completionHandler:v10];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A49B6850(uint64_t a1, void *a2)
{
  v4 = *(sub_1A5240E64() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1A49B56B4(a2, v5);
}

uint64_t sub_1A49B68C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A49B6908()
{
  result = qword_1EB146B50;
  if (!qword_1EB146B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146B50);
  }

  return result;
}

void sub_1A49B6984(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A49B6B04()
{
  if (*v0 == 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return sub_1A3C38BD4(v2);
  }

  else
  {
    return sub_1A3C38BD4(v1);
  }
}

uint64_t type metadata accessor for LemonadeAlbumsView(uint64_t a1)
{
  result = qword_1EB189E00;
  if (!qword_1EB189E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A49B6BC0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LemonadeAlbumsView(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_1A3F88738(0);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v8[6];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v10[32] = 0;
  v11 = v8[7];
  *(a4 + v11) = swift_getKeyPath();
  sub_1A3F88AE4(0);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v8[13];
  sub_1A524B694();
  *(a4 + v8[9]) = a1;
  *(a4 + v8[8]) = a2;
  type metadata accessor for SharedAlbumsAvailabilityObserver(0);
  swift_retain_n();

  sub_1A5247C74();
  type metadata accessor for MacSyncedAlbumsAvailabilityObserver(0);

  sub_1A5247C74();
  sub_1A3C52C70(0, &qword_1EB120A70, 0x1E6978760);

  sub_1A5247C74();

  *v12 = a3;
  *(v12 + 1) = 0;
}

uint64_t sub_1A49B6E3C@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  a1(0);
  result = a2(*(v3 + 16));
  *a3 = result;
  return result;
}

id sub_1A49B6E90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A49BFDA8(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1A49B6EBC@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = sub_1A52440D4();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A5249284();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeAlbumsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A49B763C(0);
  v9 = v8;
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B85B0(0);
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B8680(0);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B8780();
  sub_1A49C03C4(v1, &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeAlbumsView);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1A49B942C(&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for LemonadeAlbumsView);
  sub_1A524A044();
  sub_1A49B76A0(0);
  sub_1A49B837C();
  sub_1A5242CF4();
  LOBYTE(v64) = *(*(v1 + *(v5 + 32)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  LOBYTE(v60) = 3;
  if (static LemonadePresentationContext.== infix(_:_:)(&v64, &v60))
  {
    v19 = v1 + *(v5 + 52);
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v64) = v20;
    v65 = v21;
    sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
  }

  v22 = sub_1A524C634();
  v23 = PXLemonadeLocalizedString(v22);

  v24 = sub_1A524C674();
  v26 = v25;

  v64 = v24;
  v65 = v26;
  v27 = sub_1A49C042C(&qword_1EB146C20, sub_1A49B763C, MEMORY[0x1E69C21D8]);
  v28 = sub_1A3D5F9DC();
  v29 = MEMORY[0x1E69E6158];
  sub_1A524ABB4();

  (*(v47 + 8))(v11, v9);
  v31 = v50;
  v30 = v51;
  v32 = v53;
  (*(v51 + 104))(v50, *MEMORY[0x1E697C438], v53);
  v64 = v9;
  v65 = v29;
  v66 = v27;
  v67 = v28;
  swift_getOpaqueTypeConformance2();
  v33 = v52;
  v34 = v49;
  sub_1A524AF34();
  (*(v30 + 8))(v31, v32);
  (*(v48 + 8))(v14, v34);
  KeyPath = swift_getKeyPath();
  v36 = *(**sub_1A44E6630() + 160);

  v36(&v63, v37);

  v62 = v63;
  v61 = 0;
  sub_1A424D8DC();
  sub_1A524C9C4();
  sub_1A524C9C4();
  v39 = v56;
  v38 = v57;
  if (v64 == v60)
  {
    v40 = MEMORY[0x1E69C2980];
  }

  else
  {
    v40 = MEMORY[0x1E69C2990];
  }

  v41 = v58;
  (*(v57 + 104))(v56, *v40, v58);
  sub_1A49C02DC(0, &qword_1EB146C48, sub_1A49B8680, sub_1A45C999C, MEMORY[0x1E697E830]);
  v43 = v59;
  v44 = (v59 + *(v42 + 36));
  sub_1A45C999C(0);
  (*(v38 + 32))(v44 + *(v45 + 28), v39, v41);
  *v44 = KeyPath;
  return (*(v54 + 32))(v43, v33, v55);
}

void sub_1A49B763C(uint64_t a1)
{
  if (!qword_1EB146B58)
  {
    sub_1A49B76A0(255);
    sub_1A49B837C();
    v1 = sub_1A5242CE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146B58);
    }
  }
}

void sub_1A49B76A0(uint64_t a1)
{
  if (!qword_1EB146B60)
  {
    sub_1A49B772C(255);
    sub_1A49BF2A0(255, &qword_1EB122118, &type metadata for LemonadeFeedContentsTopPaddingKind, MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146B60);
    }
  }
}

void sub_1A49B772C(uint64_t a1)
{
  if (!qword_1EB146B68)
  {
    sub_1A49B78B8(255);
    sub_1A49B8124(255);
    sub_1A49B79F4(255);
    sub_1A49B7B00(255);
    sub_1A49B7BD4(255);
    sub_1A49B7C6C(255);
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49B8254();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B68);
    }
  }
}

void sub_1A49B78B8(uint64_t a1)
{
  if (!qword_1EB146B70)
  {
    sub_1A49B79F4(255);
    sub_1A49B7B00(255);
    sub_1A49B7BD4(255);
    sub_1A49B7C6C(255);
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B70);
    }
  }
}

void sub_1A49B79F4(uint64_t a1)
{
  if (!qword_1EB146B78)
  {
    sub_1A49B7B00(255);
    sub_1A49B7BD4(255);
    sub_1A49B7C6C(255);
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B78);
    }
  }
}

void sub_1A49B7B00(uint64_t a1)
{
  if (!qword_1EB146B80)
  {
    sub_1A49B7BD4(255);
    sub_1A49B7C6C(255);
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B80);
    }
  }
}

void sub_1A49B7BD4(uint64_t a1)
{
  if (!qword_1EB146B88)
  {
    sub_1A49B7C6C(255);
    sub_1A49B7E2C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B88);
    }
  }
}

void sub_1A49B7C6C(uint64_t a1)
{
  if (!qword_1EB146B90)
  {
    sub_1A49C02DC(255, &qword_1EB146B98, sub_1A49B7D08, sub_1A49B7DE4, MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146B90);
    }
  }
}

void sub_1A49B7D50(uint64_t a1)
{
  if (!qword_1EB146BA8)
  {
    v2 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(255);
    v3 = sub_1A49C042C(&qword_1EB1297C8, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider, &unk_1A53371C0);
    v5 = type metadata accessor for LemonadeFeedContents(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB146BA8);
    }
  }
}

unint64_t sub_1A49B7E2C()
{
  result = qword_1EB146BB8;
  if (!qword_1EB146BB8)
  {
    sub_1A49B7C6C(255);
    sub_1A49B7EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146BB8);
  }

  return result;
}

unint64_t sub_1A49B7EA4()
{
  result = qword_1EB146BC0;
  if (!qword_1EB146BC0)
  {
    sub_1A49C02DC(255, &qword_1EB146B98, sub_1A49B7D08, sub_1A49B7DE4, MEMORY[0x1E697F960]);
    sub_1A49B7F68();
    sub_1A49B8044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146BC0);
  }

  return result;
}

unint64_t sub_1A49B7F68()
{
  result = qword_1EB146BC8;
  if (!qword_1EB146BC8)
  {
    sub_1A49B7D08(255);
    sub_1A49C042C(&qword_1EB146BD0, sub_1A44FCA1C, &unk_1A53341A0);
    sub_1A49C042C(&qword_1EB146BD8, sub_1A49B7D50, &unk_1A53341A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146BC8);
  }

  return result;
}

unint64_t sub_1A49B8044()
{
  result = qword_1EB146BE0;
  if (!qword_1EB146BE0)
  {
    sub_1A49B7DE4(255);
    sub_1A49C042C(&qword_1EB146BE8, sub_1A44FCAE4, &unk_1A53341A0);
    sub_1A49C042C(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, &unk_1A53139C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146BE0);
  }

  return result;
}

void sub_1A49B8124(uint64_t a1)
{
  if (!qword_1EB146BF0)
  {
    sub_1A49BF16C(255, &qword_1EB146BF8, sub_1A49B81E8, &type metadata for LemonadeAlbumsViewSegment, type metadata accessor for LemonadeAlbumsTabBar);
    sub_1A49BF2A0(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146BF0);
    }
  }
}

unint64_t sub_1A49B81E8()
{
  result = qword_1EB146C00;
  if (!qword_1EB146C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C00);
  }

  return result;
}

unint64_t sub_1A49B8254()
{
  result = qword_1EB146C08;
  if (!qword_1EB146C08)
  {
    sub_1A49B8124(255);
    sub_1A49B82EC();
    sub_1A49B854C(&qword_1EB1278A8, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C08);
  }

  return result;
}

unint64_t sub_1A49B82EC()
{
  result = qword_1EB1E3D90[0];
  if (!qword_1EB1E3D90[0])
  {
    sub_1A49BF16C(255, &qword_1EB146BF8, sub_1A49B81E8, &type metadata for LemonadeAlbumsViewSegment, type metadata accessor for LemonadeAlbumsTabBar);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E3D90);
  }

  return result;
}

unint64_t sub_1A49B837C()
{
  result = qword_1EB146C10;
  if (!qword_1EB146C10)
  {
    sub_1A49B76A0(255);
    sub_1A49B78B8(255);
    sub_1A49B8124(255);
    sub_1A49B79F4(255);
    sub_1A49B7B00(255);
    sub_1A49B7BD4(255);
    sub_1A49B7C6C(255);
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49B8254();
    swift_getOpaqueTypeConformance2();
    sub_1A49B854C(&qword_1EB122120, &qword_1EB122118, &type metadata for LemonadeFeedContentsTopPaddingKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C10);
  }

  return result;
}

uint64_t sub_1A49B854C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A49BF2A0(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A49B85B0(uint64_t a1)
{
  if (!qword_1EB146C18)
  {
    sub_1A49B763C(255);
    sub_1A49C042C(&qword_1EB146C20, sub_1A49B763C, MEMORY[0x1E69C21D8]);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146C18);
    }
  }
}

void sub_1A49B8680(uint64_t a1)
{
  if (!qword_1EB146C28)
  {
    sub_1A49B85B0(255);
    sub_1A49B763C(255);
    sub_1A49C042C(&qword_1EB146C20, sub_1A49B763C, MEMORY[0x1E69C21D8]);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146C28);
    }
  }
}

uint64_t sub_1A49B8780()
{
  v1 = type metadata accessor for LemonadeMacSyncedAlbumsFeature(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LemonadeAlbumsView(0);
  v5 = *(*(v0 + *(v4 + 36)) + 16);
  v6 = (v0 + *(v4 + 52));
  v7 = *v6;
  v8 = *(v6 + 1);
  v21[0] = v7;
  v22 = v8;
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  v9 = v5;
  sub_1A524B6A4();
  if (LOBYTE(v19[0]) > 1u)
  {
    if (LOBYTE(v19[0]) == 2)
    {
      v13 = v9;
      sub_1A3C512E0(v13, v21);
      *&v19[0] = v23;
      BYTE8(v19[0]) = BYTE8(v23);
      v14 = sub_1A3C445AC();
      v12 = sub_1A42E6C64(&type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v14);

      sub_1A3FA0F6C(v21);
    }

    else
    {

      return 0;
    }
  }

  else if (LOBYTE(v19[0]))
  {
    v15 = v9;
    sub_1A3C41D90(v15, 0, 0, v3);
    v16 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
    v17 = sub_1A49C042C(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337054);
    v12 = sub_1A42E6C64(v16, v17);

    sub_1A49C0474(v3, type metadata accessor for LemonadeMacSyncedAlbumsFeature);
  }

  else
  {
    v10 = v9;
    sub_1A3C41748(v10, 0, 0, v21);
    v19[0] = v23;
    v19[1] = v24;
    v20[0] = v25[0];
    *(v20 + 9) = *(v25 + 9);
    v11 = sub_1A3C51EF8();
    v12 = sub_1A42E6C64(&type metadata for LemonadeAlbumsFeature.ShelfProvider, v11);

    sub_1A3FA1280(v21);
  }

  return v12;
}

void sub_1A49B89E8(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v26[13] = a1;
  v26[19] = a3;
  v4 = type metadata accessor for LemonadeAlbumsView(0);
  v5 = *(v4 - 8);
  v26[20] = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26[1] = v6;
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B7C6C(0);
  v26[2] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = v10;
  sub_1A49B7BD4(0);
  v26[6] = v11;
  v26[9] = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v26[21] = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B7B00(0);
  v14 = *(v13 - 8);
  v26[10] = v13;
  v26[11] = v14;
  MEMORY[0x1EEE9AC00](v13);
  v26[3] = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B79F4(0);
  v26[7] = v16;
  v26[12] = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v26[4] = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B78B8(0);
  v26[14] = *(v18 - 8);
  v26[15] = v18;
  MEMORY[0x1EEE9AC00](v18);
  v26[8] = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B772C(0);
  v26[17] = *(v20 - 8);
  v26[18] = v20;
  MEMORY[0x1EEE9AC00](v20);
  v26[16] = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A49B9514();
  sub_1A49B98A8(a2, v10);
  v26[5] = MEMORY[0x1E697DA80];
  sub_1A49C0360(0, &qword_1EB146C50, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
  v23 = sub_1A5247C84();
  LOBYTE(v10) = (*(*v27 + 136))(v23);

  LOBYTE(v27) = v10 & 1;
  sub_1A49C03C4(a2, v7, type metadata accessor for LemonadeAlbumsView);
  v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  sub_1A49B942C(v7, v25 + v24, type metadata accessor for LemonadeAlbumsView);
  sub_1A49B7E2C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49B93BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB120A70, 0x1E6978760);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A49B942C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A49B9494(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeAlbumsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1A49B89E8(a1, v6, a2);
}

uint64_t sub_1A49B9514()
{
  v1 = v0;
  v2 = sub_1A5242D14();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for LemonadeAlbumsView(0);
  v9 = MEMORY[0x1E697DA80];
  sub_1A49C0360(0, &qword_1EB146C50, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
  v10 = sub_1A5247C84();
  v11 = (*(*v27 + 136))(v10);

  sub_1A49C0360(0, &qword_1EB146C58, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, v9);
  v12 = sub_1A5247C84();
  v13 = v27;
  v14 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0xA0))(v12);

  sub_1A49BF2A0(0, &qword_1EB146C60, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A52F8E10;
  *(v15 + 32) = 0;
  v16 = 1;
  if (v14)
  {
    v15 = sub_1A49BE2CC(1, 2, 1, v15);
    *(v15 + 16) = 2;
    *(v15 + 33) = 1;
    v16 = 2;
  }

  if (v11)
  {
    v17 = *(v15 + 24);
    if (v16 >= v17 >> 1)
    {
      v15 = sub_1A49BE2CC((v17 > 1), v16 + 1, 1, v15);
    }

    *(v15 + 16) = v16 + 1;
    *(v15 + v16 + 32) = 2;
    LOBYTE(v27) = *(*(v1 + *(v8 + 32)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
    v26 = 3;
    if (!static LemonadePresentationContext.== infix(_:_:)(&v27, &v26))
    {
      sub_1A3D61808(v7);
      v18 = v25;
      (*(v25 + 104))(v4, *MEMORY[0x1E69C2210], v2);
      v19 = sub_1A5242D04();
      v20 = *(v18 + 8);
      v20(v4, v2);
      v20(v7, v2);
      if ((v19 & 1) == 0)
      {
        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          v15 = sub_1A49BE2CC((v21 > 1), v22 + 1, 1, v15);
        }

        *(v15 + 16) = v22 + 1;
        *(v15 + v22 + 32) = 3;
      }
    }
  }

  return v15;
}

uint64_t sub_1A49B98A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v112 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  MEMORY[0x1EEE9AC00](v112);
  v103 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E697F948];
  sub_1A49C02DC(0, &qword_1EB146CA0, sub_1A44FCAE4, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, MEMORY[0x1E697F948]);
  v107 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v95 - v6;
  sub_1A49B7DE4(0);
  v119 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FCAE4(0);
  v109 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v102 = (&v95 - v13);
  sub_1A49B7D50(0);
  v113 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = (&v95 - v18);
  sub_1A49C02DC(0, &qword_1EB146CA8, sub_1A49B7D08, sub_1A49B7DE4, v4);
  v116 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v95 - v20;
  sub_1A49C02DC(0, &qword_1EB146CB0, sub_1A44FCA1C, sub_1A49B7D50, v4);
  v106 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v95 - v22;
  sub_1A49B7D08(0);
  v117 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v111 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49C0360(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v115 = &v95 - v26;
  sub_1A44FCA1C(0);
  v105 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v95 - v34);
  v36 = type metadata accessor for LemonadeAlbumsView(0);
  v37 = *(a1 + v36[9]);
  v38 = *(v37 + 16);
  v39 = (a1 + v36[13]);
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v121) = v40;
  *(&v121 + 1) = v41;
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  v42 = v38;
  sub_1A524B6A4();
  if (v124 > 1u)
  {
    if (v124 == 2)
    {
      v60 = *(v37 + 40);
      v61 = v60;
      v62 = v42;
      v63 = v102;
      sub_1A4244F30(v62, v60, v102);
      v64 = v99;
      sub_1A49C03C4(v63, v99, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
      v65 = *(a1 + v36[8]);
      v66 = sub_1A52442E4();
      v67 = v115;
      (*(*(v66 - 8) + 56))(v115, 1, 1, v66);
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
      v68 = sub_1A49C042C(&qword_1EB136130, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider, &unk_1A53280D0);

      v69 = v98;
      v70 = sub_1A3C30368();
      v71 = sub_1A3C5A374();
      v93 = v69;
      v72 = v104;
      sub_1A437CBD4(v64, v65, v67, 0, v70 & 1, &v121, 0, 0, v104, v71 & 1, v93, v68);
      sub_1A49C03C4(v72, v110, sub_1A44FCAE4);
      swift_storeEnumTagMultiPayload();
      sub_1A49C042C(&qword_1EB146BE8, sub_1A44FCAE4, &unk_1A53341A0);
      sub_1A49C042C(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, &unk_1A53139C0);
      v73 = v114;
      sub_1A5249744();
      sub_1A49C03C4(v73, v118, sub_1A49B7DE4);
      swift_storeEnumTagMultiPayload();
      sub_1A49B7F68();
      sub_1A49B8044();
      sub_1A5249744();

      sub_1A49C0474(v73, sub_1A49B7DE4);
      sub_1A49C0474(v72, sub_1A44FCAE4);
      v58 = type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider;
      v59 = v63;
    }

    else
    {
      sub_1A4030F64(&v121);
      v124 = v121;
      v125 = v122;
      v89 = *(a1 + v36[8]);

      v90 = v103;
      sub_1A4031754(&v124, v89, v103);
      sub_1A49C03C4(v90, v110, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
      swift_storeEnumTagMultiPayload();
      sub_1A49C042C(&qword_1EB146BE8, sub_1A44FCAE4, &unk_1A53341A0);
      sub_1A49C042C(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, &unk_1A53139C0);
      v91 = v114;
      sub_1A5249744();
      sub_1A49C03C4(v91, v118, sub_1A49B7DE4);
      swift_storeEnumTagMultiPayload();
      sub_1A49B7F68();
      sub_1A49B8044();
      sub_1A5249744();

      sub_1A49C0474(v91, sub_1A49B7DE4);
      v58 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView;
      v59 = v90;
    }
  }

  else if (v124)
  {
    sub_1A49B93BC(0, &qword_1EB146C88, MEMORY[0x1E697DA80]);
    v74 = v42;
    sub_1A5247C84();
    v75 = v121;
    v76 = *(v37 + 40);
    v77 = v76;
    v78 = v100;
    sub_1A43D8F98(v74, v75, v76, v100);
    v79 = v97;
    sub_1A49C03C4(v78, v97, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider);
    v80 = *(a1 + v36[8]);
    v81 = sub_1A52442E4();
    v82 = v115;
    (*(*(v81 - 8) + 56))(v115, 1, 1, v81);
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v83 = sub_1A49C042C(&qword_1EB1297C8, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider, &unk_1A53371C0);

    v84 = v96;
    v85 = sub_1A3C30368();
    v86 = sub_1A3C5A374();
    v94 = v84;
    v87 = v101;
    sub_1A437CBD4(v79, v80, v82, 0, v85 & 1, &v121, 0, 0, v101, v86 & 1, v94, v83);
    sub_1A49C03C4(v87, v108, sub_1A49B7D50);
    swift_storeEnumTagMultiPayload();
    sub_1A49C042C(&qword_1EB146BD0, sub_1A44FCA1C, &unk_1A53341A0);
    sub_1A49C042C(&qword_1EB146BD8, sub_1A49B7D50, &unk_1A53341A0);
    v88 = v111;
    sub_1A5249744();
    sub_1A49C03C4(v88, v118, sub_1A49B7D08);
    swift_storeEnumTagMultiPayload();
    sub_1A49B7F68();
    sub_1A49B8044();
    sub_1A5249744();

    sub_1A49C0474(v88, sub_1A49B7D08);
    sub_1A49C0474(v87, sub_1A49B7D50);
    v58 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider;
    v59 = v78;
  }

  else
  {
    sub_1A49B93BC(0, &qword_1EB146C88, MEMORY[0x1E697DA80]);
    v43 = v42;
    v114 = v29;
    v44 = a1;
    v45 = v43;
    sub_1A5247C84();
    v46 = v121;
    v47 = *(v37 + 40);
    v48 = v47;
    v49 = v45;
    sub_1A45F1810(v45, v46, v47, v35);
    sub_1A49C03C4(v35, v32, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    v50 = *(v44 + v36[8]);
    v51 = sub_1A52442E4();
    v52 = v115;
    (*(*(v51 - 8) + 56))(v115, 1, 1, v51);
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v53 = sub_1A49C042C(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider, &unk_1A534FD40);

    v54 = sub_1A3C30368();
    v55 = sub_1A3C5A374();
    v56 = v114;
    sub_1A437CBD4(v32, v50, v52, 0, v54 & 1, &v121, 0, 0, v114, v55 & 1, v30, v53);
    sub_1A49C03C4(v56, v108, sub_1A44FCA1C);
    swift_storeEnumTagMultiPayload();
    sub_1A49C042C(&qword_1EB146BD0, sub_1A44FCA1C, &unk_1A53341A0);
    sub_1A49C042C(&qword_1EB146BD8, sub_1A49B7D50, &unk_1A53341A0);
    v57 = v111;
    sub_1A5249744();
    sub_1A49C03C4(v57, v118, sub_1A49B7D08);
    swift_storeEnumTagMultiPayload();
    sub_1A49B7F68();
    sub_1A49B8044();
    sub_1A5249744();

    sub_1A49C0474(v57, sub_1A49B7D08);
    sub_1A49C0474(v56, sub_1A44FCA1C);
    v58 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider;
    v59 = v35;
  }

  return sub_1A49C0474(v59, v58);
}

void sub_1A49BA940(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1A5249234();
  MEMORY[0x1EEE9AC00](v5);
  type metadata accessor for LemonadeAlbumsView(0);
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = a2;
  sub_1A49BF16C(0, &qword_1EB146BF8, sub_1A49B81E8, &type metadata for LemonadeAlbumsViewSegment, type metadata accessor for LemonadeAlbumsTabBar);
  v7 = v6;
  v8 = *(v6 + 40);
  *(a3 + v8) = swift_getKeyPath();
  sub_1A3F88738(0);
  swift_storeEnumTagMultiPayload();
  v9 = a3 + *(v7 + 44);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49BAC30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v76 = sub_1A5249D04();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a1 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v71 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v68 = v7;
  type metadata accessor for UIKitSegmentedControl(255, v6, v7, v8);
  v9 = sub_1A524CB74();
  sub_1A49BF010(255);
  v11 = v10;
  WitnessTable = swift_getWitnessTable();
  v13 = *(v7 + 8);
  v95 = v9;
  v96 = v6;
  v97 = v11;
  v98 = WitnessTable;
  v99 = v13;
  sub_1A524B9D4();
  sub_1A5249754();
  v14 = swift_getWitnessTable();
  sub_1A49BF114();
  v16 = v15;
  v17 = sub_1A5242084();
  v18 = sub_1A49C042C(&qword_1EB130108, sub_1A49BF114, MEMORY[0x1E697D6A8]);
  v19 = sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  v95 = v16;
  v96 = v17;
  v97 = v18;
  v98 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = swift_getWitnessTable();
  v92 = v14;
  v93 = v20;
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x1E697E5D8];
  v88 = swift_getWitnessTable();
  v89 = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v21 = sub_1A524B894();
  v22 = sub_1A5248804();
  v23 = swift_getWitnessTable();
  v86 = v23;
  v87 = MEMORY[0x1E697EBF8];
  v24 = swift_getWitnessTable();
  v95 = v21;
  v96 = v22;
  v97 = v23;
  v98 = v24;
  swift_getOpaqueTypeMetadata2();
  v95 = v21;
  v96 = v22;
  v97 = v23;
  v98 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  sub_1A5247D04();
  sub_1A5249754();
  v26 = sub_1A524B514();
  v61 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v59 - v27;
  sub_1A49BF16C(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  v29 = sub_1A5248804();
  v66 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v60 = v59 - v30;
  v31 = swift_getWitnessTable();
  v84 = v25;
  v85 = v31;
  v83 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v59[1] = v32;
  v33 = sub_1A3E754D0();
  v81 = v32;
  v82 = v33;
  v34 = swift_getWitnessTable();
  v67 = v29;
  v95 = v29;
  v96 = v34;
  v63 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v62 = v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v64 = v59 - v38;
  v39 = v6;
  v78 = v6;
  v40 = v68;
  v79 = v68;
  v41 = v69;
  v80 = v69;
  sub_1A524B504();
  v42 = v72;
  v43 = v71;
  v44 = v70;
  (*(v72 + 16))(v71, v41, v70);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v39;
  *(v46 + 24) = v40;
  v47 = v60;
  v48 = v46 + v45;
  v49 = v74;
  (*(v42 + 32))(v48, v43, v44);
  sub_1A3E75420();
  sub_1A524ABE4();

  (*(v61 + 8))(v28, v26);
  sub_1A5249CE4();
  sub_1A49BF2A0(0, &qword_1EB12F500, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  LOBYTE(v40) = sub_1A524A044();
  *(inited + 32) = v40;
  v51 = sub_1A524A024();
  *(inited + 33) = v51;
  sub_1A524A034();
  sub_1A524A034();
  if (sub_1A524A034() != v40)
  {
    sub_1A524A034();
  }

  sub_1A524A034();
  if (sub_1A524A034() != v51)
  {
    sub_1A524A034();
  }

  v52 = v62;
  v53 = v67;
  sub_1A524ABF4();
  (*(v75 + 8))(v49, v76);
  (*(v66 + 8))(v47, v53);
  v54 = *(v35 + 16);
  v55 = v64;
  v56 = OpaqueTypeMetadata2;
  v54(v64, v52, OpaqueTypeMetadata2);
  v57 = *(v35 + 8);
  v57(v52, v56);
  v54(v77, v55, v56);
  return (v57)(v55, v56);
}

uint64_t sub_1A49BB680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a1;
  v59 = a5;
  type metadata accessor for UIKitSegmentedControl(255, a2, a3, a4);
  sub_1A524CB74();
  sub_1A49BF010(255);
  swift_getWitnessTable();
  v57 = a3;
  v75 = *(a3 + 8);
  sub_1A524B9D4();
  sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  sub_1A49BF114();
  sub_1A5242084();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114, MEMORY[0x1E697D6A8]);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = WitnessTable;
  v69 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  v66 = swift_getWitnessTable();
  v67 = MEMORY[0x1E697E5D8];
  v64 = swift_getWitnessTable();
  v65 = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v8 = sub_1A524B894();
  v9 = sub_1A5248804();
  v62 = swift_getWitnessTable();
  v63 = MEMORY[0x1E697EBF8];
  v10 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = v8;
  v72 = v9;
  v73 = v62;
  v74 = v10;
  v55 = swift_getOpaqueTypeConformance2();
  v12 = sub_1A5247D04();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v51 - v19;
  v20 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v56 = sub_1A5249754();
  v27 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v29 = &v51 - v28;
  if (shouldUseNewCollectionsLayout()())
  {
    v31 = type metadata accessor for LemonadeAlbumsTabBar(0, a2, v57, v30);
    sub_1A49BBE6C(v31, v32, v33, v34);
    v35 = *(v20 + 16);
    v35(v26, v23, OpaqueTypeMetadata2);
    v36 = *(v20 + 8);
    v36(v23, OpaqueTypeMetadata2);
    v35(v23, v26, OpaqueTypeMetadata2);
    v37 = swift_getWitnessTable();
    v38 = v55;
    sub_1A3DF4798(v23, OpaqueTypeMetadata2, v12, v55, v37);
    v36(v23, OpaqueTypeMetadata2);
    v36(v26, OpaqueTypeMetadata2);
  }

  else
  {
    v52 = v27;
    v39 = v13;
    v38 = v55;
    v40 = sub_1A524A024();
    sub_1A524A034();
    sub_1A524A034();
    v41 = sub_1A524A034();
    if (v41 != v40)
    {
      v41 = sub_1A524A034();
    }

    MEMORY[0x1EEE9AC00](v41);
    v43 = v57;
    v42 = v58;
    *(&v51 - 4) = a2;
    *(&v51 - 3) = v43;
    *(&v51 - 2) = v42;
    sub_1A5247D14();
    v58 = swift_getWitnessTable();
    v44 = *(v39 + 16);
    v45 = v53;
    v44(v53, v17, v12);
    v46 = *(v39 + 8);
    v46(v17, v12);
    v47 = v54;
    v44(v54, v45, v12);
    sub_1A3DF4890(v47, OpaqueTypeMetadata2, v12, v38, v58);
    v46(v47, v12);
    v46(v45, v12);
    v27 = v52;
  }

  v48 = swift_getWitnessTable();
  v60 = v38;
  v61 = v48;
  v49 = v56;
  swift_getWitnessTable();
  (*(v27 + 16))(v59, v29, v49);
  return (*(v27 + 8))(v29, v49);
}

uint64_t sub_1A49BBE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for UIKitSegmentedControl(255, v5, v6, a4);
  sub_1A524CB74();
  sub_1A49BF010(255);
  swift_getWitnessTable();
  v34 = *(v6 + 8);
  sub_1A524B9D4();
  sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  sub_1A49BF114();
  v30 = v8;
  v31 = sub_1A5242084();
  v32 = sub_1A49C042C(&qword_1EB130108, sub_1A49BF114, MEMORY[0x1E697D6A8]);
  v33 = sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = WitnessTable;
  v28 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  v24 = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v9 = sub_1A524B894();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14[-v11];
  sub_1A5249574();
  v18 = v5;
  v19 = v6;
  v20 = v4;
  sub_1A524B884();
  v15 = v5;
  v16 = v6;
  v17 = v4;
  sub_1A5248804();
  v21 = swift_getWitnessTable();
  v22 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1A524A4C4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A49BC268@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  type metadata accessor for UIKitSegmentedControl(255, a1, a2, a3);
  sub_1A524CB74();
  sub_1A49BF010(255);
  swift_getWitnessTable();
  v25[13] = *(a2 + 8);
  sub_1A524B9D4();
  sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  sub_1A49BF114();
  sub_1A5242084();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114, MEMORY[0x1E697D6A8]);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  v25[8] = swift_getOpaqueTypeConformance2();
  v25[6] = WitnessTable;
  v25[7] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  v25[4] = swift_getWitnessTable();
  v25[5] = MEMORY[0x1E697E5D8];
  v25[2] = swift_getWitnessTable();
  v25[3] = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v8 = sub_1A524B894();
  v9 = sub_1A5248804();
  v25[0] = swift_getWitnessTable();
  v25[1] = MEMORY[0x1E697EBF8];
  v25[9] = v8;
  v25[10] = v9;
  v25[11] = v25[0];
  v25[12] = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  v18 = type metadata accessor for LemonadeAlbumsTabBar(0, a1, a2, v17);
  sub_1A49BBE6C(v18, v19, v20, v21);
  v22 = *(v11 + 16);
  v22(v16, v13, OpaqueTypeMetadata2);
  v23 = *(v11 + 8);
  v23(v13, OpaqueTypeMetadata2);
  v22(a4, v16, OpaqueTypeMetadata2);
  return (v23)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_1A49BC694@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v95 = a1;
  v93 = a4;
  v91 = sub_1A5249A94();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v76 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC(0);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v89 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  v79 = sub_1A5249234();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIKitSegmentedControl(255, a2, a3, v17);
  v18 = sub_1A524CB74();
  sub_1A49BF010(255);
  v20 = v19;
  WitnessTable = swift_getWitnessTable();
  v22 = *(a3 + 8);
  v106 = v18;
  v107 = a2;
  v108 = v20;
  v109 = WitnessTable;
  v110 = v22;
  sub_1A524B9D4();
  sub_1A5249754();
  v23 = swift_getWitnessTable();
  sub_1A49BF114();
  v25 = v24;
  v26 = sub_1A5242084();
  v27 = sub_1A49C042C(&qword_1EB130108, sub_1A49BF114, MEMORY[0x1E697D6A8]);
  v28 = sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  v106 = v25;
  v107 = v26;
  v108 = v27;
  v109 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = swift_getWitnessTable();
  v103 = v23;
  v104 = v29;
  swift_getWitnessTable();
  v30 = sub_1A524B784();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v76 - v32;
  v34 = sub_1A5248804();
  v83 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v94 = &v76 - v35;
  v84 = v36;
  v86 = sub_1A5248804();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v81 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v82 = &v76 - v39;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v40 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v40 sectionedFeedTabBarItemSpacing];

  v96 = a2;
  v97 = a3;
  v41 = v95;
  v98 = v95;
  sub_1A5249314();
  v80 = v33;
  sub_1A524B774();
  v43 = &v41[*(type metadata accessor for LemonadeAlbumsTabBar(0, a2, a3, v42) + 44)];
  v44 = *v43;
  v45 = *(v43 + 1);
  v47 = *(v43 + 2);
  v46 = *(v43 + 3);
  if (v43[32] != 1)
  {

    v48 = v15;
    v49 = sub_1A524D254();
    v50 = v31;
    v51 = sub_1A524A014();
    v52 = v49;
    v15 = v48;
    sub_1A5246DF4(v52, &dword_1A3C1C000, v51, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v31 = v50;
    v53 = v77;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v44, v45, v47, v46, 0);
    (*(v78 + 8))(v53, v79);
  }

  v79 = swift_getWitnessTable();
  v54 = v80;
  sub_1A524B0C4();
  (*(v31 + 8))(v54, v30);
  sub_1A3DC7F98(v15);
  v55 = v90;
  v56 = v88;
  v57 = v91;
  (*(v90 + 104))(v88, *MEMORY[0x1E697FF40], v91);
  (*(v55 + 56))(v56, 0, 1, v57);
  v58 = *(v87 + 48);
  v59 = v92;
  sub_1A49C03C4(v15, v92, sub_1A3DC7D88);
  sub_1A49C03C4(v56, v59 + v58, sub_1A3DC7D88);
  v60 = *(v55 + 48);
  v61 = v60(v59, 1, v57);
  v62 = v89;
  if (v61 == 1)
  {
    sub_1A49C0474(v56, sub_1A3DC7D88);
    sub_1A49C0474(v15, sub_1A3DC7D88);
    if (v60(v59 + v58, 1, v57) == 1)
    {
      v63 = sub_1A3DC7D88;
    }

    else
    {
      v63 = sub_1A3DD0DCC;
    }
  }

  else
  {
    v95 = v15;
    sub_1A49C03C4(v59, v89, sub_1A3DC7D88);
    if (v60(v59 + v58, 1, v57) == 1)
    {
      sub_1A49C0474(v56, sub_1A3DC7D88);
      sub_1A49C0474(v95, sub_1A3DC7D88);
      (*(v55 + 8))(v62, v57);
      v63 = sub_1A3DD0DCC;
    }

    else
    {
      v64 = v76;
      (*(v55 + 32))(v76, v59 + v58, v57);
      sub_1A49C042C(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      sub_1A524C594();
      v65 = *(v55 + 8);
      v65(v64, v57);
      sub_1A49C0474(v56, sub_1A3DC7D88);
      sub_1A49C0474(v95, sub_1A3DC7D88);
      v65(v62, v57);
      v63 = sub_1A3DC7D88;
    }
  }

  sub_1A49C0474(v59, v63);
  v101 = v79;
  v102 = MEMORY[0x1E697E5D8];
  v66 = v84;
  v67 = swift_getWitnessTable();
  v68 = v81;
  v69 = v94;
  sub_1A524B1A4();
  (*(v83 + 8))(v69, v66);
  v99 = v67;
  v100 = MEMORY[0x1E697EBE0];
  v70 = v86;
  swift_getWitnessTable();
  v71 = v85;
  v72 = *(v85 + 16);
  v73 = v82;
  v72(v82, v68, v70);
  v74 = *(v71 + 8);
  v74(v68, v70);
  v72(v93, v73, v70);
  return (v74)(v73, v70);
}

void sub_1A49BD268(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v8 = type metadata accessor for LemonadeAlbumsTabBar(0, a2, a3, a4);
  v33 = *(v8 - 8);
  v31[1] = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v32 = v31 - v9;
  v10 = sub_1A524CB74();
  sub_1A49BF010(255);
  v12 = v11;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a3 + 8);
  v36 = v12;
  v37 = v10;
  v47 = v10;
  v48 = a2;
  v49 = v12;
  v50 = WitnessTable;
  v35 = WitnessTable;
  v34 = v14;
  v51 = v14;
  v15 = sub_1A524B9D4();
  v39 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v38 = v31 - v17;
  v18 = sub_1A524B974();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = type metadata accessor for UIKitSegmentedControl(0, a2, a3, v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v40 = v22;
  v43 = v15;
  v23 = sub_1A5249754();
  v41 = *(v23 - 8);
  v42 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v45 = v31 - v25;
  v26 = MEMORY[0x1A590D320](v24);
  if (v26)
  {
    sub_1A524B974();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v46 = *(a1 + *(v8 + 36));
  MEMORY[0x1EEE9AC00](v26);
  v31[0] = swift_getKeyPath();
  v27 = v33;
  v28 = v32;
  (*(v33 + 16))(v32, a1, v8);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  (*(v27 + 32))(v30 + v29, v28, v8);
  sub_1A49BF114();
  sub_1A5242084();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114, MEMORY[0x1E697D6A8]);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49BDBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a1;
  v70 = a4;
  v60 = a2;
  v67 = a5;
  v66 = sub_1A5242084();
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49BF114();
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v62 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v54 = v12;
  v56 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for LemonadeAlbumsTabBar(0, a3, a4, v14);
  v15 = *(v55 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v55);
  v57 = v48 - v18;
  v19 = *(v15 + 16);
  v59 = v15 + 16;
  v61 = v19;
  v19(v17);
  v58 = *(v11 + 16);
  v58(v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v69, a3);
  sub_1A524CC54();
  v20 = sub_1A524CC44();
  v21 = *(v15 + 80);
  v22 = (v21 + 48) & ~v21;
  v23 = *(v11 + 80);
  v52 = v22;
  v24 = (v16 + v23 + v22) & ~v23;
  v53 = v21 | v23;
  v48[0] = v24;
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  v25[2] = v20;
  v25[3] = v26;
  v27 = v70;
  v25[4] = a3;
  v25[5] = v27;
  v28 = *(v15 + 32);
  v50 = v15 + 32;
  v51 = v28;
  v29 = v25 + v22;
  v30 = v57;
  v31 = v55;
  v28(v29, v57, v55);
  v32 = *(v11 + 32);
  v48[1] = v11 + 32;
  v49 = v32;
  v33 = v25 + v24;
  v34 = v56;
  v35 = a3;
  v32(v33, v56, a3);
  v36 = v31;
  (v61)(v30, v60, v31);
  v37 = v34;
  v38 = v69;
  v58(v34, v69, a3);
  v39 = sub_1A524CC44();
  v40 = v48[0];
  v41 = swift_allocObject();
  *(v41 + 2) = v39;
  *(v41 + 3) = MEMORY[0x1E69E85E0];
  *(v41 + 4) = v35;
  v42 = v70;
  *(v41 + 5) = v70;
  v51(&v41[v52], v30, v36);
  v49(&v41[v40], v37, v35);
  sub_1A524B944();
  v71 = v35;
  v72 = v42;
  v73 = v38;

  v43 = v62;
  sub_1A524B854();
  v44 = v63;
  sub_1A5247F14();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114, MEMORY[0x1E697D6A8]);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  v45 = v66;
  v46 = v64;
  sub_1A524A9E4();

  (*(v68 + 8))(v44, v45);
  return (*(v65 + 8))(v43, v46);
}

uint64_t sub_1A49BE1AC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, _BYTE *a5@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeAlbumsTabBar(0, v10, v11, v11);
  v12 = sub_1A524B974();
  MEMORY[0x1A5906C60](v12);
  v13 = sub_1A524C594();
  result = (*(v7 + 8))(v9, a3);
  *a5 = v13 & 1;
  return result;
}

char *sub_1A49BE2CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A49BF2A0(0, &qword_1EB146C60, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1A49BE3DC()
{
  result = qword_1EB146C68;
  if (!qword_1EB146C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C68);
  }

  return result;
}

unint64_t sub_1A49BE434()
{
  result = qword_1EB146C70;
  if (!qword_1EB146C70)
  {
    sub_1A49BF2A0(255, &qword_1EB146C78, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C70);
  }

  return result;
}

unint64_t sub_1A49BE4B0(uint64_t a1)
{
  result = sub_1A49BE4D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A49BE4D8()
{
  result = qword_1EB146C80;
  if (!qword_1EB146C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C80);
  }

  return result;
}

void sub_1A49BE580(uint64_t a1)
{
  sub_1A49C0360(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A49C0360(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A49BF2A0(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A49C0360(319, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for LemonadeNavigationContext(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for LemonadePhotoLibraryContext(319, v5);
            if (v6 <= 0x3F)
            {
              sub_1A49C0360(319, &qword_1EB146C50, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
              if (v7 <= 0x3F)
              {
                sub_1A49C0360(319, &qword_1EB146C58, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
                if (v8 <= 0x3F)
                {
                  sub_1A49B93BC(319, &qword_1EB146C88, MEMORY[0x1E697DA80]);
                  if (v9 <= 0x3F)
                  {
                    sub_1A49BF2A0(319, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
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
  }
}

unint64_t sub_1A49BE818()
{
  result = qword_1EB146C90;
  if (!qword_1EB146C90)
  {
    sub_1A49C02DC(255, &qword_1EB146C48, sub_1A49B8680, sub_1A45C999C, MEMORY[0x1E697E830]);
    sub_1A49B85B0(255);
    sub_1A49B763C(255);
    sub_1A49C042C(&qword_1EB146C20, sub_1A49B763C, MEMORY[0x1E69C21D8]);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49C042C(&qword_1EB13E570, sub_1A45C999C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C90);
  }

  return result;
}

void sub_1A49BE9B8(uint64_t a1)
{
  sub_1A524B974();
  if (v1 <= 0x3F)
  {
    sub_1A524CB74();
    if (v2 <= 0x3F)
    {
      sub_1A49C0360(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A49BF2A0(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A49BF2A0(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A49BEB08(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1A5249A94() - 8);
  v10 = *(v9 + 64);
  v11 = *(v6 + 80);
  if (!*(v9 + 84))
  {
    ++v10;
  }

  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_32;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((v12 + ((*(v6 + 64) + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 48) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v8 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_32;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_32:
    v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v23 = *(v6 + 48);

      return v23((v21 + v11 + 8) & ~v11, v7, v5);
    }

    else
    {
      v22 = *v21;
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void sub_1A49BED4C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1A5249A94() - 8);
  v12 = *(v11 + 64);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (v14 + ((*(v8 + 64) + ((v13 + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14;
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v16 = ((v12 + v15 + 48) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v19 = 0;
    v20 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (((v12 + v15 + 48) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v10 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_21:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!a2)
      {
        return;
      }

LABEL_37:
      v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v24 = *(v25 + 56);

        v24((v22 + v13 + 8) & ~v13, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = (a2 - 1);
        }

        *v22 = v23;
      }

      return;
    }
  }

  if (v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (v16)
  {
    bzero(a1, v16);
    *a1 = ~v10 + a2;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

void sub_1A49BF010(uint64_t a1)
{
  if (!qword_1EB146C98)
  {
    sub_1A49BF114();
    sub_1A5242084();
    sub_1A49C042C(&qword_1EB130108, sub_1A49BF114, MEMORY[0x1E697D6A8]);
    sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146C98);
    }
  }
}

void sub_1A49BF114()
{
  if (!qword_1EB130100)
  {
    v0 = sub_1A524B874();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130100);
    }
  }
}

void sub_1A49BF16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A49BF1E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeAlbumsTabBar(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1A49BF2A0(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A49BF2A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A49BF308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  type metadata accessor for LemonadeAlbumsTabBar(0, v5, v6, a4);
  sub_1A49BF2A0(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524BC74();
  type metadata accessor for UIKitSegmentedControl(255, v5, v6, v7);
  sub_1A524CB74();
  sub_1A49BF010(255);
  swift_getWitnessTable();
  sub_1A524B9D4();
  sub_1A5249754();
  swift_getWitnessTable();
  sub_1A49BF114();
  sub_1A5242084();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114, MEMORY[0x1E697D6A8]);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  return sub_1A524AFE4();
}

uint64_t objectdestroy_41Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LemonadeAlbumsTabBar(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));

  v8 = sub_1A524B974();
  (*(*(v5 - 8) + 8))(v7 + *(v8 + 32), v5);

  v9 = *(v6 + 40);
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5249A94();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v7 + *(v6 + 44);
  sub_1A3D35A84(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A49BF888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for LemonadeAlbumsTabBar(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1A49BDBA8(a1, v9, v6, v7, a3);
}

uint64_t sub_1A49BF924@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(*(type metadata accessor for LemonadeAlbumsTabBar(0, v4, *(v2 + 40), a1) - 8) + 80);

  return sub_1A49BE1AC(v2 + ((v5 + 48) & ~v5), v4, a2);
}

uint64_t objectdestroy_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for LemonadeAlbumsTabBar(0, v5, *(v4 + 40), a4);
  v7 = *(*(v6 - 8) + 80);
  v18 = *(*(v6 - 8) + 64);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80);
  swift_unknownObjectRelease();
  v10 = v4 + ((v7 + 48) & ~v7);

  v11 = sub_1A524B974();
  v12 = *(v8 + 8);
  v12(v10 + *(v11 + 32), v5);

  v13 = *(v6 + 40);
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A5249A94();
    v17 = *(v14 - 8);
    if (!(*(v17 + 48))(v10 + v13, 1, v14))
    {
      (*(v17 + 8))(v10 + v13, v14);
    }
  }

  else
  {
  }

  v15 = v10 + *(v6 + 44);
  sub_1A3D35A84(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32));

  v12(v4 + ((((v7 + 48) & ~v7) + v18 + v9) & ~v9), v5);

  return swift_deallocObject();
}

uint64_t sub_1A49BFC78(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 32);
  result = type metadata accessor for LemonadeAlbumsTabBar(0, v6, *(v4 + 40), a4);
  if (*a1 == 1)
  {
    return sub_1A49BFFBC(v4 + ((((*(*(result - 8) + 80) + 48) & ~*(*(result - 8) + 80)) + *(*(result - 8) + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), result);
  }

  return result;
}

uint64_t sub_1A49BFD38@<X0>(uint64_t a1@<X8>)
{
  (*(*(v1 + 24) + 16))(*(v1 + 16));
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id sub_1A49BFDA8(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [a1 librarySpecificFetchOptions];
  v8 = [v6 fetchRootAlbumCollectionListWithOptions_];

  v9 = [v8 firstObject];
  if (v9)
  {
    return v9;
  }

  v11 = sub_1A3C38A40();
  (*(v3 + 16))(v5, v11, v2);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D254();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, v13, "could not access root album collection list", v14, 2u);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v15 = [a1 px_rootAlbumCollectionList];

  return v15;
}

uint64_t sub_1A49BFFBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_1A524B974();
  return sub_1A524B904();
}

void *sub_1A49C008C()
{
  type metadata accessor for LemonadeAlbumsView(0);
  v1 = *(v0 + 16);
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  v3 = 0;
  while (*(v1 + 16) != v3)
  {
    v4 = *(v1 + 32 + v3++);
    if (v4 == v5)
    {
      return result;
    }
  }

  return sub_1A524B6B4();
}

void *sub_1A49C01A4(uint64_t a1, char *a2)
{
  type metadata accessor for LemonadeAlbumsView(0);
  v3 = *a2;
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v5 == 1 && (v3 & 1) == 0)
  {
    return sub_1A524B6B4();
  }

  return result;
}

void sub_1A49C02DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A49C0360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49C03C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49C042C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A49C0474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49C04D4()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1E40B8);
  __swift_project_value_buffer(v6, qword_1EB1E40B8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static HideAssetsIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1E40B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1E40B8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A49C0834()
{
  sub_1A49C3690(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A5240BA4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A5240BB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A5240094();
  __swift_allocate_value_buffer(v10, qword_1EB1E40D8);
  __swift_project_value_buffer(v10, qword_1EB1E40D8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A5240BC4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A52400A4();
}

uint64_t (*static HideAssetsIntent.description.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1E40D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240094();
  __swift_project_value_buffer(v2, qword_1EB1E40D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static HideAssetsIntent.parameterSummary.getter()
{
  sub_1A49C3628(0, &qword_1EB146CB8, sub_1A49C0EE4, &type metadata for HideAssetsIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A49C3628(0, &qword_1EB146CC8, sub_1A49C0EE4, &type metadata for HideAssetsIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A49C0EE4();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A49C0F5C(0);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A49C0FE0(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A49C0EE4()
{
  result = qword_1EB146CC0;
  if (!qword_1EB146CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146CC0);
  }

  return result;
}

void sub_1A49C0F5C(uint64_t a1)
{
  if (!qword_1EB146CD0)
  {
    sub_1A3F57E84(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146CD0);
    }
  }
}

void sub_1A49C0FE0(uint64_t a1)
{
  if (!qword_1EB146CD8)
  {
    sub_1A49C3628(255, &qword_1EB146CE0, sub_1A49C1078, &type metadata for HideAssetsIntentAction, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146CD8);
    }
  }
}

unint64_t sub_1A49C1078()
{
  result = qword_1EB146CE8;
  if (!qword_1EB146CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146CE8);
  }

  return result;
}

uint64_t HideAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1A49C3690(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v33 - v5;
  v41 = sub_1A5240334();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49C3690(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v1);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v33 - v10;
  v11 = sub_1A5240BA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v36 = sub_1A5240BB4();
  v17 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  sub_1A3F57E84(0);
  v37 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v12 + 104);
  v20(v14, v19, v11);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v14, v19, v11);
  v21 = v38;
  sub_1A5240BC4();
  v22 = *(v17 + 56);
  v23 = v21;
  v24 = v36;
  v22(v21, 0, 1, v36);
  v47 = 0;
  sub_1A5240174();
  v35 = *MEMORY[0x1E695A500];
  v25 = *(v45 + 104);
  v45 += 104;
  v34 = v25;
  v26 = v40;
  v27 = v41;
  v25(v40);
  sub_1A3FC2D54(&qword_1EB12EEC8, &qword_1EB12EEB8, &type metadata for AssetEntity);
  sub_1A3F58824();
  v28 = sub_1A5240034();
  v29 = v42;
  *v42 = v28;
  sub_1A49C3628(0, &qword_1EB146CE0, sub_1A49C1078, &type metadata for HideAssetsIntentAction, MEMORY[0x1E695A1A0]);
  v22(v23, 1, 1, v24);
  v46 = 0;
  v30 = sub_1A523FDB4();
  v31 = *(*(v30 - 8) + 56);
  v31(v43, 1, 1, v30);
  v31(v44, 1, 1, v30);
  v34(v26, v35, v27);
  sub_1A49C23BC();
  result = sub_1A523FF74();
  v29[1] = result;
  return result;
}

uint64_t HideAssetsIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = *v1;
  sub_1A524CC54();
  *(v2 + 64) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 72) = v4;
  *(v2 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A49C17E4, v4, v3);
}

uint64_t sub_1A49C17E4()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v1;
  v0[3] = v2;
  sub_1A523FF44();
  v3 = *(v0[4] + 16);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  sub_1A49C0EE4();
  *v5 = v0;
  v5[1] = sub_1A3FC0434;
  v6 = v0[5];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A53795D0);
}

uint64_t sub_1A49C1944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A49C19E0, v5, v4);
}

uint64_t sub_1A49C19E0()
{
  sub_1A523FF44();
  if (*(v0 + 120))
  {
    v1 = sub_1A524EAB4();
  }

  else
  {
    v1 = 1;
  }

  v8 = *(v0 + 48);

  sub_1A523FF44();
  v2 = *(v0 + 32);
  *(v0 + 88) = v2;
  *(v0 + 16) = v8;
  sub_1A49C0EE4();
  v3 = AppIntent.px_intentName.getter(&type metadata for HideAssetsIntent);
  v5 = v4;
  *(v0 + 96) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1A3FC0824;

  return sub_1A49C24BC(v1 & 1, v2, v3, v5);
}

uint64_t sub_1A49C1B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A49C24BC(a1, a2, a3, a4);
}

void (*HideAssetsIntent.assets.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

void (*HideAssetsIntent.action.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}