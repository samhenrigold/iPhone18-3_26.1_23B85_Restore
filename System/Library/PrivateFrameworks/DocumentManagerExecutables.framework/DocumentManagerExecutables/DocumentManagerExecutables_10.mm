void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_51;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()();
      goto LABEL_51;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  DOCItemFileTypeGroupCategory.hash(into:)(v25, result, a2);
  v12 = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18 <= 4)
      {
        if (v18 > 1)
        {
          if (v18 == 2)
          {
            if (a2 == 2)
            {
              goto LABEL_50;
            }
          }

          else if (v18 == 3)
          {
            if (a2 == 3)
            {
              goto LABEL_50;
            }
          }

          else if (a2 == 4)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        }

        if (!v18)
        {
          if (!a2)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        }

        if (v18 == 1)
        {
          if (a2 == 1)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        }
      }

      else
      {
        if (v18 <= 7)
        {
          if (v18 == 5)
          {
            if (a2 == 5)
            {
              goto LABEL_50;
            }
          }

          else if (v18 == 6)
          {
            if (a2 == 6)
            {
              goto LABEL_50;
            }
          }

          else if (a2 == 7)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        }

        switch(v18)
        {
          case 8:
            if (a2 == 8)
            {
              goto LABEL_50;
            }

            goto LABEL_11;
          case 9:
            if (a2 == 9)
            {
              goto LABEL_50;
            }

            goto LABEL_11;
          case 10:
            if (a2 == 10)
            {
              goto LABEL_50;
            }

            goto LABEL_11;
        }
      }

      if (a2 >= 0xB)
      {
        v19 = *v17 == result && v18 == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
LABEL_50:
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

LABEL_11:
      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_51:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85588]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for DOCItemCollectionCell();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, void (*a4)(unint64_t), uint64_t (*a5)(void, __n128), void (*a6)(unint64_t), void (*a7)(void))
{
  v8 = v7;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v13 = a5;
    a4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      a7();
      goto LABEL_16;
    }

    v13 = a5;
    a6(v11 + 1);
  }

  v14 = *v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v15 = Hasher._finalize()();

  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v13(0);
    do
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {
        goto LABEL_19;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v24 = *v8;
  *(*v8 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + 8 * a2) = a1;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for DSLightweightTagInfo();
  lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo, MEMORY[0x282217CB0]);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo, MEMORY[0x282217CB8]);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(__int128 *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(result + 1, *(result + 4));
  dispatch thunk of Hashable.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      outlined init with copy of DOCIdentityHashableLocation(*(v8 + 48) + 56 * a2, v23);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      dispatch thunk of Hashable.hash(into:)();
      v12 = Hasher._finalize()();
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(result + 1, *(result + 4));
      dispatch thunk of Hashable.hash(into:)();
      v13 = Hasher._finalize()();
      outlined destroy of DOCIdentityHashableLocation(v23);
      if (v12 == v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 56 * a2;
  v16 = *result;
  v17 = result[1];
  v18 = result[2];
  *(v15 + 48) = *(result + 6);
  *(v15 + 16) = v17;
  *(v15 + 32) = v18;
  *v15 = v16;
  v19 = *(v14 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v14 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_44;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      specialized _NativeSet.copy()();
      goto LABEL_44;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = 0x736F64736DLL;
  v8 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  v31 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = ~v10;
    do
    {
      v11 = *(*(v8 + 48) + a2);
      v12 = v11 == 2 ? 7562856 : 1936093281;
      v13 = v11 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v14 = *(*(v8 + 48) + a2) ? 0x7461667865 : v7;
      v15 = *(*(v8 + 48) + a2) <= 1u ? v14 : v12;
      v16 = *(*(v8 + 48) + a2) <= 1u ? 0xE500000000000000 : v13;
      v17 = a1 == 2 ? 7562856 : 1936093281;
      v18 = a1 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v19 = v7;
      v20 = a1 ? 0x7461667865 : v7;
      v21 = a1 <= 1u ? v20 : v17;
      v22 = a1 <= 1u ? 0xE500000000000000 : v18;
      v23 = v8;
      if (v15 == v21 && v16 == v22)
      {
        goto LABEL_47;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_48;
      }

      a2 = (a2 + 1) & v30;
      v7 = v19;
      v8 = v23;
    }

    while (((*(v31 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_44:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = a1;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return;
  }

  __break(1u);
LABEL_47:

LABEL_48:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      specialized _NativeSet.copy()();
      goto LABEL_48;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v12 = 0x6E6F697461636F6CLL;
          v13 = 0xE900000000000073;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 0x73726576726573;
          }

          else
          {
            v12 = 1936154996;
          }

          if (v11 == 4)
          {
            v13 = 0xE700000000000000;
          }

          else
          {
            v13 = 0xE400000000000000;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 0x796C746E65636572;
        }

        else
        {
          v12 = 0x657469726F766166;
        }

        if (v11 == 1)
        {
          v13 = 0xEC00000064657355;
        }

        else
        {
          v13 = 0xE900000000000073;
        }
      }

      else
      {
        v13 = 0xE300000000000000;
        v12 = 7368564;
      }

      v14 = 0x73726576726573;
      if (a1 == 4)
      {
        v15 = 0xE700000000000000;
      }

      else
      {
        v14 = 1936154996;
        v15 = 0xE400000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0x6E6F697461636F6CLL;
        v15 = 0xE900000000000073;
      }

      v16 = 0x796C746E65636572;
      if (a1 != 1)
      {
        v16 = 0x657469726F766166;
      }

      v17 = 0xEC00000064657355;
      if (a1 != 1)
      {
        v17 = 0xE900000000000073;
      }

      if (!a1)
      {
        v16 = 7368564;
        v17 = 0xE300000000000000;
      }

      v18 = a1 <= 2u ? v16 : v14;
      v19 = a1 <= 2u ? v17 : v15;
      if (v12 == v18 && v13 == v19)
      {
        goto LABEL_51;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_52;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_51:

LABEL_52:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      specialized _NativeSet.resize(capacity:)(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v3 + 1);
LABEL_8:
      v6 = *v2;
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](0);
      result = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    specialized _NativeSet.copy()();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, Swift::Int a3, unint64_t a4, char a5)
{
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v5;
  Hasher.init(_seed:)();
  v13 = MEMORY[0x24C1FAF70](result, a2);
  MEMORY[0x24C1FCBD0](v13);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v12 + 32);
  a4 = v14 & ~v15;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v12 + 48) + 24 * a4);
      v18 = *v17 == result && v17[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a4 = (a4 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_16:
  v19 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = (*(v19 + 48) + 24 * a4);
  *v20 = result;
  v20[1] = a2;
  v20[2] = a3;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(_OWORD *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_14;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = (*(v8 + 48) + 48 * a2);
      v13 = *(v12 + 25);
      v14 = v12[1];
      v27 = *v12;
      v28[0] = v14;
      *(v28 + 9) = v13;
      outlined init with copy of DOCSidebarItem(&v27, &v26);
      v15 = DOCSidebarItem.hashComparableValue.getter();
      v17 = v16;
      if (v15 == DOCSidebarItem.hashComparableValue.getter() && v17 == v18)
      {
        goto LABEL_17;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of DOCSidebarItem(&v27);
      if (v19)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_14:
  v20 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v21 = (*(v20 + 48) + 48 * a2);
  v22 = result[1];
  *v21 = *result;
  v21[1] = v22;
  *(v21 + 25) = *(result + 25);
  v23 = *(v20 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v20 + 16) = v25;
    return;
  }

  __break(1u);
LABEL_17:

  outlined destroy of DOCSidebarItem(&v27);
LABEL_18:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

id _s26DocumentManagerExecutables11LaunchUtilsV28bundleIdentifierOfDefaultApp3for4nodeSSSg10Foundation3URLV_So7DOCNode_ptFZTf4nen_nSo6FPItemC_Tt1g5(uint64_t a1, void *a2)
{
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = (&v45[-1] - v5);
  v7 = [objc_opt_self() defaultPermission];
  [v7 dataOwnerStateForNode_];

  v8 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v9 = [v8 isEnabled];

  if (v9)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
    v10 = [a2 providerDomainID];
    v37 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v10, 1);

    if (v37)
    {
      v38 = [v37 topLevelBundleIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = type metadata accessor for URL();
      (*(*(v39 - 8) + 56))(v6, 1, 1, v39);
      v11 = _s26DocumentManagerExecutables11LaunchUtilsV29_appContainerBundleIdentifier33_785CBA6FF492D1A84D3A93B2D10ABBABLL2of3urlSSSgSo7DOCNode_p_10Foundation3URLVSgtFZTf4enn_nSo6FPItemC_Tt1g5(a2, v6);
      v12 = v40;

      outlined destroy of CharacterSet?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6, v44, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(v6, a2, v11, v12, 1, v46, 0);

  outlined destroy of CharacterSet?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (!v46[0])
  {
    if (one-time initialization token for DocumentsAppIdentifier != -1)
    {
      swift_once();
    }

    v16 = static LaunchUtils.DocumentsAppIdentifier;
LABEL_23:

    return v16;
  }

  if (v46[0] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    if (one-time initialization token for DocumentsAppIdentifier != -1)
    {
      swift_once();
    }

    v16 = static LaunchUtils.DocumentsAppIdentifier;
    v17 = *algn_27EEF1808;
    *(inited + 32) = static LaunchUtils.DocumentsAppIdentifier;
    *(inited + 40) = v17;
    *(inited + 48) = 0xD000000000000031;
    *(inited + 56) = 0x8000000249BCBC40;
    v18 = objc_opt_self();

    v19 = [v18 mainBundle];
    v20 = [v19 bundleIdentifier];

    if (v20)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v45[0] = v23;
    v45[1] = v25;
    MEMORY[0x28223BE20](v21, v22);
    v43 = v45;
    v41 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v44 - 4), inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayDestroy();

    if ((v41 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

  v16 = v46[1];
  v26 = v46[2];

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.UI);
  v28 = a2;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45[0] = v32;
    *v31 = 136315650;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BCBC10, v45);
    *(v31 + 12) = 2080;
    v45[10] = v28;
    v33 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v45);

    *(v31 + 14) = v36;
    *(v31 + 22) = 2080;
    *(v31 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v26, v45);
    _os_log_impl(&dword_2493AC000, v29, v30, "%s should open node: %s in: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v32, -1, -1);
    MEMORY[0x24C1FE850](v31, -1, -1);
  }

  return v16;
}

uint64_t _s26DocumentManagerExecutables11LaunchUtilsV29_appContainerBundleIdentifier33_785CBA6FF492D1A84D3A93B2D10ABBABLL2of3urlSSSgSo7DOCNode_p_10Foundation3URLVSgtFZTf4enn_nSo6FPItemC_Tt1g5(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = one-time initialization token for UI;
  v6 = a1;
  if (!v4)
  {
    if (v5 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.UI);
    v27 = v6;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v43);
      *(v31 + 12) = 2112;
      *(v31 + 14) = v27;
      *v32 = v27;
      v34 = v27;
      _os_log_impl(&dword_2493AC000, v29, v30, "%s no fetching appID for FPItem: %@", v31, 0x16u);
      outlined destroy of CharacterSet?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1FE850](v33, -1, -1);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    v18 = specialized _appContainerBundleIdentifier #1 (of:url:) in static LaunchUtils._appContainerBundleIdentifier(of:url:)(v27, a2);
LABEL_14:

    return v18;
  }

  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v43);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v4;
    *v12 = v4;
    v14 = v8;
    _os_log_impl(&dword_2493AC000, v9, v10, "%s fetching appID for FINode: %@", v11, 0x16u);
    outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v15 = [objc_opt_self() appLibraryNodeForNode_];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 appIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = v8;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v22, v23))
    {

      return v18;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v24 = 136315650;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v43);
    *(v24 + 12) = 2080;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v43);
    *(v24 + 22) = 2112;
    *(v24 + 24) = v4;
    *v25 = v4;
    v27 = v21;
    _os_log_impl(&dword_2493AC000, v22, v23, "%s fetched appID: %s for FINode: %@", v24, 0x20u);
    outlined destroy of CharacterSet?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v26, -1, -1);
    MEMORY[0x24C1FE850](v24, -1, -1);

    goto LABEL_14;
  }

  v35 = v8;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v38 = 136315394;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v43);
    *(v38 + 12) = 2112;
    *(v38 + 14) = v4;
    *v39 = v4;
    v41 = v35;
    _os_log_impl(&dword_2493AC000, v36, v37, "%s no appID for FINode: %@", v38, 0x16u);
    outlined destroy of CharacterSet?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1FE850](v40, -1, -1);
    MEMORY[0x24C1FE850](v38, -1, -1);
  }

  else
  {
  }

  return 0;
}

void specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void *a1, int a2, int a3, int a4, void *a5, void *a6)
{
  v247 = a6;
  v244 = a4;
  v233 = a3;
  LODWORD(v243) = a2;
  v249 = a1;
  v257 = *MEMORY[0x277D85DE8];
  v232 = type metadata accessor for URL();
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232, v7);
  v230 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v227, v9);
  v226 = &v225 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v228 = &v225 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v229 = &v225 - v16;
  v240 = type metadata accessor for DOCDragPasteboardType(0);
  MEMORY[0x28223BE20](v240, v17);
  v246 = &v225 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for UTType();
  v19 = *(v241 - 1);
  MEMORY[0x28223BE20](v241, v20);
  v22 = &v225 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v245 = static DOCLog.UI;
  LODWORD(v239) = static os_log_type_t.debug.getter();
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249BA08D0;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = v24;
  v26 = lazy protocol witness table accessor for type String and conformance String();
  *(v23 + 64) = v26;
  *(v23 + 32) = 0xD00000000000005BLL;
  *(v23 + 40) = 0x8000000249BCBBB0;
  v242 = 0x8000000249BCBBB0;
  v235 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider, 0x277CCAA88);
  *(v23 + 96) = v235;
  v234 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSItemProvider and conformance NSObject, &lazy cache variable for type metadata for NSItemProvider, 0x277CCAA88);
  *(v23 + 104) = v234;
  *(v23 + 72) = a5;
  v248 = a5;
  v27 = v249;
  v28 = [v249 displayName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(v23 + 136) = v25;
  *(v23 + 144) = v26;
  *(v23 + 112) = v29;
  *(v23 + 120) = v31;
  v32 = [v27 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = UTType.identifier.getter();
  v35 = v34;
  v36 = *(v19 + 8);
  v37 = v241;
  v36(v22, v241);
  *(v23 + 176) = MEMORY[0x277D837D0];
  *(v23 + 184) = v26;
  v236 = v26;
  *(v23 + 152) = v33;
  *(v23 + 160) = v35;
  os_log(_:dso:log:type:_:)("%@: %@, registering '%@' with type %@", 37, 2, &dword_2493AC000, v245, v239, v23);

  v38 = [v27 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = UTType.identifier.getter();
  v41 = String.isFolderUTI.getter(v39, v40);

  v239 = v19 + 8;
  v238 = v36;
  v36(v22, v37);
  v42 = v22;
  if (v41)
  {
    LODWORD(v43) = v243;
    v44 = v246;
    v45 = v248;
    if (v243 == 2)
    {
      v46 = [v249 cachedDomain];
      if (v46)
      {
        v47 = v46;
        LODWORD(v43) = [v46 supportsPickingFolders];
      }

      else
      {
        LODWORD(v43) = 0;
      }
    }
  }

  else
  {
    LODWORD(v43) = 0;
    v44 = v246;
    v45 = v248;
  }

  [v45 setPreferredPresentationStyle_];
  if (DOCNode.isFINode.getter())
  {
    *v44 = (v41 & 1) != 0;
  }

  else
  {
    *v44 = (v41 & 1) != 0;
  }

  swift_storeEnumTagMultiPayload();
  v48 = DOCDragPasteboardType.typeIdentifier.getter();
  v49 = MEMORY[0x24C1FAD20](v48);

  v50 = swift_allocObject();
  *(v50 + 16) = v249;
  v51 = swift_allocObject();
  *(v51 + 16) = partial apply for closure #1 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
  *(v51 + 24) = v50;
  v255 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v256 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v252 = 1107296256;
  v253 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v254 = &block_descriptor_145;
  v52 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v45 registerDataRepresentationForTypeIdentifier:v49 visibility:1 loadHandler:v52];
  _Block_release(v52);

  if ((v244 & 1) == 0)
  {
    v240 = 0;
    goto LABEL_41;
  }

  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (!v53)
  {
    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    if (v62)
    {
      v63 = v62;
      swift_unknownObjectRetain();
      v64 = [v63 fileURL];
      if (v64)
      {
        v65 = v230;
        v66 = v64;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = objc_opt_self();
        URL._bridgeToObjectiveC()(v68);
        v70 = v69;
        aBlock = 0;
        v71 = [v67 archivedDataWithRootObject:v69 requiringSecureCoding:1 error:&aBlock];

        v72 = aBlock;
        if (v71)
        {
          v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v73;

          swift_unknownObjectRelease();
          (*(v231 + 8))(v65, v232);
          goto LABEL_19;
        }

        v188 = v72;
        v75 = _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_unknownObjectRelease();
        (*(v231 + 8))(v65, v232);
LABEL_34:
        v240 = 0;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        __swift_project_value_buffer(v90, static Logger.UI);
        v91 = v75;
        v77 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v77, v92))
        {

          goto LABEL_40;
        }

        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        LODWORD(v243) = v43;
        v95 = v94;
        aBlock = v94;
        *v93 = 136315394;
        *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v242, &aBlock);
        *(v93 + 12) = 2080;
        v250 = v75;
        v96 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v97 = String.init<A>(describing:)();
        v99 = v41;
        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &aBlock);

        *(v93 + 14) = v100;
        v41 = v99;
        _os_log_impl(&dword_2493AC000, v77, v92, "%s, failed to encode node for teamData error: %s", v93, 0x16u);
        swift_arrayDestroy();
        LODWORD(v43) = v243;
        MEMORY[0x24C1FE850](v95, -1, -1);
        MEMORY[0x24C1FE850](v93, -1, -1);

        goto LABEL_38;
      }

      swift_unknownObjectRelease();
    }

    v88 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v89 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
    v75 = [v88 initWithDomain:v89 code:1003 userInfo:0];

    swift_willThrow();
    goto LABEL_34;
  }

  v54 = v53;
  v55 = objc_opt_self();
  swift_unknownObjectRetain();
  v56 = [v54 itemID];
  aBlock = 0;
  v57 = [v55 archivedDataWithRootObject:v56 requiringSecureCoding:1 error:&aBlock];

  v58 = aBlock;
  if (!v57)
  {
    v74 = v58;
    v75 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  swift_unknownObjectRelease();

LABEL_19:
  NSItemProvider.doc_setTeamDataSafely(_:)(v59, v61);
  v240 = 0;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static Logger.UI);
  swift_unknownObjectRetain();
  outlined copy of Data._Representation(v59, v61);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  outlined consume of Data._Representation(v59, v61);
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v243 = swift_slowAlloc();
    aBlock = v243;
    *v79 = 136315650;
    *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v242, &aBlock);
    LODWORD(v230) = v78;
    *(v79 + 12) = 2080;
    outlined copy of Data._Representation(v59, v61);
    v80 = Data.description.getter();
    v82 = v81;
    outlined consume of Data._Representation(v59, v61);
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &aBlock);

    *(v79 + 14) = v83;
    *(v79 + 22) = 2080;
    v250 = v249;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v84 = String.init<A>(describing:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &aBlock);

    *(v79 + 24) = v86;
    v37 = v241;
    _os_log_impl(&dword_2493AC000, v77, v230, "%s, encoded teamData: %s for node: %s", v79, 0x20u);
    v87 = v243;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v87, -1, -1);
    MEMORY[0x24C1FE850](v79, -1, -1);
    outlined consume of Data._Representation(v59, v61);
LABEL_38:

    goto LABEL_40;
  }

  outlined consume of Data._Representation(v59, v61);
LABEL_40:
  v45 = v248;
LABEL_41:
  v101 = [v249 displayName];
  if (!v101)
  {
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = MEMORY[0x24C1FAD20](v102);
  }

  [v45 setSuggestedName_];

  if ((v41 & 1) == 0)
  {
    v117 = DOCNode.fpfs_syncFetchFPItem()();
    if (!v117)
    {
LABEL_48:
      v123 = static os_log_type_t.debug.getter();
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_249B9FA70;
      v125 = v236;
      *(v124 + 56) = MEMORY[0x277D837D0];
      *(v124 + 64) = v125;
      *(v124 + 32) = 0xD00000000000005BLL;
      *(v124 + 40) = v242;
      v126 = v234;
      *(v124 + 96) = v235;
      *(v124 + 104) = v126;
      *(v124 + 72) = v45;
      v127 = v45;
      os_log(_:dso:log:type:_:)("%@: %@, registerFileRepresentation", 34, 2, &dword_2493AC000, v245, v123, v124);

      v128 = v249;
      v129 = [v249 contentType];
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      v130 = UTType.identifier.getter();
      v132 = v131;
      v238(v42, v37);
      v133 = MEMORY[0x24C1FAD20](v130, v132);

      v134 = swift_allocObject();
      *(v134 + 16) = v128;
      *(v134 + 24) = v117;
      v135 = swift_allocObject();
      *(v135 + 16) = partial apply for closure #4 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
      *(v135 + 24) = v134;
      v255 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
      v256 = v135;
      aBlock = MEMORY[0x277D85DD0];
      v252 = 1107296256;
      v253 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
      v254 = &block_descriptor_154;
      v136 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v137 = v117;

      [v127 registerFileRepresentationForTypeIdentifier:v133 fileOptions:1 visibility:0 loadHandler:v136];
      _Block_release(v136);

      if ((v244 & 1) != 0 || (v139 = [objc_opt_self() foldersInDock], v140 = objc_msgSend(v139, sel_isEnabled), v139, (v140 & 1) == 0) || (DOCDeviceIsPad() & 1) == 0 || (DOCNode.canBeAddedToDock.getter() & 1) == 0)
      {
        outlined destroy of DOCDragPasteboardType(v246, v138);

        return;
      }

      v141 = [v249 nodeURL];
      if (v141)
      {
        v142 = v228;
        v143 = v141;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v144 = 0;
        v145 = v232;
        v146 = v229;
      }

      else
      {
        v144 = 1;
        v145 = v232;
        v146 = v229;
        v142 = v228;
      }

      v189 = v231;
      v190 = v231 + 56;
      v248 = *(v231 + 56);
      (v248)(v142, v144, 1, v145);
      outlined init with take of URL?(v142, v146);
      if ((*(v189 + 48))(v146, 1, v145) == 1)
      {
        outlined destroy of CharacterSet?(v146, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_85:
        v219 = *MEMORY[0x277D06180];
        v220 = swift_allocObject();
        *(v220 + 16) = v249;
        *(v220 + 24) = v117;
        v221 = swift_allocObject();
        *(v221 + 16) = partial apply for closure #5 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
        *(v221 + 24) = v220;
        v255 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?)partial apply;
        v256 = v221;
        aBlock = MEMORY[0x277D85DD0];
        v252 = 1107296256;
        v253 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
        v254 = &block_descriptor_164;
        v222 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v223 = v137;
        v224 = v219;

        [v127 registerFileRepresentationForTypeIdentifier:v224 fileOptions:1 visibility:1 loadHandler:v222];
        _Block_release(v222);

        v169 = v246;
        goto LABEL_86;
      }

      v245 = v190;
      URL._bridgeToObjectiveC()(&v258);
      v192 = v191;
      (*(v189 + 8))(v146, v145);
      v193 = objc_opt_self();
      aBlock = 0;
      v194 = [v193 archivedDataWithRootObject:v192 requiringSecureCoding:1 error:&aBlock];
      v195 = aBlock;
      if (v194)
      {
        v196 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v198 = v197;

        v199 = v240;
        NSItemProvider.doc_setTeamDataSafely(_:)(v196, v198);
        if (!v199)
        {

          outlined consume of Data._Representation(v196, v198);
          goto LABEL_85;
        }

        v247 = v192;
        v200 = v199;
        outlined consume of Data._Representation(v196, v198);
        v145 = v232;
      }

      else
      {
        v247 = v192;
        v201 = v195;
        v202 = _convertNSErrorToError(_:)();

        v200 = v202;
        swift_willThrow();
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v203 = type metadata accessor for Logger();
      __swift_project_value_buffer(v203, static Logger.UI);
      swift_unknownObjectRetain();
      v204 = v200;
      v205 = Logger.logObject.getter();
      v206 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v205, v206))
      {
        v244 = v206;
        v207 = swift_slowAlloc();
        v241 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        aBlock = v243;
        *v207 = 136315650;
        *(v207 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v242, &aBlock);
        *(v207 + 12) = 2080;
        v208 = [v249 nodeURL];
        if (v208)
        {
          v209 = v208;
          v210 = v226;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v211 = 0;
        }

        else
        {
          v211 = 1;
          v210 = v226;
        }

        (v248)(v210, v211, 1, v145);
        v212 = String.init<A>(describing:)();
        v214 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v212, v213, &aBlock);

        *(v207 + 14) = v214;
        *(v207 + 22) = 2112;
        v215 = v200;
        v216 = _swift_stdlib_bridgeErrorToNSError();
        *(v207 + 24) = v216;
        v217 = v241;
        *v241 = v216;
        _os_log_impl(&dword_2493AC000, v205, v244, "%s: failed to encode URL: %s as data: %@", v207, 0x20u);
        outlined destroy of CharacterSet?(v217, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v217, -1, -1);
        v218 = v243;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v218, -1, -1);
        MEMORY[0x24C1FE850](v207, -1, -1);
      }

      else
      {
      }

      goto LABEL_85;
    }

