void *specialized ContentResponderPathDataRule.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = *AGGraphGetValue();
  }

  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = *(Value + 8);
  if (v7 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v15 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v15)
    {
      goto LABEL_5;
    }

    v12 = 0.0;
    v13 = 0.0;
    v14 = 6;
    goto LABEL_23;
  }

LABEL_5:
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v9;
  v22.size.height = v10;
  IsNull = CGRectIsNull(v22);
  if (IsNull)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v9;
  }

  if (IsNull)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10;
  }

  if (IsNull)
  {
    v14 = 6;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = result;
  v19 = result[2];
  v18 = result[3];
  if (v19 >= v18 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, result);
    v17 = result;
  }

  if (v7 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v7;
  }

  v17[2] = v19 + 1;
  v21 = &v17[7 * v19];
  v21[4] = v20;
  v21[5] = 0;
  v21[6] = 0;
  *(v21 + 7) = v12;
  *(v21 + 8) = v13;
  *(v21 + 72) = v14;
  *(v21 + 76) = a1;
  *a5 = a1;
  *(a5 + 4) = 0;
  *(a5 + 8) = HIDWORD(a1);
  *(a5 + 12) = 0;
  *(a5 + 16) = v17;
  return result;
}

void *specialized ContentResponderPathDataRule.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>(0);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  if (v6 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v14 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v14)
    {
      goto LABEL_5;
    }

    v11 = 0.0;
    v12 = 0.0;
    v13 = 6;
    goto LABEL_23;
  }

LABEL_5:
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v8;
  v21.size.height = v9;
  IsNull = CGRectIsNull(v21);
  if (IsNull)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  if (IsNull)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v9;
  }

  if (IsNull)
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = result;
  v18 = result[2];
  v17 = result[3];
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, result);
    v16 = result;
  }

  if (v6 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v6;
  }

  v16[2] = v18 + 1;
  v20 = &v16[7 * v18];
  v20[4] = v19;
  v20[5] = 0;
  v20[6] = 0;
  *(v20 + 7) = v11;
  *(v20 + 8) = v12;
  *(v20 + 72) = v13;
  *(v20 + 76) = a1;
  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = HIDWORD(a1);
  *(a4 + 12) = 0;
  *(a4 + 16) = v16;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>(0);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v9 = *Value;
  v8 = *(Value + 8);
  if (v6 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_15;
      }
    }

    else if (static Semantics.forced >= v13)
    {
      goto LABEL_15;
    }
  }

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v9;
  v20.size.height = v8;
  if (!CGRectIsNull(v20))
  {
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = v9;
    v21.size.height = v8;
    v10 = v9;
    v11 = v8;
    v12 = !CGRectIsInfinite(v21);
    goto LABEL_16;
  }

LABEL_15:
  v10 = 0.0;
  v11 = 0.0;
  v12 = 6;
LABEL_16:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = result;
  v17 = result[2];
  v16 = result[3];
  if (v17 >= v16 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, result);
    v15 = result;
  }

  if (v6 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v6;
  }

  v15[2] = v17 + 1;
  v19 = &v15[7 * v17];
  v19[4] = v18;
  v19[5] = 0;
  v19[6] = 0;
  *(v19 + 7) = v10;
  *(v19 + 8) = v11;
  *(v19 + 72) = v12;
  *(v19 + 76) = a1;
  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = HIDWORD(a1);
  *(a4 + 12) = 0;
  *(a4 + 16) = v15;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);

  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  if (v6 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v14 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v14)
    {
      goto LABEL_5;
    }

    v11 = 0.0;
    v12 = 0.0;
    v13 = 6;
    goto LABEL_23;
  }

LABEL_5:
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v8;
  v21.size.height = v9;
  IsNull = CGRectIsNull(v21);

  if (IsNull)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  if (IsNull)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v9;
  }

  if (IsNull)
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = result;
  v18 = result[2];
  v17 = result[3];
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, result);
    v16 = result;
  }

  if (v6 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v6;
  }

  v16[2] = v18 + 1;
  v20 = &v16[7 * v18];
  v20[4] = v19;
  v20[5] = 0;
  v20[6] = 0;
  *(v20 + 7) = v11;
  *(v20 + 8) = v12;
  *(v20 + 72) = v13;
  *(v20 + 76) = a1;
  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = HIDWORD(a1);
  *(a4 + 12) = 0;
  *(a4 + 16) = v16;
  return result;
}

__n128 specialized ContentResponderPathDataRule.value.getter@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = *AGGraphGetValue();
  }

  (a4)(0, a2);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v10 = *Value;
  v11 = Value[1];
  if (v8 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v13 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    Capsule.path(in:)(v22, 0.0, 0.0, v10, v11);
    v20 = v22[1];
    v21 = v22[0];
    v12 = v23;
    goto LABEL_15;
  }

  if (static Semantics.forced < v13)
  {
    goto LABEL_5;
  }

LABEL_14:
  v20 = 0u;
  v21 = 0u;
  v12 = 6;
LABEL_15:
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  if (v8 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v8;
  }

  v14[2] = v16 + 1;
  v18 = &v14[7 * v16];
  v18[4] = v17;
  result = v21;
  *(v18 + 7) = v20;
  *(v18 + 5) = v21;
  *(v18 + 72) = v12;
  *(v18 + 76) = a1;
  *a5 = a1;
  *(a5 + 4) = 0;
  *(a5 + 8) = HIDWORD(a1);
  *(a5 + 12) = 0;
  *(a5 + 16) = v14;
  return result;
}

__n128 specialized ContentResponderPathDataRule.value.getter@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(_OWORD *__return_ptr, double, double, double, double)@<X4>, uint64_t a6@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = *AGGraphGetValue();
  }

  (a4)(0, a2);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v12 = *Value;
  v13 = Value[1];
  if (v10 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    a5(v24, 0.0, 0.0, v12, v13);
    v22 = v24[1];
    v23 = v24[0];
    v14 = v25;
    goto LABEL_15;
  }

  if (static Semantics.forced < v15)
  {
    goto LABEL_5;
  }

LABEL_14:
  v22 = 0u;
  v23 = 0u;
  v14 = 6;
LABEL_15:
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
  }

  if (v10 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v10;
  }

  v16[2] = v18 + 1;
  v20 = &v16[7 * v18];
  v20[4] = v19;
  result = v23;
  *(v20 + 7) = v22;
  *(v20 + 5) = v23;
  *(v20 + 72) = v14;
  *(v20 + 76) = a1;
  *a6 = a1;
  *(a6 + 4) = 0;
  *(a6 + 8) = HIDWORD(a1);
  *(a6 + 12) = 0;
  *(a6 + 16) = v16;
  return result;
}

void *specialized ContentResponderPathDataRule.value.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = *AGGraphGetValue();
  }

  (a4)(0, a2);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);

  Value = AGGraphGetValue();
  v10 = *Value;
  v11 = *(Value + 8);
  if (v8 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v17 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v17)
    {
      goto LABEL_5;
    }

    v14 = 0.0;
    v15 = 0.0;
    v16 = 6;
    goto LABEL_23;
  }

LABEL_5:
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v10;
  v24.size.height = v11;
  IsNull = CGRectIsNull(v24);

  v13 = !IsNull;
  if (IsNull)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  if (v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0.0;
  }

  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = 6;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v19 = result;
  v21 = result[2];
  v20 = result[3];
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, result);
    v19 = result;
  }

  if (v8 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v8;
  }

  v19[2] = v21 + 1;
  v23 = &v19[7 * v21];
  v23[4] = v22;
  v23[5] = 0;
  v23[6] = 0;
  *(v23 + 7) = v14;
  *(v23 + 8) = v15;
  *(v23 + 72) = v16;
  *(v23 + 76) = a1;
  *a5 = a1;
  *(a5 + 4) = 0;
  *(a5 + 8) = HIDWORD(a1);
  *(a5 + 12) = 0;
  *(a5 + 16) = v19;
  return result;
}

uint64_t _ViewListInputs.base.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of _GraphInputs(v6, &v5);
}

__n128 _ViewListInputs.base.setter(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  outlined destroy of _GraphInputs(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  result = *(a1 + 32);
  v1[2] = result;
  return result;
}

uint64_t (*_ViewListInputs.traits.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 64);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return _ViewListInputs.traits.modify;
}

_BYTE *_ViewListInputs.traits.modify(_BYTE *result)
{
  v1 = result + 8;
  if (result[12])
  {
    v1 = result + 16;
  }

  *(*result + 64) = *v1;
  return result;
}

double _ViewListInputs.traitKeys.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;

  return result;
}

void _ViewListInputs.traitKeys.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
}

uint64_t _ViewListInputs.containerContext.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2;
  return result;
}

double _ViewListInputs.debugReplaceableViewCount.setter(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t (*_ViewListInputs.debugReplaceableViewCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return _ViewListInputs.debugReplaceableViewCount.modify;
}

double _ViewListInputs.debugReplaceableViewCount.modify(void *a1)
{
  swift_weakAssign();

  return result;
}

__n128 _ViewListInputs.contentOffset.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u8[0];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 _ViewListInputs.contentOffset.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u8[0] = v2;
  return result;
}

__n128 _ViewListInputs.init(_:implicitID:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  *(a4 + 64) = *MEMORY[0x1E698D3F8];
  *(a4 + 72) = MEMORY[0x1E69E7CD0];
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  swift_weakInit();
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = -1;
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = v7;
  return result;
}

__n128 _ViewListInputs.init(_:implicitID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = *MEMORY[0x1E698D3F8];
  *(a3 + 72) = MEMORY[0x1E69E7CD0];
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  swift_weakInit();
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = -1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0;
  return result;
}

void (*_ViewListInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v4;
  *v10 = a2;
  v12 = *(a4 + 8);
  v10[3] = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  _GraphInputs.subscript.getter(a2, a3, v12);
  return _ViewInputs.subscript.modify;
}

uint64_t _ViewListInputs.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  specialized _ViewInputs.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*_ViewListInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a2;
  v12[1] = a3;
  v14 = *(a4 + 8);
  v12[4] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v13[6] = v16;
  v17 = *(v16 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v13[8] = v18;
  _GraphInputs.subscript.getter(a2, a3, v14);
  return _ViewInputs.subscript.modify;
}

uint64_t _ViewListInputs.needsGeometry.setter(uint64_t result)
{
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t (*_ViewListInputs.needsGeometry.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x20) != 0;
  return _ViewInputs.needsGeometry.modify;
}

void (*_ViewListCountInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v4;
  *v10 = a2;
  v12 = *(a4 + 8);
  v10[3] = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  PropertyList.subscript.getter(a2, *v4, a3, v12);
  return _ViewListCountInputs.subscript.modify;
}

void _ViewListCountInputs.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized PropertyList.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized PropertyList.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _ViewListOutputs.staticCount.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

__n128 _ViewListOutputs.init(_:nextImplicitID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 25);
  *(a3 + 25) = result;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

void specialized ViewList.debugDescription.getter()
{
  v5[0] = 0x696C2D7765697628;
  v5[1] = 0xEA00000000007473;
  v6 = xmmword_18DDAB890;
  v7 = 0xE200000000000000;
  v1 = v0[3];
  v2 = v0[4];
  v3 = __swift_project_boxed_opaque_existential_1(v0, v1);
  project #1 <A>(_:) in BaseViewList.print(into:)(v3, v5, v0, v1, v2);
  if (!v6)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v6, 1))
  {
    *&v6 = v6 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v4);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

{
  into.output._countAndFlagsBits = 0x696C2D7765697628;
  into.output._object = 0xEA00000000007473;
  *&into.depth = xmmword_18DDAB890;
  into.indent._object = 0xE200000000000000;
  ViewListSublistSlice.print(into:)(&into);
  if (!into.depth)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(into.depth, 1))
  {
    --into.depth;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v0);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

uint64_t specialized ViewList.debugDescription.getter(uint64_t (*a1)(void *))
{
  v4[0] = 0x696C2D7765697628;
  v4[1] = 0xEA00000000007473;
  v5 = xmmword_18DDAB890;
  v6 = 0xE200000000000000;
  result = a1(v4);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v5, 1))
  {
    *&v5 = v5 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v2);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v3 = v4[0];

    return v3;
  }

  __break(1u);
  return result;
}

void specialized ViewList.debugDescription.getter(uint64_t a1)
{
  v3 = a1;
  v2.output._countAndFlagsBits = 0x696C2D7765697628;
  v2.output._object = 0xEA00000000007473;
  *&v2.depth = xmmword_18DDAB890;
  v2.indent._object = 0xE200000000000000;
  _ViewList_Group.print(into:)(&v2);
  if (!v2.depth)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v2.depth, 1))
  {
    --v2.depth;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v1);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

void specialized ViewList.debugDescription.getter(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  into.output._countAndFlagsBits = 0x696C2D7765697628;
  into.output._object = 0xEA00000000007473;
  *&into.depth = xmmword_18DDAB890;
  into.indent._object = 0xE200000000000000;
  _ViewList_Section.print(into:)(&into);
  if (!into.depth)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(into.depth, 1))
  {
    --into.depth;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v4);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

uint64_t ViewList.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v5[0] = 0x696C2D7765697628;
  v5[1] = 0xEA00000000007473;
  v6 = xmmword_18DDAB890;
  v7 = 0xE200000000000000;
  result = (*(a2 + 88))(v5, a1);
  if (!v6)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v6, 1))
  {
    *&v6 = v6 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v3);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v4 = v5[0];

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t (*_ViewList_IteratorStyle.applyGranularity.modify(uint64_t a1))(uint64_t result)
{
  v2 = *v1;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2 & 1;
  return _ViewList_IteratorStyle.applyGranularity.modify;
}

uint64_t (*_ViewList_IteratorStyle.granularity.modify(unint64_t *a1))(uint64_t result)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2 >> 1;
  return _ViewList_IteratorStyle.granularity.modify;
}

Swift::Int __swiftcall _ViewList_IteratorStyle.applyGranularity(to:)(Swift::Int to)
{
  if (*v1)
  {
    v2 = *v1 >> 1;
    v3 = (to * v2) >> 64;
    to *= v2;
    if (v3 != to >> 63)
    {
      __break(1u);
    }
  }

  return to;
}

Swift::Int _ViewList_Edit.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

double _ViewList_Sublist.id.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

double _ViewList_Sublist.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *(v1 + 16) = *a1;
  *(v1 + 24) = v3;
  return result;
}

double _ViewList_Sublist.traits.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 80);

  return result;
}

void _ViewList_Sublist.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 80) = v2;
}

uint64_t _ViewList_Sublist.list.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 92) = BYTE4(result) & 1;
  return result;
}

uint64_t _ViewList_Sublist.init(start:count:id:elements:traits:list:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a3[1];
  v10 = *a5;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = *a3;
  *(a7 + 24) = v9;
  *(a7 + 72) = MEMORY[0x1E69E7CC0];
  result = outlined init with take of AnyTrackedValue(a4, a7 + 32);
  *(a7 + 80) = v10;
  *(a7 + 88) = a6;
  *(a7 + 92) = BYTE4(a6) & 1;
  return result;
}

double _ViewList_ID.elementIDs(count:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
  a2[2] = a1;

  return result;
}

uint64_t _ViewList_SublistTransform.pop(flags:)(char *a1)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v2 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v3[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v3[5 * v5 - 1]);
    v3[2] = v6;
    v7 = v1[1] + (v2 & 1);
    *v1 = v3;
    v1[1] = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t _ViewList_SublistTransform.apply(sublist:)(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  result = specialized Array.reserveCapacity(_:)(v2[1], a2);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4 + 40 * v6 - 8;
    while (v6 <= *(v4 + 16))
    {
      --v6;
      outlined init with copy of AnyTrackedValue(v7, v10);
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v9 + 16))(a1, v8, v9);
      result = __swift_destroy_boxed_opaque_existential_1(v10);
      v7 -= 40;
      if (!v6)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _ViewList_SublistTransform.bindID(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 40 * v3 - 8;
    while (v3 <= *(v2 + 16))
    {
      --v3;
      outlined init with copy of AnyTrackedValue(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 24))(v4, v6, v7);
      result = __swift_destroy_boxed_opaque_existential_1(v8);
      v5 -= 40;
      if (!v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall _ViewList_SublistTransform.wrapSubgraphs(into:)(SwiftUI::_ViewList_SublistSubgraphStorage *into)
{
  v4 = *v1;
  specialized Array.reserveCapacity(_:)(v1[1], v2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40 * v5 - 8;
    while (v5 <= *(v4 + 16))
    {
      --v5;
      outlined init with copy of AnyTrackedValue(v6, v9);
      v7 = v10;
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v8 + 32))(into, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v6 -= 40;
      if (!v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

BOOL _ViewList_TemporarySublistTransform.isEmpty.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = *(*v1 + 16);
  }

  return v1 == 0;
}

uint64_t specialized _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, void *a4, char a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = *a4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      *a4 = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
      *a4 = v8;
    }

    v23 = &unk_1F0084BE0;
    v24 = &protocol witness table for ModifiedViewList.Transform;
    *&v22 = a1;
    v8[2] = v11 + 1;
    outlined init with take of AnyTrackedValue(&v22, &v8[5 * v11 + 4]);
    *&v22 = a4;
    BYTE8(v22) = 1;
    a2(&v19, &v22);
    v12 = *a4;
    if (*(*a4 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v12[2];
        if (v13)
        {
LABEL_9:
          v14 = v13 - 1;
          __swift_destroy_boxed_opaque_existential_1(&v12[5 * v13 - 1]);
          v12[2] = v14;
          *a4 = v12;
          return v19;
        }

LABEL_16:
        __break(1u);
      }
    }

    else
    {
      __break(1u);
    }

    v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    v13 = v12[2];
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v20 = &unk_1F0084BE0;
  v21 = &protocol witness table for ModifiedViewList.Transform;
  *&v19 = a1;
  if (a4)
  {
    v16 = a4[6];
    v17 = a4[7] + 1;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  *&v22 = a4;
  outlined init with take of AnyTrackedValue(&v19, &v22 + 8);
  v25 = v16;
  v26 = v17;
  *&v19 = &v22;
  BYTE8(v19) = 0;

  a2(&v18, &v19);
  outlined destroy of _AnyAnimatableData(&v22);
  return v18;
}

uint64_t specialized _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, int64x2_t *a4, char a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = a4->i64[0];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4->i64[0] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      a4->i64[0] = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
      a4->i64[0] = v8;
    }

    v24 = &unk_1F0084A60;
    v25 = &protocol witness table for SubgraphList.Transform;
    *&v23 = a1;
    v8[2] = v11 + 1;
    outlined init with take of AnyTrackedValue(&v23, &v8[5 * v11 + 4]);
    ++a4->i64[1];
    *&v23 = a4;
    BYTE8(v23) = 1;
    a2(&v20, &v23);
    v12 = a4->i64[0];
    if (*(a4->i64[0] + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v12[2];
        if (v13)
        {
LABEL_9:
          v14 = v13 - 1;
          __swift_destroy_boxed_opaque_existential_1(&v12[5 * v13 - 1]);
          v12[2] = v14;
          v15 = a4->i64[1] + 1;
          a4->i64[0] = v12;
          a4->i64[1] = v15;
          return v20;
        }

LABEL_16:
        __break(1u);
      }
    }

    else
    {
      __break(1u);
    }

    v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    v13 = v12[2];
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v21 = &unk_1F0084A60;
  v22 = &protocol witness table for SubgraphList.Transform;
  *&v20 = a1;
  if (a4)
  {
    v17 = vaddq_s64(a4[3], vdupq_n_s64(1uLL));
  }

  else
  {
    v17 = xmmword_18DD85500;
  }

  v18 = v17;
  *&v23 = a4;
  outlined init with take of AnyTrackedValue(&v20, &v23 + 8);
  v26 = v18;
  *&v20 = &v23;
  BYTE8(v20) = 0;

  a2(&v19, &v20);
  outlined destroy of _AnyAnimatableData(&v23);
  return v19;
}

