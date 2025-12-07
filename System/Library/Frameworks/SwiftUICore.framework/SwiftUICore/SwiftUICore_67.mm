uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21LayoutProxyAttributesV_Tt1g5(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_s32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14LayoutSubviewsV7Storage33_57DDCF0A00C1B77B475771403C904EF9LLO17IndexedAttributesV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 40);
  v4 = (result + 40);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v8 = *v3;
    v3 += 3;
    v7 = v8;
    result = *(v4 - 2) == v5 && *(v4 - 1) == v6 && *v4 == v7;
    v11 = result != 1 || v2-- == 1;
    v4 += 3;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo6CGSizeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_f64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV5Added33_2975F89CBD28662DFA5DA6D958CBE343LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v23 = *(a1 + 32);
    v4 = *(a1 + 64);
    v24 = v3;
    v25 = v4;
    v26 = *(a1 + 80);
    v5 = *(a2 + 48);
    v27 = *(a2 + 32);
    v28 = v5;
    v29 = *(a2 + 64);
    v30 = *(a2 + 80);
    if (v23 == v27)
    {
      v6 = (a2 + 88);
      v7 = (a1 + 88);
      do
      {
        if (*(&v23 + 1) != *(&v27 + 1))
        {
          break;
        }

        v20 = v24;
        v21 = v25;
        v22 = WORD4(v25);
        v17 = v28;
        v18 = v29;
        v19 = WORD4(v29);
        outlined init with copy of _SymbolEffect.Added(&v23, v16);
        outlined init with copy of _SymbolEffect.Added(&v27, v16);
        outlined init with copy of _SymbolEffect.Added(&v23, v16);
        outlined init with copy of _SymbolEffect.Added(&v27, v16);
        v8 = static _SymbolEffect.Storage.== infix(_:_:)(&v20, &v17);
        outlined consume of _SymbolEffect.Storage(v17, *(&v17 + 1), v18, v19);
        outlined consume of _SymbolEffect.Storage(v20, *(&v20 + 1), v21, v22);
        outlined destroy of _SymbolEffect.Added(&v27);
        outlined destroy of _SymbolEffect.Added(&v23);
        if ((v8 & 1) == 0 || HIDWORD(v25) != HIDWORD(v29) || v26 != v30)
        {
          break;
        }

        if (!--v2)
        {
          return 1;
        }

        v9 = v7[1];
        v23 = *v7;
        v10 = v7[2];
        v24 = v9;
        v25 = v10;
        v11 = v6[1];
        v27 = *v6;
        v28 = v11;
        v12 = v6[2];
        v13 = *(v6 + 12);
        v6 = (v6 + 56);
        v14 = *(v7 + 12);
        v7 = (v7 + 56);
        v26 = v14;
        v29 = v12;
        v30 = v13;
      }

      while (v23 == v27);
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD2VySfG_Tt1g5(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_f32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI10DiffResultV4MoveV_Tt1g5(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14AnimatablePairVySfAC16_ShapeStyle_PackV6EffectV4KindO0D4DataOG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 56)
    {
      v4 = a1 + i;
      v5 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      if (*(v4 + 80))
      {
        if ((*(v5 + 80) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(v5 + 80))
        {
          return 0;
        }

        v6 = *(v4 + 40);
        v7 = *(v4 + 48);
        v8 = *(v5 + 48);
        v9 = *(v5 + 40);
        v10 = *&v6 == *&v9 && *(&v6 + 1) == *(&v9 + 1);
        v11 = v10 && *&v7 == *&v8;
        v12 = v11 && *(&v7 + 1) == *(&v8 + 1);
        v13 = v12 && *(v4 + 56) == *(v5 + 56);
        v14 = v13 && *(v4 + 64) == *(v5 + 64);
        if (!v14 || *(v4 + 72) != *(v5 + 72))
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo15CFDictionaryRefa_Tt1g5Tm(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v7 = a1;
  v8 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v9)
    {
      goto LABEL_29;
    }

    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v7 < 0)
    {
      v11 = v7;
    }

    if (v8)
    {
      v12 = v11;
    }

    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v13 = a2;
    }

    if (a2 >> 62)
    {
      v14 = v13;
    }

    if (v12 == v14)
    {
LABEL_29:
      v21 = 1;
      return v21 & 1;
    }

    if (v9 < 0)
    {
      __break(1u);
      return result;
    }

    a3(0);
    if (((a2 | v7) & 0xC000000000000001) != 0)
    {
      v15 = a2 & 0xC000000000000001;
      v16 = 4;
      while (1)
      {
        v17 = v16 - 4;
        v8 = (v16 - 3);
        if (__OFADD__(v16 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x193AC03C0](v16 - 4, v7);
          if (!v15)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v18 = *(v7 + 8 * v16);
          if (!v15)
          {
LABEL_24:
            if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 8 * v16);
            goto LABEL_26;
          }
        }

        v19 = MEMORY[0x193AC03C0](v16 - 4, a2);
LABEL_26:
        v20 = v19;
        lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(a4, a5, a6);
        v21 = static _CFObject.== infix(_:_:)();

        if (v21)
        {
          ++v16;
          if (v8 != v9)
          {
            continue;
          }
        }

        return v21 & 1;
      }
    }

    v8 = (v7 + 32);
    v22 = (a2 + 32);
    v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v9 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v8++;
      v26 = v27;
      v28 = *v22++;
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(a4, a5, a6);
      a2 = v29;
      v7 = v26;
      v30 = v28;
      v21 = static _CFObject.== infix(_:_:)();

      v32 = v25-- != 0;
      if (v21)
      {
        --v24;
        --v23;
        if (v32)
        {
          continue;
        }
      }

      return v21 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v33 = a3;
    v34 = __CocoaSet.count.getter();
    a3 = v33;
    v9 = v34;
  }

  v35 = a3;
  result = __CocoaSet.count.getter();
  a3 = v35;
  if (v9 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v21 = 0;
  return v21 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5Tm(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = type metadata accessor for CAMediaTimingFunction(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x193AC03C0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x193AC03C0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = static NSObject.== infix(_:_:)();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = __CocoaSet.count.getter();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = __CocoaSet.count.getter();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ImageV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = (a2 + 32);
    do
    {
      if (*v3 != *v4)
      {
        v5 = *(**v3 + 96);

        LOBYTE(v5) = v5(v6);

        if ((v5 & 1) == 0)
        {
          break;
        }
      }

      v3 += 8;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t PathSet.init(elements:smoothness:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

double PathSet.init(_:smoothness:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  type metadata accessor for _ContiguousArrayStorage<PathSet.Element>();
  v6 = swift_allocObject();
  *&result = 1;
  v8 = *a1;
  v9 = a1[1];
  *(v6 + 16) = xmmword_18DDA6EB0;
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  *(v6 + 64) = *(a1 + 32);
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 84) = 0;
  *a2 = v6;
  *(a2 + 8) = a3;
  return result;
}

void PathSet.boundingRect.getter()
{
  v1 = *v0;
  v3 = *MEMORY[0x1E695F050];
  v2 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v4 = *(MEMORY[0x1E695F050] + 24);
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return;
  }

  v7 = 0;
  v8 = (v1 + 64);
  v30 = *(MEMORY[0x1E695F050] + 24);
  v31 = *(MEMORY[0x1E695F050] + 16);
  v32 = *(MEMORY[0x1E695F050] + 8);
  v33 = *MEMORY[0x1E695F050];
  v29 = *(*v0 + 16);
  while (v7 < *(v1 + 16))
  {
    v13 = *(v8 - 4);
    v14 = *(v8 - 3);
    v15 = *(v8 - 2);
    v16 = *(v8 - 1);
    v17 = *v8;
    if (v17 > 2)
    {
      if (v17 == 5)
      {
        if (*(v13 + 16))
        {
          if (*(v13 + 16) == 1)
          {
            outlined copy of Path.Storage(*(v8 - 4), *(v8 - 3), *(v8 - 2), *(v8 - 1), 5u);
            v6 = v29;
            RBPathGetBoundingRect();
          }

          else
          {
            v28 = outlined copy of Path.Storage(*(v8 - 4), *(v8 - 3), *(v8 - 2), *(v8 - 1), 5u);
            v22 = MEMORY[0x193AC3640](v13 + 24, v28);
          }

          v9 = v22;
          v10 = v23;
          v11 = v24;
          v12 = v25;
          goto LABEL_4;
        }

        v26 = *(v13 + 24);
        if (!v26)
        {
          goto LABEL_22;
        }

        v27 = v26;
        outlined copy of Path.Storage(v13, v14, v15, v16, 5u);
        outlined copy of Path.Storage(v13, v14, v15, v16, 5u);
        PathBoundingBox = CGPathGetPathBoundingBox(v27);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;

        outlined consume of Path.Storage(v13, v14, v15, v16, 5u);
        goto LABEL_17;
      }

      v10 = v32;
      v9 = v33;
      v12 = v30;
      v11 = v31;
      if (v17 != 6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v17 >= 2)
      {
        x = *(v13 + 16);
        y = *(v13 + 24);
        width = *(v13 + 32);
        height = *(v13 + 40);
        outlined copy of Path.Storage(*(v8 - 4), *(v8 - 3), *(v8 - 2), *(v8 - 1), 2u);
LABEL_17:
        v12 = height;
        v11 = width;
        v10 = y;
        v9 = x;
        goto LABEL_4;
      }

      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
    }

LABEL_4:
    ++v7;
    v34.origin.x = v3;
    v34.origin.y = v2;
    v34.size.width = v5;
    v34.size.height = v4;
    v35 = CGRectUnion(v34, *&v9);
    v3 = v35.origin.x;
    v2 = v35.origin.y;
    v5 = v35.size.width;
    v4 = v35.size.height;
    outlined consume of Path.Storage(v13, v14, v15, v16, v17);
    v8 += 56;
    if (v6 == v7)
    {
      return;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static PathSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7PathSetV7ElementV_Tt1g5(*a1, *a2) & (v2 == v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PathSet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7PathSetV7ElementV_Tt1g5(*a1, *a2) & (v2 == v3);
}

uint64_t closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:)(uint64_t *a1, double *a2, uint64_t a3, __int128 *a4, double a5, double a6)
{
  v12 = *a1;
  if (*(*a1 + 52) != 27)
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 52) = 27;
  }

  v13 = -a5 / (a6 - a5);
  if (*(v12 + 48) != v13)
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 48) = v13;
  }

  if (a5 < 0.0)
  {
    v14 = -a5;
  }

  else
  {
    v14 = 0.0;
  }

  if (*(v12 + 56) != v14)
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 56) = v14;
  }

  v15 = *(a3 + 144);
  v41 = *(a3 + 128);
  v42 = v15;
  v43 = *(a3 + 160);
  v16 = *(a3 + 80);
  v37 = *(a3 + 64);
  v38 = v16;
  v17 = *(a3 + 112);
  v39 = *(a3 + 96);
  v40 = v17;
  v18 = *(a3 + 16);
  v33 = *a3;
  v34 = v18;
  v19 = *(a3 + 48);
  v35 = *(a3 + 32);
  v36 = v19;
  v20 = a4[1];
  v31 = *a4;
  v32[0] = v20;
  *(v32 + 9) = *(a4 + 25);
  GraphicsContext.draw(_:with:style:)(a2, &v33, &v31, v12);
  v21 = *(v12 + 48);
  v22 = 1.0 - v21;
  if (v21 != (1.0 - v21))
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 48) = v22;
  }

  if (a6 > 0.0)
  {
    v23 = -a6;
  }

  else
  {
    v23 = -0.0;
  }

  if (*(v12 + 56) != v23)
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 56) = v23;
  }

  v24 = *(a3 + 144);
  v41 = *(a3 + 128);
  v42 = v24;
  v43 = *(a3 + 160);
  v25 = *(a3 + 80);
  v37 = *(a3 + 64);
  v38 = v25;
  v26 = *(a3 + 112);
  v39 = *(a3 + 96);
  v40 = v26;
  v27 = *(a3 + 16);
  v33 = *a3;
  v34 = v27;
  v28 = *(a3 + 48);
  v35 = *(a3 + 32);
  v36 = v28;
  v29 = a4[1];
  v31 = *a4;
  v32[0] = v29;
  *(v32 + 9) = *(a4 + 25);
  return GraphicsContext.draw(_:with:style:)(a2, &v33, &v31, v12);
}

uint64_t closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:matching:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, double a6, double a7, double a8)
{
  v9 = v8;
  v99 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 16);
  if (!v10)
  {
    return result;
  }

  v13 = a4;
  v14 = result;
  v15 = (a2 + 32);
  v16 = a7 == 0.0;
  v17 = -a7;
  if (a7 >= 0.0)
  {
    v17 = 0.0;
  }

  if (a8 == 0.0)
  {
    v16 = 1;
  }

  v59 = v16;
  v18 = -a8;
  if (a8 <= 0.0)
  {
    v18 = -0.0;
  }

  if (a8 == 0.0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = v10 - 1;
  __asm { FMOV            V0.4S, #1.0 }

  v58 = _Q0;
  v60 = a3;
  v61 = result;
  while (1)
  {
    v26 = v15[2];
    v83 = v15[1];
    v84 = v26;
    v82 = *v15;
    v85 = *(v15 + 6);
    if (((*(&v26 + 1) ^ v13) & a3) != 0)
    {
      goto LABEL_63;
    }

    v66 = v20;
    if (v85)
    {
      v27 = 1013;
    }

    else
    {
      v27 = 1006;
    }

    v28 = *v14;
    if (*(*v14 + 52) == v27)
    {
      outlined init with copy of PathSet.Element(&v82, &v71);
    }

    else
    {
      outlined init with copy of PathSet.Element(&v82, &v71);
      GraphicsContext.copyOnWrite()();
      v28 = *v14;
      *(*v14 + 52) = v27;
    }

    v29 = *(&v82 + 1);
    v30 = v82;
    v31 = *(&v83 + 1);
    v32 = v83;
    v33 = v84;
    v71 = v58;
    LODWORD(v72) = 2143289344;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v71);
    v96 = v79;
    v97 = v80;
    v98 = v81;
    v92 = v75;
    v93 = v76;
    v94 = v77;
    v95 = v78;
    v88 = v71;
    v89 = v72;
    v90 = v73;
    v91 = v74;
    if (v33 <= 2)
    {
      if (v33 >= 2)
      {
      }

LABEL_27:
      outlined copy of Path.Storage(v30, v29, v32, v31, v33);
      goto LABEL_28;
    }

    if (v33 != 5)
    {
      if (v33 != 6)
      {
        goto LABEL_73;
      }

      goto LABEL_27;
    }

    type metadata accessor for Path.PathBox();
    v34 = swift_allocObject();
    *(v34 + 24) = 0u;
    *(v34 + 40) = 0u;
    *(v34 + 56) = 0u;
    *(v34 + 72) = 0u;
    *(v34 + 88) = 0u;
    *(v34 + 104) = 0u;
    *(v34 + 16) = 2;
    outlined init with copy of PathSet.Element(&v82, v69);
    RBPathStorageInit();
    LOWORD(v69[0]) = 0;
    MEMORY[0x193AC35E0](v34 + 24, 20, 0, v69);
    if (*(v30 + 16))
    {
      if (*(v30 + 16) != 1 && one-time initialization token for bufferCallbacks != -1)
      {
        swift_once();
      }

      goto LABEL_69;
    }

    if (!*(v30 + 24))
    {
      break;
    }

LABEL_69:
    RBPathStorageAppendPath();
    MEMORY[0x193AC35E0](v34 + 24, 16, 0, 0);
    v32 = 0;
    v31 = 0;
    v30 = v34;
    v29 = 0;
LABEL_28:
    *&v86[0] = v30;
    *&v86[1] = v29;
    *&v86[2] = v32;
    *&v86[3] = v31;
    v87 = v33;
    v65 = v32;
    if (v59)
    {
      v62 = v9;
      v35 = v31;
      v36 = *(v28 + 56);
      v37 = (~*&v36 & 0x7FF0000000000000) != 0;
      if ((*&v36 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v37 = 1;
      }

      v38 = fabs(v36);
      if (v36 >= 0.0)
      {
        v39 = 2;
      }

      else
      {
        v39 = 3;
      }

      if (v37)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0.0;
      }

      if (v37)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0;
      }

      if (v36 != v19)
      {
        GraphicsContext.copyOnWrite()();
        v28 = *v61;
        *(*v61 + 56) = v19;
      }

      v69[8] = v96;
      v69[9] = v97;
      v70 = v98;
      v69[4] = v92;
      v69[5] = v93;
      v69[6] = v94;
      v69[7] = v95;
      v69[0] = v88;
      v69[1] = v89;
      v69[2] = v90;
      v69[3] = v91;
      v42 = a5[1];
      v67 = *a5;
      v68[0] = v42;
      *(v68 + 9) = *(a5 + 25);
      GraphicsContext.draw(_:with:style:)(v86, v69, &v67, v28);
      if (v41 == 3)
      {
        if (v40 > 0.0)
        {
          v40 = -v40;
        }

        else
        {
          v40 = -0.0;
        }
      }

      else
      {
        if (v41 != 2)
        {
          v40 = NAN;
          v51 = v35;
          v9 = v62;
LABEL_61:
          v52 = v29;
          v14 = v61;
          GraphicsContext.copyOnWrite()();
          outlined destroy of PathSet.Element(&v82);
          outlined consume of Path.Storage(v30, v52, v65, v51, v33);
          *(*v61 + 56) = v40;
          result = outlined destroy of PathSet.Element(&v82);
          a3 = v60;
          goto LABEL_62;
        }

        if (v40 <= 0.0)
        {
          v40 = 0.0;
        }
      }

      v51 = v35;
      v9 = v62;
      if (*(v28 + 56) != v40)
      {
        goto LABEL_61;
      }

      outlined destroy of PathSet.Element(&v82);
      outlined consume of Path.Storage(v30, v29, v32, v51, v33);
      result = outlined destroy of PathSet.Element(&v82);
    }

    else
    {
      v56 = v29;
      v57 = v31;
      outlined copy of Path.Storage(v30, v29, v32, v31, v33);
      outlined init with copy of PathDrawingStyle(a5, v69);
      v43 = RBDrawingStateBeginLayer();
      type metadata accessor for GraphicsContext.Storage();
      v44 = swift_allocObject();
      *(v44 + 32) = xmmword_18DD85500;
      *(v44 + 48) = 1065353216;
      *(v44 + 56) = 0x7FF8000000000000;
      v45 = *(v28 + 16);
      v46 = *(v45 + 64);
      if (v46 == RBDrawingStateGetDefaultColorSpace())
      {
        *(v44 + 16) = v45;
      }

      else
      {
        v63 = v9;
        v47 = RBDrawingStateGetDisplayList();
        v48 = *(v28 + 32);
        v49 = *(v28 + 40);
        v50 = v48;
        v53 = v49;
        v54 = v47;
        if (v48 == 1)
        {
          v50 = *(v45 + 48);
          v49 = *(v45 + 56);
        }

        *&v69[0] = v50;
        *(&v69[0] + 1) = v49;
        type metadata accessor for GraphicsContext.Storage.Shared();
        swift_allocObject();
        outlined copy of EnvironmentValues?(v48, v53);
        *(v44 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v54, v69);
        v9 = v63;
      }

      *(v44 + 24) = v43;
      *(v44 + 64) = 0;
      *&v69[0] = v44;

      closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:)(v69, v86, &v88, a5, a7, a8);
      if (v9)
      {
        goto LABEL_72;
      }

      v9 = 0;

      RBDrawingStateDrawLayer();

      outlined destroy of PathDrawingStyle(a5);
      outlined consume of Path.Storage(v30, v56, v65, v57, v33);
      outlined destroy of PathSet.Element(&v82);
      outlined consume of Path.Storage(v30, v56, v65, v57, v33);
      result = outlined destroy of PathSet.Element(&v82);
      v13 = a4;
    }

    a3 = v60;
    v14 = v61;
LABEL_62:
    v20 = v66;
LABEL_63:
    if (!v20)
    {
      return result;
    }

    --v20;
    v15 = (v15 + 56);
  }

  __break(1u);
LABEL_72:

  RBDrawingStateDrawLayer();
  __break(1u);
LABEL_73:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void GraphicsContext.fill(_:with:matching:)(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (a3 || *(v9 + 16) != 1)
  {
    v51 = a5;

    specialized GraphicsContext.clipToLayer(opacity:options:content:)(0, &v51, v9, a3, a4, 1.0);

    v20 = v51;
    v21 = *MEMORY[0x1E695F040];
    v22 = *(MEMORY[0x1E695F040] + 8);
    v23 = *(MEMORY[0x1E695F040] + 16);
    v24 = *(MEMORY[0x1E695F040] + 24);
    v57.origin.x = *MEMORY[0x1E695F040];
    v57.origin.y = v22;
    v57.size.width = v23;
    v57.size.height = v24;
    IsNull = CGRectIsNull(v57);
    if (IsNull)
    {
      v26 = 0;
    }

    else
    {
      v26 = v21;
    }

    if (IsNull)
    {
      v27 = 0;
    }

    else
    {
      v27 = *&v22;
    }

    v52 = v26;
    v53 = v27;
    if (IsNull)
    {
      v28 = 0;
    }

    else
    {
      v28 = *&v23;
    }

    if (IsNull)
    {
      v29 = 0;
    }

    else
    {
      v29 = *&v24;
    }

    v54 = v28;
    v55 = v29;
    if (IsNull)
    {
      v30 = 6;
    }

    else
    {
      v30 = 0;
    }

    v56 = v30;
    v31 = *(a2 + 144);
    v48 = *(a2 + 128);
    v49 = v31;
    v50 = *(a2 + 160);
    v32 = *(a2 + 80);
    v44 = *(a2 + 64);
    v45 = v32;
    v33 = *(a2 + 112);
    v46 = *(a2 + 96);
    v47 = v33;
    v34 = *(a2 + 16);
    v40 = *a2;
    v41 = v34;
    v35 = *(a2 + 48);
    v42 = *(a2 + 32);
    v43 = v35;
    v36 = 256;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    GraphicsContext.draw(_:with:style:)(&v52, &v40, &v36, v20);
    outlined consume of Path.Storage(v26, v27, v28, v29, v30);
  }

  else
  {
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    v13 = *(v9 + 56);
    v52 = v10;
    v53 = v11;
    v54 = v12;
    v55 = v13;
    v14 = *(v9 + 64);
    v56 = v14;
    v15 = *(a2 + 144);
    v48 = *(a2 + 128);
    v49 = v15;
    v50 = *(a2 + 160);
    v16 = *(a2 + 80);
    v44 = *(a2 + 64);
    v45 = v16;
    v17 = *(a2 + 112);
    v46 = *(a2 + 96);
    v47 = v17;
    v18 = *(a2 + 16);
    v40 = *a2;
    v41 = v18;
    v19 = *(a2 + 48);
    v42 = *(a2 + 32);
    v43 = v19;
    v36 = 256;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    outlined copy of Path.Storage(v10, v11, v12, v13, v14);
    GraphicsContext.draw(_:with:style:)(&v52, &v40, &v36, a5);
    outlined consume of Path.Storage(v10, v11, v12, v13, v14);
  }
}

uint64_t PathSet.encode(to:)(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = v1[1];
  v6 = *(*v1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v4 + 32);
    v24 = v6 - 1;
    while (1)
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v30 = *(v8 + 6);
      v28 = v10;
      v29 = v11;
      v27 = v9;
      v12 = v3[1];
      v13 = v3[2];
      if (v12 >= v13)
      {
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return result;
        }

        if (v13 < v18)
        {
          outlined init with copy of PathSet.Element(&v27, v25);
          v19 = ProtobufEncoder.growBufferSlow(to:)(v18);
        }

        else
        {
          v3[1] = v18;
          v19 = (*v3 + v12);
          outlined init with copy of PathSet.Element(&v27, v25);
        }

        *v19 = 10;
      }

      else
      {
        *(*v3 + v12) = 10;
        v3[1] = v12 + 1;
        outlined init with copy of PathSet.Element(&v27, v25);
      }

      v25[0] = v27;
      v25[1] = v28;
      v25[2] = v29;
      v26 = v30;
      v14 = v3[1];
      v15 = v3[3];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 >= v16 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v17 + 1;
      *(v15 + 8 * v17 + 32) = v14;
      v3[3] = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v3[1] = v14 + 1;
      PathSet.Element.encode(to:)(v3);
      if (v2)
      {
        return outlined destroy of PathSet.Element(&v27);
      }

      ProtobufEncoder.endLengthDelimited()();
      result = outlined destroy of PathSet.Element(&v27);
      if (v24 == v7)
      {
        break;
      }

      ++v7;
      v8 = (v8 + 56);
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_33;
      }
    }
  }

  if (v5 != 0.0)
  {
    v20 = fabs(v5);
    if (v20 >= 65536.0)
    {
      v21 = 17;
    }

    else
    {
      v21 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v21);
    if (v20 < 65536.0)
    {
      v22 = v3[1];
      result = v22 + 4;
      if (!__OFADD__(v22, 4))
      {
        *&v5 = v5;
        if (v3[2] >= result)
        {
          v3[1] = result;
          *(*v3 + v22) = LODWORD(v5);
          return result;
        }

        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = LODWORD(v5);
      return result;
    }

    v23 = v3[1];
    result = v23 + 8;
    if (__OFADD__(v23, 8))
    {
      goto LABEL_35;
    }

    if (v3[2] < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v5;
    }

    else
    {
      v3[1] = result;
      *(*v3 + v23) = v5;
    }
  }

  return result;
}