LABEL_47:
    v118 = swift_allocObject();
    *(v118 + 16) = v45;
    *(v118 + 24) = v117;
    v255 = partial apply for closure #3 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    v256 = v118;
    aBlock = MEMORY[0x277D85DD0];
    v252 = 1107296256;
    v253 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v254 = &block_descriptor_170_0;
    v119 = _Block_copy(&aBlock);
    v120 = v117;
    v121 = v45;
    v122 = v120;

    [v122 fetchURL_];
    _Block_release(v119);

    goto LABEL_48;
  }

  v103 = objc_opt_self();
  aBlock = 0;
  v104 = [v103 archivedDataWithRootObject:v249 requiringSecureCoding:1 error:&aBlock];
  v105 = aBlock;
  if (v104)
  {
    v106 = v43;
    v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    LODWORD(v243) = v106;
    v109 = objc_allocWithZone(MEMORY[0x277CC1EF0]);
    v110 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC6090);
    v111 = [v109 initWithActivityType_];

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:));
    outlined destroy of String(&unk_285C7FFB8);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v111 setRequiredUserInfoKeys_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    aBlock = 0xD000000000000019;
    v252 = 0x8000000249BC5EE0;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v43;
    *(inited + 80) = v108;
    v114 = v43;
    outlined copy of Data._Representation(v43, v108);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    v115 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v111 addUserInfoEntriesFromDictionary_];

    [v111 setEligibleForSearch_];
    [v111 setEligibleForHandoff_];
    [v111 setEligibleForPrediction_];
    [v111 setEligibleForPublicIndexing_];
    v116 = v248;
    [v248 sbui:*MEMORY[0x277D06118] setRequiredApplicationBundleIdentifier:?];
    LOBYTE(v43) = v243;
    [v116 registerObject:v111 visibility:0];

    outlined consume of Data._Representation(v114, v108);
  }

  else
  {
    v147 = v105;
    v148 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v149 = type metadata accessor for Logger();
    __swift_project_value_buffer(v149, static Logger.UI);
    v150 = v45;
    v151 = v148;
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      aBlock = v243;
      *v154 = 136315650;
      *(v154 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, v242, &aBlock);
      *(v154 + 12) = 2080;
      v155 = v37;
      v156 = v150;
      v157 = [v156 description];
      v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v241) = v153;
      v160 = v159;

      v37 = v155;
      v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v160, &aBlock);

      *(v154 + 14) = v161;
      *(v154 + 22) = 2080;
      v250 = v148;
      v162 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v163 = String.init<A>(describing:)();
      v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v164, &aBlock);

      *(v154 + 24) = v165;
      _os_log_impl(&dword_2493AC000, v152, v241, "%s: %s, failed to register NSUserActivity for folder. Error: %s", v154, 0x20u);
      v166 = v243;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v166, -1, -1);
      MEMORY[0x24C1FE850](v154, -1, -1);
    }

    else
    {
    }

    v240 = 0;
  }

  v167 = DOCNode.fpfs_syncFetchFPItem()();
  v117 = v167;
  if (v43)
  {
    v45 = v248;
    if (!v167)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v169 = v246;
  if (v117)
  {
    if (v233)
    {
      outlined destroy of DOCDragPasteboardType(v246, v168);

      return;
    }

    v170 = v246;
    v171 = v117;
    v172 = static os_log_type_t.debug.getter();
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_249B9FA70;
    v174 = v236;
    *(v173 + 56) = MEMORY[0x277D837D0];
    *(v173 + 64) = v174;
    *(v173 + 32) = 0xD00000000000005BLL;
    *(v173 + 40) = v242;
    v175 = v234;
    *(v173 + 96) = v235;
    *(v173 + 104) = v175;
    v176 = v248;
    *(v173 + 72) = v248;
    v177 = v176;
    os_log(_:dso:log:type:_:)("%@: %@, registerFileProviderItem", 32, 2, &dword_2493AC000, v245, v172, v173);

    v178 = v249;
    v179 = [v249 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v180 = UTType.identifier.getter();
    v182 = v181;
    v238(v42, v37);
    v183 = MEMORY[0x24C1FAD20](v180, v182);

    v184 = swift_allocObject();
    *(v184 + 16) = v178;
    *(v184 + 24) = v171;
    v185 = swift_allocObject();
    *(v185 + 16) = partial apply for closure #2 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    *(v185 + 24) = v184;
    v255 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed @callee_guaranteed (@guaranteed FPItem?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
    v256 = v185;
    aBlock = MEMORY[0x277D85DD0];
    v252 = 1107296256;
    v253 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed FPItem?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
    v254 = &block_descriptor_179;
    v186 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v187 = v171;

    [v177 registerFileProviderItemForTypeIdentifier:v183 visibility:0 loadHandler:v186];
    _Block_release(v186);

    v169 = v170;
  }

LABEL_86:
  outlined destroy of DOCDragPasteboardType(v169, v168);
}

uint64_t specialized static FPItem.sessionContainsDOCNode(_:)(void *a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  if (specialized static FPItem.sessionContainsLocations(_:)(a1, a2))
  {
    return 1;
  }

  return specialized static FPItem.sessionContainsFile(_:)(a1, a2);
}

uint64_t specialized static FPItem.sessionContainsLocations(_:)(id a1, void (*a2)(char *, uint64_t))
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v69 = &v61 - v5;
  v74 = type metadata accessor for UTType();
  v6 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v7);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v61 - v11;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v61 - v16;
  v18 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    goto LABEL_57;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v68 = v17;
  v64 = a1;
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = 0;
  v22 = v19 & 0xC000000000000001;
  v23 = v19 & 0xFFFFFFFFFFFFFF8;
  v24 = v19 + 32;
  v25 = 0x8000000249BC5F70;
  v70 = v19 & 0xC000000000000001;
  v71 = v20;
  v66 = (v19 & 0xFFFFFFFFFFFFFF8);
  v62 = v19 + 32;
  v63 = v6;
  v72 = v19;
  while (1)
  {
    if (!v22)
    {
      if (v21 >= *(v23 + 16))
      {
        __break(1u);
LABEL_59:
        v39 = __CocoaSet.count.getter();
        if (!v39)
        {
          goto LABEL_52;
        }

LABEL_31:
        v17 = 0;
        v72 = v25 & 0xFFFFFFFFFFFFFF8;
        v73 = (v25 & 0xC000000000000001);
        v66 = (v6 + 6);
        v67 = v12;
        v63 = v6 + 4;
        v70 = v39;
        v71 = v25;
        v75 = v20;
        while (1)
        {
          if (v73)
          {
            v19 = MEMORY[0x24C1FC540](v17, v25);
            v6 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v17 >= *(v72 + 16))
            {
              goto LABEL_56;
            }

            v19 = *(v25 + 8 * v17 + 32);
            swift_unknownObjectRetain();
            v6 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              v20 = __CocoaSet.count.getter();
              goto LABEL_3;
            }
          }

          v41 = [v19 contentType];
          static UTType._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = UTType.identifier.getter();
          v44 = v43;
          if (one-time initialization token for folderUTICache != -1)
          {
            swift_once();
          }

          a1 = folderUTICache;
          v45 = MEMORY[0x24C1FAD20](v42, v44);
          v46 = [a1 objectForKey_];

          if (v46)
          {

            v40 = [v46 BOOLValue];
            swift_unknownObjectRelease();

            v75(v12, v74);
            if (v40)
            {
              goto LABEL_51;
            }

            goto LABEL_33;
          }

          v47 = v69;
          UTType.init(_:)();
          v48 = v74;
          if ((*v66)(v47, 1, v74) == 1)
          {
            outlined destroy of CharacterSet?(v47, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          }

          else
          {
            v49 = v65;
            (*v63)(v65, v47, v48);
            v50 = v68;
            static UTType.folder.getter();
            v51 = UTType.conforms(to:)();
            v75(v50, v48);
            if (v51)
            {
              static UTType.package.getter();
              v52 = UTType.conforms(to:)();
              v53 = v50;
              v54 = v75;
              v75(v53, v48);
              v54(v49, v48);
              v55 = v52 ^ 1;
              goto LABEL_46;
            }

            v75(v49, v48);
          }

          v55 = 0;
LABEL_46:
          v56 = folderUTICache;
          v57 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          a1 = v56;
          v58 = [v57 initWithBool_];
          v59 = MEMORY[0x24C1FAD20](v42, v44);

          [a1 setObject:v58 forKey:v59];
          swift_unknownObjectRelease();

          v12 = v67;
          (v75)();
          if (v55)
          {
LABEL_51:
            v36 = 1;
            goto LABEL_53;
          }

LABEL_33:
          ++v17;
          v25 = v71;
          if (v6 == v70)
          {
            goto LABEL_52;
          }
        }
      }

      v26 = *(v24 + 8 * v21);
      v27 = __OFADD__(v21, 1);
      v21 = (v21 + 1);
      if (v27)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    v26 = MEMORY[0x24C1FC540](v21, v19);
    v27 = __OFADD__(v21, 1);
    v21 = (v21 + 1);
    if (v27)
    {
LABEL_23:
      __break(1u);
LABEL_24:

      v36 = 0;
      goto LABEL_28;
    }

LABEL_8:
    v73 = v26;
    v28 = [v26 itemProvider];
    v29 = [v28 registeredTypeIdentifiers];

    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = (v30 + 40);
    v32 = *(v30 + 16) + 1;
LABEL_10:
    if (--v32)
    {
      break;
    }

    v20 = v71;
    v19 = v72;
    v6 = v63;
    a1 = v64;
    v17 = v68;
    v22 = v70;
    v23 = v66;
    v24 = v62;
    if (v21 == v71)
    {
      goto LABEL_24;
    }
  }

  v34 = *(v31 - 1);
  v33 = *v31;
  v35 = v34 == 0xD000000000000029 && 0x8000000249BC5F70 == v33;
  if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    goto LABEL_27;
  }

  if (v34 != 0xD000000000000029 || 0x8000000249BC5FD0 != v33)
  {
    v31 += 2;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_27:
  v36 = 1;
  v6 = v63;
  a1 = v64;
  v17 = v68;
LABEL_28:
  v76 = &unk_285DA8400;
  v37 = swift_dynamicCastObjCProtocolConditional();
  if (!v37)
  {
    return v36;
  }

  v19 = v37;
  LODWORD(v62) = v36;
  swift_unknownObjectRetain();
  static UTType.item.getter();
  ObjectType = swift_getObjectType();
  v25 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v19, v17, v75, ObjectType);
  v20 = v6[1];
  v20(v17, v74);
  if (v25 >> 62)
  {
    goto LABEL_59;
  }

  v39 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39)
  {
    goto LABEL_31;
  }

LABEL_52:
  v36 = v62;
LABEL_53:

  swift_unknownObjectRelease();
  return v36;
}

uint64_t specialized static FPItem.sessionContainsFile(_:)(id a1, void (*a2)(char *, uint64_t))
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v69 = &v61 - v5;
  v74 = type metadata accessor for UTType();
  v6 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v7);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v61 - v11;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v61 - v16;
  v18 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    goto LABEL_57;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v68 = v17;
  v64 = a1;
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = 0;
  v22 = v19 & 0xC000000000000001;
  v23 = v19 & 0xFFFFFFFFFFFFFF8;
  v24 = v19 + 32;
  v25 = 0x8000000249BC5F40;
  v70 = v19 & 0xC000000000000001;
  v71 = v20;
  v66 = (v19 & 0xFFFFFFFFFFFFFF8);
  v62 = v19 + 32;
  v63 = v6;
  v72 = v19;
  while (1)
  {
    if (!v22)
    {
      if (v21 >= *(v23 + 16))
      {
        __break(1u);
LABEL_59:
        v39 = __CocoaSet.count.getter();
        if (!v39)
        {
          goto LABEL_52;
        }

LABEL_31:
        v17 = 0;
        v72 = v25 & 0xFFFFFFFFFFFFFF8;
        v73 = (v25 & 0xC000000000000001);
        v66 = (v6 + 6);
        v67 = v12;
        v63 = v6 + 4;
        v70 = v39;
        v71 = v25;
        v75 = v20;
        while (1)
        {
          if (v73)
          {
            v19 = MEMORY[0x24C1FC540](v17, v25);
            v6 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v17 >= *(v72 + 16))
            {
              goto LABEL_56;
            }

            v19 = *(v25 + 8 * v17 + 32);
            swift_unknownObjectRetain();
            v6 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              v20 = __CocoaSet.count.getter();
              goto LABEL_3;
            }
          }

          v41 = [v19 contentType];
          static UTType._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = UTType.identifier.getter();
          v44 = v43;
          if (one-time initialization token for folderUTICache != -1)
          {
            swift_once();
          }

          a1 = folderUTICache;
          v45 = MEMORY[0x24C1FAD20](v42, v44);
          v46 = [a1 objectForKey_];

          if (v46)
          {

            v40 = [v46 BOOLValue];
            swift_unknownObjectRelease();

            v75(v12, v74);
            if (!v40)
            {
              goto LABEL_51;
            }

            goto LABEL_33;
          }

          v47 = v69;
          UTType.init(_:)();
          v48 = v74;
          if ((*v66)(v47, 1, v74) == 1)
          {
            outlined destroy of CharacterSet?(v47, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          }

          else
          {
            v49 = v65;
            (*v63)(v65, v47, v48);
            v50 = v68;
            static UTType.folder.getter();
            v51 = UTType.conforms(to:)();
            v75(v50, v48);
            if (v51)
            {
              static UTType.package.getter();
              v52 = UTType.conforms(to:)();
              v53 = v50;
              v54 = v75;
              v75(v53, v48);
              v54(v49, v48);
              v55 = v52 ^ 1;
              goto LABEL_46;
            }

            v75(v49, v48);
          }

          v55 = 0;
LABEL_46:
          v56 = folderUTICache;
          v57 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          a1 = v56;
          v58 = [v57 initWithBool_];
          v59 = MEMORY[0x24C1FAD20](v42, v44);

          [a1 setObject:v58 forKey:v59];
          swift_unknownObjectRelease();

          v12 = v67;
          (v75)();
          if ((v55 & 1) == 0)
          {
LABEL_51:
            v36 = 1;
            goto LABEL_53;
          }

LABEL_33:
          ++v17;
          v25 = v71;
          if (v6 == v70)
          {
            goto LABEL_52;
          }
        }
      }

      v26 = *(v24 + 8 * v21);
      v27 = __OFADD__(v21, 1);
      v21 = (v21 + 1);
      if (v27)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    v26 = MEMORY[0x24C1FC540](v21, v19);
    v27 = __OFADD__(v21, 1);
    v21 = (v21 + 1);
    if (v27)
    {
LABEL_23:
      __break(1u);
LABEL_24:

      v36 = 0;
      goto LABEL_28;
    }

LABEL_8:
    v73 = v26;
    v28 = [v26 itemProvider];
    v29 = [v28 registeredTypeIdentifiers];

    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = (v30 + 40);
    v32 = *(v30 + 16) + 1;
LABEL_10:
    if (--v32)
    {
      break;
    }

    v20 = v71;
    v19 = v72;
    v6 = v63;
    a1 = v64;
    v17 = v68;
    v22 = v70;
    v23 = v66;
    v24 = v62;
    if (v21 == v71)
    {
      goto LABEL_24;
    }
  }

  v34 = *(v31 - 1);
  v33 = *v31;
  v35 = v34 == 0xD000000000000025 && 0x8000000249BC5F40 == v33;
  if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    goto LABEL_27;
  }

  if (v34 != 0xD000000000000025 || 0x8000000249BC5FA0 != v33)
  {
    v31 += 2;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_27:
  v36 = 1;
  v6 = v63;
  a1 = v64;
  v17 = v68;
LABEL_28:
  v76 = &unk_285DA8400;
  v37 = swift_dynamicCastObjCProtocolConditional();
  if (!v37)
  {
    return v36;
  }

  v19 = v37;
  LODWORD(v62) = v36;
  swift_unknownObjectRetain();
  static UTType.item.getter();
  ObjectType = swift_getObjectType();
  v25 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v19, v17, v75, ObjectType);
  v20 = v6[1];
  v20(v17, v74);
  if (v25 >> 62)
  {
    goto LABEL_59;
  }

  v39 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39)
  {
    goto LABEL_31;
  }

LABEL_52:
  v36 = v62;
LABEL_53:

  swift_unknownObjectRelease();
  return v36;
}

void specialized static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a5;
  v67 = a4;
  v77 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v69 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = DOCNode.fpfs_syncFetchFPItem()();
  if (!v80)
  {
    return;
  }

  v62 = v14;
  v79 = swift_allocObject();
  *(v79 + 16) = MEMORY[0x277D84F90];
  v78 = dispatch_group_create();
  v66 = v8;
  v65 = v9;
  v64 = v13;
  v63 = v12;
  if (!(a1 >> 62))
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_22:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v52 = static OS_dispatch_queue.main.getter();
    v53 = swift_allocObject();
    v54 = v67;
    v55 = v68;
    v53[2] = v67;
    v53[3] = v55;
    v53[4] = v79;
    v87 = partial apply for closure #2 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v88 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v86 = &block_descriptor_113;
    v56 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v54, v55);

    v57 = v69;
    static DispatchQoS.unspecified.getter();
    v82 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v58 = v63;
    v59 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v60 = v78;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v56);

    (*(v65 + 8))(v58, v59);
    (*(v62 + 8))(v57, v64);

    return;
  }