Swift::Void __swiftcall _ViewList_TemporarySublistTransform.wrapSubgraphs(into:)(SwiftUI::_ViewList_SublistSubgraphStorage *into)
{
  v4 = *v1;
  if (*(v1 + 8) == 1)
  {
    v6 = *v4;
    v5 = v4[1];

    specialized Array.reserveCapacity(_:)(v5, v7);
    v8 = v6[2];
    if (!v8)
    {
LABEL_6:

      return;
    }

    v9 = &v6[5 * v8 - 1];
    while (v8 <= v6[2])
    {
      --v8;
      outlined init with copy of AnyTrackedValue(v9, v14);
      v10 = v15;
      v11 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v11 + 32))(into, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  if (!v4)
  {
LABEL_12:
    specialized Array.reserveCapacity(_:)(0, v2);
    return;
  }

  specialized Array.reserveCapacity(_:)(v4[6], v2);
  do
  {
    outlined init with copy of AnyTrackedValue((v4 + 1), v14);
    v12 = v15;
    v13 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v13 + 32))(into, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v4 = *v4;
  }

  while (v4);
}

void _ViewList_TemporarySublistTransform.copy()(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = v3[1];
    *a1 = *v3;
    a1[1] = v4;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 0;
    if (v3)
    {
      outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v3, v11);
      v5 = v14;
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0, MEMORY[0x1E69E7CC0]);
      outlined destroy of _AnyAnimatableData(v11);
      v17 = v5;
      do
      {
        outlined init with copy of AnyTrackedValue((v3 + 1), v11);
        v10 = 0;
        v6 = v12;
        v7 = v13;
        v8 = __swift_project_boxed_opaque_existential_1(v11, v12);
        specialized _ViewList_SublistTransform.push(_:flags:)(v8, &v10, &v16, v6, v7);
        __swift_destroy_boxed_opaque_existential_1(v11);
        v3 = *v3;
      }

      while (v3);
    }

    specialized MutableCollection<>.reverse()();
    v9 = v17;
    *a1 = v16;
    a1[1] = v9;
  }
}