void PathSet.init(from:)(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = 0.0;
  v8 = MEMORY[0x1E69E7CC0];
  if (v5 >= v6)
  {
LABEL_58:
    a1[3] = 0;
    *a2 = v8;
    *(a2 + 8) = v7;
    return;
  }

  while (1)
  {
    v9 = a1[3];
    if (v9)
    {
      v10 = a1[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_59;
      }

      a1[3] = 0;
    }

    v9 = ProtobufDecoder.decodeVarint()(v9);
    if (v2)
    {
      goto LABEL_64;
    }

    if (v9 < 8)
    {
LABEL_59:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      goto LABEL_64;
    }

LABEL_11:
    if (v9 >> 3 != 2)
    {
      break;
    }

    v23 = v9 & 7;
    if (v23 == 5)
    {
      v28 = a1[1];
      if (v6 < (v28 + 1))
      {
        goto LABEL_59;
      }

      v29 = *v28;
      a1[1] = v28 + 1;
      v7 = v29;
    }

    else
    {
      if (v23 == 2)
      {
        v27 = ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_64;
        }

        if (v27 < 0)
        {
          goto LABEL_68;
        }

        v24 = a1[1];
        if (v6 < v24 + v27)
        {
          goto LABEL_59;
        }

        a1[3] = 17;
        a1[4] = v24 + v27;
      }

      else
      {
        if (v23 != 1)
        {
          goto LABEL_59;
        }

        v24 = a1[1];
      }

      if (v6 < (v24 + 1))
      {
        goto LABEL_59;
      }

      v7 = *v24;
      a1[1] = v24 + 1;
    }

LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      goto LABEL_58;
    }
  }

  if (v9 >> 3 != 1)
  {
    v25 = v9 & 7;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v30 = ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_64;
        }

        if (v30 < 0)
        {
          goto LABEL_69;
        }

        v26 = a1[1] + v30;
        if (v6 < v26)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v25 != 5)
        {
          goto LABEL_59;
        }

        v26 = a1[1] + 4;
        if (v6 < v26)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      if ((v9 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_64;
        }

        goto LABEL_4;
      }

      if (v25 != 1)
      {
        goto LABEL_59;
      }

      v26 = a1[1] + 8;
      if (v6 < v26)
      {
        goto LABEL_59;
      }
    }

    a1[1] = v26;
    goto LABEL_4;
  }

  if ((v9 & 7) != 2)
  {
    goto LABEL_61;
  }

  v11 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 2) = v14 + 1;
  *&v11[8 * v14 + 32] = v6;
  a1[5] = v11;
  v15 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_64;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = a1[1] + v15;
    if (v6 >= v16)
    {
      a1[2] = v16;
      PathSet.Element.init(from:)(a1, v39);
      v17 = a1[5];
      if (!*(v17 + 2))
      {
        goto LABEL_66;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v18 = *(v17 + 2);
        if (!v18)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        v18 = *(v17 + 2);
        if (!v18)
        {
          goto LABEL_67;
        }
      }

      v19 = v18 - 1;
      v6 = *&v17[8 * v19 + 32];
      *(v17 + 2) = v19;
      a1[5] = v17;
      a1[2] = v6;
      v35 = v39[0];
      v36 = v39[1];
      v37 = v39[2];
      v38 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      if (v21 >= v20 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v8);
      }

      *(v8 + 2) = v21 + 1;
      v22 = &v8[56 * v21];
      *(v22 + 10) = v38;
      *(v22 + 3) = v36;
      *(v22 + 4) = v37;
      *(v22 + 2) = v35;
      goto LABEL_4;
    }

LABEL_61:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
LABEL_64:

    return;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  __break(1u);
  v33 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v34 = *(v33 + 2);
  if (v34)
  {
    v31 = v34 - 1;
    v32 = *&v33[8 * v31 + 32];
    *(v33 + 2) = v31;
    a1[5] = v33;
    a1[2] = v32;
    goto LABEL_64;
  }

  __break(1u);
}

void PathSet.Element.encode(to:)(uint64_t a1)
{
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  *&v8[8 * v10 + 32] = v7;
  *(a1 + 24) = v8;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v7 + 1;
    Path.encode(to:)(a1);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
      if (v4)
      {
        ProtobufEncoder.encodeVarint(_:)(0x10uLL);
        ProtobufEncoder.encodeVarint(_:)(v4);
      }

      ProtobufEncoder.encodeVarint(_:)(0x18uLL);
      ProtobufEncoder.encodeVarint(_:)(v5);
      if (v6)
      {
        ProtobufEncoder.encodeVarint(_:)(0x20uLL);
        ProtobufEncoder.encodeVarint(_:)(v6);
      }
    }
  }
}

void PathSet.Element.init(from:)(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v6 = 0;
    LOBYTE(v7) = 0;
    LODWORD(v8) = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v40 = 6;
LABEL_4:
    a1[3] = 0;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v40;
    *(a2 + 40) = v6;
    *(a2 + 48) = v7;
    *(a2 + 52) = v8;
    return;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v40 = 6;
  while (1)
  {
    v13 = a1[3];
    if (v13)
    {
      v14 = a1[4];
      if (v4 < v14)
      {
        goto LABEL_13;
      }

      if (v14 < v4)
      {
        goto LABEL_69;
      }

      a1[3] = 0;
    }

    v13 = ProtobufDecoder.decodeVarint()(v13);
    if (v2)
    {
      goto LABEL_70;
    }

    if (v13 <= 7)
    {
      goto LABEL_69;
    }

LABEL_13:
    v15 = v13 >> 3;
    v16 = v13 & 7;
    if (v13 >> 3 <= 2)
    {
      break;
    }

    if (v15 == 3)
    {
      if ((v13 & 7) != 0)
      {
        if (v16 != 2)
        {
          goto LABEL_69;
        }

        v13 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_70;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        v28 = a1[1] + v13;
        if (v5 < v28)
        {
LABEL_69:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_70:
          v41[0] = v9;
          v41[1] = v10;
          v41[2] = v11;
          v41[3] = v12;
          v42 = v40;
          *v43 = *v53;
          *&v43[3] = *&v53[3];
          v44 = v6;
          v45 = v7;
          v46 = v49;
          v47 = v50;
          v48 = v8;
          outlined destroy of PathSet.Element(v41);
          return;
        }

        a1[3] = 24;
        a1[4] = v28;
      }

      v29 = ProtobufDecoder.decodeVarint()(v13);
      if (v2)
      {
        goto LABEL_70;
      }

      LODWORD(v7) = v29 == 1;
    }

    else
    {
      if (v15 != 4)
      {
LABEL_34:
        if ((v13 & 7) > 1)
        {
          if (v16 == 2)
          {
            v30 = ProtobufDecoder.decodeVarint()(v13);
            if (v2)
            {
              goto LABEL_70;
            }

            if (v30 < 0)
            {
              goto LABEL_80;
            }

            v21 = a1[1] + v30;
            if (v5 < v21)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v16 != 5)
            {
              goto LABEL_69;
            }

            v21 = a1[1] + 4;
            if (v5 < v21)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          if ((v13 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v13);
            if (v2)
            {
              goto LABEL_70;
            }

            goto LABEL_6;
          }

          if (v16 != 1)
          {
            goto LABEL_69;
          }

          v21 = a1[1] + 8;
          if (v5 < v21)
          {
            goto LABEL_69;
          }
        }

        a1[1] = v21;
        goto LABEL_6;
      }

      if ((v13 & 7) != 0)
      {
        if (v16 != 2)
        {
          goto LABEL_69;
        }

        v13 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_70;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        v19 = a1[1] + v13;
        if (v5 < v19)
        {
          goto LABEL_69;
        }

        a1[3] = 32;
        a1[4] = v19;
      }

      v20 = ProtobufDecoder.decodeVarint()(v13);
      if (v2)
      {
        goto LABEL_70;
      }

      v8 = v20;
    }

LABEL_6:
    v4 = a1[1];
    if (v4 >= v5)
    {
      goto LABEL_4;
    }
  }

  if (v15 != 1)
  {
    if (v15 != 2)
    {
      goto LABEL_34;
    }

    if ((v13 & 7) != 0)
    {
      if (v16 != 2)
      {
        goto LABEL_69;
      }

      v13 = ProtobufDecoder.decodeVarint()(v13);
      if (v2)
      {
        goto LABEL_70;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      v17 = a1[1] + v13;
      if (v5 < v17)
      {
        goto LABEL_69;
      }

      a1[3] = 16;
      a1[4] = v17;
    }

    v18 = ProtobufDecoder.decodeVarint()(v13);
    if (v2)
    {
      goto LABEL_70;
    }

    v6 = v18;
    goto LABEL_6;
  }

  if (v16 != 2)
  {
    goto LABEL_69;
  }

  v35 = v12;
  v36 = v9;
  v12 = v11;
  v37 = v10;
  v38 = v7;
  v9 = v6;
  v6 = v2;
  v11 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  v8 = *(v11 + 2);
  v23 = *(v11 + 3);
  v10 = v8 + 1;
  if (v8 >= v23 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v8 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 2) = v10;
  *&v11[8 * v8 + 32] = v5;
  a1[5] = v11;
  v24 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    LODWORD(v8) = v7;
    v6 = v9;
    LOBYTE(v7) = v38;
    v9 = v36;
    v10 = v37;
    v11 = v12;
    v12 = v35;
    goto LABEL_70;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    v8 = v7;
    v11 = v12;
    v25 = a1[1] + v24;
    if (v5 < v25)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      v6 = v9;
      LOBYTE(v7) = v38;
      v9 = v36;
      v10 = v37;
      v12 = v35;
      goto LABEL_70;
    }

    a1[2] = v25;
    specialized Path.init(from:)(a1, v51);
    v6 = v9;
    v11 = a1[5];
    LODWORD(v7) = v38;
    if (!*(v11 + 2))
    {
      goto LABEL_75;
    }

    v10 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    v26 = *(v11 + 2);
    if (!v26)
    {
      goto LABEL_76;
    }

    v27 = v26 - 1;
    v5 = *&v11[8 * v27 + 32];
    *(v11 + 2) = v27;
    outlined consume of Path.Storage(v36, v37, v12, v35, v40);
    a1[5] = v11;
    a1[2] = v5;
    v9 = v51[0];
    v11 = v51[2];
    v12 = v51[3];
    v40 = v52;
    v10 = v51[1];
    goto LABEL_6;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  __break(1u);
  v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v34 = *(v33 + 2);
  if (v34)
  {
    v31 = v34 - 1;
    v32 = *&v33[8 * v31 + 32];
    *(v33 + 2) = v31;
    a1[5] = v33;
    a1[2] = v32;
    v9 = v36;
    goto LABEL_70;
  }

  __break(1u);
}

BOOL specialized static PathSet.Element.== infix(_:_:)(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v2;
  v13 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = a2[1];
  v14[0] = *a2;
  v14[1] = v6;
  v15 = a2[2].i8[0];
  v7 = a2[2].i64[1];
  v8 = a2[3].i8[0];
  v9 = a2[3].i32[1];
  if ((specialized static Path.Storage.== infix(_:_:)(v12, v14) & 1) == 0)
  {
    return 0;
  }

  v10 = ((v4 ^ v8) & 1) == 0 && v5 == v9;
  return v3 == v7 && v10;
}

void type metadata accessor for _ContiguousArrayStorage<PathSet.Element>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>);
    }
  }
}

uint64_t assignWithCopy for PathSet.Element(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t assignWithTake for PathSet.Element(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t getEnumTagSinglePayload for PathSet.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PathSet.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t outlined destroy of _SymbolEffect.Added(uint64_t a1)
{
  (off_1F0066518->destroy)();
  return a1;
}

{
  outlined consume of _SymbolEffect.Storage(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  return a1;
}

uint64_t outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

double destroy for GlassContainerResolver(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for GlassContainerResolver(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;

  return a1;
}

uint64_t assignWithCopy for GlassContainerResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;

  return a1;
}

uint64_t assignWithTake for GlassContainerResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainerResolver(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for GlassContainerResolver(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void static GlassContainerResolver._makeView(view:inputs:)(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a3;
  v112 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  *v107 = *a2;
  *&v107[16] = v7;
  v8 = *(a2 + 48);
  v108 = *(a2 + 32);
  v9 = *a1;
  v109 = v8;
  v110 = *(a2 + 64);
  v111 = *(a2 + 80);
  v10 = *&v107[16];
  v11 = *&v107[28];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(*v107, v100);
  Strong = swift_weakLoadStrong();
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOhTm_0(v100, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
  v67 = Strong;
  if (Strong)
  {
    v64 = v11;
    v65 = 0;
    v66 = a5;
    closure #1 in static GlassContainerResolver._makeView(view:inputs:)(1, v68, a4, v13);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    closure #2 in static GlassContainerResolver._makeView(view:inputs:)(1, v68, a4, v14);
    v15 = AGGraphCreateOffsetAttribute2();
    v16 = specialized static GraphHost.currentHost.getter();
    swift_beginAccess();
    v17 = *(v16 + 64);

    swift_beginAccess();
    v18 = *(v10 + 16);
    v63 = a4;
    v62 = v9;
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v19 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v20 = specialized CachedEnvironment.attribute<A>(id:_:)(v19, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    _s7SwiftUI8Resolver33_04178B540DC3B0BFBD7679A049CE48C7LLVSgWOi0_(v99);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    memcpy(&v100[4] + 8, v99, 0x118uLL);
    *&v100[0] = __PAIR64__(v15, OffsetAttribute2);
    v23 = v64;
    *(&v100[0] + 1) = __PAIR64__(v18, v64);
    *&v100[1] = __PAIR64__(v17, v20);
    v24 = v67;
    *(&v100[1] + 1) = v67;
    *&v100[2] = 0;
    *(&v100[2] + 1) = v22;
    *&v100[3] = v21;
    *(&v100[3] + 1) = v21;
    *&v100[4] = v21;
    memcpy(v98, v100, 0x160uLL);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassContainerResolvedStorage and conformance GlassContainerResolvedStorage();

    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of GlassContainerResolvedStorage(v100);
    v25 = AGGraphCreateOffsetAttribute2();
    v26 = AGGraphCreateOffsetAttribute2();
    v97[0] = *v107;
    *(v97 + 12) = *&v107[12];
    v93 = v108;
    v94 = v109;
    v95 = v110;
    v96 = v111;
    v27 = *(v10 + 16);
    *&v101 = __PAIR64__(v26, v23);
    DWORD2(v101) = v27;
    *&v102 = v24;
    WORD4(v102) = 0x8000;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

    outlined init with copy of _ViewInputs(v107, v98);
    lazy protocol witness table accessor for type GlassContainerResolvedTransaction and conformance GlassContainerResolvedTransaction();
    v28 = Attribute.init<A>(body:value:flags:update:)();

    *&v98[0] = __PAIR64__(v62, v25);
    MEMORY[0x1EEE9AC00](v29);
    v30 = v68;
    v58 = v68;
    v31 = v63;
    inited = type metadata accessor for GlassContainerResolver.InitContent(0, v68, v63, v32);
    swift_getWitnessTable(protocol conformance descriptor for GlassContainerResolver<A>.InitContent, inited);
    v60 = v33;
    v34 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v98, closure #1 in Attribute.init<A>(_:)partial apply, v57, inited, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v35);
    _GraphValue.init(_:)(v101, &v69);
    v36 = v69;
    v98[0] = v97[0];
    *(v98 + 12) = *(v97 + 12);
    v98[2] = v93;
    v98[3] = v94;
    v98[4] = v95;
    LODWORD(v65) = v28;
    HIDWORD(v98[1]) = v28;
    LODWORD(v98[5]) = v96;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v87 = v98[2];
    v88 = v98[3];
    v89 = v98[4];
    v90 = v98[5];
    v85 = v98[0];
    v86 = v98[1];
    v38 = v98[2];
    LODWORD(v87) = 0;
    *v73 = v36;
    v91[0] = v98[0];
    v91[1] = v98[1];
    v92 = v98[5];
    v91[3] = v98[3];
    v91[4] = v98[4];
    v91[2] = v87;
    v81 = v87;
    v82 = v98[3];
    v83 = v98[4];
    v84 = v98[5];
    v79 = v98[0];
    v80 = v98[1];
    v39 = v31;
    v40 = *(v31 + 24);
    outlined init with copy of _ViewInputs(v98, &v101);
    outlined init with copy of _ViewInputs(v91, &v101);
    v40(&v70, v73, &v79, v30, v39);
    v103 = v81;
    v104 = v82;
    v105 = v83;
    v106 = v84;
    v101 = v79;
    v102 = v80;
    outlined destroy of _ViewInputs(&v101);
    LODWORD(v87) = v38;
    if (ShouldRecordTree)
    {
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v70, &v85);
      AGSubgraphEndTreeElement();
    }

    v81 = v87;
    v82 = v88;
    v83 = v89;
    v84 = v90;
    v79 = v85;
    v80 = v86;
    outlined destroy of _ViewInputs(&v79);
    v41 = v70;
    v42 = v71;
    v43 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v70);
    v44 = v66;
    if ((v43 & 0x100000000) != 0)
    {
      *v73 = v97[0];
      *&v73[12] = *(v97 + 12);
      v74 = v65;
      v75 = v93;
      v76 = v94;
      v77 = v95;
      v78 = v96;
      outlined destroy of _ViewInputs(v73);
    }

    else
    {
      v73[0] = 0;
      PreferencesOutputs.subscript.setter(v43, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

      *v73 = v97[0];
      *&v73[12] = *(v97 + 12);
      v74 = v65;
      v75 = v93;
      v76 = v94;
      v77 = v95;
      v78 = v96;
      outlined destroy of _ViewInputs(v73);
      v41 = v70;
      v42 = v71;
    }

    v56 = v72;
    *v44 = v41;
    *(v44 + 8) = v42;
    *(v44 + 12) = v56;
  }

  else
  {
    *&v100[0] = MEMORY[0x1E69E7CC0];
    v45 = Attribute.init<A>(body:value:flags:update:)();
    *&v100[0] = __PAIR64__(v9, v45);
    MEMORY[0x1EEE9AC00](v45);
    v46 = v68;
    v58 = v68;
    inited = type metadata accessor for GlassContainerResolver.InitContent(0, v68, a4, v47);
    swift_getWitnessTable(protocol conformance descriptor for GlassContainerResolver<A>.InitContent, inited);
    v60 = v48;
    v49 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v100, partial apply for closure #1 in Attribute.init<A>(_:), v57, inited, MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v50);
    _GraphValue.init(_:)(LODWORD(v98[0]), v91);
    v51 = v91[0];
    v52 = AGSubgraphShouldRecordTree();
    v53 = v46;
    if (v52)
    {
      AGSubgraphBeginTreeElement();
    }

    v99[2] = v108;
    v99[3] = v109;
    v99[4] = v110;
    LODWORD(v99[5]) = v111;
    v99[0] = *v107;
    v99[1] = *&v107[16];
    v54 = v108;
    LODWORD(v99[2]) = 0;
    LODWORD(v85) = v51;
    v98[0] = *v107;
    v98[1] = *&v107[16];
    LODWORD(v98[5]) = v111;
    v98[3] = v109;
    v98[4] = v110;
    v98[2] = v99[2];
    v103 = v99[2];
    v104 = v109;
    v105 = v110;
    v106 = v111;
    v101 = *v107;
    v102 = *&v107[16];
    v55 = *(a4 + 24);
    outlined init with copy of _ViewInputs(v107, v100);
    outlined init with copy of _ViewInputs(v98, v100);
    v55(&v85, &v101, v53, a4);
    v100[2] = v103;
    v100[3] = v104;
    v100[4] = v105;
    LODWORD(v100[5]) = v106;
    v100[0] = v101;
    v100[1] = v102;
    outlined destroy of _ViewInputs(v100);
    LODWORD(v99[2]) = v54;
    if (v52)
    {
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, v99);
      AGSubgraphEndTreeElement();
    }

    v103 = v99[2];
    v104 = v99[3];
    v105 = v99[4];
    v106 = v99[5];
    v101 = v99[0];
    v102 = v99[1];
    outlined destroy of _ViewInputs(&v101);
  }
}

uint64_t closure #1 in static GlassContainerResolver._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for GlassContainerResolver(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v8, &type metadata for GlassContainer.Storage, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t closure #2 in static GlassContainerResolver._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for GlassContainerResolver(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 32, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_0, v8, &type metadata for GeometryProxy, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

double GlassContainerResolver.InitContent.value.getter@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v6 = a1;
  v79 = *MEMORY[0x1E69E9840];
  v8 = HIDWORD(a1);
  v69 = type metadata accessor for ObservationTracking._AccessList();
  v9 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v59[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v59[-v15];
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v64 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v59[-v23];
  v70 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v68 = &v59[-v28];
  v73 = a2;
  v74 = a3;
  v75 = v6;
  v76 = v8;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v29 = static ObservationCenter._current;
  swift_beginAccess();
  v30 = pthread_getspecific(v29[2]);
  v31 = v69;
  if (!v30)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(v29[2], v32);
    v78 = type metadata accessor for ObservationCenter();
    *&v77 = v29[3];
    outlined init with take of Any(&v77, v32);
    v31 = v69;

    v30 = v32;
  }

  outlined init with copy of Any(v30, &v77);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v71;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    *(v33 + 24) = v29;
    goto LABEL_9;
  }

  v61 = v11;
  v60 = CurrentAttribute;
  v63 = a4;
  swift_beginAccess();
  v62 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  v35 = (*(v9 + 56))(v21, 1, 1, v31);
  MEMORY[0x1EEE9AC00](v35);
  *&v59[-32] = a2;
  *&v59[-24] = partial apply for closure #1 in GlassContainerResolver.InitContent.value.getter;
  *&v59[-16] = &v72;
  v36 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v21, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v59[-48], v64, v36, a2, MEMORY[0x1E69E7288], &v71);
  v37 = v70 + 32;
  a4 = *(v70 + 32);
  a4(v68, v26, a2);
  v38 = v21;
  v39 = v67;
  outlined init with take of ObservationTracking._AccessList?(v38, v67);
  outlined init with copy of Logger?(v39, v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  if ((*(v9 + 48))(v18, 1, v31) == 1)
  {
    _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOhTm_0(v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v40 = v18;
    goto LABEL_12;
  }

  v70 = v37;
  v41 = v18;
  v42 = v31;
  v31 = a2;
  v43 = v66;
  v11 = *(v9 + 32);
  (v11)(v66, v41, v42);
  (*(v9 + 16))(v65, v43, v42);
  v29 = *(v33 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 24) = v29;
  a2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v46 = v29[2];
  v45 = v29[3];
  if (v46 >= v45 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v29);
  }

  v29[2] = v46 + 1;
  v47 = v29 + ((*(a2 + 80) + 32) & ~*(a2 + 80)) + *(a2 + 72) * v46;
  v9 = a2;
  v48 = v69;
  (v11)(v47, v65, v69);
  *(v33 + 24) = v29;
  (*(a2 + 8))(v66, v48);
  a2 = v31;
  v40 = v67;
LABEL_12:
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOhTm_0(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  a4(v63, v68, a2);
  v49 = *(v33 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v9 + 16);
    v51 = v9 + 16;
    v70 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);
    v68 = v49;

    v55 = v60;
    v56 = v69;
    v57 = v61;
    do
    {
      (v70)(v57, v53, v56);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v57);
      (*(v51 - 8))(v57, v56);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v33 + 24) = v62;

  return result;
}

uint64_t closure #1 in GlassContainerResolver.InitContent.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v7 = type metadata accessor for GlassContainerResolver(0, a2, a3, a4);
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in GlassContainerResolver.InitContent.value.getter, v9, v7, a2, a5);
}

double closure #1 in closure #1 in GlassContainerResolver.InitContent.value.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  AGGraphGetValue();

  v2(v3);

  return result;
}

