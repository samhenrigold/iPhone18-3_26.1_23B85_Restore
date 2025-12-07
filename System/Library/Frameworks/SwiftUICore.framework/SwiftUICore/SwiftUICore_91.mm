unint64_t LeafViewResponder.descriptionName.getter()
{
  _StringGuts.grow(_:)(31);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](2629694, 0xE300000000000000);
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v2 = Double.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](8745, 0xE200000000000000);
  return 0xD000000000000012;
}

Swift::Void __swiftcall LeafViewResponder.extendPrintTree(string:)(Swift::String *string)
{
  v3 = *v2;
  v4 = type metadata accessor for ContentResponderHelper(0, *(*v2 + 248), *(*v2 + 256), v1);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  (*(v5 + 16))(v14 - v7, v2 + *(v3 + 264), v4, v6);
  v9 = ContentResponderHelper.globalPosition.getter(v4);
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v15 = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  v12 = Double.description.getter();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v13 = Double.description.getter();
  MEMORY[0x193ABEDD0](v13);

  MEMORY[0x193ABEDD0](4202589, 0xE300000000000000);
  *v14 = v9;
  v14[1] = v11;
  type metadata accessor for (CGFloat, CGFloat)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v15, v16);
}

double ContentResponderHelper.globalPosition.getter(uint64_t a1)
{
  v8 = 0.0;
  v9 = 0;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v7 = 2;
  v2 = (v1 + *(a1 + 40));
  v3 = v2[1];
  v10[0] = *v2;
  v10[1] = v3;
  v10[2] = v2[2];
  specialized ApplyViewTransform.convert(to:transform:)(v5, v10);
  outlined destroy of CoordinateSpace(v5);
  return v8;
}

char *LeafViewResponder.__allocating_init(host:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized LeafViewResponder.__allocating_init(host:)(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t LeafViewResponder.__ivar_destroyer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 264);
  v6 = type metadata accessor for ContentResponderHelper(0, *(*v4 + 248), *(*v4 + 256), a4);
  v7 = *(*(v6 - 8) + 8);

  return v7(v4 + v5, v6);
}

uint64_t ContentPathObservers.add(observer:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 4);
    while (v7 < v5[2])
    {
      outlined init with copy of ContentPathObservers.Observer(v8, v13);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of weak GestureGraphDelegate?(v13);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
        if (Strong == a1)
        {
          return result;
        }
      }

      ++v7;
      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_8:
  v13[1] = a2;
  swift_unknownObjectWeakInit();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
  }

  v12 = v5[2];
  v11 = v5[3];
  if (v12 >= v11 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v5);
  }

  v5[2] = v12 + 1;
  result = outlined init with take of ContentPathObservers.Observer(v13, &v5[2 * v12 + 4]);
  *v2 = v5;
  return result;
}

uint64_t ContentResponderHelper.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ContentResponderHelper.data.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

double ContentResponderHelper.transform.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 40);
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
  v5 = *(v3 + 32);
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 32) = v5;

  return result;
}

__n128 ContentResponderHelper.transform.setter(__n128 *a1, uint64_t a2)
{
  v4 = a1->n128_u64[0];
  v5 = a1->n128_u64[1];
  v6 = (v2 + *(a2 + 40));

  v6->n128_u64[0] = v4;
  v6->n128_u64[1] = v5;
  result = a1[1];
  v8 = a1[2];
  v6[1] = result;
  v6[2] = v8;
  return result;
}

double closure #1 in ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)@<D0>(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double *a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v8 = *(isStackAllocationSafe + 16);
  if (v8)
  {
    if (v8 >> 59)
    {
      __break(1u);
    }

    v12 = isStackAllocationSafe;
    if ((16 * v8) > 1024)
    {
      v17 = *(isStackAllocationSafe + 16);
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (!isStackAllocationSafe)
      {
        v18 = swift_slowAlloc();
        closure #1 in closure #1 in ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(a3, v18, v17, v12, a4, a2, a5, a6);

        JUMPOUT(0x193AC4820);
      }
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    closure #1 in closure #1 in ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(v20, v20 - v13, v14, v12, a4, a2, a5, a6);
    result = *&v20[1];
    v16 = v20[2];
    *a3 = v20[0];
    *(a3 + 8) = result;
    *(a3 + 16) = v16;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = a2;
  }

  return result;
}

void closure #1 in closure #1 in ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(uint64_t *__return_ptr a1@<X8>, void *__dst@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, double *a5@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>)
{
  v15 = *(a4 + 16);
  if (!v15)
  {
LABEL_4:
    v29[0] = __dst;
    v29[1] = a3;
    v16 = a5 + *(type metadata accessor for ContentResponderHelper(0, a7, a8, a5) + 40);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 4);
    v20 = *(v16 + 5);
    v25 = 1;
    v26 = 0u;
    v27 = 0u;
    v28 = 2;
    if (v17 || v19 != 0.0)
    {
      if (!a3)
      {
LABEL_14:
        outlined destroy of CoordinateSpace(&v25);
        (*(a8 + 8))(v22, __dst, a3, a7, a8, *a5, a5[1]);
        *a1 = *&v22[0];
        a1[1] = 0x3FF0000000000000;
        a1[2] = a6;

        return;
      }
    }

    else if (v20 == 0.0 || a3 == 0)
    {
      goto LABEL_14;
    }

    v22[0] = v17;
    v22[1] = v18;
    v23 = v19;
    v24 = v20;
    specialized ViewTransform.convertGlobalToSpace(_:_:)(&v25, v22, v29);
    goto LABEL_14;
  }

  if (v15 <= a3)
  {
    memcpy(__dst, (a4 + 32), 16 * v15);
    goto LABEL_4;
  }

  __break(1u);
}

double protocol witness for ContentResponder.contentPath(size:kind:) in conformance StyledTextContentView@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  specialized ContentResponder.contentPath(size:kind:)(*a1, *(v4 + 8), v8, a3, a4);
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

uint64_t assignWithCopy for LeafResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for LeafResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ContentResponderHelper(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 + 16;
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = *(v5 + 64) + 1;
  }

  v11 = v10 + 7;
  v12 = ((((((v10 + 7 + ((v7 + 16) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32;
  v13 = v7 & 0x100000;
  if (v8 > 7 || v13 != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *v3 = *a2;
    v3 = (v16 + ((v8 & 0xF8 ^ 0x1F8) & v9));
  }

  else
  {
    *a1 = *a2;
    v17 = ((a1 + v8 + 16) & ~v8);
    v18 = ((a2 + v8 + 16) & ~v8);
    if ((*(v5 + 48))((a2 + v8 + 16) & ~v8, 1, v4))
    {
      memcpy(v17, v18, v10);
    }

    else
    {
      (*(v6 + 16))(v17, v18, v4);
      (*(v6 + 56))(v17, 0, 1, v4);
    }

    v19 = (v17 + v11) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v18 + v11) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    *(v19 + 16) = *(v20 + 16);
    *(v19 + 32) = *(v20 + 32);
    v21 = ((v19 + 55) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v20 + 55) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v24;
    *(v23 + 4) = *(v24 + 4);
    *v23 = v25;
    *(v23 + 8) = *(v24 + 8);
    *(v23 + 16) = *(v24 + 16);
    *(v23 + 24) = *(v24 + 24);
  }

  return v3;
}

_OWORD *initializeWithCopy for ContentResponderHelper(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 16) & ~v6);
  v8 = ((a2 + v6 + 16) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 16))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  v17 = ((v15 + 55) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 4) = *(v20 + 4);
  *v19 = v21;
  *(v19 + 8) = *(v20 + 8);
  *(v19 + 16) = *(v20 + 16);
  *(v19 + 24) = *(v20 + 24);

  return a1;
}

void *assignWithCopy for ContentResponderHelper(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 16) & ~v6);
  v8 = ((a2 + v6 + 16) & ~v6);
  v9 = *(v5 + 48);
  v10 = v9(v7, 1, v4);
  v11 = v9(v8, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 16))(v7, v8, v4);
      (*(v5 + 56))(v7, 0, 1, v4);
      goto LABEL_12;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 24))(v7, v8, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  memcpy(v7, v8, v14);
LABEL_12:
  if (*(v5 + 84))
  {
    v15 = *(v5 + 64);
  }

  else
  {
    v15 = *(v5 + 64) + 1;
  }

  v16 = ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  v16[1] = v17[1];

  v16[2] = v17[2];
  v16[3] = v17[3];
  v16[4] = v17[4];
  v16[5] = v17[5];
  v18 = ((v16 + 55) & 0xFFFFFFFFFFFFFFF8);
  v19 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v19 += 15;
  *v18 = v20;

  v21 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v19 & 0xFFFFFFFFFFFFFFF8);
  *(v21 + 4) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v21 = v22;
  *(v21 + 8) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v21 + 16) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v21 + 24) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 24);

  return a1;
}

_OWORD *initializeWithTake for ContentResponderHelper(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 16) & ~v6);
  v8 = ((a2 + v6 + 16) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  v18 = v16[2];
  v15[1] = v16[1];
  v15[2] = v18;
  *v15 = v17;
  v19 = ((v15 + 55) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v16 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;
  return a1;
}

_OWORD *assignWithTake for ContentResponderHelper(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 16) & ~v6);
  v8 = ((a2 + v6 + 16) & ~v6);
  v9 = *(v5 + 48);
  v10 = v9(v7, 1, v4);
  v11 = v9(v8, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 32))(v7, v8, v4);
      (*(v5 + 56))(v7, 0, 1, v4);
      goto LABEL_12;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 40))(v7, v8, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  memcpy(v7, v8, v14);
LABEL_12:
  if (*(v5 + 84))
  {
    v15 = *(v5 + 64);
  }

  else
  {
    v15 = *(v5 + 64) + 1;
  }

  v16 = ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  v16[1] = v17[1];

  v16[2] = v17[2];
  v16[3] = v17[3];
  v16[4] = v17[4];
  v16[5] = v17[5];
  v18 = ((v16 + 55) & 0xFFFFFFFFFFFFFFF8);
  v19 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v19 += 15;
  *v18 = v20;

  v21 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v19 & 0xFFFFFFFFFFFFFFF8);
  *(v21 + 4) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v21 = v22;
  *(v21 + 8) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v21 + 16) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v21 + 24) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for ContentResponderHelper(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((((((v11 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
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
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_33:
    v21 = (a1 + v9 + 16) & ~v9;
    if (v7 < 0x7FFFFFFF)
    {
      v23 = *((((v11 + v21) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8);
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }

    else
    {
      v22 = (*(v5 + 48))(v21);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
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

void storeEnumTagSinglePayload for ContentResponderHelper(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + 7 + ((v10 + 16) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + 7 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + 7 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + 7 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = (a1 + v10 + 16) & ~v10;
  if (v8 < 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *((((v11 + 7 + v19) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) = v23;
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);
    v25 = a2 + 1;
    v26 = (a1 + v10 + 16) & ~v10;

    v24(v26, v25);
  }

  else
  {
    if (v11 <= 3)
    {
      v20 = ~(-1 << (8 * v11));
    }

    else
    {
      v20 = -1;
    }

    if (v11)
    {
      v21 = v20 & (~v8 + a2);
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      bzero(((a1 + v10 + 16) & ~v10), v11);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *v19 = v21;
          *(v19 + 2) = BYTE2(v21);
        }

        else
        {
          *v19 = v21;
        }
      }

      else if (v22 == 1)
      {
        *v19 = v21;
      }

      else
      {
        *v19 = v21;
      }
    }
  }
}

uint64_t assignWithCopy for ContentPathObservers.Observer(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for ContentPathObservers.Observer(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for ContentPathObservers.Observer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentPathObservers.Observer(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

char *specialized LeafViewResponder.init(host:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ContentResponderHelper.init()(*(*v4 + 248), *(*v4 + 256), a4, &v4[*(*v4 + 264)]);
  *(v4 + 3) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v4 + 3) = a2;
  swift_unknownObjectWeakAssign();
  return v4;
}

void type metadata accessor for (CGFloat, CGFloat)()
{
  if (!lazy cache variable for type metadata for (CGFloat, CGFloat))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CGFloat, CGFloat));
    }
  }
}

id DisplayList.ViewUpdater.Platform.viewLayer(_:)(void *a1)
{
  v2 = CoreViewLayer(*v1 & 3, a1);

  return v2;
}

uint64_t DisplayList.ViewUpdater.Platform.setShadow(_:layer:)(uint64_t a1, uint64_t a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 53);
  v10 = *v2 & 3;
  v16 = *v2 & 3;
  v11 = CoreViewLayerView(v10, a2, &v16);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v12 = v16;
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v13 = _bridgeAnythingToObjectiveC<A>(_:)();
  if (v9)
  {
    CoreViewSetShadow(v12, v13, 0, 0.0, 0.0, 0.0);
    swift_unknownObjectRelease();
  }

  else
  {
    v17[0] = v3;
    v17[1] = v4;
    v18 = v5;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v14 = specialized ObjectCache.subscript.getter(v17);
    CoreViewSetShadow(v12, v13, v14, v6, v7, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

void updateContent(shapeLayer:color:strokedPath:origin:style:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a5 == 0.0 && a6 == 0.0)
  {
    v33 = *(a3 + 16);
    v9 = *(a3 + 32);
    *&v41.a = *a3;
    v35 = *&v41.a;
    *&v41.c = v33;
    LOBYTE(v41.tx) = *(a3 + 32);
    outlined init with copy of Path.Storage(&v41, v39);
    v11 = v33;
    v10 = v35;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v41, -a5, -a6);
    Path.applying(_:)(&v41.a, v37);
    v10 = v37[0];
    v11 = v37[1];
    v9 = v38;
  }

  v34 = v11;
  v36 = v10;
  v39[0] = v10;
  v39[1] = v11;
  v40 = v9;
  v12 = Path.cgPath.getter();
  [a1 setPath_];

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v13.n128_u64[0] = 0;
  v14.n128_u64[0] = 0;
  v15.n128_u64[0] = 0;
  v16.n128_u64[0] = 0;
  specialized ObjectCache.subscript.getter(v13, v14, v15, v16);
  v18 = v17;
  [a1 setFillColor_];

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v19 = specialized ObjectCache.subscript.getter(a2);
  [a1 setStrokeColor_];

  [a1 setLineWidth_];
  [a1 setMiterLimit_];
  v20 = MEMORY[0x1E6979E80];
  v21 = MEMORY[0x1E6979E78];
  v22 = *(a4 + 8);
  if (v22 != 1)
  {
    v21 = MEMORY[0x1E6979E70];
  }

  if (v22 != 2)
  {
    v20 = v21;
  }

  v23 = *v20;
  [a1 setLineCap_];

  v24 = MEMORY[0x1E6979E88];
  v25 = MEMORY[0x1E6979E98];
  v26 = *(a4 + 12);
  if (v26 != 1)
  {
    v25 = MEMORY[0x1E6979E90];
  }

  if (v26 != 2)
  {
    v24 = v25;
  }

  v27 = *v24;
  [a1 setLineJoin_];

  [a1 setLineDashPhase_];
  v28 = *(a4 + 24);
  v29 = *(v28 + 16);
  if (v29)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v30 = (v28 + 32);
    do
    {
      v31 = *v30++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v29;
    }

    while (v29);
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setLineDashPattern_];
}

void ShapeLayerAsyncHelper.visitPaint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v129 = a1;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v113 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v113 - v15;
  v127 = *(v3 + 16);
  v128 = v3;

  AnyResolvedPaint.as<A>(type:)(a2, a3, v17, v9);

  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    return;
  }

  (*(v10 + 32))(v16, v9, a2);
  v18 = *(a3 + 72);
  v18(&v170, a2, a3);
  v19 = v170;
  v18(&v169, a2, a3);
  if (v19 != v169)
  {
    (*(v10 + 8))(v16, a2);
    return;
  }

  v20 = v128[1];
  v21 = *(v20 + 2);
  v202[0] = *(v20 + 1);
  v202[1] = v21;
  *&v125 = v20;
  v203 = *(v20 + 48);
  v205 = v203;
  v204[1] = v21;
  v204[0] = v202[0];
  outlined init with copy of Path.Storage(v204, &v137);
  ShapeType.init(_:)(v202, &v143);
  v22 = v127[2];
  v200[0] = v127[1];
  v200[1] = v22;
  v201 = *(v127 + 48);
  v207 = v201;
  v206[0] = v200[0];
  v206[1] = v22;
  outlined init with copy of Path.Storage(v206, &v137);
  ShapeType.init(_:)(v200, &v137);
  v151 = v139[0];
  v152 = v139[1];
  v153 = v140;
  v154 = v141;
  v149 = v137;
  v150 = v138;
  v126 = v10;
  v23 = *(v10 + 16);
  v23(v13, v129, a2);
  PaintType.init<A>(_:)(v13, a2, &v155);
  v23(v13, v16, a2);
  PaintType.init<A>(_:)(v13, a2, v158.n128_u64);
  v161[2] = v145;
  v161[3] = v146;
  v161[4] = v147;
  v161[0] = v143;
  v161[1] = v144;
  v165 = v151;
  v166 = v152;
  v167 = v153;
  v163 = v149;
  v162 = v148;
  v168 = v154;
  v164 = v150;
  v24 = *&v145;
  v25 = BYTE8(v145);
  v26 = v16;
  if (v148 > 1u)
  {
    v47 = a2;
    v48 = (*(&v145 + 9) << 8) | ((*(&v145 + 13) | (HIBYTE(v145) << 16)) << 40);
    if (v148 == 2)
    {
      if (v154 != 2)
      {
        outlined destroy of PaintType(&v155);
        outlined destroy of PaintType(&v158);
        outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
        (*(v126 + 8))(v16, v47);
        return;
      }

      v49 = *&v151.i64[1];
      v50 = *&v152.i64[1];
      v51 = *&v153.i64[1];
      v208 = v143;
      v209 = v144;
      v210 = v145;
      v193 = v149;
      v194 = v150;
      v195 = v151.i8[0];
      if (v152.i64[0] == v146)
      {
        v137 = v155;
        v138 = v156;
        v139[0] = v157[0];
        *(v139 + 9) = *(v157 + 9);
        v140 = v158;
        v141 = v159;
        v142[0] = v160[0];
        *(v142 + 9) = *(v160 + 9);
        if (BYTE8(v157[1]) <= 0x1Fu)
        {
          v198 = v155;
          v199 = v156.i32[0];
          if (BYTE8(v160[1]) < 0x20u)
          {
            v119 = v151.u8[0];
            v113 = v150.i64[1];
            v114 = v150.i64[0];
            v115 = *(&v149 + 1);
            v116 = v149;
            v117 = *(&v143 + 1);
            v123 = v147;
            v124 = v143;
            v120 = *(&v146 + 1);
            v121 = *(&v147 + 1);
            v122 = v153.i64[0];
            v129 = v144;
            v133 = v158;
            v134 = v159;
            v52 = **v128;
            v53 = (*v128)[1];
            v54 = *(*v128 + 8);
            v55 = (*v128)[3];
            v56 = *(*v128 + 32);
            type metadata accessor for ColorShapeLayer();
            v57 = swift_dynamicCastClassUnconditional();
            LOWORD(v173) = v54;
            v174 = v55;
            v175 = v56;
            v172 = v53;
            v171 = v57;
            outlined init with copy of ShapeType(&v149, &v130);
            outlined init with copy of ShapeType(&v143, &v130);
            v58 = v52;
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11StrokeColorO_Ttg5(&v198, &v133, v59, v60);
            v61 = *(v125 + 56);
            v62 = *(v125 + 64);
            if (v61 == 0.0 && v62 == 0.0)
            {
              v63 = v124;
              v64 = v117;
              outlined copy of Path.Storage(v124, v117, v129, *(&v129 + 1), LOBYTE(v24));
              v65 = v129;
            }

            else
            {
              CGAffineTransformMakeTranslation(&v130, -v61, -v62);
              Path.applying(_:)(v130.n128_f64, &v176);
              v64 = *(&v176 + 1);
              v63 = v176;
              v65 = v177;
              LOBYTE(v24) = v178;
            }

            v124 = v63;
            *&v125 = v48 | v25;
            *&v190 = v63;
            *(&v190 + 1) = v64;
            v129 = v65;
            v191 = v65;
            v192 = LOBYTE(v24);
            v100 = *(v127 + 7);
            v101 = *(v127 + 8);
            v118 = v47;
            if (v100 == 0.0 && v101 == 0.0)
            {
              v103 = v115;
              v102 = v116;
              v104 = v113;
              v105 = v114;
              outlined copy of Path.Storage(v116, v115, v114, v113, v119);
              v106 = v119;
            }

            else
            {
              CGAffineTransformMakeTranslation(&v189, -v100, -v101);
              Path.applying(_:)(&v189.a, &v179);
              v103 = *(&v179 + 1);
              v102 = v179;
              v104 = *(&v180 + 1);
              v105 = v180;
              v106 = v181;
            }

            v107 = v126;
            v108 = *&v125;
            *&v182 = v102;
            *(&v182 + 1) = v103;
            *&v183 = v105;
            *(&v183 + 1) = v104;
            v184 = v106;
            v185.i64[0] = v102;
            v185.i64[1] = v103;
            v186 = v105;
            v187 = v104;
            v109 = v106;
            v188 = v106;
            if ((specialized static Path.Storage.== infix(_:_:)(&v185, &v190) & 1) == 0)
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE9ShapePathO_Tt0g5();
              v107 = v126;
            }

            v110 = v120;
            outlined consume of Path.Storage(v102, v103, v105, v104, v109);
            outlined consume of Path.Storage(v124, v64, v129, *(&v129 + 1), LOBYTE(v24));
            v111 = v122;
            if (v49 != v108)
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE9LineWidthO_Tt0g5(v49);
              v107 = v126;
            }

            v112 = v121;
            if (v50 != v110)
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE10MiterLimitO_Tt0g5(v50);
              v107 = v126;
            }

            if (v51 != v112)
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE13LineDashPhaseO_Tt0g5(v51);
              v107 = v126;
            }

            if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v111, v123) & 1) == 0)
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15LineDashPatternO_Tt0g5(v111);
              v107 = v126;
            }

            outlined destroy of (ShapeType, ShapeType)(&v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
            outlined destroy of ShapeType(&v149);
            outlined destroy of ShapeType(&v143);
            (*(v107 + 8))(v26, v118);
            outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
            v99 = v171;
LABEL_86:

            goto LABEL_87;
          }
        }

        outlined destroy of (ShapeType, ShapeType)(&v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
        (*(v126 + 8))(v16, v47);
      }

      else
      {
        (*(v126 + 8))(v16, v47);
        outlined destroy of PaintType(&v155);
        outlined destroy of PaintType(&v158);
      }
    }

    else
    {
      if (v144 | *(&v143 + 1) | v143 | v145 | v146 | *(&v144 + 1) | v48 | BYTE8(v145) | *(&v146 + 1) | v147 | *(&v147 + 1))
      {
        if (v154 == 3 && v149 == 1 && (v66 = vorrq_s8(vorrq_s8(v150, v152), vorrq_s8(v151, v153)), !(*&vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL)) | *(&v149 + 1))))
        {
          v137 = v155;
          v138 = v156;
          v139[0] = v157[0];
          *(v139 + 9) = *(v157 + 9);
          v140 = v158;
          v141 = v159;
          v142[0] = v160[0];
          *(v142 + 9) = *(v160 + 9);
          if (BYTE8(v157[1]) <= 0x1Fu)
          {
            v196 = v155;
            v197 = v156.i32[0];
            if (BYTE8(v160[1]) < 0x20u)
            {
              v198 = v158;
              v199 = v159;
              v67 = **v128;
              v68 = (*v128)[1];
              v69 = *(*v128 + 8);
              v70 = (*v128)[3];
              v71 = *(*v128 + 32);
              type metadata accessor for ColorShapeLayer();
              v72 = swift_dynamicCastClassUnconditional();
              LOWORD(v134) = v69;
              v135 = v70;
              v136 = v71;
              v133.n128_u64[0] = v72;
              v133.n128_u64[1] = v68;
              v73 = v67;
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE9FillColorO_Ttg5(&v196, &v198, v74, v75);
              v76 = *(v125 + 32);
              v193 = *(v125 + 16);
              v194 = v76;
              v195 = *(v125 + 48);
              v78 = *(&v193 + 1);
              v77 = v193;
              v79 = *(&v76 + 1);
              v80 = v76;
              v81 = *(v125 + 56);
              v82 = *(v125 + 64);
              v83 = v195;
              if (v81 == 0.0 && v82 == 0.0)
              {
                outlined copy of Path.Storage(v193, *(&v193 + 1), v194.i64[0], v194.i64[1], v195);
              }

              else
              {
                CGAffineTransformMakeTranslation(&v130, -v81, -v82);
                outlined copy of Path.Storage(v77, v78, v80, v79, v83);
                Path.applying(_:)(v130.n128_f64, &v171);
                outlined destroy of Path(&v193);
                v77 = v171;
                v78 = v172;
                v80 = v173;
                v79 = v174;
                v83 = v175;
              }

              v185.i64[0] = v77;
              v185.i64[1] = v78;
              v186 = v80;
              v187 = v79;
              v188 = v83;
              v89 = v127[1];
              v90 = v127[2];
              v192 = *(v127 + 48);
              v91 = *(v127 + 7);
              v92 = *(v127 + 8);
              v191 = v90;
              v190 = v89;
              if (v91 == 0.0 && v92 == 0.0)
              {
                v93 = *(v127 + 48);
                v94 = v127[2];
                v125 = v127[1];
                v129 = v94;
                v95 = v127[1];
                v96 = v127[2];
                LOBYTE(v189.tx) = *(v127 + 48);
                *&v189.c = v96;
                *&v189.a = v95;
                outlined init with copy of Path.Storage(&v189, &v208);
              }

              else
              {
                CGAffineTransformMakeTranslation(&v189, -v91, -v92);
                v97 = v127[2];
                v208 = v127[1];
                v209 = v97;
                v210 = *(v127 + 48);
                outlined init with copy of Path.Storage(&v208, &v182);
                Path.applying(_:)(&v189.a, &v176);
                v129 = v177;
                v125 = v176;
                v93 = v178;
                outlined destroy of Path(&v190);
              }

              v98 = v126;
              v179 = v125;
              v180 = v129;
              v181 = v93;
              v182 = v125;
              v183 = v129;
              v184 = v93;
              if ((specialized static Path.Storage.== infix(_:_:)(&v182, &v185) & 1) == 0)
              {
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE9ShapePathO_Tt0g5();
                v98 = v126;
              }

              outlined consume of Path.Storage(v125, *(&v125 + 1), v129, *(&v129 + 1), v93);
              outlined consume of Path.Storage(v77, v78, v80, v79, v83);
              outlined destroy of (ShapeType, ShapeType)(&v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
              outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
              (*(v98 + 8))(v26, v47);
              v99 = v133.n128_u64[0];
              goto LABEL_86;
            }
          }

          outlined destroy of (ShapeType, ShapeType)(&v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
        }

        else
        {
          outlined destroy of PaintType(&v155);
          outlined destroy of PaintType(&v158);
        }

        outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
        (*(v126 + 8))(v16, v47);
        return;
      }

      (*(v126 + 8))(v16, v47);
      outlined destroy of PaintType(&v155);
      outlined destroy of PaintType(&v158);
      if (v154 == 3)
      {
        v84 = vorrq_s8(vorrq_s8(v150, v152), vorrq_s8(v151, v153));
        if (!(*&vorr_s8(*v84.i8, *&vextq_s8(v84, v84, 8uLL)) | *(&v149 + 1) | v149))
        {
          outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
LABEL_87:
          *(v128 + 24) = 1;
          return;
        }
      }
    }

    outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
    return;
  }

  if (v148)
  {
    if (v154 == 1 && ((BYTE8(v145) ^ v151.u8[8]) & 1) == 0)
    {
      v137 = v155;
      v138 = v156;
      v139[0] = v157[0];
      *(v139 + 9) = *(v157 + 9);
      v85 = *v151.i64;
      v86 = *v152.i64;
      v140 = v158;
      v141 = v159;
      v142[0] = v160[0];
      v87 = *(v160 + 9);
      *(v142 + 9) = *(v160 + 9);
      if (BYTE8(v157[1]) <= 0x1Fu)
      {
        *&v189.a = v155;
        LODWORD(v189.c) = v156.i32[0];
        if (BYTE8(v160[1]) < 0x20u)
        {
          v88 = *&v146;
          v87.n128_u32[0] = v159;
          v130 = v158;
          LODWORD(v131) = v159;
          _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11BorderColorO_Ttg5(&v189, &v130, v87, v158);
          if (v86 != v88)
          {
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE11BorderWidthO_Tt0g5(v86);
          }

          outlined destroy of (ShapeType, ShapeType)(&v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
          if (v85 != v24)
          {
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12CornerRadiusO_Tt0g5(v85);
          }

          outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
          (*(v126 + 8))(v16, a2);
          goto LABEL_87;
        }
      }

      outlined destroy of (ShapeType, ShapeType)(&v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
LABEL_30:
      outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
      (*(v126 + 8))(v16, a2);
      return;
    }

LABEL_29:
    outlined destroy of PaintType(&v155);
    outlined destroy of PaintType(&v158);
    goto LABEL_30;
  }

  if (v154 || ((BYTE8(v145) ^ v151.u8[8]) & 1) != 0)
  {
    goto LABEL_29;
  }

  v27 = a2;
  v28 = v26;
  v29 = *(&v144 + 1);
  v30 = v150;
  v31 = *v151.i64;
  v32 = *v128;
  v137 = v155;
  v138 = v156;
  v139[0] = v157[0];
  *(v139 + 9) = *(v157 + 9);
  v130 = v158;
  v131 = v159;
  v132[0] = v160[0];
  v33.n128_u64[1] = *(&v160[1] + 1);
  *(v132 + 9) = *(v160 + 9);
  v129 = v144;
  v33.n128_u64[0] = v144;
  if ((updateContentAsync(layer:oldSize:newSize:oldPaintType:newPaintType:old:new:)(v32, &v137, &v130, v125, v127, v33, *(&v144 + 1), *v150.i64, *&v150.i64[1]) & 1) == 0)
  {
    outlined destroy of PaintType(&v155);
    outlined destroy of PaintType(&v158);
    outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
    (*(v126 + 8))(v26, v27);
    return;
  }

  v34 = v126;
  if (v31 != v24)
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12CornerRadiusO_Tt0g5(v31);
    v34 = v126;
  }

  v35 = *v32;
  type metadata accessor for UnclippedGradientLayer();
  if (!swift_dynamicCastClass())
  {
    outlined destroy of PaintType(&v155);
    outlined destroy of PaintType(&v158);
    outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
    (*(v34 + 8))(v26, v27);
    goto LABEL_87;
  }

  v36 = v32[1];
  v37 = *(v32 + 16);
  v38 = *(v32 + 17);
  v39 = v32[3];
  v40 = *(v32 + 32);
  v41 = v35;
  v42 = [v41 sublayers];
  if (v42)
  {
    v43 = v42;
    outlined destroy of PaintType(&v155);
    outlined destroy of PaintType(&v158);

    type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer, 0x1E6979398);
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v44 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x193AC03C0](0, v44);
      goto LABEL_16;
    }

    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v45 = *(v44 + 32);