Swift::Int __swiftcall _ViewList_Node.count(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = *style.value;
  outlined init with copy of _ViewList_Node(v1, &v19);
  if (v24 <= 1u)
  {
    if (!v24)
    {
      outlined init with take of AnyTrackedValue(&v19, &v13);
      v3 = *(&v14 + 1);
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      v18 = v2;
      v5 = (*(v4 + 16))(&v18, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(&v13);
      return v5;
    }

    v15 = v21;
    v16 = v22;
    v17[0] = *v23;
    *(v17 + 13) = *&v23[13];
    v13 = v19;
    v14 = v20;
    v5 = *(&v19 + 1);
    outlined destroy of _ViewList_Sublist(&v13);
    if ((v2 & 1) == 0)
    {
      return v5;
    }

    v12 = (v5 * (v2 >> 1)) >> 64;
    v5 *= v2 >> 1;
    if (v12 == v5 >> 63)
    {
      return v5;
    }

    __break(1u);
LABEL_13:
    LODWORD(v13) = v19;
    *(&v13 + 1) = *(&v19 + 1);
    *&v14 = v20;
    BYTE8(v14) = BYTE8(v20);
    v18 = v2;
    v5 = _ViewList_Section.count(style:)(&v18);

LABEL_14:

    return v5;
  }

  if (v24 != 2)
  {
    goto LABEL_13;
  }

  v6 = *(v19 + 16);
  if (!v6)
  {

    return 0;
  }

  v5 = 0;
  v7 = v19 + 32;
  while (1)
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v7, &v13, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v8 = *(&v14 + 1);
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    v18 = v2;
    result = (*(v9 + 16))(&v18, v8, v9);
    v11 = __OFADD__(v5, result);
    v5 += result;
    if (v11)
    {
      break;
    }

    outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v13, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v7 += 48;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall _ViewList_Section.estimatedCount(style:)(Swift::Int style)
{
  v2 = *style;
  v3 = *(v1 + 8);
  if (*(v1 + 24) == 1)
  {
    if (*(v3 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v20, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v20, v21);
      v4 = v22;
      v5 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      *&v20[0] = v2;
      v6 = (*(v5 + 24))(v20, v4, v5);
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v6;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (*(v3 + 16) < 2uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 80, v20, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v20, v21);
  v7 = v22;
  v8 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  *&v20[0] = v2;
  v9 = (*(v8 + 24))(v20, v7, v8);
  style = __swift_destroy_boxed_opaque_existential_1(v21);
  v10 = v2 >> 1;
  if (v2 >> 1 == 1)
  {
    goto LABEL_29;
  }

  if (v2 < 2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v9 % v10;
  if (!(v9 % v10))
  {
    goto LABEL_29;
  }

  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = __OFADD__(v9, v13);
  v9 += v13;
  if (!v12)
  {
LABEL_29:
    if (*(v3 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v20, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v20, v21);
      v14 = v22;
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      if (v10 == 1)
      {
        v16 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v16 = (v2 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      *&v20[0] = v16;
      style = (*(v15 + 24))(v20, v14, v15);
      v17 = v9 + style;
      if (!__OFADD__(v9, style))
      {
        style = __swift_destroy_boxed_opaque_existential_1(v21);
        if (*(v3 + 16) >= 3uLL)
        {
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 128, v20, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
          outlined init with take of AnyTrackedValue(v20, v21);
          v18 = v22;
          v19 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          *&v20[0] = v16;
          style = (*(v19 + 24))(v20, v18, v19);
          v6 = v17 + style;
          if (!__OFADD__(v17, style))
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return style;
}

uint64_t _ViewList_Group.applyNodes(from:style:transform:to:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(*v5 + 16);
  v17 = *v5;
  v18 = result;
  v16 = *v5 + 32;
  while (1)
  {
    if (v6 == v10)
    {
      v6 = v10;
      memset(v24, 0, 44);
      goto LABEL_7;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *(v17 + 16))
    {
      goto LABEL_11;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v16 + 48 * v6++, v24, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
LABEL_7:
    *&v26[12] = *(&v24[1] + 12);
    v25 = v24[0];
    *v26 = v24[1];
    v11 = *(&v24[1] + 1);
    if (*(&v24[1] + 1))
    {
      v12 = *&v26[24];
      outlined init with take of AnyTrackedValue(&v25, v24);
      v13 = *(&v24[1] + 1);
      v14 = *&v24[2];
      __swift_project_boxed_opaque_existential_1(v24, *(&v24[1] + 1));
      v23 = v7;
      v21 = v8;
      v22 = v9;
      v15 = (*(v14 + 64))(v18, &v23, v12, &v21, a4, a5, v13, v14);
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      if (v15)
      {
        continue;
      }
    }

    return v11 == 0;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t _ViewList_Section.header.getter(uint64_t result)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16))
  {
    v3 = result;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v2 + 32, v5, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v4 = v6;
    outlined init with take of AnyTrackedValue(v5, v3);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized _ViewList_Node.applyIDs(from:style:transform:to:)(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33 = a5;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  outlined init with copy of _ViewList_Node(a4, &v44);
  if (v49 > 1u)
  {
    if (v49 == 2)
    {
      v14 = 0;
      v15 = *(v44.n128_u64[0] + 16);
      v30 = v44.n128_u64[0];
      v29 = v44.n128_u64[0] + 32;
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_6:
      v14 = v15;
      v42 = 0u;
      memset(v43, 0, 28);
      while (1)
      {
        *&v35[12] = *(v43 + 12);
        v34 = v42;
        *v35 = v43[0];
        if (!*(&v43[0] + 1))
        {
          break;
        }

        v16 = *&v35[24];
        outlined init with take of AnyTrackedValue(&v34, &v42);
        v17 = *(&v43[0] + 1);
        v18 = *&v43[1];
        __swift_project_boxed_opaque_existential_1(&v42, *(&v43[0] + 1));
        v41 = v7;
        v39 = v8;
        v40 = v9;
        v38 = 0;
        LOBYTE(v17) = ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v41, v16, &v39, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.id(at:style:), v32, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v42);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (v14 == v15)
        {
          goto LABEL_6;
        }

LABEL_7:
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v14 >= *(v30 + 16))
        {
          goto LABEL_41;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 48 * v14++, &v42, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      }

      return;
    }

    v22 = 0x7FFFFFFFFFFFFFFFLL;
    if (BYTE8(v45))
    {
      v22 = 1;
    }

    if (*(v44.n128_u64[1] + 16) >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v44.n128_u64[1] + 16);
    }

    v31 = v44.n128_u64[1] + 32;

    v24 = 0;
    v25 = v23 == 0;
    if (v23)
    {
      goto LABEL_27;
    }

LABEL_26:
    v24 = v23;
    v42 = 0u;
    memset(v43, 0, 28);
    while (1)
    {
      *&v35[12] = *(v43 + 12);
      v34 = v42;
      *v35 = v43[0];
      if (!*(&v43[0] + 1))
      {

        swift_unknownObjectRelease();
        return;
      }

      v26 = *&v35[24];
      outlined init with take of AnyTrackedValue(&v34, &v42);
      v27 = *(&v43[0] + 1);
      v28 = *&v43[1];
      __swift_project_boxed_opaque_existential_1(&v42, *(&v43[0] + 1));
      v41 = v7;
      v39 = v8;
      v40 = v9;
      v38 = 0;
      if ((ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v41, v26, &v39, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.id(at:style:), v32, v27, v28) & 1) == 0)
      {

        swift_unknownObjectRelease();
        v13 = &v42;
        goto LABEL_37;
      }

      __swift_destroy_boxed_opaque_existential_1(&v42);
      v25 = v24 >= v23;
      if (v24 == v23)
      {
        goto LABEL_26;
      }

LABEL_27:
      if (v25)
      {
        break;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v31 + 48 * v24++, &v42, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v49)
  {
    *&v35[16] = v46;
    v36 = v47;
    v37[0] = *v48;
    *(v37 + 13) = *&v48[13];
    v34 = v44;
    *v35 = v45;
    v19 = v44.n128_i64[1];
    if ((v7 & 1) == 0 || (v19 = v34.n128_u64[1] * (v7 >> 1), (v34.n128_i64[1] * (v7 >> 1)) >> 64 == v19 >> 63))
    {
      v20 = *a1 - v19;
      if (*a1 >= v19)
      {
        outlined destroy of _ViewList_Sublist(&v34);
        *a1 = v20;
        return;
      }

      *&v42 = v8;
      BYTE8(v42) = v9;
      _ViewList_TemporarySublistTransform.apply(sublist:)(&v34, v44);
      v21 = *&v35[8];
      if (!v34.n128_u64[1])
      {

        outlined destroy of _ViewList_Sublist(&v34);

        *a1 = 0;
        return;
      }

      if (v34.n128_i64[1] >= 1)
      {
        *a5 = *&v35[4] << 32;
        a5[1] = v21;
        swift_bridgeObjectRetain_n();

        outlined destroy of _ViewList_Sublist(&v34);

        *a1 = 0;
        return;
      }

      goto LABEL_43;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v10 = DWORD2(v46);
  v11 = BYTE12(v46);
  outlined init with take of AnyTrackedValue(&v44, &v34);
  v12 = *&v35[8];
  __swift_project_boxed_opaque_existential_1(&v34, *&v35[8]);
  v39 = v7;
  *&v42 = v8;
  BYTE8(v42) = v9;
  LOBYTE(v41) = v11;
  ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v39, v10 | (v11 << 32), &v42, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.id(at:style:), v32, v12, *(&v12 + 1));
  v13 = &v34;
LABEL_37:
  __swift_destroy_boxed_opaque_existential_1(v13);
}

void _ViewList_Node.applyIDs(from:style:transform:to:)(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  outlined init with copy of _ViewList_Node(v5, &v50);
  if (v55 > 1u)
  {
    if (v55 == 2)
    {
      v14 = 0;
      v15 = *(v50.n128_u64[0] + 16);
      v36 = v50.n128_u64[0];
      v35 = v50.n128_u64[0] + 32;
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_6:
      v14 = v15;
      v48 = 0u;
      memset(v49, 0, 28);
      while (1)
      {
        *&v41[12] = *(v49 + 12);
        v40 = v48;
        *v41 = v49[0];
        if (!*(&v49[0] + 1))
        {
          break;
        }

        v16 = *&v41[24];
        outlined init with take of AnyTrackedValue(&v40, &v48);
        v17 = *(&v49[0] + 1);
        v18 = *&v49[1];
        __swift_project_boxed_opaque_existential_1(&v48, *(&v49[0] + 1));
        v47 = v7;
        v45 = v8;
        v46 = v9;
        v44 = 0;
        LOBYTE(v17) = ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v47, v16, &v45, a4, a5, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v48);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (v14 == v15)
        {
          goto LABEL_6;
        }

LABEL_7:
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v14 >= *(v36 + 16))
        {
          goto LABEL_44;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v35 + 48 * v14++, &v48, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      }

      return;
    }

    v28 = 0x7FFFFFFFFFFFFFFFLL;
    if (BYTE8(v51))
    {
      v28 = 1;
    }

    if (*(v50.n128_u64[1] + 16) >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v50.n128_u64[1] + 16);
    }

    v37 = v50.n128_u64[1] + 32;

    v30 = 0;
    v31 = v29 == 0;
    if (v29)
    {
      goto LABEL_30;
    }

LABEL_29:
    v30 = v29;
    v48 = 0u;
    memset(v49, 0, 28);
    while (1)
    {
      *&v41[12] = *(v49 + 12);
      v40 = v48;
      *v41 = v49[0];
      if (!*(&v49[0] + 1))
      {

        swift_unknownObjectRelease();
        return;
      }

      v32 = *&v41[24];
      outlined init with take of AnyTrackedValue(&v40, &v48);
      v33 = *(&v49[0] + 1);
      v34 = *&v49[1];
      __swift_project_boxed_opaque_existential_1(&v48, *(&v49[0] + 1));
      v47 = v7;
      v45 = v8;
      v46 = v9;
      v44 = 0;
      if ((ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v47, v32, &v45, a4, a5, v33, v34) & 1) == 0)
      {

        swift_unknownObjectRelease();
        v13 = &v48;
        goto LABEL_40;
      }

      __swift_destroy_boxed_opaque_existential_1(&v48);
      v31 = v30 >= v29;
      if (v30 == v29)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (v31)
      {
        break;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v37 + 48 * v30++, &v48, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  if (v55)
  {
    *&v41[16] = v52;
    v42 = v53;
    v43[0] = *v54;
    *(v43 + 13) = *&v54[13];
    v40 = v50;
    *v41 = v51;
    v19 = v50.n128_i64[1];
    if ((v7 & 1) == 0 || (v19 = v40.n128_u64[1] * (v7 >> 1), (v40.n128_i64[1] * (v7 >> 1)) >> 64 == v19 >> 63))
    {
      v20 = *a1 - v19;
      if (*a1 >= v19)
      {
        outlined destroy of _ViewList_Sublist(&v40);
        *a1 = v20;
      }

      else
      {
        *&v48 = v8;
        BYTE8(v48) = v9;
        _ViewList_TemporarySublistTransform.apply(sublist:)(&v40, v50);
        v21 = *&v41[4];
        v22 = *&v41[8];
        v23 = v40.n128_u64[1];
        v24 = v40.n128_u64[1] & ~(v40.n128_i64[1] >> 63);

        v25 = 0;
        do
        {
          if (v23 == v25)
          {
            break;
          }

          if (v25 == 0x80000000)
          {
            goto LABEL_45;
          }

          if (v24 == v25)
          {
            goto LABEL_46;
          }

          v26 = v25 + 1;
          *&v48 = __PAIR64__(v21, v25);
          *(&v48 + 1) = v22;

          v27 = a4(&v48);

          v25 = v26;
        }

        while ((v27 & 1) != 0);
        outlined destroy of _ViewList_Sublist(&v40);

        *a1 = 0;
      }

      return;
    }

    goto LABEL_47;
  }

  v10 = DWORD2(v52);
  v11 = BYTE12(v52);
  outlined init with take of AnyTrackedValue(&v50, &v40);
  v12 = *&v41[8];
  __swift_project_boxed_opaque_existential_1(&v40, *&v41[8]);
  v45 = v7;
  *&v48 = v8;
  BYTE8(v48) = v9;
  LOBYTE(v47) = v11;
  ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v45, v10 | (v11 << 32), &v48, a4, a5, v12, *(&v12 + 1));
  v13 = &v40;
LABEL_40:
  __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t *_ViewList_Group.applyIDs(from:style:transform:to:)(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v6 = result;
  v7 = 0;
  v8 = *a2;
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(*v5 + 16);
  v17 = *v5;
  v16 = *v5 + 32;
  while (1)
  {
    if (v7 == v11)
    {
      v7 = v11;
      memset(v23, 0, 44);
      goto LABEL_7;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v17 + 16))
    {
      goto LABEL_11;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v16 + 48 * v7++, v23, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
LABEL_7:
    *&v25[12] = *(&v23[1] + 12);
    v24 = v23[0];
    *v25 = v23[1];
    v12 = *(&v23[1] + 1);
    if (*(&v23[1] + 1))
    {
      v13 = *&v25[24];
      outlined init with take of AnyTrackedValue(&v24, v23);
      v14 = *(&v23[1] + 1);
      v15 = *&v23[2];
      __swift_project_boxed_opaque_existential_1(v23, *(&v23[1] + 1));
      v22 = v8;
      v20 = v9;
      v21 = v10;
      LOBYTE(v14) = ViewList.applyIDs(from:style:listAttribute:transform:to:)(v6, &v22, v13, &v20, a4, a5, v14, v15);
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      if (v14)
      {
        continue;
      }
    }

    return (v12 == 0);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t _ViewList_Section.applyNodes(from:style:transform:to:)(uint64_t result, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v6 = result;
  v7 = *a2;
  v39 = *a3;
  v8 = *(a3 + 8);
  v37 = *v5;
  v38 = v8;
  v9 = *(v5 + 2);
  v10 = *(v5 + 24);
  v11 = *result;
  v13 = *result == 0;
  v42 = v7;
  v12 = v7 >> 1;
  v13 = v13 || v12 == 1;
  if (v13)
  {
LABEL_8:
    v33 = v7 >> 1;
    v36 = v9;
    v43 = v9;
    if (v10)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = specialized Collection.prefix(_:)(v16, 0, *(v9 + 16));
    if (result == v17)
    {
      return 1;
    }

    v18 = result;
    v19 = v17;
    if (v17 >= result)
    {
      v20 = v42 & 0xFFFFFFFFFFFFFFFELL;
      if ((v42 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        ++v20;
      }

      v34 = v20;
      v21 = v43 + 48 * result + 32;
      v22 = result;
      v35 = v6;
      while (v22 < v19)
      {
        if (v18 < 0)
        {
          goto LABEL_33;
        }

        if (v22 >= *(v43 + 16))
        {
          goto LABEL_34;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v21, v47, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
        v23 = v48;
        outlined init with take of AnyTrackedValue(v47, v49);
        if (v22 == 1)
        {
          v24 = v42;
        }

        else
        {
          v24 = v34;
        }

        v25 = v49[4];
        v26 = __swift_project_boxed_opaque_existential_1(v49, v49[3]);
        v44 = &v32;
        v46 = v24;
        *&v47[0] = v39;
        BYTE8(v47[0]) = v38;
        MEMORY[0x1EEE9AC00](v26);
        v27 = *(v25 + 64);
        v45 = 0;
        v28 = v23;
        v29 = v35;
        result = v27(v35, &v46, v28, v47, partial apply for closure #1 in _ViewList_Section.applyNodes(from:style:transform:to:));
        if ((result & 1) == 0)
        {
          goto LABEL_31;
        }

        v30 = *v29;
        if (*v29 && v33 != 1)
        {
          if (!v33)
          {
            goto LABEL_35;
          }

          v14 = __OFSUB__(v30, v30 % v33);
          v31 = v30 - v30 % v33;
          if (v14)
          {
            __break(1u);
LABEL_31:
            __swift_destroy_boxed_opaque_existential_1(v49);
            return 0;
          }

          *v29 = v31;
        }

        ++v22;
        result = __swift_destroy_boxed_opaque_existential_1(v49);
        v21 += 48;
        if (v19 == v22)
        {
          return 1;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  if (!v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = __OFSUB__(v11, v11 % v12);
  v15 = v11 - v11 % v12;
  if (!v14)
  {
    *result = v15;
    goto LABEL_8;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t _ViewList_Node.applyNodes(from:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t *, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v10 = 2;
  v8 = v5;
  v9 = v6;
  return a5(a1, &v10, &v8, a3, a4) & 1;
}

uint64_t _ViewList_Section.firstOffset<A>(forID:style:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v41 = *(v4 + 8);
  if (*(v4 + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result = specialized Collection.prefix(_:)(v6, 0, *(v41 + 16));
  if (result == v8)
  {
    return 0;
  }

  v9 = result;
  v10 = v8;
  if (v8 < result)
  {
    goto LABEL_52;
  }

  v11 = v5 & 0xFFFFFFFFFFFFFFFELL;
  v36 = v5 & 0xFFFFFFFFFFFFFFFELL;
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    ++v11;
  }

  v37 = v11;
  v12 = result - 2;
  for (i = v41 + 32 + 48 * result; ; i += 48)
  {
    if (v12 + 2 >= v10)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v9 < 0)
    {
      goto LABEL_46;
    }

    if ((v12 + 2) >= *(v41 + 16))
    {
      goto LABEL_47;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(i, v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    outlined init with take of AnyTrackedValue(v45, v46);
    v14 = v5;
    if (v12 != -1)
    {
      v5 = v37;
    }

    v15 = v47;
    v16 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    *&v45[0] = v5;
    result = (*(v16 + 80))(a1, v45, a3, a4, v15, v16);
    if ((v17 & 1) == 0)
    {
      break;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v46);
    ++v12;
    v5 = v14;
    if (v12 - v10 == -2)
    {
      return 0;
    }
  }

  v18 = result;
  if (v12 == -2)
  {
    goto LABEL_44;
  }

  if ((v12 + 2) > *(v41 + 16))
  {
    goto LABEL_53;
  }

  v19 = v14;
  v20 = v14 >> 1;
  if (v14 >> 1 == 1)
  {
    v21 = v36;
  }

  else
  {
    v21 = v36 + 1;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v41 + 32, v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v45, v42);
  v22 = v43;
  v23 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  *&v45[0] = v21;
  result = (*(v23 + 16))(v45, v22, v23);
  if (v20 == 1)
  {
LABEL_27:
    v25 = __OFADD__(v18, result);
    v18 += result;
    if (!v25)
    {
      __swift_destroy_boxed_opaque_existential_1(v42);
      if (v12 == -1)
      {
        goto LABEL_44;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v41 + 80, v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v45, v42);
      v27 = v43;
      v28 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      *&v45[0] = v19;
      result = (*(v28 + 16))(v45, v27, v28);
      if (v20 != 1)
      {
        if (v19 < 2)
        {
          goto LABEL_49;
        }

        v29 = result % v20;
        if (result % v20)
        {
          v25 = __OFSUB__(v20, v29);
          v30 = v20 - v29;
          if (v25)
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v25 = __OFADD__(result, v30);
          result += v30;
          if (v25)
          {
            goto LABEL_51;
          }
        }
      }

      v25 = __OFADD__(v18, result);
      v18 += result;
      if (!v25)
      {
        __swift_destroy_boxed_opaque_existential_1(v42);
        if (v12)
        {
          v31 = v41 + 128;
          do
          {
            outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v31, v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
            outlined init with take of AnyTrackedValue(v45, v42);
            v32 = v43;
            v33 = v44;
            __swift_project_boxed_opaque_existential_1(v42, v43);
            *&v45[0] = v21;
            result = (*(v33 + 16))(v45, v32, v33);
            if (v20 != 1)
            {
              if (v19 < 2)
              {
                goto LABEL_49;
              }

              v34 = result % v20;
              if (result % v20)
              {
                v25 = __OFSUB__(v20, v34);
                v35 = v20 - v34;
                if (v25)
                {
                  goto LABEL_50;
                }

                v25 = __OFADD__(result, v35);
                result += v35;
                if (v25)
                {
                  goto LABEL_51;
                }
              }
            }

            v25 = __OFADD__(v18, result);
            v18 += result;
            if (v25)
            {
              goto LABEL_48;
            }

            __swift_destroy_boxed_opaque_existential_1(v42);
            v31 += 48;
          }

          while (--v12);
        }

LABEL_44:
        __swift_destroy_boxed_opaque_existential_1(v46);
        return v18;
      }
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v19 < 2)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v24 = result % v20;
  if (!(result % v20))
  {
    goto LABEL_27;
  }

  v25 = __OFSUB__(v20, v24);
  v26 = v20 - v24;
  if (v25)
  {
    goto LABEL_50;
  }

  v25 = __OFADD__(result, v26);
  result += v26;
  if (!v25)
  {
    goto LABEL_27;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void specialized ViewList.applyIDs(from:listAttribute:transform:to:)(uint64_t *a1, unint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v10 = a5[3];
  v11 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v10);
  v12 = (*(v11 + 40))(v10, v11);
  v14 = a5[5];
  v13 = a5[6];
  type metadata accessor for ViewListSublistSlice.ViewIDsSlice();
  v15 = swift_allocObject();
  v16 = v15;
  v50 = a4;
  if (!v12)
  {
    v26 = swift_deallocPartialClassInstance();
    MEMORY[0x1EEE9AC00](v26);
    v27 = v14 + *a1;
    if (!__OFADD__(v14, *a1))
    {
      *&v54 = v14 + *a1;
      *(swift_allocObject() + 16) = v27;
      v28 = a5[4];
      v29 = __swift_project_boxed_opaque_existential_1(a5, a5[3]);
      *&v58[0] = 2;
      *&v56 = a3;
      BYTE8(v56) = a4 & 1;
      v30 = MEMORY[0x1EEE9AC00](v29);
      (*(v28 + 64))(&v54, v58, a2 | ((HIDWORD(a2) & 1) << 32), &v56, closure #1 in ViewListSublistSlice.applyNodes(from:style:list:transform:to:)partial apply, v30);

      return;
    }

    goto LABEL_44;
  }

  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = v13;
  *(v15 + 16) = *(v12 + 16);
  v17 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    goto LABEL_42;
  }

  if (v17 < 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v18 = *a1;
  v19 = *a1 - v17;
  if (*a1 >= v17)
  {

    *a1 = v19;
    return;
  }

  if (v18 < 0)
  {
    goto LABEL_45;
  }

  v20 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v18, v17);
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  if ((v23 & 1) == 0)
  {
    v25 = v22 - v21;
    if (!__OFSUB__(v22, v21))
    {
      v24 = v20;
      goto LABEL_14;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v24 = v22 - v21;
  if (!__OFSUB__(v22, v21))
  {
    v25 = v22 - v21;
LABEL_14:
    if (v25 >= v24 && (v25 & 0x8000000000000000) == 0)
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        if (v24 == v25)
        {
LABEL_18:

          *a1 = 0;
          return;
        }

        v51 = v25;
        while (1)
        {
          v33 = *(v16 + 32);
          if (__OFADD__(v24, v33))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          (*(**(v16 + 24) + 96))(&v56, v24 + v33);
          v34 = *(v16 + 32);
          v35 = *(v16 + 40);
          v36 = __OFSUB__(v35, v34);
          v37 = v35 - v34;
          if (v36)
          {
            goto LABEL_40;
          }

          if (v24 >= v37)
          {
            goto LABEL_41;
          }

          v58[0] = v56;
          *&v56 = a3;
          BYTE8(v56) = a4 & 1;
          _ViewList_TemporarySublistTransform.bindID(_:)(v58);
          v39 = LODWORD(v58[0]);
          v38 = DWORD1(v58[0]);
          v40 = *(&v58[0] + 1);
          v41 = *(*(&v58[0] + 1) + 16);

          if (!v41)
          {
            break;
          }

          v42 = *(v40 + 32);
          v43 = *(v40 + 52);

          if (v43)
          {
            v38 = 0xFFFFFFFFLL;
          }

          else
          {
            v38 = v38;
          }

          if (!v42)
          {
            goto LABEL_32;
          }

          (*(*v42 + 104))(&v54);
          outlined init with take of AnyTrackedValue(&v54, &v56);
          v31 = *&v57[8];
          v32 = __swift_project_boxed_opaque_existential_1(&v56, *&v57[8]);
          HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v39, v38, v32, v31, *(&v31 + 1));
          __swift_destroy_boxed_opaque_existential_1(&v56);

LABEL_21:
          if (v51 == ++v24)
          {
            goto LABEL_18;
          }
        }

LABEL_32:
        _s2os6LoggerVSgWOcTm_0(a6 + 56, &v54, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool));
        if (*&v55[8])
        {
          *&v57[9] = *&v55[9];
          v56 = v54;
          *v57 = *v55;
          v44 = *&v55[8];
          v45 = *&v55[9] >> 56;
          v46 = __swift_project_boxed_opaque_existential_1(&v56, *&v55[8]);
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v56, &v54, type metadata accessor for (Hashable, isUnary: Bool));
          v47 = v55[24];
          __swift_destroy_boxed_opaque_existential_1(&v54);
          v48 = v47 == 0;
          a4 = v50;
          if (v48)
          {
            v49 = v38;
          }

          else
          {
            v49 = -1;
          }

          HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v39, v49, v46, v44, v45);
          outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v56, type metadata accessor for (Hashable, isUnary: Bool));
        }

        else
        {
          _s2os6LoggerVSgWOhTm_0(&v54, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool));
          specialized HeterogeneousViewIDsAccumulator.append<A>(_:)(v39 | (v38 << 32));
        }

        goto LABEL_21;
      }

      goto LABEL_48;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
}

uint64_t ViewList.applyIDs(from:listAttribute:transform:to:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v12 = 2;
  v10 = v7;
  v11 = v8;
  return ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v12, a2 | ((HIDWORD(a2) & 1) << 32), &v10, a4, a5, a6, a7) & 1;
}

uint64_t ViewList.firstOffset(of:style:)(unsigned int *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v30 = a1[1];
  v31 = v6;
  v7 = *(a1 + 1);
  v8 = *a2;
  if (*a2 != 2 || (a1 = (*(a4 + 40))(a3, a4)) == 0)
  {
    v32[0] = 0;
    v36 = 0;
    v34 = 0;
    LOBYTE(v35) = 1;
    MEMORY[0x1EEE9AC00](a1);
    v24[4] = v31;
    v24[5] = v30;
    v25 = v7;
    v26 = &v34;
    v27 = &v36;
    v33[0] = v8;
    v37 = v23;
    ViewList.applySublists(from:style:list:to:)(v32, v33, v23 << 32, partial apply for closure #2 in ViewList.firstOffset(of:style:), v24, a3, a4);
    return v34;
  }

  v9 = a1;
  v10 = *(*a1 + 88);
  if (!v10())
  {
LABEL_12:

    return 0;
  }

  v11 = 0;
  v12 = *(*v9 + 96);
  v28 = *v9 + 96;
  v29 = v12;
  while (1)
  {
    v29(&v34, v11);
    v14 = v34;
    v13 = HIDWORD(v34);
    v15 = v35;
    v16 = *(v35 + 16);

    if (v16)
    {
      v16 = *(v15 + 32);
      v17 = v7;
      v18 = *(v15 + 52);

      v19 = v18 == 0;
      v7 = v17;
      if (!v19)
      {
        v13 = -1;
      }
    }

    else
    {
    }

    v33[0] = __PAIR64__(v13, v14);
    v33[1] = v16;
    v32[0] = __PAIR64__(v30, v31);
    v32[1] = v7;
    v20 = specialized static _ViewList_ID.Canonical.== infix(_:_:)(v33, v32);

    if (v20)
    {

      return v11;
    }

    result = (v10)(v21);
    if (v11 >= result)
    {
      break;
    }

    if (++v11 == v10())
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void closure #2 in ViewList.firstOffset(of:style:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  if (!v6)
  {

LABEL_24:

    return;
  }

  v20 = HIDWORD(a2);
  v9 = *(a1 + 20);
  v10 = a2;
  v11 = v6 & ~(v6 >> 63);

  v12 = 0x80000000;
  while (v12)
  {
    if (!v11)
    {
      goto LABEL_28;
    }

    v13 = *(v5 + 16);
    swift_bridgeObjectRetain_n();
    if (v13)
    {
      v13 = *(v5 + 32);
      v14 = *(v5 + 52);

      swift_bridgeObjectRelease_n();
      if (v14)
      {
        v15 = -1;
      }

      else
      {
        v15 = v9;
      }

      if (v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v15 = v9;
      if (v10)
      {
        goto LABEL_20;
      }
    }

    if (v15 != v20)
    {
      goto LABEL_20;
    }

    if (!v13)
    {
      if (!a3)
      {
        goto LABEL_26;
      }

LABEL_19:

LABEL_20:

      goto LABEL_21;
    }

    if (!a3)
    {
      goto LABEL_19;
    }

    if (v13 == a3)
    {

LABEL_26:

      *a4 = *a5;
      *(a4 + 8) = 0;
      return;
    }

    v19 = *(*v13 + 112);
    swift_retain_n();

    v17 = v19(v16);

    if (v17)
    {
      goto LABEL_26;
    }

LABEL_21:
    ++*a5;
    --v11;
    --v12;
    --v10;
    if (!--v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X8>)
{
  v13 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v13;
  v17[4] = *(a1 + 64);
  v18 = *(a1 + 80);
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v20 = 0;
  v16[2] = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v16[3] = v15;
  (*(a6 + 16))(&v19, &v20, v17, a2, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v16, a5, a6);
  *a7 = v19;
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }
}

uint64_t specialized closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:)(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, _OWORD *))
{
  v4 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v4;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  a3(v10, v8);
  v6 = v10[1];
  *a1 = v10[0];
  a1[1] = v6;
  return 0;
}

void _ViewList_Elements.makeOneElement(at:inputs:body:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X8>)
{
  v13 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v13;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v14 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v20 = a1;
  v16[2] = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v16[3] = v15;
  (*(a6 + 16))(&v19, &v20, v17, 0, closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:)partial apply, v16, a5, a6);
  *a7 = v19;
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }
}

uint64_t (*_ViewList_ID.index.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return _ViewList_ID.index.modify;
}

char *static _ViewList_ID.explicit<A>(_:owner:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 4) = 0;
  *(a4 + 8) = MEMORY[0x1E69E7CC0];
  *a4 = 0;
  return _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(a1, a2, 1, 0, a3);
}

char *static _ViewList_ID.explicit<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *MEMORY[0x1E698D3F8];
  v5 = MEMORY[0x1E69E7CC0];
  *a3 = 0;
  a3[1] = v5;
  return _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(a1, v4, 1, 0, a2);
}

void _ViewList_ID.elementID(at:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  *(a2 + 4) = *(v2 + 4);
  *(a2 + 8) = v3;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    *a2 = a1;

    return;
  }

  __break(1u);
}

uint64_t _ViewList_ID.index.setter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*_ViewList_ID.Canonical.index.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return _ViewList_ID.Canonical.index.modify;
}

uint64_t _ViewList_ID.index.modify(uint64_t result, char a2)
{
  v2 = *result;
  v3 = *result < 0xFFFFFFFF80000000;
  if (a2)
  {
    if (*result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v3 = v2 < 0x7FFFFFFF;
    if (v2 <= 0x7FFFFFFF)
    {
LABEL_7:
      **(result + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

double _ViewList_ID.Canonical.explicitID.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

void _ViewList_ID.Canonical.explicitID.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

uint64_t _ViewList_ID.Canonical.description.getter()
{
  DynamicType = *(v0 + 8);
  v10 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD7CBD0);
  v2 = String.init<A>(reflecting:)();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](0x63696C706D69202CLL, 0xEE00203A44497469);
  v3 = String.init<A>(reflecting:)();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](0x63696C707865202CLL, 0xEE00203A44497469);
  v9 = DynamicType;
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for AnyHashable2?, &type metadata for AnyHashable2, MEMORY[0x1E69E6720]);

  v4 = String.init<A>(reflecting:)();
  MEMORY[0x193ABEDD0](v4);

  v5 = MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  if (DynamicType)
  {
    (*(*DynamicType + 104))(&v9, v5);
    __swift_project_boxed_opaque_existential_1(&v9, v11);
    DynamicType = swift_getDynamicType();
    v6 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    v6 = 0;
  }

  v9 = DynamicType;
  v10 = v6;
  type metadata accessor for GestureConstantsProvider.Type?(0, &lazy cache variable for type metadata for Hashable.Type?, &lazy cache variable for type metadata for Hashable.Type, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0]);
  v7 = Optional.debugDescription.getter();
  MEMORY[0x193ABEDD0](v7);

  MEMORY[0x193ABEDD0](10589, 0xE200000000000000);
  return v13;
}

void _ViewList_ID.Canonical.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = *(*v5 + 120);

    v6(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int _ViewList_ID.Canonical.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    v4 = *(*v3 + 120);

    v4(v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance _ViewList_ID.Canonical(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = *(*v5 + 120);

    v6(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

double _ViewList_ID.ElementCollection.id.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double _ViewList_ID.ElementCollection.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

double _ViewList_ID.ElementCollection.init(id:count:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 8);
  result = *a1;
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

void _ViewList_ID.ElementCollection.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  *(a2 + 4) = *(v2 + 4);
  *(a2 + 8) = v3;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    *a2 = a1;

    return;
  }

  __break(1u);
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _ViewList_ID.ElementCollection@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *(v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _ViewList_ID.ElementCollection(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *(v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _ViewList_ID.ElementCollection(uint64_t a1, uint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  result = *(v2 + 8);
  *(a1 + 4) = *(v2 + 4);
  *(a1 + 8) = result;
  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    *a1 = v4;

    return destroy for HostPreferencesCombiner;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.getter in conformance _ViewList_ID.ElementCollection(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *a1;
  if (*a1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[1];
  if (v3 >= v5)
  {
    v6 = v2[1];
    a2[2] = *v2;
    a2[3] = v6;
    a2[4] = v3;
    *a2 = v4;
    a2[1] = v5;

    return;
  }

LABEL_7:
  __break(1u);
}

void protocol witness for Collection.indices.getter in conformance _ViewList_ID.ElementCollection(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _ViewList_ID.ElementCollection@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(v3 + 16) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance _ViewList_ID.ElementCollection(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 16);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance _ViewList_ID.ElementCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance _ViewList_ID.ElementCollection(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

double protocol witness for Sequence.makeIterator() in conformance _ViewList_ID.ElementCollection@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = 0;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _ViewList_ID.ElementCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

void _ViewList_ID.primaryExplicitID.getter(uint64_t *a1@<X8>)
{
  if (*(*(v1 + 8) + 16))
  {
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

_BYTE *_ViewList_ID._Views.init(_:isDataDependent:)(uint64_t a1, char a2)
{
  (*(*(*(*v2 + 128) - 8) + 32))(&v2[*(*v2 + 152)], a1);
  v2[16] = a2;
  return v2;
}

uint64_t _ViewList_ID._Views.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a1;
  v3 = dispatch thunk of Collection.subscript.read();
  v5 = v4;
  v6 = v4[1];

  v7 = *v5;
  result = v3(v9, 0);
  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t _ViewList_ID._Views.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

uint64_t _ViewList_ID_Views.withDataDependency()()
{
  v1 = v0;
  if ((*(v0 + 16) & 1) == 0)
  {
    type metadata accessor for _ViewList_ID._Views<_ViewList_ID_Views>(0);
    v1 = swift_allocObject();
    *(v1 + 24) = v0;
    *(v1 + 16) = 1;
  }

  return v1;
}

unint64_t _ViewList_ID.JoinedViews.__allocating_init(_:isDataDependent:)(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  v4 = specialized _ViewList_ID.JoinedViews.init(_:isDataDependent:)(a1, v2);

  return v4;
}

unint64_t _ViewList_ID.JoinedViews.init(_:isDataDependent:)(unint64_t a1, uint64_t a2)
{
  v2 = specialized _ViewList_ID.JoinedViews.init(_:isDataDependent:)(a1, a2);

  return v2;
}

void _ViewList_ID.JoinedViews.subscript.getter(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = 0;
LABEL_14:
    if (v5 >= v4)
    {
LABEL_22:
      __break(1u);
    }

    else
    {
      v10 = *(v3 + 16 * v5 + 32);
      v11 = *(*v10 + 88);

      v13 = v11(v12);
      if ((v2 & 0x8000000000000000) == 0 && v13 >= v2)
      {
        (*(*v10 + 96))(v2);

        return;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = 0;
  v6 = v3 + 32;
  v7 = *(v3 + 16);
  while (1)
  {
    v8 = v7 >> 1;
    v9 = v5 + (v7 >> 1);
    if (__OFADD__(v5, v7 >> 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= v4)
    {
      goto LABEL_21;
    }

    if (*(v6 + 16 * v9 + 8) <= a1)
    {
      break;
    }

LABEL_3:
    v7 = v8;
    if (v8 <= 0)
    {
      goto LABEL_10;
    }
  }

  v5 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v8 = v7 + ~v8;
    goto LABEL_3;
  }

  __break(1u);
LABEL_10:
  if (!v5)
  {
    goto LABEL_14;
  }

  if ((v5 - 1) < v4)
  {
    v2 = a1 - *(v6 + 16 * (v5 - 1) + 8);
    goto LABEL_14;
  }

LABEL_24:
  __break(1u);
}

void _ViewList_ID.JoinedViews.isEqual(to:)(uint64_t a1)
{
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    if (*(v1 + 32) == *(v2 + 32))
    {
      v4 = *(v1 + 24);
      v5 = *(v4 + 16);

      v6 = 0;
      v7 = 32;
      while (1)
      {
        if (v5 == v6)
        {
LABEL_8:

          return;
        }

        if (v6 >= *(v4 + 16))
        {
          break;
        }

        if (v6++ >= *(*(v3 + 24) + 16))
        {
          goto LABEL_11;
        }

        v8 = v7 + 16;
        v9 = *(**(v4 + v7) + 104);

        LOBYTE(v9) = v9(v10);

        v7 = v8;
        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }
  }
}

uint64_t _ViewList_ID.JoinedViews.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int _ViewList_ID.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      v5 += 6;
      v8 = *(*v6 + 120);

      v8(v10);
      Hasher._combine(_:)(v7);

      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _ViewList_ID(uint64_t a1)
{
  Hasher.init(_seed:)();
  _ViewList_ID.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t _ViewList_ID_Views.__allocating_init(isDataDependent:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _ViewList_ID_Views@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = (*(**v2 + 88))();
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _ViewList_ID_Views(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = (*(**v1 + 88))();
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance _ViewList_ID_Views@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 88))();
  *a1 = result;
  return result;
}

void protocol witness for Collection.subscript.getter in conformance _ViewList_ID_Views(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = (*(*v6 + 88))();
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 < v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v6;
}

uint64_t protocol witness for Collection.indices.getter in conformance _ViewList_ID_Views@<X0>(void *a1@<X8>)
{
  result = (*(**v1 + 88))();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _ViewList_ID_Views@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = (*(**v3 + 88))();
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance _ViewList_ID_Views@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance _ViewList_ID_Views(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(**v2 + 88);
  result = v5();
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = v5();
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance _ViewList_ID_Views@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = (*(**v2 + 88))();
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance _ViewList_ID_Views(uint64_t *a1)
{
  v3 = *a1;
  result = (*(**v1 + 88))();
  if (v3 < 0 || v3 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _ViewList_ID_Views(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for _ViewList_ID_Views, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _ViewList_ID_Views()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t protocol witness for Rule.value.getter in conformance _ViewListOutputs.ApplyModifiers@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  Value = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(Value, a1);
  return (*(*v3 + 80))(a1);
}

uint64_t ModifiedViewList.ListModifier.__allocating_init<A>(pred:modifier:inputs:)(uint64_t a1, unsigned int *a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;
  *(v9 + 40) = AGCreateWeakAttribute();
  v10 = a3[1];
  *(v9 + 48) = *a3;
  *(v9 + 64) = v10;
  *(v9 + 80) = a3[2];
  return v9;
}

uint64_t EmptyViewList.viewIDs.getter(__n128 a1)
{
  type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

Swift::Void __swiftcall EmptyViewList.print(into:)(SwiftUI::SExpPrinter *into)
{
  depth = into->depth;
  if (!depth)
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x6C207974706D6528, 0xEC00000029747369);
    goto LABEL_7;
  }

  MEMORY[0x193ABEDD0](10, 0xE100000000000000);
  MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x6C207974706D6528, 0xEC00000029747369);
  v3 = depth + 1;
  if (__OFADD__(depth, 1))
  {
    __break(1u);
  }

  else
  {
    into->depth = v3;
    MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
    if (depth == -1)
    {
LABEL_7:
      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      return;
    }

    if (!__OFSUB__(v3, 1))
    {
      into->depth = depth;
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v4);
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t protocol witness for ViewList.viewIDs.getter in conformance EmptyViewList(__n128 a1)
{
  type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t EmptyViewListElements.makeElements(from:inputs:indirectMap:body:)(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BaseViewList.Init()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);
  return 0x73746E656D656C45;
}

void project #1 <A>(_:) in BaseViewList.print(into:)(uint64_t a1, void *a2, uint64_t a3, ValueMetadata *a4, uint64_t a5)
{
  if (a4 == &type metadata for EmptyViewListElements)
  {
    if (a2[2])
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000, a3);
      v12 = a2[3];
      v13 = a2[4];
    }

    else
    {
      v12 = 32;
      v13 = 0xE100000000000000;
    }

    MEMORY[0x193ABEDD0](v12, v13);
    v21 = 0x800000018DD7CE70;
    v20 = 0xD000000000000010;
    goto LABEL_14;
  }

  strcpy(v22, "(elements ");
  BYTE3(v22[1]) = 0;
  HIDWORD(v22[1]) = -369098752;
  v8 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v8);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  v9 = a2[2];
  if (v9)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a2[3], a2[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v22[0], v22[1]);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    a2[2] = v9 + 1;
    v10 = 8224;
    v11 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v10 = v22[0];
    v11 = v22[1];
  }

  MEMORY[0x193ABEDD0](v10, v11);

  strcpy(v22, "#:count ");
  BYTE1(v22[1]) = 0;
  WORD1(v22[1]) = 0;
  HIDWORD(v22[1]) = -402653184;
  (*(a5 + 8))(a4, a5);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v14);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v22[0], v22[1]);

  strcpy(v22, "#:implicitID ");
  HIWORD(v22[1]) = -4864;
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v15);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v22[0], v22[1]);

  v17 = a2[2];
  if (!v17)
  {
LABEL_11:
    v20 = 41;
    v21 = 0xE100000000000000;
LABEL_14:
    MEMORY[0x193ABEDD0](v20, v21);
    return;
  }

  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (!v18)
  {
    a2[2] = v19;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v16);
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

void protocol witness for ViewList.print(into:) in conformance BaseViewList(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v3);

  project #1 <A>(_:) in BaseViewList.print(into:)(v5, a1, v1, v3, v4);
}

uint64_t ViewListSublistSlice.ViewIDsSlice.endIndex.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t ViewListSublistSlice.ViewIDsSlice.subscript.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = __OFADD__(a1, v2);
  result = a1 + v2;
  if (!v3)
  {
    return (*(**(v1 + 24) + 96))(result);
  }

  __break(1u);
  return result;
}

uint64_t ViewListSublistSlice.ViewIDsSlice.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ViewListSublistSlice.viewIDs.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  type metadata accessor for ViewListSublistSlice.ViewIDsSlice();
  result = swift_allocObject();
  if (v3)
  {
    *(result + 24) = v3;
    *(result + 32) = v5;
    *(result + 40) = v4;
    *(result + 16) = *(v3 + 16);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t ViewListSublistSlice.init(base:bounds:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = outlined init with take of AnyTrackedValue(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t ViewListSublistSlice.count(style:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

void *ViewListSublistSlice.applyNodes(from:style:list:transform:to:)(void *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v5 = v4[5];
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
    __break(1u);
  }

  else
  {
    v8 = *a2;
    v9 = *a4;
    v10 = *(a4 + 8);
    v19 = v5 + *result;
    *(swift_allocObject() + 16) = v6;
    v11 = v4[4];
    v12 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v15 = &v15;
    v18 = v8;
    v16 = v9;
    v17 = v10;
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = (*(v11 + 64))(&v19, &v18, a3 | ((HIDWORD(a3) & 1) << 32), &v16, partial apply for closure #1 in ViewListSublistSlice.applyNodes(from:style:list:transform:to:), v13);

    return (v14 & 1);
  }

  return result;
}

void closure #1 in applyNode #1 (start:style:node:transform:body:) in ViewListSublistSlice.applyNodes(from:style:list:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(void *, unint64_t *, uint64_t, uint64_t *, __n128), uint64_t a8)
{
  v14 = *a2;
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = outlined init with copy of _ViewList_Node(a3, v33);
  if (v35 == 1)
  {
    v24 = a8;
    v25 = v15;
    LODWORD(v26) = v16;
    v31[2] = v33[2];
    v31[3] = v33[3];
    v32[0] = *v34;
    *(v32 + 13) = *&v34[13];
    v31[0] = v33[0];
    v31[1] = v33[1];
    swift_beginAccess();
    v18 = *(a5 + 16);
    if (v18 >= *(a6 + 48))
    {
      outlined destroy of _ViewList_Sublist(v31);
    }

    else
    {
      v19 = *(&v31[0] + 1);
      if ((v14 & 1) == 0 || (v19 = *(&v31[0] + 1) * (v14 >> 1), (*(&v31[0] + 1) * (v14 >> 1)) >> 64 == v19 >> 63))
      {
        swift_beginAccess();
        v20 = v26;
        v21 = v25;
        if (!__OFADD__(v18, v19))
        {
          *(a5 + 16) = v18 + v19;
          v29[0] = v14;
          v27 = v21;
          v28 = v20;
          (a7)(a1, v29, a3, &v27);
          outlined destroy of _ViewList_Sublist(v31);
          return;
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    v26 = &v24;
    v30[0] = v14;
    *&v31[0] = v15;
    BYTE8(v31[0]) = v16;
    MEMORY[0x1EEE9AC00](v17);
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a7;
    v23[5] = a8;
    _ViewList_Node.applyNodes(from:style:transform:to:)(a1, v30, v31, v22, v23);
    outlined destroy of _ViewList_Node(v33);
  }
}

uint64_t ViewListSublistSlice.edit(forID:since:)(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v10[0] = *a1;
  v10[1] = v4;
  v9 = v5;
  return (*(v7 + 72))(v10, &v9, v6, v7);
}

uint64_t ViewListSublistSlice.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v10);
  v16 = v9;
  result = (*(v11 + 80))(a1, &v16, a3, a4, v10, v11);
  if ((v13 & 1) == 0)
  {
    v14 = v5[5];
    v15 = __OFSUB__(result, v14);
    result -= v14;
    if (v15)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall ViewListSublistSlice.print(into:)(SwiftUI::SExpPrinter *into)
{
  depth = into->depth;
  if (depth)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x6563696C73, 0xE500000000000000);
    if (__OFADD__(depth, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    into->depth = depth + 1;
    v4 = 8224;
    v5 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v4 = 0x6563696C73;
    v5 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v4, v5);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x73646E756F623A23, 0xE900000000000020);

  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  (*(v7 + 88))(into, v6, v7);
  v9 = into->depth;
  if (!v9)
  {
LABEL_8:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return;
  }

  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (!v10)
  {
    into->depth = v11;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v8);
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
}

uint64_t protocol witness for ViewList.edit(forID:since:) in conformance ViewListSublistSlice(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v10[0] = *a1;
  v10[1] = v4;
  v9 = v5;
  return (*(v7 + 72))(v10, &v9, v6, v7);
}

uint64_t _ViewList_Group.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t *, uint64_t *))
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *v5;
  v17 = *a2;
  v15[0] = v10;
  v16 = 2;
  v13 = v8;
  v14 = v9;

  v11 = a5(a1, &v17, v15, &v13);
  outlined destroy of _ViewList_Node(v15);
  return v11 & 1;
}

uint64_t *_ViewList_Group.edit(forID:since:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = 0;
  v5 = *result;
  v6 = result[1];
  v7 = *a2;
  v8 = *v3;
  v9 = *(*v3 + 16);
  v10 = *v3 + 32;
  if (v9)
  {
    goto LABEL_3;
  }

LABEL_2:
  v4 = v9;
  memset(v17, 0, 44);
  while (1)
  {
    *&v19[12] = *(&v17[1] + 12);
    v18 = v17[0];
    *v19 = v17[1];
    if (!*(&v17[1] + 1))
    {
      *a3 = 2;
      return result;
    }

    outlined init with take of AnyTrackedValue(&v18, v17);
    v11 = *(&v17[1] + 1);
    v12 = *&v17[2];
    __swift_project_boxed_opaque_existential_1(v17, *(&v17[1] + 1));
    v15[0] = v5;
    v15[1] = v6;
    v14 = v7;
    (*(v12 + 72))(&v16, v15, &v14, v11, v12);
    if (v16 != 2)
    {
      *a3 = v16;
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    result = __swift_destroy_boxed_opaque_existential_1(v17);
    if (v4 == v9)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4 >= *(v8 + 16))
    {
      goto LABEL_13;
    }

    result = outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v10 + 48 * v4++, v17, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

Swift::Void __swiftcall _ViewList_Group.print(into:)(SwiftUI::SExpPrinter *into)
{
  v3 = *v1;
  _StringGuts.grow(_:)(16);

  strcpy(v23, "group #:count ");
  HIBYTE(v23[0]) = -18;
  v24[0] = *(v3 + 16);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v4);

  depth = into->depth;
  if (depth)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](*&v23[0], *(&v23[0] + 1));
    if (__OFADD__(depth++, 1))
    {
      goto LABEL_30;
    }

    into->depth = depth;
    v7 = 8224;
    v8 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v8 = *(&v23[0] + 1);
    v7 = *&v23[0];
  }

  MEMORY[0x193ABEDD0](v7, v8);

  v10 = *(v3 + 16);
  if (!v10)
  {
LABEL_22:
    if (depth)
    {
      if (__OFSUB__(depth, 1))
      {
        goto LABEL_31;
      }

      into->depth = depth - 1;
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v9);
    }

    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return;
  }

  v11 = 0;
  v12 = v3 + 32;
  while (v11 < *(v3 + 16))
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v12, v23, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    outlined init with take of AnyTrackedValue(v23, v24);
    *&v23[0] = 0;
    *(&v23[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    *&v23[0] = 0x20646C696863;
    *(&v23[0] + 1) = 0xE600000000000000;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v13);

    MEMORY[0x193ABEDD0](0x20727474613A2320, 0xE800000000000000);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    v14 = AGAttribute.description.getter();
    MEMORY[0x193ABEDD0](v14);

    v15 = v23[0];
    if (depth)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](v15, *(&v15 + 1));

      if (__OFADD__(depth, 1))
      {
        goto LABEL_27;
      }

      into->depth = depth + 1;
      MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
    }

    else
    {
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](v15, *(&v15 + 1));
    }

    v16 = v25;
    v17 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v17 + 88))(into, v16, v17);
    v18 = into->depth;
    if (v18)
    {
      depth = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_28;
      }

      into->depth = depth;
      object = into->indent._object;
      if ((object & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(object) & 0xF;
      }

      else
      {
        v20 = into->indent._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v21 = String.index(_:offsetBy:limitedBy:)();
      if (v22)
      {
        goto LABEL_32;
      }

      if (4 * v20 < v21 >> 14)
      {
        goto LABEL_29;
      }

      String.removeSubrange(_:)();
    }

    else
    {
      depth = 0;
    }

    ++v11;
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v12 += 48;
    if (v10 == v11)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void _ViewList_Group.Init.value.getter(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    v5 = v17;
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;
      Value = AGGraphGetValue();
      outlined init with copy of AnyTrackedValue(Value, &v15);
      *&v16[24] = v7;
      v17 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v10 + 1;
      v11 = (v5 + 48 * v10);
      v12 = v15;
      v13 = *v16;
      *(v11 + 60) = *&v16[12];
      v11[2] = v12;
      v11[3] = v13;
      --v4;
    }

    while (v4);
  }

  a1[3] = &type metadata for _ViewList_Group;
  lazy protocol witness table accessor for type _ViewList_Group and conformance _ViewList_Group();
  a1[4] = v14;
  *a1 = v5;
}

double _ViewList_Section.base.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

void _ViewList_Section.base.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

double _ViewList_Section.traits.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void _ViewList_Section.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

uint64_t _ViewList_Section.content.getter(uint64_t result)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v2 + 80, v5, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v4 = v6;
    outlined init with take of AnyTrackedValue(v5, v3);
    return v4;
  }

  return result;
}

uint64_t _ViewList_Section.footer.getter(uint64_t result)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v2 + 128, v5, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v4 = v6;
    outlined init with take of AnyTrackedValue(v5, v3);
    return v4;
  }

  return result;
}

void _ViewList_Section.viewIDs.getter()
{
  v1 = *(v0 + 8);
  if (*(v0 + 24) == 1)
  {
    if (*(v1 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v1 + 32, v4, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v4, v5);
      v2 = v6;
      v3 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v3 + 40))(v2, v3);
      __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *&v4[0] = *(v0 + 8);
    _ViewList_Group.viewIDs.getter();
  }
}

uint64_t _ViewList_Section.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t *, uint64_t *))
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *v5;
  v11 = *(v5 + 1);
  v12 = *(v5 + 2);
  v13 = *(v5 + 24);
  v21 = *a2;
  LODWORD(v18[0]) = v10;
  v18[1] = v11;
  v18[2] = v12;
  v19 = v13;
  v20 = 3;
  v16 = v8;
  v17 = v9;

  v14 = a5(a1, &v21, v18, &v16);
  outlined destroy of _ViewList_Node(v18);
  return v14 & 1;
}

double _ViewList_Section.edit(forID:since:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  v6 = *(v3 + 8);
  v9[1] = a1[1];
  v9[2] = v6;
  v9[0] = *a1;
  v8 = v5;

  _ViewList_Group.edit(forID:since:)(v9, &v8, a3);

  return result;
}

Swift::Void __swiftcall _ViewList_Section.print(into:)(SwiftUI::SExpPrinter *into)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 24);
  depth = into->depth;
  if (depth)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x6E6F6974636573, 0xE700000000000000);
    v7 = depth + 1;
    if (__OFADD__(depth, 1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    into->depth = v7;
    MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x6E6F6974636573, 0xE700000000000000);
    v7 = 0;
  }

  LODWORD(v38[0]) = v3;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v8);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x2064693A23, 0xE500000000000000);

  if (v5)
  {
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x7261726569683A23, 0xEE006C6163696863);
  }

  *&v41[0] = 0;
  *(&v41[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v38, "header #:attr ");
  HIBYTE(v38[1]) = -18;
  if (!*(v4 + 16))
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 32, v41, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  v9 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v9);

  if (v7)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v38[0], v38[1]);
    if (__OFADD__(v7, 1))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    into->depth = v7 + 1;
    v10 = 8224;
    v11 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v10 = v38[0];
    v11 = v38[1];
  }

  MEMORY[0x193ABEDD0](v10, v11);

  if (!*(v4 + 16))
  {
    goto LABEL_41;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 32, v41, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v41, v38);
  v12 = v39;
  v13 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v13 + 88))(into, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v15 = into->depth;
  if (v15)
  {
    v16 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    into->depth = v16;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v14);
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  *&v41[0] = 0;
  *(&v41[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v38[0] = 0x20746E65746E6F63;
  v38[1] = 0xEF20727474613A23;
  if (*(v4 + 16) < 2uLL)
  {
    goto LABEL_42;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 80, v41, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  __swift_destroy_boxed_opaque_existential_1(v41);
  v17 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v17);

  v19 = v38[0];
  v18 = v38[1];
  if (v16)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v19, v18);
    if (__OFADD__(v16, 1))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    into->depth = v16 + 1;
    v20 = 8224;
    v21 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v20 = v19;
    v21 = v18;
  }

  MEMORY[0x193ABEDD0](v20, v21);

  if (*(v4 + 16) < 2uLL)
  {
    goto LABEL_43;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 80, v41, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v41, v38);
  v22 = v39;
  v23 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v23 + 88))(into, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v25 = into->depth;
  if (v25)
  {
    v26 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    into->depth = v26;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v24);
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  *&v41[0] = 0;
  *(&v41[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v38, "footer #:attr ");
  HIBYTE(v38[1]) = -18;
  if (*(v4 + 16) < 3uLL)
  {
    goto LABEL_44;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 128, v41, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  __swift_destroy_boxed_opaque_existential_1(v41);
  v27 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v27);

  v29 = v38[0];
  v28 = v38[1];
  if (v26)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v29, v28);
    if (__OFADD__(v26, 1))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    into->depth = v26 + 1;
    v30 = 8224;
    v31 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v30 = v29;
    v31 = v28;
  }

  MEMORY[0x193ABEDD0](v30, v31);

  if (*(v4 + 16) < 3uLL)
  {
    goto LABEL_45;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 128, v41, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v41, v38);
  v32 = v39;
  v33 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v33 + 88))(into, v32, v33);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v35 = into->depth;
  if (!v35)
  {
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    goto LABEL_39;
  }

  v36 = v35 - 1;
  if (__OFSUB__(v35, 1))
  {
    goto LABEL_52;
  }

  into->depth = v36;
  specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v34);
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  if (!v36)
  {
LABEL_39:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return;
  }

  if (!__OFSUB__(v36, 1))
  {
    into->depth = v36 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v37);
    goto LABEL_39;
  }

LABEL_53:
  __break(1u);
}

double protocol witness for ViewList.traits.getter in conformance _ViewList_Section@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

double protocol witness for ViewList.edit(forID:since:) in conformance _ViewList_Section@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  v6 = *(v3 + 8);
  v9[1] = a1[1];
  v9[2] = v6;
  v9[0] = *a1;
  v8 = v5;

  _ViewList_Group.edit(forID:since:)(v9, &v8, a3);

  return result;
}

uint64_t MergedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v34 = *MEMORY[0x1E69E9840];
  outlined init with copy of AnyTrackedValue(a2, &v28);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements, &protocol descriptor for _ViewList_Elements);
  if (!swift_dynamicCast())
  {
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      AGGraphAddTraceEvent();
    }

LABEL_11:
    v22 = 0;
    return v22 & 1;
  }

  v26 = a4;
  v15 = v31[1];
  v17 = v31[2];
  v16 = v32;
  MergedElements.findElement(at:)(a1, a7, a8, a9, &v28);
  if (!v29)
  {
    _s2os6LoggerVSgWOhTm_0(&v28, &lazy cache variable for type metadata for (_ViewList_Elements, Int)?, type metadata accessor for (_ViewList_Elements, Int));
LABEL_9:
    swift_beginAccess();
    v22 = static ReuseTrace.recorder;
    if (!static ReuseTrace.recorder)
    {
      swift_unknownObjectRelease();
      return v22 & 1;
    }

    v23 = *(static ReuseTrace.recorder + 2);

    v24 = v23;
    AGGraphAddTraceEvent();

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v18 = v30;
  outlined init with take of AnyTrackedValue(&v28, v31);
  MergedElements.findElement(at:)(a3, v15, v17, v16, &v28);
  if (!v29)
  {
    _s2os6LoggerVSgWOhTm_0(&v28, &lazy cache variable for type metadata for (_ViewList_Elements, Int)?, type metadata accessor for (_ViewList_Elements, Int));
    __swift_destroy_boxed_opaque_existential_1(v31);
    goto LABEL_9;
  }

  v19 = v30;
  outlined init with take of AnyTrackedValue(&v28, v27);
  v20 = v32;
  v21 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v22 = (*(v21 + 24))(v18, v27, v19, v26, a5 & 1, v20, v21);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v22 & 1;
}