uint64_t GlassContainerResolvedStorage.resolver.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), sizeof(__dst));
  memcpy(v12, (v1 + 72), sizeof(v12));
  if (_s7SwiftUI8Resolver33_04178B540DC3B0BFBD7679A049CE48C7LLVSgWOg(v12) == 1)
  {
    v3 = *(v1 + 24);
    v4 = MEMORY[0x1E69E7CC0];
    __src[1] = MEMORY[0x1E69E7CC0];
    __src[2] = MEMORY[0x1E69E7CC0];
    LOWORD(__src[3]) = 0;

    __src[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI11ResolvedIDs33_04178B540DC3B0BFBD7679A049CE48C7LLV3KeyO_AC9SeedValueVyAC14GlassContainerO5EntryV8StableIDVGTt0g5Tf4g_n(v4);
    LODWORD(__src[5]) = -1;
    __src[6] = MEMORY[0x1E69E7CD0];
    __src[7] = 0;
    __src[8] = 0;
    __src[9] = v4;
    __src[10] = MEMORY[0x1E69E7CD0];
    __src[11] = MEMORY[0x1E69E7CD0];
    __src[12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_SayAIGTt0g5Tf4g_n(v4);
    __src[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_SayAIGTt0g5Tf4g_n(v4);
    __src[14] = 0;
    __src[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(v4);
    __src[16] = v4;
    __src[17] = v4;
    __src[18] = 0;
    __src[19] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(v4);
    __src[20] = v4;
    __src[21] = v4;
    memset(&__src[22], 0, 72);
    v7[284] = 1;
    LOBYTE(__src[31]) = 1;
    EnvironmentValues.init()(&__src[32]);
    __src[34] = 0;
    __src[0] = v3;
    memcpy(v8, __src, sizeof(v8));
    memcpy(v9, v8, sizeof(v9));
    _ViewInputs.base.modify();
    memcpy(__src, (v1 + 72), sizeof(__src));
    outlined init with copy of Resolver(v8, v7);
    outlined destroy of SeedValue<GlassContainer.EntryState>(__src, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
    memcpy((v1 + 72), v9, 0x118uLL);
    v5 = v8;
  }

  else
  {
    v5 = v12;
  }

  memcpy(a1, v5, 0x118uLL);
  return outlined init with copy of Resolver?(__dst, __src, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
}

void GlassContainerResolvedStorage.updateValue()(__n128 a1)
{
  v2 = v1;
  v27 = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  AGGraphRegisterDependency();
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 1);
  v7 = *(Value + 2);
  v8 = *(Value + 3);
  v9 = swift_allocObject();
  *(v9 + 16) = 2;

  v10 = specialized GlassContainerResolvedStorage.resolvedModelEntries(storage:)(v7);
  AGGraphClearUpdate();
  v11 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v11);
  v21 = v6;
  if (v12 && v12[9] && (specialized getter of storageMatches #1 in GlassContainerResolvedStorage.updateValue()(v9, v7, v1) & 1) == 0)
  {
    v14 = GlassContainerResolvedStorage.animatedChangeUpdate(newStorage:newModelEntries:)(v6, v7, v8, v10, v5);
    goto LABEL_11;
  }

  v13 = *(v3 + 148);
  if (v13 >> 14 == 1)
  {
    if (specialized getter of storageMatches #1 in GlassContainerResolvedStorage.updateValue()(v9, v7, v2))
    {
      v14 = specialized GlassContainerResolvedStorage.animatingUpdate(newStorage:newModelEntries:update:)(v10, v13 & 1);
      goto LABEL_11;
    }
  }

  else if (!(v13 >> 14))
  {
    v14 = specialized GlassContainerResolvedStorage.preparingUpdate(newStorage:newModelEntries:update:)((v13 >> 8) & 1);
LABEL_11:
    v22 = v14;
    goto LABEL_12;
  }

  swift_beginAccess();
  specialized SeedValues.collect()();
  swift_endAccess();
  GlassContainerResolvedStorage.resolver.getter(__src);
  specialized SeedValues.collect()();
  memcpy(__dst, __src, 0x118uLL);
  _ViewInputs.base.modify();
  memcpy(v25, v2 + 9, 0x118uLL);
  outlined destroy of SeedValue<GlassContainer.EntryState>(v25, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  memcpy(v2 + 9, __dst, 0x118uLL);
  v22 = v10;

LABEL_12:
  memcpy(__dst, v2, sizeof(__dst));
  v15 = __dst[3];
  memcpy(v23, v2, sizeof(v23));
  outlined init with copy of GlassContainerResolvedStorage(__dst, v25);
  v16 = AGGraphGetValue();
  v17 = *v16;
  v18 = *(v16 + 1);

  v19 = specialized GlassContainerResolvedStorage.resolvedStorage(storage:entries:)(v18, &v22, v17);

  memcpy(v25, v23, sizeof(v25));
  outlined destroy of GlassContainerResolvedStorage(v25);

  v20 = *(v15 + 148);
  v23[0] = v19;
  LOWORD(v23[1]) = v20;
  AGGraphSetOutputValue();

  *(v2 + 4) = v5;
  v2[5] = v21;
  v2[6] = v7;
  v2[7] = v8;
  v2[8] = v10;
}

uint64_t GlassContainerResolvedStorage.animatedChangeUpdate(newStorage:newModelEntries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  memcpy(__dst, v5, sizeof(__dst));
  v11 = __dst[8];
  memcpy(__src, v5, sizeof(__src));
  outlined init with copy of GlassContainerResolvedStorage(__dst, v27);
  GlassContainerResolvedStorage.resolverContext(storage:)(a1, a2, a3, v33, a5);
  memcpy(v27, __src, sizeof(v27));
  outlined destroy of GlassContainerResolvedStorage(v27);
  v28[7] = *&v33[112];
  v28[8] = *&v33[128];
  v28[9] = *&v33[144];
  v29 = *&v33[160];
  v28[3] = *&v33[48];
  v28[4] = *&v33[64];
  v28[5] = *&v33[80];
  v28[6] = *&v33[96];
  v28[0] = *v33;
  v28[1] = *&v33[16];
  v28[2] = *&v33[32];
  __src[8] = *&v33[128];
  __src[9] = *&v33[144];
  *&__src[10] = *&v33[160];
  __src[4] = *&v33[64];
  __src[5] = *&v33[80];
  __src[6] = *&v33[96];
  __src[7] = *&v33[112];
  __src[0] = *v33;
  __src[1] = *&v33[16];
  __src[2] = *&v33[32];
  __src[3] = *&v33[48];
  GlassContainerResolvedStorage.resolver.getter(v24);
  Resolver.prepare(oldEntries:newEntries:context:)(v11, a4, __src);
  memcpy(v30, v24, sizeof(v30));
  _ViewInputs.base.modify();
  memcpy(v31, (v5 + 72), sizeof(v31));
  v12 = MEMORY[0x1E69E6720];
  outlined destroy of SeedValue<GlassContainer.EntryState>(v31, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  memcpy((v5 + 72), v30, 0x118uLL);
  GlassContainerResolvedStorage.resolver.getter(v23);
  Resolver.resolve()();
  memcpy(v32, v23, sizeof(v32));
  _ViewInputs.base.modify();
  memcpy(v33, (v5 + 72), sizeof(v33));
  outlined destroy of SeedValue<GlassContainer.EntryState>(v33, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, v12, type metadata accessor for Resolver?);
  memcpy((v5 + 72), v32, 0x118uLL);
  GlassContainerResolvedStorage.resolver.getter(__src);
  outlined destroy of Resolver(__src);
  if (BYTE8(__src[1]) == 1)
  {
    GlassContainerResolvedStorage.resolver.getter(v21);
    outlined destroy of Resolver(v21);
    v13 = __dst[3];
    if (v22)
    {
      v14 = 1;
    }

    else
    {
      v14 = 257;
    }

    *(__dst[3] + 148) = v14;
    if (swift_weakLoadStrong())
    {
      v15 = *(v13 + 112);
      AGGraphClearUpdate();
      v16 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v17 = AGCreateWeakAttribute();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      specialized GraphHost.continueTransaction<A>(_:)(v17);
    }

    GlassContainerResolvedStorage.resolver.getter(v19);
    outlined destroy of Resolver.Context(v28);
    memcpy(v20, v19, sizeof(v20));
    a4 = v20[1];

    outlined destroy of Resolver(v20);
  }

  else
  {

    outlined destroy of Resolver.Context(v28);
  }

  return a4;
}

__n128 GlassContainerResolvedStorage.resolverContext(storage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  AGGraphClearUpdate();
  v22 = *AGGraphGetValue();

  AGGraphSetUpdate();
  AGGraphClearUpdate();
  Value = AGGraphGetValue();
  v14 = *Value;
  v13 = Value[1];

  AGGraphSetUpdate();
  AGGraphClearUpdate();
  v15 = *AGGraphGetValue();
  AGGraphSetUpdate();
  AGGraphClearUpdate();
  v16 = AGGraphGetValue();
  v23 = *v16;
  v24 = *(v16 + 16);
  v25 = *(v16 + 32);
  v26 = *(v16 + 48);
  AGGraphSetUpdate();

  v17 = *AGGraphGetValue();
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = a5;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  *(a4 + 64) = a5;
  *(a4 + 72) = v17;
  *(a4 + 80) = v15;
  result = v23;
  *(a4 + 132) = v26;
  *(a4 + 116) = v25;
  *(a4 + 100) = v24;
  *(a4 + 84) = v23;
  *(a4 + 136) = 0;
  *(a4 + 144) = v14;
  *(a4 + 152) = v13;
  *(a4 + 160) = v22;
  return result;
}

__n128 Resolver.prepare(oldEntries:newEntries:context:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = a3[9];
  v34 = a3[8];
  v35 = v6;
  v36 = *(a3 + 20);
  v7 = a3[5];
  v30 = a3[4];
  v31 = v7;
  v8 = a3[7];
  v32 = a3[6];
  v33 = v8;
  v9 = a3[1];
  v26 = *a3;
  v27 = v9;
  v10 = a3[3];
  v28 = a3[2];
  v29 = v10;

  *(v3 + 16) = a1;

  *(v3 + 8) = a2;
  *(v3 + 24) = 0;
  *(v3 + 64) = *(a2 + 16);

  v11 = MEMORY[0x1E69E7CC0];
  *(v3 + 72) = MEMORY[0x1E69E7CC0];

  v12 = MEMORY[0x1E69E7CD0];
  *(v3 + 80) = MEMORY[0x1E69E7CD0];

  *(v3 + 88) = v12;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_SayAIGTt0g5Tf4g_n(v11);

  *(v3 + 96) = v13;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_SayAIGTt0g5Tf4g_n(v11);

  *(v3 + 104) = v14;
  v15 = *(v3 + 256);
  v37[8] = *(v3 + 240);
  v37[9] = v15;
  v38 = *(v3 + 272);
  v16 = *(v3 + 192);
  v37[4] = *(v3 + 176);
  v37[5] = v16;
  v17 = *(v3 + 224);
  v37[6] = *(v3 + 208);
  v37[7] = v17;
  v18 = *(v3 + 128);
  v37[0] = *(v3 + 112);
  v37[1] = v18;
  v19 = *(v3 + 160);
  v37[2] = *(v3 + 144);
  v37[3] = v19;
  outlined init with copy of Resolver.Context(&v26, v25);
  outlined destroy of Resolver.Context(v37);
  v20 = v35;
  *(v3 + 240) = v34;
  *(v3 + 256) = v20;
  *(v3 + 272) = v36;
  v21 = v31;
  *(v3 + 176) = v30;
  *(v3 + 192) = v21;
  v22 = v33;
  *(v3 + 208) = v32;
  *(v3 + 224) = v22;
  v23 = v27;
  *(v3 + 112) = v26;
  *(v3 + 128) = v23;
  result = v29;
  *(v3 + 144) = v28;
  *(v3 + 160) = result;
  return result;
}

void Resolver.resolve()()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v10 = v0[1];
    v11 = *(v10 + 16);
    if (!v11)
    {
      return;
    }

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_63;
  }

  v63[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = v63[0];
  v6 = (v2 + 360);
  v7 = *(v63[0] + 16);
  do
  {
    v8 = *v6;
    v63[0] = v5;
    v9 = *(v5 + 24);
    if (v7 >= v9 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7 + 1, 1);
      v5 = v63[0];
    }

    v6 += 43;
    *(v5 + 16) = v7 + 1;
    *(v5 + 8 * v7++ + 32) = v8;
    --v3;
  }

  while (v3);
  v10 = v0[1];
  v11 = *(v10 + 16);
  if (v11)
  {
LABEL_63:
    v63[0] = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v4;
    v55 = (v10 + 360);
    v56 = *(v4 + 16);
    do
    {
      v57 = *v55;
      v63[0] = v12;
      v58 = *(v12 + 24);
      if (v56 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v56 + 1, 1);
        v12 = v63[0];
      }

      v55 += 43;
      *(v12 + 16) = v56 + 1;
      *(v12 + 8 * v56++ + 32) = v57;
      --v11;
    }

    while (v11);
    goto LABEL_8;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v63[0] = v4;
  specialized CollectionChanges.formChanges<A, B>(from:to:)(v5, v12, partial apply for specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:));

  v0[9] = v4;
  memcpy(__dst, v0, sizeof(__dst));
  v13 = __dst[9];
  memcpy(__src, v1, sizeof(__src));
  outlined init with copy of Resolver(__dst, v63);
  specialized Resolver.log(_:)(__src, v5, v12);

  memcpy(v63, __src, 0x118uLL);
  outlined destroy of Resolver(v63);
  _s7SwiftUI17CollectionChangesV10ProjectionV4kind7changesAEyxq__qd__GAC7ElementO4KindOyxq___G_SayAJyxq__GGtcfCSi_SiSnySiG_APtTt2B5Tm(0, v13, __src);
  v14 = __src[1];
  v15 = __src[2];
  v16 = __src[3];
  if (__src[2] != __src[3])
  {
    v24 = LOBYTE(__src[0]);

    while ((v15 & 0x8000000000000000) == 0)
    {
      v25 = *(v14 + 16);
      if (v15 >= v25)
      {
        goto LABEL_69;
      }

      v26 = v14 + 32 + 40 * v15;
      if (*(v26 + 32) >= 2u)
      {
        goto LABEL_78;
      }

      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = v16;
      if ((v15 + 1) < v16)
      {
        if (v15 + 1 != v25)
        {
          v30 = (v14 + 104 + 40 * v15);
          v29 = v15 + 1;
          while (1)
          {
            v32 = *v30;
            v30 += 40;
            v31 = v32;
            if (v32)
            {
              if (v31 == 1)
              {
                if (v24 == 1)
                {
                  goto LABEL_31;
                }
              }

              else if (v24 == 2)
              {
                goto LABEL_31;
              }
            }

            else if (!v24)
            {
              goto LABEL_31;
            }

            if (v25 == ++v29)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_31:
      if (v27 != v28)
      {
        if (v28 < v27)
        {
          goto LABEL_72;
        }

        if (v27 >= v28)
        {
          goto LABEL_73;
        }

        do
        {
          v33 = v27 + 1;
          Resolver.updateRemoval(_:)(v27);
          v27 = v33;
        }

        while (v28 != v33);
      }

      v15 = v29;
      if (v29 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    __src[0] = 0xD000000000000015;
    __src[1] = 0x800000018DD74EE0;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v59);

    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_78:
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      __src[0] = 0x2064696C61766E69;
      __src[1] = 0xEF203A7865646E69;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v60);
    }
  }

LABEL_10:

  _s7SwiftUI17CollectionChangesV10ProjectionV4kind7changesAEyxq__qd__GAC7ElementO4KindOyxq___G_SayAJyxq__GGtcfCSi_SiSnySiG_APtTt2B5Tm(1, v1[9], __src);
  v17 = __src[1];
  v18 = __src[2];
  v19 = __src[3];
  if (__src[2] != __src[3])
  {
    v34 = LOBYTE(__src[0]);

    while (1)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v35 = *(v17 + 16);
      if (v18 >= v35)
      {
        goto LABEL_71;
      }

      v36 = v17 + 32 + 40 * v18;
      if (*(v36 + 32) >= 2u)
      {
        goto LABEL_78;
      }

      v37 = *v36;
      v38 = *(v36 + 8);
      v39 = v19;
      if ((v18 + 1) < v19)
      {
        break;
      }

LABEL_51:
      if (v37 != v38)
      {
        if (v38 < v37)
        {
          goto LABEL_74;
        }

        if (v37 >= v38)
        {
          goto LABEL_75;
        }

        do
        {
          v43 = v37 + 1;
          Resolver.updateInsertion(_:)(v37);
          v37 = v43;
        }

        while (v38 != v43);
      }

      v18 = v39;
      if (v39 == v19)
      {
        goto LABEL_12;
      }
    }

    if (v18 + 1 != v35)
    {
      v40 = (v17 + 104 + 40 * v18);
      v39 = v18 + 1;
      while (1)
      {
        v42 = *v40;
        v40 += 40;
        v41 = v42;
        if (v42)
        {
          if (v41 == 1)
          {
            if (v34 == 1)
            {
              goto LABEL_51;
            }
          }

          else if (v34 == 2)
          {
            goto LABEL_51;
          }
        }

        else if (!v34)
        {
          goto LABEL_51;
        }

        if (v35 == ++v39)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_12:

  _s7SwiftUI17CollectionChangesV10ProjectionV4kind7changesAEyxq__qd__GAC7ElementO4KindOyxq___G_SayAJyxq__GGtcfCSi_SiSnySiG_APtTt2B5Tm(2, v1[9], __src);
  v20 = __src[1];
  v21 = __src[2];
  v22 = __src[3];
  if (__src[2] == __src[3])
  {
  }

  else
  {
    v44 = LOBYTE(__src[0]);

    v45 = v21;
    do
    {
      v46 = specialized CollectionChanges.Projection.subscript.getter(v45, v44, v20);
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v45 = specialized CollectionChanges.Projection.index(after:)(v45, v44, v20, v21, v22);
      __src[0] = v46;
      __src[1] = v48;
      __src[2] = v46;
      __src[3] = v50;
      __src[4] = v52;
      __src[5] = v50;
      LOBYTE(__src[6]) = 0;
      while (1)
      {
        v53 = specialized Zip2Sequence.Iterator.next()();
        if (v54)
        {
          break;
        }

        Resolver.updateMatched(source:target:)(v53);
      }
    }

    while (v45 != v22);
  }

  Resolver.postProcessEntries()(v23);
}

void GlassContainerResolvedTransaction.updateValue()()
{
  v1 = v0;
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = *AGGraphGetValue();
  v33[0] = v2;

  Value = AGGraphGetValue();
  v4 = *Value;
  if (specialized static GlassContainer.ResolvedPhase.== infix(_:_:)(*Value, *(v0 + 24)) || (v4 & 0xC000) != 0)
  {
    if ((v4 & 0xC000) != 0x4000)
    {
      goto LABEL_23;
    }

    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v2);
    if (v8)
    {
      v9 = v8[9];
    }

    else
    {
      v9 = 0;
    }

    if (one-time initialization token for default == -1)
    {
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      swift_once();
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    v10 = *(*v9 + 104);

    LOBYTE(v10) = v10(v11);

    if (v10)
    {
      AGGraphClearUpdate();
      v12 = AGGraphGetValue();
      v13 = *v12;
      v14 = v12[1];

      AGGraphSetUpdate();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v2, &v24);
      if (v28)
      {
        v15 = &v29;
        static GlassContainer.TransitionSettings.default.getter(&v29);
        v16 = v30;
        v17 = v31;
        v18 = v32;
      }

      else
      {
        v18 = v27;
        v17 = v26;
        v15 = &v24;
        v16 = v25;
      }

      v24 = *v15;
      v25 = v16;
      v26 = v17;
      v27 = v18;
      v29 = v13;
      *&v30 = v14;
      v23 = GlassContainer.TransitionSettings.resolvedTransitionAnimation(in:update:)(&v29, v4 & 1);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v33, v23);

      v2 = v33[0];
    }
  }

  else if (v4)
  {

    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v5);
    if (v6 && !v6[9])
    {
    }

    else
    {
      type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>(0);
      *(swift_allocObject() + 72) = 0;
      _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
      v33[0] = PropertyList.Element.init(keyType:before:after:)(v7, 0, v2).value;

      v2 = v33[0];
    }

    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v19);
    if (!v20 || (v21 = v2, *(v20 + 72) != 1))
    {
      type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>(0);
      *(swift_allocObject() + 72) = 1;
      _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
      v21 = PropertyList.Element.init(keyType:before:after:)(v22, 0, v2).value;
      v33[0] = v21;
    }

    v2 = v21;
  }

LABEL_23:
  if (Transaction.isAnimated.getter(v2))
  {
    Transaction.addAnimationListener(_:)(*(v1 + 16));
    v2 = v33[0];
  }

  v24 = v2;
  AGGraphSetOutputValue();

  *(v1 + 24) = v4;
}

uint64_t specialized Resolver.log(_:)(uint64_t a1, void (*a2)(_BYTE *))
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-v9];
  if (one-time initialization token for glassContainer != -1)
  {
    v13 = v8;
    swift_once();
    v8 = v13;
  }

  v11 = __swift_project_value_buffer(v8, static Log.glassContainer);
  outlined init with copy of Logger?(v11, v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  result = (*(v4 + 48))(v10, 1, v3);
  if (result != 1)
  {
    (*(v4 + 32))(v6, v10, v3);
    a2(v6);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void Resolver.updateRemoval(_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = *(v2 + 212);
  v61 = *(v2 + 196);
  v62 = v5;
  v63 = *(v2 + 228);
  v64 = *(v2 + 244);
  if (*(v2 + 248))
  {
    return;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v1 = v2;
  v6 = *(v2 + 16);
  if (*(v6 + 16) <= v4)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v7 = 344 * v4;
  v3 = v4;
  memcpy(v53, (v6 + 344 * v4 + 32), 0x154uLL);
  v8.id = v53[41];
  memcpy(v48, v2, sizeof(v48));
  v9 = v48[0];
  v10 = v48[2];
  v11 = v48[23];
  v12 = v48[18];
  v13 = v48[19];
  memcpy(v46, v1, 0x118uLL);
  outlined init with copy of GlassContainer.Entry(v53, v52);
  outlined init with copy of GlassContainer.Entry(v53, v52);

  outlined init with copy of Resolver(v48, v52);
  specialized Resolver.log(_:)(v46, v3, v53, _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi1_);
  outlined destroy of GlassContainer.Entry(v53);
  memcpy(v49, v46, sizeof(v49));
  outlined destroy of Resolver(v49);
  GlassContainerCache.resetInteractionState(id:)(v8);
  if (*(v10 + 16) <= v3)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v3 = 0;
  memcpy(v50, (v10 + 32 + v7), 0x154uLL);
  memcpy(v47, (v10 + 32 + v7), sizeof(v47));
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v58 = v64;
  v54[0] = v11;
  v54[1] = v12;
  v54[2] = v13;
  v59 = v9;
  v15 = *(v1 + 256);
  v14 = *(v1 + 264);
  outlined init with copy of GlassContainer.Entry(v50, v52);
  if (v14)
  {

    v16 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v15);
  }

  else
  {
    v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v15);
  }

  if (v16 == 2)
  {
    *v52 = v15;
    *&v52[8] = v14;
    LOBYTE(v46[0]) = 3;
    if (EnvironmentValues.accessibilitySettingEnabled(_:)(v46))
    {
LABEL_42:
      memcpy(v35, v1, 0x118uLL);
      memcpy(v41, v1, 0x118uLL);
      memcpy(__dst, v47, 0x154uLL);
      memcpy(__src, v47, 0x154uLL);
      outlined init with copy of Resolver(v35, v46);
      outlined init with copy of GlassContainer.Entry(__dst, v46);
      v32 = Resolver.canMaterializeEntry(_:isRemoval:)(__src, 1);
      memcpy(v46, __src, 0x154uLL);
      outlined destroy of GlassContainer.Entry(v46);
      memcpy(v36, v41, 0x118uLL);
      outlined destroy of Resolver(v36);
      if ((v32 & 1) == 0)
      {
        memcpy(__src, v47, 0x154uLL);
        outlined destroy of GlassContainer.Entry(__src);
        outlined destroy of GlassContainer.Entry.DistanceContext(v54);
        outlined destroy of GlassContainer.Entry(v53);
        return;
      }

      memcpy(v43, v1, sizeof(v43));
      memcpy(__src, v1, 0x118uLL);
      outlined init with copy of Resolver(v43, v41);
      specialized Resolver.log(_:)(__src, specialized closure #1 in Resolver.log(_:));
      memcpy(v37, __src, 0x118uLL);
      outlined destroy of Resolver(v37);
      memcpy(v40, v1, 0x118uLL);
      v3 = *&v40[8];
      memcpy(__src, v1, 0x118uLL);
      outlined init with copy of Resolver(v40, v41);
      Resolver.adjustMaterializedEntry(_:isRemoval:)(v47);
      memcpy(v42, __src, 0x118uLL);
      outlined destroy of Resolver(v42);
      memcpy(__src, v47, 0x154uLL);
      outlined init with copy of GlassContainer.Entry(__src, v41);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    }
  }

  else if (v16)
  {
    goto LABEL_42;
  }

  if (v48[8] < 0)
  {
    goto LABEL_52;
  }

  v17 = v48[1];
  if (*(v48[1] + 16) >= v48[8])
  {
    v18 = (2 * v48[8]) | 1;
    v19 = (2 * *(v10 + 16)) | 1;

    specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(v53, v10, v10 + 32, 0, v19, 1, v54, v17, v17 + 32, 0, v18);

    memcpy(__dst, __src, 0x1B1uLL);
    memcpy(v46, __src, 0x1B1uLL);
    if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(v46) == 1)
    {
      goto LABEL_42;
    }

    memcpy(v52, v46, sizeof(v52));
    if ((v46[54] & 1) == 0)
    {
      v20 = v46[53];
      memcpy(v51, v1, sizeof(v51));
      v21 = *(v50[16] + 16);
      if (v21)
      {
        v22 = (v50[16] + 208);
        while (*v22 == 1)
        {
          v22 += 656;
          if (!--v21)
          {
            goto LABEL_34;
          }
        }

        if ((v46[42] & 0x100000000) == 0)
        {
          LOBYTE(v37[0]) = 2;
          if ((specialized getter of containsSource #1 in Resolver.canReuseEntry(_:sourceResult:isRemoval:)(v37, v51, v52) & 1) == 0)
          {
            v60 = v51[9];
            v23 = *(v51[9] + 16);
            if (v23)
            {
              v24 = v51[9] + 64;
              v25 = (v51[9] + 64);
              while (1)
              {
                v26 = *v25;
                v25 += 40;
                if (v26 == 1 && v20 >= *(v24 - 32) && v20 < *(v24 - 24))
                {
                  break;
                }

                v24 = v25;
                if (!--v23)
                {
                  goto LABEL_33;
                }
              }

              outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v60, __src, type metadata accessor for CollectionChanges<Int, Int>);

              memcpy(v36, v1, 0x118uLL);
              memcpy(__src, v1, 0x118uLL);
              outlined init with copy of Resolver(v36, v41);
              specialized Resolver.log(_:)(__src, specialized closure #1 in Resolver.log(_:));
              memcpy(v41, __src, 0x118uLL);
              outlined destroy of Resolver(v41);
              v35[0] = *v47;
              v35[1] = *&v47[16];
              LOBYTE(v35[2]) = v47[32];
              outlined init with copy of GlassContainer.Entry.ModelID(v35, __src);
              specialized Set._Variant.insert(_:)(__src, v35);
              outlined consume of GlassContainer.Entry.ModelID(*__src, *&__src[8], *&__src[16], *&__src[24], __src[32]);
              v42[0] = v46[0];
              v42[1] = v46[1];
              v42[2] = v46[2];
              v42[3] = v46[3];
              LOBYTE(v42[4]) = v46[4];
              outlined copy of GlassContainer.Entry.ModelID(v46[0], v46[1], v46[2], v46[3], v46[4]);
              specialized Set._Variant.insert(_:)(v40, v42);
              outlined destroy of GlassContainer.Entry.DistanceContext(v54);
              outlined destroy of GlassContainer.Entry(v53);
              outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
              outlined consume of GlassContainer.Entry.ModelID(*v40, *&v40[8], *&v40[16], *&v40[24], v40[32]);
              memcpy(__src, v47, 0x154uLL);
              outlined destroy of GlassContainer.Entry(__src);
              goto LABEL_40;
            }

LABEL_33:
            outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v60, __src, type metadata accessor for CollectionChanges<Int, Int>);
          }
        }
      }
    }

LABEL_34:
    memcpy(v39, v1, sizeof(v39));
    memcpy(v38, v1, sizeof(v38));
    memcpy(v40, v47, sizeof(v40));
    memcpy(v37, v47, 0x154uLL);
    memcpy(v41, v46, 0x1B1uLL);
    _ViewInputs.base.modify();
    memcpy(v36, v41, 0x1B1uLL);
    outlined init with copy of Resolver(v39, v35);
    outlined init with copy of GlassContainer.Entry(v40, v35);
    outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(__dst, v35);
    v28 = Resolver.canMatchEntry(_:isRemoval:allowSelf:sourceResult:)(v37, 1, 0, v36);
    memcpy(__src, v36, sizeof(__src));
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__src, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
    memcpy(v42, v37, 0x154uLL);
    outlined destroy of GlassContainer.Entry(v42);
    memcpy(v43, v38, sizeof(v43));
    outlined destroy of Resolver(v43);
    if ((v28 & 1) == 0)
    {
      outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
      goto LABEL_42;
    }

    memcpy(v38, v1, sizeof(v38));
    memcpy(v36, v1, 0x118uLL);
    outlined init with copy of Resolver(v38, v35);
    specialized Resolver.log(_:)(v36, specialized closure #1 in Resolver.log(_:));
    memcpy(v37, v36, 0x118uLL);
    outlined destroy of Resolver(v37);
    memcpy(v36, v52, 0x1B1uLL);
    Resolver.adjustMatchedEntry(_:sourceResult:isRemoval:)(v47);
    memcpy(v36, v47, 0x154uLL);
    v29 = *(v1 + 8);
    outlined init with copy of GlassContainer.Entry(v36, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
    }

    outlined destroy of GlassContainer.Entry.DistanceContext(v54);
    outlined destroy of GlassContainer.Entry(v53);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
    memcpy(v35, v47, 0x154uLL);
    outlined destroy of GlassContainer.Entry(v35);
    *(v29 + 2) = v31 + 1;
    memcpy(&v29[344 * v31 + 32], v36, 0x154uLL);
    *(v1 + 8) = v29;
LABEL_40:
    *(v1 + 24) = 1;
    return;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
LABEL_44:
  v34 = *(v3 + 2);
  v33 = *(v3 + 3);
  if (v34 >= v33 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v3);
  }

  outlined destroy of GlassContainer.Entry.DistanceContext(v54);
  outlined destroy of GlassContainer.Entry(v53);
  memcpy(v41, v47, 0x154uLL);
  outlined destroy of GlassContainer.Entry(v41);
  *(v3 + 2) = v34 + 1;
  memcpy(&v3[344 * v34 + 32], __src, 0x154uLL);
  *(v1 + 8) = v3;
  *(v1 + 24) = 257;
}

void Resolver.updateInsertion(_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = *(v2 + 212);
  v58 = *(v2 + 196);
  v59 = v6;
  v60 = *(v2 + 228);
  v61 = *(v2 + 61);
  if ((v2[248] & 1) == 0)
  {
    v7 = v5;
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v1 = v2;
      v8 = *(v2 + 1);
      if (*(v8 + 16) > v5)
      {
        v4 = 344 * v5;
        memcpy(v50, (v8 + 344 * v5 + 32), 0x154uLL);
        memcpy(__dst, v2, sizeof(__dst));
        v9 = __dst[23];
        v10 = __dst[18];
        v11 = __dst[19];
        v12 = __dst[0];
        memcpy(__src, v1, 0x118uLL);
        outlined init with copy of GlassContainer.Entry(v50, v49);
        outlined init with copy of GlassContainer.Entry(v50, v49);

        outlined init with copy of Resolver(__dst, v49);
        specialized Resolver.log(_:)(__src, v7, v50, _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi0_);
        outlined destroy of GlassContainer.Entry(v50);
        memcpy(v47, __src, sizeof(v47));
        outlined destroy of Resolver(v47);
        v52 = v58;
        v53 = v59;
        v54 = v60;
        v55 = v61;
        v51[0] = v9;
        v51[1] = v10;
        v51[2] = v11;
        v56 = v12;
        v13 = *(v1 + 32);
        v2 = *(v1 + 33);
        if (v2)
        {

          v14 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v13);
        }

        else
        {
          v14 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(*(v1 + 32));
        }

        if (v14 == 2)
        {
          *v49 = v13;
          *&v49[8] = v2;
          LOBYTE(__src[0]) = 3;
          v2 = v49;
          if (EnvironmentValues.accessibilitySettingEnabled(_:)(__src))
          {
            goto LABEL_52;
          }
        }

        else if (v14)
        {
          goto LABEL_52;
        }

        if (__dst[8] < 0)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v2 = __dst[1];
        if (*(__dst[1] + 16) < __dst[8])
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v15 = __dst[2];
        v16 = __dst[2] + 32;
        v17 = (2 * *(__dst[2] + 16)) | 1;
        v18 = (2 * __dst[8]) | 1;

        specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(v50, v2, (v2 + 32), 0, v18, 0, v51, v15, v16, 0, v17);

        memcpy(v44, v43, 0x1B1uLL);
        memcpy(__src, v43, 0x1B1uLL);
        if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__src) != 1)
        {
          v2 = __src;
          memcpy(v49, __src, sizeof(v49));
          if ((__src[54] & 1) == 0)
          {
            v19 = __src[53];
            memcpy(v48, v1, sizeof(v48));
            if (*(v48[1] + 16) <= v7)
            {
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            memcpy(v42, (v48[1] + v4 + 32), 0x154uLL);
            v20 = *(v42[16] + 16);
            if (v20)
            {
              v21 = (v42[16] + 208);
              while (*v21 == 1)
              {
                v21 += 656;
                if (!--v20)
                {
                  goto LABEL_35;
                }
              }

              if ((__src[42] & 0x100000000) == 0)
              {
                LOBYTE(v40[0]) = 2;
                outlined init with copy of Resolver(v48, v43);
                outlined init with copy of GlassContainer.Entry(v42, v43);
                if (specialized getter of containsSource #1 in Resolver.canReuseEntry(_:sourceResult:isRemoval:)(v40, v48, v49))
                {
                  v57 = v48[9];
                  v22 = *(v48[9] + 16);
                  if (v22)
                  {
                    v23 = v48[9] + 64;
                    v24 = (v48[9] + 64);
                    while (1)
                    {
                      v25 = *v24;
                      v24 += 40;
                      if (!v25 && v19 >= *(v23 - 32) && v19 < *(v23 - 24))
                      {
                        break;
                      }

                      v23 = v24;
                      if (!--v22)
                      {
                        goto LABEL_34;
                      }
                    }

                    outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v57, v43, type metadata accessor for CollectionChanges<Int, Int>);
                    outlined destroy of GlassContainer.Entry(v42);
                    outlined destroy of Resolver(v48);

                    memcpy(v41, v1, sizeof(v41));
                    memcpy(v43, v1, 0x118uLL);
                    outlined init with copy of Resolver(v41, v39);
                    specialized Resolver.log(_:)(v43, specialized closure #1 in Resolver.log(_:));
                    memcpy(v37, v43, 0x118uLL);
                    outlined destroy of Resolver(v37);
                    memcpy(v38, __src, 0x154uLL);
                    outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(v44, v43);
                    specialized Resolver.prepareReusedEntry(target:sourceEntry:sourceIndex:)(v7, v38);
                    memcpy(v39, v38, 0x154uLL);
                    outlined destroy of GlassContainer.Entry(v39);
                    Resolver.updateMatched(source:target:)(v19);
                    memcpy(v38, __src, 0x154uLL);
                    outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(v44, v43);
                    specialized Resolver.reuseEntry(target:sourceEntry:sourceIndex:)(v7);
                    outlined destroy of GlassContainer.Entry.DistanceContext(v51);
                    outlined destroy of GlassContainer.Entry(v50);
                    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
                    memcpy(v43, v38, 0x154uLL);
                    outlined destroy of GlassContainer.Entry(v43);
                    goto LABEL_49;
                  }

LABEL_34:
                  outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v57, v43, type metadata accessor for CollectionChanges<Int, Int>);
                  outlined destroy of GlassContainer.Entry(v42);
                  outlined destroy of Resolver(v48);
                }

                else
                {
                  outlined destroy of GlassContainer.Entry(v42);
                  outlined destroy of Resolver(v48);
                }
              }
            }
          }

LABEL_35:
          v27 = *(v50[16] + 16);
          if (v27)
          {
            v29 = *(v1 + 32);
            v28 = *(v1 + 33);
            v30 = (v50[16] + 208);
            while (*v30 == 1)
            {
              v30 += 656;
              if (!--v27)
              {
                goto LABEL_51;
              }
            }

            outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(v44, v43);
            if (v28)
            {

              v31 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v29);
            }

            else
            {
              v31 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v29);
            }

            if (v31 == 2)
            {
              v43[0] = v29;
              v43[1] = v28;
              LOBYTE(v42[0]) = 3;
              v32 = EnvironmentValues.accessibilitySettingEnabled(_:)(v42);
              outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
              if (!v32)
              {
                goto LABEL_45;
              }
            }

            else
            {
              outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
              if ((v31 & 1) == 0)
              {
LABEL_45:
                memcpy(v40, v1, sizeof(v40));
                v2 = v40[1];
                memcpy(v43, v1, 0x118uLL);
                outlined init with copy of Resolver(v40, v42);
                specialized Resolver.log(_:)(v43, specialized closure #1 in Resolver.log(_:));
                memcpy(v41, v43, sizeof(v41));
                outlined destroy of Resolver(v41);
                if (*(v2 + 2) > v7)
                {
                  v33 = &v2[v4];
                  memcpy(v42, v33 + 32, 0x154uLL);
                  memcpy(v39, v33 + 32, 0x154uLL);
                  memcpy(v43, v49, 0x1B1uLL);
                  outlined init with copy of GlassContainer.Entry(v42, v38);
                  Resolver.adjustMatchedEntry(_:sourceResult:isRemoval:)(v39);
                  memcpy(v43, v39, 0x154uLL);
                  v2 = *(v1 + 1);
                  outlined init with copy of GlassContainer.Entry(v43, v38);
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
LABEL_47:
                    outlined destroy of GlassContainer.Entry.DistanceContext(v51);
                    outlined destroy of GlassContainer.Entry(v50);
                    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
                    memcpy(v37, v39, 0x154uLL);
                    outlined destroy of GlassContainer.Entry(v37);
                    if (*(v2 + 2) <= v7)
                    {
                      __break(1u);
                      return;
                    }

                    memcpy(v38, &v2[v4 + 32], 0x154uLL);
                    memcpy(&v2[v4 + 32], v43, 0x154uLL);
                    outlined destroy of GlassContainer.Entry(v38);
                    *(v1 + 1) = v2;
LABEL_49:
                    v1[24] = 1;
                    return;
                  }

LABEL_69:
                  v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                  goto LABEL_47;
                }

LABEL_68:
                __break(1u);
                goto LABEL_69;
              }
            }
          }

LABEL_51:
          outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
        }

LABEL_52:
        memcpy(v44, v1, 0x118uLL);
        v34 = v44[0];
        v2 = v44[1];
        memcpy(v42, v1 + 16, 0x108uLL);
        v35 = v50[16];
        outlined init with copy of Resolver(v44, v43);
        if (*(v35 + 16) && *(v35 + 208) == 1)
        {
          v36 = *(v35 + 200) | *(v35 + 184) | *(v35 + 192);
          __src[0] = v34;
          __src[1] = v2;
          memcpy(&__src[2], v42, 0x108uLL);
          outlined destroy of Resolver(__src);
          if (!v36)
          {
            outlined destroy of GlassContainer.Entry(v50);
            outlined destroy of GlassContainer.Entry.DistanceContext(v51);
            return;
          }
        }

        else
        {
          __src[0] = v34;
          __src[1] = v2;
          memcpy(&__src[2], v42, 0x108uLL);
          outlined destroy of Resolver(__src);
        }

        memcpy(v39, v1, 0x118uLL);
        memcpy(v43, v1, 0x118uLL);
        outlined init with copy of Resolver(v39, v42);
        specialized Resolver.log(_:)(v43, specialized closure #1 in Resolver.log(_:));
        memcpy(v42, v43, 0x118uLL);
        outlined destroy of Resolver(v42);
        memcpy(v43, v1, 0x118uLL);
        v3 = v43[1];
        memcpy(v38, v1, 0x118uLL);
        outlined init with copy of Resolver(v43, v37);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_58;
        }

        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_63:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_58:
    if (*(v3 + 2) > v7)
    {
      Resolver.adjustMaterializedEntry(_:isRemoval:)(&v3[v4 + 32]);
      outlined destroy of GlassContainer.Entry.DistanceContext(v51);
      outlined destroy of GlassContainer.Entry(v50);
      memcpy(v37, v38, 0x118uLL);
      outlined destroy of Resolver(v37);
      *(v1 + 1) = v3;
      *(v1 + 12) = 257;
      return;
    }

    __break(1u);
    goto LABEL_65;
  }
}

uint64_t specialized Zip2Sequence.Iterator.next()()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  result = *(v0 + 16);
  if (result == v2)
  {
    goto LABEL_8;
  }

  if (v2 < *v0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result < *v0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result >= v2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v0 + 16) = result + 1;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v3 == v4)
  {
LABEL_8:
    result = 0;
    *(v0 + 48) = 1;
    return result;
  }

  v5 = *(v0 + 24);
  if (v4 < v5)
  {
    goto LABEL_16;
  }

  if (v3 < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 < v4)
  {
    *(v0 + 40) = v3 + 1;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Resolver.updateMatched(source:target:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v282 = v3;
  v5 = v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v269 = &v240 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v240 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v240 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v240 - v16;
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v273 = &v240 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v261 = &v240 - v22;
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v240 - v26;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_230;
  }

  v28 = v2[2];
  v263 = v2 + 2;
  if (*(v28 + 16) <= v5)
  {
    goto LABEL_231;
  }

  v262 = v25;
  memcpy(v378, (v28 + 344 * v5 + 32), 0x154uLL);
  if (v282 < 0)
  {
    goto LABEL_232;
  }

  v29 = v2[1];
  if (*(v29 + 16) <= v282)
  {
    goto LABEL_233;
  }

  v283 = 344 * v282;
  memcpy(v379, (v29 + 344 * v282 + 32), 0x154uLL);
  memcpy(v380, v2, 0x118uLL);
  outlined init with copy of GlassContainer.Entry(v378, v335);
  outlined init with copy of GlassContainer.Entry(v379, v335);
  outlined init with copy of GlassContainer.Entry(v378, v335);
  outlined init with copy of GlassContainer.Entry(v379, v335);
  outlined init with copy of GlassContainer.Entry(v378, v335);
  outlined init with copy of GlassContainer.Entry(v379, v335);
  outlined init with copy of Resolver(v380, v335);
  if (one-time initialization token for glassContainer != -1)
  {
    goto LABEL_234;
  }

LABEL_6:
  *&v280 = __swift_project_value_buffer(v19, static Log.glassContainer);
  outlined init with copy of Logger?(v280, v27, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  v30 = *(v7 + 48);
  *&v279 = v7 + 48;
  v278.i64[0] = v30;
  v31 = v30(v27, 1, v6);
  v254 = v11;
  v255 = v14;
  *&v281 = v7;
  if (v31 != 1)
  {
    (*(v7 + 32))(v17, v27, v6);
    *&v334[0] = v5;
    *(&v334[0] + 1) = v282;
    memcpy(&v334[1], v378, 0x154uLL);
    memcpy(&v334[22] + 8, v379, 0x154uLL);
    memcpy(v335, v334, 0x2BCuLL);
    _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi2_(v335);
    outlined init with copy of GlassContainer.Entry(v378, v333);
    outlined init with copy of GlassContainer.Entry(v379, v333);
    outlined init with copy of GlassContainer.Entry(v378, v333);
    outlined init with copy of GlassContainer.Entry(v379, v333);
    outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v334, v333, type metadata accessor for (Int, Int, GlassContainer.Entry, GlassContainer.Entry));
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    outlined destroy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v334);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v365[0] = v14;
      *v34 = 136315138;
      memcpy(v285, v335, 0x2BCuLL);
      outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v334, v333, type metadata accessor for (Int, Int, GlassContainer.Entry, GlassContainer.Entry));
      v35 = ResolverMessage.description.getter();
      v37 = v36;
      memcpy(v333, v285, 0x2BCuLL);
      outlined destroy of ResolverMessage(v333);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v365);
      v7 = v281;

      *(v34 + 4) = v38;
      _os_log_impl(&dword_18D018000, v32, v33, "Glass container %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x193AC4820](v14, -1, -1);
      MEMORY[0x193AC4820](v34, -1, -1);
      outlined destroy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v334);
    }

    else
    {

      outlined destroy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v334);
    }

    outlined destroy of GlassContainer.Entry(v378);
    outlined destroy of GlassContainer.Entry(v379);
    (*(v7 + 8))(v17, v6);
  }

  outlined destroy of GlassContainer.Entry(v378);
  outlined destroy of GlassContainer.Entry(v379);
  outlined destroy of GlassContainer.Entry(v379);
  outlined destroy of GlassContainer.Entry(v378);
  outlined destroy of Resolver(v380);
  v39 = v378[16];
  v40 = *(v378[16] + 16);
  v41 = MEMORY[0x1E69E7CC0];
  v19 = 48;
  v265 = v2;
  *&v275 = v6;
  v259 = v378[16];
  if (v40)
  {
    *&v335[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
    v41 = *&v335[0];
    v42 = *(*&v335[0] + 16);
    v277 = 48;
    v43 = 24 * v42 + 48;
    v44 = (v39 + 48);
    do
    {
      LODWORD(v284) = *(v44 - 4);
      v45 = *(v44 - 1);
      v14 = *v44;
      *&v335[0] = v41;
      v46 = v42 + 1;
      v47 = *(v41 + 24);
      v48 = v41;

      v41 = v48;
      if (v42 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v46, 1);
        v41 = *&v335[0];
      }

      v44 += 82;
      *(v41 + 16) = v46;
      v49 = (v41 + v43);
      *(v49 - 4) = v284;
      *(v49 - 1) = v45;
      *v49 = v14;
      v43 += 24;
      ++v42;
      --v40;
    }

    while (v40);
    v2 = v265;
    v6 = v275;
    v7 = v281;
    v19 = v277;
  }

  v277 = v41;
  v50 = v379[16];
  v51 = *(v379[16] + 16);
  v52 = MEMORY[0x1E69E7CC0];
  v260 = v379[16];
  if (v51)
  {
    *&v335[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
    v53 = *&v335[0];
    v54 = *(*&v335[0] + 16);
    v55 = v19 + 24 * v54;
    v56 = (v50 + 48);
    do
    {
      v57 = *(v56 - 4);
      v14 = *(v56 - 1);
      *&v284 = *v56;
      *&v335[0] = v53;
      v19 = v54 + 1;
      v58 = *(v53 + 24);

      if (v54 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v19, 1);
        v53 = *&v335[0];
      }

      v56 += 82;
      *(v53 + 16) = v19;
      v59 = (v53 + v55);
      *(v59 - 4) = v57;
      v60 = v284;
      *(v59 - 1) = v14;
      *v59 = v60;
      v55 += 24;
      ++v54;
      --v51;
    }

    while (v51);
    v2 = v265;
    v6 = v275;
    v52 = MEMORY[0x1E69E7CC0];
    v7 = v281;
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
  }

  v61 = v380[1];
  *&v335[0] = v52;
  v5 = v335;
  specialized CollectionChanges.formChanges<A, B>(from:to:)(v277, v53, partial apply for specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:));

  v27 = v61;

  v11 = *&v335[0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v282;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
  }

  v271 = v380[34];
  v272 = v380[0];
  v277 = v380[15];
  LODWORD(v264) = v380[24];
  v2[1] = v27;
  v63 = *(v11 + 16);
  if (!v63)
  {
    LODWORD(v253) = 0;
    v270 = 0;
    goto LABEL_156;
  }

  v64 = 0;
  LODWORD(v253) = 0;
  v270 = 0;
  v252 = 0x800000018DD74F00;
  v267 = (v7 + 32);
  v268 = (v7 + 8);
  v245 = (&v285[17] + 9);
  v248 = (&v332[17] + 9);
  v249 = v260 + 32;
  v247 = &v309[281];
  v19 = &v335[8] + 8;
  v7 = &v334[8] + 8;
  v244 = v259 + 32;
  v241 = (&v365[17] + 9);
  v243 = xmmword_18DD85550;
  v242 = xmmword_18DDAA020;
  v251 = 0x8200102uLL;
  v65 = v11 + 64;
  v66 = 1.0;
  v67 = 0;
  *&v281 = v11;
  v246 = v11 + 64;