LABEL_16:
      v46 = v45;

      v138.i8[0] = v37;
      v138.i8[1] = v38;
      v138.i64[1] = v39;
      LOBYTE(v139[0]) = v40;
      *&v137 = v46;
      *(&v137 + 1) = v36;
      v211.origin.x = 0.0;
      v211.origin.y = 0.0;
      v212.origin.x = 0.0;
      v212.origin.y = 0.0;
      v211.size = v30;
      *&v212.size.width = v129;
      v212.size.height = v29;
      if (CGRectEqualToRect(v211, v212))
      {
        outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
      }

      else
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(0.0, 0.0, v30.width, v30.height);
        outlined destroy of (ShapeType, ShapeType)(v161, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
        v46 = v137;
      }

      (*(v126 + 8))(v28, v27);

      goto LABEL_87;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t updateContentAsync(layer:oldSize:newSize:oldPaintType:newPaintType:old:new:)(uint64_t a1, __int128 *a2, __int128 *a3, double *a4, __int128 *a5, __n128 a6, double a7, double a8, double a9)
{
  v398 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  *&v391[9] = *(a2 + 41);
  v13 = *&v391[9];
  v390 = v11;
  *v391 = v12;
  v389 = v10;
  v14 = *a3;
  v15 = a3[1];
  *&v394[9] = *(a3 + 41);
  v16 = a3[2];
  v393 = a3[1];
  *v394 = v16;
  v17 = *a3;
  v392 = v14;
  *(v396 + 9) = v13;
  v395[1] = v11;
  v396[0] = v12;
  v395[0] = v10;
  v18 = a3[2];
  *(v397 + 9) = *(a3 + 41);
  v396[3] = v15;
  v397[0] = v18;
  v396[2] = v17;
  v19 = *(&v11 + 1);
  v20 = *&v12;
  v21 = v391[24] >> 5;
  v22 = *(&v12 + 1);
  v23 = *&v391[16];
  if (v21 <= 2)
  {
    if (!v21)
    {
      v363 = v389;
      LODWORD(v364) = v11 | (((v11 >> 8) | (BYTE3(v11) << 16)) << 8);
      if (v394[24] <= 0x1Fu)
      {
        a6.n128_u32[0] = v393;
        v381 = v392;
        LODWORD(v382) = v393;
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE15BackgroundColorO_Ttg5(&v363, &v381, a6, v392);
        outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
        return 1;
      }

      goto LABEL_58;
    }

    if (v21 == 1)
    {
      if ((v394[24] & 0xE0) != 0x20)
      {
        goto LABEL_57;
      }

      v304 = DWORD1(v389);
      v309 = v389;
      v314 = v11;
      v320 = *(&v389 + 3);
      v298 = a6.n128_f64[0];
      v325 = BYTE8(v389);
      v285 = BYTE8(v389);
      v260 = v393;
      v255 = v392.n128_f32[3];
      v280 = v392.n128_u8[8];
      v257 = v392.n128_u64[0];
      v47 = *&v394[8];
      v48 = *v394;
      v49 = *(&v393 + 1);
      v50 = *a1;
      v271 = *&v394[16];
      v275 = *(a1 + 8);
      v267 = *(a1 + 16);
      v51 = *(a1 + 24);
      v263 = *(a1 + 32);
      v52 = *a5;
      v53 = a5[1];
      v54 = a5[3];
      *v383 = a5[2];
      *&v383[16] = v54;
      v381 = v52;
      v382 = v53;
      v55 = a5[4];
      v56 = a5[5];
      v57 = a5[6];
      v58 = a5[7];
      v388 = *(a5 + 128);
      v386 = v57;
      v387 = v58;
      v384 = v55;
      v385 = v56;
      outlined init with copy of PaintType(&v392, &v363);
      outlined init with copy of PaintType(&v389, &v363);
      v59 = v50;
      outlined init with copy of ShapeLayerHelper(&v381, &v363);
      ShapeLayerHelper.gradientLayer()();
      v61 = v60;
      outlined destroy of ShapeLayerHelper(&v381);

      LOWORD(v373) = v267;
      v374 = v51;
      v375 = v263;
      v371 = *&v61;
      v372 = v275;
      v368.n128_f64[0] = v19;
      v368.n128_f64[1] = v20;
      *&v369 = v22;
      *(&v369 + 1) = v23;
      v370[0] = 0;
      v376 = v49;
      v377 = v48;
      v378 = v47;
      v379 = v271;
      v380 = 0;
      if (v285 != v280)
      {
        goto LABEL_60;
      }

      v63 = *(a5 + 12);
      v62 = *(a5 + 13);
      v65 = *(a5 + 10);
      v64 = *(a5 + 11);
      v66 = *MEMORY[0x1E6979DA0];
      v253 = v23;
      v331 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(a4[12] * v19 + a4[10], a4[13] * v20 + a4[11], a4[12] * v22 + a4[10], a4[13] * v23 + a4[11], v298, a7);
      v292 = v67;
      v299 = v68;
      v345 = v69;
      v70 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(v63 * v49 + v65, v62 * v48 + v64, v63 * v47 + v65, v62 * v271 + v64, a8, a9);
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v77 = v66;
      if (v70 == v331 && v72 == v292)
      {
        outlined init with copy of PaintType(&v392, &v363);
        outlined init with copy of PaintType(&v389, &v363);
        v78 = v77;
      }

      else
      {
        outlined init with copy of PaintType(&v392, &v363);
        outlined init with copy of PaintType(&v389, &v363);
        v190 = v77;
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE10StartPointO_Tt0g5(v70, v72);
      }

      v191 = v260;
      if (v74 != v345 || v76 != v299)
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8EndPointO_Tt0g5(v74, v76);
      }

      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(v309 | (v304 << 32), v257) & 1) == 0)
      {
        goto LABEL_95;
      }

      if (v314)
      {
        if ((v260 & 1) == 0)
        {
LABEL_95:
          *&v363 = v309 | (v304 << 32);
          BYTE8(v363) = v325;
          *(&v363 + 3) = v320;
          LOBYTE(v364) = v314 & 1;
          v195 = specialized static GradientLayer.clippedValues(gradient:function:)(&v363, &v368);
          v197 = v200;
          v199 = v201;
          *&v363 = v257;
          BYTE8(v363) = v325;
          v202 = v255;
LABEL_103:
          *(&v363 + 3) = v202;
          LOBYTE(v364) = v191 & 1;
LABEL_104:
          v205 = specialized static GradientLayer.clippedValues(gradient:function:)(&v363, &v376);
          v206 = v205;
          v208 = v207;
          v210 = v209;
          if (v205 >> 62)
          {
            v211 = __CocoaSet.count.getter();
            if (!(v195 >> 62))
            {
LABEL_106:
              if (v211 == *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_107:
                v212 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo10CGColorRefa_Tt1g5(v208, v197);

                if ((v212 & 1) == 0)
                {
                  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6ColorsO_Tt0g5();
                }

                v213 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5(v206, v195);

                if ((v213 & 1) == 0)
                {
                  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE9LocationsO_Tt0g5();
                }

                if (v210)
                {
                  if (v199)
                  {

                    v215 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo21CAMediaTimingFunctionC_Tt1g5(v214, v199);

                    swift_bridgeObjectRelease_n();
                    if (v215)
                    {
                      goto LABEL_118;
                    }
                  }

                  goto LABEL_117;
                }

                if (v199)
                {

LABEL_117:
                  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE14InterpolationsO_Tt0g5(v210);
LABEL_118:
                  outlined destroy of PaintType(&v392);
                  outlined destroy of PaintType(&v389);
                  outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);

LABEL_163:

                  goto LABEL_164;
                }

                goto LABEL_119;
              }

LABEL_169:

              outlined destroy of PaintType(&v392);
              outlined destroy of PaintType(&v389);
              outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);

              return 0;
            }
          }

          else
          {
            v211 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!(v195 >> 62))
            {
              goto LABEL_106;
            }
          }

          if (v211 == __CocoaSet.count.getter())
          {
            goto LABEL_107;
          }

          goto LABEL_169;
        }
      }

      else if ((v260 & 1) != 0 || v320 != v255)
      {
        goto LABEL_95;
      }

      if (v49 == v19 && v48 == v20 && v47 == v22 && v271 == v253)
      {
        goto LABEL_119;
      }

      goto LABEL_95;
    }

    if ((v394[24] & 0xE0) != 0x40)
    {
      goto LABEL_57;
    }

    v306 = DWORD1(v389);
    v311 = v389;
    v317 = v11;
    v322 = *(&v389 + 3);
    v126 = a6.n128_f64[0];
    v327 = BYTE8(v389);
    v347 = BYTE8(v389);
    v277 = v393;
    v268 = v392.n128_f32[3];
    v334 = v392.n128_u8[8];
    v272 = v392.n128_u64[0];
    v282 = *v394;
    v288 = *&v394[8];
    v128 = *(&v393 + 1);
    v129 = *a1;
    v295 = *&v394[16];
    v301 = *(a1 + 8);
    v130 = *(a1 + 16);
    v131 = *(a1 + 24);
    v132 = *(a1 + 32);
    v133 = *a5;
    v134 = a5[1];
    v135 = a5[3];
    *v383 = a5[2];
    *&v383[16] = v135;
    v381 = v133;
    v382 = v134;
    v136 = a5[4];
    v137 = a5[5];
    v138 = a5[6];
    v139 = a5[7];
    v388 = *(a5 + 128);
    v386 = v138;
    v387 = v139;
    v384 = v136;
    v385 = v137;
    outlined init with copy of PaintType(&v392, &v363);
    outlined init with copy of PaintType(&v389, &v363);
    v140 = v129;
    outlined init with copy of ShapeLayerHelper(&v381, &v363);
    ShapeLayerHelper.gradientLayer()();
    v61 = v141;
    outlined destroy of ShapeLayerHelper(&v381);

    LOWORD(v373) = v130;
    v374 = v131;
    v375 = v132;
    v371 = *&v61;
    v372 = v301;
    v368.n128_f64[0] = v19;
    v368.n128_f64[1] = v20;
    *&v369 = v22;
    *(&v369 + 1) = v23;
    v370[0] = 1;
    v376 = v128;
    v377 = v282;
    v378 = v288;
    v379 = v295;
    v380 = 1;
    if (v347 != v334)
    {
      goto LABEL_60;
    }

    v142 = *MEMORY[0x1E6979DA0];
    v264 = v23;
    v143 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(v19, v20, v22, v23, v126, a7);
    v145 = v144;
    v147 = v146;
    v149 = v148;
    v150 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(v128, v282, v288, v295, a8, a9);
    v152 = v151;
    v154 = v153;
    v156 = v155;
    v77 = v142;
    if (v150 == v143 && v152 == v145)
    {
      outlined init with copy of PaintType(&v392, &v363);
      outlined init with copy of PaintType(&v389, &v363);
      v157 = v77;
    }

    else
    {
      outlined init with copy of PaintType(&v392, &v363);
      outlined init with copy of PaintType(&v389, &v363);
      v192 = v77;
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE10StartPointO_Tt0g5(v150, v152);
    }

    v191 = v277;
    if (v154 != v147 || v156 != v149)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8EndPointO_Tt0g5(v154, v156);
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(v311 | (v306 << 32), v272))
    {
      if (v317)
      {
        if ((v277 & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      else if ((v277 & 1) != 0 || v322 != v268)
      {
        goto LABEL_102;
      }

      if (v128 == v19 && v282 == v20 && v288 == v22 && v295 == v264)
      {
        goto LABEL_119;
      }
    }

LABEL_102:
    *&v363 = v311 | (v306 << 32);
    BYTE8(v363) = v327;
    *(&v363 + 3) = v322;
    LOBYTE(v364) = v317 & 1;
    v195 = specialized static GradientLayer.clippedValues(gradient:function:)(&v363, &v368);
    v197 = v203;
    v199 = v204;
    *&v363 = v272;
    BYTE8(v363) = v327;
    v202 = v268;
    goto LABEL_103;
  }

  if (v391[24] >> 5 > 4u)
  {
    if (v21 != 5)
    {
LABEL_58:
      outlined init with copy of PaintType(&v392, &v381);
      outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
      return 0;
    }

    if ((v394[24] & 0xE0) != 0xA0)
    {
      *&v383[9] = *(a2 + 41);
      v189 = a2[1];
      v381 = *a2;
      v382 = v189;
      *v383 = a2[2];
      v383[24] &= 0x1Fu;
      outlined init with copy of AngularGradient._Paint(&v381, &v363);
      goto LABEL_58;
    }

    v300 = a6.n128_f64[0];
    v315 = *&v394[16];
    v293 = *&v394[8];
    v79 = *v394;
    v310 = *v394;
    v80 = v394[24] & 0x1F;
    v381 = v389;
    LOBYTE(v382) = v11;
    BYTE3(v382) = BYTE3(v390);
    *(&v382 + 1) = *(&v390 + 1);
    DWORD1(v382) = DWORD1(v390);
    *(&v382 + 1) = *(&v390 + 1);
    *v383 = v12;
    *&v383[16] = *&v391[16];
    v383[24] = v391[24] & 0x1F;
    v81 = a4[10];
    v82 = a4[11];
    v83 = a4[12];
    v84 = a4[13];
    v286 = v392;
    v326 = v393;
    outlined init with copy of PaintType(&v389, &v363);
    outlined init with copy of PaintType(&v392, &v363);
    outlined init with copy of PaintType(&v389, &v363);
    v86.f64[0] = v81;
    v87.f64[0] = v83;
    ConicGradient.init(angular:bounds:)(&v381, &v363, v86, v82, v87, v84);
    v321 = *&v363;
    v305 = BYTE8(v363);
    v276 = *(&v363 + 3);
    v281 = LOBYTE(v364);
    v88 = v367;
    v381 = v286;
    v382 = v326;
    *v383 = v79;
    *&v383[8] = v293;
    *&v383[16] = v315;
    v383[24] = v80;
    v89 = *(a5 + 10);
    v90 = *(a5 + 11);
    v91 = *(a5 + 12);
    v92 = *(a5 + 13);
    *&v370[9] = *&v394[9];
    v369 = v393;
    *v370 = *v394;
    v368 = v392;
    v370[24] = v394[24] & 0x1F;
    outlined init with copy of AngularGradient._Paint(&v368, &v363);
    v93.f64[0] = v89;
    v94.f64[0] = v91;
    ConicGradient.init(angular:bounds:)(&v381, &v363, v93, v90, v94, v92);
    v316 = *&v363;
    v95 = BYTE8(v363);
    v287 = *(&v363 + 3);
    v294 = LOBYTE(v364);
    v96 = v367;
    v97 = *a1;
    v98 = *(a1 + 8);
    v99 = *(a1 + 16);
    v100 = *(a1 + 24);
    v101 = *(a1 + 32);
    v102 = *a5;
    v103 = a5[1];
    v104 = a5[3];
    *v383 = a5[2];
    *&v383[16] = v104;
    v381 = v102;
    v382 = v103;
    v105 = a5[4];
    v106 = a5[5];
    v107 = a5[6];
    v108 = a5[7];
    v388 = *(a5 + 128);
    v386 = v107;
    v387 = v108;
    v384 = v105;
    v385 = v106;
    v109 = v97;
    outlined init with copy of ShapeLayerHelper(&v381, &v363);
    ShapeLayerHelper.gradientLayer()();
    v38 = v110;
    outlined destroy of ShapeLayerHelper(&v381);

    LOWORD(v373) = v99;
    v374 = v100;
    v375 = v101;
    v371 = v38;
    v372 = v98;
    *&v363 = v19;
    *(&v363 + 1) = v20;
    v364 = v88;
    v365 = 0.0;
    v376 = *(&v326 + 1);
    LOBYTE(v366) = 4;
    v377 = v310;
    v378 = v96;
    v379 = 0.0;
    v380 = 4;
    if (v305 != v95)
    {

      goto LABEL_176;
    }

    v111 = v88;
    v113 = *(a5 + 12);
    v112 = *(a5 + 13);
    v115 = *(a5 + 10);
    v114 = *(a5 + 11);
    v116 = (a4[12] * v19 + a4[10]) / v300;
    v333 = (a4[13] * v20 + a4[11]) / a7;
    v77 = *MEMORY[0x1E6979DA8];

    v117 = __sincos_stret(v111);
    v118 = v112 * v310 + v114;
    v119 = (v113 * *(&v326 + 1) + v115) / a8;
    v120 = v118 / a9;
    v121 = __sincos_stret(v96);
    v122 = v119 + v121.__cosval;
    if (v119 != v116 || v120 != v333)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE10StartPointO_Tt0g5(v119, v120);
    }

    v123 = v120 + v121.__sinval;
    if (v122 != v116 + v117.__cosval || v123 != v333 + v117.__sinval)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8EndPointO_Tt0g5(v122, v123);
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(*&v321, *&v316))
    {
      if (v281)
      {
        if (*(&v326 + 1) == v19)
        {
          v124 = v294;
        }

        else
        {
          v124 = 0;
        }

        if (v124 != 1)
        {
          goto LABEL_143;
        }
      }

      else if ((v294 & 1) != 0 || v276 != v287 || *(&v326 + 1) != v19)
      {
        goto LABEL_143;
      }

      if (v310 == v20 && v96 == v111)
      {
        goto LABEL_166;
      }
    }

LABEL_143:
    v358 = v321;
    LOBYTE(v359) = v305;
    *(&v359 + 1) = v276;
    LOBYTE(v360) = v281;
    v232 = specialized static GradientLayer.clippedValues(gradient:function:)(&v358, &v363);
    v234 = v233;
    v236 = v235;
    v358 = v316;
    LOBYTE(v359) = v305;
    *(&v359 + 1) = v287;
    LOBYTE(v360) = v294;
    v237 = specialized static GradientLayer.clippedValues(gradient:function:)(&v358, &v376);
    v238 = v237;
    v240 = v239;
    v242 = v241;
    if (v237 >> 62)
    {
      v243 = __CocoaSet.count.getter();
      if (!(v232 >> 62))
      {
LABEL_145:
        if (v243 == *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_146:
          v244 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo10CGColorRefa_Tt1g5(v240, v234);

          if ((v244 & 1) == 0)
          {
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6ColorsO_Tt0g5();
          }

          v245 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5(v238, v232);

          if ((v245 & 1) == 0)
          {
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE9LocationsO_Tt0g5();
          }

          if (v242)
          {
            if (v236)
            {

              v247 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo21CAMediaTimingFunctionC_Tt1g5(v246, v236);

              swift_bridgeObjectRelease_n();
              if (v247)
              {
                goto LABEL_162;
              }
            }

            goto LABEL_161;
          }

          if (v236)
          {

LABEL_161:
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE14InterpolationsO_Tt0g5(v242);
LABEL_162:
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);

            goto LABEL_163;
          }

LABEL_166:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          goto LABEL_120;
        }

LABEL_175:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v38 = v371;
        goto LABEL_176;
      }
    }

    else
    {
      v243 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!(v232 >> 62))
      {
        goto LABEL_145;
      }
    }

    v249 = v77;
    v250 = v243;
    v251 = __CocoaSet.count.getter();
    v252 = v250;
    v77 = v249;
    if (v252 == v251)
    {
      goto LABEL_146;
    }

    goto LABEL_175;
  }

  if (v21 != 3)
  {
    if ((v394[24] & 0xE0) != 0x80)
    {
      goto LABEL_57;
    }

    v307 = DWORD1(v389);
    v312 = v389;
    v318 = v11;
    v323 = HIDWORD(v389);
    v158 = a6.n128_f64[0];
    v328 = BYTE8(v389);
    v341 = BYTE8(v389);
    v258 = v393;
    v265 = v392.n128_u32[3];
    v302 = v392.n128_u8[8];
    v261 = v392.n128_f64[0];
    v278 = *&v394[8];
    v283 = *&v394[16];
    v160 = *v394;
    v161 = *(&v393 + 1);
    v162 = *a1;
    v289 = *(a1 + 8);
    v273 = *(a1 + 16);
    v163 = *(a1 + 24);
    v269 = *(a1 + 32);
    v164 = *a5;
    v165 = a5[1];
    v166 = a5[3];
    *v383 = a5[2];
    *&v383[16] = v166;
    v381 = v164;
    v382 = v165;
    v167 = a5[4];
    v168 = a5[5];
    v169 = a5[6];
    v170 = a5[7];
    v388 = *(a5 + 128);
    v386 = v169;
    v387 = v170;
    v384 = v167;
    v385 = v168;
    outlined init with copy of PaintType(&v392, &v363);
    outlined init with copy of PaintType(&v389, &v363);
    v171 = v162;
    outlined init with copy of ShapeLayerHelper(&v381, &v363);
    ShapeLayerHelper.gradientLayer()();
    v61 = v172;
    outlined destroy of ShapeLayerHelper(&v381);

    LOWORD(v373) = v273;
    v374 = v163;
    v375 = v269;
    v371 = *&v61;
    v372 = v289;
    v368.n128_f64[0] = v19;
    v368.n128_f64[1] = v20;
    *&v369 = v22;
    *(&v369 + 1) = v23;
    v370[0] = 3;
    v376 = v161;
    v377 = v160;
    v378 = v278;
    v379 = v283;
    v380 = 3;
    if (v341 == v302)
    {
      v174 = *(a5 + 12);
      v173 = *(a5 + 13);
      v176 = *(a5 + 10);
      v175 = *(a5 + 11);
      v177 = a4[12];
      v178 = a4[13];
      v179 = a4[10];
      v180 = a4[11];
      v181 = (v177 * v19 + v179) / v158;
      if (v22 > v23)
      {
        v182 = v22;
      }

      else
      {
        v182 = v23;
      }

      v183 = ((v19 - v182) * v177 + v179) / v158;
      v184 = (v174 * v161 + v176) / a8;
      v185 = (v173 * v160 + v175) / a9;
      if (v278 > v283)
      {
        v186 = v278;
      }

      else
      {
        v186 = v283;
      }

      v336 = (v160 - v186) * v173 + v175;
      v342 = v183;
      v187 = ((v161 - v186) * v174 + v176) / a8;
      v77 = *MEMORY[0x1E6979DB0];
      if (v184 == v181 && v185 == (v178 * v20 + v180) / a7)
      {
        outlined init with copy of PaintType(&v392, &v363);
        outlined init with copy of PaintType(&v389, &v363);
        v188 = v77;
      }

      else
      {
        outlined init with copy of PaintType(&v392, &v363);
        outlined init with copy of PaintType(&v389, &v363);
        v193 = v77;
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE10StartPointO_Tt0g5(v184, v185);
      }

      v194 = v336 / a9;
      if (v187 != v342 || v194 != ((v20 - v182) * v178 + v180) / a7)
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8EndPointO_Tt0g5(v187, v194);
      }

      *&v363 = v312 | (v307 << 32);
      BYTE8(v363) = v328;
      HIDWORD(v363) = v323;
      LOBYTE(v364) = v318 & 1;
      v358 = v261;
      LOBYTE(v359) = v328;
      HIDWORD(v359) = v265;
      LOBYTE(v360) = v258 & 1;
      if ((specialized static ResolvedGradient.== infix(_:_:)(&v363, &v358) & 1) == 0 || v161 != v19 || v160 != v20 || v278 != v22 || v283 != v23)
      {
        *&v363 = v312 | (v307 << 32);
        BYTE8(v363) = v328;
        HIDWORD(v363) = v323;
        LOBYTE(v364) = v318 & 1;
        v195 = specialized static GradientLayer.clippedValues(gradient:function:)(&v363, &v368);
        v197 = v196;
        v199 = v198;
        *&v363 = v261;
        BYTE8(v363) = v328;
        HIDWORD(v363) = v265;
        LOBYTE(v364) = v258 & 1;
        goto LABEL_104;
      }

LABEL_119:
      outlined destroy of PaintType(&v392);
      outlined destroy of PaintType(&v389);
LABEL_120:
      outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);