uint64_t MergedElements.findElement(at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
LABEL_2:
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  else
  {
    v8 = result;
    v9 = 0;
    if (a3 > v6)
    {
      v6 = a3;
    }

    v10 = v6 - a3;
    v11 = a2 + 72 * a3;
    while (v10)
    {
      outlined init with copy of _ViewListOutputs.Views(v11, v16);
      if (v17)
      {
        goto LABEL_18;
      }

      outlined init with take of AnyTrackedValue(v16, v18);
      v12 = v19;
      v13 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v14 = (*(v13 + 8))(v12, v13);
      v15 = v9 + v14;
      if (__OFADD__(v9, v14))
      {
        goto LABEL_16;
      }

      if (v15 < v9)
      {
        goto LABEL_17;
      }

      if (v8 >= v9 && v15 > v8)
      {
        outlined init with copy of AnyTrackedValue(v18, a5);
        *(a5 + 40) = v8 - v9;
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v18);
      --v10;
      v11 += 72;
      v9 = v15;
      if (!--v7)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    outlined destroy of _ViewListOutputs.Views(v16);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ModifiedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  outlined init with copy of AnyTrackedValue(a2, v23);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements, &protocol descriptor for _ViewList_Elements);
  if (swift_dynamicCast())
  {
    v24[4] = v20;
    v24[5] = v21;
    v24[6] = v22;
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    Attribute = AGWeakAttributeGetAttribute();
    v11 = *MEMORY[0x1E698D3F8];
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      v12 = Attribute;
      v13 = AGWeakAttributeGetAttribute();
      if (v13 != v11)
      {
        v14 = project #1 <A>(_:) in ModifiedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(*(v5 + 48), v12, v13, a4, a5 & 1, v5, v24, a1, a3, *(v5 + 48));
        outlined destroy of ModifiedElements(v24);
        return v14 & 1;
      }
    }

    outlined destroy of ModifiedElements(v24);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    outlined destroy of [GlassContainer.Item](&v16, &lazy cache variable for type metadata for ModifiedElements?, &type metadata for ModifiedElements, MEMORY[0x1E69E6720], type metadata accessor for [_ViewList_ID]);
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t project #1 <A>(_:) in ModifiedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a5;
  v40 = *MEMORY[0x1E69E9840];
  if ((Attribute.tryToReuse(by:indirectMap:testOnly:)(a3, a4, a5, a2, a10) & 1) != 0 && (v15 = *(a6 + 80), v36[0] = *(a6 + 64), v36[1] = v15, v16 = *(a6 + 96), v17 = *(a6 + 80), v33 = *(a6 + 64), v34 = v17, v35 = *(a6 + 96), v18 = a7[4], v19 = a7[5], v36[2] = v16, v37[0] = v18, v20 = a7[6], v22 = a7[4], v21 = a7[5], v37[1] = v19, v37[2] = v20, v30 = v22, v31 = v21, v32 = a7[6], outlined init with copy of _GraphInputs(v36, v29), outlined init with copy of _GraphInputs(v37, v29), v23 = _GraphInputs.tryToReuse(by:indirectMap:testOnly:)(&v30, a4, v13 & 1), v38[0] = v30, v38[1] = v31, v38[2] = v32, outlined destroy of _GraphInputs(v38), v39[0] = v33, v39[1] = v34, v39[2] = v35, outlined destroy of _GraphInputs(v39), v23))
  {
    v24 = *(a6 + 24);
    v25 = *(a6 + 32);
    __swift_project_boxed_opaque_existential_1(a6, v24);
    v26 = (*(v25 + 24))(a8, a7, a9, a4, v13 & 1, v24, v25);
  }

  else
  {
    v27 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      *&v38[0] = v27;
      *(&v38[0] + 1) = &type metadata for ModifiedElements;
      AGGraphAddTraceEvent();
    }

    v26 = 0;
  }

  return v26 & 1;
}