LABEL_28:
  v17 = v65 + 40 * v64;
  v68 = v64 + 1;
  while (1)
  {
    if (v68 - 1 >= v63)
    {
      __break(1u);
      goto LABEL_223;
    }

    v69 = *(v17 - 32);
    v14 = *(v17 - 24);
    v70 = *v17;
    *&v284 = v68;
    if (!v70)
    {
      if (v69 == v14)
      {
        goto LABEL_30;
      }

      v11 = v14;
      if (v14 < v69)
      {
        goto LABEL_250;
      }

      v2 = v265;
      v77 = *(v265 + 212);
      v361 = *(v265 + 196);
      v362 = v77;
      v363 = *(v265 + 228);
      v364 = *(v265 + 61);
      LODWORD(v266) = v265[248];
      v258 = *(v260 + 16);
      *(v265 + 1) = v27;
      v17 = v282;
      if (v69 < v14)
      {
        v257 = (2 * v258) | 1;
        v6 = v69;
        *&v276 = v69;
        do
        {
          if (*(v27 + 16) <= v17)
          {
            goto LABEL_225;
          }

          v5 = v27 + v283 + 32;
          memcpy(v308, v5, 0x154uLL);
          v78 = *v5;
          v79 = *(v27 + v283 + 48);
          v80 = *(v27 + v283 + 64);
          v303 = *(v27 + v283 + 80);
          v302 = v80;
          v301 = v79;
          v81 = *(v27 + v283 + 96);
          v82 = *(v27 + v283 + 112);
          v83 = *(v27 + v283 + 128);
          v307 = *(v27 + v283 + 144);
          v306 = v83;
          v305 = v82;
          v304 = v81;
          v300 = v78;
          v14 = *&v308[8];
          v84 = *(v27 + v283 + 356);
          v85 = *(v27 + v283 + 328);
          v86 = *(v27 + v283 + 312);
          v299[0] = *(v27 + v283 + 344);
          *(v299 + 12) = v84;
          v298 = v85;
          v297 = v86;
          v87 = *(v27 + v283 + 248);
          v88 = *(v27 + v283 + 296);
          v89 = *(v27 + v283 + 264);
          v295 = *(v27 + v283 + 280);
          v296 = v88;
          v294 = v89;
          v293 = v87;
          v90 = *(v27 + v283 + 184);
          v91 = *(v27 + v283 + 232);
          v92 = *(v27 + v283 + 200);
          v291 = *(v27 + v283 + 216);
          v292 = v91;
          v290 = v92;
          v289 = v90;
          v288 = *(v27 + v283 + 168);
          v357 = v361;
          v358 = v362;
          v359 = v363;
          v360 = v364;
          if (v266)
          {
            outlined init with copy of GlassContainer.Entry(v308, v335);
            goto LABEL_46;
          }

          v93 = v262;
          outlined init with copy of Logger?(v280, v262, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          v5 = v275;
          if ((v278.i64[0])(v93, 1, v275) == 1)
          {
            outlined init with copy of GlassContainer.Entry(v308, v335);
          }

          else
          {
            v27 = v255;
            (*v267)(v255, v93, v5);
            outlined init with copy of GlassContainer.Entry(v308, v335);
            v94 = v270;
            specialized closure #1 in Resolver.log(_:)(v27);
            v270 = v94;
            if (v94)
            {
              goto LABEL_257;
            }

            (*v268)(v27, v5);
          }

          v95 = v2[1];
          v272 = *v2;
          *&v274 = v95;
          v96 = v263[5];
          v353 = v263[4];
          v354 = v96;
          *&v355 = *(v263 + 12);
          v97 = v263[1];
          v349 = *v263;
          v350 = v97;
          v98 = v263[2];
          v352 = v263[3];
          v351 = v98;
          v277 = v2[15];
          v99 = *(v2 + 10);
          v340 = *(v2 + 11);
          v339 = v99;
          v100 = *(v2 + 8);
          v338 = *(v2 + 9);
          v337 = v100;
          v101 = *(v2 + 14);
          v344 = *(v2 + 15);
          v343 = v101;
          v102 = *(v2 + 12);
          v342 = *(v2 + 13);
          v341 = v102;
          v271 = v2[34];
          v103 = *(v14 + 2);
          if (!v103)
          {
            goto LABEL_64;
          }

          v27 = v2[32];
          v104 = v2[33];
          v105 = v14 + 208;
          while (*v105 == 1)
          {
            v105 += 656;
            if (!--v103)
            {
              goto LABEL_64;
            }
          }

          if (v104)
          {

            v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v27);
          }

          else
          {
            _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
            BloomFilter.init(hashValue:)(v106);
            v107 = *&v335[0];

            v108 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA040AccessibilityPrefersCrossFadeTransitionsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v27, v107);
            if (!v108)
            {
              goto LABEL_61;
            }

            v5 = *(v108 + 72);
          }

          if (v5 == 2)
          {
LABEL_61:
            *&v335[0] = v27;
            *(&v335[0] + 1) = v104;
            LOBYTE(v334[0]) = 3;
            v5 = EnvironmentValues.accessibilitySettingEnabled(_:)(v334);
          }

          if (v5)
          {
            goto LABEL_64;
          }

          *&v334[0] = v272;
          *(&v334[0] + 1) = v274;
          v334[5] = v353;
          v334[6] = v354;
          *&v334[7] = v355;
          v334[1] = v349;
          v334[2] = v350;
          v334[3] = v351;
          v334[4] = v352;
          v334[12] = v341;
          v334[13] = v342;
          v334[14] = v343;
          v334[15] = v344;
          v334[8] = v337;
          v334[9] = v338;
          v334[10] = v339;
          v334[11] = v340;
          *(&v334[7] + 1) = v277;
          *&v334[16] = v27;
          *(&v334[16] + 1) = v104;
          *&v334[17] = v271;
          v335[4] = v304;
          v335[5] = v305;
          v335[6] = v306;
          v335[7] = v307;
          v335[0] = v300;
          v335[1] = v301;
          v335[2] = v302;
          v335[3] = v303;
          *&v335[8] = v14;
          *(&v335[18] + 8) = v298;
          *(&v335[19] + 8) = v299[0];
          *(&v335[20] + 4) = *(v299 + 12);
          *(&v335[14] + 8) = v294;
          *(&v335[15] + 8) = v295;
          *(&v335[16] + 8) = v296;
          *(&v335[17] + 8) = v297;
          *(&v335[10] + 8) = v290;
          *(&v335[11] + 8) = v291;
          *(&v335[12] + 8) = v292;
          *(&v335[13] + 8) = v293;
          *(&v335[8] + 8) = v288;
          *(&v335[9] + 8) = v289;
          v5 = v334;
          if (Resolver.containsItemsInEntry(_:allowSelf:)(v335, 1))
          {
            goto LABEL_64;
          }

          v17 = v282;
          if (v6 < 0)
          {
            goto LABEL_248;
          }

          if (v6 >= *(v259 + 16))
          {
            goto LABEL_249;
          }

          memcpy(v365, (v244 + 656 * v6), 0x289uLL);
          memcpy(v336, v2, sizeof(v336));
          v109 = v336[14];
          v277 = v336[15];
          v27 = v336[1];
          v271 = v336[34];
          v272 = v336[0];
          LODWORD(v264) = v336[24];
          v110 = *(v336[1] + 16);
          if (!v110)
          {
LABEL_81:
            v311[0] = v272;
            *&v274 = v336[1];
            v311[1] = v336[1];
            v117 = v336[17];
            v118 = v336[16];
            memcpy(&v311[2], v263, 0x108uLL);
            outlined init with copy of GlassContainer.Item(v365, v335);
            outlined init with copy of Resolver(v336, v335);
            outlined destroy of Resolver(v311);
            *&v120 = v336[18];
            *&v121 = v336[23];
            _Q3 = v358;
            v367 = v357;
            v368 = v358;
            v123 = v359;
            v369 = v359;
            v370 = v360;
            v366[0] = v109;
            v366[1] = v277;
            v366[2] = v118;
            v366[3] = v117;
            v366[4] = v336[18];
            v366[5] = v336[19];
            v253 = v336[20];
            v366[6] = v336[20];
            v256 = v336[21];
            v366[7] = v336[21];
            v371 = v336[23];
            if (*(v260 + 16) < v258)
            {
              __break(1u);
              goto LABEL_254;
            }

            v5 = v117;
            v240 = (2 * *(v259 + 16)) | 1;

            specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(v365, v259, v244, 0, v240, 1, v366, v260, v249, 0, v257);
            outlined destroy of GlassContainer.Item.DistanceContext(v366);
            memcpy(v334, v333, 0x2E9uLL);
            memcpy(v335, v333, 0x2E9uLL);
            if (getEnumTag for AccessibilityTextLayoutProperties(v335) == 1)
            {
              outlined destroy of GlassContainer.Item(v365);
LABEL_64:
              v17 = v282;
              v27 = v274;
              goto LABEL_65;
            }

            memcpy(v330, v2, sizeof(v330));
            memcpy(v332, v2, 0x118uLL);
            outlined init with copy of Resolver(v330, v309);
            specialized Resolver.log(_:)(v332, specialized closure #1 in Resolver.log(_:));
            memcpy(v331, v332, sizeof(v331));
            outlined destroy of Resolver(v331);
            v326 = v365[10];
            v327 = v365[11];
            v328 = v365[12];
            v277 = *(&v365[13] + 1);
            v329 = *&v365[13];
            v322 = v365[6];
            v323 = v365[7];
            v324 = v365[8];
            v325 = v365[9];
            v318 = v365[2];
            v319 = v365[3];
            v320 = v365[4];
            v321 = v365[5];
            v316 = v365[0];
            v317 = v365[1];
            v271 = *(&v365[14] + 1);
            v272 = *&v365[14];
            v256 = *(&v365[15] + 1);
            v264 = *&v365[15];
            v253 = *&v365[16];
            v312[0] = BYTE8(v365[17]);
            LODWORD(v314) = *v241;
            *(&v314 + 3) = *(v241 + 3);
            memcpy(v287, &v365[21], 0x138uLL);
            v125 = v2[32];
            v124 = v2[33];
            outlined init with copy of GlassContainer.Item(v365, v332);
            static GlassContainer.AppearanceSettings.match.getter(v332);
            v126 = *(&v332[0] + 1);
            v127 = *v332;
            v128 = v332[1];
            if (v124)
            {

              v129 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v125);
            }

            else
            {
              v130 = v125;
              *&v274 = v125;
              v131 = v270;
              v129 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v130);
              v270 = v131;
              v125 = v274;
            }

            if (v129 == 2)
            {
              *v309 = v125;
              *&v309[8] = v124;
              v313 = 2;
              v129 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v313);
            }

            if (v129)
            {
              v127 = 1.0;
            }

            if (BYTE8(v365[17]))
            {
              v132 = 0.0;
            }

            else
            {
              v132 = *&v365[17];
            }

            v312[0] = 1;
            *&v274 = LODWORD(v335[0]);
            v133 = *(&v335[0] + 1);
            v134 = *&v335[1];

            outlined consume of Text.LineStyle?(v264, v256);
            outlined consume of Text.LineStyle?(v277, v272);
            *(v2 + 24) = 1;
            v332[10] = v326;
            v332[11] = v327;
            v332[12] = v328;
            v332[6] = v322;
            v332[7] = v323;
            v332[8] = v324;
            v332[9] = v325;
            v332[2] = v318;
            v332[3] = v319;
            v332[4] = v320;
            v332[5] = v321;
            v332[0] = v316;
            v332[1] = v317;
            v135 = v242;
            *(&v332[13] + 8) = v243;
            *&v332[13] = v329;
            *(&v332[14] + 1) = 0;
            *&v332[15] = v274;
            v253 = v133;
            *(&v332[15] + 1) = v133;
            v256 = v134;
            *&v332[16] = v134;
            *(&v332[16] + 1) = v132;
            *&v332[17] = 0;
            v5 = v312[0];
            BYTE8(v332[17]) = v312[0];
            v136 = v248;
            *v248 = v314;
            *(v136 + 3) = *(&v314 + 3);
            v332[18] = v135;
            *&v332[19] = v127;
            *(&v332[19] + 1) = v126;
            v332[20] = v128;
            memcpy(&v332[21], v287, 0x138uLL);
            BYTE8(v332[40]) = 2;
            outlined init with copy of GlassContainer.Item(v332, v309);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
            }

            v138 = *(v14 + 2);
            v137 = *(v14 + 3);
            if (v138 >= v137 >> 1)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, v14);
            }

            outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v334, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Item>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Item>, &type metadata for GlassContainer.Item, type metadata accessor for GlassContainer.MatchingResult);
            outlined destroy of GlassContainer.Item(v365);
            v27 = v330[1];
            v271 = v330[34];
            v272 = v330[0];
            v277 = v330[15];
            LODWORD(v264) = v330[24];
            *(v14 + 2) = v138 + 1;
            memcpy(&v14[656 * v138 + 32], v332, 0x289uLL);
            *&v309[160] = v326;
            *&v309[176] = v327;
            *&v309[192] = v328;
            *&v309[208] = v329;
            *&v309[96] = v322;
            *&v309[112] = v323;
            *&v309[128] = v324;
            *&v309[144] = v325;
            *&v309[32] = v318;
            *&v309[48] = v319;
            *&v309[64] = v320;
            *&v309[80] = v321;
            *v309 = v316;
            *&v309[16] = v317;
            v139 = v242;
            *&v309[216] = v243;
            *&v309[232] = 0;
            *&v309[240] = v274;
            *&v309[248] = v253;
            *&v309[256] = v256;
            *&v309[264] = v132;
            *&v309[272] = 0;
            v309[280] = v5;
            v140 = v247;
            *v247 = v314;
            *(v140 + 3) = *(&v314 + 3);
            *&v309[288] = v139;
            *&v309[304] = v127;
            *&v309[312] = v126;
            *&v309[320] = v128;
            memcpy(&v309[336], v287, 0x138uLL);
            v310 = 2;
            outlined destroy of GlassContainer.Item(v309);
            v2 = v265;