LABEL_164:
      v248 = v371;
      goto LABEL_165;
    }

LABEL_60:
    outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);

    return 0;
  }

  if ((v394[24] & 0xE0) != 0x60)
  {
LABEL_57:

    goto LABEL_58;
  }

  v303 = DWORD1(v389);
  v308 = v389;
  v313 = v11;
  v319 = *(&v389 + 3);
  v297 = a6.n128_f64[0];
  v324 = BYTE8(v389);
  v279 = BYTE8(v389);
  v254 = v392.n128_f32[3];
  v256 = v393;
  v274 = v392.n128_u8[8];
  v259 = v392.n128_u64[0];
  v284 = *&v394[16];
  v24 = *&v394[8];
  v25 = *v394;
  v26 = *(&v393 + 1);
  v27 = *a1;
  v270 = *(a1 + 8);
  v266 = *(a1 + 16);
  v28 = *(a1 + 24);
  v262 = *(a1 + 32);
  v29 = *a5;
  v30 = a5[1];
  v31 = a5[3];
  *v383 = a5[2];
  *&v383[16] = v31;
  v381 = v29;
  v382 = v30;
  v32 = a5[4];
  v33 = a5[5];
  v34 = a5[6];
  v35 = a5[7];
  v388 = *(a5 + 128);
  v386 = v34;
  v387 = v35;
  v384 = v32;
  v385 = v33;
  outlined init with copy of PaintType(&v392, &v363);
  outlined init with copy of PaintType(&v389, &v363);
  v36 = v27;
  outlined init with copy of ShapeLayerHelper(&v381, &v363);
  ShapeLayerHelper.gradientLayer()();
  v38 = v37;
  outlined destroy of ShapeLayerHelper(&v381);

  v360 = v266;
  v361 = v28;
  v362 = v262;
  v358 = v38;
  v359 = v270;
  v376 = v19;
  v377 = v20;
  v378 = v22;
  v379 = v23;
  v380 = 2;
  v371 = v26;
  v372 = v25;
  v373 = v24;
  v374 = v284;
  v375 = 2;
  if (v279 != v274)
  {
LABEL_176:
    outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);

    return 0;
  }

  v40 = *(a5 + 12);
  v39 = *(a5 + 13);
  v42 = *(a5 + 10);
  v41 = *(a5 + 11);
  v44 = a4[12];
  v43 = a4[13];
  v46 = a4[10];
  v45 = a4[11];
  outlined init with copy of PaintType(&v392, &v363);
  outlined init with copy of PaintType(&v389, &v363);
  specialized GradientLayer.GradientGeometry.init(size:function:bounds:)(&v376, &v368, v297, a7, v46, v45, v44, v43);
  specialized GradientLayer.GradientGeometry.init(size:function:bounds:)(&v371, &v363, a8, a9, v42, v41, v40, v39);
  if (v364 != *&v369 || v365 != *(&v369 + 1))
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE10StartPointO_Tt0g5(v364, v365);
  }

  if (v366 != *v370 || v367 != *&v370[8])
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8EndPointO_Tt0g5(v366, v367);
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(v308 | (v303 << 32), v259))
  {
    if (v313)
    {
      if ((v256 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    else if ((v256 & 1) != 0 || v319 != v254)
    {
      goto LABEL_127;
    }

    if (v26 == v19 && v25 == v20 && v24 == v22 && v284 == v23)
    {
      goto LABEL_157;
    }
  }

LABEL_127:
  v354 = v308 | (v303 << 32);
  v355 = v324;
  v356 = v319;
  v357 = v313 & 1;
  v216 = specialized static GradientLayer.clippedValues(gradient:function:)(&v354, &v376);
  v218 = v217;
  v220 = v219;
  v354 = v259;
  v355 = v324;
  v356 = v254;
  v357 = v256 & 1;
  v221 = specialized static GradientLayer.clippedValues(gradient:function:)(&v354, &v371);
  v222 = v221;
  v224 = v223;
  v226 = v225;
  if (v221 >> 62)
  {
    v227 = __CocoaSet.count.getter();
    if (!(v216 >> 62))
    {
LABEL_129:
      if (v227 == *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_130;
      }

      goto LABEL_172;
    }
  }

  else
  {
    v227 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v216 >> 62))
    {
      goto LABEL_129;
    }
  }

  if (v227 != __CocoaSet.count.getter())
  {
LABEL_172:

    outlined destroy of GradientLayer.GradientGeometry(&v363);
    outlined destroy of GradientLayer.GradientGeometry(&v368);
    outlined destroy of PaintType(&v392);
    outlined destroy of PaintType(&v389);
    outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);

    return 0;
  }

LABEL_130:
  v228 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo10CGColorRefa_Tt1g5(v224, v218);

  if ((v228 & 1) == 0)
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6ColorsO_Tt0g5();
  }

  v229 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5(v222, v216);

  if ((v229 & 1) == 0)
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE9LocationsO_Tt0g5();
  }

  if (!v226)
  {
    if (v220)
    {

      goto LABEL_156;
    }

LABEL_157:
    outlined destroy of PaintType(&v392);
    outlined destroy of PaintType(&v389);
    outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
    goto LABEL_158;
  }

  if (v220)
  {

    v231 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo21CAMediaTimingFunctionC_Tt1g5(v230, v220);

    swift_bridgeObjectRelease_n();
    if (v231)
    {
      outlined destroy of PaintType(&v392);
      outlined destroy of PaintType(&v389);
      outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);

LABEL_158:
      outlined destroy of GradientLayer.GradientGeometry(&v363);
      outlined destroy of GradientLayer.GradientGeometry(&v368);
      v248 = v358;
      goto LABEL_165;
    }
  }

LABEL_156:
  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE14InterpolationsO_Tt0g5(v226);
  outlined destroy of PaintType(&v392);
  outlined destroy of PaintType(&v389);
  outlined destroy of (ShapeType, ShapeType)(v395, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
  outlined destroy of GradientLayer.GradientGeometry(&v363);
  outlined destroy of GradientLayer.GradientGeometry(&v368);

  v248 = v358;
LABEL_165:

  return 1;
}

void updateShadow(platform:gradientLayer:shadow:opaque:)(uint64_t *a1, id a2, __int128 *a3, char a4)
{
  v5 = *a1;
  v6 = a3[1];
  v20 = *a3;
  v21 = v6;
  v22[0] = a3[2];
  *(v22 + 13) = *(a3 + 45);
  v7 = *(a3 + 53);
  if (v7)
  {
    goto LABEL_7;
  }

  v9 = [a2 sublayers];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer, 0x1E6979398);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193AC03C0](0, v11);
      goto LABEL_6;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
LABEL_6:
      v13 = v12;

      [a2 setShadowPathIsBounds_];
      [a2 setPunchoutShadow_];
      v14 = v13;
      [v14 cornerRadius];
      [a2 setCornerRadius_];
      v15 = [v14 cornerCurve];

      [a2 setCornerCurve_];
LABEL_7:
      v19 = v5;
      v16[0] = v20;
      v16[1] = v21;
      *v17 = v22[0];
      *&v17[13] = *(v22 + 13);
      v18 = v7;
      DisplayList.ViewUpdater.Platform.setShadow(_:layer:)(v16, a2);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