LABEL_21:
  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_4:
  v18 = 0;
  v75 = a1 & 0xFFFFFFFFFFFFFF8;
  v76 = a1 & 0xC000000000000001;
  v74 = 0x8000000249BCBD70;
  v70 = &v85;
  v73 = xmmword_249B9FA70;
  v71 = v17;
  v72 = a1;
  while (1)
  {
    if (v76)
    {
      v20 = MEMORY[0x24C1FC540](v18, a1);
      v19 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v19 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      if (v18 >= *(v75 + 16))
      {
        goto LABEL_20;
      }

      v20 = *(a1 + 8 * v18 + 32);
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v22 = [v20 v19[370]];
    v23 = NSItemProvider.typeToRequest.getter();
    v25 = v24;

    if (!v25)
    {
      break;
    }

    v81 = v21;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = static DOCLog.UI;
    v27 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = v73;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 32) = 0xD00000000000003CLL;
    *(v28 + 40) = v74;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 64) = v30;
    *(v28 + 72) = v23;
    *(v28 + 80) = v25;

    os_log(_:dso:log:type:_:)("%@: Requesting UTI %@", 21, 2, &dword_2493AC000, v26, v27, v28);

    v31 = v78;
    dispatch_group_enter(v78);
    v32 = [v20 v19[370]];
    v33 = MEMORY[0x24C1FAD20](v23, v25);
    v34 = swift_allocObject();
    v35 = v20;
    v36 = v77;
    v34[2] = v31;
    v34[3] = v36;
    v34[4] = v35;
    v34[5] = v23;
    v34[6] = v25;
    v38 = v79;
    v37 = v80;
    v34[7] = v80;
    v34[8] = v38;
    v87 = partial apply for closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v88 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ();
    v86 = &block_descriptor_107;
    v39 = _Block_copy(&aBlock);

    v40 = v31;
    v41 = v36;
    v42 = v35;
    v43 = v37;

    v44 = [v32 loadInPlaceFileRepresentationForTypeIdentifier:v33 completionHandler:v39];
    _Block_release(v39);

    ++v18;
    a1 = v72;
    if (v81 == v71)
    {
      goto LABEL_22;
    }
  }

  v45 = [v20 v19[370]];
  v46 = [v45 registeredTypeIdentifiers];

  v47 = MEMORY[0x277D837D0];
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v49 = static DOCLog.UI;
  v50 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v51 = swift_allocObject();
  *(v51 + 16) = v73;
  *(v51 + 56) = v47;
  *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v51 + 32) = 0xD00000000000003CLL;
  *(v51 + 40) = v74;
  *(v51 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(v51 + 104) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277CC9C50]);
  *(v51 + 72) = v48;
  os_log(_:dso:log:type:_:)("%@: No UTIs that are acceptable", 31, 2, &dword_2493AC000, v49, v50, v51);
}

void _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(unint64_t a1, char *a2, void *a3, void (*a4)(void, __n128), uint64_t a5)
{
  v11 = type metadata accessor for DOCOperationItem(0);
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v75 = &v67 - v17;
  if (![a2 canPerform_])
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  v19 = a1 >> 62;
  v72 = a5;
  v73 = a4;
  v71 = a3;
  v74 = a1 >> 62;
  if (!v18)
  {
    v81 = MEMORY[0x277D84F90];
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_19;
    }

    goto LABEL_90;
  }

  v81 = MEMORY[0x277D84F90];
  if (v19)
  {
    v66 = v18;
    v20 = __CocoaSet.count.getter();
    v18 = v66;
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v69 = v18;
  v70 = a2;
  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_33:
    v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(v26);

    v81 = v36;
    v37 = *MEMORY[0x277CC6048];

    v38 = specialized Set.contains(_:)();

    if (v38)
    {
      v67 = v37;
      v68 = v36;
      v80 = v21;
      if (v20)
      {
        v77 = (a1 & 0xC000000000000001);
        v39 = 0;
        if ((a1 & 0xC000000000000001) == 0)
        {
          goto LABEL_40;
        }

LABEL_48:
        while (2)
        {
          MEMORY[0x24C1FC540](v39, a1);
          v40 = v39 + 1;
          if (!__OFADD__(v39, 1))
          {
            while (1)
            {
              swift_getObjectType();
              v41 = DOCNode.fpfs_syncFetchFINode()();
              if (v42)
              {
                break;
              }

              v5 = v41;
              v43 = swift_unknownObjectRelease();
              if (!v5)
              {
                goto LABEL_38;
              }

              MEMORY[0x24C1FB090](v43);
              if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v21 = v80;
              if (v40 == v20)
              {
                goto LABEL_51;
              }

              v39 = v40;
              if (v77)
              {
                goto LABEL_48;
              }

LABEL_40:
              if (v39 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_85;
              }

              swift_unknownObjectRetain();
              v40 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_84;
              }
            }

            swift_unknownObjectRelease();
LABEL_38:
            ++v39;
            if (v40 == v20)
            {
              goto LABEL_51;
            }

            if (v77)
            {
              continue;
            }

            goto LABEL_40;
          }

          break;
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        swift_once();
        while (1)
        {
          v46 = static DOCLog.UI;
          v47 = static os_log_type_t.debug.getter();
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v48 = swift_allocObject();
          v69 = xmmword_249B9A480;
          *(v48 + 16) = xmmword_249B9A480;
          v27 = 0x8000000249BCBB20;
          *(v48 + 56) = MEMORY[0x277D837D0];
          v67 = lazy protocol witness table accessor for type String and conformance String();
          v68 = 0x8000000249BCBB20;
          *(v48 + 64) = v67;
          *(v48 + 32) = 0xD000000000000044;
          *(v48 + 40) = 0x8000000249BCBB20;
          os_log(_:dso:log:type:_:)("%@", 2, 2, &dword_2493AC000, v46, v47, v48);

          v77 = v46;
          v49 = v5 ? __CocoaSet.count.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v50 = MEMORY[0x277D84F90];
          if (!v49)
          {
            break;
          }

          v81 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49 & ~(v49 >> 63), 0);
          if ((v49 & 0x8000000000000000) == 0)
          {
            v51 = a2;
            v50 = v81;
            if ((a1 & 0xC000000000000001) != 0)
            {
              v52 = 0;
              v53 = v78;
              v54 = v76;
              do
              {
                *v54 = MEMORY[0x24C1FC540](v52, a1);
                swift_storeEnumTagMultiPayload();
                v81 = v50;
                v56 = *(v50 + 16);
                v55 = *(v50 + 24);
                if (v56 >= v55 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
                  v53 = v78;
                  v50 = v81;
                }

                ++v52;
                *(v50 + 16) = v56 + 1;
                outlined init with take of DOCDragPasteboardType(v54, v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v56, type metadata accessor for DOCOperationItem);
              }

              while (v49 != v52);
            }

            else
            {
              v57 = (a1 + 32);
              v58 = v75;
              do
              {
                *v58 = *v57;
                swift_storeEnumTagMultiPayload();
                v81 = v50;
                v59 = *(v50 + 16);
                v60 = *(v50 + 24);
                swift_unknownObjectRetain();
                if (v59 >= v60 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v59 + 1, 1);
                  v50 = v81;
                }

                *(v50 + 16) = v59 + 1;
                outlined init with take of DOCDragPasteboardType(v58, v50 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v59, type metadata accessor for DOCOperationItem);
                ++v57;
                --v49;
              }

              while (v49);
            }

            a2 = v51;
            break;
          }

          __break(1u);
LABEL_90:
          v28 = __CocoaSet.count.getter();
LABEL_19:
          v77 = a2;
          v29 = a2;
          v30 = 0;
          v70 = 0;
          v5 = MEMORY[0x277D84F90];
          while (v28 != v30)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              MEMORY[0x24C1FC540](v30, a1);
              a2 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                goto LABEL_82;
              }
            }

            else
            {
              if (v30 >= *(v27 + 16))
              {
                goto LABEL_83;
              }

              swift_unknownObjectRetain();
              a2 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                goto LABEL_82;
              }
            }

            swift_getObjectType();
            v31 = DOCNode.fpfs_syncFetchFPItem()();
            v32 = swift_unknownObjectRelease();
            ++v30;
            if (v31)
            {
              MEMORY[0x24C1FB090](v32);
              if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v5 = v81;
              v30 = a2;
            }
          }

          v33 = [objc_opt_self() defaultManager];
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v35 = [v33 eligibleActionsForDroppingItems:isa underItem:v29];

          type metadata accessor for FPAction(0);
          lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
          static Set._unconditionallyBridgeFromObjectiveC(_:)();

          a2 = v77;
LABEL_54:
          v5 = v74;
          if (one-time initialization token for UI != -1)
          {
            goto LABEL_86;
          }
        }

        v61 = [objc_opt_self() defaultManager];
        if (specialized Set.contains(_:)())
        {

          FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, v50, a2, 0, 0, 1, v71, v73, v72);
        }

        else if (specialized Set.contains(_:)())
        {

          FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v50, a2, 0, 0, 1, v71, v73, v72);
        }

        else
        {
          v62 = specialized Set.contains(_:)();

          if ((v62 & 1) == 0)
          {

            v63 = static os_log_type_t.debug.getter();
            v64 = swift_allocObject();
            *(v64 + 16) = v69;
            v65 = v67;
            *(v64 + 56) = MEMORY[0x277D837D0];
            *(v64 + 64) = v65;
            *(v64 + 32) = 0xD000000000000044;
            *(v64 + 40) = v68;
            os_log(_:dso:log:type:_:)("%@: No eligible actions", 23, 2, &dword_2493AC000, v77, v63, v64);

            if (v73)
            {
              v73(0);
            }

            goto LABEL_77;
          }

          FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(1u, v50, a2, 0, 0, 1, v71, v73, v72);
        }

LABEL_77:

        return;
      }

LABEL_51:
      v44 = isMoveAllowed #1 () in static FPItem.performDrop(_:underItem:alertPresenting:completion:)(v69, v21);

      if ((v44 & 1) == 0)
      {
        v45 = specialized Set._Variant.remove(_:)(v67);

        goto LABEL_54;
      }
    }

    goto LABEL_54;
  }

  v77 = a2;
  v22 = 0;
  a2 = (a1 & 0xFFFFFFFFFFFFFF8);
  v5 = &lazy protocol witness table cache variable for type FPAction and conformance FPAction;
  while (1)
  {
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      a4 = *(a1 + 8 * v22 + 32);
      swift_unknownObjectRetain();
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      goto LABEL_10;
    }

    a4 = MEMORY[0x24C1FC540](v22, a1);
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

LABEL_10:
    v24 = [a4 doc_eligibleActions];
    type metadata accessor for FPAction(0);
    lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
    v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    specialized Array.append<A>(contentsOf:)(v25);
    ++v22;
    if (v23 == v20)
    {
      v26 = v81;
      a2 = v77;
      v21 = MEMORY[0x277D84F90];
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_15:
  if (a4)
  {
    (a4)(0);
  }
}

void specialized static FPItem.performDrop(_:underItem:alertPresenting:completion:)(unint64_t a1, void *a2, void *a3, void (*a4)(void), unint64_t a5)
{
  v68 = a3;
  v10 = type metadata accessor for DOCOperationItem(0);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v67 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v66 = &v60 - v16;
  if (![a2 canPerform_])
  {
    goto LABEL_15;
  }

  v64 = a4;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v18 = (a1 >> 62);
  v19 = MEMORY[0x277D84F90];
  v69 = a2;
  v65 = a1 >> 62;
  *&v62 = v17;
  if (!v17)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v74 = v19;
      v63 = a5;
      v20 = v25;
      v5 = (a1 & 0xFFFFFFFFFFFFFF8);
      if (!v18)
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_20;
      }

      goto LABEL_93;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v74 = MEMORY[0x277D84F90];
  if (v18)
  {
    a4 = __CocoaSet.count.getter();
  }

  else
  {
    a4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_unknownObjectRetain();
  v20 = MEMORY[0x277D84F90];
  if (!a4)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v63 = a5;
  v21 = 0;
  a5 = a1 & 0xFFFFFFFFFFFFFF8;
  v18 = &lazy protocol witness table cache variable for type FPAction and conformance FPAction;
  while (1)
  {
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v22 = *(a1 + 8 * v21 + 32);
      swift_unknownObjectRetain();
      v20 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      goto LABEL_10;
    }

    v22 = MEMORY[0x24C1FC540](v21, a1);
    v20 = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      break;
    }

LABEL_10:
    v23 = [v22 doc_eligibleActions];
    type metadata accessor for FPAction(0);
    lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    specialized Array.append<A>(contentsOf:)(v5);
    ++v21;
    if (v20 == a4)
    {
      v24 = v74;
      a5 = v63;
      v18 = v65;
      v20 = MEMORY[0x277D84F90];
LABEL_34:
      v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(v24);

      v74 = v5;
      v33 = *MEMORY[0x277CC6048];

      v34 = specialized Set.contains(_:)();

      if ((v34 & 1) == 0)
      {
        swift_unknownObjectRelease();
        goto LABEL_57;
      }

      v60 = v33;
      v61 = v5;
      v73 = v20;
      if (!a4)
      {
LABEL_53:
        v39 = isMoveAllowed #1 () in static FPItem.performDrop(_:underItem:alertPresenting:completion:)(v62, v20);

        v5 = v61;
        if (v39)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = specialized Set._Variant.remove(_:)(v60);
          swift_unknownObjectRelease();

          v5 = v74;
        }

        goto LABEL_56;
      }

      v70 = a1 & 0xC000000000000001;
      v35 = 0;
      if ((a1 & 0xC000000000000001) == 0)
      {
        goto LABEL_41;
      }