LABEL_46:
            v17 = v282;
            goto LABEL_65;
          }

          v111 = 0;
LABEL_76:
          v112 = 344 * v111++;
          v113 = *(v336[1] + 160 + v112);
          v114 = (v113 + 32);
          v115 = *(v113 + 16) + 1;
          do
          {
            if (!--v115)
            {
              if (v111 == v110)
              {
                goto LABEL_81;
              }

              goto LABEL_76;
            }

            v116 = *v114;
            v114 += 164;
          }

          while (v116 != LODWORD(v365[0]));
          v311[0] = v272;
          v311[1] = v336[1];
          memcpy(&v311[2], v263, 0x108uLL);
          outlined init with copy of GlassContainer.Item(v365, v335);
          outlined init with copy of Resolver(v336, v335);
          outlined destroy of Resolver(v311);
          outlined destroy of GlassContainer.Item(v365);
LABEL_65:
          v335[4] = v304;
          v335[5] = v305;
          v335[6] = v306;
          v335[7] = v307;
          v335[0] = v300;
          v335[1] = v301;
          v335[2] = v302;
          v335[3] = v303;
          *&v335[8] = v14;
          *(&v335[18] + 8) = v298;
          *(&v335[19] + 8) = v299[0];
          *(&v335[20] + 4) = *(v299 + 12);
          *(&v335[14] + 8) = v294;
          *(&v335[15] + 8) = v295;
          *(&v335[16] + 8) = v296;
          *(&v335[17] + 8) = v297;
          *(&v335[10] + 8) = v290;
          *(&v335[11] + 8) = v291;
          *(&v335[12] + 8) = v292;
          *(&v335[13] + 8) = v293;
          *(&v335[8] + 8) = v288;
          *(&v335[9] + 8) = v289;
          outlined init with copy of GlassContainer.Entry(v335, v334);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          }

          if (*(v27 + 16) <= v17)
          {
            goto LABEL_226;
          }

          ++v6;
          v5 = v27 + v283;
          memcpy(v333, (v27 + v283 + 32), 0x154uLL);
          memcpy((v27 + v283 + 32), v335, 0x154uLL);
          outlined destroy of GlassContainer.Entry(v333);
          v2[1] = v27;
          v334[4] = v304;
          v334[5] = v305;
          v334[6] = v306;
          v334[7] = v307;
          v334[0] = v300;
          v334[1] = v301;
          v334[2] = v302;
          v334[3] = v303;
          *&v334[8] = v14;
          *(&v334[10] + 8) = v290;
          *(&v334[11] + 8) = v291;
          *(&v334[8] + 8) = v288;
          *(&v334[9] + 8) = v289;
          *(&v334[14] + 8) = v294;
          *(&v334[15] + 8) = v295;
          *(&v334[12] + 8) = v292;
          *(&v334[13] + 8) = v293;
          *(&v334[20] + 4) = *(v299 + 12);
          *(&v334[18] + 8) = v298;
          *(&v334[19] + 8) = v299[0];
          *(&v334[16] + 8) = v296;
          *(&v334[17] + 8) = v297;
          outlined destroy of GlassContainer.Entry(v334);
          if (v6 == v11)
          {
LABEL_152:
            v11 = v281;
            v64 = v284;
            v65 = v246;
            v63 = *(v281 + 16);
            LODWORD(v253) = 1;
            v6 = v275;
            if (v63 == v284)
            {
LABEL_156:

              v7 = MEMORY[0x1E69E7CC0];
              if (*(v27 + 16) <= v17)
              {
                __break(1u);
              }

              else
              {
                v19 = *(v27 + v283 + 360);
                GlassContainerCache.entryState(id:)(v19, v308);
                v179 = *(v11 + 16);

                if (v179 < 2)
                {
                  goto LABEL_172;
                }

                v180 = v2[32];
                v5 = v2[33];
                if ((Transaction.shouldUseGlassAnimation.getter(v271) & 1) == 0)
                {
                  goto LABEL_172;
                }

                if (v5)
                {

                  v181 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v180);
                }

                else
                {
                  v182 = v270;
                  v181 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v180);
                  v270 = v182;
                  v17 = v282;
                }

                if (v181 == 2)
                {
                  *&v335[0] = v180;
                  *(&v335[0] + 1) = v5;
                  LOBYTE(v334[0]) = 2;
                  v5 = v335;
                  if (EnvironmentValues.accessibilitySettingEnabled(_:)(v334))
                  {
                    goto LABEL_172;
                  }

LABEL_166:
                  v11 = v308;
                  ++*&v308[8];
                  __asm { FMOV            V0.2D, #0.5 }

                  *(&v308[8] + 8) = _Q0;
                  BYTE8(v308[9]) = 0;
                  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v271, v335);
                  v284 = v335[9];
                  v278 = v335[6];
                  v279 = v335[11];
                  v280 = v335[10];
                  v281 = v335[8];
                  v274 = v335[13];
                  v275 = v335[12];
                  v276 = v335[7];
                  v67 = *(&v335[14] + 1);
                  v66 = *&v335[14];
                  v109 = *&v335[15];
                  v334[0] = v335[6];
                  v334[1] = v335[7];
                  v334[2] = v335[8];
                  v334[3] = v335[9];
                  v334[4] = v335[10];
                  v334[5] = v335[11];
                  v334[6] = v335[12];
                  v334[7] = v335[13];
                  v334[8] = v335[14];
                  *&v334[9] = *&v335[15];
                  BYTE8(v334[9]) = BYTE8(v335[15]);
                  v188 = _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v334);
                  v190 = v280;
                  v189 = v281;
                  v191 = v284;
                  v119 = v274;
                  v120 = v275;
                  _Q3 = v276;
                  v123 = v278;
                  v121 = v279;
                  if (v188 == 1)
                  {
                    type metadata accessor for GlassContainerPTDomain();
                    v286.receiver = swift_getObjCClassFromMetadata();
                    v286.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
                    v192 = objc_msgSendSuper2(&v286, sel_rootSettings);
                    if (!v192)
                    {
                      goto LABEL_256;
                    }

                    v193 = v192;
                    type metadata accessor for GlassContainerPTSettings();
                    v194 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

                    GlassContainerScalePulsePTSettings.scalePulse.getter(v333);
                    _Q3 = v333[1];
                    v123 = v333[0];
                    v284 = v333[3];
                    v121 = v333[5];
                    v280 = v333[4];
                    v281 = v333[2];
                    v119 = v333[7];
                    v120 = v333[6];
                    v67 = *(&v333[8] + 1);
                    v66 = *&v333[8];
                    v109 = *&v333[9];
                    if (one-time initialization token for enableAdjustments == -1)
                    {
LABEL_169:
                      v191 = v284;
                      v190 = v280;
                      v189 = v281;
                      if (!enableAdjustments)
                      {
                        Spring.init(duration:bounce:)(0.5, 0.3);
                        v67 = *(&v333[0] + 1);
                        v66 = *v333;
                        v109 = *&v333[1];
                        Spring.init(duration:bounce:)(0.35, 0.6);
                        *&v195 = *&v333[1];
                        v284 = v195;
                        v281 = v333[0];
                        Spring.init(duration:bounce:)(0.5, 0.5);
                        *&v196 = v284;
                        *(&v196 + 1) = *&v332[0];
                        v284 = v196;
                        v280 = *(v332 + 8);
                        Spring.init(duration:bounce:)(0.5, 0.6);
                        v190 = v280;
                        v189 = v281;
                        v191 = v284;
                        v197 = &unk_18DDA9FF8;
                        *&v121 = *&vld1q_dup_f64(v197);
                        *(&v121 + 1) = *v309;
                        v120 = *&v309[8];
                        v123 = vdupq_n_s64(0x3FF3333333333333uLL);
                        v119 = xmmword_18DDAA030;
                        __asm { FMOV            V3.2D, #16.0 }
                      }

                      goto LABEL_171;
                    }

LABEL_254:
                    v278 = v123;
                    v279 = v121;
                    v275 = v120;
                    v276 = _Q3;
                    v274 = v119;
                    swift_once();
                    v119 = v274;
                    v120 = v275;
                    _Q3 = v276;
                    v123 = v278;
                    v121 = v279;
                    goto LABEL_169;
                  }

LABEL_171:
                  *(v11 + 168) = v123;
                  *(v11 + 184) = _Q3;
                  *(v11 + 200) = v189;
                  *(v11 + 216) = v191;
                  *(v11 + 232) = v190;
                  *(v11 + 248) = v121;
                  *(&v308[16] + 8) = v120;
                  *(&v308[17] + 8) = v119;
                  *(&v308[18] + 1) = v66;
                  *&v308[19] = v67;
                  *(&v308[19] + 1) = v109;
                  v17 = v282;
                }

                else if ((v181 & 1) == 0)
                {
                  goto LABEL_166;
                }

LABEL_172:
                *&v281 = v19;
                if (v253)
                {
                  *&v274 = v27;
                  *&v333[0] = v7;
                  v198 = *(v259 + 16);
                  if (v198)
                  {
                    v199 = (v259 + 32);
                    v200 = v277;
                    do
                    {
                      memcpy(v335, v199, 0x289uLL);
                      if (*(v200 + 16))
                      {
                        v201 = specialized __RawDictionaryStorage.find<A>(_:)(v335[0]);
                        if (v202)
                        {
                          v203 = *(*(v200 + 56) + 40 * v201);
                          type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);
                          outlined init with copy of GlassContainer.Item(v335, v334);
                          v204 = v203;
                          if (AGGraphGetWeakValue())
                          {
                            v205 = swift_retain_n();
                            MEMORY[0x193ABF170](v205);
                            if (*(*&v333[0] + 16) >= *(*&v333[0] + 24) >> 1)
                            {
                              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                            }

                            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                            outlined destroy of GlassContainer.Item(v335);

                            v7 = *&v333[0];
                          }

                          else
                          {
                            outlined destroy of GlassContainer.Item(v335);
                          }

                          v200 = v277;
                        }
                      }

                      v199 += 656;
                      --v198;
                    }

                    while (v198);
                  }

                  if (*(v7 + 16))
                  {

                    *(&v308[1] + 1) = v7;
                    *(v2 + 24) = 1;
                  }

                  else
                  {
                  }

                  v17 = v282;
                  v27 = v274;
                }

                v2 = v378[6];
                v7 = v378[5];
                v277 = LOBYTE(v378[7]);
                v19 = v378[8];
                *&v275 = v378[9];
                LODWORD(v276) = LOBYTE(v378[10]);
                v206 = v379[6];
                v14 = v379[5];
                *&v280 = LOBYTE(v379[7]);
                v6 = v379[8];
                *&v279 = v379[9];
                v278.i32[0] = LOBYTE(v379[10]);
                v335[0] = *&v378[5];
                v334[0] = *&v379[5];
                outlined copy of _Glass.Variant.Role(v378[5], v378[6]);
                outlined copy of _Glass.Variant.Role(v14, v206);

                *&v284 = v206;
                outlined copy of _Glass.Variant.Role(v14, v206);
                v11 = specialized static _Glass.Variant.== infix(_:_:)(v335, v334);
                outlined consume of _Glass.Variant.Role(*&v334[0], DWORD2(v334[0]));
                outlined consume of _Glass.Variant.Role(*&v335[0], DWORD2(v335[0]));
                if ((v11 & 1) == 0)
                {
                  v271 = v19;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    goto LABEL_242;
                  }

                  goto LABEL_196;
                }

                outlined consume of _Glass.Variant.Role(v14, v284);

                if (v19)
                {
                  v2 = v19;
                  v19 = v265;
                  v7 = v272;
                  if (!v6)
                  {
                    v231 = one-time initialization token for clear;

                    if (v231 != -1)
                    {
                      swift_once();
                    }

                    v6 = static Color.clear;
                    goto LABEL_208;
                  }

                  if (v2 != v6)
                  {
                    v207 = *(*v2 + 88);
                    v11 = *v2 + 88;
                    swift_retain_n();
                    swift_retain_n();
                    v208 = v207(v6);

                    if ((v208 & 1) == 0)
                    {
                      v17 = v282;
                      goto LABEL_209;
                    }

                    v17 = v282;
                  }

                  v2 = v19;
                }

                else
                {
                  v2 = v265;
                  v7 = v272;
                  if (v6)
                  {
                    v19 = v265;
                    v230 = one-time initialization token for clear;

                    if (v230 != -1)
                    {
                      goto LABEL_252;
                    }

                    goto LABEL_204;
                  }
                }

                while (2)
                {
                  memcpy(v287, v308, sizeof(v287));
                  swift_beginAccess();
                  v237 = *(v7 + 176);
                  memcpy(v332, v287, 0x278uLL);
                  DWORD2(v332[39]) = v237;
                  _ViewInputs.base.modify();
                  memcpy(v333, v332, 0x27CuLL);
                  memcpy(v334, v332, 0x27CuLL);
                  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v334) == 1)
                  {
                    outlined init with copy of GlassContainer.EntryState(v287, v335);
                    specialized Dictionary._Variant.removeValue(forKey:)(v281, v309);
                    memcpy(v335, v309, 0x27CuLL);
                    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v335, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
                  }

                  else
                  {
                    memcpy(v335, v333, 0x27CuLL);
                    outlined init with copy of GlassContainer.EntryState(v287, v309);
                    v238 = swift_isUniquelyReferenced_nonNull_native();
                    *v309 = *(v7 + 168);
                    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v335, v281, v238);
                    *(v7 + 168) = *v309;
                  }

                  swift_endAccess();
                  memcpy(v309, v308, 0x278uLL);
                  outlined destroy of GlassContainer.EntryState(v309);
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
LABEL_219:
                    outlined destroy of GlassContainer.Entry(v379);
                    result = outlined destroy of GlassContainer.Entry(v378);
                    if (*(v27 + 16) > v17)
                    {
                      ++*(v27 + v283 + 368);
                      v2[1] = v27;
                      return result;
                    }

                    __break(1u);
                    while (2)
                    {
                      __break(1u);
LABEL_239:
                      __break(1u);
LABEL_240:
                      __break(1u);
LABEL_241:
                      __break(1u);
LABEL_242:
                      v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
LABEL_196:
                      if (*(v27 + 16) <= v17)
                      {
                        __break(1u);
                      }

                      else
                      {
                        v273 = v6;
                        v209 = *(v27 + v283 + 176);
                        v6 = v27 + v283 + 176;
                        v269 = *(v27 + v283 + 184);
                        v270 = v209;
                        *&v274 = *(v27 + v283 + 200);
                        *v6 = v7;
                        *(v6 + 8) = v2;
                        v210 = v277;
                        *(v6 + 16) = v277;
                        v211 = v271;
                        v212 = v275;
                        *(v6 + 24) = v271;
                        *(v6 + 32) = v212;
                        v213 = v276;
                        *(v6 + 40) = v276;
                        outlined copy of _Glass.Variant.Role(v7, v2);

                        outlined consume of _Glass.Variant.Role(v270, v269);

                        v214 = *(v6 + 128);
                        v269 = *(v6 + 136);
                        v270 = v214;
                        v215 = *(v6 + 144);
                        *&v274 = v27;
                        v216 = *(v6 + 152);
                        v267 = *(v6 + 160);
                        v268 = v215;
                        *(v6 + 128) = v7;
                        *(v6 + 136) = v2;
                        *(v6 + 144) = v210;
                        *(v6 + 152) = v211;
                        *(v6 + 160) = v212;
                        *(v6 + 168) = v213;
                        outlined copy of _Glass.Variant.Role(v7, v2);

                        outlined consume of _Glass?(v270, v269, v268, v216);
                        v217 = *(v6 + 80);
                        v218 = *(v6 + 88);
                        v11 = *(v6 + 96);
                        v19 = *(v6 + 104);
                        v2 = *(v6 + 112);
                        v219 = v284;
                        *(v6 + 80) = v14;
                        *(v6 + 88) = v219;
                        v27 = v273;
                        *(v6 + 96) = v280;
                        *(v6 + 104) = v27;
                        *(v6 + 112) = v279;
                        v7 = *(v6 + 120);
                        *(v6 + 120) = v278.i8[0];
                        v277 = v14;
                        outlined copy of _Glass.Variant.Role(v14, v219);

                        v220 = v218;
                        v17 = v282;
                        outlined consume of _Glass?(v217, v220, v11, v19);
                        *(v6 + 172) = v264;
                        *(v6 + 176) = 0;
                        if (*(v274 + 16) > v17)
                        {
                          v221 = *v6;
                          v222 = *(v6 + 16);
                          v223 = *(v6 + 32);
                          v332[3] = *(v6 + 48);
                          v332[2] = v223;
                          v332[1] = v222;
                          v332[0] = v221;
                          v224 = *(v6 + 64);
                          v225 = *(v6 + 80);
                          v226 = *(v6 + 96);
                          v332[7] = *(v6 + 112);
                          v332[6] = v226;
                          v332[5] = v225;
                          v332[4] = v224;
                          v227 = *(v6 + 128);
                          v228 = *(v6 + 144);
                          v229 = *(v6 + 160);
                          LOBYTE(v332[11]) = *(v6 + 176);
                          v332[10] = v229;
                          v332[9] = v228;
                          v332[8] = v227;
                          memmove(v333, v6, 0xB1uLL);
                          _ViewInputs.base.modify();
                          v334[8] = v308[35];
                          v334[9] = v308[36];
                          v334[10] = v308[37];
                          LOBYTE(v334[11]) = v308[38];
                          v334[4] = v308[31];
                          v334[5] = v308[32];
                          v334[6] = v308[33];
                          v334[7] = v308[34];
                          v334[0] = v308[27];
                          v334[1] = v308[28];
                          v334[2] = v308[29];
                          v334[3] = v308[30];
                          v308[35] = v333[8];
                          v308[36] = v333[9];
                          v308[37] = v333[10];
                          LOBYTE(v308[38]) = v333[11];
                          v308[31] = v333[4];
                          v308[32] = v333[5];
                          v308[33] = v333[6];
                          v308[34] = v333[7];
                          v308[27] = v333[0];
                          v308[28] = v333[1];
                          v308[29] = v333[2];
                          v308[30] = v333[3];
                          outlined init with copy of GlassContainer.DisplayMaterial(v332, v335);
                          outlined destroy of SeedValue<GlassContainer.EntryState>(v334, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
                          v335[8] = v308[35];
                          v335[9] = v308[36];
                          v335[10] = v308[37];
                          LOBYTE(v335[11]) = v308[38];
                          v335[4] = v308[31];
                          v335[5] = v308[32];
                          v335[6] = v308[33];
                          v335[7] = v308[34];
                          v335[0] = v308[27];
                          v335[1] = v308[28];
                          v335[2] = v308[29];
                          v335[3] = v308[30];
                          if (_s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(v335) == 1)
                          {
                            outlined consume of _Glass.Variant.Role(v277, v284);
                          }

                          else
                          {
                            outlined consume of _Glass.Variant.Role(*&v308[27], DWORD2(v308[27]));

                            *&v308[27] = v277;
                            *(&v308[27] + 1) = v284;
                            LOBYTE(v308[28]) = v280;
                            *(&v308[28] + 1) = v273;
                            *&v308[29] = v279;
                            BYTE8(v308[29]) = v278.i8[0];
                          }

                          v2 = v265;
                          v7 = v272;
                          v265[24] = 1;
                          v14 = v274;
                          goto LABEL_212;
                        }
                      }

                      __break(1u);
LABEL_245:
                      __break(1u);
LABEL_246:
                      v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
                      while (*(v27 + 16) <= v17)
                      {
                        __break(1u);
LABEL_248:
                        __break(1u);
LABEL_249:
                        __break(1u);
LABEL_250:
                        __break(1u);
LABEL_251:
                        __break(1u);
LABEL_252:
                        swift_once();
LABEL_204:
                        v2 = static Color.clear;
LABEL_208:

LABEL_209:
                        type metadata accessor for ColorBox<Color.MixProvider>(0);
                        v11 = swift_allocObject();
                        *(v11 + 16) = v2;
                        *(v11 + 24) = v6;
                        *(v11 + 32) = 2;
                        *(v11 + 36) = 0;

                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          goto LABEL_246;
                        }
                      }

                      v14 = v27;
                      *(v27 + v283 + 96) = v11;

                      v232 = swift_allocObject();
                      *(v232 + 16) = v2;
                      *(v232 + 24) = v6;
                      *(v232 + 32) = 2;
                      *(v232 + 36) = 1065353216;

                      *(&v308[38] + 1) = v232;
                      v2 = v19;
                      *(v19 + 24) = 1;
LABEL_212:
                      if (*(v14 + 2) <= v17)
                      {
                        continue;
                      }

                      break;
                    }

                    v233 = v378[15];
                    v6 = &v14[v283];
                    v234 = *&v14[v283 + 152];
                    v11 = *(&v308[26] + 1);

                    *(&v308[26] + 1) = v234;
                    v27 = v14;
                    v235 = *(v14 + 2);

                    v236 = v235 <= v282;
                    v17 = v282;
                    if (!v236)
                    {
                      *(v6 + 152) = v233;

                      continue;
                    }

                    goto LABEL_239;
                  }

                  break;
                }
              }

              v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
              goto LABEL_219;
            }

            goto LABEL_28;
          }
        }

        while (v6 >= v276 && v6 < v11);
      }

LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      swift_once();
      goto LABEL_6;
    }

    if (v70 != 1)
    {
      v2 = *(v17 - 16);
      *&v274 = *(v17 - 8);
      v5 = v273;
      v71 = v69;
      outlined init with copy of Logger?(v280, v273, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
      if ((v278.i64[0])(v5, 1, v6) != 1)
      {
        (*v267)(v269, v273, v6);
        v72 = Logger.logObject.getter();
        v5 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v5))
        {
          v73 = swift_slowAlloc();
          v257 = v2;
          v258 = v73;
          v74 = v73;
          v266 = swift_slowAlloc();
          *&v333[0] = v266;
          *v74 = v251;
          *&v335[0] = 0;
          *(&v335[0] + 1) = 0xE000000000000000;
          LODWORD(v256) = v5;
          _StringGuts.grow(_:)(26);

          *&v335[0] = 0xD000000000000012;
          *(&v335[0] + 1) = v252;
          *&v332[0] = v71;
          *v309 = v14;
          *&v334[0] = 0;
          *(&v334[0] + 1) = 0xE000000000000000;
          v14 = MEMORY[0x1E69E6530];
          v2 = MEMORY[0x1E69E7078];
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](*&v334[0], *(&v334[0] + 1));

          MEMORY[0x193ABEDD0](544175136, 0xE400000000000000);
          *&v332[0] = v257;
          *v309 = v274;
          *&v334[0] = 0;
          *(&v334[0] + 1) = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](*&v334[0], *(&v334[0] + 1));

          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v335[0], *(&v335[0] + 1), v333);

          v5 = v258;
          *(v258 + 4) = v75;
          _os_log_impl(&dword_18D018000, v72, v256, "Glass container %s", v5, 0xCu);
          v76 = v266;
          __swift_destroy_boxed_opaque_existential_1(v266);
          MEMORY[0x193AC4820](v76, -1, -1);
          MEMORY[0x193AC4820](v5, -1, -1);
        }

        v6 = v275;
        (*v268)(v269, v275);
      }

      goto LABEL_30;
    }

    if (v69 != v14)
    {
      break;
    }

LABEL_30:
    v11 = v281;
    v63 = *(v281 + 16);
    v17 += 40;
    v68 = v284 + 1;
    if (v284 == v63)
    {
      v2 = v265;
      v17 = v282;
      goto LABEL_156;
    }
  }

  v11 = v14;
  if (v14 < v69)
  {
    goto LABEL_251;
  }

  v2 = v265;
  v141 = *(v265 + 212);
  v361 = *(v265 + 196);
  v362 = v141;
  v363 = *(v265 + 228);
  v364 = *(v265 + 61);
  LODWORD(v266) = v265[248];
  *(v265 + 1) = v27;
  v17 = v282;
  if (v69 >= v14)
  {
    goto LABEL_224;
  }

  v6 = v69;
  *&v276 = v69;
  v250 = v14;
  while (2)
  {
    if (*(v27 + 16) <= v17)
    {
      goto LABEL_227;
    }

    v5 = v27 + v283 + 32;
    memcpy(v287, v5, 0x154uLL);
    v142 = *v5;
    v143 = *(v27 + v283 + 48);
    v144 = *(v27 + v283 + 64);
    v352 = *(v27 + v283 + 80);
    v351 = v144;
    v350 = v143;
    v145 = *(v27 + v283 + 96);
    v146 = *(v27 + v283 + 112);
    v147 = *(v27 + v283 + 128);
    v356 = *(v27 + v283 + 144);
    v355 = v147;
    v354 = v146;
    v353 = v145;
    v349 = v142;
    v14 = v287[16];
    v148 = *(v27 + v283 + 356);
    v149 = *(v27 + v283 + 328);
    v150 = *(v27 + v283 + 312);
    v348[0] = *(v27 + v283 + 344);
    *(v348 + 12) = v148;
    v347 = v149;
    v346 = v150;
    v151 = *(v27 + v283 + 248);
    v152 = *(v27 + v283 + 296);
    v153 = *(v27 + v283 + 264);
    v344 = *(v27 + v283 + 280);
    v345 = v152;
    v343 = v153;
    v342 = v151;
    v154 = *(v27 + v283 + 184);
    v155 = *(v27 + v283 + 232);
    v156 = *(v27 + v283 + 200);
    v340 = *(v27 + v283 + 216);
    v341 = v155;
    v339 = v156;
    v338 = v154;
    v337 = *(v27 + v283 + 168);
    v357 = v361;
    v358 = v362;
    v359 = v363;
    v360 = v364;
    if (v266)
    {
      outlined init with copy of GlassContainer.Entry(v287, v335);
      goto LABEL_115;
    }

    memcpy(v336, v2, sizeof(v336));
    v157 = v261;
    outlined init with copy of Logger?(v280, v261, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    v5 = v275;
    if ((v278.i64[0])(v157, 1, v275) == 1)
    {
      outlined init with copy of GlassContainer.Entry(v287, v335);
    }

    else
    {
      v27 = v254;
      (*v267)(v254, v157, v5);
      outlined init with copy of GlassContainer.Entry(v287, v335);
      outlined init with copy of Resolver(v336, v335);
      v158 = v270;
      specialized closure #1 in Resolver.log(_:)(v27);
      v270 = v158;
      if (v158)
      {
        goto LABEL_257;
      }

      outlined destroy of Resolver(v336);
      (*v268)(v27, v5);
    }

    v17 = v2[32];
    v5 = v2[33];
    v159 = *(v287[16] + 16);
    v160 = v159 == 0;
    if (v159)
    {
      v161 = 0;
      v162 = (v287[16] + 208);
      while (*v162 == 1)
      {
        ++v161;
        v162 += 656;
        v160 = v159 == v161;
        if (v159 == v161)
        {
          goto LABEL_113;
        }
      }
    }

    else
    {
LABEL_113:
      v161 = *(v287[16] + 16);
    }

    v277 = v336[15];
    v27 = v336[1];
    v272 = v336[0];
    v271 = v336[34];
    LODWORD(v264) = v336[24];
    if (v160)
    {
LABEL_115:
      v17 = v282;
      goto LABEL_116;
    }

    if (v161 >= v159)
    {
      goto LABEL_229;
    }

    if (*(v287[16] + 32 + 656 * v161 + 176) != 1)
    {
      v258 = v287[16];
      *&v274 = v336[1];
      v163 = v336[14];
      v11 = v336[16];
      v2 = v336[17];
      if (v5)
      {

        v27 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v17);

        goto LABEL_129;
      }

      _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v164);
      v165 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA040AccessibilityPrefersCrossFadeTransitionsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v17, *&v335[0]);
      if (!v165)
      {
        goto LABEL_130;
      }

      v27 = *(v165 + 72);
LABEL_129:
      if (v27 != 2)
      {
        v17 = v282;
        if (v27)
        {
LABEL_137:
          v27 = v274;
          v2 = v265;
          v11 = v250;
LABEL_116:
          v335[4] = v353;
          v335[5] = v354;
          v335[6] = v355;
          v335[7] = v356;
          v335[0] = v349;
          v335[1] = v350;
          v335[2] = v351;
          v335[3] = v352;
          *&v335[8] = v14;
          *(&v335[18] + 8) = v347;
          *(&v335[19] + 8) = v348[0];
          *(&v335[20] + 4) = *(v348 + 12);
          *(&v335[14] + 8) = v343;
          *(&v335[15] + 8) = v344;
          *(&v335[16] + 8) = v345;
          *(&v335[17] + 8) = v346;
          *(&v335[10] + 8) = v339;
          *(&v335[11] + 8) = v340;
          *(&v335[12] + 8) = v341;
          *(&v335[13] + 8) = v342;
          *(&v335[8] + 8) = v337;
          *(&v335[9] + 8) = v338;
          outlined init with copy of GlassContainer.Entry(v335, v334);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          }

          if (*(v27 + 16) <= v17)
          {
            goto LABEL_228;
          }

          ++v6;
          v5 = v27 + v283;
          memcpy(v333, (v27 + v283 + 32), 0x154uLL);
          memcpy((v27 + v283 + 32), v335, 0x154uLL);
          outlined destroy of GlassContainer.Entry(v333);
          v2[1] = v27;
          v334[4] = v353;
          v334[5] = v354;
          v334[6] = v355;
          v334[7] = v356;
          v334[0] = v349;
          v334[1] = v350;
          v334[2] = v351;
          v334[3] = v352;
          *&v334[8] = v14;
          *(&v334[10] + 8) = v339;
          *(&v334[11] + 8) = v340;
          *(&v334[8] + 8) = v337;
          *(&v334[9] + 8) = v338;
          *(&v334[14] + 8) = v343;
          *(&v334[15] + 8) = v344;
          *(&v334[12] + 8) = v341;
          *(&v334[13] + 8) = v342;
          *(&v334[20] + 4) = *(v348 + 12);
          *(&v334[18] + 8) = v347;
          *(&v334[19] + 8) = v348[0];
          *(&v334[16] + 8) = v345;
          *(&v334[17] + 8) = v346;
          outlined destroy of GlassContainer.Entry(v334);
          if (v6 == v11)
          {
            goto LABEL_152;
          }

          if (v6 < v276 || v6 >= v11)
          {
            goto LABEL_224;
          }

          continue;
        }
      }

      else
      {
LABEL_130:
        *&v335[0] = v17;
        *(&v335[0] + 1) = v5;
        LOBYTE(v334[0]) = 3;
        v5 = v335;
        v166 = EnvironmentValues.accessibilitySettingEnabled(_:)(v334);
        v17 = v282;
        if (v166)
        {
          goto LABEL_137;
        }
      }

      if (v6 < 0)
      {
        goto LABEL_240;
      }

      if (v6 >= *(v260 + 16))
      {
        goto LABEL_241;
      }

      v5 = v336[19];
      v257 = 656 * v6;
      memcpy(v285, (v249 + 656 * v6), 0x289uLL);
      v373 = v357;
      v374 = v358;
      v375 = v359;
      v376 = v360;
      v372[0] = v163;
      v372[1] = v277;
      v372[2] = v11;
      v372[3] = v2;
      v372[4] = v336[18];
      v372[5] = v336[19];
      v372[6] = v336[20];
      v372[7] = v336[21];
      v377 = v336[23];

      outlined init with copy of GlassContainer.Item(v285, v332);
      specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(v285);
      outlined destroy of GlassContainer.Item.DistanceContext(v372);
      memcpy(v334, v333, 0x2E9uLL);
      memcpy(v335, v333, 0x2E9uLL);
      if (getEnumTag for AccessibilityTextLayoutProperties(v335) != 1)
      {
        v2 = v265;
        memcpy(v330, v265, sizeof(v330));
        memcpy(v332, v265, 0x118uLL);
        outlined init with copy of Resolver(v330, v309);
        specialized Resolver.log(_:)(v332, specialized closure #1 in Resolver.log(_:));
        memcpy(v331, v332, sizeof(v331));
        outlined destroy of Resolver(v331);
        v326 = v285[10];
        v327 = v285[11];
        v328 = v285[12];
        v277 = *(&v285[13] + 1);
        v329 = *&v285[13];
        v322 = v285[6];
        v323 = v285[7];
        v324 = v285[8];
        v325 = v285[9];
        v318 = v285[2];
        v319 = v285[3];
        v320 = v285[4];
        v321 = v285[5];
        v316 = v285[0];
        v317 = v285[1];
        v272 = *(&v285[14] + 1);
        *&v274 = *&v285[14];
        v314 = v285[15];
        v315 = *&v285[16];
        v313 = BYTE8(v285[17]);
        *v312 = *v245;
        *&v312[3] = *(v245 + 3);
        memcpy(v311, &v285[21], sizeof(v311));
        v168 = v2[32];
        v167 = v2[33];
        outlined init with copy of GlassContainer.Item(v285, v332);
        static GlassContainer.AppearanceSettings.match.getter(v332);
        v169 = *(&v332[0] + 1);
        v170 = *v332;
        v171 = v332[1];
        if (v167)
        {

          v172 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v168);
        }

        else
        {
          v173 = v270;
          v172 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v168);
          v270 = v173;
        }

        v11 = v250;
        if (v172 == 2)
        {
          *v309 = v168;
          *&v309[8] = v167;
          LOBYTE(v308[0]) = 2;
          v172 = EnvironmentValues.accessibilitySettingEnabled(_:)(v308);
        }

        if (v172)
        {
          v170 = 1.0;
        }

        if (BYTE8(v285[17]))
        {
          v174 = 1.0;
        }

        else
        {
          v174 = *&v285[17];
        }

        v313 = 1;
        v27 = LODWORD(v335[0]);
        v5 = *(&v335[0] + 1);
        v175 = *&v335[1];

        outlined consume of Text.LineStyle?(v277, v274);
        *(v2 + 24) = 1;
        v332[10] = v326;
        v332[11] = v327;
        v332[12] = v328;
        v332[6] = v322;
        v332[7] = v323;
        v332[8] = v324;
        v332[9] = v325;
        v332[2] = v318;
        v332[3] = v319;
        v332[4] = v320;
        v332[5] = v321;
        v332[0] = v316;
        v332[1] = v317;
        *&v332[13] = v329;
        *(&v332[13] + 1) = v27;
        *&v332[14] = v5;
        *&v274 = v175;
        *(&v332[14] + 1) = v175;
        v332[15] = v314;
        *&v332[16] = v315;
        *(&v332[16] + 1) = v174;
        v17 = v313;
        BYTE8(v332[17]) = v313;
        v176 = v248;
        *v248 = *v312;
        *(v176 + 3) = *&v312[3];
        *&v332[17] = 0;
        *&v332[18] = 0;
        *(&v332[18] + 1) = *(&v171 + 1);
        *&v332[19] = v170;
        *(&v332[19] + 1) = v169;
        v332[20] = v171;
        memcpy(&v332[21], v311, 0x138uLL);
        BYTE8(v332[40]) = 0;
        outlined init with copy of GlassContainer.Item(v332, v309);
        v14 = v258;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
        }

        outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v334, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Item>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Item>, &type metadata for GlassContainer.Item, type metadata accessor for GlassContainer.MatchingResult);
        outlined destroy of GlassContainer.Item(v285);
        if (v6 >= *(v14 + 2))
        {
          goto LABEL_245;
        }

        LODWORD(v264) = v330[24];
        v277 = v330[15];
        v271 = v330[34];
        v272 = v330[0];
        LODWORD(v258) = v17;
        v177 = v330[1];
        memcpy(v308, &v14[v257 + 32], 0x289uLL);
        v2 = v265;
        memcpy(&v14[v257 + 32], v332, 0x289uLL);
        outlined destroy of GlassContainer.Item(v308);
        *&v309[160] = v326;
        *&v309[176] = v327;
        *&v309[192] = v328;
        *&v309[96] = v322;
        *&v309[112] = v323;
        *&v309[128] = v324;
        *&v309[144] = v325;
        *&v309[32] = v318;
        *&v309[48] = v319;
        *&v309[64] = v320;
        *&v309[80] = v321;
        *v309 = v316;
        *&v309[16] = v317;
        *&v309[208] = v329;
        *&v309[216] = v27;
        *&v309[224] = v5;
        *&v309[232] = v274;
        v27 = v177;
        *&v309[240] = v314;
        *&v309[256] = v315;
        *&v309[264] = v174;
        *&v309[272] = 0;
        v309[280] = v258;
        v178 = v247;
        *v247 = *v312;
        *(v178 + 3) = *&v312[3];
        *&v309[288] = 0;
        *&v309[296] = *(&v171 + 1);
        *&v309[304] = v170;
        *&v309[312] = v169;
        *&v309[320] = v171;
        memcpy(&v309[336], v311, 0x138uLL);
        v310 = 0;
        outlined destroy of GlassContainer.Item(v309);
        goto LABEL_115;
      }

      outlined destroy of GlassContainer.Item(v285);
      v17 = v282;
      goto LABEL_137;
    }

    break;
  }

  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  result = (*v268)(v27, v5);
  __break(1u);
  return result;
}

void Resolver.postProcessEntries()(__n128 a1)
{
  v2 = v1;
  if (Transaction.shouldUseGlassAnimation.getter(*(v1 + 272)))
  {
    v3 = *(v1 + 96);
    v6 = *(v3 + 64);
    v5 = v3 + 64;
    v4 = v6;
    v7 = 1 << *(*(v1 + 96) + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v4;
    v10 = (v7 + 63) >> 6;
    v47 = *(v1 + 96);

    v11 = 0;
    while (v9)
    {
LABEL_11:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (v11 << 9) | (8 * v13);
      v15 = *(v47[6] + v14);
      v16 = *(v47[7] + v14);
      v17 = v2[11];
      if (*(v17 + 16) && (Hasher.init(_seed:)(), MEMORY[0x193AC11A0](v15), v18 = Hasher._finalize()(), v19 = -1 << *(v17 + 32), v20 = v18 & ~v19, ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (*(*(v17 + 48) + 8 * v20) != v15)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        if (*(v2[13] + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v15);
          if (v22)
          {

            adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(v15);
            v23 = *(v16 + 16);
            if (v23)
            {
              v24 = (v16 + 32);
              do
              {
                v25 = *v24++;
                adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(v25);
                --v23;
              }

              while (v23);
            }
          }
        }
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v5 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_11;
      }
    }

    v26 = v2[13];
    v27 = 1 << *(v26 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v26 + 64);
    v30 = (v27 + 63) >> 6;

    v31 = 0;
    while (v29)
    {
LABEL_32:
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v34 = (v31 << 9) | (8 * v33);
      v35 = *(*(v26 + 48) + v34);
      v36 = *(*(v26 + 56) + v34);
      v37 = v2[11];
      if (*(v37 + 16) && (Hasher.init(_seed:)(), MEMORY[0x193AC11A0](v35), v38 = Hasher._finalize()(), v39 = -1 << *(v37 + 32), v40 = v38 & ~v39, ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
      {
        v41 = ~v39;
        while (*(*(v37 + 48) + 8 * v40) != v35)
        {
          v40 = (v40 + 1) & v41;
          if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_37:
        if (v47[2])
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v35);
          if (v42)
          {

            adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(v35);
            v43 = *(v36 + 16);
            if (v43)
            {
              v44 = (v36 + 32);
              do
              {
                v45 = *v44++;
                adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(v45);
                --v43;
              }

              while (v43);
            }
          }
        }
      }
    }

    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {

        KeyPath = swift_getKeyPath();
        specialized MutableCollection<>.sort(by:)(v2 + 1, 0, KeyPath, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

        return;
      }

      v29 = *(v26 + 64 + 8 * v32);
      ++v31;
      if (v29)
      {
        v31 = v32;
        goto LABEL_32;
      }
    }

LABEL_47:
    __break(1u);
  }
}

void specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v104 = MEMORY[0x1EEE9AC00](a1);
  v19 = v18;
  if ((*(v11 + 136) & 1) == 0 || (v20 = *(v11 + 128), (v21 = *(v20 + 16)) == 0))
  {
LABEL_6:
    _s7SwiftUI14GlassContainerO14MatchingResultVy_AC5EntryVGSgWOi0_(__src);
    v25 = v19;
LABEL_7:
    memcpy(v25, __src, 0x1B1uLL);
    return;
  }

  v22 = v17;
  v23 = (v20 + 208);
  v24 = *(v20 + 16);
  while (*v23 == 1)
  {
    v23 += 656;
    if (!--v24)
    {
      goto LABEL_6;
    }
  }

  v99 = v11;
  v78 = v19 + 344;
  v79 = v15;
  v83 = v13;
  v84 = v19;
  v80 = v14;
  v82 = v12;
  v81 = v16;
  v115 = xmmword_18DDAA040;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  memset(v120, 0, 25);
  _s7SwiftUI14GlassContainerO5EntryVSgWOi0_(v122);
  v26 = a11 >> 1;
  swift_unknownObjectRetain();
  swift_beginAccess();
  memcpy(__dst, v122, 0x154uLL);
  v85 = 0;
  v27 = 0;
  v88 = *(MEMORY[0x1E695F050] + 8);
  v89 = *MEMORY[0x1E695F050];
  v86 = *(MEMORY[0x1E695F050] + 24);
  v87 = *(MEMORY[0x1E695F050] + 16);
  v28 = (v20 + 48);
  v101 = INFINITY;
  v29 = a10;
  while (1)
  {
LABEL_14:
    if (v29 == v26)
    {
      _sSi6offset_7SwiftUI14GlassContainerO5EntryV7elementtSgWOi0_(__src);
      v31 = *__src;
      memcpy(v114, &__src[8], sizeof(v114));
      v29 = a11 >> 1;
      goto LABEL_20;
    }

    if (v29 < a10 || v29 >= v26)
    {
      break;
    }

    v32 = (a9 + 344 * v29);
    memcpy(v113, v32, 0x154uLL);
    if (__OFADD__(v27, 1))
    {
      goto LABEL_80;
    }

    ++v29;
    memcpy(&__src[8], v32, 0x154uLL);
    *__src = v27;
    _ViewInputs.base.modify();
    outlined init with copy of GlassContainer.Entry(v113, v131);
    v31 = *__src;
    memcpy(v114, &__src[8], sizeof(v114));
    ++v27;
LABEL_20:
    memcpy(&v113[1], v114, 0x154uLL);
    v113[0] = v31;
    if (_sSi6offset_7SwiftUI14GlassContainerO5EntryV7elementtSgWOg(v113) == 1)
    {
      swift_unknownObjectRelease();
      if ((v85 & 0x100000000) != 0)
      {
        v72 = v84;
        if (v85)
        {
LABEL_71:
          v73 = BYTE8(v115);
          if (BYTE8(v115) != 2)
          {
            v106 = v117;
            v107 = v116;
            v103 = v119;
            v105 = v118;
            *v100 = v120[0];
            v74 = *&v120[1];
            v75 = BYTE8(v120[1]);
            memcpy(__src, __dst, 0x154uLL);
            if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__src) != 1)
            {
              memcpy(v72, __dst, 0x154uLL);
              v72[340] = v73 & 1;
              *v78 = v107;
              *(v78 + 1) = v106;
              *(v78 + 2) = v105;
              *(v78 + 3) = v103;
              *(v78 + 4) = *v100;
              *(v72 + 53) = v74;
              v78[88] = v75 & 1;
              _ViewInputs.base.modify();
              return;
            }

            goto LABEL_78;
          }
        }
      }

      else
      {
        v72 = v84;
        if (v85)
        {
          memcpy(__src, __dst, 0x154uLL);
          if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__src) == 1)
          {
LABEL_78:
            _s7SwiftUI14GlassContainerO14MatchingResultVy_AC5EntryVGSgWOi0_(__src);
            v25 = v72;
            goto LABEL_7;
          }

          memcpy(v131, __dst, 0x154uLL);
          memcpy(v110, v122, 0x154uLL);
          v109 = v101;
          memcpy(v111, __dst, 0x154uLL);
          outlined init with copy of GlassContainer.Entry(v111, v108);
          v76 = specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(v131, v99, &v109, v110, v81 & 1, v22, v82, v83, v104, v80, v79);
          v77 = MEMORY[0x1E69E6720];
          outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v112, v110, 0x154uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v112, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, v77, type metadata accessor for Resolver?);
          if (v76)
          {
            goto LABEL_71;
          }
        }
      }

      outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      goto LABEL_78;
    }

    memcpy(__src, v114, 0x154uLL);
    v33 = *(*&__src[128] + 16);
    v34 = v33 == 0;
    if (v33)
    {
      v35 = (*&__src[128] + 48);
      while (!*(v35 - 1))
      {
        v35 += 82;
        v34 = --v33 == 0;
        if (!v33)
        {
          goto LABEL_27;
        }
      }

      v33 = *v35;
    }

LABEL_27:
    v36 = v21;
    v37 = v28;
    while (!*(v37 - 1))
    {
      v37 += 82;
      if (!--v36)
      {
        if (v34)
        {
          goto LABEL_34;
        }

LABEL_13:
        outlined destroy of GlassContainer.Entry(__src);
        goto LABEL_14;
      }
    }

    if (v34 || v33 != *v37)
    {
      goto LABEL_13;
    }

LABEL_34:
    v38 = *(v22 + 16);
    memcpy(v131, v114, 0x154uLL);
    v39 = *(v22 + 40);
    v112[0] = *(v22 + 24);
    v112[1] = v39;
    v112[2] = *(v22 + 56);
    LODWORD(v112[3]) = *(v22 + 72);
    GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v38, v112, 0, v124);
    if (v125 & 1) != 0 || (v40 = *v124, v41 = *&v124[1], v42 = *&v124[2], v43 = *&v124[3], memcpy(v131, v99, 0x154uLL), v44 = *(v22 + 40), v112[0] = *(v22 + 24), v112[1] = v44, v112[2] = *(v22 + 56), LODWORD(v112[3]) = *(v22 + 72), GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v38, v112, 0, &v126), (v130))
    {
      v45 = 0.0;
      v46 = 0.0;
      v47 = 0.0;
      v48 = INFINITY;
      v49 = 0.0;
      v50 = 0.0;
      v51 = 0.0;
      v52 = 0.0;
      v53 = 0.0;
      v54 = 0.0;
      v55 = 0.0;
      goto LABEL_37;
    }

    v61 = v126;
    v62 = v127;
    v49 = v128;
    v47 = v129;
    v97 = resolvedDistance(from:to:pixelLength:)(v40, v41, v42, v43, v126, v127, v128, v129, *v22);
    v132.origin.x = v61;
    v132.origin.y = v62;
    v132.size.width = v49;
    v132.size.height = v47;
    Width = CGRectGetWidth(v132);
    v133.origin.x = v61;
    v133.origin.y = v62;
    v133.size.width = v49;
    v133.size.height = v47;
    Height = CGRectGetHeight(v133);
    v134.origin.x = v40;
    v134.origin.y = v41;
    v134.size.width = v42;
    v134.size.height = v43;
    v93 = CGRectGetWidth(v134);
    v135.origin.x = v40;
    v135.origin.y = v41;
    v135.size.width = v42;
    v135.size.height = v43;
    v92 = CGRectGetHeight(v135);
    v136.origin.x = v40;
    v136.origin.y = v41;
    v136.size.width = v42;
    v136.size.height = v43;
    v138.origin.x = v61;
    v138.origin.y = v62;
    v138.size.width = v49;
    v138.size.height = v47;
    v137 = CGRectIntersection(v136, v138);
    v90 = v43;
    v91 = v42;
    v63 = v137.size.width;
    v64 = v40;
    v65 = v137.size.height;
    v139.origin.y = v88;
    v139.origin.x = v89;
    v139.size.height = v86;
    v139.size.width = v87;
    v66 = CGRectEqualToRect(v137, v139);
    v51 = v61;
    v50 = v62;
    v52 = v90;
    v67 = v91 * v90;
    if (v49 * v47 < v91 * v90)
    {
      v67 = v49 * v47;
    }

    v68 = v67 * 0.5 > v63 * v65;
    v54 = v41;
    v55 = v64;
    v69 = v62 + Height * 0.5 - (v41 + v92 * 0.5);
    if (v66)
    {
      v46 = v51 + Width * 0.5 - (v64 + v93 * 0.5);
    }

    else
    {
      v46 = 0.0;
    }

    if (v66)
    {
      v45 = v69;
    }

    else
    {
      v45 = 0.0;
    }

    if (v66)
    {
      v68 = 1;
    }

    v53 = v91;
    if (v68)
    {
      v48 = v97;
LABEL_37:
      v56 = v49 * v47;
      v57 = v53 * v52;
      if (v53 * v52 >= v49 * v47)
      {
        v58 = v49 * v47;
      }

      else
      {
        v58 = v53 * v52;
      }

      if (v56 > v57)
      {
        v59 = v49 * v47;
      }

      else
      {
        v59 = v53 * v52;
      }

      v60 = 1;
      if (v58 == 0.0 || v59 == 0.0 || v59 / v58 < 3.0)
      {
        v30 = 1;
        goto LABEL_10;
      }

      if (v56 >= v57)
      {
        goto LABEL_13;
      }

      if (v48 > v104)
      {
        v30 = 1;
        goto LABEL_12;
      }

      if (v48 < v101)
      {
        v30 = 1;
        BYTE4(v85) = 1;
        goto LABEL_64;
      }

      outlined destroy of GlassContainer.Entry(__src);
      BYTE4(v85) = 1;
    }

    else
    {
      v60 = 0;
      v30 = 0;
      v48 = v97;
LABEL_10:
      if (v48 <= v104)
      {
        BYTE4(v85) = 1;
      }

LABEL_12:
      if (v48 >= v101)
      {
        goto LABEL_13;
      }

LABEL_64:
      if (BYTE8(v115) != 2 && (BYTE8(v115) & 1) == 0 && v60)
      {
        goto LABEL_13;
      }

      v102 = v47;
      v96 = v50;
      v98 = v49;
      v70 = v53;
      v71 = v51;
      outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      memcpy(v131, __src, 0x154uLL);
      _ViewInputs.base.modify();
      *&v115 = v48;
      BYTE8(v115) = v30;
      *&v116 = v55;
      *(&v116 + 1) = v54;
      *&v117 = v70;
      *(&v117 + 1) = v52;
      *&v118 = v71;
      *(&v118 + 1) = v96;
      *&v119 = v98;
      *(&v119 + 1) = v102;
      *v120 = v46;
      *(v120 + 1) = v45;
      *&v120[1] = v31;
      BYTE8(v120[1]) = 0;
      memcpy(__dst, v131, 0x154uLL);
      LOBYTE(v85) = 1;
      v101 = v48;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
}