BOOL PaintType.isOpaqueForShadow.getter()
{
  v1 = *v0;
  v2 = *(v0 + 56) >> 5;
  if (v2 > 2)
  {
    if (*(v0 + 56) >> 5 > 4u)
    {
      if (v2 == 5)
      {
        v10 = *(v1 + 16);
        if (v10)
        {
          v11 = (v1 + 44);
          LOBYTE(result) = 1;
          v12 = 1 - v10;
          while (1)
          {
            if (result)
            {
              result = *v11 == 1.0;
              if (!v12)
              {
                return result;
              }
            }

            else
            {
              result = 0;
              if (!v12)
              {
                return result;
              }
            }

            ++v12;
            v11 += 12;
            if (v12 == 1)
            {
              goto LABEL_47;
            }
          }
        }
      }
    }

    else if (v2 == 3)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        v4 = (v1 + 44);
        LOBYTE(result) = 1;
        v6 = 1 - v3;
        while (1)
        {
          if (result)
          {
            result = *v4 == 1.0;
            if (!v6)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (!v6)
            {
              return result;
            }
          }

          ++v6;
          v4 += 12;
          if (v6 == 1)
          {
            goto LABEL_46;
          }
        }
      }
    }

    else
    {
      v16 = *(v1 + 16);
      if (v16)
      {
        v17 = (v1 + 44);
        LOBYTE(result) = 1;
        v18 = 1 - v16;
        while (1)
        {
          if (result)
          {
            result = *v17 == 1.0;
            if (!v18)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (!v18)
            {
              return result;
            }
          }

          ++v18;
          v17 += 12;
          if (v18 == 1)
          {
            goto LABEL_48;
          }
        }
      }
    }

    return 0;
  }

  if (!v2)
  {
    return v0[3] == 1.0;
  }

  if (v2 != 1)
  {
    v13 = *(v1 + 16);
    if (v13)
    {
      v14 = (v1 + 44);
      LOBYTE(result) = 1;
      v15 = 1 - v13;
      while (1)
      {
        if (result)
        {
          result = *v14 == 1.0;
          if (!v15)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (!v15)
          {
            return result;
          }
        }

        ++v15;
        v14 += 12;
        if (v15 == 1)
        {
          goto LABEL_45;
        }
      }
    }

    return 0;
  }

  v7 = *(v1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = (v1 + 44);
  LOBYTE(result) = 1;
  v9 = 1 - v7;
  do
  {
    if (result)
    {
      result = *v8 == 1.0;
      if (!v9)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!v9)
      {
        return result;
      }
    }

    ++v9;
    v8 += 12;
  }

  while (v9 != 1);
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t ShapeLayerAsyncShadowHelper.visitPaint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v123 = a1;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v119[-v8];
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v119[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v119[-v15];
  v125 = v3;
  *&v124 = a3;
  v18 = AnyResolvedPaint.as<A>(type:)(a2, a3, v17, v9);
  if ((*(v10 + 48))(v9, 1, a2, v18) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v20 = v10;
  v21 = v16;
  (*(v10 + 32))(v16, v9, a2);
  v22 = v125;
  v23 = *(v125 + 8);
  v24 = *(v23 + 32);
  v170[0] = *(v23 + 16);
  v170[1] = v24;
  v171 = *(v23 + 48);
  v173 = v171;
  v172[0] = v170[0];
  v172[1] = v24;
  outlined init with copy of Path.Storage(v172, v137);
  ShapeType.init(_:)(v170, &v140);
  v25 = *(v22 + 16);
  v26 = *(v25 + 32);
  v168[0] = *(v25 + 16);
  v168[1] = v26;
  v169 = *(v25 + 48);
  v175 = v169;
  v174[0] = v168[0];
  v174[1] = v26;
  outlined init with copy of Path.Storage(v174, v137);
  ShapeType.init(_:)(v168, &v146);
  v122 = v20;
  v27 = *(v20 + 16);
  v27(v13, v123, a2);
  PaintType.init<A>(_:)(v13, a2, v152.n128_u64);
  v27(v13, v21, a2);
  result = PaintType.init<A>(_:)(v13, a2, &v155);
  v158[2] = v142;
  v158[3] = v143;
  v158[4] = v144;
  v158[0] = v140;
  v158[1] = v141;
  v162 = v148;
  v163 = v149;
  v164 = v150;
  v160 = v146;
  v159 = v145;
  v165 = v151;
  v161 = v147;
  v28 = v21;
  if (v145)
  {
    if (v145 == 3)
    {
      v29 = vorrq_s8(vorrq_s8(v141, v143), vorrq_s8(v142, v144));
      if (!(*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)) | *(&v140 + 1) | v140))
      {
        (*(v122 + 8))(v21, a2);
        outlined destroy of PaintType(&v152);
        outlined destroy of PaintType(&v155);
        if (v151 != 3)
        {
          return outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
        }

        v30 = vorrq_s8(vorrq_s8(v147, v149), vorrq_s8(v148, v150));
        if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | *(&v146 + 1) | v146)
        {
          return outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
        }

        result = outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
        v50 = v125;
        goto LABEL_129;
      }
    }

LABEL_10:
    outlined destroy of PaintType(&v152);
    outlined destroy of PaintType(&v155);
    goto LABEL_11;
  }

  if (v151)
  {
    goto LABEL_10;
  }

  v31 = v23;
  v137[0] = v152;
  v137[1] = v153;
  v138[0] = v154[0];
  *(v138 + 9) = *(v154 + 9);
  v32.n128_u64[1] = *(&v156 + 1);
  v138[2] = v155;
  v138[3] = v156;
  v139[0] = v157[0];
  v33.n128_u64[1] = *(&v157[1] + 1);
  *(v139 + 9) = *(v157 + 9);
  v34 = BYTE8(v154[1]) >> 5;
  if (v34 <= 2)
  {
    if (v34)
    {
      if (v34 == 1)
      {
        if ((BYTE8(v157[1]) & 0xE0) != 0x20)
        {
          goto LABEL_114;
        }

        v39 = *(v152.n128_u64[0] + 16);
        if (v39)
        {
          v40 = (v152.n128_u64[0] + 44);
          LOBYTE(v41) = 1;
          v42 = 1 - v39;
          do
          {
            if (v41)
            {
              v41 = *v40 == 1.0;
              if (!v42)
              {
                goto LABEL_73;
              }
            }

            else
            {
              v41 = 0;
              if (!v42)
              {
                goto LABEL_73;
              }
            }

            ++v42;
            v40 += 12;
          }

          while (v42 != 1);
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          return result;
        }

        v41 = 0;
LABEL_73:
        v87 = *(v155 + 16);
        if (v87)
        {
          v88 = (v155 + 44);
          v89 = 1;
          v90 = 1 - v87;
          while (1)
          {
            if (v89)
            {
              v91 = *v88;
              v89 = *v88 == 1.0;
              if (!v90)
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (!v90)
              {
                goto LABEL_92;
              }

              v89 = 0;
            }

            ++v90;
            v88 += 12;
            if (v90 == 1)
            {
              goto LABEL_134;
            }
          }
        }
      }

      else
      {
        if ((BYTE8(v157[1]) & 0xE0) != 0x40)
        {
          goto LABEL_114;
        }

        v73 = *(v152.n128_u64[0] + 16);
        if (v73)
        {
          v74 = (v152.n128_u64[0] + 44);
          LOBYTE(v41) = 1;
          v75 = 1 - v73;
          while (1)
          {
            if (v41)
            {
              v41 = *v74 == 1.0;
              if (!v75)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v41 = 0;
              if (!v75)
              {
                goto LABEL_81;
              }
            }

            ++v75;
            v74 += 12;
            if (v75 == 1)
            {
              goto LABEL_131;
            }
          }
        }

        v41 = 0;
LABEL_81:
        v92 = *(v155 + 16);
        if (v92)
        {
          v93 = (v155 + 44);
          v94 = 1;
          v95 = 1 - v92;
          while (1)
          {
            if (v94)
            {
              v91 = *v93;
              v94 = *v93 == 1.0;
              if (!v95)
              {
LABEL_90:
                if (v41 != (v91 == 1.0))
                {
                  goto LABEL_114;
                }

LABEL_93:
                v166 = *(v23 + 72);
                v167 = *(v23 + 88);
                v97 = *(v23 + 96);
                v96 = *(v23 + 104);
                v98 = *(v23 + 112);
                v99 = *(v23 + 124);
                v132 = *(v25 + 72);
                LODWORD(v133) = *(v25 + 88);
                if (v99 == *(v25 + 124))
                {
                  v100 = *(v25 + 96);
                  v101 = *(v25 + 104);
                  v102 = *(v25 + 112);
                  v79 = v122;
                  if (v101 == v96 && v102 == v98)
                  {
                    outlined init with copy of ShapeType(&v140, &v127);
                    outlined init with copy of ShapeType(&v146, &v127);
                  }

                  else
                  {
                    outlined init with copy of ShapeType(&v140, &v127);
                    outlined init with copy of ShapeType(&v146, &v127);
                    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v101, v102);
                  }

                  goto LABEL_125;
                }

LABEL_120:
                outlined init with copy of ShapeType(&v140, &v127);
                outlined init with copy of ShapeType(&v146, &v127);
                outlined destroy of (ShapeType, ShapeType)(v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
                outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
                outlined destroy of ShapeType(&v146);
                outlined destroy of ShapeType(&v140);
                return (*(v122 + 8))(v21, a2);
              }
            }

            else
            {
              if (!v95)
              {
LABEL_92:
                if (v41)
                {
                  goto LABEL_114;
                }

                goto LABEL_93;
              }

              v94 = 0;
            }

            ++v95;
            v93 += 12;
            if (v95 == 1)
            {
              goto LABEL_135;
            }
          }
        }
      }

      if (v41)
      {
        goto LABEL_114;
      }

      goto LABEL_93;
    }

    if (BYTE8(v157[1]) > 0x1Fu)
    {
      goto LABEL_114;
    }

    v58 = *(&v155 + 3);
    v50 = v125;
    v59 = *(v31 + 72);
    v60 = *(v31 + 80);
    v61 = *(v31 + 84);
    v62 = *(v31 + 88);
    v64 = *(v31 + 96);
    v63 = *(v31 + 104);
    v65 = *(v31 + 112);
    v66 = *(v31 + 124);
    v126 = 0;
    v67 = *(v25 + 72);
    v69 = *(v25 + 80);
    v68 = *(v25 + 84);
    v70 = *(v25 + 88);
    v71 = *(v25 + 96);
    v33.n128_u64[0] = *(v25 + 104);
    v32.n128_u64[0] = *(v25 + 112);
    v72 = *(v25 + 124);
    LOBYTE(v166) = 0;
    v79 = v122;
    if (v66 != v72)
    {
      outlined destroy of (ShapeType, ShapeType)(v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
      outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
      return (*(v79 + 8))(v28, a2);
    }

    v80 = v152.n128_f32[3];
    if (v33.n128_f64[0] != v63 || v32.n128_f64[0] != v65)
    {
      *&v124 = v59;
      LODWORD(v123) = v60;
      v120 = v152.n128_f32[3];
      LODWORD(v121) = v62;
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v33.n128_f64[0], v32.n128_f64[0]);
      v80 = v120;
      v62 = v121;
      v60 = v123;
      v59 = v124;
    }

    v81 = v61 * v80;
    v82 = v58 * v68;
    if (v71 != v64)
    {
      v83 = v71;
      v84 = v59;
      v85 = v60;
      v86 = v62;
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowRadiusO_Tt0g5(v83);
      v62 = v86;
      v60 = v85;
      v59 = v84;
    }

    *&v132 = v59;
    *(&v132 + 1) = __PAIR64__(LODWORD(v81), v60);
    LODWORD(v133) = v62;
    v127.n128_u64[0] = v67;
    v127.n128_u64[1] = __PAIR64__(LODWORD(v82), v69);
    LODWORD(v128) = v70;
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11ShadowColorO_Ttg5(&v132, &v127, v33, v32);
    outlined destroy of (ShapeType, ShapeType)(v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
    outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
    goto LABEL_128;
  }

  if (BYTE8(v154[1]) >> 5 > 4u)
  {
    if (v34 != 5 || (BYTE8(v157[1]) & 0xE0) != 0xA0)
    {
      goto LABEL_114;
    }

    v43 = v25;
    v44 = v21;
    v45 = *&v157[1];
    v46 = BYTE8(v157[1]) & 0x1F;
    v127 = v152;
    v128 = v153;
    v129 = v154[0];
    v130 = *&v154[1];
    v131 = BYTE8(v154[1]) & 0x1F;
    v123 = v155;
    v124 = v157[0];
    v121 = v156;
    v47 = AngularGradient._Paint.isOpaque.getter();
    v132 = v123;
    v133 = v121;
    v134 = v124;
    v135 = v45;
    v136 = v46;
    v48 = AngularGradient._Paint.isOpaque.getter();
    v50 = v125;
    if (((v47 ^ v48) & 1) != 0 || (v132 = *(v31 + 72), LODWORD(v133) = *(v31 + 88), v52 = *(v31 + 96), v51 = *(v31 + 104), v53 = *(v31 + 112), v54 = *(v31 + 124), v55 = *(v43 + 72), v127 = v55, LODWORD(v128) = *(v43 + 88), v54 != *(v43 + 124)))
    {
      outlined destroy of (ShapeType, ShapeType)(v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
      outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
      return (*(v122 + 8))(v21, a2);
    }

    v56 = *(v43 + 96);
    v55.n128_u64[0] = *(v43 + 104);
    v49.n128_u64[0] = *(v43 + 112);
    v57 = v122;
    if (v55.n128_f64[0] != v51 || v49.n128_f64[0] != v53)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v55.n128_f64[0], v49.n128_f64[0]);
    }

    if (v56 != v52)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowRadiusO_Tt0g5(v56);
    }

    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11ShadowColorO_Ttg5(&v132, &v127, v55, v49);
    outlined destroy of (ShapeType, ShapeType)(v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
    outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
    result = (*(v57 + 8))(v44, a2);
    goto LABEL_129;
  }

  if (v34 == 3)
  {
    if ((BYTE8(v157[1]) & 0xE0) != 0x60)
    {
      goto LABEL_114;
    }

    v35 = *(v152.n128_u64[0] + 16);
    if (v35)
    {
      v36 = (v152.n128_u64[0] + 44);
      LOBYTE(v37) = 1;
      v38 = 1 - v35;
      while (1)
      {
        if (v37)
        {
          v37 = *v36 == 1.0;
          if (!v38)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v37 = 0;
          if (!v38)
          {
            goto LABEL_98;
          }
        }

        ++v38;
        v36 += 12;
        if (v38 == 1)
        {
          goto LABEL_132;
        }
      }
    }

    v37 = 0;
LABEL_98:
    v105 = *(v155 + 16);
    if (v105)
    {
      v106 = (v155 + 44);
      v107 = 1;
      v108 = 1 - v105;
      while (1)
      {
        if (v107)
        {
          v109 = *v106;
          v107 = *v106 == 1.0;
          if (!v108)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (!v108)
          {
            goto LABEL_121;
          }

          v107 = 0;
        }

        ++v108;
        v106 += 12;
        if (v108 == 1)
        {
          goto LABEL_136;
        }
      }
    }

LABEL_113:
    if (v37)
    {
      goto LABEL_114;
    }

LABEL_116:
    v166 = *(v23 + 72);
    v167 = *(v23 + 88);
    v97 = *(v23 + 96);
    v114 = *(v23 + 104);
    v115 = *(v23 + 112);
    v116 = *(v23 + 124);
    v132 = *(v25 + 72);
    LODWORD(v133) = *(v25 + 88);
    if (v116 != *(v25 + 124))
    {
      goto LABEL_120;
    }

    v100 = *(v25 + 96);
    v117 = *(v25 + 104);
    v118 = *(v25 + 112);
    if (v117 == v114 && v118 == v115)
    {
      outlined init with copy of ShapeType(&v140, &v127);
      outlined init with copy of ShapeType(&v146, &v127);
      v79 = v122;
    }

    else
    {
      outlined init with copy of ShapeType(&v140, &v127);
      outlined init with copy of ShapeType(&v146, &v127);
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v117, v118);
      v79 = v122;
    }

LABEL_125:
    v50 = v125;
    if (v100 != v97)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowRadiusO_Tt0g5(v100);
    }

    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11ShadowColorO_Ttg5(&v166, &v132, v103, v104);
    outlined destroy of (ShapeType, ShapeType)(v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
    outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
    outlined destroy of ShapeType(&v146);
    outlined destroy of ShapeType(&v140);
LABEL_128:
    result = (*(v79 + 8))(v28, a2);
LABEL_129:
    *(v50 + 32) = 1;
    return result;
  }

  if ((BYTE8(v157[1]) & 0xE0) != 0x80)
  {
    goto LABEL_114;
  }

  v76 = *(v152.n128_u64[0] + 16);
  if (v76)
  {
    v77 = (v152.n128_u64[0] + 44);
    LOBYTE(v37) = 1;
    v78 = 1 - v76;
    while (1)
    {
      if (v37)
      {
        v37 = *v77 == 1.0;
        if (!v78)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v37 = 0;
        if (!v78)
        {
          goto LABEL_106;
        }
      }

      ++v78;
      v77 += 12;
      if (v78 == 1)
      {
        goto LABEL_133;
      }
    }
  }

  v37 = 0;
LABEL_106:
  v110 = *(v155 + 16);
  if (!v110)
  {
    goto LABEL_113;
  }

  v111 = (v155 + 44);
  v112 = 1;
  v113 = 1 - v110;
  while (v112)
  {
    v109 = *v111;
    v112 = *v111 == 1.0;
    if (!v113)
    {
LABEL_115:
      if (v37 != (v109 == 1.0))
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    }

LABEL_109:
    ++v113;
    v111 += 12;
    if (v113 == 1)
    {
      goto LABEL_137;
    }
  }

  if (v113)
  {
    v112 = 0;
    goto LABEL_109;
  }

LABEL_121:
  if (!v37)
  {
    goto LABEL_116;
  }

LABEL_114:
  outlined destroy of (ShapeType, ShapeType)(v137, &lazy cache variable for type metadata for (PaintType, PaintType), &type metadata for PaintType, &type metadata for PaintType);
LABEL_11:
  outlined destroy of (ShapeType, ShapeType)(v158, &lazy cache variable for type metadata for (ShapeType, ShapeType), &type metadata for ShapeType, &type metadata for ShapeType);
  return (*(v122 + 8))(v21, a2);
}

void *PaintShapeLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 6;
  v5 = &v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paint] = 0;
  v6 = &v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle] = 256;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void closure #1 in PaintShapeLayer.draw(in:)(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin);
  if (*(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin) != 0.0 || *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin + 8) != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  v5 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paint);
  if (v5)
  {
    v6 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 16);
    v19[0] = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path);
    v19[1] = v6;
    v20 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 32);
    v7 = 256;
    if (!*(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle + 1))
    {
      v7 = 0;
    }

    v15 = v7 | *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v8 = *a1;
    v9 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds);
    v10 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds + 8);
    v11 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds + 16);
    v12 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds + 24);
    v13 = *v4;
    v14 = v4[1];

    outlined init with copy of Path(v19, &v21);
    v23.origin.x = v9;
    v23.origin.y = v10;
    v23.size.width = v11;
    v23.size.height = v12;
    v21 = CGRectOffset(v23, v13, v14);
    v22 = 0;
    (*(*v5 + 80))(v19, &v15, v8, &v21);
    outlined destroy of Path(v19);
  }

  else
  {
    __break(1u);
  }
}