double ModifiedViewList.ListModifier.__ivar_destroyer()
{

  return result;
}

uint64_t ModifiedViewList.print(into:)(void *a1)
{
  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x6465696669646F6DLL, 0xE800000000000000);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    a1[2] = v3 + 1;
    v5 = 8224;
    v6 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v5 = 0x6465696669646F6DLL;
    v6 = 0xE800000000000000;
  }

  MEMORY[0x193ABEDD0](v5, v6);
  v7 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v7);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](14883, 0xE200000000000000);

  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  result = (*(v9 + 88))(a1, v8, v9);
  v11 = a1[2];
  if (!v11)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (!v12)
  {
    a1[2] = v13;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v10);
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t TypedUnaryViewGenerator.tryToReuse(by:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  Attribute = AGWeakAttributeGetAttribute();
  v15 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8] || (v16 = Attribute, v17 = AGWeakAttributeGetAttribute(), v17 == v15))
  {
    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v11, static Log.graphReuse);
    _s2os6LoggerVSgWOcTm_0(v18, v13, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    v19 = type metadata accessor for Logger();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v13, 1, v19) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v13, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136315138;
        v25 = _typeName(_:qualified:)();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v30);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_18D018000, v21, v22, "Reuse failed: missing attribute for %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x193AC4820](v24, -1, -1);
        MEMORY[0x193AC4820](v23, -1, -1);
      }

      (*(v20 + 8))(v13, v19);
    }

    return 0;
  }

  else
  {

    return Attribute.tryToReuse(by:indirectMap:testOnly:)(v17, a4, a5 & 1, v16, a7);
  }
}

uint64_t _ViewList_Subgraph.__allocating_init(subgraph:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 1;
  *(result + 16) = a1;
  return result;
}

uint64_t _ViewList_Subgraph.init(subgraph:)(uint64_t a1)
{
  *(v1 + 24) = 1;
  *(v1 + 16) = a1;
  return v1;
}

double _ViewList_Subgraph.wrapping(_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &unk_1F00840F8;
  lazy protocol witness table accessor for type SubgraphList and conformance SubgraphList();
  a2[4] = v5;
  v6 = swift_allocObject();
  *a2 = v6;
  outlined init with copy of AnyTrackedValue(a1, v6 + 16);
  *(v6 + 56) = v2;

  return result;
}

uint64_t _ViewList_Subgraph.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _ViewList_SubgraphElements.base.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of AnyTrackedValue(a1, v1);
}

void *_ViewList_SublistSubgraphStorage.retain()()
{
  v1 = *v0;
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v3;
    while (1)
    {
      v7 = v6 - 1;
      if (__OFSUB__(v6, 1))
      {
        break;
      }

      if (v4)
      {
        v8 = MEMORY[0x193AC03C0](v6 - 1, v1);
        v9 = *(v8 + 24);
        if (!v9)
        {
LABEL_13:

LABEL_14:
          if (v6 >= v3)
          {
            return 0;
          }

          if (v2)
          {
            result = __CocoaSet.count.getter();
          }

          else
          {
            result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (result < v6)
          {
            __break(1u);
          }

          else if ((v6 & 0x8000000000000000) == 0)
          {
            if (v2)
            {
              result = __CocoaSet.count.getter();
            }

            else
            {
              result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (result >= v3)
            {
              if (!v4 || v6 == v3)
              {

                if (!v2)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                type metadata accessor for _ViewList_Subgraph();

                v11 = v6;
                do
                {
                  v12 = v11 + 1;
                  _ArrayBuffer._typeCheckSlowPath(_:)(v11);
                  v11 = v12;
                }

                while (v3 != v12);
                if (!v2)
                {
LABEL_30:
                  v13 = v5 + 32;
                  v14 = (2 * v3) | 1;
LABEL_33:
                  type metadata accessor for _ViewList_SubgraphRelease();
                  result = swift_allocObject();
                  result[2] = v5;
                  result[3] = v13;
                  result[4] = v6;
                  result[5] = v14;
                  return result;
                }
              }

              v5 = _CocoaArrayWrapper.subscript.getter();
              v13 = v15;
              v6 = v16;
              v14 = v17;
              goto LABEL_33;
            }

            goto LABEL_43;
          }

          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v8 = *(v1 + 32 + 8 * v7);

        v9 = *(v8 + 24);
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      if (!AGSubgraphIsValid())
      {
        goto LABEL_13;
      }

      *(v8 + 24) = v9 + 1;

      --v6;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }

    v3 = result;
  }
}

double _ViewList_SubgraphElements.wrap(subgraph:)(uint64_t a1)
{

  MEMORY[0x193ABF170](v2);
  if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return result;
}

uint64_t _ViewList_SubgraphElements.makeElements(from:inputs:indirectMap:body:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *&v20[0] = v7[5];
  if (_ViewList_SublistSubgraphStorage.isValid.getter())
  {
    v14 = v7[3];
    v15 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v14);
    v16 = *(a3 + 48);
    v20[2] = *(a3 + 32);
    v20[3] = v16;
    v20[4] = *(a3 + 64);
    v21 = *(a3 + 80);
    v17 = *(a3 + 16);
    v20[0] = *a3;
    v20[1] = v17;
    v18 = (*(v15 + 16))(a1, a2, v20, a4, a5, a6, v14, v15);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v18 = 1;
  }

  return v18 & 1;
}

BOOL _ViewList_SublistSubgraphStorage.isValid.getter()
{
  v1 = *v0;
  v2 = *v0 & 0xFFFFFFFFFFFFFF8;
  if (*v0 >> 62)
  {
LABEL_17:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x193AC03C0](v4, v1);
      if (__OFADD__(v5, 1))
      {
LABEL_13:
        __break(1u);
LABEL_14:

        return v3 == v5;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(v1 + 8 * v4 + 32);

      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }
    }

    if (!*(v6 + 24))
    {
      goto LABEL_14;
    }

    IsValid = AGSubgraphIsValid();

    v4 = v5 + 1;
  }

  while ((IsValid & 1) != 0);
  return v3 == v5;
}

uint64_t _ViewList_SubgraphElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v10 = a2[3];
  v11 = a2[4];
  v12 = __swift_project_boxed_opaque_existential_1(a2, v10);

  return specialized _ViewList_SubgraphElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(a1, v12, a3, a4, v6, v5, v10, v11);
}

uint64_t protocol witness for _ViewList_Elements.makeElements(from:inputs:indirectMap:body:) in conformance _ViewList_SubgraphElements(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v19[0] = v6[5];
  if (_ViewList_SublistSubgraphStorage.isValid.getter())
  {
    v13 = v6[3];
    v14 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v13);
    v15 = *(a3 + 48);
    v19[2] = *(a3 + 32);
    v19[3] = v15;
    v19[4] = *(a3 + 64);
    v20 = *(a3 + 80);
    v16 = *(a3 + 16);
    v19[0] = *a3;
    v19[1] = v16;
    v17 = (*(v14 + 16))(a1, a2, v19, a4, a5, a6, v13, v14);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t protocol witness for _ViewList_Elements.tryToReuseElement(at:by:at:indirectMap:testOnly:) in conformance _ViewList_SubgraphElements(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v10 = a2[3];
  v11 = a2[4];
  v12 = __swift_project_boxed_opaque_existential_1(a2, v10);

  return specialized _ViewList_SubgraphElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(a1, v12, a3, a4, v6, v5, v10, v11);
}

void *_ViewList_SubgraphRelease.deinit()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in _ViewList_SubgraphRelease.deinit(v0);
  static Update.end()();
  _MovableLockUnlock(v1);
  swift_unknownObjectRelease();
  return v0;
}

void closure #1 in _ViewList_SubgraphRelease.deinit(void *a1)
{
  v1 = a1[4];
  v2 = a1[5] >> 1;
  v3 = v2 - v1;
  if (v2 != v1)
  {
    if (v2 <= v1)
    {
      __break(1u);
    }

    else
    {
      v4 = a1[3] + 8 * v1;
      do
      {
        v5 = *v4;
        v6 = *(*v4 + 24) - 1;
        *(*v4 + 24) = v6;
        if (!v6)
        {
          v7 = *(*v5 + 104);

          v7(v8);
          if (AGSubgraphIsValid())
          {
            AGSubgraphRef.willInvalidate(isInserted:)(1);
            AGSubgraphInvalidate();
          }
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }
  }
}

uint64_t _ViewList_SubgraphRelease.__deallocating_deinit()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in _ViewList_SubgraphRelease.deinit(v0);
  static Update.end()();
  _MovableLockUnlock(v1);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SubgraphList.print(into:)(void *a1)
{
  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x6870617267627573, 0xE800000000000000);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    a1[2] = v3 + 1;
    v5 = 8224;
    v6 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v5 = 0x6870617267627573;
    v6 = 0xE800000000000000;
  }

  MEMORY[0x193ABEDD0](v5, v6);
  MEMORY[0x193ABEDD0](2112035, 0xE300000000000000);
  type metadata accessor for _ViewList_Subgraph();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  result = (*(v8 + 88))(a1, v7, v8);
  v10 = a1[2];
  if (!v10)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    a1[2] = v12;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v9);
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

LABEL_10:
  __break(1u);
  return result;
}