{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v15 = v14;
  v16 = v11;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27[176];
  memcpy(v89, v27, 0x289uLL);
  v29 = v13[5];
  v85 = v13[4];
  v86 = v29;
  v30 = v13[7];
  v87 = v13[6];
  v88 = v30;
  v31 = v13[1];
  v81 = *v13;
  v82 = v31;
  v32 = v13[3];
  v83 = v13[2];
  v84 = v32;
  if (v28)
  {
    _s7SwiftUI14GlassContainerO14MatchingResultVy_AC4ItemVGSgWOi0_(v80);
    v33 = v26;
LABEL_51:
    memcpy(v33, v80, 0x2E9uLL);
    return;
  }

  v53 = v18;
  v54 = v20;
  v55 = v24;
  v56 = v22;
  v58 = v26;
  v72 = xmmword_18DDAA040;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  memset(v77, 0, 25);
  _s7SwiftUI14GlassContainerO4ItemVSgWOi0_(v79);
  v34 = a11 >> 1;
  swift_unknownObjectRetain();
  swift_beginAccess();
  memcpy(v78, v79, 0x289uLL);
  v60 = 0;
  v62 = 0;
  v35 = 0;
  v36 = INFINITY;
  v37 = a10;
LABEL_4:
  v38 = v89[1];
  if (v89[1])
  {
    v39 = v89[2];
  }

  else
  {
    v39 = 0;
  }

  while (1)
  {
    if (v37 == v34)
    {
      _sSi6offset_7SwiftUI14GlassContainerO4ItemV7elementtSgWOi0_(v80);
      v40 = v80[0];
      memcpy(__src, &v80[1], sizeof(__src));
      v37 = a11 >> 1;
      goto LABEL_15;
    }

    if (v37 < a10 || v37 >= v34)
    {
      break;
    }

    v41 = (a9 + 656 * v37);
    memcpy(__dst, v41, 0x289uLL);
    if (__OFADD__(v35, 1))
    {
      goto LABEL_53;
    }

    ++v37;
    memcpy(&v80[1], v41, 0x289uLL);
    v80[0] = v35;
    _ViewInputs.base.modify();
    outlined init with copy of GlassContainer.Item(__dst, v96);
    v40 = v80[0];
    memcpy(__src, &v80[1], sizeof(__src));
    ++v35;
LABEL_15:
    memcpy(&__dst[1], __src, 0x289uLL);
    __dst[0] = v40;
    if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__dst) == 1)
    {
      swift_unknownObjectRelease();
      if (v62)
      {
        v47 = v58;
        if (v60)
        {
LABEL_43:
          v48 = BYTE8(v72);
          if (BYTE8(v72) != 2)
          {
            v63 = v74;
            v64 = v73;
            v59 = v76;
            v61 = v75;
            v57 = v77[0];
            v49 = *&v77[1];
            v50 = BYTE8(v77[1]);
            memcpy(v80, v78, 0x289uLL);
            if (getEnumTag for AccessibilityTextLayoutProperties(v80) != 1)
            {
              memcpy(v47, v78, 0x289uLL);
              *(v47 + 649) = v48 & 1;
              *(v47 + 41) = v64;
              *(v47 + 42) = v63;
              *(v47 + 43) = v61;
              *(v47 + 44) = v59;
              *(v47 + 45) = v57;
              *(v47 + 92) = v49;
              *(v47 + 744) = v50 & 1;
              _ViewInputs.base.modify();
              return;
            }

            goto LABEL_50;
          }
        }
      }

      else
      {
        v47 = v58;
        if (v60)
        {
          memcpy(v80, v78, 0x289uLL);
          if (getEnumTag for AccessibilityTextLayoutProperties(v80) == 1)
          {
LABEL_50:
            _s7SwiftUI14GlassContainerO14MatchingResultVy_AC4ItemVGSgWOi0_(v80);
            v33 = v47;
            goto LABEL_51;
          }

          memcpy(v95, v78, 0x289uLL);
          memcpy(v67, v79, 0x289uLL);
          v66 = v36;
          memcpy(v96, v89, 0x289uLL);
          v97[4] = v85;
          v97[5] = v86;
          v97[6] = v87;
          v97[7] = v88;
          v97[0] = v81;
          v97[1] = v82;
          v97[2] = v83;
          v97[3] = v84;
          memcpy(v68, v78, 0x289uLL);
          outlined init with copy of GlassContainer.Item(v68, v65);
          v51 = specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(v95, v96, &v66, v67, v15 & 1, v97, v55, v56, v54, v53);
          v52 = MEMORY[0x1E69E6720];
          outlined destroy of SeedValue<GlassContainer.EntryState>(v78, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v69, v67, 0x289uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v69, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, v52, type metadata accessor for Resolver?);
          if (v51)
          {
            goto LABEL_43;
          }
        }
      }

      outlined destroy of SeedValue<GlassContainer.EntryState>(v78, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      goto LABEL_50;
    }

    memcpy(v80, __src, 0x289uLL);
    if (v80[1])
    {
      if (!v38 || v80[2] != v39)
      {
        goto LABEL_8;
      }

LABEL_19:
      GlassContainer.Item.matchingResult(to:context:)(v89, &v81, v90);
      if (BYTE8(v90[0]))
      {
        v42 = *&v93 * *(&v93 + 1);
        v43 = *&v91 * *(&v91 + 1);
        v44 = *&v91 * *(&v91 + 1) >= *&v93 * *(&v93 + 1) ? *&v93 * *(&v93 + 1) : *&v91 * *(&v91 + 1);
        v45 = v42 > v43 ? *&v93 * *(&v93 + 1) : *&v91 * *(&v91 + 1);
        if (v44 != 0.0 && v45 != 0.0 && v45 / v44 >= 3.0 && v42 >= v43)
        {
          goto LABEL_36;
        }
      }

      v46 = *v90;
      if (*v90 <= v16)
      {
        v62 = 1;
      }

      if (*v90 < v36 && (BYTE8(v72) == 2 || (BYTE8(v72) & 1) != 0 || BYTE8(v90[0]) != 1))
      {
        outlined destroy of SeedValue<GlassContainer.EntryState>(v78, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
        memcpy(v95, v80, 0x289uLL);
        _ViewInputs.base.modify();
        v76 = v93;
        v77[0] = v94[0];
        *(v77 + 9) = *(v94 + 9);
        v72 = v90[0];
        v73 = v90[1];
        v74 = v91;
        v75 = v92;
        if (BYTE8(v90[0]) != 2)
        {
          *&v77[1] = v40;
          BYTE8(v77[1]) = 0;
        }

        memcpy(v96, v95, 0x289uLL);
        v60 = 1;
        v36 = v46;
      }

      else
      {
LABEL_36:
        memcpy(v95, v80, 0x289uLL);
        outlined destroy of GlassContainer.Item(v95);
        memcpy(v96, v78, 0x289uLL);
      }

      memcpy(v78, v96, 0x289uLL);
      goto LABEL_4;
    }

    if (!v38)
    {
      goto LABEL_19;
    }

LABEL_8:
    memcpy(v96, __src, 0x289uLL);
    outlined destroy of GlassContainer.Item(v96);
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

void specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v8 = v7;
  v10 = v9[176];
  memcpy(v66, v9, 0x289uLL);
  v11 = v5[5];
  v62 = v5[4];
  v63 = v11;
  v12 = v5[7];
  v64 = v5[6];
  v65 = v12;
  v13 = v5[1];
  v58 = *v5;
  v59 = v13;
  v14 = v5[3];
  v60 = v5[2];
  v61 = v14;
  if (v10)
  {
    _s7SwiftUI14GlassContainerO14MatchingResultVy_AC4ItemVGSgWOi0_(v57);
    v15 = v8;
LABEL_50:
    memcpy(v15, v57, 0x2E9uLL);
    return;
  }

  v36 = v8;
  v49 = xmmword_18DDAA040;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v54, 0, 25);
  _s7SwiftUI14GlassContainerO4ItemVSgWOi0_(v56);
  v16 = *(v3 + 16);
  swift_beginAccess();
  memcpy(v55, v56, 0x289uLL);
  v38 = 0;
  v40 = 0;
  v17 = 0;
  v18 = v3 + 32;
  v19 = INFINITY;
LABEL_4:
  v20 = v66[1];
  if (v66[1])
  {
    v21 = v66[2];
  }

  else
  {
    v21 = 0;
  }

  while (1)
  {
    if (v17 == v16)
    {
      _sSi6offset_7SwiftUI14GlassContainerO4ItemV7elementtSgWOi0_(v57);
      v22 = v57[0];
      memcpy(__src, &v57[1], sizeof(__src));
      v17 = v16;
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
      break;
    }

    memcpy(__dst, (v18 + 656 * v17), 0x289uLL);
    if (__OFADD__(v17, 1))
    {
      goto LABEL_52;
    }

    memcpy(&v57[1], (v18 + 656 * v17), 0x289uLL);
    v57[0] = v17;
    _ViewInputs.base.modify();
    outlined init with copy of GlassContainer.Item(__dst, v73);
    v22 = v57[0];
    memcpy(__src, &v57[1], sizeof(__src));
    ++v17;
LABEL_14:
    memcpy(&__dst[1], __src, 0x289uLL);
    __dst[0] = v22;
    if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__dst) == 1)
    {
      if (v40)
      {
        v28 = v36;
        if (v38)
        {
          goto LABEL_42;
        }

LABEL_48:
        outlined destroy of SeedValue<GlassContainer.EntryState>(v55, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      }

      else
      {
        v28 = v36;
        if ((v38 & 1) == 0)
        {
          goto LABEL_48;
        }

        memcpy(v57, v55, 0x289uLL);
        if (getEnumTag for AccessibilityTextLayoutProperties(v57) != 1)
        {
          memcpy(v72, v55, 0x289uLL);
          memcpy(v44, v56, sizeof(v44));
          v43 = v19;
          memcpy(v73, v66, 0x289uLL);
          v74[4] = v62;
          v74[5] = v63;
          v74[6] = v64;
          v74[7] = v65;
          v74[0] = v58;
          v74[1] = v59;
          v74[2] = v60;
          v74[3] = v61;
          memcpy(v45, v55, 0x289uLL);
          outlined init with copy of GlassContainer.Item(v45, v42);
          v32 = specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(v72);
          v33 = MEMORY[0x1E69E6720];
          outlined destroy of SeedValue<GlassContainer.EntryState>(v55, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v46, v44, 0x289uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v46, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, v33, type metadata accessor for Resolver?);
          if ((v32 & 1) == 0)
          {
            goto LABEL_48;
          }

LABEL_42:
          v29 = BYTE8(v49);
          if (BYTE8(v49) == 2)
          {
            goto LABEL_48;
          }

          v39 = v51;
          v41 = v50;
          v35 = v53;
          v37 = v52;
          v34 = v54[0];
          v30 = *&v54[1];
          v31 = BYTE8(v54[1]);
          memcpy(v57, v55, 0x289uLL);
          if (getEnumTag for AccessibilityTextLayoutProperties(v57) != 1)
          {
            memcpy(v28, v55, 0x289uLL);
            *(v28 + 649) = v29 & 1;
            *(v28 + 41) = v41;
            *(v28 + 42) = v39;
            *(v28 + 43) = v37;
            *(v28 + 44) = v35;
            *(v28 + 45) = v34;
            *(v28 + 92) = v30;
            *(v28 + 744) = v31 & 1;
            _ViewInputs.base.modify();
            return;
          }
        }
      }

      _s7SwiftUI14GlassContainerO14MatchingResultVy_AC4ItemVGSgWOi0_(v57);
      v15 = v28;
      goto LABEL_50;
    }

    memcpy(v57, __src, 0x289uLL);
    if (v57[1])
    {
      if (v20 && v57[2] == v21)
      {
LABEL_18:
        GlassContainer.Item.matchingResult(to:context:)(v66, &v58, v67);
        if (BYTE8(v67[0]))
        {
          v23 = *&v70 * *(&v70 + 1);
          v24 = *&v68 * *(&v68 + 1);
          v25 = *&v68 * *(&v68 + 1) >= *&v70 * *(&v70 + 1) ? *&v70 * *(&v70 + 1) : *&v68 * *(&v68 + 1);
          v26 = v23 > v24 ? *&v70 * *(&v70 + 1) : *&v68 * *(&v68 + 1);
          if (v25 != 0.0 && v26 != 0.0 && v26 / v25 >= 3.0 && v23 >= v24)
          {
            goto LABEL_35;
          }
        }

        v27 = *v67;
        if (*v67 <= v6)
        {
          v40 = 1;
        }

        if (*v67 < v19 && (BYTE8(v49) == 2 || (BYTE8(v49) & 1) != 0 || BYTE8(v67[0]) != 1))
        {
          outlined destroy of SeedValue<GlassContainer.EntryState>(v55, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v72, v57, 0x289uLL);
          _ViewInputs.base.modify();
          v53 = v70;
          v54[0] = v71[0];
          *(v54 + 9) = *(v71 + 9);
          v49 = v67[0];
          v50 = v67[1];
          v51 = v68;
          v52 = v69;
          if (BYTE8(v67[0]) != 2)
          {
            *&v54[1] = v22;
            BYTE8(v54[1]) = 0;
          }

          memcpy(v73, v72, 0x289uLL);
          v38 = 1;
          v19 = v27;
        }

        else
        {
LABEL_35:
          memcpy(v72, v57, 0x289uLL);
          outlined destroy of GlassContainer.Item(v72);
          memcpy(v73, v55, 0x289uLL);
        }

        memcpy(v55, v73, 0x289uLL);
        goto LABEL_4;
      }
    }

    else if (!v20)
    {
      goto LABEL_18;
    }

    memcpy(v73, __src, 0x289uLL);
    outlined destroy of GlassContainer.Item(v73);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t Resolver.canMatchEntry(_:isRemoval:allowSelf:sourceResult:)(uint64_t a1, char a2, char a3, void *__src)
{
  v8 = *(a1 + 128);
  memcpy(__dst, __src, 0x1B1uLL);
  memcpy(v48, v4, sizeof(v48));
  v9 = *(v8 + 16);
  if (v9)
  {
    for (i = (v8 + 208); *i == 1; i += 656)
    {
      if (!--v9)
      {
        return v9 & 1;
      }
    }

    v11 = v48[32];
    v12 = v48[33];
    if (v48[33])
    {

      v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v11);
    }

    else
    {
      v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v48[32]);
    }

    if (v13 == 2)
    {
      *v49 = v11;
      *&v49[8] = v12;
      LOBYTE(__srca[0]) = 3;
      v13 = EnvironmentValues.accessibilitySettingEnabled(_:)(__srca);
    }

    LOBYTE(v9) = v13 ^ 1;
    if (v13 & 1) == 0 && (a2)
    {
      memcpy(__srca, __dst, 0x1B1uLL);
      if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__srca) == 1)
      {
        goto LABEL_34;
      }

      memcpy(v49, __srca, sizeof(v49));
      v14 = *(v8 + 16);
      if (!v14)
      {
        goto LABEL_34;
      }

      v15 = (v8 + 208);
      while (*v15 == 1)
      {
        v15 += 656;
        if (!--v14)
        {
          goto LABEL_34;
        }
      }

      if ((__srca[42] & 0x100000000) != 0)
      {
        goto LABEL_34;
      }

      v46[0] = 2;
      outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(__dst, v32);
      if (specialized getter of containsSource #1 in Resolver.canReuseEntry(_:sourceResult:isRemoval:)(v46, v48, v49) & 1) != 0 || (__srca[54])
      {
        outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
LABEL_34:
        memcpy(v46, v48, sizeof(v46));
        v21 = *(a1 + 80);
        v32[4] = *(a1 + 64);
        v32[5] = v21;
        v22 = *(a1 + 112);
        v32[6] = *(a1 + 96);
        v32[7] = v22;
        v23 = *(a1 + 16);
        v32[0] = *a1;
        v32[1] = v23;
        v24 = *(a1 + 48);
        v32[2] = *(a1 + 32);
        v32[3] = v24;
        v25 = *(a1 + 312);
        v44 = *(a1 + 296);
        v45[0] = v25;
        *(v45 + 12) = *(a1 + 324);
        v26 = *(a1 + 280);
        v42 = *(a1 + 264);
        v43 = v26;
        v27 = *(a1 + 200);
        v39 = *(a1 + 216);
        v28 = *(a1 + 248);
        v40 = *(a1 + 232);
        v41 = v28;
        v29 = *(a1 + 136);
        v35 = *(a1 + 152);
        v30 = *(a1 + 184);
        v36 = *(a1 + 168);
        v37 = v30;
        v38 = v27;
        v33 = v8;
        v34 = v29;
        LOBYTE(v9) = Resolver.containsItemsInEntry(_:allowSelf:)(v32, a3 & 1) ^ 1;
        return v9 & 1;
      }

      v50 = v48[9];
      v16 = *(v48[9] + 16);
      if (!v16)
      {
LABEL_33:
        outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v50, v32, type metadata accessor for CollectionChanges<Int, Int>);
        outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);

        goto LABEL_34;
      }

      v17 = v48[9] + 64;
      v18 = (v48[9] + 64);
      while (1)
      {
        v19 = *v18;
        v18 += 40;
        if (v19 == 1 && __srca[53] >= *(v17 - 32) && __srca[53] < *(v17 - 24))
        {
          break;
        }

        v17 = v18;
        if (!--v16)
        {
          goto LABEL_33;
        }
      }

      outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v50, v32, type metadata accessor for CollectionChanges<Int, Int>);
      outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);

      LOBYTE(v9) = 0;
    }
  }

  return v9 & 1;
}

uint64_t Resolver.adjustMatchedEntry(_:sourceResult:isRemoval:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  result = memcpy(v174, v8, 0x1B1uLL);
  if (v1[31])
  {
    return result;
  }

  specialized static Update.begin()();
  v10 = 0.0;
  v11 = 0.0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v10 = *InputValue;
    v11 = InputValue[1];
  }

  static Update.end()();
  v13 = specialized GlassContainer.MatchingResult.transitionAnchor(containerSize:)(v10);
  v15 = v14;
  v16 = *&v174[49] * *&v174[50];
  if (*&v174[45] * *&v174[46] >= *&v174[49] * *&v174[50])
  {
    v17 = *&v174[49] * *&v174[50];
  }

  else
  {
    v17 = *&v174[45] * *&v174[46];
  }

  if (v16 <= *&v174[45] * *&v174[46])
  {
    v16 = *&v174[45] * *&v174[46];
  }

  v18 = 1;
  if (v17 != 0.0 && v16 != 0.0)
  {
    v18 = v16 / v17 < 3.0;
  }

  v146 = v18;
  v155 = *v1;
  v19 = *(v7 + 328);
  GlassContainerCache.entryState(id:)(v19, v171);
  v153 = v1;
  v154 = v174[8];
  v148 = v174[16];
  v20 = v174[41];
  v22 = v1[32];
  v21 = v1[33];
  v151 = v5;
  v152 = v19;
  if (v5)
  {
    static GlassContainer.AppearanceSettings.match.getter(v173);
    v143 = *(v173 + 8);
    v23 = *v173;
    v24 = *(&v173[1] + 1);
    if (v21)
    {

      v25 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v22);
    }

    else
    {
      v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v22);
    }

    v29 = v148;
    if (v25 == 2)
    {
      *&v172[0] = v22;
      *(&v172[0] + 1) = v21;
      LOBYTE(v170[0]) = 2;
      v25 = EnvironmentValues.accessibilitySettingEnabled(_:)(v170);
    }

    v30 = 1.0;
    if ((v25 & 1) == 0)
    {
      v30 = v23;
    }

    *&v171[72] = v30;
    *&v171[80] = v143;
    *&v171[96] = v24;
    v31 = *&v171[40];
    if (v171[48])
    {
      v31 = 0.0;
    }

    *&v171[32] = v31;
    *&v171[56] = xmmword_18DDAA020;
    *&v171[40] = 0;
    v171[48] = 1;
    v171[416] = 2;
    *v171 = v20;
    v171[8] = 0;
    v32 = *(v148 + 16);
    if (v32)
    {
      v149 = v20;
      *&v173[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
      v33 = *&v173[0];
      v34 = *(*&v173[0] + 16);
      v35 = 24 * v34 + 48;
      v36 = (v29 + 48);
      do
      {
        v37 = *(v36 - 4);
        v38 = *(v36 - 1);
        v39 = *v36;
        *&v173[0] = v33;
        v40 = *(v33 + 24);

        if (v34 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v34 + 1, 1);
          v33 = *&v173[0];
        }

        v36 += 82;
        *(v33 + 16) = v34 + 1;
        v41 = (v33 + v35);
        *(v41 - 4) = v37;
        *(v41 - 1) = v38;
        *v41 = v39;
        v35 += 24;
        ++v34;
        --v32;
      }

      while (v32);

      v42 = 0;
      *&v171[624] = v33;
      v43 = MEMORY[0x1E69E7CC0];
      v20 = v149;
      v19 = v152;
    }

    else
    {

      v42 = 0;
      v43 = MEMORY[0x1E69E7CC0];
      *&v171[624] = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_105;
  }

  static GlassContainer.AppearanceSettings.match.getter(v173);
  v144 = *(v173 + 8);
  v26 = *v173;
  v27 = *(&v173[1] + 1);
  if (v21)
  {

    v28 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v22);
  }

  else
  {
    v28 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v22);
  }

  v147 = v7;
  if (v28 == 2)
  {
    *&v172[0] = v22;
    *(&v172[0] + 1) = v21;
    v44 = v169;
    LOBYTE(v170[0]) = 2;
    v28 = EnvironmentValues.accessibilitySettingEnabled(_:)(v170);
  }

  else
  {
    v44 = v169;
  }

  v45 = 1.0;
  if (v28)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = v26;
  }

  *&v171[80] = v144;
  *&v171[96] = v27;
  if (!v171[48])
  {
    v45 = *&v171[40];
  }

  *&v171[32] = v45;
  *&v171[72] = v46;
  *&v171[64] = v27;
  *&v171[56] = 0;
  *&v171[40] = 0;
  v171[48] = 1;
  v171[416] = 0;
  v47 = *&v174[51];
  v48 = *&v174[52];
  v49 = v1[33];
  v50 = v3[34];
  v51 = v3[32];
  if ((Transaction.shouldUseGlassAnimation.getter(v50) & 1) == 0)
  {
    goto LABEL_46;
  }

  if (v49)
  {

    v52 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v51);
  }

  else
  {
    v52 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v51);
  }

  if (v52 == 2)
  {
    *&v173[0] = v51;
    *(&v173[0] + 1) = v49;
    LOBYTE(v172[0]) = 2;
    v49 = v173;
    if (EnvironmentValues.accessibilitySettingEnabled(_:)(v172))
    {
LABEL_46:
      v2 = 0;
      goto LABEL_59;
    }
  }

  else if (v52)
  {
    goto LABEL_46;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v50, v173);
  if (v173[3])
  {
    type metadata accessor for GlassContainerPTDomain();
    v156.receiver = swift_getObjCClassFromMetadata();
    v156.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
    v53 = objc_msgSendSuper2(&v156, sel_rootSettings);
    if (!v53)
    {
LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

    v54 = v53;
    type metadata accessor for GlassContainerPTSettings();
    v55 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_transition);

    v49 = v55;
    GlassContainerTransitionPTSettings.transition.getter(v172);

    v56 = *(&v172[1] + 1);
    v57 = *(&v172[2] + 1);
    v58 = *&v172[2];
    if (one-time initialization token for enableAdjustments != -1)
    {
      v142 = *(&v172[1] + 1);
      v145 = *(&v172[2] + 1);
      v140 = *&v172[2];
      swift_once();
      v58 = v140;
      v56 = v142;
      v57 = v145;
    }

    if (!enableAdjustments)
    {
      Spring.init(duration:bounce:)(0.5, 0.3);
      v57 = 0.2;
      v58 = 0.1;
      v56 = 0.4;
    }
  }

  else
  {
    v57 = *(&v173[2] + 1);
    v58 = *&v173[2];
    v56 = *(&v173[1] + 1);
  }

  if (__OFADD__(*&v171[104], 1))
  {
    __break(1u);
    goto LABEL_201;
  }

  *&v171[112] = *&v171[104] + 1;
  v59 = sqrt(v47 * v47 + v48 * v48) / sqrt(v10 * v10 + v11 * v11) * v56;
  if (v57 >= v59)
  {
    v57 = v59;
  }

  *&v171[120] = v58 + v57;
  v2 = 1;