id @objc ColorShapeLayer.init(layer:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8.receiver = a1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithLayer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t specialized static ShapeLayerHelper.updateAsync(layer:old:new:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  result = 0;
  if (*(a2 + 112) == a3[112] && ((*(a2 + 113) ^ a3[113]) & 1) == 0)
  {
    if (*(a2 + 128) == a3[128])
    {
      v10 = v3;
      v11 = v4;
      v8[0] = a1;
      v8[1] = a2;
      v8[2] = a3;
      v9 = 0;
      v7 = *(**(a2 + 72) + 152);

      v7(v8, &unk_1F005AA28, &protocol witness table for ShapeLayerAsyncHelper);

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  outlined copy of ShapeType(*a2, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithCopy for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v24 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  outlined copy of ShapeType(*a2, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v24;
  *(a1 + 72) = v25;
  *(a1 + 80) = v26;
  outlined consume of ShapeType(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  v17 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v17;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  outlined consume of ShapeType(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PaintType(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  outlined copy of PaintType(*a2, v4, v5, v6, v7, v8, v9, v10);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  v18 = *(a1 + 56);
  *(a1 + 56) = v10;
  outlined consume of PaintType(v11, v12, v13, v14, v15, v16, v17, v18);
  return a1;
}

uint64_t assignWithTake for PaintType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v12;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  v13 = *(a1 + 56);
  *(a1 + 56) = v4;
  outlined consume of PaintType(v5, v7, v6, v8, v9, v10, v11, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for PaintType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for PaintType(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 57) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 32;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for PaintType(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t destructiveInjectEnumTag for PaintType(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 56) & 3 | (32 * a2);
    *(result + 16) = *(result + 16);
    *(result + 56) = v2;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = -64;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShapeLayerAsyncHelper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ShapeLayerAsyncHelper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ShapeLayerHelper(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 48);
  v10 = v4;
  outlined copy of Path.Storage(v5, v6, v7, v8, v9);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  v11 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v11;
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t assignWithCopy for ShapeLayerHelper(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of Path.Storage(v7, v8, v9, v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v16 = *(a1 + 48);
  *(a1 + 48) = v11;
  outlined consume of Path.Storage(v12, v13, v14, v15, v16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for ShapeLayerHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(a2 + 32);
  v10 = *(a1 + 48);
  *(a1 + 48) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v11 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v11;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShapeLayerHelper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t storeEnumTagSinglePayload for ShapeLayerHelper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for ShapeType(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  outlined copy of ShapeType(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  outlined consume of ShapeType(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  return a1;
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

uint64_t assignWithTake for ShapeType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  outlined consume of ShapeType(v4, v6, v5, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShapeType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShapeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ShapeType(uint64_t a1)
{
  if (*(a1 + 80) <= 2u)
  {
    return *(a1 + 80);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for ShapeType(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t initializeWithCopy for ShapeLayerShadowHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = v4;
  outlined copy of Path.Storage(v5, v6, v7, v8, v9);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

uint64_t assignWithCopy for ShapeLayerShadowHelper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of Path.Storage(v7, v8, v9, v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v16 = *(a1 + 48);
  *(a1 + 48) = v11;
  outlined consume of Path.Storage(v12, v13, v14, v15, v16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

__n128 __swift_memcpy126_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for ShapeLayerShadowHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 48);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v11;
  v12 = *(a1 + 48);
  *(a1 + 48) = v6;
  outlined consume of Path.Storage(v7, v8, v9, v10, v12);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShapeLayerShadowHelper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 126))
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

uint64_t storeEnumTagSinglePayload for ShapeLayerShadowHelper(uint64_t result, int a2, int a3)
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
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
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

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ShapeLayerAsyncShadowHelper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for ShapeLayerAsyncShadowHelper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for ShapeLayerAsyncShadowHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShapeLayerAsyncShadowHelper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for ShapeLayerAsyncShadowHelper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Date.nextDown.getter(uint64_t a1)
{
  Date.timeIntervalSinceReferenceDate.getter();

  return Date.init(timeIntervalSinceReferenceDate:)();
}

uint64_t Date.nextUp.getter(uint64_t a1)
{
  Date.timeIntervalSinceReferenceDate.getter();

  return Date.init(timeIntervalSinceReferenceDate:)();
}

uint64_t max<A>(_:ifPresent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v22 = a5;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11, v17);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    (*(v12 + 8))(v14, v11);
    return (*(v15 + 16))(a6, a1, a3);
  }

  else
  {
    (*(v15 + 32))(v19, v14, a3);
    v22(a1, v19, a3, a4);
    return (*(v15 + 8))(v19, a3);
  }
}

uint64_t Array.sort<A>(by:reversed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6318], a3);
  swift_getWitnessTable(MEMORY[0x1E69E6338], a3, WitnessTable);
  return MutableCollection<>.sort(by:)();
}

uint64_t RandomAccessCollection.lowerBound(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a5@<X8>)
{
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v24 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.count.getter();
  if (result >= 1)
  {
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v14 = v16;
    v26 = (v7 + 8);
    v27 = (v7 + 16);
    v25 = (v15 - 8);
    v29 = a5;
    v30 = v5;
    v36 = v15;
    v28 = v16;
    do
    {
      v35 = result;
      v17 = result >> 1;
      v18 = v14;
      v14(v12, a5, v9);
      v37 = v17;
      Collection.formIndex(_:offsetBy:)();
      v19 = dispatch thunk of Collection.subscript.read();
      v20 = v9;
      v21 = v31;
      v22 = AssociatedTypeWitness;
      (*v27)(v31);
      (v19)(v38, 0);
      LOBYTE(v19) = v33(v21);
      (*v26)(v21, v22);
      v23 = *v25;
      if (v19)
      {
        v23(a5, v20);
        v18(a5, v12, v20);
        dispatch thunk of Collection.formIndex(after:)();
        v23(v12, v20);
        result = v35 + ~v37;
      }

      else
      {
        v23(v12, v20);
        result = v37;
      }

      v9 = v20;
      a5 = v29;
      v14 = v28;
    }

    while (result > 0);
  }

  return result;
}

uint64_t IndirectOptional.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v6 + 48))(v7) == 1)
  {
    v10 = type metadata accessor for Optional();
    result = (*(*(v10 - 8) + 8))(a1, v10);
    v12 = 0;
  }

  else
  {
    v13 = *(v6 + 32);
    v13(v9, a1, a2);
    v12 = swift_allocBox();
    result = (v13)(v14, v9, a2);
  }

  *a3 = v12;
  return result;
}

uint64_t IndirectOptional.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v4 = *(a1 + 16);
    v5 = swift_projectBox();
    v11 = *(v4 - 8);
    (*(v11 + 16))(a2, v5, v4);
    v6 = *(v11 + 56);
    v7 = a2;
    v8 = 0;
    v9 = v4;
  }

  else
  {
    v9 = *(a1 + 16);
    v6 = *(*(v9 - 8) + 56);
    v7 = a2;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t IndirectOptional.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    v8 = type metadata accessor for Optional();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v10 = 0;
  }

  else
  {
    v11 = *(v5 + 32);
    v11(v7, a1, v4);
    v10 = swift_allocBox();
    result = (v11)(v12, v7, v4);
  }

  *v2 = v10;
  return result;
}

void (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Slice();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for Range();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v16);
  return MutableCollection<>.subscript.modify;
}

void MutableCollection<>.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v10 = (*a1)[7];
  v8 = (*a1)[3];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable(MEMORY[0x1E69E74F8], v8);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable(MEMORY[0x1E69E74F8], v2[3]);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for Range();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v19 = &v36 - v18;
  dispatch thunk of Collection.startIndex.getter();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v11, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v11[*(TupleTypeMetadata2 + 48)], v14, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v11, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v11, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = type metadata accessor for Slice();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Optional<A>.formMax(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a1;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v34 = &v29 - v19;
  v20 = *(v7 + 16);
  v20(v11, v4, a2, v18);
  v36 = v14;
  v21 = *(v14 + 48);
  if (v21(v11, 1, v13) == 1)
  {
    v22 = *(v7 + 8);
    v22(v4, a2);
    v22(v11, a2);
    return (v20)(v4, v35, a2);
  }

  else
  {
    v31 = a3;
    v30 = *(v36 + 32);
    v30(v34, v11, v13);
    v24 = v33;
    (v20)(v33, v35, a2);
    if (v21(v24, 1, v13) == 1)
    {
      (*(v36 + 8))(v34, v13);
      return (*(v7 + 8))(v24, a2);
    }

    else
    {
      (*(v7 + 8))(v4, a2);
      v25 = v32;
      v30(v32, v24, v13);
      v26 = v34;
      max<A>(_:_:)();
      v27 = v36;
      v28 = *(v36 + 8);
      v28(v25, v13);
      v28(v26, v13);
      return (*(v27 + 56))(v4, 0, 1, v13);
    }
  }
}

uint64_t (*bind<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a4, v10);
    v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = a4;
    *(v14 + 3) = a1;
    *(v14 + 4) = a2;
    (*(v7 + 32))(&v14[v13], v11, a4);
    v15 = partial apply for closure #1 in bind<A>(_:_:);
  }

  else
  {
    v15 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a1, a2);
  return v15;
}

uint64_t FloatingPoint.mappingNaN(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = dispatch thunk of FloatingPoint.isNaN.getter();
  v9 = *(*(a2 - 8) + 16);
  if (v8)
  {
    v10 = a1;
  }

  else
  {
    v10 = v4;
  }

  return v9(a4, v10, a2);
}

uint64_t BinaryFloatingPoint.ensuringNonzeroValue()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (dispatch thunk of FloatingPoint.isZero.getter())
  {
    return dispatch thunk of static FloatingPoint.leastNonzeroMagnitude.getter();
  }

  v7 = *(*(a1 - 8) + 16);

  return v7(a3, v3, a1);
}

uint64_t FixedWidthInteger.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a6;
  v22[2] = a5;
  v23 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v22[1] = v22 - v17;
  dispatch thunk of static FixedWidthInteger.min.getter();
  v18 = *(a5 + 16);
  dispatch thunk of FloatingPoint.init<A>(_:)();
  dispatch thunk of static FixedWidthInteger.max.getter();
  dispatch thunk of FloatingPoint.init<A>(_:)();
  v19 = v23;
  Comparable.clamp(min:max:)(v15, v12, a3, *(*(v18 + 24) + 8));
  v20 = *(v9 + 8);
  v20(v12, a3);
  v20(v15, a3);
  dispatch thunk of BinaryInteger.init<A>(_:)();
  return (v20)(v19, a3);
}

uint64_t abs(_:)(uint64_t a1, uint64_t a2)
{
  static Duration.zero.getter();
  if (static Duration.< infix(_:_:)())
  {
    static Duration.zero.getter();
    return static Duration.- infix(_:_:)();
  }

  return a1;
}

uint64_t Pair.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int Pair.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t Pair.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x646E6F636573;
  }

  else
  {
    return 0x7473726966;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Pair<A, B>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Pair.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Pair<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Pair.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Pair<A, B>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance ResetDeltaModifier.ChildPhase();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Pair<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for Pair<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Pair<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for Pair<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int Pair<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Pair<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a4;
  v18 = a6;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v16 = a2;
  v17 = v7;
  v9 = type metadata accessor for Pair.CodingKeys(255, v8, v7, a4);
  swift_getWitnessTable(protocol conformance descriptor for Pair<A, B>.CodingKeys, v9, v16, v17, v18);
  v10 = type metadata accessor for KeyedEncodingContainer();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  v14 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v21 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t Pair<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v38 = a5;
  v42 = a4;
  v36 = a6;
  v35 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Pair.CodingKeys(255, v13, v14, v15);
  swift_getWitnessTable(protocol conformance descriptor for Pair<A, B>.CodingKeys, v16);
  v44 = type metadata accessor for KeyedDecodingContainer();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v18 = &v34 - v17;
  v41 = a2;
  v20 = type metadata accessor for Pair(0, a2, a3, v19);
  v34 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v22;
  v45 = v20;
  v25 = v39;
  v26 = v40;
  v47 = 0;
  v27 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = *(v26 + 32);
  v42 = v24;
  v28(v24, v43, v27);
  v46 = 1;
  v29 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v18, v44);
  v30 = v45;
  v31 = v42;
  (*(v35 + 32))(&v42[*(v45 + 36)], v29, a3);
  v32 = v34;
  (*(v34 + 16))(v36, v31, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v32 + 8))(v31, v30);
}

Swift::Int ArrayID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t hexFormatted(_:)(uint64_t a1)
{
  lazy protocol witness table accessor for type Int and conformance Int();
  v1 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x193ABEDD0](v1);

  return 30768;
}

uint64_t UnsafeMutableBufferProjectionPointer.init(start:count:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void UnsafeMutableBufferProjectionPointer.init(_:_:)(unint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = *a3;
  if (!a2)
  {

    v10 = ~*(*(*(v7 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 80) | 0xFFFFFFFFFFFFFF00;
    goto LABEL_5;
  }

  if (UnsafeMutableBufferPointer.baseAddress.getter())
  {
    v8 = swift_modifyAtWritableKeyPath();
    v10 = v9;
    v8(&v11, 0);

LABEL_5:
    *a4 = v10;
    a4[1] = a2;
    return;
  }

  __break(1u);
}

uint64_t UnsafeMutableBufferProjectionPointer.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(a2 + 16) - 8) + 72);
  if ((v4 * result) >> 64 == (v4 * result) >> 63)
  {
    return (*(*(*(a2 + 24) - 8) + 16))(a3, *v3 + v4 * result);
  }

  __break(1u);
  return result;
}

void *key path getter for UnsafeMutableBufferProjectionPointer.subscript(_:) : <A, B>UnsafeMutableBufferProjectionPointer<A, B>AB@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(*(*(a2 + a3 - 16) - 8) + 72);
  v5 = v4 * *a2;
  if ((v4 * *a2) >> 64 == v5 >> 63)
  {
    return (*(*(*(a2 + a3 - 8) - 8) + 16))(a4, *result + v5);
  }

  __break(1u);
  return result;
}

uint64_t key path setter for UnsafeMutableBufferProjectionPointer.subscript(_:) : <A, B>UnsafeMutableBufferProjectionPointer<A, B>AB(uint64_t result, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 16) - 8) + 72);
  v5 = v4 * *a3;
  if ((v4 * *a3) >> 64 == v5 >> 63)
  {
    return (*(*(*(a3 + a4 - 8) - 8) + 24))(*a2 + v5, result);
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableBufferProjectionPointer.subscript.unsafeAddressor(uint64_t result, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 72);
  if ((v3 * result) >> 64 == (v3 * result) >> 63)
  {
    return *v2 + v3 * result;
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableBufferProjectionPointer.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 72);
  if ((v4 * a2) >> 64 == (v4 * a2) >> 63)
  {
    return (*(*(*(a3 + 24) - 8) + 40))(*v3 + v4 * a2, result);
  }

  __break(1u);
  return result;
}

void (*UnsafeMutableBufferProjectionPointer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v3 = *(*(*(a3 + 16) - 8) + 72);
  if ((v3 * a2) >> 64 == (v3 * a2) >> 63)
  {
    return _ViewInputs.base.modify;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = UnsafeMutableBufferProjectionPointer.subscript.modify(v6, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableBufferProjectionPointer<A, B>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>);

  return RandomAccessCollection<>.index(before:)();
}

uint64_t protocol witness for Collection.endIndex.getter in conformance UnsafeMutableBufferProjectionPointer<A, B>@<X0>(uint64_t *a1@<X8>)
{
  result = UnsafeMutableBufferProjectionPointer.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = UnsafeMutableBufferProjectionPointer.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

void (*UnsafeMutableBufferProjectionPointer.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v3 = *(*(*(a3 + 16) - 8) + 72);
  if ((v3 * a2) >> 64 == (v3 * a2) >> 63)
  {
    return _ViewInputs.base.modify;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance UnsafeMutableBufferProjectionPointer<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>);

  return MutableCollection<>.subscript.getter(a1, a2, v6, a3);
}

void *protocol witness for Collection.indices.getter in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>, a1);

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>);

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void, double))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>, a2, a3);
  return a4(&v9, a2, v7, MEMORY[0x1E69E6570], WitnessTable);
}

void protocol witness for Sequence.makeIterator() in conformance UnsafeMutableBufferProjectionPointer<A, B>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t Numeric.isFinite.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v4 + 8);
  v12(v7, a1);
  v12(v10, a1);
  return v11 & 1;
}

uint64_t Sequence.first<A>(ofType:)@<X0>(uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6);
  Sequence.first(where:)();
  v7 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a4, v7 ^ 1u, 1, a2);
}

uint64_t closure #1 in Sequence.first<A>(ofType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v11 + 16))(v14 - v10, a1, AssociatedTypeWitness, v9);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = result;
    (*(v5 + 8))(v7, a3);
    return v13;
  }

  return result;
}

uint64_t Collection<>.commonPrefix<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t))
{
  v114 = a8;
  v121 = a3;
  v88 = a2;
  v97 = a1;
  v122 = a5;
  v123 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v86 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = v80 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = type metadata accessor for Range();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = v80 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v96 = swift_getTupleTypeMetadata2();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = v80 - v19;
  v104 = swift_getAssociatedConformanceWitness();
  v116 = v16;
  v93 = type metadata accessor for Range();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v99 = v80 - v20;
  v111 = swift_getAssociatedTypeWitness();
  v107 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v113 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v112 = v80 - v23;
  v103 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v100 = v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v117 = v80 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v105 = v80 - v29;
  v106 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v101 = v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v80 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v80 - v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  v119 = a4;
  v120 = v8;
  v118 = a6;
  dispatch thunk of Collection.endIndex.getter();
  v38 = v116;
  dispatch thunk of Collection.endIndex.getter();
  v39 = *(v106 + 16);
  v102 = v37;
  v40 = v101;
  v90 = v106 + 16;
  v89 = v39;
  v39();
  v41 = *(v103 + 16);
  v42 = v100;
  v80[1] = v103 + 16;
  v80[0] = v41;
  v41(v100, v105, AssociatedTypeWitness);
  v43 = *(v104 + 8);
  v115 = v34;
  v110 = v43;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v44 = *(AssociatedConformanceWitness + 8);
    v108 = (v107 + 2);
    v109 = v44;
    ++v107;
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v45 = dispatch thunk of Collection.subscript.read();
      v46 = AssociatedTypeWitness;
      v47 = *v108;
      v48 = v111;
      v49 = v112;
      (*v108)(v112);
      v45(v124, 0);
      v50 = dispatch thunk of Collection.subscript.read();
      v51 = v113;
      v47(v113);
      (v50)(v124, 0);
      LOBYTE(v50) = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *v107;
      (*v107)(v51, v48);
      v52(v49, v48);
      AssociatedTypeWitness = v46;
      v38 = v116;
      if ((v50 & 1) == 0)
      {
        break;
      }

      dispatch thunk of Collection.formIndex(after:)();
      dispatch thunk of Collection.formIndex(after:)();
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  v53 = v102;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v55 = v91;
    v56 = v89;
    (v89)(v91, v53, v38);
    v57 = v40;
    v58 = v96;
    (v56)(&v55[*(v96 + 48)], v57, v38);
    v59 = v94;
    v60 = v95;
    (*(v94 + 16))(v95, v55, v58);
    v113 = *(v58 + 48);
    v61 = v106;
    v114 = *(v106 + 32);
    v114(v99, v60, v38);
    v62 = *(v61 + 8);
    (v62)(&v113[v60], v38);
    (*(v59 + 32))(v60, v55, v58);
    v63 = *(v58 + 48);
    v64 = v93;
    v65 = v99;
    v114(&v99[*(v93 + 36)], &v60[v63], v38);
    v114 = v62;
    (v62)(v60, v38);
    dispatch thunk of Collection.subscript.getter();
    (*(v92 + 8))(v65, v64);
    v66 = v105;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v67 = v42;
      v68 = v82;
      v69 = v80[0];
      (v80[0])(v82, v66, AssociatedTypeWitness);
      v70 = TupleTypeMetadata2;
      v69(&v68[*(TupleTypeMetadata2 + 48)], v67, AssociatedTypeWitness);
      v106 = v61 + 8;
      v71 = v85;
      v72 = v86;
      (*(v85 + 16))(v86, v68, v70);
      v120 = *(v70 + 48);
      v73 = v103;
      v74 = *(v103 + 32);
      v75 = v81;
      v74(v81, v72, AssociatedTypeWitness);
      v76 = *(v73 + 8);
      v76(&v72[v120], AssociatedTypeWitness);
      (*(v71 + 32))(v72, v68, v70);
      v77 = v84;
      v74(&v75[*(v84 + 36)], &v72[*(v70 + 48)], AssociatedTypeWitness);
      v76(v72, AssociatedTypeWitness);
      dispatch thunk of Collection.subscript.getter();
      (*(v83 + 8))(v75, v77);
      v76(v100, AssociatedTypeWitness);
      v78 = v116;
      v79 = v114;
      (v114)(v101, v116);
      v76(v117, AssociatedTypeWitness);
      (v79)(v115, v78);
      v76(v105, AssociatedTypeWitness);
      return (v79)(v102, v78);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BidirectionalCollection<>.commonSuffix<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v130 = a8;
  v137 = a3;
  v97 = a2;
  v106 = a1;
  v129 = a7;
  v136 = *(a7 + 8);
  v138 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v95 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = v89 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = type metadata accessor for Range();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = v89 - v14;
  v128 = a6;
  v15 = *(a6 + 8);
  v16 = swift_getAssociatedTypeWitness();
  v105 = swift_getTupleTypeMetadata2();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = v89 - v19;
  v111 = swift_getAssociatedConformanceWitness();
  v140 = v16;
  v102 = type metadata accessor for Range();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v108 = v89 - v20;
  v124 = swift_getAssociatedTypeWitness();
  v122 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v127 = v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v126 = v89 - v23;
  v112 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v125 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v89 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v113 = v89 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v89 - v32;
  v114 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v133 = v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v109 = v89 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v89 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v135 = v89 - v42;
  dispatch thunk of Collection.startIndex.getter();
  v134 = v33;
  dispatch thunk of Collection.startIndex.getter();
  v131 = v15;
  v132 = a4;
  dispatch thunk of Collection.endIndex.getter();
  v43 = v113;
  dispatch thunk of Collection.endIndex.getter();
  v44 = *(v114 + 16);
  v45 = v109;
  v110 = v40;
  v99 = v114 + 16;
  v98 = v44;
  v44(v109, v40, v140);
  v46 = *(v112 + 16);
  v89[1] = v112 + 16;
  v89[0] = v46;
  v46(v28, v43, AssociatedTypeWitness);
  v123 = *(v111 + 8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v119 = (v122 + 16);
    v117 = (v122 + 8);
    v122 = *(AssociatedConformanceWitness + 8);
    v120 = (v114 + 8);
    v116 = (v114 + 32);
    v115 = (v112 + 32);
    v121 = AssociatedTypeWitness;
    v118 = (v112 + 8);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      dispatch thunk of BidirectionalCollection.index(before:)();
      v47 = v125;
      v48 = v28;
      dispatch thunk of BidirectionalCollection.index(before:)();
      v49 = dispatch thunk of Collection.subscript.read();
      v50 = *v119;
      v51 = v126;
      v52 = v124;
      (*v119)(v126);
      v49(v141, 0);
      v53 = dispatch thunk of Collection.subscript.read();
      v54 = v127;
      v50(v127);
      (v53)(v141, 0);
      LOBYTE(v53) = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = *v117;
      (*v117)(v54, v52);
      v56 = v52;
      v57 = v118;
      v55(v51, v56);
      v58 = *v57;
      if ((v53 & 1) == 0)
      {
        AssociatedTypeWitness = v121;
        v58(v47, v121);
        (*v120)(v133, v140);
        v28 = v48;
        break;
      }

      AssociatedTypeWitness = v121;
      v58(v48, v121);
      v59 = v140;
      (*v120)(v45, v140);
      (*v116)(v45, v133, v59);
      (*v115)(v48, v47, AssociatedTypeWitness);
      v28 = v48;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }
    }
  }

  v60 = v110;
  v61 = v140;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v63 = v100;
    v64 = v61;
    v65 = v61;
    v66 = v98;
    v98(v100, v45, v64);
    v67 = v105;
    v66(&v63[*(v105 + 48)], v60, v65);
    v68 = v103;
    v69 = v104;
    (*(v103 + 16))(v104, v63, v67);
    v130 = *(v67 + 48);
    v70 = v114;
    v133 = *(v114 + 32);
    (v133)(v108, v69, v65);
    v71 = *(v70 + 8);
    v71(&v69[v130], v65);
    (*(v68 + 32))(v69, v63, v67);
    v72 = *(v67 + 48);
    v73 = v102;
    v74 = v108;
    (v133)(&v108[*(v102 + 36)], &v69[v72], v65);
    v133 = v71;
    v71(v69, v65);
    dispatch thunk of Collection.subscript.getter();
    (*(v101 + 8))(v74, v73);
    v75 = v113;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v114 = v70 + 8;
      v76 = v91;
      v77 = v89[0];
      (v89[0])(v91, v28, AssociatedTypeWitness);
      v139 = v28;
      v78 = TupleTypeMetadata2;
      v77(&v76[*(TupleTypeMetadata2 + 48)], v75, AssociatedTypeWitness);
      v79 = v94;
      v80 = v95;
      (*(v94 + 16))(v95, v76, v78);
      v132 = *(v78 + 48);
      v81 = v112;
      v82 = *(v112 + 32);
      v83 = v90;
      v82(v90, v80, AssociatedTypeWitness);
      v84 = *(v81 + 8);
      v84(&v80[v132], AssociatedTypeWitness);
      (*(v79 + 32))(v80, v76, v78);
      v85 = *(v78 + 48);
      v86 = v93;
      v82(&v83[*(v93 + 36)], &v80[v85], AssociatedTypeWitness);
      v84(v80, AssociatedTypeWitness);
      dispatch thunk of Collection.subscript.getter();
      (*(v92 + 8))(v83, v86);
      v84(v139, AssociatedTypeWitness);
      v87 = v140;
      v88 = v133;
      (v133)(v109, v140);
      v84(v113, AssociatedTypeWitness);
      (v88)(v110, v87);
      v84(v134, AssociatedTypeWitness);
      return (v88)(v135, v87);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CountingIndex.init(base:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for CountingIndex(0, a4, a5, v11);
  v13 = a6 + *(result + 36);
  *v13 = a2;
  *(v13 + 8) = a3 & 1;
  return result;
}