LABEL_49:
      while (2)
      {
        MEMORY[0x24C1FC540](v35, a1);
        v5 = (v35 + 1);
        if (!__OFADD__(v35, 1))
        {
          while (1)
          {
            swift_getObjectType();
            v36 = DOCNode.fpfs_syncFetchFINode()();
            if (v37)
            {
              break;
            }

            v18 = v36;
            v38 = swift_unknownObjectRelease();
            if (!v18)
            {
              goto LABEL_39;
            }

            MEMORY[0x24C1FB090](v38);
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v20 = v73;
            if (v5 == a4)
            {
              goto LABEL_53;
            }

            v35 = v5;
            if (v70)
            {
              goto LABEL_49;
            }

LABEL_41:
            if (v35 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_88;
            }

            swift_unknownObjectRetain();
            v5 = (v35 + 1);
            if (__OFADD__(v35, 1))
            {
              goto LABEL_87;
            }
          }

          swift_unknownObjectRelease();
LABEL_39:
          v35 = (v35 + 1);
          if (v5 == a4)
          {
            goto LABEL_53;
          }

          if (v70)
          {
            continue;
          }

          goto LABEL_41;
        }

        break;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      swift_once();
      while (1)
      {
        v41 = static DOCLog.UI;
        v42 = static os_log_type_t.debug.getter();
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v43 = swift_allocObject();
        v62 = xmmword_249B9A480;
        *(v43 + 16) = xmmword_249B9A480;
        *(v43 + 56) = MEMORY[0x277D837D0];
        v60 = lazy protocol witness table accessor for type String and conformance String();
        v61 = 0x8000000249BCBB20;
        *(v43 + 64) = v60;
        *(v43 + 32) = 0xD000000000000044;
        *(v43 + 40) = 0x8000000249BCBB20;
        os_log(_:dso:log:type:_:)("%@", 2, 2, &dword_2493AC000, v41, v42, v43);

        v44 = v18 ? __CocoaSet.count.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v45 = MEMORY[0x277D84F90];
        v70 = v41;
        if (!v44)
        {
          break;
        }

        v74 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 & ~(v44 >> 63), 0);
        if ((v44 & 0x8000000000000000) == 0)
        {
          v46 = a5;
          v45 = v74;
          if ((a1 & 0xC000000000000001) != 0)
          {
            v47 = 0;
            v48 = v67;
            do
            {
              *v48 = MEMORY[0x24C1FC540](v47, a1);
              swift_storeEnumTagMultiPayload();
              v74 = v45;
              v50 = *(v45 + 16);
              v49 = *(v45 + 24);
              if (v50 >= v49 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
                v45 = v74;
              }

              ++v47;
              *(v45 + 16) = v50 + 1;
              outlined init with take of DOCDragPasteboardType(v48, v45 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v50, type metadata accessor for DOCOperationItem);
            }

            while (v44 != v47);
          }

          else
          {
            v51 = (a1 + 32);
            v52 = v66;
            do
            {
              *v52 = *v51;
              swift_storeEnumTagMultiPayload();
              v74 = v45;
              v53 = *(v45 + 16);
              v54 = *(v45 + 24);
              swift_unknownObjectRetain();
              if (v53 >= v54 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v53 + 1, 1);
                v45 = v74;
              }

              *(v45 + 16) = v53 + 1;
              outlined init with take of DOCDragPasteboardType(v52, v45 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v53, type metadata accessor for DOCOperationItem);
              ++v51;
              --v44;
            }

            while (v44);
          }

          a5 = v46;
          break;
        }

        __break(1u);
LABEL_93:
        v26 = __CocoaSet.count.getter();
LABEL_20:
        swift_unknownObjectRetain();
        v27 = 0;
        v70 = 0;
        v18 = MEMORY[0x277D84F90];
        while (v26 != v27)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FC540](v27, a1);
            a5 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v27 >= v5[2])
            {
              goto LABEL_86;
            }

            swift_unknownObjectRetain();
            a5 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_85;
            }
          }

          swift_getObjectType();
          v28 = DOCNode.fpfs_syncFetchFPItem()();
          v29 = swift_unknownObjectRelease();
          ++v27;
          if (v28)
          {
            MEMORY[0x24C1FB090](v29);
            if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v18 = v74;
            v27 = a5;
          }
        }

        v30 = [objc_opt_self() defaultManager];
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v32 = [v30 eligibleActionsForDroppingItems:isa underItem:v20];

        type metadata accessor for FPAction(0);
        lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
        v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        a5 = v63;
LABEL_56:
        v18 = v65;
LABEL_57:
        if (one-time initialization token for UI != -1)
        {
          goto LABEL_89;
        }
      }

      v55 = [objc_opt_self() defaultManager];
      if (specialized Set.contains(_:)())
      {

        FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, v45, v69, 0, 0, 1, v68, v64, a5);
      }

      else if (specialized Set.contains(_:)())
      {

        FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v45, v69, 0, 0, 1, v68, v64, a5);
      }

      else
      {
        v56 = specialized Set.contains(_:)();

        if ((v56 & 1) == 0)
        {

          v57 = static os_log_type_t.debug.getter();
          v58 = swift_allocObject();
          *(v58 + 16) = v62;
          v59 = v60;
          *(v58 + 56) = MEMORY[0x277D837D0];
          *(v58 + 64) = v59;
          *(v58 + 32) = 0xD000000000000044;
          *(v58 + 40) = v61;
          os_log(_:dso:log:type:_:)("%@: No eligible actions", 23, 2, &dword_2493AC000, v70, v57, v58);

          if (v64)
          {
            v64(0);
          }

          goto LABEL_80;
        }

        FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(1u, v45, v69, 0, 0, 1, v68, v64, a5);
      }

LABEL_80:

      return;
    }
  }

  __break(1u);
LABEL_15:
  if (a4)
  {
    a4(0);
  }
}

uint64_t specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, a2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v8 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = 40;
    do
    {
      swift_unknownObjectRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v6 += 16;
      --v5;
    }

    while (v5);

    return v8;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(void *a1, uint64_t a2)
{
  v34 = type metadata accessor for UTType();
  v4 = *(v34 - 8);
  v6 = MEMORY[0x28223BE20](v34, v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 localDragSession])
  {
    return;
  }

  swift_unknownObjectRelease();
  v8 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0, MEMORY[0x277D84F90]);
  v12 = [a1 items];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_32:

    return;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_6:
  if (v14 >= 1)
  {
    v32 = v11;
    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v17 = (v4 + 8);
    while (1)
    {
      if (v16)
      {
        v18 = MEMORY[0x24C1FC540](v15, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      if ([v18 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      v38 = v36;
      v39 = v37;
      outlined init with copy of DOCGridLayout.Spec?(&v38, &v36, &_sypSgMd, &_sypSgMR);
      if (*(&v37 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
        if (swift_dynamicCast())
        {
          outlined destroy of CharacterSet?(&v38, &_sypSgMd, &_sypSgMR);
LABEL_22:
          v20 = v35;
          v21 = [v35 contentType];
          v22 = v33;
          static UTType._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v21) = UTType.conforms(to:)();
          (*v17)(v22, v34);
          if (v21)
          {
            v23 = v17;
            v24 = v13;
            v25 = v14;
            v26 = v16;
            v27 = a2;
            v29 = *(v32 + 2);
            v28 = *(v32 + 3);
            if (v29 >= v28 >> 1)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v32);
            }

            v30 = v32;
            *(v32 + 2) = v29 + 1;
            v31 = &v30[16 * v29];
            *(v31 + 4) = v19;
            *(v31 + 5) = v20;
            a2 = v27;
            v16 = v26;
            v14 = v25;
            v13 = v24;
            v17 = v23;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          goto LABEL_9;
        }
      }

      else
      {
        outlined destroy of CharacterSet?(&v36, &_sypSgMd, &_sypSgMR);
      }

      v36 = v38;
      v37 = v39;
      if (*(&v39 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        if (swift_dynamicCast())
        {
          goto LABEL_22;
        }
      }

      else
      {

        outlined destroy of CharacterSet?(&v36, &_sypSgMd, &_sypSgMR);
      }

LABEL_9:
      if (v14 == ++v15)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
}

void specialized static FPItem.sessionContainsFavorites(_:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_21:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = 0;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v6 = v2 + 32;
  v7 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  while (2)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v4, v2);
    }

    else
    {
      if (v4 >= *(v5 + 16))
      {
        __break(1u);
        break;
      }

      v8 = *(v6 + 8 * v4);
    }

    v9 = v8;
    if (!__OFADD__(v4++, 1))
    {
      v11 = [v8 v7[370]];
      v12 = [v11 registeredTypeIdentifiers];

      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = (v13 + 40);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        if (*(v14 - 1) != 0xD000000000000029 || 0x8000000249BC6000 != *v14)
        {
          v14 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v6 = v2 + 32;
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      if (v4 != v3)
      {
        continue;
      }

      goto LABEL_21;
    }

    break;
  }

  __break(1u);
}

uint64_t specialized static FPItem.sessionContainsFolder(_:)(id a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v51 - v6;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v51 - v19;
  v64 = &unk_285DA8400;
  v21 = swift_dynamicCastObjCProtocolConditional();
  if (!v21)
  {
    return 0;
  }

  v22 = v21;
  swift_unknownObjectRetain();
  static UTType.item.getter();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v24 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v22, v20, a2, ObjectType);
  swift_unknownObjectRelease();
  v62 = v9[1];
  v63 = v8;
  v25 = v8;
  v26 = v9 + 1;
  v62(v20, v25);
  if (v24 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v53 = v20;
    v54 = v12;
    v56 = v16;
    v57 = v7;
    v20 = 0;
    v60 = v24 & 0xFFFFFFFFFFFFFF8;
    v61 = v24 & 0xC000000000000001;
    v55 = (v9 + 6);
    v51 = a1;
    v52 = (v9 + 4);
    v58 = i;
    v59 = v24;
    while (v61)
    {
      v9 = MEMORY[0x24C1FC540](v20, v24);
      v7 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

LABEL_10:
      v29 = [v9 contentType];
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = UTType.identifier.getter();
      v32 = v31;
      if (one-time initialization token for folderUTICache != -1)
      {
        swift_once();
      }

      v12 = folderUTICache;
      a1 = MEMORY[0x24C1FAD20](v30, v32);
      v33 = [v12 objectForKey_];

      if (v33)
      {

        v28 = [v33 BOOLValue];
        swift_unknownObjectRelease();

        v62(v16, v63);
        if (v28)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v34 = v26;

        v35 = v57;
        UTType.init(_:)();
        v36 = v63;
        if ((*v55)(v35, 1, v63) == 1)
        {
          outlined destroy of CharacterSet?(v35, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v12 = 0;
          v26 = v34;
        }

        else
        {
          v37 = v54;
          (*v52)(v54, v35, v36);
          v38 = v53;
          static UTType.folder.getter();
          v39 = UTType.conforms(to:)();
          v40 = v36;
          v26 = v34;
          v41 = v62;
          v62(v38, v40);
          if (v39)
          {
            static UTType.package.getter();
            v42 = UTType.conforms(to:)();
            v43 = v38;
            v44 = v63;
            v41(v43, v63);
            v41(v37, v44);
            v12 = (v42 ^ 1u);
          }

          else
          {
            v41(v37, v63);
            v12 = 0;
          }
        }

        v16 = v56;
        v45 = folderUTICache;
        v46 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        a1 = v45;
        v47 = [v46 initWithBool_];
        v48 = MEMORY[0x24C1FAD20](v30, v32);

        [a1 setObject:v47 forKey:v48];
        swift_unknownObjectRelease();

        v62(v16, v63);
        if (v12)
        {
LABEL_24:
          v49 = 1;
          goto LABEL_30;
        }
      }

      ++v20;
      v24 = v59;
      if (v7 == v58)
      {
        v49 = 0;
        goto LABEL_30;
      }
    }

    if (v20 >= *(v60 + 16))
    {
      goto LABEL_27;
    }

    v9 = *(v24 + 8 * v20 + 32);
    swift_unknownObjectRetain();
    v7 = (v20 + 1);
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v49 = 0;
LABEL_30:

  swift_unknownObjectRelease();
  return v49;
}

void specialized static DOCDocumentSource.sourcesFromDropSession(_:)(void *a1, unint64_t *a2, void *a3)
{
  v6 = [a1 localDragSession];
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return;
  }

  swift_unknownObjectRelease();
  v27 = v7;
  v8 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_22:

    return;
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    v22 = v10;
    do
    {
      if (v12)
      {
        v14 = MEMORY[0x24C1FC540](v11, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v11 + 32);
      }

      v15 = v14;
      if ([v14 v13[369]])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
      }

      v26[0] = v24;
      v26[1] = v25;
      if (*(&v25 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, a2, a3);
        if (swift_dynamicCast())
        {
          v16 = v9;
          v17 = v12;
          v18 = v13;
          v19 = a2;
          v20 = a3;
          v21 = v23;
          MEMORY[0x24C1FB090]();
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          a3 = v20;
          a2 = v19;
          v13 = v18;
          v12 = v17;
          v9 = v16;
          v10 = v22;
        }

        else
        {
        }
      }

      else
      {

        outlined destroy of CharacterSet?(v26, &_sypSgMd, &_sypSgMR);
      }

      ++v11;
    }

    while (v10 != v11);
  }
}

uint64_t specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v18 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v17 = a3;
    v11 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v11, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      v14 = [v12 itemProvider];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v11);
    a3 = v17;
    v9 = v18;
  }

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;

  v16 = a2;
  _sSo14NSItemProviderC26DocumentManagerExecutablesE30nodesFromItemProvidersWithInfo_12itemContexts15alertPresenting04loadG4URLs17completionHandlerySayABG_SayxGSo16UIViewControllerCSgSbySayx0L7Context_So7DOCNode_p4nodetGctlFZSo06UIDragH0C_Tt4g5(v9, a1, a2, 1, partial apply for closure #2 in static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:), v15);
}

double specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v35 = a2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for implicit closure #2 in implicit closure #1 in DOCTag.dropOnto(dropSession:alertPresenting:);
  *(v12 + 24) = v11;
  v34 = v12;
  v31 = a4;
  v33 = v11;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v10);
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v32 = static DOCLog.UI;
  v15 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA08C0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = 0xD000000000000041;
  *(v16 + 40) = 0x8000000249BCBA40;
  v17 = MEMORY[0x277D83B88];
  v18 = MEMORY[0x277D83C10];
  v19 = *(v14 + 16);
  *(v16 + 96) = MEMORY[0x277D83B88];
  *(v16 + 104) = v18;
  *(v16 + 72) = v19;
  v20 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v21 >> 62)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v16 + 136) = v17;
  *(v16 + 144) = v18;
  *(v16 + 112) = v22;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v32, v15, v16);

  v23 = [a1 items];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 == v25)
  {
    if (v19)
    {
      v36 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v26 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v26 += 16;
        --v19;
      }

      while (v19);

      v27 = v36;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    DOCTag.setTags(for:alertPresenting:)(v27, v35);
  }

  else
  {

    v28 = [a1 items];
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v29, v35, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v34);
  }

  return result;
}