double protocol witness for _ViewList_SublistTransform_Item.apply(sublist:) in conformance SubgraphList.Transform(uint64_t a1)
{

  MEMORY[0x193ABF170](v2);
  if (*((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return result;
}

double protocol witness for _ViewList_SublistTransform_Item.wrapSubgraph(into:) in conformance SubgraphList.Transform(void *a1)
{

  MEMORY[0x193ABF170](v2);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return result;
}

uint64_t specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[43] = 0;
  *&v11 = 0;
  v10 = a1;
  BYTE8(v11) = 3;
  *&v12 = 0;
  BYTE8(v12) = 5;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *v14 = a4;
  memset(&v14[8], 0, 32);
  v14[40] = 1;
  *&v14[41] = 768;

  specialized Paint._apply(to:)(&v10);
  if (BYTE8(v12) == 2)
  {
    v5 = v12;
  }

  else
  {
    type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for ShapeStyleBox<AngularGradient>, &type metadata for AngularGradient, &protocol witness table for AngularGradient, type metadata accessor for ShapeStyleBox);
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = *v4;
    *(v5 + 32) = v6;
    *(v5 + 48) = *(v4 + 32);
  }

  v8[4] = *v14;
  v9[0] = *&v14[16];
  *(v9 + 12) = *&v14[28];
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  outlined destroy of _ShapeStyle_Shape(v8);
  return v5;
}

double specialized _ForegroundStyleModifier2.ForegroundStyleEnvironment.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;
  type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>();

  v5 = AGGraphGetValue();
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  v17[0] = *v5;
  v17[1] = v7;
  v18 = v6;
  v8 = *a2;
  v9 = a2[1];

  v10 = specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(0, v8, v9, 0);
  outlined destroy of AngularGradient(v17);
  v11 = *(AGGraphGetValue() + 40);
  v13 = *a2;
  v12 = a2[1];

  v14 = specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(0, v13, v12, 0, v11);

  type metadata accessor for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>, type metadata accessor for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>, &protocol witness table for ShapeStylePair<A, B>, type metadata accessor for ShapeStyleBox);
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *(v15 + 24) = v14;
  swift_retain_n();
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a2, v15);

  if (v12)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v13, *a2);
  }

  return result;
}

uint64_t specialized PreferenceTransform.value.getter(unint64_t Value)
{
  v1 = Value;
  v2 = HIDWORD(Value);
  if (*MEMORY[0x1E698D3F8] == HIDWORD(Value))
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    v3 = *Value;
    v4 = *(Value + 8);
  }

  v15 = v3;
  v16 = v4;
  MEMORY[0x1EEE9AC00](Value);
  v11[4] = v1;
  v11[5] = v2;
  v12 = &v15;
  type metadata accessor for (_:)();
  v5 = AGGraphGetValue();
  v6 = *v5;
  v7 = *(v5 + 8);
  v14[0] = *v5;
  v14[1] = v7;
  if ((v8 & 2) == 0)
  {
    specialized closure #1 in PreferenceTransform.value.getter(v6, v7, v1, &v15);
    return v15;
  }

  v13 = 1;
  MEMORY[0x1EEE9AC00](v6);
  v10[2] = &v13;
  v10[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
  v10[4] = v11;
  v10[5] = v14;

  result = specialized static Update.syncMain(_:)(partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:), v10);
  if ((v13 & 1) == 0)
  {

    return v15;
  }

  __break(1u);
  return result;
}

void specialized AnchorWriter.value.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = HIDWORD(a1);
  v4 = HIDWORD(a2);
  v19 = a1;
  v20 = a2;
  type metadata accessor for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>(0);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  v8 = Value[2];
  v17[0] = *Value;
  v17[1] = v7;
  v17[2] = v8;
  if ((v9 & 2) == 0)
  {

    specialized closure #1 in AnchorWriter.value.getter(v6, v7, v8, v3, v2, v4);
LABEL_9:

    return;
  }

  v24[0] = 0;
  MEMORY[0x1EEE9AC00](Value);
  v16[2] = v24;
  v16[3] = partial apply for specialized closure #1 in AnchorWriter.value.getter;
  v16[4] = &v18;
  v16[5] = v17;
  v10 = objc_opt_self();

  if ([v10 isMainThread])
  {
    v24[0] = specialized closure #1 in AnchorWriter.value.getter(v6, v7, v8, v3, v2, v4);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
    *(v11 + 24) = v16;
    v12 = AGSubgraphGetCurrent();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v21[0] = thunk for @callee_guaranteed () -> ()partial apply;
    v21[1] = v11;
    v22 = v12;
    v23 = CurrentAttribute;
    v14 = one-time initialization token for _lock;

    if (v14 != -1)
    {
      swift_once();
    }

    _MovableLockSyncMain(static Update._lock, v21, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
    v15 = v22;

    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }
  }

  if (v24[0])
  {
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t *_s7SwiftUI13LayoutGesturePAAE11childEvents33_05F3243F43C616B77CCF383885E80E96LL6events5index3boxSDyAA7EventIDVAA0Q4Type_pGAL_SiAA0cD3BoxAELLCtFAA07DefaultcD0V_Tt2g5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  v6 = *(a3 + 160);
  if (*(v6 + 16) <= a2)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v7 = (v6 + 208 * a2);
    v78[0] = v7[2];
    v8 = v7[3];
    v9 = v7[4];
    v10 = v7[6];
    v80 = v7[5];
    v81 = v10;
    v78[1] = v8;
    v79 = v9;
    v11 = v7[7];
    v12 = v7[8];
    v13 = v7[10];
    v84 = v7[9];
    v85 = v13;
    v82 = v11;
    v83 = v12;
    v14 = v7[11];
    v15 = v7[12];
    v16 = v7[13];
    *(v88 + 12) = *(v7 + 220);
    v87 = v15;
    v88[0] = v16;
    v86 = v14;
    v17 = *(&v79 + 1);
    v89[0] = *(&v79 + 1);
    if (*(*(&v79 + 1) + 16))
    {
      v18 = a1 + 64;
      v19 = 1 << *(a1 + 32);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(a1 + 64);
      v63 = *&v78[0];
      outlined init with copy of LayoutGestureBox.Child(v78, &v71);
      outlined init with copy of Set<EventID>(v89, &v71, &lazy cache variable for type metadata for Set<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E64E8]);
      v22 = (v19 + 63) >> 6;
      v62 = v17 + 56;

      v23 = 0;
      v65 = a1 + 64;
      v66 = MEMORY[0x1E69E7CC8];
      v64 = v17;
      while (1)
      {
        if (!v21)
        {
          if (v22 <= v23 + 1)
          {
            v26 = v23 + 1;
          }

          else
          {
            v26 = v22;
          }

          v27 = v26 - 1;
          while (1)
          {
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v25 >= v22)
            {
              v21 = 0;
              v74 = 0;
              v72 = 0u;
              v73 = 0u;
              v23 = v27;
              v71 = 0u;
              goto LABEL_21;
            }

            v21 = *(v18 + 8 * v25);
            ++v23;
            if (v21)
            {
              v23 = v25;
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v25 = v23;
LABEL_20:
        v28 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v29 = v28 | (v25 << 6);
        v30 = (*(a1 + 48) + 16 * v29);
        v31 = *v30;
        v32 = v30[1];
        outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v29, &v68);
        *&v71 = v31;
        *(&v71 + 1) = v32;
        outlined init with take of AnyTrackedValue(&v68, &v72);
LABEL_21:
        v75 = v71;
        v76[0] = v72;
        v76[1] = v73;
        v77 = v74;
        v33 = v71;
        if (!v71)
        {

          outlined destroy of Set<EventID>(v89);
          outlined destroy of LayoutGestureBox.Child(v78);
          return v66;
        }

        v34 = *(&v75 + 1);
        outlined init with take of AnyTrackedValue(v76, &v68);
        v35 = v69;
        v36 = v70;
        __swift_project_boxed_opaque_existential_1(&v68, v69);
        (*(v36 + 24))(&v71, v35, v36);
        if (!v71)
        {
          goto LABEL_29;
        }

        if (((*(*v71 + 128))(v63) & 1) == 0)
        {
          break;
        }

        v37 = a1;
        outlined init with copy of AnyTrackedValue(&v68, &v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v67[0] = v66;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
        v41 = v66[2];
        v42 = (v40 & 1) == 0;
        v43 = __OFADD__(v41, v42);
        v44 = v41 + v42;
        if (v43)
        {
          goto LABEL_48;
        }

        v45 = v40;
        if (v66[3] >= v44)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v59 = v39;
            specialized _NativeDictionary.copy()();
            v39 = v59;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
          if ((v45 & 1) != (v46 & 1))
          {
            goto LABEL_52;
          }
        }

        a1 = v37;
        v66 = *&v67[0];
        if (v45)
        {
          v24 = (*(*&v67[0] + 56) + 40 * v39);
          __swift_destroy_boxed_opaque_existential_1(v24);
          outlined init with take of AnyTrackedValue(&v71, v24);
        }

        else
        {
          *(*&v67[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v53 = (v66[6] + 16 * v39);
          *v53 = v33;
          v53[1] = v34;
          outlined init with take of AnyTrackedValue(&v71, v66[7] + 40 * v39);

          v54 = v66[2];
          v43 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v43)
          {
            goto LABEL_49;
          }

          v66[2] = v55;
        }

LABEL_9:
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v18 = v65;
      }

LABEL_29:
      if (*(v64 + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x193AC11A0](v33);
        MEMORY[0x193AC11A0](v34);
        v47 = Hasher._finalize()();
        v48 = -1 << *(v64 + 32);
        v49 = v47 & ~v48;
        if ((*(v62 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          v50 = ~v48;
          while (1)
          {
            v51 = (*(v64 + 48) + 16 * v49);
            if (v51[1] == v34 && *v51 == v33)
            {
              break;
            }

            v49 = (v49 + 1) & v50;
            if (((*(v62 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          outlined init with copy of AnyTrackedValue(&v68, &v71);
          v56 = *(&v72 + 1);
          v57 = v73;
          __swift_mutable_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
          *&v67[0] = 0;
          (*(v57 + 32))(v67, v56, v57);
          outlined init with copy of AnyTrackedValue(&v71, v67);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v33, v34, v58);
          __swift_destroy_boxed_opaque_existential_1(&v71);
        }
      }

      goto LABEL_9;
    }

    outlined init with copy of LayoutGestureBox.Child(v78, &v71);
    v61 = specialized Dictionary.optimisticFilter(_:)(a1, v78);
    outlined destroy of LayoutGestureBox.Child(v78);
    return v61;
  }

  return result;
}

void _s7SwiftUI13LayoutGesturePAAE5phase33_05F3243F43C616B77CCF383885E80E96LL3boxAA0D5PhaseOyytGAA0cD3BoxAELLC_tFAA07DefaultcD0V_Tt1g5(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 160);
  v4 = *(v3 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = v3 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *(v3 + 16);
      v10 = (v7 + 208 * v6);
      v11 = v6;
      while (1)
      {
        if (v11 >= v9)
        {
          goto LABEL_36;
        }

        v58 = *v10;
        v12 = v10[1];
        v13 = v10[2];
        v14 = v10[4];
        v61 = v10[3];
        v62 = v14;
        v59 = v12;
        v60 = v13;
        v15 = v10[5];
        v16 = v10[6];
        v17 = v10[8];
        v65 = v10[7];
        v66 = v17;
        v63 = v15;
        v64 = v16;
        v18 = v10[9];
        v19 = v10[10];
        v20 = v10[11];
        *(v69 + 12) = *(v10 + 188);
        v68 = v19;
        v69[0] = v20;
        v67 = v18;
        v6 = v11 + 1;
        if (*(*(&v60 + 1) + 16))
        {
          break;
        }

        v10 += 13;
        ++v11;
        if (v4 == v6)
        {
          goto LABEL_15;
        }
      }

      v54 = v7;
      outlined init with copy of LayoutGestureBox.Child(&v58, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
        v8 = v70;
      }

      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v8 = v70;
      }

      *(v8 + 16) = v23 + 1;
      v24 = (v8 + 208 * v23);
      v24[2] = v58;
      v25 = v59;
      v26 = v60;
      v27 = v62;
      v24[5] = v61;
      v24[6] = v27;
      v24[3] = v25;
      v24[4] = v26;
      v28 = v63;
      v29 = v64;
      v30 = v66;
      v24[9] = v65;
      v24[10] = v30;
      v24[7] = v28;
      v24[8] = v29;
      v31 = v67;
      v32 = v68;
      v33 = v69[0];
      *(v24 + 220) = *(v69 + 12);
      v24[12] = v32;
      v24[13] = v33;
      v24[11] = v31;
      v7 = v54;
    }

    while (v4 - 1 != v11);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v34 = *(v8 + 16);
  if (v34)
  {
    v70 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
    if (*(v8 + 16))
    {
      v35 = 0;
      v36 = v70;
      v37 = v34 - 1;
      v38 = 32;
      do
      {
        v58 = *(v8 + v38);
        v39 = *(v8 + v38 + 16);
        v40 = *(v8 + v38 + 32);
        v41 = *(v8 + v38 + 64);
        v61 = *(v8 + v38 + 48);
        v62 = v41;
        v59 = v39;
        v60 = v40;
        v42 = *(v8 + v38 + 80);
        v43 = *(v8 + v38 + 96);
        v44 = *(v8 + v38 + 128);
        v65 = *(v8 + v38 + 112);
        v66 = v44;
        v63 = v42;
        v64 = v43;
        v45 = *(v8 + v38 + 144);
        v46 = *(v8 + v38 + 160);
        v47 = *(v8 + v38 + 176);
        *(v69 + 12) = *(v8 + v38 + 188);
        v68 = v46;
        v69[0] = v47;
        v67 = v45;
        if (BYTE12(v59))
        {
          goto LABEL_37;
        }

        type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
        outlined init with copy of LayoutGestureBox.Child(&v58, v57);
        Value = AGGraphGetValue();
        v49 = *Value;
        v50 = Value[1];
        if (v50 > 1)
        {
          if (v50 == 2)
          {
LABEL_24:
            outlined destroy of LayoutGestureBox.Child(&v58);
            goto LABEL_27;
          }

          outlined destroy of LayoutGestureBox.Child(&v58);
        }

        else
        {
          if (Value[1])
          {
            goto LABEL_24;
          }

          outlined destroy of LayoutGestureBox.Child(&v58);
          if ((v49 & 1) == 0)
          {
            v56 = 0;
            goto LABEL_27;
          }
        }

        v56 = v49;
LABEL_27:
        v70 = v36;
        v52 = *(v36 + 16);
        v51 = *(v36 + 24);
        if (v52 >= v51 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
          v36 = v70;
        }

        *(v36 + 16) = v52 + 1;
        v53 = v36 + 2 * v52;
        *(v53 + 32) = v56;
        *(v53 + 33) = v50;
        if (v37 == v35)
        {

          goto LABEL_34;
        }

        v38 += 208;
        ++v35;
      }

      while (v35 < *(v8 + 16));
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
LABEL_34:
    specialized Collection<>.merged()(v36, a2);
  }
}

void _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC21resetTerminalChildren7gestureyx_tAA0cD0RzlFAA07DefaultcD0V_Ttg5()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(*(v0 + 160) + 16);
  if (v2)
  {
    v3 = *(v0 + 160);
    if (*(v3 + 16))
    {
      v4 = 0;
      v5 = v2 - 1;
      v6 = MEMORY[0x1E69E7CA8];
      v7 = 44;
      while (1)
      {
        v8 = (v3 + v7);
        v111 = *(v8 - 12);
        v9 = *(v8 + 4);
        v10 = *(v8 + 20);
        v11 = *(v8 + 36);
        v115 = *(v8 + 52);
        v114 = v11;
        v113 = v10;
        v112 = v9;
        v12 = *(v8 + 68);
        v13 = *(v8 + 84);
        v14 = *(v8 + 100);
        v119 = *(v8 + 116);
        v118 = v14;
        v117 = v13;
        v116 = v12;
        v15 = *(v8 + 132);
        v16 = *(v8 + 148);
        v17 = *(v8 + 164);
        *(v122 + 12) = v8[11];
        v122[0] = v17;
        v121 = v16;
        v120 = v15;
        if (!*(*(&v113 + 1) + 16))
        {
          goto LABEL_10;
        }

        if (BYTE12(v112))
        {
          goto LABEL_33;
        }

        type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, v6 + 8, type metadata accessor for GesturePhase);
        outlined init with copy of LayoutGestureBox.Child(&v111, __dst);
        Value = AGGraphGetValue();
        v19 = Value[1];
        if (v19 != 2 && (v19 != 3 || *Value))
        {
          break;
        }

        swift_beginAccess();
        v20 = *(v1 + 160);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 160) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v1 + 160) = v20;
        }

        if (v4 >= *(v20 + 2))
        {
          goto LABEL_32;
        }

        v22 = &v20[v7];
        if (*(*&v20[v7 + 28] + 16))
        {
          if ((v22[16] & 1) == 0)
          {
            v23 = &v20[v7];
            v24 = *&v20[v7 + 116];
            v25 = *&v20[v7 + 148];
            v107 = *&v20[v7 + 132];
            v108 = v25;
            v109 = *&v20[v7 + 164];
            v26 = *&v20[v7 + 52];
            v27 = *&v20[v7 + 84];
            v103 = *&v20[v7 + 68];
            v104 = v27;
            v105 = *&v20[v7 + 100];
            v106 = v24;
            v101 = *&v20[v7 + 36];
            v102 = v26;
            memmove(__dst, &v20[v7 + 36], 0x90uLL);
            if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOg(__dst) == 1)
            {
              v98 = v107;
              v99 = v108;
              v100 = v109;
              v94 = v103;
              v95 = v104;
              v96 = v105;
              v97 = v106;
              v29 = v101;
              v28 = v102;
            }

            else
            {
              v89 = v107;
              v90 = v108;
              v91 = v109;
              v85 = v103;
              v86 = v104;
              v87 = v105;
              v88 = v106;
              v83 = v101;
              v84 = v102;
              if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOg(&v83) == 1)
              {
                destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v83);
                v30 = AGGraphGetValue();
                v92 = *v30;
                v31 = v30[4];
                v33 = v30[1];
                v32 = v30[2];
                v95 = v30[3];
                v96 = v31;
                v93 = v33;
                v94 = v32;
                v34 = v30[8];
                v36 = v30[5];
                v35 = v30[6];
                v99 = v30[7];
                v100 = v34;
                v97 = v36;
                v98 = v35;
                v37 = v34.i64[1];
                v58 = v94;
                v59 = v95;
                v38 = *(v93.i64 + 4);
                v56 = v93.i8[1];
                v57 = v93.i8[0];
                v55 = v92.i64[1];
                v39 = v92.i8[0];
                outlined init with copy of GestureDebug.Data(&v92, &v69);
                v80 = v98;
                v81 = v99;
                v82 = v100.i8[0];
                v41 = v96;
                v40 = v97;
              }

              else
              {
                v42 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v83);
                v58 = *(v42 + 32);
                v59 = *(v42 + 48);
                v38 = *(v42 + 20);
                v56 = *(v42 + 17);
                v57 = *(v42 + 16);
                v54 = *(v42 + 136);
                v55 = *(v42 + 8);
                v39 = *v42;
                v94 = v103;
                v95 = v104;
                v98 = v107;
                v99 = v108;
                v96 = v105;
                v97 = v106;
                v92 = v101;
                v93 = v102;
                v100 = v109;
                v43 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v92);
                outlined init with copy of GestureDebug.Data(v43, &v69);
                v44 = *(v42 + 112);
                v80 = *(v42 + 96);
                v81 = v44;
                v82 = *(v42 + 128);
                v41 = *(v42 + 64);
                v40 = *(v42 + 80);
                v37 = v54;
              }

              v78 = v41;
              v79 = v40;
              v66 = v80;
              v67 = v81;
              v68.i8[0] = v82;
              v64 = v41;
              v65 = v40;
              v60.i8[0] = v39;
              v60.i64[1] = v55;
              v61.i8[0] = v57;
              v61.i8[1] = v56;
              *(v61.i64 + 4) = v38;
              v62 = v58;
              v63 = v59;
              v68.i64[1] = v37;
              _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOi_(&v60);
              v75 = v66;
              v76 = v67;
              v77 = v68;
              v71 = v62;
              v72 = v63;
              v73 = v64;
              v74 = v65;
              v69 = v60;
              v70 = v61;
              _ViewInputs.base.modify();
              v98 = v75;
              v99 = v76;
              v100 = v77;
              v94 = v71;
              v95 = v72;
              v96 = v73;
              v97 = v74;
              v29 = v69;
              v28 = v70;
            }

            v92 = v29;
            v93 = v28;
            v83 = *(v23 + 36);
            v45 = *(v23 + 52);
            v46 = *(v23 + 68);
            v47 = *(v23 + 100);
            v86 = *(v23 + 84);
            v87 = v47;
            v84 = v45;
            v85 = v46;
            v48 = *(v23 + 116);
            v49 = *(v23 + 132);
            v50 = *(v23 + 164);
            v90 = *(v23 + 148);
            v91 = v50;
            v88 = v48;
            v89 = v49;
            v51 = outlined destroy of [GlassContainer.Item](&v83, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData, MEMORY[0x1E69E6720], type metadata accessor for [_ViewList_ID]);
            *(v23 + 116) = v97;
            *(v23 + 132) = v98;
            *(v23 + 148) = v99;
            *(v23 + 164) = v100;
            *(v23 + 52) = v93;
            *(v23 + 68) = v94;
            *(v23 + 84) = v95;
            *(v23 + 100) = v96;
            *(v23 + 36) = v92;
            *(v22 + 3) = 0;
            v22[16] = 1;
            v52 = *&v20[v7 + 4];
            if (v52)
            {
              AGSubgraphRef.willInvalidate(isInserted:)(1);
              AGSubgraphInvalidate();
            }

            *&v20[v7 + 4] = 0;
            (*(**(v22 - 12) + 120))(v51);
            v6 = MEMORY[0x1E69E7CA8];
          }

          v53 = &v20[v7];

          *(v53 + 20) = MEMORY[0x1E69E7CC8];
          *(v22 + 28) = MEMORY[0x1E69E7CD0];
          ++*v53;
        }

        *(v1 + 160) = v20;
        swift_endAccess();
        outlined destroy of LayoutGestureBox.Child(&v111);
        ++*(v1 + 172);
        if (v5 == v4)
        {
          return;
        }