uint64_t CountingIndexCollection.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v27 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  dispatch thunk of BidirectionalCollection.index(before:)();
  (*(v5 + 16))(v10, v13, AssociatedTypeWitness);
  dispatch thunk of Collection.startIndex.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v7, AssociatedTypeWitness);
  if (v15)
  {
    v16(v13, AssociatedTypeWitness);
    v18 = 0;
LABEL_5:
    v23 = v27;
    (*(v5 + 32))(v27, v10, AssociatedTypeWitness);
    result = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
    v25 = v23 + *(result + 36);
    *v25 = v18;
    *(v25 + 8) = v15 & 1;
    return result;
  }

  result = type metadata accessor for CountingIndex(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v20 = (a1 + *(result + 36));
  if ((v20[1] & 1) == 0)
  {
    v21 = *v20;
    result = (v16)(v13, AssociatedTypeWitness);
    v22 = __OFSUB__(v21, 1);
    v18 = v21 - 1;
    if (!v22)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance CountingIndexCollection<A>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for CountingIndex(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 1, 1, v6);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance CountingIndexCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CountingIndexCollection<A>, a3);

  return BidirectionalCollection.index(_:offsetBy:)();
}

void protocol witness for Collection.distance(from:to:) in conformance CountingIndexCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CountingIndexCollection<A>, a3);

  JUMPOUT(0x193ABE9B0);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CountingIndexCollection<A>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for CountingIndexCollection<A>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t CountingIndex.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x193ABEDD0](0x203A6573616228, 0xE700000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0x657366666F207C20, 0xEB00000000203A74);
  if (*(v1 + *(a1 + 36) + 8))
  {
    v3 = 0xE300000000000000;
    v4 = 7104878;
  }

  else
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v4 = BinaryInteger.description.getter();
    v3 = v5;
  }

  MEMORY[0x193ABEDD0](v4, v3);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

uint64_t == infix<A, B, C, D>(_:_:)(uint64_t a1, char *a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v68 = a6;
  v69 = a7;
  v67 = a5;
  v62 = a4;
  v63 = a1;
  v60 = a3;
  v65 = a2;
  v74 = a13;
  v73 = a14;
  v71 = a8;
  v72 = a15;
  v59 = a12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = swift_getTupleTypeMetadata2();
  v64 = swift_getTupleTypeMetadata2();
  v70 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v66 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v76 = v51 - v19;
  v78 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v61 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v51 - v23;
  v25 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v51 - v31;
  v77 = a9;
  v33 = *(a9 - 8);
  v57 = *(v33 + 16);
  v58 = v33 + 16;
  v57(v51 - v31, v63, a9, v30);
  v34 = *(TupleTypeMetadata2 + 48);
  v75 = a10;
  v35 = *(a10 - 8);
  v56 = *(v35 + 16);
  v63 = v35 + 16;
  v56(&v32[v34], v65, a10);
  v53 = a11;
  v36 = *(a11 - 8);
  v54 = *(v36 + 16);
  v55 = v36 + 16;
  v54(v24, v60, a11);
  v37 = *(v16 + 48);
  v38 = v59;
  v39 = *(v59 - 8);
  v52 = *(v39 + 16);
  v60 = v39 + 16;
  v52(&v24[v37], v62, v59);
  v40 = *(v25 + 32);
  v51[1] = v25 + 32;
  v62 = v40;
  v41 = v76;
  v40(v76, v32, TupleTypeMetadata2);
  v42 = v64;
  v65 = &v41[*(v64 + 48)];
  v43 = *(v78 + 32);
  v78 += 32;
  v43();
  (v57)(v28, v67, v77);
  v56(&v28[*(TupleTypeMetadata2 + 48)], v68, v75);
  v44 = v61;
  v54(v61, v69, v53);
  v45 = v16;
  v52(&v44[*(v16 + 48)], v71, v38);
  v46 = v66;
  v62(v66, v28, TupleTypeMetadata2);
  (v43)(&v46[*(v42 + 48)], v44, v45);
  v47 = v76;
  v48 = v46;
  LOBYTE(v25) = == infix<A, B, C, D>(_:_:)();
  v49 = *(v70 + 8);
  v49(v48, v42);
  v49(v47, v42);
  return v25 & 1;
}

uint64_t Optional.init(if:then:)@<X0>(char a1@<W0>, void (*a2)(void *__return_ptr)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = a3;
    a2(a4);
    a3 = v5;
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(*(a3 - 8) + 56);

  return v7(a4, v6, 1);
}

uint64_t IndirectOptional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocBox();
  result = (*(*(a2 - 8) + 32))(v7, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t key path setter for IndirectOptional.wrappedValue : <A>IndirectOptional<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for Optional();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  (*(v10 + 16))(&v15 - v8, a1, v7);
  v13 = type metadata accessor for IndirectOptional(0, v5, v11, v12);
  return IndirectOptional.wrappedValue.setter(v9, v13);
}

void (*IndirectOptional.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  *v6 = a2;
  v6[1] = v2;
  v8 = type metadata accessor for Optional();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  IndirectOptional.wrappedValue.getter(a2, v11);
  return IndirectOptional.wrappedValue.modify;
}

void IndirectOptional.wrappedValue.modify(uint64_t **a1, char a2)
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
    IndirectOptional.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    IndirectOptional.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static IndirectOptional<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v13 = *v12;
  if (!*v11)
  {
    if (!v13)
    {
      v17 = 1;
      return v17 & 1;
    }

    goto LABEL_5;
  }

  if (!v13)
  {
LABEL_5:
    v17 = 0;
    return v17 & 1;
  }

  v20[1] = v8;
  v14 = swift_projectBox();
  v15 = swift_projectBox();
  v16 = *(v4 + 16);
  v16(v10, v14, a3);
  v16(v6, v15, a3);

  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v6, a3);
  v18(v10, a3);

  return v17 & 1;
}

uint64_t IndirectOptional<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v3)
  {
    return MEMORY[0x193AC11A0](v6);
  }

  v9 = swift_projectBox();
  (*(v5 + 16))(v8, v9, v4);
  MEMORY[0x193AC11A0](1);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int IndirectOptional<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v6[9] = *v2;
  Hasher.init(_seed:)();
  IndirectOptional<A>.hash(into:)(v6, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> IndirectOptional<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  IndirectOptional<A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t Cache3.init()@<X0>(uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(TupleTypeMetadata3 + 48);
  v7 = *(TupleTypeMetadata3 + 64);
  v9 = *(*(TupleTypeMetadata2 - 8) + 56);
  v9(a3, 1, 1, TupleTypeMetadata2);
  v9(a3 + v6, 1, 1, TupleTypeMetadata2);

  return (v9)(a3 + v7, 1, 1, TupleTypeMetadata2);
}

uint64_t Cache3.find(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v54 = a2;
  v55 = a1;
  v53 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v56 = v5;
  v57 = *(v5 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v51 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v25;
  (*(v25 + 16))(v21, v4, TupleTypeMetadata3, v23);
  v26 = *(TupleTypeMetadata3 + 48);
  v49 = TupleTypeMetadata3;
  v27 = *(TupleTypeMetadata3 + 64);
  v58 = v9;
  v28 = *(v9 + 32);
  v28(v18, v21, v8);
  v28(&v18[v26], &v21[v26], v8);
  v28(&v18[v27], &v21[v27], v8);
  v29 = *(*(TupleTypeMetadata2 - 8) + 48);
  if (v29(v18, 1, TupleTypeMetadata2) != 1)
  {
    (*(v58 + 16))(v15, v18, v8);
    v52 = &v15[*(TupleTypeMetadata2 + 48)];
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v6 - 8) + 8))(v15, v6);
    if (v30)
    {
      v50 = v27;
      v31 = v56;
      v32 = v52;
LABEL_12:
      v39 = v57;
      v40 = *(v57 + 32);
      v41 = v51;
      v40(v51, v32, v31);
      v42 = *(v58 + 8);
      v42(&v18[v50], v8);
      v42(&v18[v26], v8);
      v42(v18, v8);
      v43 = v53;
      v40(v53, v41, v31);
      return (*(v39 + 56))(v43, 0, 1, v31);
    }

    (*(v57 + 8))(v52, v56);
  }

  v33 = v29(&v18[v26], 1, TupleTypeMetadata2);
  v34 = v56;
  if (v33 != 1)
  {
    v50 = v27;
    v31 = v56;
    v35 = v47;
    (*(v58 + 16))(v47, &v18[v26], v8);
    v52 = &v35[*(TupleTypeMetadata2 + 48)];
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v6 - 8) + 8))(v35, v6);
    if (v36)
    {
      v32 = v52;
      goto LABEL_12;
    }

    v34 = v31;
    (*(v57 + 8))(v52, v31);
    v27 = v50;
  }

  if (v29(&v18[v27], 1, TupleTypeMetadata2) != 1)
  {
    v37 = v46;
    (*(v58 + 16))(v46, &v18[v27], v8);
    v32 = &v37[*(TupleTypeMetadata2 + 48)];
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v6 - 8) + 8))(v37, v6);
    if (v38)
    {
      v50 = v27;
      v31 = v34;
      goto LABEL_12;
    }

    (*(v57 + 8))(v32, v34);
  }

  (*(v57 + 56))(v53, 1, 1, v34);
  return (*(v48 + 8))(v18, v49);
}

uint64_t Cache3.put(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(TupleTypeMetadata3 + 48);
  v12 = *(v9 - 8);
  (*(v12 + 24))(v3 + *(TupleTypeMetadata3 + 64), v3 + v11, v9);
  (*(v12 + 40))(v3 + v11, v3, v9);
  v13 = *(TupleTypeMetadata2 + 48);
  (*(*(v7 - 8) + 16))(v3, a1, v7);
  (*(*(v6 - 8) + 16))(v3 + v13, a2, v6);
  v14 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v14(v3, 0, 1, TupleTypeMetadata2);
}

uint64_t Cache3.get(_:makeValue:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a2;
  v78 = a1;
  v73 = a5;
  v6 = a4[3];
  v77 = a4[2];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v16 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v6;
  v64 = type metadata accessor for Optional();
  v62 = *(v64 - 8);
  v24 = MEMORY[0x1EEE9AC00](v64);
  v72 = &v59 - v25;
  v61 = v16;
  v26 = *(v16 + 16);
  v67 = v5;
  v26(v21, v5, TupleTypeMetadata3, v24);
  v27 = *(TupleTypeMetadata3 + 48);
  v71 = TupleTypeMetadata3;
  v28 = *(TupleTypeMetadata3 + 64);
  v29 = *(v8 + 32);
  v29(v18, v21, v7);
  v29(&v18[v27], &v21[v27], v7);
  v74 = v28;
  v30 = &v21[v28];
  v31 = TupleTypeMetadata2;
  v29(&v18[v28], v30, v7);
  v63 = *(v31 - 8);
  v32 = *(v63 + 48);
  if (v32(v18, 1, v31) != 1)
  {
    v70 = v8;
    (*(v8 + 16))(v14, v18, v7);
    v33 = &v14[*(v31 + 48)];
    v34 = v77;
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v34 - 8) + 8))(v14, v34);
    if (v35)
    {
      v68 = v27;
      v36 = v75;
LABEL_7:
      v8 = v70;
LABEL_12:
      v47 = v76;
      v48 = *(v76 + 32);
      v49 = v69;
      v48(v69, v33, v36);
      v50 = *(v8 + 8);
      v50(&v18[v74], v7);
      v50(&v18[v68], v7);
      v50(v18, v7);
      v51 = v72;
      v48(v72, v49, v36);
      (*(v47 + 56))(v51, 0, 1, v36);
      v31 = TupleTypeMetadata2;
      goto LABEL_15;
    }

    (*(v76 + 8))(v33, v75);
    v31 = TupleTypeMetadata2;
    v8 = v70;
  }

  v37 = v32(&v18[v27], 1, v31);
  v36 = v75;
  if (v37 != 1)
  {
    v70 = v8;
    v38 = *(v8 + 16);
    v68 = v27;
    v39 = &v18[v27];
    v40 = v60;
    v38(v60, v39, v7);
    v33 = &v40[*(v31 + 48)];
    v41 = v77;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v41 - 8) + 8))(v40, v41);
    if (v42)
    {
      goto LABEL_7;
    }

    (*(v76 + 8))(v33, v36);
    v31 = TupleTypeMetadata2;
    v8 = v70;
    v27 = v68;
  }

  v43 = v74;
  if (v32(&v18[v74], 1, v31) != 1)
  {
    v44 = v59;
    (*(v8 + 16))(v59, &v18[v43], v7);
    v33 = &v44[*(v31 + 48)];
    v45 = v77;
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v45 - 8) + 8))(v44, v45);
    if (v46)
    {
      v68 = v27;
      goto LABEL_12;
    }

    (*(v76 + 8))(v33, v36);
    v31 = TupleTypeMetadata2;
  }

  v47 = v76;
  v51 = v72;
  (*(v76 + 56))(v72, 1, 1, v36);
  (*(v61 + 8))(v18, v71);
LABEL_15:
  if ((*(v47 + 48))(v51, 1, v36) != 1)
  {
    return (*(v47 + 32))(v73, v51, v36);
  }

  v52 = (*(v62 + 8))(v51, v64);
  v53 = v73;
  v66(v52);
  v54 = v31;
  v55 = *(v71 + 48);
  v56 = v67;
  (*(v8 + 24))(v67 + *(v71 + 64), v67 + v55, v7);
  (*(v8 + 40))(v56 + v55, v56, v7);
  v57 = *(v54 + 48);
  (*(*(v77 - 8) + 16))(v56, v78);
  (*(v47 + 16))(v56 + v57, v53, v36);
  return (*(v63 + 56))(v56, 0, 1, v54);
}

uint64_t Cache3.map(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a1;
  v37 = a3;
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v10 = &v30 - v9;
  v11 = *(v6 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v30 = &v30 - v14;
  v15 = *(*(a2 - 8) + 16);
  v35 = v3;
  v15(a3, v3, a2, v13);
  v16 = *(v8 + 16);
  v34 = v8 + 16;
  v36 = v16;
  v16(v10, v3, TupleTypeMetadata3);
  v17 = *(TupleTypeMetadata3 + 48);
  v18 = *(TupleTypeMetadata3 + 64);
  v19 = v31;
  v31(v10);
  v20 = *(v11 + 8);
  v20(&v10[v18], v6);
  v20(&v10[v17], v6);
  v20(v10, v6);
  v21 = *(v11 + 40);
  v32 = v11 + 40;
  v33 = v21;
  v22 = v30;
  v21(v37, v30, v6);
  v36(v10, v35, TupleTypeMetadata3);
  v23 = *(TupleTypeMetadata3 + 48);
  v24 = *(TupleTypeMetadata3 + 64);
  v19(&v10[v23]);
  v20(&v10[v24], v6);
  v20(&v10[v23], v6);
  v20(v10, v6);
  v25 = v37;
  v26 = v22;
  v33(v37 + *(TupleTypeMetadata3 + 48), v22, v6);
  v36(v10, v35, TupleTypeMetadata3);
  v27 = *(TupleTypeMetadata3 + 48);
  v28 = *(TupleTypeMetadata3 + 64);
  v31(&v10[v28]);
  v20(&v10[v28], v6);
  v20(&v10[v27], v6);
  v20(v10, v6);
  return (v33)(v25 + *(TupleTypeMetadata3 + 64), v26, v6);
}

unint64_t *specialized Dictionary.optimisticFilter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (*(a1 + 16) < 0x41uLL)
  {
    v5 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v11 = 0;
    v56 = v3;
    v57 = 0;
    v54 = 1;
    v55 = 1;
    while (v8)
    {
LABEL_13:
      v13 = __clz(__rbit64(v8)) | (v11 << 6);
      v14 = (*(v3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v13, v68);
      *&v67 = v15;
      *(&v67 + 1) = v16;
      *&v63 = v15;
      *(&v63 + 1) = v16;
      outlined init with take of _ViewList_Elements(v68, &v64);
      outlined init with copy of (key: EventID, value: EventType)(&v63, &v61);
      v59 = v61;
      outlined init with copy of AnyTrackedValue(v62, v60);
      __swift_project_boxed_opaque_existential_1(v60, v60[3]);
      DynamicType = swift_getDynamicType();
      outlined init with copy of AnyTrackedValue(a2, v58);
      __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      v18 = swift_getDynamicType();
      v19 = v58[4];
      __swift_destroy_boxed_opaque_existential_1(v58);
      v20 = (*(v19 + 8))(v18, v19);
      outlined destroy of (key: EventID, value: EventType)(&v59, type metadata accessor for (key: EventID, value: EventType));
      outlined destroy of (key: EventID, value: EventType)(&v63, type metadata accessor for (key: EventID, value: EventType));
      __swift_destroy_boxed_opaque_existential_1(v62);
      if (DynamicType == v20)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v54 = 0;
        v21 = 1 << v10;
        if (v10 >= 0x40)
        {
          v21 = 0;
        }

        v57 |= v21;
      }

      else
      {
        v55 = 0;
      }

      v8 &= v8 - 1;
      ++v10;
      v3 = v56;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        if (v54)
        {
          return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        if (v55)
        {

          return v3;
        }

        v23 = 1 << *(v3 + 32);
        v24 = -1;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        v25 = v24 & *(v3 + 64);
        v26 = (v23 + 63) >> 6;

        v27 = 0;
        v28 = 0;
        v29 = MEMORY[0x1E69E7CC8];
        while (v25)
        {
          v30 = v28;
LABEL_38:
          v33 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v34 = v33 | (v30 << 6);
          v35 = (*(v3 + 48) + 16 * v34);
          v36 = *v35;
          v37 = v35[1];
          outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v34, &v61);
          *&v63 = v36;
          *(&v63 + 1) = v37;
          outlined init with take of _ViewList_Elements(&v61, &v64);
LABEL_39:
          v67 = v63;
          v68[0] = v64;
          v68[1] = v65;
          v69 = v66;
          v38 = v63;
          if (!v63)
          {

            return v29;
          }

          v39 = *(&v67 + 1);
          outlined init with take of _ViewList_Elements(v68, &v63);
          if (v27 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          if (v27 < 0x40 && ((v57 >> v27) & 1) != 0)
          {
            outlined init with copy of AnyTrackedValue(&v63, &v61);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v59 = v29;
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
            v43 = v29[2];
            v44 = (v42 & 1) == 0;
            v45 = __OFADD__(v43, v44);
            v46 = v43 + v44;
            if (v45)
            {
              goto LABEL_58;
            }

            v47 = v42;
            if (v29[3] >= v46)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v53 = v41;
                specialized _NativeDictionary.copy()();
                v41 = v53;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
              v41 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
              if ((v47 & 1) != (v48 & 1))
              {
                goto LABEL_61;
              }
            }

            v29 = v59;
            if (v47)
            {
              v49 = (*(v59 + 56) + 40 * v41);
              __swift_destroy_boxed_opaque_existential_1(v49);
              outlined init with take of _ViewList_Elements(&v61, v49);
              __swift_destroy_boxed_opaque_existential_1(&v63);
              v3 = v56;
              ++v27;
            }

            else
            {
              *(v59 + 8 * (v41 >> 6) + 64) |= 1 << v41;
              v50 = (v29[6] + 16 * v41);
              *v50 = v38;
              v50[1] = v39;
              outlined init with take of _ViewList_Elements(&v61, v29[7] + 40 * v41);
              __swift_destroy_boxed_opaque_existential_1(&v63);
              v51 = v29[2];
              v45 = __OFADD__(v51, 1);
              v52 = v51 + 1;
              if (v45)
              {
                goto LABEL_59;
              }

              v29[2] = v52;
              v3 = v56;
              ++v27;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v63);
            ++v27;
          }
        }

        if (v26 <= v28 + 1)
        {
          v31 = v28 + 1;
        }

        else
        {
          v31 = v26;
        }

        v32 = v31 - 1;
        while (1)
        {
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v30 >= v26)
          {
            v25 = 0;
            v66 = 0;
            v64 = 0u;
            v65 = 0u;
            v28 = v32;
            v63 = 0u;
            goto LABEL_39;
          }

          v25 = *(v5 + 8 * v30);
          ++v28;
          if (v25)
          {
            v28 = v30;
            goto LABEL_38;
          }
        }

        __break(1u);
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return specialized _NativeDictionary.filter(_:)(a1, a2);
  }

  return result;
}