uint64_t outlined init with copy of DOCDragPasteboardType(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for DOCDragPasteboardType(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DOCDragPasteboardType(uint64_t a1, double a2)
{
  v3 = type metadata accessor for DOCDragPasteboardType(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DOCDragAndDropErrorCode and conformance DOCDragAndDropErrorCode()
{
  result = lazy protocol witness table cache variable for type DOCDragAndDropErrorCode and conformance DOCDragAndDropErrorCode;
  if (!lazy protocol witness table cache variable for type DOCDragAndDropErrorCode and conformance DOCDragAndDropErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDragAndDropErrorCode and conformance DOCDragAndDropErrorCode);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FPAction and conformance FPAction(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

double specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void), unint64_t a6)
{
  v41 = a2;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v36 = a5;
  v15[4] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #3 in closure #1 in static DOCFileProviderSource.createSource(from:with:);
  *(v16 + 24) = v15;
  v40 = v16;
  v35 = a4;
  swift_unknownObjectRetain();
  v37 = a6;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v14);
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v39 = static DOCLog.UI;
  v38 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249BA08C0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 32) = 0xD000000000000041;
  *(v19 + 40) = 0x8000000249BCBA40;
  v20 = MEMORY[0x277D83B88];
  v21 = MEMORY[0x277D83C10];
  v22 = *(v18 + 16);
  *(v19 + 96) = MEMORY[0x277D83B88];
  *(v19 + 104) = v21;
  *(v19 + 72) = v22;
  v23 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  *(v19 + 112) = v25;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v39, v38, v19);

  v26 = [a1 items];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    v28 = __CocoaSet.count.getter();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 == v28)
  {
    if (v22)
    {
      v42 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v29 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v29 += 16;
        --v22;
      }

      while (v22);

      v30 = v42;
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    v34 = v35;
    swift_getObjectType();
    specialized static FPItem.performDrop(_:underItem:alertPresenting:completion:)(v30, v34, v41, v36, v37);
  }

  else
  {

    v31 = [a1 items];
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v32, v41, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v40);
  }

  return result;
}

double specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v45 = a2;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v44 = a5;
  v15[4] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in FavoritesSectionManager.performDrop(session:onto:alertPresenting:completion:);
  *(v16 + 24) = v15;
  v46 = v16;
  v49 = a4;
  v43 = a6;

  v47 = v15;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v14);
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  if (one-time initialization token for UI != -1)
  {
LABEL_30:
    swift_once();
  }

  v48 = static DOCLog.UI;
  v19 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249BA08C0;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v20 + 32) = 0xD000000000000041;
  *(v20 + 40) = 0x8000000249BCBA40;
  v21 = MEMORY[0x277D83B88];
  v22 = MEMORY[0x277D83C10];
  v23 = *(v18 + 16);
  *(v20 + 96) = MEMORY[0x277D83B88];
  *(v20 + 104) = v22;
  *(v20 + 72) = v23;
  v24 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    v26 = __CocoaSet.count.getter();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v20 + 136) = v21;
  *(v20 + 144) = v22;
  *(v20 + 112) = v26;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v48, v19, v20);

  v27 = [a1 items];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v28 >> 62)
  {
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 != v29)
  {

    v32 = [a1 items];
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v33, v45, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v46);

    return result;
  }

  v30 = MEMORY[0x277D84F90];
  if (v23)
  {
    v50 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = 40;
    do
    {
      swift_unknownObjectRetain();
      a1 = &v50;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v31 += 16;
      --v23;
    }

    while (v23);

    v18 = v50;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v50 = v30;
  if (v18 >> 62)
  {
    v35 = __CocoaSet.count.getter();
    if (v35)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v35 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_15:
      v36 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v36, v18);
          v37 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v36 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_30;
          }

          swift_unknownObjectRetain();
          v37 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            v41 = v50;
            if ((v50 & 0x8000000000000000) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_39;
          }
        }

        swift_getObjectType();
        v38 = DOCNode.fpfs_syncFetchFPItem()();
        if (v38 && (v39 = v38, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8), v40 = v49, a1 = static NSObject.== infix(_:_:)(), v39, v40, (a1 & 1) != 0))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          a1 = &v50;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v36;
        if (v37 == v35)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  if ((v41 & 0x4000000000000000) != 0)
  {
LABEL_39:
    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (*(v41 + 16) >= 1)
  {
LABEL_37:
    _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(v41, v49, v45, 0, 0);
  }

LABEL_38:

  v44(v42);

  return result;
}

double specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.collectionView(_:performDropWith:);
  *(v11 + 24) = a4;
  v32 = v11;
  v34 = a4;
  swift_retain_n();
  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v10);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v31 = static DOCLog.UI;
  v14 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249BA08C0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = 0xD000000000000041;
  *(v15 + 40) = 0x8000000249BCBA40;
  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  v18 = *(v13 + 16);
  *(v15 + 96) = MEMORY[0x277D83B88];
  *(v15 + 104) = v17;
  *(v15 + 72) = v18;
  v19 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 112) = v21;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v31, v14, v15);

  v22 = [a1 items];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 == v24)
  {
    if (v18)
    {
      v35 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v25 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v25 += 16;
        --v18;
      }

      while (v18);

      v26 = v35;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    closure #1 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(v26, v33, v34);
  }

  else
  {

    v27 = [a1 items];
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v28, v33, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v32);
  }

  return result;
}

double specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #2 in DOCItemCollectionViewController.collectionView(_:performDropWith:);
  *(v14 + 24) = v13;
  v37 = v14;
  v33 = a4;

  v34 = a5;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v12);
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v36 = static DOCLog.UI;
  v35 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249BA08C0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 32) = 0xD000000000000041;
  *(v17 + 40) = 0x8000000249BCBA40;
  v18 = MEMORY[0x277D83B88];
  v19 = MEMORY[0x277D83C10];
  v20 = *(v16 + 16);
  *(v17 + 96) = MEMORY[0x277D83B88];
  *(v17 + 104) = v19;
  *(v17 + 72) = v20;
  v21 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v17 + 136) = v18;
  *(v17 + 144) = v19;
  *(v17 + 112) = v23;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v36, v35, v17);

  v24 = [a1 items];
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    v26 = __CocoaSet.count.getter();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 == v26)
  {
    if (v20)
    {
      v39 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v27 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v27 += 16;
        --v20;
      }

      while (v20);

      v28 = v39;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    closure #2 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(v28, v38, v33, v34);
  }

  else
  {

    v29 = [a1 items];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v30, v38, closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v37);
  }

  return result;
}

uint64_t specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v38[0] = a2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v11[2] = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #2 in DOCSidebarViewController.performDrop(in:with:);
  *(v12 + 24) = v11;
  v39 = v12;
  v41 = a4;
  v38[1] = v11;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v10);
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  if (one-time initialization token for UI != -1)
  {
LABEL_30:
    swift_once();
  }

  v40 = static DOCLog.UI;
  v15 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA08C0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = 0xD000000000000041;
  *(v16 + 40) = 0x8000000249BCBA40;
  v17 = MEMORY[0x277D83B88];
  v18 = MEMORY[0x277D83C10];
  v19 = *(v14 + 16);
  *(v16 + 96) = MEMORY[0x277D83B88];
  *(v16 + 104) = v18;
  *(v16 + 72) = v19;
  v20 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v21 >> 62)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v16 + 136) = v17;
  *(v16 + 144) = v18;
  *(v16 + 112) = v22;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v40, v15, v16);

  v23 = [a1 items];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 == v25)
  {
    v26 = MEMORY[0x277D84F90];
    if (v19)
    {
      v42 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v27 = 40;
      do
      {
        swift_unknownObjectRetain();
        a1 = &v42;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v27 += 16;
        --v19;
      }

      while (v19);

      v14 = v42;
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v42 = v26;
    if (v14 >> 62)
    {
      v30 = __CocoaSet.count.getter();
      if (v30)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v30 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_15:
        v31 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FC540](v31, v14);
            v32 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v31 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_30;
            }

            swift_unknownObjectRetain();
            v32 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              v36 = v42;
              if ((v42 & 0x8000000000000000) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_40;
            }
          }

          swift_getObjectType();
          v33 = DOCNode.fpfs_syncFetchFPItem()();
          if (v33 && (v34 = v33, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8), v35 = v41, a1 = static NSObject.== infix(_:_:)(), v34, v35, (a1 & 1) != 0))
          {
            swift_unknownObjectRelease();
          }

          else
          {
            a1 = &v42;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v31;
          if (v32 == v30)
          {
            goto LABEL_27;
          }
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

LABEL_35:
    if ((v36 & 0x4000000000000000) != 0)
    {
LABEL_40:
      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_38;
      }
    }

    else if (*(v36 + 16) < 1)
    {
LABEL_38:
    }

    _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(v36, v41, v38[0], 0, 0);
    goto LABEL_38;
  }

  v28 = [a1 items];
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v29, v38[0], closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)partial apply, v39);
}

uint64_t outlined init with take of DOCDragPasteboardType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSMutableAttributedString(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in callCompletionBlock #1 (_:error:) in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)()
{
  type metadata accessor for URL();
  if (*(v0 + 16) == 1)
  {
    URL.stopAccessingSecurityScopedResource()();
  }
}

void partial apply for closure #2 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DSLightweightTagInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void partial apply for closure #1 in presentFPErrorAlert(error:alertPresenting:)()
{
  v0 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

UIImage_optional __swiftcall DOCSymbolImageBarButtonItem.Descriptor.loadImage()()
{
  v3 = v1;
  v4 = v0;
  v5 = [objc_opt_self() configurationWithScale_];
  v6 = MEMORY[0x24C1FAD20](v4, v3);
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  v9 = v7;
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

BOOL static DOCSymbolImageBarButtonItem.Descriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t DOCSymbolImageBarButtonItem.symbolDescriptor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor);

  return v1;
}

id DOCSymbolImageBarButtonItem.init(symbolDescriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor];
  *v7 = a1;
  *(v7 + 1) = a2;
  *(v7 + 2) = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for DOCSymbolImageBarButtonItem();

  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 configurationWithScale_];
  v12 = MEMORY[0x24C1FAD20](a1, a2);
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  [v10 setImage_];
  [v10 setStyle_];

  return v10;
}

id DOCSymbolImageBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

BOOL DOCSymbolImageBarButtonItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v32);
  if (!v33)
  {
    outlined destroy of Any?(v32);
    return 0;
  }

  v3 = type metadata accessor for DOCSymbolImageBarButtonItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  outlined init with copy of Any?(a1, v32);
  v5 = v33;
  if (v33)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6, v6);
    v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v11 = 0;
  }

  v30.receiver = v1;
  v30.super_class = v3;
  v13 = objc_msgSendSuper2(&v30, sel_isEqual_, v11);
  swift_unknownObjectRelease();
  if (v13)
  {

    return 1;
  }

  v14 = [v1 target];
  v15 = [v4 target];
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (!v15)
  {
LABEL_20:
    swift_unknownObjectRelease();

    return 0;
  }

  v16 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v14 != v16)
  {
    goto LABEL_35;
  }

LABEL_16:
  v17 = [v1 action];
  v18 = [v4 action];
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_22;
    }

LABEL_35:

    return 0;
  }

  if (!v18 || (static Selector.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_22:
  v19 = [v1 primaryAction];
  v20 = [v4 primaryAction];
  v21 = v20;
  if (v19)
  {
    if (!v20)
    {
LABEL_31:

      return 0;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v22 = static NSObject.== infix(_:_:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v20)
  {
LABEL_33:

    return 0;
  }

  v19 = [v1 menu];
  v23 = [v4 menu];
  v21 = v23;
  if (!v19)
  {
    if (!v23)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!v23)
  {
    goto LABEL_31;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
  v24 = static NSObject.== infix(_:_:)();

  if ((v24 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_34:
  v25 = [v1 isEnabled];
  if (v25 != [v4 isEnabled])
  {
    goto LABEL_35;
  }

  v26 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor + 16];
  v27 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor + 16];
  if (*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor] == *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor] && *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor + 8] == *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem_symbolDescriptor + 8])
  {

    return v26 == v27;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v28)
  {
    return v26 == v27;
  }

  return result;
}

id DOCSymbolImageBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCSymbolImageBarButtonItem.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCSymbolImageBarButtonItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for DOCSymbolImageBarButtonItem.Descriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for DOCSymbolImageBarButtonItem.Descriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

DocumentManagerExecutables::NavigationDirection_optional __swiftcall NavigationDirection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NavigationDirection.init(rawValue:), v3);

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

  *v4 = v7;
  return result;
}