LABEL_59:
  v60 = v3[32];
  v49 = v3[33];
  if ((Transaction.shouldUseGlassAnimation.getter(v50) & 1) == 0)
  {
    v62 = 0;
    goto LABEL_78;
  }

  if (v49)
  {

    v61 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v60);
  }

  else
  {
    v61 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v60);
  }

  if (v61 == 2)
  {
    *&v173[0] = v60;
    *(&v173[0] + 1) = v49;
    LOBYTE(v172[0]) = 2;
    v49 = v173;
    if (EnvironmentValues.accessibilitySettingEnabled(_:)(v172))
    {
LABEL_66:
      v62 = 0;
      goto LABEL_78;
    }
  }

  else if (v61)
  {
    goto LABEL_66;
  }

  if (__OFADD__(*&v171[128], 1))
  {
LABEL_201:
    __break(1u);
LABEL_202:
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
    goto LABEL_159;
  }

  *&v171[160] = *&v171[128] + 1;
  *&v171[136] = v13;
  *&v171[144] = v15;
  v171[152] = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v50, v173);
  v172[6] = v173[12];
  v172[7] = v173[13];
  v172[8] = v173[14];
  *(&v172[8] + 9) = *(&v173[14] + 9);
  v172[2] = v173[8];
  v172[3] = v173[9];
  v172[4] = v173[10];
  v172[5] = v173[11];
  v172[0] = v173[6];
  v172[1] = v173[7];
  if (_s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v172) == 1)
  {
    type metadata accessor for GlassContainerPTDomain();
    v157.receiver = swift_getObjCClassFromMetadata();
    v157.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
    v63 = objc_msgSendSuper2(&v157, sel_rootSettings);
    if (!v63)
    {
LABEL_207:
      __break(1u);
      goto LABEL_208;
    }

    v64 = v63;
    type metadata accessor for GlassContainerPTSettings();
    v65 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

    GlassContainerScalePulsePTSettings.scalePulse.getter(v169);
    if (one-time initialization token for enableAdjustments != -1)
    {
      swift_once();
    }

    if (enableAdjustments)
    {
      v170[6] = v169[6];
      v170[7] = v169[7];
      v170[8] = v169[8];
      *&v170[9] = *&v169[9];
      v170[2] = v169[2];
      v170[3] = v169[3];
      v170[4] = v169[4];
      v170[5] = v169[5];
      v170[0] = v169[0];
      v170[1] = v169[1];
    }

    else
    {
      static GlassContainer.ScalePulseSettings.defaultValue.getter(v170);
    }
  }

  else
  {
    v170[6] = v173[12];
    v170[7] = v173[13];
    v170[8] = v173[14];
    *&v170[9] = *&v173[15];
    v170[2] = v173[8];
    v170[3] = v173[9];
    v170[4] = v173[10];
    v170[5] = v173[11];
    v170[0] = v173[6];
    v170[1] = v173[7];
  }

  *&v171[264] = v170[6];
  *&v171[280] = v170[7];
  *&v171[296] = v170[8];
  *&v171[200] = v170[2];
  *&v171[216] = v170[3];
  *&v171[232] = v170[4];
  *&v171[248] = v170[5];
  *&v171[168] = v170[0];
  *&v171[312] = *&v170[9];
  v62 = 1;
  *&v171[184] = v170[1];
LABEL_78:
  v67 = v3[32];
  v66 = v3[33];
  if (Transaction.shouldUseGlassAnimation.getter(v50))
  {
    v68 = v148;
    if (v66)
    {

      v69 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v67);
    }

    else
    {
      v69 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v67);
    }

    if (v69 == 2)
    {
      *&v173[0] = v67;
      *(&v173[0] + 1) = v66;
      LOBYTE(v172[0]) = 2;
      v66 = v173;
      if (!EnvironmentValues.accessibilitySettingEnabled(_:)(v172))
      {
LABEL_89:
        if (__OFADD__(*&v171[320], 1))
        {
          __break(1u);
        }

        else
        {
          *&v171[336] = *&v171[320] + 1;
          v66 = *&v171[328];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_91:
            v71 = *(v66 + 2);
            v70 = *(v66 + 3);
            if (v71 >= v70 >> 1)
            {
              v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v66);
            }

            *(v66 + 2) = v71 + 1;
            v72 = &v66[16 * v71];
            *(v72 + 4) = v47;
            *(v72 + 5) = v48;
            *&v171[328] = v66;
            _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v50, v173);
            if (BYTE8(v173[20]))
            {
              static GlassContainer.TranslationKickSettings.default.getter(v172);
            }

            else
            {
              v172[2] = v173[18];
              v172[3] = v173[19];
              *&v172[4] = *&v173[20];
              v172[0] = v173[16];
              v172[1] = v173[17];
            }

            v68 = v148;
            *&v171[376] = v172[2];
            *&v171[392] = v172[3];
            *&v171[344] = v172[0];
            *&v171[360] = v172[1];
            *&v171[408] = *&v172[4];
            goto LABEL_97;
          }
        }

        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
        goto LABEL_91;
      }
    }

    else if ((v69 & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v68 = v148;
  }

  if (((v2 | v62) & 1) == 0)
  {
    v42 = 0;
    *v171 = v20;
    v171[8] = 0;
    goto LABEL_98;
  }

LABEL_97:
  *v171 = v20;
  v171[8] = 0;
  v42 = 1;
LABEL_98:

  v43 = MEMORY[0x1E69E7CC0];
  *&v171[624] = MEMORY[0x1E69E7CC0];
  v73 = *(v68 + 16);
  if (v73)
  {
    v141 = v42;
    v150 = v20;
    *&v173[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
    v43 = *&v173[0];
    v74 = *(*&v173[0] + 16);
    v75 = 24 * v74 + 48;
    v76 = (v68 + 48);
    do
    {
      v77 = *(v76 - 4);
      v78 = *(v76 - 1);
      v79 = *v76;
      *&v173[0] = v43;
      v80 = *(v43 + 24);

      if (v74 >= v80 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v74 + 1, 1);
        v43 = *&v173[0];
      }

      v76 += 82;
      *(v43 + 16) = v74 + 1;
      v81 = (v43 + v75);
      *(v81 - 4) = v77;
      *(v81 - 1) = v78;
      *v81 = v79;
      v75 += 24;
      ++v74;
      --v73;
    }

    while (v73);
    v7 = v147;
    v20 = v150;
    v19 = v152;
    v42 = v141;
  }

  else
  {
    v7 = v147;
  }

LABEL_105:

  *&v171[16] = v43;
  v82 = *(v7 + 64);
  v83 = v154;
  v84 = v155;
  if (v154)
  {
    if (v82)
    {
      if (v154 == v82)
      {
        goto LABEL_127;
      }

      v85 = *(*v154 + 88);
      swift_retain_n();

      v87 = v85(v86);

      v83 = v154;
      if (v87)
      {

        goto LABEL_127;
      }
    }

    else
    {

      v83 = v154;
    }

LABEL_113:
    if (one-time initialization token for clear != -1)
    {
      swift_once();
      v83 = v154;
    }

    v88 = static Color.clear;
    if (v151)
    {
      v89 = v83;
    }

    else
    {
      v89 = v82;
    }

    if (v151)
    {
      v90 = v82;
    }

    else
    {
      v90 = v83;
    }

    if (v90)
    {
      if (v89)
      {
LABEL_123:
        v88 = v89;
LABEL_126:
        type metadata accessor for ColorBox<Color.MixProvider>(0);
        v91 = swift_allocObject();
        *(v91 + 16) = v90;
        *(v91 + 24) = v88;
        *(v91 + 32) = 2;
        *(v91 + 36) = 0;
        *(v7 + 64) = v91;
        v92 = swift_allocObject();
        *(v92 + 16) = v90;
        *(v92 + 24) = v88;
        *(v92 + 32) = 2;
        *(v92 + 36) = 1065353216;

        *&v171[616] = v92;
        v84 = v155;
        goto LABEL_127;
      }
    }

    else
    {

      v90 = v88;
      if (v89)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_126;
  }

  if (v82)
  {
    goto LABEL_113;
  }

LABEL_127:
  memcpy(v168, v171, sizeof(v168));
  swift_beginAccess();
  v93 = *(v84 + 176);
  memcpy(v167, v168, 0x278uLL);
  v167[158] = v93;
  _ViewInputs.base.modify();
  memcpy(v169, v167, 0x27CuLL);
  memcpy(v170, v167, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v170) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(v168, v173);
    specialized Dictionary._Variant.removeValue(forKey:)(v19, v172);
    memcpy(v173, v172, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v173, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v173, v169, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(v168, v172);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v172[0] = *(v84 + 168);
    *(v84 + 168) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v173, v19, isUniquelyReferenced_nonNull_native);
    *(v84 + 168) = *&v172[0];
  }

  swift_endAccess();
  memcpy(__dst, v171, sizeof(__dst));
  outlined destroy of GlassContainer.EntryState(__dst);
  if (v42)
  {
    ++*(v84 + 200);
  }

  v44 = v164;
  GlassContainer.Entry.resetTransition()();
  ++*(v7 + 336);
  v50 = v20;
  GlassContainerCache.entryState(id:)(v20, __src);
  v95 = v153[33];
  v19 = v153[34];
  v96 = v153[32];
  if ((Transaction.shouldUseGlassAnimation.getter(v19) & 1) == 0)
  {
    goto LABEL_138;
  }

  if (v95)
  {

    v97 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v96);
  }

  else
  {
    v97 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v96);
  }

  if (v97 != 2)
  {
    if ((v97 & 1) == 0)
    {
      goto LABEL_141;
    }

LABEL_138:
    if (v151)
    {
      goto LABEL_165;
    }

    goto LABEL_150;
  }

  *&v172[0] = v96;
  *(&v172[0] + 1) = v95;
  LOBYTE(v164[0]) = 2;
  if (EnvironmentValues.accessibilitySettingEnabled(_:)(v164))
  {
    goto LABEL_138;
  }

LABEL_141:
  ++__src[16];
  *&__src[17] = v13;
  __src[18] = v15;
  LOBYTE(__src[19]) = v146;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v19, v172);
  v164[6] = v172[12];
  v164[7] = v172[13];
  v164[8] = v172[14];
  *(&v164[8] + 9) = *(&v172[14] + 9);
  v164[2] = v172[8];
  v164[3] = v172[9];
  v164[4] = v172[10];
  v164[5] = v172[11];
  v164[0] = v172[6];
  v164[1] = v172[7];
  if (_s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v164) != 1)
  {
    v163[6] = v172[12];
    v163[7] = v172[13];
    v163[8] = v172[14];
    v163[2] = v172[8];
    v163[3] = v172[9];
    v163[4] = v172[10];
    v163[5] = v172[11];
    v163[0] = v172[6];
    *&v163[9] = *&v172[15];
    v163[1] = v172[7];
    v101 = v151;
    goto LABEL_149;
  }

  type metadata accessor for GlassContainerPTDomain();
  v158.receiver = swift_getObjCClassFromMetadata();
  v158.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v98 = objc_msgSendSuper2(&v158, sel_rootSettings);
  if (!v98)
  {
    __break(1u);
    goto LABEL_206;
  }

  v99 = v98;
  type metadata accessor for GlassContainerPTSettings();
  v100 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

  GlassContainerScalePulsePTSettings.scalePulse.getter(v160);
  if (one-time initialization token for enableAdjustments != -1)
  {
    swift_once();
  }

  v101 = v151;
  if (enableAdjustments)
  {
    v163[6] = v160[6];
    v163[7] = v160[7];
    v163[8] = v160[8];
    v163[2] = v160[2];
    v163[3] = v160[3];
    v163[4] = v160[4];
    v163[5] = v160[5];
    v163[0] = v160[0];
    *&v163[9] = *&v160[9];
    v163[1] = v160[1];
  }

  else
  {
    static GlassContainer.ScalePulseSettings.defaultValue.getter(v163);
  }

LABEL_149:
  *&__src[33] = v163[6];
  *&__src[35] = v163[7];
  *&__src[37] = v163[8];
  __src[39] = *&v163[9];
  *&__src[25] = v163[2];
  *&__src[27] = v163[3];
  *&__src[29] = v163[4];
  *&__src[31] = v163[5];
  *&__src[21] = v163[0];
  *&__src[23] = v163[1];
  if (v101)
  {
    goto LABEL_165;
  }

LABEL_150:
  v2 = &v175;
  v175 = *&v174[51];
  v103 = v153[32];
  v102 = v153[33];
  if ((Transaction.shouldUseGlassAnimation.getter(v19) & 1) == 0)
  {
    goto LABEL_165;
  }

  if (v102)
  {

    v104 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v103);
  }

  else
  {
    v104 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v103);
  }

  if (v104 == 2)
  {
    *&v172[0] = v103;
    *(&v172[0] + 1) = v102;
    LOBYTE(v164[0]) = 2;
    if (EnvironmentValues.accessibilitySettingEnabled(_:)(v164))
    {
      goto LABEL_165;
    }
  }

  else if (v104)
  {
    goto LABEL_165;
  }

  v49 = __src[41];
  ++__src[40];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_202;
  }

LABEL_159:
  v106 = *(v49 + 2);
  v105 = *(v49 + 3);
  if (v106 >= v105 >> 1)
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v49);
  }

  *(v49 + 2) = v106 + 1;
  *&v49[16 * v106 + 32] = *v2;
  __src[41] = v49;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v19, v172);
  if (BYTE8(v172[20]))
  {
    static GlassContainer.TranslationKickSettings.default.getter(v164);
  }

  else
  {
    v107 = v172[19];
    v44[2] = v172[18];
    v44[3] = v107;
    *&v164[4] = *&v172[20];
    v108 = v172[17];
    *v44 = v172[16];
    v44[1] = v108;
  }

  v109 = v44[3];
  *&__src[47] = v44[2];
  *&__src[49] = v109;
  v110 = v44[1];
  *&__src[43] = *v44;
  *&__src[45] = v110;
  __src[51] = *&v164[4];
LABEL_165:
  memcpy(v162, __src, sizeof(v162));
  swift_beginAccess();
  v111 = *(v155 + 176);
  memcpy(v160, v162, 0x278uLL);
  DWORD2(v160[39]) = v111;
  _ViewInputs.base.modify();
  memcpy(v163, v160, 0x27CuLL);
  memcpy(v164, v160, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v164) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(v162, v172);
    v112 = v50;
    specialized Dictionary._Variant.removeValue(forKey:)(v50, v159);
    memcpy(v172, v159, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v172, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v172, v163, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(v162, v159);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = *(v155 + 168);
    v112 = v50;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v172, v50, v113);
    *(v155 + 168) = v159[0];
  }

  v114 = v153;
  swift_endAccess();
  memcpy(v159, __src, 0x278uLL);
  outlined destroy of GlassContainer.EntryState(v159);
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v161 = v153[12];
  v116 = v161;
  v118 = specialized __RawDictionaryStorage.find<A>(_:)(v112);
  v119 = *(v116 + 2);
  v120 = (v117 & 1) == 0;
  v121 = v119 + v120;
  if (!__OFADD__(v119, v120))
  {
    v122 = v117;
    if (*(v116 + 3) >= v121)
    {
      if (v115)
      {
        v153[12] = v116;
        if (v117)
        {
          goto LABEL_176;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v116 = v161;
        v153[12] = v161;
        if (v122)
        {
          goto LABEL_176;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v121, v115);
      v116 = v161;
      v123 = specialized __RawDictionaryStorage.find<A>(_:)(v112);
      if ((v122 & 1) != (v124 & 1))
      {
        goto LABEL_208;
      }

      v118 = v123;
      v153[12] = v116;
      if (v122)
      {
LABEL_176:
        v44 = *(v116 + 7);
        v116 = *(v44 + v118);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + v118) = v116;
        if (v125)
        {
          goto LABEL_177;
        }

        goto LABEL_193;
      }
    }

    specialized _NativeDictionary._insert(at:key:value:)(v118, v112, MEMORY[0x1E69E7CC0], v116);
    goto LABEL_176;
  }

  __break(1u);
LABEL_193:
  v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v116 + 2) + 1, 1, v116);
  *(v44 + v118) = v116;
LABEL_177:
  v127 = *(v116 + 2);
  v126 = *(v116 + 3);
  if (v127 >= v126 >> 1)
  {
    v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v116);
    *(v44 + v118) = v116;
  }

  *(v116 + 2) = v127 + 1;
  *&v116[8 * v127 + 32] = v152;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v161 = v153[13];
  v129 = v161;
  v131 = specialized __RawDictionaryStorage.find<A>(_:)(v152);
  v132 = *(v129 + 2);
  v133 = (v130 & 1) == 0;
  v134 = v132 + v133;
  if (__OFADD__(v132, v133))
  {
    __break(1u);
    goto LABEL_195;
  }

  v135 = v130;
  if (*(v129 + 3) < v134)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v134, v128);
    v129 = v161;
    v136 = specialized __RawDictionaryStorage.find<A>(_:)(v152);
    if ((v135 & 1) == (v137 & 1))
    {
      v131 = v136;
      v153[13] = v129;
      if (v135)
      {
        goto LABEL_187;
      }

      goto LABEL_186;
    }

LABEL_208:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if (v128)
  {
    v153[13] = v129;
    if (v130)
    {
      goto LABEL_187;
    }

    goto LABEL_186;
  }

  specialized _NativeDictionary.copy()();
  v129 = v161;
  v153[13] = v161;
  if ((v135 & 1) == 0)
  {
LABEL_186:
    specialized _NativeDictionary._insert(at:key:value:)(v131, v152, MEMORY[0x1E69E7CC0], v129);
  }

LABEL_187:
  v44 = *(v129 + 7);
  v114 = *(v44 + v131);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v44 + v131) = v114;
  if ((result & 1) == 0)
  {
LABEL_195:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v114 + 16) + 1, 1, v114);
    v114 = result;
    *(v44 + v131) = result;
  }

  v139 = *(v114 + 16);
  v138 = *(v114 + 24);
  if (v139 >= v138 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1, v114);
    v114 = result;
    *(v44 + v131) = result;
  }

  *(v114 + 16) = v139 + 1;
  *(v114 + 8 * v139 + 32) = v112;
  return result;
}

uint64_t Resolver.canMaterializeEntry(_:isRemoval:)(uint64_t a1, char a2)
{
  v3 = *(a1 + 128);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = *(v2 + 8);
  if (*(v3 + 208) == 1 && !(*(v3 + 192) | *(v3 + 200) | *(v3 + 184)))
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    return 1;
  }

  v6 = 0;
  v7 = *(v5 + 16);
  while (1)
  {
    memcpy(__dst, (v3 + 32 + 656 * v6), 0x289uLL);
    if (v7)
    {
      break;
    }

LABEL_15:
    if (++v6 == v4)
    {
      return 1;
    }

    if (v6 >= *(v3 + 16))
    {
      __break(1u);
      return 1;
    }
  }

  v8 = __dst[0];
  result = outlined init with copy of GlassContainer.Item(__dst, v16);
  v10 = 0;
  while (v10 != *(v5 + 16))
  {
    v11 = v10 + 1;
    v12 = *(v5 + 160 + 344 * v10);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    while (--v14)
    {
      v15 = *v13;
      v13 += 164;
      if (v15 == v8)
      {
        outlined destroy of GlassContainer.Item(__dst);
        return 0;
      }
    }

    v10 = v11;
    if (v11 == v7)
    {
      outlined destroy of GlassContainer.Item(__dst);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void Resolver.adjustMaterializedEntry(_:isRemoval:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  memcpy(__dst, v1, sizeof(__dst));
  v6 = __dst[24];
  v7 = __dst[0];
  v8 = *(v5 + 328);
  GlassContainerCache.entryState(id:)(v8, __src);
  closure #1 in Resolver.adjustMaterializedEntry(_:isRemoval:)(__src, v3, __dst, v5, v6);
  memcpy(v16, __src, sizeof(v16));
  swift_beginAccess();
  v9 = *(v7 + 176);
  memcpy(v12, v16, 0x278uLL);
  v12[158] = v9;
  _ViewInputs.base.modify();
  memcpy(v17, v12, sizeof(v17));
  memcpy(v18, v12, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v18) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(v16, v14);
    specialized Dictionary._Variant.removeValue(forKey:)(v8, v11);
    memcpy(v14, v11, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v14, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v14, v17, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(v16, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11[0] = *(v7 + 168);
    *(v7 + 168) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v8, isUniquelyReferenced_nonNull_native);
    *(v7 + 168) = v11[0];
  }

  swift_endAccess();
  memcpy(v11, __src, 0x278uLL);
  outlined destroy of GlassContainer.EntryState(v11);
  GlassContainer.Entry.resetTransition()();
  ++*(v5 + 336);
}

void adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v5 = *v1;

  GlassContainerCache.entryState(id:)(v4, __src);
  v6 = 0;
  __src[5] = 0;
  LOBYTE(__src[6]) = 0;
  v7 = __src[13];
  v8 = __src[14];
  v9 = *&__src[15];
  memset(&__src[13], 0, 24);
  if (!(v7 | v8))
  {
    v6 = v9 == 0.0;
  }

  v10 = v2[33];
  v11 = v2[34];
  v12 = v2[32];

  if ((Transaction.shouldUseGlassAnimation.getter(v11) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v10)
  {

    v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v12);
  }

  else
  {
    v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v12);
  }

  if (v13 != 2)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:

    goto LABEL_20;
  }

  *&v72[0] = v12;
  *(&v72[0] + 1) = v10;
  LOBYTE(v70[0]) = 2;
  if (EnvironmentValues.accessibilitySettingEnabled(_:)(v70))
  {
    goto LABEL_16;
  }

LABEL_9:
  ++__src[16];
  __asm { FMOV            V0.2D, #0.5 }

  *&__src[17] = _Q0;
  LOBYTE(__src[19]) = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v11, v72);
  v20 = *(&v72[14] + 1);
  v19 = *&v72[14];
  v21 = *&v72[15];
  v49 = v72[7];
  v52 = v72[6];
  v70[0] = v72[6];
  v70[1] = v72[7];
  v60 = v72[8];
  v62 = v72[9];
  v70[2] = v72[8];
  v70[3] = v72[9];
  v55 = v72[11];
  v58 = v72[10];
  v70[4] = v72[10];
  v70[5] = v72[11];
  v43 = v72[13];
  v46 = v72[12];
  v70[6] = v72[12];
  v70[7] = v72[13];
  v70[8] = v72[14];
  *&v70[9] = *&v72[15];
  BYTE8(v70[9]) = BYTE8(v72[15]);
  if (_s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v70) == 1)
  {
    type metadata accessor for GlassContainerPTDomain();
    v65.receiver = swift_getObjCClassFromMetadata();
    v65.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
    v22 = objc_msgSendSuper2(&v65, sel_rootSettings);
    if (!v22)
    {
      __break(1u);
      return;
    }

    v23 = v22;
    type metadata accessor for GlassContainerPTSettings();
    v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

    GlassContainerScalePulsePTSettings.scalePulse.getter(v69);
    v25 = v69[1];
    v26 = v69[0];
    v27 = v69[3];
    v28 = v69[2];
    v29 = v69[5];
    v30 = v69[4];
    v31 = v69[7];
    v32 = v69[6];
    v20 = *(&v69[8] + 1);
    v19 = *&v69[8];
    v21 = *&v69[9];
    if (one-time initialization token for enableAdjustments != -1)
    {
      v61 = v69[2];
      v64 = v69[3];
      v57 = v69[5];
      v59 = v69[4];
      v51 = v69[1];
      v54 = v69[0];
      v45 = v69[7];
      v48 = v69[6];
      swift_once();
      v31 = v45;
      v32 = v48;
      v25 = v51;
      v26 = v54;
      v29 = v57;
      v30 = v59;
      v28 = v61;
      v27 = v64;
    }

    if (enableAdjustments)
    {
      v58 = v30;
      v60 = v28;
      v62 = v27;
      v53 = v26;
      v56 = v29;
      v47 = v32;
      v50 = v25;
      v44 = v31;

      v34 = v44;
      v33 = v47;
      _Q2 = v50;
      v35 = v53;
      v37 = v56;
    }

    else
    {
      Spring.init(duration:bounce:)(0.5, 0.3);
      v20 = *(&v69[0] + 1);
      v19 = *&v69[0];
      v21 = *&v69[1];
      Spring.init(duration:bounce:)(0.35, 0.6);
      v60 = v69[0];
      v63 = *&v69[1];
      Spring.init(duration:bounce:)(0.5, 0.5);
      *&v38 = v63;
      *(&v38 + 1) = v67[0];
      v62 = v38;
      v58 = *&v67[1];
      Spring.init(duration:bounce:)(0.5, 0.6);

      v39 = &unk_18DDA9FF8;
      *&v37 = *&vld1q_dup_f64(v39);
      *(&v37 + 1) = v66[0];
      v33 = *&v66[1];
      v35 = vdupq_n_s64(0x3FF3333333333333uLL);
      v34 = xmmword_18DDAA030;
      __asm { FMOV            V2.2D, #16.0 }
    }
  }

  else
  {

    v35 = v52;
    v37 = v55;
    v33 = v46;
    _Q2 = v49;
    v34 = v43;
  }

  *&__src[21] = v35;
  *&__src[23] = _Q2;
  *&__src[25] = v60;
  *&__src[27] = v62;
  *&__src[29] = v58;
  *&__src[31] = v37;
  *&__src[33] = v33;
  *&__src[35] = v34;
  __src[37] = v19;
  __src[38] = v20;
  __src[39] = v21;
LABEL_20:
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  v40 = *(v5 + 176);
  memcpy(v67, __dst, 0x278uLL);
  LODWORD(v67[79]) = v40;
  _ViewInputs.base.modify();
  memcpy(v69, v67, 0x27CuLL);
  memcpy(v70, v67, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v70) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(__dst, v72);
    specialized Dictionary._Variant.removeValue(forKey:)(v4, v66);
    memcpy(v72, v66, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v72, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v72, v69, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(__dst, v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66[0] = *(v5 + 168);
    *(v5 + 168) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v72, v4, isUniquelyReferenced_nonNull_native);
    *(v5 + 168) = v66[0];
  }

  swift_endAccess();

  memcpy(v66, __src, 0x278uLL);
  outlined destroy of GlassContainer.EntryState(v66);
  if (!v6)
  {
    v42 = *(*v2 + 200) - 1;
    *(*v2 + 200) = v42;
    if (!v42)
    {

      GlassContainerCache.invalidateResolved(transaction:)(0);
    }
  }
}