{
  if (*(a1 + 16) < 0x41uLL)
  {
    v3 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v9 = 0;
    v56 = 0;
    v53 = 1;
    v54 = 1;
    while (v6)
    {
LABEL_13:
      v11 = __clz(__rbit64(v6)) | (v9 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v11, v66);
      *&v65 = v13;
      *(&v65 + 1) = v14;
      *&v61 = v13;
      *(&v61 + 1) = v14;
      outlined init with take of _ViewList_Elements(v66, &v62);
      outlined init with copy of (key: EventID, value: EventType)(&v61, &v59);
      v57 = v59;
      outlined init with copy of AnyTrackedValue(v60, v58);
      type metadata accessor for EventFilter<TappableEvent>(0, v15, v16, v17);
      v18 = *AGGraphGetValue();

      LOBYTE(v18) = v18(v58);

      outlined destroy of (key: EventID, value: EventType)(&v57, type metadata accessor for (key: EventID, value: EventType));
      outlined destroy of (key: EventID, value: EventType)(&v61, type metadata accessor for (key: EventID, value: EventType));
      __swift_destroy_boxed_opaque_existential_1(v60);
      if (v18)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v54 = 0;
        v19 = 1 << v8;
        if (v8 >= 0x40)
        {
          v19 = 0;
        }

        v56 |= v19;
      }

      else
      {
        v53 = 0;
      }

      v6 &= v6 - 1;
      ++v8;
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v20 = a1;

        if (v54)
        {
          return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        if (v53)
        {

          return v20;
        }

        v22 = 1 << *(a1 + 32);
        v23 = -1;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        v24 = v23 & *(a1 + 64);
        v25 = (v22 + 63) >> 6;

        v26 = 0;
        v27 = 0;
        v28 = MEMORY[0x1E69E7CC8];
        while (v24)
        {
          v29 = v27;
LABEL_38:
          v32 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v33 = v32 | (v29 << 6);
          v34 = (*(v20 + 48) + 16 * v33);
          v35 = *v34;
          v36 = v34[1];
          outlined init with copy of AnyTrackedValue(*(v20 + 56) + 40 * v33, &v59);
          *&v61 = v35;
          *(&v61 + 1) = v36;
          outlined init with take of _ViewList_Elements(&v59, &v62);
LABEL_39:
          v65 = v61;
          v66[0] = v62;
          v66[1] = v63;
          v67 = v64;
          v37 = v61;
          if (!v61)
          {

            return v28;
          }

          v38 = *(&v65 + 1);
          outlined init with take of _ViewList_Elements(v66, &v61);
          if (v26 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          if (v26 < 0x40 && ((v56 >> v26) & 1) != 0)
          {
            outlined init with copy of AnyTrackedValue(&v61, &v59);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v57 = v28;
            v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            v42 = v28[2];
            v43 = (v41 & 1) == 0;
            v44 = __OFADD__(v42, v43);
            v45 = v42 + v43;
            if (v44)
            {
              goto LABEL_58;
            }

            v46 = v41;
            if (v28[3] >= v45)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v52 = v40;
                specialized _NativeDictionary.copy()();
                v40 = v52;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
              v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
              if ((v46 & 1) != (v47 & 1))
              {
                goto LABEL_61;
              }
            }

            v20 = a1;
            v28 = v57;
            if (v46)
            {
              v48 = (*(v57 + 56) + 40 * v40);
              __swift_destroy_boxed_opaque_existential_1(v48);
              outlined init with take of _ViewList_Elements(&v59, v48);
              __swift_destroy_boxed_opaque_existential_1(&v61);
              ++v26;
            }

            else
            {
              *(v57 + 8 * (v40 >> 6) + 64) |= 1 << v40;
              v49 = (v28[6] + 16 * v40);
              *v49 = v37;
              v49[1] = v38;
              outlined init with take of _ViewList_Elements(&v59, v28[7] + 40 * v40);
              __swift_destroy_boxed_opaque_existential_1(&v61);
              v50 = v28[2];
              v44 = __OFADD__(v50, 1);
              v51 = v50 + 1;
              if (v44)
              {
                goto LABEL_60;
              }

              v28[2] = v51;
              ++v26;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v61);
            ++v26;
          }
        }

        if (v25 <= v27 + 1)
        {
          v30 = v27 + 1;
        }

        else
        {
          v30 = v25;
        }

        v31 = v30 - 1;
        while (1)
        {
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v29 >= v25)
          {
            v24 = 0;
            v64 = 0;
            v62 = 0u;
            v63 = 0u;
            v27 = v31;
            v61 = 0u;
            goto LABEL_39;
          }

          v24 = *(v3 + 8 * v29);
          ++v27;
          if (v24)
          {
            v27 = v29;
            goto LABEL_38;
          }
        }

        __break(1u);
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return specialized _NativeDictionary.filter(_:)(a1, a2);
  }

  return result;
}