uint64_t NavigationDirection.rawValue.getter()
{
  if (*v0)
  {
    return 0x64726177726F66;
  }

  else
  {
    return 1801675106;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NavigationDirection(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64726177726F66;
  }

  else
  {
    v3 = 1801675106;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64726177726F66;
  }

  else
  {
    v5 = 1801675106;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NavigationDirection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance NavigationDirection(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationDirection(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance NavigationDirection(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NavigationDirection.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NavigationDirection(uint64_t *a1@<X8>)
{
  v2 = 1801675106;
  if (*v1)
  {
    v2 = 0x64726177726F66;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance NavigationDirection(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance NavigationDirection(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  return MEMORY[0x28210C300](a1, v2);
}

void *key path getter for NavigateHistoryIntent.direction : NavigateHistoryIntent@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for NavigateHistoryIntent.direction : NavigateHistoryIntent(char *a1, uint64_t *a2)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t (*NavigateHistoryIntent.direction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

void NavigateHistoryIntent.direction.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t NavigateHistoryIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v34 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v32 = v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v31 = v30 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v30[0] = type metadata accessor for LocalizedStringResource();
  v22 = *(v30[0] - 8);
  MEMORY[0x28223BE20](v30[0], v23);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables19NavigationDirectionOGMd, &_s10AppIntents15IntentParameterCy26DocumentManagerExecutables19NavigationDirectionOGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v14 + 104);
  v25(v17, v24, v13);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v17, v24, v13);
  v26 = v31;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v22 + 56))(v26, 0, 1, v30[0]);
  v38[0] = 0;
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v32, 1, 1, v27);
  v28(v33, 1, 1, v27);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();
  result = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  *v37 = result;
  return result;
}

uint64_t NavigateHistoryIntent.init(direction:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for InputConnectionBehavior();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v37 = &v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v36 = &v32 - v14;
  v15 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v33 = type metadata accessor for LocalizedStringResource();
  v24 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v25);
  v35 = *a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables19NavigationDirectionOGMd, &_s10AppIntents15IntentParameterCy26DocumentManagerExecutables19NavigationDirectionOGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = *MEMORY[0x277CC9110];
  v27 = *(v16 + 104);
  v27(v19, v26, v15);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27(v19, v26, v15);
  v28 = v36;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v24 + 56))(v28, 0, 1, v33);
  v44[0] = 0;
  v29 = type metadata accessor for IntentDialog();
  v30 = *(*(v29 - 8) + 56);
  v30(v37, 1, 1, v29);
  v30(v38, 1, 1, v29);
  (*(v40 + 104))(v39, *MEMORY[0x277CBA308], v41);
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();
  *v42 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v43 = v35;
  return IntentParameter.wrappedValue.setter();
}

uint64_t one-time initialization function for title(double a1)
{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static NavigateHistoryIntent.title);
  __swift_project_value_buffer(v10, static NavigateHistoryIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static GetContentOfFolderIntent.title);
  __swift_project_value_buffer(v10, static GetContentOfFolderIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static NavigateQuickLookIntent.title);
  __swift_project_value_buffer(v10, static NavigateQuickLookIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static SetGroupingModeIntent.title);
  __swift_project_value_buffer(v10, static SetGroupingModeIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static RevealItemsIntent.title);
  __swift_project_value_buffer(v10, static RevealItemsIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static QuickLookFileIntent.title);
  __swift_project_value_buffer(v10, static QuickLookFileIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static SaveToFilesIntent.title);
  __swift_project_value_buffer(v10, static SaveToFilesIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static SetFilenameExtensionVisibilityIntent.title);
  __swift_project_value_buffer(v10, static SetFilenameExtensionVisibilityIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static GetFilesIntent.title);
  __swift_project_value_buffer(v10, static GetFilesIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static DuplicateItemsIntent.title);
  __swift_project_value_buffer(v10, static DuplicateItemsIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static FavoriteFoldersIntent.title);
  __swift_project_value_buffer(v10, static FavoriteFoldersIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v10, static CompressItemsIntent.title);
  __swift_project_value_buffer(v10, static CompressItemsIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t one-time initialization function for description()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static NavigateHistoryIntent.description);
  __swift_project_value_buffer(v15, static NavigateHistoryIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v28 = v25 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v26 = type metadata accessor for LocalizedStringResource();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v16);
  v25[2] = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v18, static GetContentOfFolderIntent.description);
  v27 = __swift_project_value_buffer(v18, static GetContentOfFolderIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v7 + 104);
  v25[1] = v7 + 104;
  v20(v10, v19, v6);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v15 + 56);
  v22 = v26;
  v21(v28, 1, 1, v26);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v10, v19, v6);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21(v23, 0, 1, v22);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static NavigateQuickLookIntent.description);
  __swift_project_value_buffer(v15, static NavigateQuickLookIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v21 = &v19 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v20 = type metadata accessor for LocalizedStringResource();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v13);
  v14 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v14, static SetGroupingModeIntent.description);
  v19 = __swift_project_value_buffer(v14, static SetGroupingModeIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v4 + 104);
  v16(v7, v15, v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v7, v15, v3);
  v17 = v21;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v12 + 56))(v17, 0, 1, v20);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static RevealItemsIntent.description);
  __swift_project_value_buffer(v15, static RevealItemsIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static QuickLookFileIntent.description);
  __swift_project_value_buffer(v15, static QuickLookFileIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v28 = v25 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v26 = type metadata accessor for LocalizedStringResource();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v16);
  v25[2] = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v18, static SaveToFilesIntent.description);
  v27 = __swift_project_value_buffer(v18, static SaveToFilesIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v7 + 104);
  v25[1] = v7 + 104;
  v20(v10, v19, v6);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v15 + 56);
  v22 = v26;
  v21(v28, 1, 1, v26);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v10, v19, v6);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21(v23, 0, 1, v22);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v21 = &v19 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v20 = type metadata accessor for LocalizedStringResource();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v13);
  v14 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v14, static SetFilenameExtensionVisibilityIntent.description);
  v19 = __swift_project_value_buffer(v14, static SetFilenameExtensionVisibilityIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v4 + 104);
  v16(v7, v15, v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v7, v15, v3);
  v17 = v21;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v12 + 56))(v17, 0, 1, v20);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v28 = v25 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v26 = type metadata accessor for LocalizedStringResource();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v16);
  v25[2] = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v18, static GetFilesIntent.description);
  v27 = __swift_project_value_buffer(v18, static GetFilesIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v7 + 104);
  v25[1] = v7 + 104;
  v20(v10, v19, v6);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v15 + 56);
  v22 = v26;
  v21(v28, 1, 1, v26);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v10, v19, v6);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21(v23, 0, 1, v22);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v28 = v25 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v26 = type metadata accessor for LocalizedStringResource();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v16);
  v25[2] = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v18, static DuplicateItemsIntent.description);
  v27 = __swift_project_value_buffer(v18, static DuplicateItemsIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v7 + 104);
  v25[1] = v7 + 104;
  v20(v10, v19, v6);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v15 + 56);
  v22 = v26;
  v21(v28, 1, 1, v26);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v10, v19, v6);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21(v23, 0, 1, v22);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v17[0] = v17 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v15, static FavoriteFoldersIntent.description);
  __swift_project_value_buffer(v15, static FavoriteFoldersIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v3);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v26 - v5;
  v7 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v26[0] = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v27 = type metadata accessor for LocalizedStringResource();
  v16 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v17);
  v26[1] = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v19, static CompressItemsIntent.description);
  v28 = __swift_project_value_buffer(v19, static CompressItemsIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v8 + 104);
  v21(v11, v20, v7);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v22 = *(v16 + 56);
  v23 = v27;
  v22(v6, 1, 1, v27);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21(v11, v20, v26[0]);
  v24 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v22(v24, 0, 1, v23);
  return IntentDescription.init(_:categoryName:searchKeywords:resultValueName:)();
}

uint64_t NavigateHistoryIntent.description.unsafeMutableAddressor(double a1)
{
  if (one-time initialization token for description != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IntentDescription();

  return __swift_project_value_buffer(v1, static NavigateHistoryIntent.description);
}

uint64_t static NavigateHistoryIntent.title.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
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
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t static NavigateHistoryIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21NavigateHistoryIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21NavigateHistoryIntentVGMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21NavigateHistoryIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21NavigateHistoryIntentV_GMR);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BCC3D0;
  v4._countAndFlagsBits = 0xD000000000000026;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21NavigateHistoryIntentV10AppIntents0H9ParameterCyAC19NavigationDirectionOGGMd, &_ss7KeyPathCy26DocumentManagerExecutables21NavigateHistoryIntentV10AppIntents0H9ParameterCyAC19NavigationDirectionOGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t one-time initialization function for authenticationPolicy()
{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static NavigateHistoryIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static NavigateHistoryIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static GetContentOfFolderIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static GetContentOfFolderIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static NavigateQuickLookIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static NavigateQuickLookIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static TrashItemsIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static TrashItemsIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static RenameItemIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static RenameItemIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static CreateFolderIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static CreateFolderIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static SaveToFilesIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static SaveToFilesIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static GetFilesIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static GetFilesIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static DuplicateItemsIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static DuplicateItemsIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static MoveItemsIntent.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static MoveItemsIntent.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static NavigateHistoryIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NavigateHistoryIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NavigateHistoryIntent.authenticationPolicy.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v1, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static NavigateHistoryIntent.authenticationPolicy : NavigateHistoryIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static NavigateHistoryIntent.authenticationPolicy : NavigateHistoryIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateHistoryIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t NavigateHistoryIntent.perform()()
{
  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance NavigateHistoryIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LocalizedStringResource();
  v4 = __swift_project_value_buffer(v3, static NavigateHistoryIntent.title);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t protocol witness for static AppIntent.parameterSummary.getter in conformance NavigateHistoryIntent(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21NavigateHistoryIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21NavigateHistoryIntentVGMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21NavigateHistoryIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21NavigateHistoryIntentV_GMR);
  MEMORY[0x28223BE20](v4, v5);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000249BCC3D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21NavigateHistoryIntentV10AppIntents0H9ParameterCyAC19NavigationDirectionOGGMd, &_ss7KeyPathCy26DocumentManagerExecutables21NavigateHistoryIntentV10AppIntents0H9ParameterCyAC19NavigationDirectionOGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance NavigateHistoryIntent(uint64_t a1, double a2)
{
  v3 = lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent();

  return MEMORY[0x28210B538](a1, v3);
}

unint64_t specialized static NavigationDirection.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v41 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v31 - v5;
  v44 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = type metadata accessor for LocalizedStringResource();
  v32 = v14;
  v45 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVtGMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVtMd, &_s26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVtMR);
  v43 = v16;
  v17 = *(v16 - 8);
  v39 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v34 = v19;
  *(v19 + 16) = xmmword_249B9FA70;
  v42 = v19 + v18;
  v35 = *(v16 + 48);
  *(v19 + v18) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v36 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v37 = v6 + 104;
  v38 = v20;
  v31 = v9;
  v20(v9);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v21 = *(v45 + 56);
  v45 += 56;
  v33 = v21;
  v22 = v40;
  v21(v40, 1, 1, v14);
  v23 = type metadata accessor for DisplayRepresentation.Image();
  v24 = *(*(v23 - 8) + 56);
  v25 = v41;
  v24(v41, 1, 1, v23);
  v26 = v42;
  v27 = v25;
  DisplayRepresentation.init(title:subtitle:image:)();
  v28 = (v26 + v39);
  v39 = *(v43 + 48);
  *v28 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38(v31, v36, v44);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v33(v22, 1, 1, v32);
  v24(v27, 1, 1, v23);
  DisplayRepresentation.init(title:subtitle:image:)();
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v29;
}

unint64_t lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection()
{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection;
  if (!lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDirection and conformance NavigationDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent()
{
  result = lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent;
  if (!lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent;
  if (!lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent;
  if (!lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateHistoryIntent and conformance NavigateHistoryIntent);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NavigationDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigateHistoryIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for NavigateHistoryIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall SYDocumentAttributes.performReturnToDocumentRequest()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D6B7C0]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D6B7E0]) init];
  [v2 setDocumentAttributes_];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v6[4] = partial apply for closure #1 in SYDocumentAttributes.performReturnToDocumentRequest();
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v6[3] = &block_descriptor_10;
  v4 = _Block_copy(v6);
  v5 = v2;

  [v1 performRequest:v5 completion:v4];
  _Block_release(v4);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void closure #1 in SYDocumentAttributes.performReturnToDocumentRequest()(char a1, void *a2, void *a3, SEL *a4, const char *a5, ...)
{
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    v10 = a3;
    v11 = a2;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v13 = 138412546;
      v16 = [v10 *a4];
      *(v13 + 4) = v16;
      *v14 = v16;
      *(v13 + 12) = 2080;
      v17 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_2493AC000, oslog, v12, a5, v13, 0x16u);
      outlined destroy of NSObject?(v14);
      MEMORY[0x24C1FE850](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    else
    {
    }
  }
}

void specialized SYDocumentAttributes.performReplyToSenderRequest(with:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277D6B7A0]);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithFileURL_];

  if (v11)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D6B7C0]) init];
    v13 = [objc_allocWithZone(MEMORY[0x277D6B7E8]) init];
    [v13 setDocument_];
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = partial apply for closure #1 in SYDocumentAttributes.performReplyToSenderRequest(with:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_6_0;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    [v12 performRequest:v16 completion:v15];
    _Block_release(v15);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    (*(v3 + 16))(v6, a1, v2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v3 + 8))(v6, v2);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, aBlock);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2493AC000, v18, v19, "Could not create SYDocument from URL %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DOCConfiguration.copy.getter()
{
  [v0 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration, 0x277D061E8);
  swift_dynamicCast();
  return v2;
}

Swift::Int DOCHierarchyController.DOCHierarchyOperationType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

void *DOCHierarchyController.FetchingOperationToken.debugDescription.getter()
{
  _StringGuts.grow(_:)(81);
  MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BCD2B0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](0x7974202020200A2CLL, 0xEB000000003A6570);
  v2 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](0xD000000000000015, 0x8000000249BCD2D0);
  if (*(v0 + *(v2 + 24)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v3, v4);

  MEMORY[0x24C1FAEA0](0xD000000000000010, 0x8000000249BCD2F0);
  v5 = *(v0 + *(v2 + 28));
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_21:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v21 = MEMORY[0x24C1FB0D0](v7, v20);
    v23 = v22;

    MEMORY[0x24C1FAEA0](v21, v23);

    MEMORY[0x24C1FAEA0](10506, 0xE200000000000000);
    return 0;
  }

  v24 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v24;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 displayName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      v18 = *(v24 + 16);
      v17 = *(v24 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      ++v9;
      *(v24 + 16) = v18 + 1;
      v19 = v24 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v6 != v9);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t DOCHierarchyController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCHierarchyController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

uint64_t DOCHierarchyController.locations.setter(uint64_t a1)
{
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v7 = v1;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v3 = MEMORY[0x24C1FAD20](0x61636F4C7473616CLL, 0xEC0000006E6F6974);
  [v1 willChangeValueForKey_];

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  *&v1[v4] = a1;

  v5 = MEMORY[0x24C1FAD20](0x61636F4C7473616CLL, 0xEC0000006E6F6974);
  [v7 didChangeValueForKey_];

  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  swift_getKeyPath();
  return _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
}

uint64_t key path getter for DOCHierarchyController.locations : DOCHierarchyController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t DOCHierarchyController.effectiveRootLocation.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
  swift_beginAccess();
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  if ((*(*(updated - 8) + 48))(v1, 1, updated))
  {
    v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations);
    swift_beginAccess();
  }

  else
  {
    v3 = (v1 + *(updated + 20));
  }

  v4 = *v3;

  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_22:

      return 0;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C1FC540](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;
  if ([v6 isRoot])
  {
    goto LABEL_17;
  }

  v8 = [v7 sourceIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

LABEL_17:

    goto LABEL_18;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  v16 = swift_beginAccess();
  if (!*(v0 + v15))
  {
    goto LABEL_22;
  }

  v23 = *(v0 + v15);
  MEMORY[0x28223BE20](v16, v17);
  v22[2] = &v23;
  v19 = v18;
  v20 = v18;
  v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, v4);

  result = v19;
  if (v21)
  {
    return result;
  }

  return 0;
}

void (*DOCHierarchyController.locations.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return DOCHierarchyController.locations.modify;
}

void DOCHierarchyController.locations.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    DOCHierarchyController.locations.setter(v4);
  }

  else
  {
    DOCHierarchyController.locations.setter(v3);
  }

  free(v2);
}

uint64_t DOCHierarchyController.effectiveLocations.getter()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v4 = *(v0 + v3);

  v5 = DOCHierarchyController.effectiveRootLocation.getter();
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  v7 = *(v0 + v3);

  v8 = specialized Collection<>.firstIndex(of:)(v6, v7, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  v10 = v9;

  if (v10)
  {
LABEL_45:

    return v4;
  }

  v11 = *(v2 + v3);
  if (v11 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_11;
    }
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_60;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v12 = *(v11 + 32);
  while (1)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    v1 = v6;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {

      return v4;
    }

LABEL_11:

    if (v8 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + v3);
      v1 = (v4 >> 62);
      if (!(v4 >> 62))
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_14;
      }
    }

    v10 = __CocoaSet.count.getter();