LABEL_28:
        v3 = *(v1 + 160);
        v7 += 208;
        if (++v4 >= *(v3 + 16))
        {
          goto LABEL_31;
        }
      }

      outlined destroy of LayoutGestureBox.Child(&v111);
LABEL_10:
      if (v5 == v4)
      {
        return;
      }

      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }
}

uint64_t specialized UpdateLayoutGestureBox.value.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{

  Value = AGGraphGetValue();
  LayoutGestureBox.updateResetSeed(_:)(*Value);
  v5 = AGGraphGetValue();
  v7 = v6;
  v8 = *v5;

  if (v7)
  {
    LayoutGestureBox.updateResponder(_:)(v8);
  }

  type metadata accessor for [EventID : EventType](0);
  AGGraphGetValue();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v10 = result;

    specialized LayoutGestureBox.willSendEvents<A>(_:gesture:boxValueAttribute:)(v11, v10);

    return a3;
  }

  return result;
}

void specialized LayoutChildEvents.value.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  v2 = *AGGraphGetValue();
  swift_beginAccess();
  v3 = *(v2 + 160);
  v4 = v3 - 144;
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 + 184);
    v4 += 208;
    if (v6 == v1)
    {

      return;
    }
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

uint64_t specialized LayoutChildSeed.value.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(*Value + 176);
  swift_beginAccess();
  v5 = *(v3 + 160);
  v6 = v5 - 164;
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = (v6 + 208);
    v9 = *(v6 + 204);
    v6 += 208;
    if (v9 == v1)
    {
      v10 = *v8;
      return (v10 + v4);
    }
  }

  v10 = 0x10000;
  return (v10 + v4);
}

void specialized LayoutDebug.value.getter(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v6 = HIDWORD(a1);
  v7 = *AGGraphGetValue();
  swift_beginAccess();
  v8 = *(v7 + 160);
  v9 = *(v8 + 16);

  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = 0;
    v12 = v8 + 80;
    do
    {
      v13 = (v12 + 208 * v11);
      v14 = v9 - v11;
      while (1)
      {
        if (v11 >= *(v8 + 16))
        {
          __break(1u);
          return;
        }

        __src[0] = *(v13 - 3);
        v15 = *(v13 - 2);
        v16 = *(v13 - 1);
        v17 = v13[1];
        __src[3] = *v13;
        __src[4] = v17;
        __src[1] = v15;
        __src[2] = v16;
        v18 = v13[2];
        v19 = v13[3];
        v20 = v13[5];
        __src[7] = v13[4];
        __src[8] = v20;
        __src[5] = v18;
        __src[6] = v19;
        v21 = v13[6];
        v22 = v13[7];
        v23 = v13[8];
        *(&__src[11] + 12) = *(v13 + 140);
        __src[10] = v22;
        __src[11] = v23;
        __src[9] = v21;
        v87 = *v13;
        v24 = v13[1];
        v25 = v13[2];
        v26 = v13[4];
        v90 = v13[3];
        v91 = v26;
        v88 = v24;
        v89 = v25;
        v27 = v13[5];
        v28 = v13[6];
        v29 = v13[7];
        v95 = v13[8];
        v94 = v29;
        v92 = v27;
        v93 = v28;
        if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOg(&v87) != 1)
        {
          break;
        }

        v13 += 13;
        ++v11;
        if (!--v14)
        {
          goto LABEL_16;
        }
      }

      v65 = v12;
      v66 = v6;
      v86[6] = v93;
      v86[7] = v94;
      v86[8] = v95;
      v86[2] = v89;
      v86[3] = v90;
      v86[4] = v91;
      v86[5] = v92;
      v86[0] = v87;
      v86[1] = v88;
      if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOg(v86) == 1)
      {
        destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(v86);
        outlined init with copy of LayoutGestureBox.Child(__src, &v70);
        Value = AGGraphGetValue();
        v75 = *Value;
        v31 = Value[4];
        v33 = Value[1];
        v32 = Value[2];
        v78 = Value[3];
        v79 = v31;
        v76 = v33;
        v77 = v32;
        v34 = Value[8];
        v36 = Value[5];
        v35 = Value[6];
        v82 = Value[7];
        v83 = v34;
        v80 = v36;
        v81 = v35;
        outlined init with copy of GestureDebug.Data(&v75, &v70);
        outlined destroy of LayoutGestureBox.Child(__src);
        v64 = *(&v83 + 1);
        v62 = v78;
        v63 = v77;
        v37 = *(&v76 + 4);
        v60 = BYTE1(v76);
        v61 = v76;
        v59 = *(&v75 + 1);
        v38 = v75;
        v72 = v81;
        v73 = v82;
        v74 = v83;
        v40 = v79;
        v39 = v80;
      }

      else
      {
        v41 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(v86);
        v64 = *(v41 + 136);
        v62 = *(v41 + 48);
        v63 = *(v41 + 32);
        v37 = *(v41 + 20);
        v60 = *(v41 + 17);
        v61 = *(v41 + 16);
        v59 = *(v41 + 8);
        v38 = *v41;
        outlined init with copy of [GlassContainer.Item](&__src[3], &v70, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData, MEMORY[0x1E69E6720]);
        v42 = *(v41 + 112);
        v72 = *(v41 + 96);
        v73 = v42;
        v74 = *(v41 + 128);
        v40 = *(v41 + 64);
        v39 = *(v41 + 80);
      }

      v70 = v40;
      v71 = v39;
      v43 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v45 = *(v10 + 2);
      v44 = *(v10 + 3);
      if (v45 >= v44 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v10);
      }

      ++v11;
      LOBYTE(v79) = v74;
      v77 = v72;
      v78 = v73;
      v75 = v70;
      v76 = v71;
      *(v10 + 2) = v45 + 1;
      v46 = &v10[144 * v45];
      v46[32] = v38;
      v47 = *v85;
      *(v46 + 9) = *&v85[3];
      *(v46 + 33) = v47;
      *(v46 + 5) = v59;
      v46[48] = v61;
      v46[49] = v60;
      *(v46 + 52) = v37;
      *(v46 + 4) = v63;
      *(v46 + 5) = v62;
      *(v46 + 6) = v75;
      LOBYTE(v47) = v79;
      v49 = v77;
      v48 = v78;
      *(v46 + 7) = v76;
      *(v46 + 8) = v49;
      *(v46 + 9) = v48;
      v46[160] = v47;
      v50 = *&v84[3];
      *(v46 + 161) = *v84;
      *(v46 + 41) = v50;
      v12 = v65;
      *(v46 + 21) = v64;
      v6 = v66;
      a2 = v43;
    }

    while (v14 != 1);
  }

LABEL_16:

  type metadata accessor for CGPoint(0);
  v86[0] = *AGGraphGetValue();
  *&v72 = 0;
  v70 = 0u;
  v71 = 0u;
  BYTE8(v72) = 2;
  v51 = AGGraphGetValue();
  v53 = *(v51 + 16);
  v52 = *(v51 + 32);
  v87 = *v51;
  v88 = v53;
  v89 = v52;
  outlined init with copy of ViewTransform(&v87, __src);
  specialized ApplyViewTransform.convert(to:transform:)(&v70, &v87);
  outlined destroy of ViewTransform(&v87);
  outlined destroy of CoordinateSpace(&v70);
  _s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12GestureDebugO4DataV_SayAJGTt1g5(v10, __src);
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v54 = *AGGraphGetValue();
  v55 = *AGGraphGetValue();
  v67 = v86[0];
  v68 = *AGGraphGetValue();
  _s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCSS_SSt_SRySS_SStGTt1g5((MEMORY[0x1E69E7CC0] + 32), 0, &v70);
  *a4 = 4;
  *(a4 + 8) = &type metadata for DefaultLayoutGesture;
  v56 = swift_allocObject();
  memcpy((v56 + 16), __src, 0x121uLL);
  *(a4 + 136) = v56;
  *(a4 + 16) = v54;
  *(a4 + 20) = v6;
  *(a4 + 24) = v55;
  *(a4 + 32) = v67;
  *(a4 + 48) = v68;
  v57 = v73;
  *(a4 + 96) = v72;
  *(a4 + 112) = v57;
  *(a4 + 128) = v74;
  v58 = v71;
  *(a4 + 64) = v70;
  *(a4 + 80) = v58;
}

double specialized GesturePhase.applyingDependency(_:inheritedPhase:)@<D0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 1);
  v4 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = v3[32];
  if (a1 > 1u)
  {
    if (a1 != 2 && (a2 & 2) != 0)
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 768;
      return result;
    }

    if (a2)
    {
      goto LABEL_10;
    }
  }

  else if (!a1 || (a2 & 2) == 0)
  {
    goto LABEL_10;
  }

  if (v3[33] - 1 > 1)
  {
LABEL_10:
    v8 = *(v3 + 1);
    *a3 = *v3;
    *(a3 + 16) = v8;
    *(a3 + 32) = *(v3 + 16);
    goto LABEL_11;
  }

  *a3 = *v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7 & 1;
LABEL_11:
  outlined init with copy of [GlassContainer.Item](v3, v10, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  return result;
}

uint64_t specialized closure #2 in KeyPath.makeGetFunction()(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x289uLL);
  memcpy(v4, __src, sizeof(v4));
  outlined init with copy of GlassContainer.Item(__dst, v6);
  swift_getAtKeyPath();
  memcpy(v6, v4, 0x289uLL);
  return outlined destroy of GlassContainer.Item(v6);
}

void specialized ForEachState.update(view:)(char **a1)
{
  v2 = v1;
  v178 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v168 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO4ItemVGAI2IDVAA0gI4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder);
  v161 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v164 = &v146 - v10;
  _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO4ItemVGAI2IDVAA0gI4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v146 - v13;
  v158 = v2[19];
  if (AGSubgraphIsValid())
  {
    v162 = v5;
    v165 = v8;
    v166 = v7;
    v15 = AGMakeUniqueID();
    v160 = *(*v2 + 232);
    *(v2 + v160) = v15;
    v16 = *(*v2 + 240);
    LODWORD(v167) = *(v2 + v16);
    *(v2 + v16) = v167 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v2[31];
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v18 + 16));
    }

    else
    {
      v2[31] = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v18 + 24) >> 1);
    }

    v2[32] = 2;
    swift_beginAccess();
    v19 = v2[22];
    v20 = v2[25];
    v169 = v2;
    v163 = v16;
    if (!v19 || v20)
    {
      v43 = v4;
      v44 = v12;
      v45 = v2[23];
      v46 = v2[24];
      v167 = v169[26];
      v159 = v169[27];
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v177, type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>);
      v47 = v168;
      v169[22] = v43;
      v169[23] = v47;
      v169[24] = v6;
      v169[25] = v162;
      v48 = v166;
      v169[26] = v165;
      v169[27] = v48;
      v49 = v45;
      v50 = v169;
      outlined consume of ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>?(v19, v49, v46, v20, v167);
      v51 = v14;
      v52 = MEMORY[0x1E69E7CD0];
      *v51 = MEMORY[0x1E69E7CD0];
      v51[1] = v52;
      v151 = v44;
      swift_storeEnumTagMultiPayload();
      v53 = *(*v50 + 208);
      swift_beginAccess();
      v152 = v51;
      outlined assign with take of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits(v51, v50 + v53, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.LazyEdits, type metadata accessor for ForEachState.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO4ItemVGAI2IDVAA0gI4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GMaTm_0);
      swift_endAccess();
      v171[0] = *a1;
      v54 = a1[3];
      v55 = v161;
      v56 = v164;
      v57 = &v164[*(v161 + 18)];
      outlined init with copy of [GlassContainer.Item](v171, v177, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);

      IndexSet.init()();
      v153 = type metadata accessor for IndexSetBuilder(0);
      v58 = &v57[*(v153 + 20)];
      *v58 = 0;
      *(v58 + 1) = 0;
      v58[16] = 1;
      v59 = (v56 + *(v55 + 19));
      *v59 = v52;
      v59[1] = v52;
      v60 = v171[0];
      *v56 = v171[0];
      v56[1] = v54;
      v150 = v54;
      if ((*(v50 + 172) & 1) == 0)
      {
        v61 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        *(v50 + *(*v50 + 216)) = Counter;
        v63 = *v50;
        v64 = *(*v50 + 224);
        if ((*(v50 + v64) & 0x8000000000000000) != 0)
        {

          v72 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_127:
          *(v50 + *(v63 + 248)) = 0;
          *(v50 + v64) = v72;
          outlined destroy of [GlassContainer.Item](v171, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8], type metadata accessor for [_ViewList_ID]);
          v144 = v164;
          swift_beginAccess();
          v145 = v152;
          outlined init with copy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(v144, v152, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO4ItemVGAI2IDVAA0gI4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GMaTm_0);
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          outlined assign with take of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits(v145, v50 + v53, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.LazyEdits, type metadata accessor for ForEachState.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO4ItemVGAI2IDVAA0gI4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GMaTm_0);
          swift_endAccess();
          outlined destroy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(v144, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO4ItemVGAI2IDVAA0gI4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GMaTm_0);
          return;
        }

        v148 = *(*v50 + 224);
        v149 = v53;
        swift_beginAccess();
        v65 = v50[33];
        v168 = *(v65 + 16);
        v66 = *(*v50 + 272);
        swift_beginAccess();
        v147 = v66;
        v165 = *(v50 + v66);
        v166 = v65;
        v167 = *(v165 + 2);
        v170 = v52;
        v67 = *(v60 + 16);
        if (v67)
        {
          v68 = v60 + 32;
          memcpy(v177, (v60 + 32), 0x289uLL);
          if (!v150)
          {
LABEL_134:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          outlined init with copy of [GlassContainer.Item](v171, v176, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);

          outlined init with copy of GlassContainer.Item(v177, v176);
          v69 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
          if (v70)
          {

            v71 = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
          }

          else
          {
            *(swift_allocObject() + 16) = v69;
            v71 = partial apply for specialized closure #1 in KeyPath.makeGetFunction();
          }

          v75 = v71;
          memcpy(v176, v177, 0x289uLL);
          v162 = v75;
          (v75)(&v173, v176);
          v76 = v173;
          v77 = v174;
          v78 = v175;
          v79 = v166;
          if (*(v166 + 16) && (v80 = specialized __RawDictionaryStorage.find<A>(_:)(v173, v174, v175), (v81 & 1) != 0))
          {
            v82 = *(*(v79 + 56) + 8 * v80);
          }

          else
          {
            v82 = 0;
          }

          v176[0] = v82;
          type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item?(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item?, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO4ItemVGAI2IDVAA0gI4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GMaTm_0);
          _ViewInputs.base.modify();

          LOBYTE(v176[0]) = specialized Set.contains(_:)(v76, v77, v78, v165) & 1;
          _ViewInputs.base.modify();
          v38 = 0;
          v154 = 0;
          v155 = 0;
          v159 = 0;
          v156 = 0;
          v157 = 1;
          while (1)
          {
            if (v67 == v38)
            {
              goto LABEL_113;
            }

            (v162)(v176, v68);
            if (!v168 && !v167)
            {
              break;
            }

            v83 = v166;
            v84 = LODWORD(v176[0]);
            v85 = v176[1];
            v86 = v176[2];
            if (*(v166 + 16) && (v87 = specialized __RawDictionaryStorage.find<A>(_:)(LODWORD(v176[0]), v176[1], v176[2]), (v88 & 1) != 0))
            {
              v89 = *(*(v83 + 56) + 8 * v87);
              swift_beginAccess();
              *(v89 + 120) = v38;
              v90 = v169;
              v91 = *(v169 + v160);
              *(v89 + 128) = v38;
              *(v89 + 136) = v91;
              *(v89 + 144) = *(v90 + v163);
              --v168;
              LODWORD(v91) = *(v89 + 150);
              v92 = v91 ^ 1;
              v93 = v91 == 0;
              v94 = v159;
              if (v93)
              {
                v94 = v38;
              }

              v159 = v94;
              v154 = v38;
            }

            else
            {
              v92 = 0;
            }

            v95 = v38 + 1;
            if (specialized Set.contains(_:)(v84, v85, v86, v165))
            {
              swift_beginAccess();

              specialized Set._Variant.insert(_:)(&v172, v84, v85, v86);
              swift_endAccess();

              --v167;
            }

            else if (!v92)
            {
              v96 = v164;
              swift_beginAccess();
              v97 = &v96[*(v161 + 18)];
              v98 = *(v153 + 20);
              if ((v157 & 1) == 0)
              {
                if (v38 == v155)
                {
                  v38 = v156;
                  if (v95 < v156)
                  {
                    goto LABEL_120;
                  }
                }

                else
                {
                  IndexSet.insert(integersIn:)();
                }
              }

              v99 = &v97[v98];
              v156 = v38;
              *v99 = v38;
              *(v99 + 1) = v95;
              v99[16] = 0;
              swift_endAccess();
              v157 = 0;
              v155 = v95;
            }

            v68 += 656;
            v38 = v95;
            if (v67 == v95)
            {
              goto LABEL_59;
            }
          }

          v168 = 0;
LABEL_59:
          outlined destroy of GlassContainer.Item(v177);

          v74 = v166;
          v38 = v159;
          v67 = v155;
          v73 = v157;
        }

        else
        {
          outlined init with copy of [GlassContainer.Item](v171, v177, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);

          v154 = 0;
          v156 = 0;
          v38 = 0;
          v73 = 1;
          v74 = v65;
        }

        v100 = *(*v169 + 248);
        if ((*(v169 + v100) & 1) == 0)
        {
          v101 = v164;
          swift_beginAccess();
          v102 = &v101[*(v161 + 18)];
          if ((v73 & 1) == 0)
          {
            v103 = &v102[*(v153 + 20)];
            if (v156 >= v38)
            {
              *v103 = 0;
              *(v103 + 1) = 0;
              v103[16] = 1;
            }

            else if (v67 >= v38)
            {
              *v103 = v156;
              *(v103 + 1) = v38;
              v103[16] = 0;
            }
          }

          IndexSet.remove(integersIn:)();
          swift_endAccess();
        }

        if (!v168)
        {

LABEL_123:
          v50 = v169;
          if (*(v169 + v100))
          {
            v72 = v154;
          }

          else
          {
            v72 = 0x7FFFFFFFFFFFFFFFLL;
          }

          swift_beginAccess();
          *(v50 + v147) = v170;

          v63 = *v50;
          v64 = v148;
          v53 = v149;
          goto LABEL_127;
        }

        v156 = v100;
        v160 = MEMORY[0x1E69E7CC0];
        v173 = MEMORY[0x1E69E7CC0];
        v104 = (v74 + 64);
        v105 = _HashTable.startBucket.getter();
        v165 = (1 << *(v74 + 32));
        v106 = *(v74 + 36);
        v157 = v74 + 72;
        v107 = v106;
        v108 = v106;
        v162 = (v74 + 64);
        while (1)
        {
          if (v108 != v106)
          {
            goto LABEL_114;
          }

          if (v105 == v165)
          {
            break;
          }

          if (v105 < 0)
          {
            goto LABEL_115;
          }

          v109 = 1 << *(v74 + 32);
          if (v105 >= v109)
          {
            goto LABEL_115;
          }

          v38 = v105 >> 6;
          if ((*&v104[8 * (v105 >> 6)] & (1 << v105)) == 0)
          {
            goto LABEL_116;
          }

          v167 = v107;
          v110 = *(*(v74 + 56) + 8 * v105);
          if (*(v110 + 150))
          {
          }

          else
          {
            v111 = *(v110 + 144);
            v112 = *(v169 + v163);

            if (v111 != v112)
            {

              MEMORY[0x193ABF170](v113);
              if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v160 = v173;
              --v168;
              swift_beginAccess();
              LODWORD(v159) = *(v110 + 32);
              v115 = *(v110 + 40);
              v114 = *(v110 + 48);

              specialized Set._Variant.insert(_:)(v176, v159, v115, v114);

              swift_endAccess();
              v74 = v166;
              v109 = 1 << *(v166 + 32);
            }

            v104 = v162;
          }

          if (v105 >= v109)
          {
            goto LABEL_117;
          }

          v116 = *&v104[8 * v38];
          if ((v116 & (1 << v105)) == 0)
          {
            goto LABEL_118;
          }

          if (v106 != *(v74 + 36))
          {
            goto LABEL_119;
          }

          v117 = v116 & (-2 << (v105 & 0x3F));
          if (v117)
          {

            v109 = __clz(__rbit64(v117)) | v105 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v118 = v38 << 6;
            v119 = v38 + 1;
            v120 = (v157 + 8 * v38);
            while (v119 < (v109 + 63) >> 6)
            {
              v122 = *v120++;
              v121 = v122;
              v118 += 64;
              ++v119;
              if (v122)
              {
                outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v105, v167, 0);

                v109 = __clz(__rbit64(v121)) + v118;
                goto LABEL_92;
              }
            }

            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v105, v167, 0);

LABEL_92:
            v104 = v162;
          }

          v107 = *(v74 + 36);
          v108 = *(v74 + 36);
          v105 = v109;
          if (!v168)
          {
            goto LABEL_95;
          }
        }

        v109 = v165;