{
  if (*(a1 + 16) >= 0x41uLL)
  {
    return specialized _NativeDictionary.filter(_:)(a1, a2);
  }

  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v58 = a1;

  v9 = 0;
  v10 = 0;
  v57 = 0;
  v54 = 1;
  v55 = 1;
  while (v6)
  {
LABEL_13:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(v58 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    outlined init with copy of AnyTrackedValue(*(v58 + 56) + 40 * v12, v71);
    *&v70 = v14;
    *(&v70 + 1) = v15;
    *&v66 = v14;
    *(&v66 + 1) = v15;
    outlined init with take of _ViewList_Elements(v71, &v67);
    outlined init with copy of (key: EventID, value: EventType)(&v66, &v64);
    v62 = v64;
    outlined init with copy of AnyTrackedValue(v65, v63);
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    DynamicType = swift_getDynamicType();
    swift_beginAccess();
    v17 = *(a2 + 48);
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(DynamicType), (v19 & 1) != 0))
    {
      outlined init with copy of AnyTrackedValue(*(v17 + 56) + 40 * v18, &v59);
    }

    else
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
    }

    swift_endAccess();
    outlined destroy of (key: EventID, value: EventType)(&v62, type metadata accessor for (key: EventID, value: EventType));
    v20 = *(&v60 + 1);
    outlined destroy of (key: EventID, value: EventType)(&v59, type metadata accessor for ForwardedEventDispatcher?);
    outlined destroy of (key: EventID, value: EventType)(&v66, type metadata accessor for (key: EventID, value: EventType));
    __swift_destroy_boxed_opaque_existential_1(v65);
    if (v20)
    {
      v55 = 0;
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      v54 = 0;
      v21 = 1 << v9;
      if (v9 >= 0x40)
      {
        v21 = 0;
      }

      v57 |= v21;
    }

    v6 &= v6 - 1;
    ++v9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_60;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_13;
    }
  }

  v2 = v58;

  if (v54)
  {
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_26:

    return v2;
  }

  if (v55)
  {

    goto LABEL_26;
  }

  v22 = 1 << *(v58 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v58 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC8];
  while (v24)
  {
    v29 = v27;
LABEL_41:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = v32 | (v29 << 6);
    v34 = (*(v2 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    outlined init with copy of AnyTrackedValue(*(v2 + 56) + 40 * v33, &v64);
    *&v66 = v35;
    *(&v66 + 1) = v36;
    outlined init with take of _ViewList_Elements(&v64, &v67);
LABEL_42:
    v70 = v66;
    v71[0] = v67;
    v71[1] = v68;
    v72 = v69;
    v37 = v66;
    if (!v66)
    {

      return v28;
    }

    v38 = *(&v70 + 1);
    outlined init with take of _ViewList_Elements(v71, &v66);
    if (v26 == 0x8000000000000000)
    {
      goto LABEL_61;
    }

    if (v26 < 0x40 && ((v57 >> v26) & 1) != 0)
    {
      outlined init with copy of AnyTrackedValue(&v66, &v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v62 = v28;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
      v42 = v28[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_62;
      }

      v46 = v41;
      if (v28[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v40;
          specialized _NativeDictionary.copy()();
          v40 = v52;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_65;
        }
      }

      v28 = v62;
      if (v46)
      {
        v48 = (*(v62 + 56) + 40 * v40);
        __swift_destroy_boxed_opaque_existential_1(v48);
        outlined init with take of _ViewList_Elements(&v64, v48);
        __swift_destroy_boxed_opaque_existential_1(&v66);
        v2 = v58;
        ++v26;
      }

      else
      {
        *(v62 + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v49 = (v28[6] + 16 * v40);
        *v49 = v37;
        v49[1] = v38;
        outlined init with take of _ViewList_Elements(&v64, v28[7] + 40 * v40);
        __swift_destroy_boxed_opaque_existential_1(&v66);
        v50 = v28[2];
        v44 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v44)
        {
          goto LABEL_63;
        }

        v28[2] = v51;
        v2 = v58;
        ++v26;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v66);
      ++v26;
    }
  }

  if (v25 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      v24 = 0;
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
      v27 = v31;
      v66 = 0u;
      goto LABEL_42;
    }

    v24 = *(v3 + 8 * v29);
    ++v27;
    if (v24)
    {
      v27 = v29;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void Dictionary.optimisticFilter(_:)(uint64_t (*a1)(char *, char *), void (**a2)(char *, void, uint64_t, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v118 = &v112 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v137 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v112 - v18;
  v128 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v144 = &v112 - v23;
  v127 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v112 - v27;
  v143 = v28;
  v121 = type metadata accessor for Optional();
  v116 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v123 = &v112 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v112 - v34;
  if (MEMORY[0x193ABE6A0](a3, a4, a5, a6, v33) > 64)
  {

    Dictionary.filter(_:)();
    return;
  }

  v151 = a5;
  v113 = a3 & 0xC000000000000001;
  v117 = a6;
  v120 = v21;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v36 = __CocoaDictionary.makeIterator()();
    v119 = 0;
    v37 = 0;
    v38 = 0;
    v39 = v36 | 0x8000000000000000;
  }

  else
  {
    v40 = -1 << *(a3 + 32);
    v37 = ~v40;
    v41 = *(a3 + 64);
    v119 = a3 + 64;
    v42 = -v40;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v38 = v43 & v41;
    v39 = a3;
  }

  v150 = (v127 + 32);
  v149 = (v128 + 32);
  v142 = (v15 + 56);
  v115 = v37;
  v44 = (v37 + 64) >> 6;
  v130 = (v127 + 16);
  v129 = (v128 + 16);
  v141 = (v15 + 48);
  v132 = (v15 + 16);
  v131 = (v15 + 8);
  v139 = (v127 + 8);
  v140 = (v128 + 8);
  v114 = a3;

  v45 = 0;
  v46 = 0;
  v138 = 0;
  v125 = 1;
  v126 = 1;
  v148 = a4;
  v133 = a1;
  v134 = a2;
  v135 = v39;
  v47 = v38;
  while (1)
  {
    v147 = v45;
    if ((v39 & 0x8000000000000000) != 0)
    {
      break;
    }

    v49 = v47;
    v50 = v46;
    if (v47)
    {
LABEL_21:
      v146 = ((v49 - 1) & v49);
      v54 = __clz(__rbit64(v49)) | (v50 << 6);
      v55 = v127;
      (*(v127 + 16))(v145, *(v39 + 48) + *(v127 + 72) * v54, a4);
      v56 = *(v39 + 56);
      v57 = v128;
      v58 = v151;
      (*(v128 + 16))(v144, v56 + *(v128 + 72) * v54, v151);
      v59 = v143;
      v60 = *(v143 + 48);
      (*(v55 + 32))(v35, v145, v148);
      v61 = v58;
      a4 = v148;
      (*(v57 + 32))(&v35[v60], v144, v61);
      v62 = *v142;
      (*v142)(v35, 0, 1, v59);
      v52 = v50;
      v63 = v59;
    }

    else
    {
      if (v44 <= v46 + 1)
      {
        v51 = v46 + 1;
      }

      else
      {
        v51 = v44;
      }

      v52 = v51 - 1;
      v53 = v46;
      while (1)
      {
        v50 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

        if (v50 >= v44)
        {
          break;
        }

        v49 = *(v119 + 8 * v50);
        ++v53;
        if (v49)
        {
          goto LABEL_21;
        }
      }

      v63 = v143;
      v62 = *v142;
      (*v142)(v35, 1, 1, v143);
      v146 = 0;
    }

LABEL_25:
    if ((*v141)(v35, 1, v63) == 1)
    {
      goto LABEL_32;
    }

    v70 = v63;
    v71 = *(v63 + 48);
    v72 = v136;
    (*v150)(v136, v35, a4);
    v73 = v151;
    (*v149)(v72 + v71, &v35[v71], v151);
    v74 = v137;
    (*v132)(v137, v72, v70);
    v75 = *(v70 + 48);
    LOBYTE(v71) = v133(v74, &v74[v75]);
    (*v131)(v72, v70);
    v76 = v73;
    a4 = v148;
    (*v140)(&v74[v75], v76);
    (*v139)(v74, a4);
    if (v71)
    {
      v48 = v147;
      if ((v147 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      v126 = 0;
      v77 = 1 << v147;
      if (v147 >= 0x40)
      {
        v77 = 0;
      }

      v138 |= v77;
    }

    else
    {
      v125 = 0;
      v48 = v147;
    }

    v45 = v48 + 1;
    v46 = v52;
    v47 = v146;
    v39 = v135;
  }

  if (__CocoaDictionary.Iterator.next()())
  {
    v64 = v145;
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v65 = v144;
    v66 = v151;
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v67 = v143;
    v68 = *(v143 + 48);
    (*v150)(v35, v64, a4);
    v69 = &v35[v68];
    v63 = v67;
    (*v149)(v69, v65, v66);
    v62 = *v142;
    (*v142)(v35, 0, 1, v67);
    v52 = v46;
    v146 = v47;
    goto LABEL_25;
  }

  v62 = *v142;
  (*v142)(v35, 1, 1, v143);
LABEL_32:
  outlined consume of Set<EventID>.Iterator._Variant(v135);
  if (v126)
  {
    v78 = v151;
    swift_getTupleTypeMetadata2();
    v79 = static Array._allocateUninitialized(_:)();
    specialized Dictionary.init(dictionaryLiteral:)(v79, a4, v78, v117);

    return;
  }

  if (v125)
  {

    return;
  }

  v147 = v62;
  v152 = Dictionary.init()();
  if (v113)
  {
    v80 = __CocoaDictionary.makeIterator()();
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = v80 | 0x8000000000000000;
  }

  else
  {
    v85 = -1 << *(v114 + 32);
    v82 = ~v85;
    v81 = (v114 + 64);
    v86 = -v85;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    else
    {
      v87 = -1;
    }

    v83 = v87 & *(v114 + 64);
    v84 = v114;
  }

  v88 = v124;
  v89 = v123;
  v133 = v82;
  v90 = (v82 + 64) >> 6;
  v146 = (v116 + 32);
  v134 = (v128 + 56);

  v91 = 0;
  v92 = 0;
  v136 = v84;
  v137 = v81;
  while (2)
  {
    v135 = v83;
    if ((v84 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        v103 = 1;
        v111 = v83;
        v96 = v92;
        v148 = v111;
        v101 = v143;
        goto LABEL_57;
      }

      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v99 = v144;
      v100 = v151;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v94 = v92;
      v148 = v83;
LABEL_56:
      v101 = v143;
      v102 = *(v143 + 48);
      v88 = v124;
      (*v150)();
      (*v149)(&v88[v102], v99, v100);
      v103 = 0;
      v96 = v94;
      v89 = v123;
LABEL_57:
      (v147)(v88, v103, 1, v101);
      (*v146)(v89, v88, v121);
      v104 = (*v141)(v89, 1, v101);
      v105 = v122;
      if (v104 == 1)
      {
        outlined consume of Set<EventID>.Iterator._Variant(v136);
        return;
      }

      v106 = *(v101 + 48);
      (*v150)(v122, v89, a4);
      v107 = &v89[v106];
      v108 = v120;
      v109 = v151;
      (*v149)(v120, v107, v151);
      if (v91 == 0x8000000000000000)
      {
        goto LABEL_69;
      }

      if (v91 <= 0x3F && ((v138 >> v91) & 1) != 0)
      {
        (*v130)(v145, v105, a4);
        v110 = v118;
        (*v129)(v118, v108, v109);
        (*v134)(v110, 0, 1, v109);
        type metadata accessor for Dictionary();
        v89 = v123;
        v88 = v124;
        Dictionary.subscript.setter();
        v109 = v151;
      }

      (*v140)(v108, v109);
      (*v139)(v105, a4);
      ++v91;
      v92 = v96;
      v83 = v148;
      v84 = v136;
      v81 = v137;
      continue;
    }

    break;
  }

  v93 = v83;
  v94 = v92;
  if (v83)
  {
LABEL_53:
    v148 = (v93 - 1) & v93;
    v98 = __clz(__rbit64(v93)) | (v94 << 6);
    (*(v127 + 16))(v145, *(v84 + 48) + *(v127 + 72) * v98, a4);
    v99 = v144;
    v100 = v151;
    (*(v128 + 16))(v144, *(v84 + 56) + *(v128 + 72) * v98, v151);
    goto LABEL_56;
  }

  if (v90 <= v92 + 1)
  {
    v95 = v92 + 1;
  }

  else
  {
    v95 = v90;
  }

  v96 = v95 - 1;
  v97 = v92;
  while (1)
  {
    v94 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      break;
    }

    if (v94 >= v90)
    {
      v148 = 0;
      v103 = 1;
      v101 = v143;
      goto LABEL_57;
    }

    v93 = *&v81[8 * v94];
    ++v97;
    if (v93)
    {
      goto LABEL_53;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t Dictionary.init<A>(identifying:by:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a7;
  v48 = a2;
  v49 = a3;
  v40 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v46 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v21 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v36 - v26;
  v50 = a4;
  v53 = Dictionary.init()();
  v38 = v21;
  (*(v21 + 16))(v24, v40, a6);
  dispatch thunk of Sequence.makeIterator()();
  v39 = a6;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v28 = v52;
  v29 = *(v52 + 48);
  if (v29(v20, 1, a5) != 1)
  {
    v31 = *(v28 + 32);
    v30 = v28 + 32;
    v43 = (v30 - 16);
    v44 = v31;
    v52 = v30;
    v41 = (v30 - 24);
    v42 = (v30 + 24);
    v45 = v29;
    do
    {
      v44(v15, v20, a5);
      v48(v15);
      v32 = v20;
      v33 = v46;
      (*v43)(v46, v15, a5);
      (*v42)(v33, 0, 1, a5);
      type metadata accessor for Dictionary();
      v20 = v32;
      v34 = v45;
      Dictionary.subscript.setter();
      (*v41)(v15, a5);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v34(v32, 1, a5) != 1);
  }

  (*(v38 + 8))(v40, v39);
  (*(v37 + 8))(v27, AssociatedTypeWitness);
  return v53;
}

uint64_t readEnvironment(_:_:)(_BYTE *a1, char *a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v4 = getenv(a2);
    if (v4)
    {
      LOBYTE(v2) = atoi(v4) != 0;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *a1 = v2;
  }

  return v2 & 1;
}

uint64_t BidirectionalCollection<>.formNextLexicographicalPermutation()(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v151 = a3;
  v146 = a4;
  v147 = a2;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v138 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v107 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v106 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v117 = type metadata accessor for Range();
  v106 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v108 = &v106 - v11;
  swift_getAssociatedTypeWitness();
  v111 = swift_getAssociatedConformanceWitness();
  v114 = swift_getAssociatedTypeWitness();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v106 - v12;
  v124 = swift_checkMetadataState();
  v109 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v106 - v13;
  v141 = AssociatedConformanceWitness;
  v122 = type metadata accessor for PartialRangeFrom();
  v140 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v148 = &v106 - v14;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v110 = &v106 - v16;
  v136 = swift_getTupleTypeMetadata2();
  v116 = type metadata accessor for Optional();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v137 = &v106 - v17;
  v143 = AssociatedTypeWitness;
  v127 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v123 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v106 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v106 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v149 = &v106 - v25;
  v26 = v5;
  v27 = a1;
  v28 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v28);
  v133 = swift_getAssociatedConformanceWitness();
  v29 = type metadata accessor for ReversedCollection();
  v135 = *(v29 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v106 - v31;
  swift_getWitnessTable(MEMORY[0x1E69E6EC0], v29, v30);
  v132 = v33;
  v34 = type metadata accessor for Slice();
  v129 = v34;
  v134 = *(v34 - 8);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v128 = &v106 - v36;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E74E8], v34, v35);
  v39 = v38;
  v131 = v38;
  swift_getWitnessTable(MEMORY[0x1E69E6EB0], v29, WitnessTable);
  v130 = v40;
  v157 = v34;
  v158 = v29;
  v159 = v39;
  v160 = v40;
  v145 = type metadata accessor for Zip2Sequence();
  v126 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v106 - v41;
  v42 = v150;
  dispatch thunk of Collection.indices.getter();
  v43 = v133;
  MEMORY[0x193ABE9C0](v28, v133);
  v44 = v128;
  Collection.dropFirst(_:)();
  v45 = v26;
  v46 = v136;
  v119 = v45;
  dispatch thunk of Collection.indices.getter();
  MEMORY[0x193ABE9C0](v28, v43);
  v47 = v144;
  v48 = v129;
  zip<A, B>(_:_:)();
  v49 = v29;
  v50 = v145;
  v135[1](v32, v49);
  (*(v134 + 1))(v44, v48);
  v139 = v27;
  v152 = v27;
  v153 = v147;
  v154 = v151;
  v155 = v146;
  v156 = v42;
  swift_getWitnessTable(MEMORY[0x1E69E6AA8], v50);
  v51 = v137;
  Sequence.first(where:)();
  v52 = (*(*(v46 - 8) + 48))(v51, 1, v46);
  if (v52 == 1)
  {
    (*(v126 + 8))(v47, v50);
    (*(v115 + 8))(v51, v116);
    return v52 != 1;
  }

  v53 = *(v46 + 48);
  v54 = v127;
  v55 = v127 + 32;
  v56 = *(v127 + 32);
  v57 = v143;
  v56(v149, v51, v143);
  v58 = &v51[v53];
  v59 = v55;
  v60 = v142;
  v134 = v56;
  v56(v142, v58, v57);
  v61 = *(v141 + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v63 = v54;
  v133 = v61;
  v136 = v59;
  LODWORD(v132) = v52;
  v64 = *(v54 + 16);
  v65 = v148;
  v137 = (v54 + 16);
  v135 = v64;
  (v64)(v148, v60, v57);
  v66 = v122;
  swift_getWitnessTable(MEMORY[0x1E69E6D18], v122);
  v67 = v125;
  v68 = v139;
  v69 = v150;
  v70 = v151;
  MutableCollection.subscript.getter();
  v71 = *(v140 + 8);
  v140 += 8;
  v131 = v71;
  v71(v65, v66);
  v72 = v112;
  v73 = v124;
  dispatch thunk of Collection.indices.getter();
  v74 = (*(v109 + 8))(v67, v73);
  MEMORY[0x1EEE9AC00](v74);
  v76 = v146;
  v75 = v147;
  *(&v106 - 6) = v68;
  *(&v106 - 5) = v75;
  *(&v106 - 4) = v70;
  *(&v106 - 3) = v76;
  v77 = v149;
  *(&v106 - 2) = v69;
  *(&v106 - 1) = v77;
  v147 = swift_getAssociatedConformanceWitness();
  v78 = v114;
  v79 = v143;
  swift_getAssociatedConformanceWitness();
  v80 = v110;
  BidirectionalCollection.last(where:)();
  (*(v113 + 8))(v72, v78);
  result = (*(v63 + 48))(v80, 1, v79);
  if (result != 1)
  {
    v81 = v134;
    v134(v120, v80, v79);
    dispatch thunk of MutableCollection.swapAt(_:_:)();
    v82 = v142;
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    v83 = v121;
    v84 = v108;
    v85 = v123;
    if (result)
    {
      v86 = v148;
      (v135)(v148, v82, v79);
      dispatch thunk of Collection.endIndex.getter();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        (v135)(v83, v86, v79);
        v87 = v85;
        v88 = TupleTypeMetadata2;
        v89 = v81;
        v81(&v83[*(TupleTypeMetadata2 + 48)], v87, v79);
        v90 = v138;
        v91 = *(v138 + 16);
        v92 = v107;
        v133 = v138 + 16;
        v130 = v91;
        v91(v107, v83, v88);
        v146 = *(v88 + 48);
        v89(v84, v92, v79);
        v93 = *(v127 + 8);
        v93(&v146[v92], v79);
        v94 = *(v90 + 32);
        v138 = v90 + 32;
        v146 = v94;
        (v94)(v92, v83, v88);
        v95 = v84;
        v96 = v117;
        v89(&v84[*(v117 + 36)], &v92[*(v88 + 48)], v79);
        v129 = v93;
        v93(v92, v79);
        dispatch thunk of Collection.subscript.getter();
        (*(v106 + 8))(v84, v96);
        swift_getAssociatedConformanceWitness();
        MutableCollection<>.reverse()();
        v97 = v123;
        dispatch thunk of Collection.endIndex.getter();
        v98 = v148;
        result = dispatch thunk of static Comparable.<= infix(_:_:)();
        if (result)
        {
          v99 = v121;
          v100 = TupleTypeMetadata2;
          v101 = v143;
          (v135)(v121, v98, v143);
          v102 = v134;
          v134(&v99[*(v100 + 48)], v97, v101);
          v130(v92, v99, v100);
          v103 = *(v100 + 48);
          v102(v95, v92, v101);
          v104 = &v92[v103];
          v105 = v129;
          v129(v104, v101);
          (v146)(v92, v99, v100);
          v102(&v95[*(v117 + 36)], &v92[*(v100 + 48)], v101);
          v105(v92, v101);
          dispatch thunk of MutableCollection.subscript.setter();
          v131(v148, v122);
          v105(v120, v101);
          v105(v142, v101);
          (*(v126 + 8))(v144, v145);
          v105(v149, v101);
          v52 = v132;
          return v52 != 1;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t closure #1 in BidirectionalCollection<>.formNextLexicographicalPermutation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v40 = a2;
  v35 = a1;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - v11;
  v36 = v34 - v11;
  v34[0] = v7;
  v34[1] = a3;
  v13 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v37 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = *(v15 + 16);
  v38 = v34 - v20;
  v19(v34 - v20, a1, TupleTypeMetadata2, v18);
  v39 = *(TupleTypeMetadata2 + 48);
  v21 = dispatch thunk of Collection.subscript.read();
  v22 = *(v45 + 16);
  v23 = v12;
  v24 = AssociatedTypeWitness;
  v22(v23);
  v21(v44, 0);
  v25 = v37;
  (v19)(v37, v35, TupleTypeMetadata2);
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = dispatch thunk of Collection.subscript.read();
  v28 = v42;
  v22(v42);
  (v27)(v44, 0);
  v29 = v36;
  LOBYTE(v27) = dispatch thunk of static Comparable.< infix(_:_:)();
  v30 = *(v45 + 8);
  v30(v28, v24);
  v30(v29, v24);
  v31 = *(*(v13 - 8) + 8);
  v31(&v25[v26], v13);
  v31(v25, v13);
  v32 = v38;
  v31(&v38[v39], v13);
  v31(v32, v13);
  return v27 & 1;
}

uint64_t closure #2 in BidirectionalCollection<>.formNextLexicographicalPermutation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[2] = a3;
  v19[3] = a7;
  v19[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v14 = dispatch thunk of Collection.subscript.read();
  v15 = *(v8 + 16);
  v15(v13);
  v14(v20, 0);
  v16 = dispatch thunk of Collection.subscript.read();
  v15(v10);
  (v16)(v20, 0);
  LOBYTE(v16) = dispatch thunk of static Comparable.> infix(_:_:)();
  v17 = *(v8 + 8);
  v17(v10, AssociatedTypeWitness);
  v17(v13, AssociatedTypeWitness);
  return v16 & 1;
}

uint64_t RandomAccessCollection<>.lowerBound(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return RandomAccessCollection.lowerBound(_:)(partial apply for closure #1 in RandomAccessCollection<>.lowerBound(of:), v6, a5);
}

uint64_t ClosedRange.intersection(_:)@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a3;
  v4 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v31 = TupleTypeMetadata2;
  v32 = v6;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  max<A>(_:_:)();
  v33 = a2;
  min<A>(_:_:)();
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    v28 = *(v12 + 8);
    v28(v15, v4);
    v28(v18, v4);
    v27 = 1;
    v26 = v33;
    v24 = v34;
    return (*(*(v26 - 8) + 56))(v24, v27, 1, v26);
  }

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v20 = *(v12 + 32);
    v21 = v11;
    v20(v11, v18, v4);
    v22 = v31;
    v20(&v11[*(v31 + 48)], v15, v4);
    v23 = v32;
    (*(v32 + 16))(v8, v21, v22);
    v30 = *(v22 + 48);
    v24 = v34;
    v20(v34, v8, v4);
    v25 = *(v12 + 8);
    v25(&v8[v30], v4);
    (*(v23 + 32))(v8, v21, v22);
    v26 = v33;
    v20(&v24[*(v33 + 36)], &v8[*(v22 + 48)], v4);
    v25(v8, v4);
    v27 = 0;
    return (*(*(v26 - 8) + 56))(v24, v27, 1, v26);
  }

  __break(1u);
  return result;
}

uint64_t ClosedRange.init(bounds:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v39 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v36 = TupleTypeMetadata2;
  v37 = v10;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v34 - v14;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  min<A>(_:_:)();
  max<A>(_:_:)();
  v38 = a4;
  LOBYTE(a4) = dispatch thunk of static Comparable.<= infix(_:_:)();
  v22 = *(v15 + 8);
  v22(a2, a3);
  v35 = v22;
  result = (v22)(a1, a3);
  if (a4)
  {
    v24 = *(v15 + 32);
    v25 = v34;
    v24(v34, v21, a3);
    v26 = v36;
    v24(&v25[*(v36 + 48)], v18, a3);
    v27 = v37;
    (*(v37 + 16))(v12, v25, v26);
    v28 = *(v26 + 48);
    v29 = v39;
    v24(v39, v12, a3);
    v30 = &v12[v28];
    v31 = v35;
    v35(v30, a3);
    (*(v27 + 32))(v12, v25, v26);
    v32 = *(v26 + 48);
    v33 = type metadata accessor for ClosedRange();
    v24(&v29[*(v33 + 36)], &v12[v32], a3);
    return v31(v12, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClosedRange.union(_:)@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a3;
  v4 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  min<A>(_:_:)();
  max<A>(_:_:)();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v18 = *(v10 + 32);
    v18(v9, v16, v4);
    v19 = TupleTypeMetadata2;
    v18(&v9[*(TupleTypeMetadata2 + 48)], v13, v4);
    v20 = v27;
    v21 = v28;
    (*(v27 + 16))(v28, v9, v19);
    v25 = *(v19 + 48);
    v26 = a2;
    v22 = v29;
    v18(v29, v21, v4);
    v23 = *(v10 + 8);
    v23(&v21[v25], v4);
    (*(v20 + 32))(v21, v9, v19);
    v18(&v22[*(v26 + 36)], &v21[*(v19 + 48)], v4);
    return (v23)(v21, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Range.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    return dispatch thunk of static Comparable.>= infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t static ClosedRange<>.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, char *a7@<X8>)
{
  v39 = a6;
  v40 = a4;
  v38 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v36 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v23 = *(a5 + 8);
  v24 = v39;
  (v39)(a1, a2, a3, v23, v20);
  v34 = type metadata accessor for ClosedRange();
  v24(a1 + *(v34 + 36), a2, a3, v23);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v26 = v36;
    v27 = *(v36 + 32);
    v27(v15, v22, a3);
    v28 = TupleTypeMetadata2;
    v27(&v15[*(TupleTypeMetadata2 + 48)], v18, a3);
    v29 = v37;
    (*(v37 + 16))(v12, v15, v28);
    v30 = *(v28 + 48);
    v40 = v15;
    v31 = v38;
    v27(v38, v12, a3);
    v32 = *(v26 + 8);
    v32(&v12[v30], a3);
    (*(v29 + 32))(v12, v40, v28);
    v27(&v31[*(v34 + 36)], &v12[*(v28 + 48)], a3);
    return (v32)(v12, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ClosedRange<>.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = type metadata accessor for ClosedRange();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v13 + 32))(&v18 - v15, a1, v12, v14);
  a6(v16, a2, a3, a4, a5);
  return (*(v13 + 8))(v16, v12);
}

uint64_t Range<>.offset(by:)@<X0>(uint64_t a2@<X1>, char *a4@<X8>)
{
  v29 = a4;
  v5 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v28 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v24 - v10;
  v11 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v19 = *(v11 + 32);
    v20 = v27;
    v19(v27, v17, v5);
    v19(&v20[*(TupleTypeMetadata2 + 48)], v14, v5);
    v21 = v28;
    (*(v7 + 16))(v28, v20, TupleTypeMetadata2);
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = a2;
    v22 = v29;
    v19(v29, v21, v5);
    v23 = *(v11 + 8);
    v23(&v21[v25], v5);
    (*(v7 + 32))(v21, v20, TupleTypeMetadata2);
    v19(&v22[*(v26 + 36)], &v21[*(TupleTypeMetadata2 + 48)], v5);
    return (v23)(v21, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CollectionOfTwo.elements.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, v3, TupleTypeMetadata2, v8);
  v12 = *(TupleTypeMetadata2 + 48);
  v13 = *(*(v6 - 8) + 32);
  v13(a1, v10, v6);
  return (v13)(a2, &v10[v12], v6);
}

uint64_t CollectionOfTwo.elements.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 32);
  v15(&v19 - v12, a1, v5, v11);
  (v15)(&v13[*(TupleTypeMetadata2 + 48)], v20, v5);
  (*(v7 + 32))(v9, v13, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = *(v14 + 40);
  v17(v3, v9, v5);
  return (v17)(v3 + *(TupleTypeMetadata2 + 48), &v9[v16], v5);
}

uint64_t CollectionOfTwo.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v16 - v11;
  if (a1 == 1)
  {
    (*(v9 + 16))(v12, v4, TupleTypeMetadata2, v10);
    v13 = &v12[*(TupleTypeMetadata2 + 48)];
LABEL_5:
    v14 = *(v7 - 8);
    (*(v14 + 32))(a3, v13, v7);
    return (*(v14 + 8))(v12, v7);
  }

  if (!a1)
  {
    (*(v9 + 16))(v12, v4, TupleTypeMetadata2, v10);
    v13 = v12;
    v12 += *(TupleTypeMetadata2 + 48);
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t key path setter for CollectionOfTwo.subscript(_:) : <A>CollectionOfTwo<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - v6;
  v9 = *v8;
  (*(v10 + 16))(&v15 - v6, v5);
  v13 = type metadata accessor for CollectionOfTwo(0, v4, v11, v12);
  return CollectionOfTwo.subscript.setter(v7, v9, v13);
}

uint64_t CollectionOfTwo.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v5 = *(a3 + 16);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v7 = *(*(v5 - 8) + 40);
    v8 = v3 + *(TupleTypeMetadata2 + 48);
    v9 = a1;
    v10 = v5;
  }

  else
  {
    if (a2)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v10 = *(a3 + 16);
    v7 = *(*(v10 - 8) + 40);
    v8 = v3;
    v9 = a1;
  }

  return v7(v8, v9, v10);
}

void (*CollectionOfTwo.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  CollectionOfTwo.subscript.getter(a2, a3, v13);
  return CollectionOfTwo.subscript.modify;
}

void CollectionOfTwo.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    CollectionOfTwo.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CollectionOfTwo.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance CollectionOfTwo<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CollectionOfTwo.subscript.modify(v6, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance CollectionOfTwo<A>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  specialized MutableCollection<>.subscript.setter(a1, &v8, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>, a3);
  v6 = type metadata accessor for Slice();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance CollectionOfTwo<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance CollectionOfTwo<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>);

  return RandomAccessCollection<>.index(before:)();
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionOfTwo<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CollectionOfTwo.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance CollectionOfTwo<A>;
}

uint64_t (*CollectionOfTwo.subscript.read(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  CollectionOfTwo.subscript.getter(a2, a3, v9);
  return CollectionOfTwo.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance CollectionOfTwo<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>);

  return MutableCollection<>.subscript.getter(a1, a2, v6, a3);
}

void *protocol witness for Collection.indices.getter in conformance CollectionOfTwo<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>, a1);

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance CollectionOfTwo<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>);

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance CollectionOfTwo<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void, double))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>, a2, a3);
  return a4(&v9, a2, v7, MEMORY[0x1E69E6570], WitnessTable);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CollectionOfTwo<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  (*(*(a1 - 8) + 32))(a2, v4, a1);
  swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>, a1);
  result = type metadata accessor for IndexingIterator();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionOfTwo<A>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CollectionOfTwo<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t String.isNewLineOrReturn.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 10 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6 = a1 == 13 && a2 == 0xE100000000000000;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id one-time initialization function for roundingFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setMinimumFractionDigits_];
  result = [v0 setMaximumFractionDigits_];
  roundingFormatter.super.super.isa = v0;
  return result;
}

void specialized BinaryFloatingPoint.roundedForDisplay()()
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
}

Swift::Void __swiftcall DefaultStringInterpolation.appendInterpolation(rounding:)(Swift::Float rounding)
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  specialized BinaryFloatingPoint.roundedForDisplay()();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v5) = v3;
  v6 = [v4 initWithFloat_];
  v7 = [(objc_class *)isa stringFromNumber:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    MEMORY[0x193ABEDD0](v8, v10);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DefaultStringInterpolation.appendInterpolation(rounding:)(Swift::Double rounding)
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  v3 = __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
  v4 = round(v3 * rounding) / v3;
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = [(objc_class *)isa stringFromNumber:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    MEMORY[0x193ABEDD0](v8, v10);
  }

  else
  {
    __break(1u);
  }
}

void DefaultStringInterpolation.appendInterpolation(rounding:)(__n128 a1)
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  v2 = __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
  v3 = round(v19.f64[0] * v2) / v2;
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v6 = [(objc_class *)isa stringFromNumber:v5];

  if (!v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x193ABEDD0](v7, v9);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v10 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v11 = round(vmuld_lane_f64(v10, v19, 1)) / v10;
  if (v11 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v14 = [(objc_class *)isa stringFromNumber:v13];

  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  MEMORY[0x193ABEDD0](v15, v17);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
}

void DefaultStringInterpolation.appendInterpolation(rounding:)(float64x2_t a1, __n128 a2)
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  v3 = __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
  v4 = round(a1.f64[0] * v3) / v3;
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = [(objc_class *)isa stringFromNumber:v6];

  if (!v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x193ABEDD0](v8, v10);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v11 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v12 = round(vmuld_lane_f64(v11, a1, 1)) / v11;
  if (v12 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v15 = [(objc_class *)isa stringFromNumber:v14];

  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  MEMORY[0x193ABEDD0](v16, v18);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v20 = round(v19 * v28) / v19;
  if (v20 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v23 = [(objc_class *)isa stringFromNumber:v22];

  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  MEMORY[0x193ABEDD0](v24, v26);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
}

{
  _StringGuts.grow(_:)(16);

  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  v3 = __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
  v4 = round(a1.f64[0] * v3) / v3;
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = [(objc_class *)isa stringFromNumber:v6];

  if (!v7)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x193ABEDD0](v8, v10);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v11 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v12 = round(vmuld_lane_f64(v11, a1, 1)) / v11;
  if (v12 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v15 = [(objc_class *)isa stringFromNumber:v14];

  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  MEMORY[0x193ABEDD0](v16, v18);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v20 = round(v19 * v36.f64[0]) / v19;
  if (v20 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v23 = [(objc_class *)isa stringFromNumber:v22];

  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  MEMORY[0x193ABEDD0](v24, v26);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v27 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v28 = round(vmuld_lane_f64(v27, v36, 1)) / v27;
  if (v28 == 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v28;
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v31 = [(objc_class *)isa stringFromNumber:v30];

  if (!v31)
  {
    goto LABEL_25;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  MEMORY[0x193ABEDD0](v32, v34);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
}