LABEL_14:
    if (v10 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v10;
    }

    if (v10 < 0)
    {
      v14 = v8;
    }

    if (v8)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    if (v10 < v11)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v1)
    {
      if (v4 < 0)
      {
        v2 = v4;
      }

      else
      {
        v2 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      if (__CocoaSet.count.getter() < v11)
      {
        goto LABEL_57;
      }

      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 < v11)
      {
        goto LABEL_57;
      }
    }

    if (v15 < v10)
    {
      goto LABEL_58;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_59:
    __break(1u);
LABEL_60:

    v12 = MEMORY[0x24C1FC540](0, v11);
  }

  if ((v4 & 0xC000000000000001) == 0 || v11 == v10)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_40;
  }

  if (v11 >= v10)
  {
    goto LABEL_62;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  swift_bridgeObjectRetain_n();
  v16 = v11;
  do
  {
    v17 = v16 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v16);
    v16 = v17;
  }

  while (v10 != v17);
LABEL_40:

  if (v1)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    v8 = v18;
    v11 = v19;
    v10 = v20;

    if (v10)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v2 = v4 & 0xFFFFFFFFFFFFFF8;
  v8 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v10 = (2 * v10) | 1;
  if ((v10 & 1) == 0)
  {
LABEL_44:
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v8, v11, v10, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    v4 = v21;
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

LABEL_46:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v10 >> 1, v11))
  {
    goto LABEL_63;
  }

  if (v23 != (v10 >> 1) - v11)
  {
LABEL_64:
    swift_unknownObjectRelease_n();
    goto LABEL_44;
  }

  v4 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  if (!v4)
  {
    swift_unknownObjectRelease();
    v4 = MEMORY[0x277D84F90];
  }

  swift_unknownObjectRelease();
  return v4;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for UIView, 0x277D75D18);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for FPTag, 0x277CC6468);
}

{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for DOCBrowserContainerController();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for FINode, 0x277D04700);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *a1;
    v5 = a1[1];
    for (i = (a2 + 40); ; i += 5)
    {
      v7 = *(i - 1) == v4 && *i == v5;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C1FC540](v9, a2);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    type metadata accessor for NSMutableAttributedString(0, a3, a4);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v9 = *i;
    if (*i <= 3)
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          if (a2 == 2)
          {
            v12 = *(i - 1);
            v13 = 2;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 2;
          goto LABEL_35;
        }

        if (v9 == 3)
        {
          if (a2 == 3)
          {
            v12 = *(i - 1);
            v13 = 3;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 3;
          goto LABEL_35;
        }
      }

      else
      {
        if (!v9)
        {
          if (!a2)
          {
            v12 = *(i - 1);
            v13 = 0;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 0;
          goto LABEL_35;
        }

        if (v9 == 1)
        {
          if (a2 == 1)
          {
            v12 = *(i - 1);
            v13 = 1;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 1;
          goto LABEL_35;
        }
      }
    }

    else if (v9 <= 5)
    {
      if (v9 == 4)
      {
        if (a2 == 4)
        {
          v12 = *(i - 1);
          v13 = 4;
          goto LABEL_53;
        }

        outlined copy of ColumnType(a1, a2);
        v10 = 4;
        goto LABEL_35;
      }

      if (v9 == 5)
      {
        if (a2 == 5)
        {
          v12 = *(i - 1);
          v13 = 5;
          goto LABEL_53;
        }

        outlined copy of ColumnType(a1, a2);
        v10 = 5;
        goto LABEL_35;
      }
    }

    else
    {
      switch(v9)
      {
        case 6:
          if (a2 == 6)
          {
            v12 = *(i - 1);
            v13 = 6;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 6;
          goto LABEL_35;
        case 7:
          if (a2 == 7)
          {
            v12 = *(i - 1);
            v13 = 7;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 7;
          goto LABEL_35;
        case 8:
          if (a2 == 8)
          {
            v12 = *(i - 1);
            v13 = 8;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v10 = 8;
          goto LABEL_35;
      }
    }

    if (a2 < 9)
    {
      outlined copy of ColumnType(a1, a2);
      outlined copy of ColumnType(v8, v9);
      v10 = v9;
LABEL_35:
      outlined consume of ColumnType(v8, v10);
      outlined consume of ColumnType(a1, a2);
      goto LABEL_36;
    }

    if (v8 == a1 && v9 == a2)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of ColumnType(a1, a2);
    outlined copy of ColumnType(v8, v9);
    outlined consume of ColumnType(v8, v9);
    outlined consume of ColumnType(a1, a2);
    if (v11)
    {
      return v6;
    }

LABEL_36:
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  outlined copy of ColumnType(a1, a2);
  outlined copy of ColumnType(a1, a2);
  v12 = a1;
  v13 = a2;
LABEL_53:
  outlined consume of ColumnType(v12, v13);
  outlined consume of ColumnType(a1, a2);
  return v6;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a2 + 32); ; i += 3)
  {
    v5 = i[1];
    v13 = *i;
    v14[0] = v5;
    *(v14 + 9) = *(i + 25);
    outlined init with copy of DOCSidebarItem(&v13, &v12);
    v6 = DOCSidebarItem.hashComparableValue.getter();
    v8 = v7;
    if (v6 == DOCSidebarItem.hashComparableValue.getter() && v8 == v9)
    {
      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of DOCSidebarItem(&v13);
    if (v10)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  outlined destroy of DOCSidebarItem(&v13);
  return v3;
}

{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for URL() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

double DOCHierarchyController._lastBrowsedStateByTab.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__lastBrowsedStateByTab;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t DOCHierarchyController.defaultTab.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCHierarchyController.defaultTab.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCHierarchyController.endUpdateExpectation(_:)(char *a1)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v49 = &v44 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v9, v10);
  v53 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v44 - v21;
  v23 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
  swift_beginAccess();
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v46 = *(updated - 8);
  v47 = updated;
  v25 = *(v46 + 48);
  v51 = v1;
  v26 = v25(v1 + v23, 1);
  v48 = v23;
  if (v26)
  {
    v27 = *(v6 + 56);
    v27(v22, 1, 1, v5);
    (*(v6 + 16))(v18, v52, v5);
  }

  else
  {
    v28 = *(v6 + 16);
    v28(v22, v51 + v23, v5);
    v27 = *(v6 + 56);
    v27(v22, 0, 1, v5);
    v28(v18, v52, v5);
  }

  v27(v18, 0, 1, v5);
  v29 = *(v9 + 48);
  v30 = v53;
  outlined init with copy of DOCGridLayout.Spec?(v22, v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v18, v30 + v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v31 = *(v6 + 48);
  if (v31(v30, 1, v5) != 1)
  {
    v52 = v22;
    v34 = v30;
    v33 = v30;
    v35 = v50;
    outlined init with copy of DOCGridLayout.Spec?(v34, v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v31(v33 + v29, 1, v5) != 1)
    {
      v37 = v33 + v29;
      v38 = v45;
      (*(v6 + 32))(v45, v37, v5);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v6 + 8);
      v40(v38, v5);
      outlined destroy of CharacterSet?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of CharacterSet?(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v40(v35, v5);
      result = outlined destroy of CharacterSet?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v39 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    outlined destroy of CharacterSet?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of CharacterSet?(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v6 + 8))(v35, v5);
    return outlined destroy of CharacterSet?(v33, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  }

  outlined destroy of CharacterSet?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v32 = v22;
  v33 = v53;
  outlined destroy of CharacterSet?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v31(v33 + v29, 1, v5) != 1)
  {
    return outlined destroy of CharacterSet?(v33, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  }

  outlined destroy of CharacterSet?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_11:
  v41 = v49;
  (*(v46 + 56))(v49, 1, 1, v47);
  v42 = v48;
  v43 = v51;
  swift_beginAccess();
  outlined assign with take of DOCHierarchyController.UpdateExpectation?(v41, v43 + v42);
  return swift_endAccess();
}

BOOL DOCHierarchyController.hasPendingLocationChange.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v5, v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v6 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  return v7;
}

double DOCHierarchyController.locationsBeingRestored.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationsBeingRestored;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v10, v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    goto LABEL_5;
  }

  outlined init with take of DOCHierarchyController.FetchingOperationToken(v4, v9, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  if (v9[*(v5 + 20)])
  {
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v9, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_5:
    v11 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_6;
    }

LABEL_19:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = *&v9[*(v5 + 28)];

  outlined destroy of DOCHierarchyController.FetchingOperationToken(v9, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  if (v11 >> 62)
  {
    goto LABEL_19;
  }

LABEL_6:
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_7:
  v12 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
  swift_beginAccess();
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  if (!(*(*(updated - 8) + 48))(v12, 1, updated))
  {
    v14 = *(v12 + *(updated + 20));

    v11 = v14;
  }

LABEL_9:
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_11:

    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v11 = *(v0 + v15);
  }

LABEL_12:
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_24:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x24C1FC540](0, v11);
    goto LABEL_17;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v11 + 32);
LABEL_17:
    v18 = v17;

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t DOCConcreteLocation.isRootOrTrash.getter()
{
  if ([v0 isRoot])
  {
    v1 = 1;
  }

  else
  {
    v2 = [v0 sourceIdentifier];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
    {
      v1 = 1;
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

void *DOCHierarchyController.effectiveRootLocationCandidate.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t key path setter for DOCHierarchyController.effectiveRootLocationCandidate : DOCHierarchyController(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  swift_getKeyPath();
  return _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
}

void DOCHierarchyController.effectiveRootLocationCandidate.setter(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
}

void (*DOCHierarchyController.effectiveRootLocationCandidate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCHierarchyController.effectiveRootLocationCandidate.modify;
}

void DOCHierarchyController.effectiveRootLocationCandidate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *v4;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v3[4] = v6;
  v8 = v3 + 4;
  swift_getKeyPath();
  if (a2)
  {
    v9 = v5;
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v10 = *(v6 + v7);
    *(v6 + v7) = v5;
    v11 = v9;

    *v8 = v6;
    swift_getKeyPath();
    _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  }

  else
  {
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v12 = *(v6 + v7);
    *(v6 + v7) = v5;
    v13 = v5;

    *v8 = v6;
    swift_getKeyPath();
    _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  }

  free(v3);
}

char *DOCHierarchyController.lastLocation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return *(v2 + 8 * v4 + 32);
      }

      __break(1u);
      return result;
    }

    v5 = MEMORY[0x24C1FC540](v4, v2);

    return v5;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x24C1FC540](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v4 = *(v2 + 32);
  }

LABEL_8:
  result = DOCHierarchyController.effectiveLocations.getter();
  if (result >> 62)
  {
    v9 = result;
    v10 = __CocoaSet.count.getter();
    result = v9;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_19:

    if (v4)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_22:
    v8 = 0;
    return v8 & 1;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1FC540](0);
    goto LABEL_13;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);
LABEL_13:
    v6 = v5;

    if (v4)
    {
      if (v6)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
        v7 = static NSObject.== infix(_:_:)();

        v8 = v7 ^ 1;
        return v8 & 1;
      }

      goto LABEL_20;
    }

    if (v6)
    {

LABEL_21:
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

void DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v47 - v12;
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&v3[v14], v9, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v15 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v9, 1, v15) == 1)
  {
    v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&v3[v18], v13, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v17(v9, 1, v15) != 1)
    {
      outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v9, v13, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v16 + 56))(v13, 0, 1, v15);
  }

  if (v17(v13, 1, v15) == 1)
  {
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  }

  else
  {
    v19 = v13[*(v15 + 24)];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v13, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    if (v19)
    {
      return;
    }
  }

  v20 = DOCHierarchyController.effectiveRootLocation.getter();
  if (v20)
  {
    v21 = v20;
    v22 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v23 = *&v3[v22];

    v24 = specialized Collection<>.firstIndex(of:)(v21, v23, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    v26 = v25;

    if (v26)
    {
LABEL_24:

      return;
    }

    v49 = a2;
    v27 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(0xD00000000000002BLL, 0x8000000249BCC5E0);
    aBlock[0] = v3;
    swift_getKeyPath();
    v28 = MEMORY[0x277CC9DF8];
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v29 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
    swift_beginAccess();
    v30 = *&v3[v29];
    *&v3[v29] = 0;

    aBlock[0] = v3;
    swift_getKeyPath();
    v31 = aBlock;
    _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
    if (v24 < 0)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v31 = *&v3[v22];
      v28 = v31 >> 62;
      if (!(v31 >> 62))
      {
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24)
        {
          goto LABEL_13;
        }

        goto LABEL_29;
      }
    }

    if (__CocoaSet.count.getter() < 0)
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (__CocoaSet.count.getter() >= v24)
    {
LABEL_13:
      if ((v31 & 0xC000000000000001) != 0 && v24)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);

        v32 = 0;
        do
        {
          v33 = v32 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v32);
          v32 = v33;
        }

        while (v24 != v33);
        if (!v28)
        {
          goto LABEL_18;
        }
      }

      else
      {

        if (!v28)
        {
LABEL_18:
          v34 = 0;
          v35 = v31 & 0xFFFFFFFFFFFFFF8;
          v36 = v35 + 32;
          v37 = (2 * v24) | 1;
          goto LABEL_21;
        }
      }

      v35 = _CocoaArrayWrapper.subscript.getter();
      v36 = v38;
      v34 = v39;
      v37 = v40;
LABEL_21:
      swift_endAccess();
      if (v34 != v37 >> 1)
      {
        if (v34 < (v37 >> 1))
        {
          v41 = *(v36 + 8 * v34);
          v42 = swift_allocObject();
          v42[2] = v3;
          v42[3] = v27;
          v42[4] = a1;
          v42[5] = v49;
          v42[6] = v35;
          v42[7] = v36;
          v42[8] = v34;
          v42[9] = v37;
          v48 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
          v43 = swift_allocObject();
          v43[2] = partial apply for closure #1 in DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:);
          v43[3] = v42;
          v43[4] = v41;
          aBlock[4] = partial apply for closure #1 in DOCHierarchyController.getSource(for:completion:);
          aBlock[5] = v43;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_11;
          v44 = _Block_copy(aBlock);
          v45 = v41;
          v46 = v3;

          swift_unknownObjectRetain();

          [v48 retrieveAllSourcesCompletionBlock_];
          _Block_release(v44);

          swift_unknownObjectRelease();

          goto LABEL_24;
        }

        goto LABEL_31;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

uint64_t DOCHierarchyController.isFetchingLocations.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v9, v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v4, 1, v10) == 1)
  {
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v0 + v13, v8, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v12(v4, 1, v10) != 1)
    {
      outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v4, v8, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  if (v12(v8, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    return 0;
  }

  else
  {
    v14 = v8[*(v10 + 24)];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v8, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  }

  return v14;
}