LABEL_95:
        v166 = v109;

        v38 = v160;
        v167 = v107;
        if (!(v160 >> 62))
        {
          v123 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v123)
          {
LABEL_122:

            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v166, v167, 0);
            v100 = v156;
            goto LABEL_123;
          }

          goto LABEL_97;
        }

LABEL_121:
        v123 = __CocoaSet.count.getter();
        if (!v123)
        {
          goto LABEL_122;
        }

LABEL_97:
        if (v123 < 1)
        {
          __break(1u);
        }

        v124 = 0;
        v168 = 0;
        v125 = v38 & 0xC000000000000001;
        while (1)
        {
          if (v125)
          {
            v126 = MEMORY[0x193AC03C0](v124, v38);
          }

          else
          {
            v126 = *(v38 + 8 * v124 + 32);
          }

          AGSubgraphApply();
          AGSubgraphRemoveChild();
          *(v126 + 149) = 256;
          v127 = *(v126 + 24) - 1;
          *(v126 + 24) = v127;
          if (!v127)
          {
            break;
          }

LABEL_99:
          ++v124;

          if (v123 == v124)
          {
            goto LABEL_122;
          }
        }

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v129 = Strong;
          swift_beginAccess();
          v130 = *(v129 + 264);
          if (*(v130 + 16))
          {
            v131 = v125;
            v132 = v123;
            v134 = *(v126 + 40);
            v133 = *(v126 + 48);
            v135 = *(v126 + 32);

            v136 = specialized __RawDictionaryStorage.find<A>(_:)(v135, v134, v133);
            if (v137)
            {
              v138 = v136;
              v139 = *(v130 + 36);

              swift_beginAccess();
              specialized Dictionary._Variant.remove(at:)(v177, v138, v139);
              swift_endAccess();

              v123 = v132;
              v125 = v131;
              goto LABEL_110;
            }

            v123 = v132;
            v125 = v131;
          }

          v141 = v168;
          v142 = specialized _NativeDictionary.filter(_:)(v140, v126, specialized _NativeDictionary.extractDictionary(using:count:));
          v168 = v141;

          *(v129 + 264) = v142;
        }

LABEL_110:
        IsValid = AGSubgraphIsValid();
        v38 = v160;
        if (IsValid)
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
        }

        goto LABEL_99;
      }

      __break(1u);
    }

    else
    {
      v161 = v6;
      v164 = v4;
      v21 = *(*a1 + 2);
      if (*(v19 + 16) != v21)
      {
        v177[0] = 0;
        v177[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(204);
        MEMORY[0x193ABEDD0](0xD00000000000004ELL, 0x800000018DD7D200);
        MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
        v176[0] = v21;
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v22);

        MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
        v23 = v2[22];
        if (!v23)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        v176[0] = *(v23 + 16);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v24);

        MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
        specialized static Log.externalWarning(_:)(v177[0], v177[1]);

        v19 = v2[22];
        if (!v19)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }
      }

      swift_beginAccess();
      v25 = v2[22];
      v26 = v2[23];
      v27 = v2[24];
      v28 = v169[25];
      v29 = v169[26];
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v177, type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>);

      v30 = v169;
      outlined consume of ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>?(v25, v26, v27, v28, v29);
      v31 = v164;
      v32 = v168;
      v30[22] = v164;
      v30[23] = v32;
      v33 = v162;
      v30[24] = v161;
      v30[25] = v33;
      v34 = v166;
      v30[26] = v165;
      v30[27] = v34;
      if (v31)
      {
        v30[22] = v19;

        swift_endAccess();

        swift_beginAccess();
        v35 = v30[33];
        v36 = 1 << *(v35 + 32);
        v37 = -1;
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        v38 = v37 & *(v35 + 64);
        v39 = (v36 + 63) >> 6;

        v40 = 0;
LABEL_15:
        if (v38)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v41 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v41 >= v39)
          {
            goto LABEL_29;
          }

          v38 = *(v35 + 64 + 8 * v41);
          ++v40;
          if (v38)
          {
            v40 = v41;
LABEL_20:
            v42 = *(*(v35 + 56) + 8 * (__clz(__rbit64(v38)) | (v40 << 6)));

            if (!v42)
            {
LABEL_29:

              return;
            }

            *(v42 + 136) = *(v169 + v160);
            if (*(v42 + 144) == v167)
            {
              *(v42 + 144) = *(v169 + v163);
            }

            v38 &= v38 - 1;

            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }
    }

    __break(1u);
    goto LABEL_132;
  }
}

uint64_t specialized ForEachState.evictItems(seed:)(uint64_t result)
{
  v2 = *(*v1 + 256);
  if (*(v1 + v2) == result)
  {
    return result;
  }

  v3 = v1;
  if ((*(v1 + *(*v1 + 264)) & 1) == 0)
  {
    return result;
  }

  v41 = *(*v1 + 264);
  *(v1 + v2) = result;
  v44 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v4 = v1[34];

  v5 = _HashTable.startBucket.getter();
  v6 = *(v4 + 36);

  v7 = v3[34];
  v46 = 1 << *(v7 + 32);
  v8 = *(v7 + 36);
  v47 = 64;
  v9 = v6;
  do
  {
    if (v9 != v8)
    {
      goto LABEL_55;
    }

    if (v5 == v46)
    {
      v47 = 1;
      goto LABEL_31;
    }

    if (v5 < 0)
    {
      goto LABEL_56;
    }

    v10 = v3[34];
    if (v5 >= 1 << *(v10 + 32))
    {
      goto LABEL_56;
    }

    v11 = v5 >> 6;
    if ((*(v10 + 8 * (v5 >> 6) + 64) & (1 << v5)) == 0)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v8 != *(v10 + 36))
    {
      goto LABEL_58;
    }

    v12 = *(*(v10 + 56) + 8 * v5);
    if (*(v12 + 134))
    {
      goto LABEL_19;
    }

    if (*(v12 + 133) != 1)
    {
      --*(v12 + 133);
LABEL_19:

      goto LABEL_20;
    }

    v13 = *(*(v10 + 48) + 8 * v5);
    v14 = *(v12 + 24);

    if (v14 == 1)
    {

      MEMORY[0x193ABF170](v15);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44 = v50;
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(v48, v13);
      swift_endAccess();
      --v47;
    }

LABEL_20:
    v16 = v3[34];
    v17 = 1 << *(v16 + 32);
    if (v5 >= v17)
    {
      goto LABEL_59;
    }

    v18 = *(v16 + 64 + 8 * v11);
    if ((v18 & (1 << v5)) == 0)
    {
      goto LABEL_60;
    }

    if (v8 != *(v16 + 36))
    {
      goto LABEL_61;
    }

    v19 = v18 & (-2 << (v5 & 0x3F));
    if (v19)
    {

      v5 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (v16 + 8 * v11 + 72);
      while (v21 < (v17 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v5, v6, 0);

          v5 = __clz(__rbit64(v23)) + v20;
          goto LABEL_5;
        }
      }

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v5, v6, 0);

      v5 = v17;
    }

LABEL_5:
    v6 = v8;
    v9 = v8;
  }

  while (v47 > 0);
  v46 = v5;
  v6 = v8;
LABEL_31:
  v5 = v44;
  v8 = v44 >> 62;
  if (v44 >> 62)
  {
LABEL_63:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    v25 = 0;
    v42 = v8;
    v26 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v43 = v6;
    do
    {
      if (v26)
      {
        v28 = MEMORY[0x193AC03C0](v25, v5);
        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v25 >= *(v45 + 16))
        {
          goto LABEL_62;
        }

        v28 = *(v5 + 8 * v25 + 32);

        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      AGSubgraphApply();
      AGSubgraphRemoveChild();
      *(v28 + 133) = 256;
      v30 = *(v28 + 24) - 1;
      *(v28 + 24) = v30;
      if (!v30)
      {
        v31 = v26;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v33 = Strong;
          swift_beginAccess();
          v34 = *(v33 + 272);
          if (*(v34 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(*(v28 + 32)), (v36 & 1) != 0))
          {
            v37 = v35;
            v38 = *(v34 + 36);
            swift_beginAccess();
            specialized Dictionary._Variant.remove(at:)(&v49, v37, v38);
            swift_endAccess();
          }

          else
          {

            v40 = specialized _NativeDictionary.filter(_:)(v39, v28, specialized _NativeDictionary.extractDictionary(using:count:));

            *(v33 + 272) = v40;
          }

          v5 = v44;
          v8 = v42;
        }

        v26 = v31;
        if (AGSubgraphIsValid())
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
        }

        v6 = v43;
      }

      if (v8)
      {
        v27 = __CocoaSet.count.getter();
      }

      else
      {
        v27 = *(v45 + 16);
      }

      ++v25;
    }

    while (v29 != v27);
  }

LABEL_64:

  result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v46, v6, 0);
  *(v3 + v41) = v47 == 0;
  return result;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unsigned int *a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05EmptyhI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21MaterialBackdropProxyVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI5ColorVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnyShapeStyleVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK4TextV05WritekI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK5ImageV09WriteIconI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24GlassEffectLocalModifier08_3DF70D9M23D7473F4D189A049B764CFEFLLV_AN4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI28GlassEffectContainerModifier08_3DF70D9M23D7473F4D189A049B764CFEFLLV_AN4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK013SectionFooterI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK013SectionHeaderI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK09SectionedI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(__int128 *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK014SecondaryLayerI5QueryVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22UnevenRoundedRectangleV_AK18RootContainerShapeVTt1g5;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK12BackdropViewVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I3SetV7WrapperVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK09_RotationK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK09_RotationK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK06_ScaleK0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK06_ScaleK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK010ScalePulseK033_5B41BB980C958F118A8AF82B3D90BAC0LLVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK010ScalePulseK033_5B41BB980C958F118A8AF82B3D90BAC0LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK020GlassAppearanceScaleK033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK020GlassAppearanceScaleK033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK9ColorViewVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAKE17AsymmetricalInsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK5ImageVAKE8ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK010_TransformK0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK01_iK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK010StyledTextH4ViewVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK08CombinedhI033_6E67AD6866B38627EB183D41FF0BA80ALLVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleV6_InsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK9RectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK03AnyI0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK03AnyI0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7EllipseVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7EllipseV6_InsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK7EllipseV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7CapsuleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7CapsuleV6_InsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK7CapsuleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK6CircleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK6CircleV6_InsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK6CircleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK0J0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK024PartialContainerRelativeI0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK024PartialContainerRelativeI0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK018DefaultGlassEffectI0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK22UnevenRoundedRectangleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK22UnevenRoundedRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK22UnevenRoundedRectangleV6_InsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK22UnevenRoundedRectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ImplicitContainerI0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ContainerRelativeI0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ContainerRelativeI0V6_InsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK017ContainerRelativeI0V6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK19ConcentricRectangleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK19ConcentricRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK18EllipticalGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK16RoundedRectangleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK16RoundedRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK16RoundedRectangleV6_InsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK16RoundedRectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK15AngularGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK14RadialGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK14LinearGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLV0lhI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK011GlassEffectH008_3DF70D9M23D7473F4D189A049B764CFEFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23ContentTransitionEffectV_AM4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLCAEV_AK06UpdatehiJ0AMLLVyAK07DefaulthI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK06MergedH033_9FF97745734808976F608CE0DC13C39CLLVTt1g5;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(__int128 *a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08_OpacityK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014HiddenForReuseK033_EB2336F1CBB87914F55D10FF4F9B475ALLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK07OpacityjK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017ContentTransitionK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017GraphicsBlendModeK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK25_AllowsHitTestingModifierVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK05_BlurK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK6ShaderV08ResolvedR0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK17VariableBlurStyleVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_GeometryGroupK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK04ViewI17ArchivedAnimation33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV0K0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK33_ForegroundLayerLevelViewModifierVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK025_PremultipliedColorMatrixK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK28_ForegroundLayerViewModifierVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK6_temp2VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK020MayNotInsertCALayersK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK5_tempVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK018_ExtendedBlendModeK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017_LuminanceToAlphaK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017_CompositingGroupK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK016_ColorMonochromeK0V9_ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK21_BackdropGroupEffect2VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK015_AlphaThresholdK0V9_ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_ColorMultiplyK0V9_ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014LuminanceCurveK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_HueRotationK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_ColorMatrixK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_ColorInvertK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK011_SaturationK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK011_BrightnessK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK17GraphicsBlendModeOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK010_GrayscaleK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK010_BlendModeK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK14GraphicsFilterOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK07_ShadowK0V9_ResolvedVGTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unint64_t *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14MaterialEffectV4Fill33_E3B0FF576136F59061E5D7766373CC25LLV_AK0hi7UpdatedJ0AOLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ViewFrameV_AK07MatchedI033_F035CBEF00D3D777B3359545F684D774LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ViewFrameV_AK011DynamicTextH033_641995D812913A47B866B20B88782376LLV0jkI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SiSg_7SwiftUI19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAL19RequiredTapCountKeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AK06LayoutI033_05F3243F43C616B77CCF383885E80E96LLVyAK07DefaultkH0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_s6UInt32V_7SwiftUI15LayoutChildSeed33_05F3243F43C616B77CCF383885E80E96LLVyAM07DefaultI7GestureVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK04LazyhI033_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK13CanvasSymbols027_F41195D4CD7D6A29110580DFD3M4F891LLV06SymbolI0VTt1g5;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unint64_t *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9_ShapeSetV_AK011GlassEffecthI033_62A32D59B8A902A88963544196023CF7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK11MergeTraits33_AC3F3B54DEA93347066C3491F9AA3DD4LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI7EventIDVAK0H4Type_pG_AK21CoordinateSpaceEvents33_8ECA7037C26636F2BB3D86159C23C2C5LLVy12CoreGraphics7CGFloatVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16PreferenceValuesV_AK23HostPreferencesCombinerVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI7EventIDVAK0H4Type_pG_AK17LayoutChildEvents33_05F3243F43C616B77CCF383885E80E96LLVyAK07DefaultK7GestureVGTt1g5;
}

void (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14GlassContainerO11DataStorageV_AK0h6EffectJ4Init08_3DF70D9O23D7473F4D189A049B764CFEFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI32PlatformTextRepresentableContextV_AK0I0V04MakejK033_641995D812913A47B866B20B88782376LLVTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK01_hI6_GroupV4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyytG_AK07DefaultD0VyANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK06MergedI033_9FF97745734808976F608CE0DC13C39CLLVTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t *a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVyAK22_VariadicView_ChildrenVs11AnyHashableVAQ7ElementV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVySayAK14GlassContainerO5EntryVGAS8StableIDVAK15ModifiedContentVyAXyAK6ZStackVyAK0lnM4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK21_TraitWritingModifierVyAK12_LayoutTraitVyAK0L12EffectLayoutA0_LLV3KeyVGGGA4_yAK18TransitionTraitKeyVGG_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVySayAK14GlassContainerO4ItemVGAS2IDVAK0lN4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVySnySiGSiAK15ModifiedContentVyARyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_C19TransactionModifierVySdGGAK13_OffsetEffectVG_GTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK13TappableEventVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_12CoreGraphics7CGFloatVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK12SpatialEventVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_SdGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK011DynamicViewI033_E7D4CD2D59FB8C77D6C7E9C534464C17LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_ytGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK08LazyViewI033_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_12CoreGraphics7CGFloatV_AA3MapVy7SwiftUI17EnvironmentValuesVAMGTt1g5(unsigned int *a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK18ResetDeltaModifier33_C38EF38637B6130AEFD462CBD5EAC727LLV05ChildI0VTt1g5(unsigned int *a1)
{
  AGGraphGetValue();
  AGGraphGetValue();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15LayoutDirectionO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(unsigned int *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15LayoutDirectionO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5Tm(a1, a2, &type metadata for LayoutDirection);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK07RoundedI0VTt1g5(unsigned int *a1)
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = *(Value + 8);
  v4 = AGGraphGetValue();
  v5 = *v4;
  v6 = *(v4 + 8);
  AGGraphGetValue();
  v8.origin.x = v2;
  v8.origin.y = v3;
  v8.size.width = v5;
  v8.size.height = v6;
  CGRectStandardize(v8);
  return AGGraphSetOutputValue();
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK013ResetPositionI0VTt1g5(unsigned int *a1)
{
  AGGraphGetValue();
  type metadata accessor for CGPoint(0);

  AGGraphGetValue();
  AGGraphSetOutputValue();
}