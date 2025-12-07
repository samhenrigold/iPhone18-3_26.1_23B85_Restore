void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void _ShapeSet.Wrapper.animatableData.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(*v1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v17;
    v7 = (v3 + 40);
    do
    {
      v8 = *v7;
      v9 = *(**(v7 - 1) + 96);

      v9(v16 + 1, v10);

      *&v16[0] = v8;
      v17 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      v7 += 4;
      *(v6 + 16) = v12 + 1;
      v13 = (v6 + 48 * v12);
      v14 = v16[0];
      v15 = v16[2];
      v13[3] = v16[1];
      v13[4] = v15;
      v13[2] = v14;
      --v5;
    }

    while (v5);
  }

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
}

void type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element)
  {
    lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();
    v5[0] = MEMORY[0x1E69E6530];
    v5[1] = &type metadata for _AnyAnimatableData;
    v5[2] = MEMORY[0x1E69E6548];
    v5[3] = v2;
    v3 = type metadata accessor for KeyedAnimatableArray.Element(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
    }
  }
}

uint64_t _SizedShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v16 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v16 = *(v2 + *(a1 + 36));
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  return AnimatablePair.init(_:_:)(v10, &v16, AssociatedTypeWitness, v12, AssociatedConformanceWitness, v14, a2);
}

uint64_t OffsetShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v16 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v16 = *(v2 + *(a1 + 36));
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
  return AnimatablePair.init(_:_:)(v10, &v16, AssociatedTypeWitness, v12, AssociatedConformanceWitness, v14, a2);
}

void lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>()
{
  if (!lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20KeyedAnimatableArrayV7ElementVySiAC04_AnyE4DataV_G_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 48)
    {
      outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v3, &v9, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
      outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(i, v7, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
      if (v9 != v7[0] || v10 != v7[1])
      {
        break;
      }

      v5 = (*(v10 + 88))(&v11, &v8);
      outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v7, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
      outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v9, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
      if ((v5 & 1) == 0)
      {
        return 0;
      }

      v3 += 48;
      if (!--v2)
      {
        return 1;
      }
    }

    outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v7, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
    outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v9, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
  }

  return 0;
}

uint64_t *initializeBufferWithCopyOfBuffer for SimultaneousGesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

double specialized GeometryProxy.subscript.getter(uint64_t a1)
{
  specialized static Update.begin()();
  v3 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v3;
  v10[2] = *(v1 + 32);
  v11 = *(v1 + 48);
  v4 = GeometryProxy.placementContext.getter(v7);
  if (v9)
  {
    (*(*a1 + 88))(v10, v4);
    v5 = *v10;
  }

  else
  {
    v5 = specialized Anchor.in(_:)(v7[0], v7[1], v7[2], v8, a1);
  }

  static Update.end()();
  return v5;
}

double specialized Anchor.in(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  InputValue = AGGraphGetInputValue();
  v7 = *InputValue;
  v8 = *(InputValue + 8);
  v9 = *(InputValue + 16);
  v10 = *(InputValue + 24);
  v11 = *(InputValue + 32);
  v12 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v13 = AGGraphGetInputValue();
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = v11 - (*v13 - v9);
  v18[0] = v7;
  v18[1] = v8;
  *&v18[2] = v14;
  *&v18[3] = v15;
  *&v18[4] = v16;
  *&v18[5] = v12 - (v15 - v10);
  (*(*a5 + 96))(&v19, v18);

  return v19;
}

void *MaterialEffectTransaction.value.getter(unint64_t a1, uint64_t a2)
{
  v3 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v5 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);

  if (*AGGraphGetValue() == v7)
  {
    if ((a2 & 0x100000000) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    if (v3)
    {
      if (v8)
      {
        if (v3[3])
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
          swift_allocObject();
          swift_retain_n();

          v9.value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v8, v3).value;
        }

        else
        {
          v10 = v3[4];
          v11 = *(*v3 + 216);

          v9.value = v11(v12, v10);
        }

        v8 = v9.value;
      }

      else
      {
        v8 = v3;
      }
    }

    else
    {
    }
  }

  else
  {

    return v3;
  }

  return v8;
}

uint64_t Transaction.isAnimated.getter(void *a1)
{
  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
      if (v4)
      {
        LOBYTE(v3) = *(v4 + 72) ^ 1;
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

double PlatformGlassInteractionContext.glass.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v5;
  outlined copy of _Glass.Variant.Role(v2, v3);

  return result;
}

uint64_t destroy for PlatformGlassInteractionContext(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);

  if (a1[9] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[6], a1[7]);
  }

  if (a1[15] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[12], a1[13]);
  }

  return swift_weakDestroy();
}

void storeEnumTagSinglePayload for CoreInteractionRepresentableEffect(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
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

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);

    v24();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CoreInteractionRepresentableEffect(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void *assignWithTake for CoreInteractionRepresentableEffect(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = v13 + 7;
  v15 = ((a1 + v14) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((a2 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;

  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectRelease();
  return a1;
}

uint64_t _CoreInteractionHelperBox.value<A, B>(as:idType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a4;
  v41 = a6;
  v42 = a7;
  v12 = *v7;
  v13 = *(*v7 + 120);
  v14 = *(*v7 + 136);
  type metadata accessor for CoreInteractionRepresentableEffect(255, v13, v14, a4);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v37 - v19;
  if (v13 == a1 && (v21 = v12[16], v21 == a2))
  {
    v27 = v12[19];
    v38 = v17;
    swift_beginAccess();
    v28 = v7 + v27;
    v29 = v38;
    v30 = (*(v16 + 16))(v20, v28, v38);
    v39 = &v37;
    MEMORY[0x1EEE9AC00](v30);
    *(&v37 - 8) = v13;
    *(&v37 - 7) = v21;
    v31 = v40;
    *(&v37 - 6) = a3;
    *(&v37 - 5) = v31;
    v32 = v12[18];
    *(&v37 - 4) = v14;
    *(&v37 - 3) = v32;
    v33 = v41;
    *(&v37 - 2) = a5;
    *(&v37 - 1) = v33;
    v35 = type metadata accessor for CoreInteractionRepresentableEffect(0, a3, a5, v34);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _CoreInteractionHelperBox.value<A, B>(as:idType:), (&v37 - 10), MEMORY[0x1E69E73E0], v35, v36, v42);
    return (*(v16 + 8))(v20, v29);
  }

  else
  {
    v22 = type metadata accessor for CoreInteractionRepresentableEffect(0, a3, a5, v18);
    v23 = *(*(v22 - 8) + 56);
    v24 = v22;
    v25 = v42;

    return v23(v25, 1, 1, v24);
  }
}

void *initializeWithCopy for CoreInteractionRepresentableEffect(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = v12 + 7;
  v14 = ((a1 + v13) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);

  swift_unknownObjectRetain();
  return a1;
}

void *initializeWithTake for CoreInteractionRepresentableEffect(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = v12 + 7;
  v14 = ((a1 + v13) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t closure #1 in _CoreInteractionHelperBox.value<A, B>(as:idType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v10 = *(*(type metadata accessor for CoreInteractionRepresentableEffect(0, a2, a4, a3) - 8) + 64);
  result = type metadata accessor for CoreInteractionRepresentableEffect(0, a3, a5, v11);
  if (v10 == *(*(result - 8) + 64))
  {
    return (*(*(result - 8) + 16))(a6, a1, result);
  }

  __break(1u);
  return result;
}

uint64_t MaterialEffectDisplayList.updateValue()()
{
  v1 = v0;
  v113 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  if (v0[6] == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *Value;
    v3 = *(Value + 8);
    v4 = *(Value + 12);
  }

  v101 = v5;
  v102 = v3;
  v103 = v4;
  type metadata accessor for CGPoint(0);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[1];
  v10 = AGGraphGetValue();
  v11 = v8 - *v10;
  v12 = v9 - v10[1];
  v13 = ++static DisplayList.Version.lastValue;
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MaterialEffectResolvedData.Data?, &unk_1F00A6040, MEMORY[0x1E69E6720]);
  v14 = AGGraphGetValue();
  v93 = *v14;
  if (!*v14)
  {
    *&__src[0] = v13;
    DisplayList.translate(by:version:)(__PAIR128__(*&v12, *&v11), __src);
    *&__src[0] = v101;
    WORD4(__src[0]) = v102;
    HIDWORD(__src[0]) = v103;
    AGGraphSetOutputValue();
  }

  v94 = v4;
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v91 = v15;
  v92 = v17;
  v90 = v16;
  if (v17 != 2)
  {
LABEL_8:
    v19 = HIDWORD(v17);
    v112 = 0;
    *&v111[72] = 0x20000000;
    memset(v111, 0, 72);
    type metadata accessor for CGSize(0);
    outlined copy of MaterialEffectResolvedData.Data?(v93, v15, v16, v17);

    v20 = AGGraphGetValue();
    if (v13)
    {
      v21 = (2 * ((33 * (v13 >> 16)) ^ v13)) | 1;
    }

    else
    {
      LOWORD(v21) = 0;
    }

    v22 = *v20;
    v23 = v20[1];
    v24 = *v0;
    v25 = v0[5];
    *&__src[9] = 0;
    DWORD2(__src[9]) = 0;
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v26 = static GraphicsBlendMode.normal;
    v27 = byte_1ED52F818;
    *(&__src[15] + 1) = static GraphicsBlendMode.normal;
    LOBYTE(__src[16]) = byte_1ED52F818;
    DWORD1(__src[16]) = 1065353216;
    BYTE8(__src[16]) = 0;
    *&__src[0] = v93;
    *(&__src[0] + 1) = v91;
    *&__src[4] = 0;
    DWORD2(__src[6]) = 0x20000000;
    WORD6(__src[6]) = v21;
    *&__src[7] = v11;
    *(&__src[7] + 1) = v12;
    *&__src[8] = v22;
    *(&__src[8] + 1) = v23;
    *&__src[10] = v11;
    *(&__src[10] + 1) = v12;
    *&__src[11] = v22;
    *(&__src[11] + 1) = v23;
    __src[12] = v13;
    __src[13] = 0uLL;
    *&__src[14] = 3221225472;
    DWORD2(__src[14]) = v24;
    BYTE12(__src[14]) = 0;
    LODWORD(__src[15]) = v25;
    v97 = v2;
    v28 = v16;
    *&__dst[0] = v16;
    BYTE8(__dst[0]) = v92;
    HIDWORD(__dst[0]) = v19;
    BYTE5(__dst[5]) = 3;
    DWORD2(__dst[5]) = 1065353216;
    *&__dst[6] = 0;
    BYTE8(__dst[6]) = -1;
    *&__dst[7] = v2;
    LOBYTE(v105) = 0;
    outlined copy of Material.ID(v16, v92);
    outlined copy of GraphicsBlendMode(v26, v27);
    _ShapeStyle_Pack.subscript.setter(__dst, &v105, 0);
    LOBYTE(__dst[0]) = 0;
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v111, __src, &v97);
    LOBYTE(__dst[0]) = 0;
    _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v98);
    *&__dst[0] = v13;
    DisplayList.translate(by:version:)(__PAIR128__(*&v12, *&v11), __dst);
    v29 = *(v101 + 16);
    if (v29)
    {
      v30 = 0;
      v95 = v101 + 32;
      v31 = v98;
      while (1)
      {
        v33 = (v95 + 80 * v30);
        v34 = *(v33 + 60);
        v35 = v33[3];
        v36 = v33[1];
        __dst[2] = v33[2];
        __dst[3] = v35;
        *(&__dst[3] + 12) = v34;
        __dst[0] = *v33;
        __dst[1] = v36;
        v37 = *(&__dst[2] + 1);
        v39 = v35;
        v38 = v34 >> 32;
        v40 = DWORD1(v34) >> 30;
        if (DWORD1(v34) >> 30 == 3 && !(*&__dst[3] | *(&__dst[2] + 1) | *(&__dst[3] + 1)) && *&__dst[4] == 3221225472)
        {
          goto LABEL_18;
        }

        outlined init with copy of DisplayList.Item(__dst, &v105);
        outlined init with copy of DisplayList.Item(__dst, &v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        }

        v42 = *(v31 + 2);
        v41 = *(v31 + 3);
        if (v42 >= v41 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v31);
        }

        *(v31 + 2) = v42 + 1;
        v43 = &v31[80 * v42];
        *(v43 + 2) = __dst[0];
        v44 = __dst[1];
        v45 = __dst[2];
        v46 = __dst[3];
        *(v43 + 92) = *(&__dst[3] + 12);
        *(v43 + 4) = v45;
        *(v43 + 5) = v46;
        *(v43 + 3) = v44;
        v107 = __dst[2];
        v108[0] = __dst[3];
        *(v108 + 12) = *(&__dst[3] + 12);
        v105 = __dst[0];
        v106 = __dst[1];
        DisplayList.Item.features.getter(&v96);
        v99 |= v96;
        if (v40 > 1)
        {
          if (v40 == 2)
          {
            v47 = *(v37 + 16);
            if (v47)
            {
              if (v47 > 7)
              {
                v48 = v47 & 0x7FFFFFFFFFFFFFF8;
                v50 = (v37 + 188);
                v51 = 0uLL;
                v52 = v47 & 0x7FFFFFFFFFFFFFF8;
                v53 = 0uLL;
                do
                {
                  v54.i32[0] = *(v50 - 30);
                  v54.i32[1] = *(v50 - 20);
                  v54.i32[2] = *(v50 - 10);
                  v54.i32[3] = *v50;
                  v55.i32[0] = v50[10];
                  v55.i32[1] = v50[20];
                  v55.i32[2] = v50[30];
                  v55.i32[3] = v50[40];
                  v51 = vorrq_s8(v54, v51);
                  v53 = vorrq_s8(v55, v53);
                  v50 += 80;
                  v52 -= 8;
                }

                while (v52);
                v56 = vorrq_s8(v53, v51);
                v57 = vorr_s8(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
                v32 = v57.i32[0] | v57.i32[1];
                if (v47 == v48)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                v32 = 0;
                v48 = 0;
              }

              v58 = v47 - v48;
              v59 = (v37 + 40 * v48 + 68);
              do
              {
                v60 = *v59;
                v59 += 10;
                v32 |= v60;
                --v58;
              }

              while (v58);
            }

            else
            {
              v32 = 0;
            }

LABEL_45:
            outlined destroy of DisplayList.Item(__dst);
            goto LABEL_17;
          }
        }

        else
        {
          if (v40)
          {
            switch(BYTE4(v39))
            {
              case 2u:

                v49 = v37;
                break;
              case 7u:
                v49 = *(v37 + 28);
                outlined init with copy of DisplayList.Item(__dst, &v105);
                outlined consume of DisplayList.Effect(v37, v39, 7);

                outlined destroy of DisplayList.Item(__dst);
                break;
              case 0x12u:
                (*(*v37 + 120))(&v96);
                outlined init with copy of DisplayList.Item(__dst, &v105);
                outlined consume of DisplayList.Effect(v37, v39, 18);

                outlined destroy of DisplayList.Item(__dst);
                v49 = v96;
                break;
              default:
                outlined copy of DisplayList.Effect(v37, v39, SBYTE4(v39));

                outlined consume of DisplayList.Effect(v37, v39, SBYTE4(v39));

                outlined destroy of DisplayList.Item(__dst);
                v49 = 0;
                break;
            }

            v32 = v49 | HIDWORD(v38);
            goto LABEL_17;
          }

          if (v37 >> 60 == 6 || v37 >> 60 == 11)
          {
            v32 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_45;
          }
        }

        outlined destroy of DisplayList.Item(__dst);
        v32 = 0;
LABEL_17:
        v100 |= v32;
LABEL_18:
        if (++v30 == v29)
        {
          v98 = v31;

          v28 = v16;
          goto LABEL_52;
        }
      }
    }

    v31 = v98;
LABEL_52:
    *&v105 = v31;
    WORD4(v105) = v99;
    HIDWORD(v105) = v100;
    AGGraphSetOutputValue();
    outlined consume of MaterialEffectResolvedData.Data?(v93, v91, v28, v92);
    memcpy(__dst, __src, 0x109uLL);
    outlined destroy of _ShapeStyle_RenderedShape(__dst);

    v107 = *&v111[32];
    v108[0] = *&v111[48];
    v108[1] = *&v111[64];
    v109 = v112;
    v105 = *v111;
    v106 = *&v111[16];
    outlined destroy of _ShapeStyle_RenderedLayers(&v105);
  }

  *&__dst[0] = v14[2];
  Material.Layers.singletonSDFLayer.getter(__src);
  v18 = *&__src[0];
  if ((~*&__src[0] & 0xF000000000000007) == 0)
  {
    v17 = v92;
    goto LABEL_8;
  }

  v62 = DWORD2(__src[0]);
  v63 = 0.5;
  if ((BYTE8(__src[0]) & 1) == 0)
  {
    v63 = 0.0;
  }

  if (*(__src + 3) == 0.0)
  {
    v64 = v63;
  }

  else
  {
    v64 = *(__src + 3);
  }

  outlined copy of MaterialEffectResolvedData.Data?(v93, v15, v16, v92);

  v89 = v62;
  outlined copy of Material.Layer.SDFLayer?(v18);
  v65 = AGGraphGetValue();
  v66 = *v65;
  if (*(v65 + 8))
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE021MaterialBackdropProxyI033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt1g5(v66, __src);

    v67 = *&__src[0];
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v68);
    v69 = *&__src[0];

    v71 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE021MaterialBackdropProxyV033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt0B5(v70, v69);
    if (v71)
    {
      v67 = v71[9];
    }

    else
    {
      v67 = 0;
    }
  }

  v72 = *(v1 + 5);
  v88 = v18;
  if (v67)
  {
    if (v72)
    {
      if (v67 == v72)
      {
        goto LABEL_80;
      }

LABEL_71:
      v73 = *(v1 + 5);
      if (v73)
      {
        v74 = *(v1 + 4);

        os_unfair_lock_lock(v73 + 4);
        _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v73[6], v74);
        os_unfair_lock_unlock(v73 + 4);
      }

      if (v67)
      {
        v75 = *(v1 + 4);

        os_unfair_lock_lock((v67 + 16));
        _s7SwiftUI21MaterialBackdropProxyV11addObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(v67 + 24, v75, &protocol witness table for SDFShape.BackdropObserver);
        os_unfair_lock_unlock((v67 + 16));

        *(v1 + 5) = v67;

        v76 = *(v1 + 4);

        os_unfair_lock_lock((v67 + 16));
        v77 = *(v67 + 24);
        v78 = *(v67 + 28);
        os_unfair_lock_unlock((v67 + 16));
        if (swift_weakLoadStrong())
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          v79 = static Update._lock;
          _MovableLockLock(static Update._lock);
          specialized static Update.begin()();
          v80 = *(v76 + 24);
          v81 = _threadTransactionID();
          LOBYTE(__src[0]) = v78;
          specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v81, v80, v77 | (v78 << 32), 1, 1);
          static Update.end()();
          _MovableLockUnlock(v79);
        }

        v18 = v88;
      }

      else
      {
        *(v1 + 5) = 0;
      }

      goto LABEL_80;
    }

LABEL_70:

    goto LABEL_71;
  }

  if (v72)
  {
    goto LABEL_70;
  }

LABEL_80:
  if (*(v1 + 5))
  {
    v82 = 0;
  }

  else
  {
    v82 = *(v1 + 4);
  }

  v83 = swift_allocObject();
  v105 = 0uLL;
  *&v106 = v93;
  *(&v106 + 1) = v91;
  *&v107 = v18;
  *(&v107 + 1) = __PAIR64__(v89, LODWORD(v64));
  *&v108[0] = v82;
  *(v83 + 64) = v82;
  v84 = v106;
  *(v83 + 16) = v105;
  *(v83 + 32) = v84;
  *(v83 + 48) = v107;
  type metadata accessor for CGSize(0);
  outlined init with copy of SDFShape(&v105, __src);
  v85 = AGGraphGetValue();
  v86 = *v1;
  v87 = *v85;
  *__src = v11;
  *(__src + 1) = v12;
  __src[1] = v87;
  *&__src[2] = v13;
  *(&__src[2] + 1) = v83;
  *&__src[3] = 0x800000000;
  *(&__src[3] + 1) = v5;
  *&__src[4] = v3 | (v94 << 32) | 0x40000000;
  DWORD2(__src[4]) = v86;
  __dst[2] = __src[2];
  __dst[3] = __src[3];
  *(&__dst[3] + 12) = *(&__src[3] + 12);
  __dst[0] = __src[0];
  __dst[1] = v87;
  outlined init with copy of DisplayList.Item(__src, v111);
  DisplayList.init(_:)(__dst, v111);
  *&__dst[0] = *v111;
  WORD4(__dst[0]) = *&v111[8];
  HIDWORD(__dst[0]) = *&v111[12];
  AGGraphSetOutputValue();
  outlined consume of MaterialEffectResolvedData.Data?(v93, v91, v90, v92);
  outlined destroy of DisplayList.Item(__src);

  outlined consume of SDFStyle?(v88);

  __dst[0] = 0uLL;
  *&__dst[1] = v93;
  *(&__dst[1] + 1) = v91;
  *&__dst[2] = v88;
  *(&__dst[2] + 1) = __PAIR64__(v89, LODWORD(v64));
  *&__dst[3] = v82;
  return outlined destroy of SDFShape(__dst);
}

uint64_t sub_18D184BF8()
{

  return swift_deallocObject();
}

uint64_t MaterialProviderBox.resolveLayers(in:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[3];
  v8[2] = a1[2];
  v9[0] = v5;
  *(v9 + 9) = *(a1 + 57);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  result = (*(*(v4 + 208) + 16))(v8, *(v4 + 200));
  *a2 = result;
  return result;
}

void _ShapeSet.Wrapper.pathSet(in:)(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(*v3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v26;
    v10 = (v4 + 60);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 4);
      v13 = *v10;
      v14 = *(**(v10 - 7) + 80);

      v14(v24, v15, 0.0, 0.0, a2, a3);

      v26 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v7 = v26;
      }

      v10 += 8;
      *(v7 + 16) = v17 + 1;
      v18 = v7 + 56 * v17;
      v19 = v24[1];
      v20 = v25;
      *(v18 + 32) = v24[0];
      *(v18 + 48) = v19;
      *(v18 + 64) = v20;
      *(v18 + 72) = v11;
      *(v18 + 80) = v12;
      *(v18 + 81) = v22;
      *(v18 + 83) = v23;
      *(v18 + 84) = v13;
      --v6;
    }

    while (v6);
    a1 = v21;
  }

  *a1 = v7;
  a1[1] = v5;
}

double protocol witness for Shape.path(in:) in conformance _SizedShape<A>@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  _SizedShape.path(in:)(a2, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

double _SizedShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  (*(*(a1 + 24) + 24))(v8, *(a1 + 16), a3, a4, *(v4 + *(a1 + 36)), *(v4 + *(a1 + 36) + 8));
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

double protocol witness for Shape.path(in:) in conformance OffsetShape<A>@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  OffsetShape.path(in:)(a2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void *OffsetShape.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*(a1 + 24) + 24))(v13, *(a1 + 16));
  v6 = (v2 + *(a1 + 36));
  v7 = v6[1];
  if (*v6 == 0.0 && v7 == 0.0)
  {
    v8 = v13[0];
    v9 = v13[1];
    v10 = v14;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v17, *v6, v7);
    Path.applying(_:)(&v17.a, v15);
    v11 = v15[1];
    v12 = v15[0];
    v10 = v16;
    result = outlined destroy of Path(v13);
    v9 = v11;
    v8 = v12;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

void lazy protocol witness table accessor for type OffsetShape<AnyShape> and conformance OffsetShape<A>()
{
  if (!lazy protocol witness table cache variable for type OffsetShape<AnyShape> and conformance OffsetShape<A>)
  {
    type metadata accessor for OffsetShape<AnyShape>(255, &lazy cache variable for type metadata for OffsetShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for OffsetShape);
    swift_getWitnessTable(protocol conformance descriptor for OffsetShape<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type OffsetShape<AnyShape> and conformance OffsetShape<A>);
  }
}

void instantiation function for generic protocol witness table for RawRepresentableProxy<A>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  WitnessTable = swift_getWitnessTable(a4, a2, a3);
  *(a1 + 8) = v9;
  swift_getWitnessTable(a5, a2, WitnessTable);
  *(a1 + 16) = v10;
}

void Material.Layers.singletonSDFLayer.getter(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(*v1 + 16) == 1 && *(v2 + 64) == 2 && (*(v2 + 80) & 1) == 0 && !*(v2 + 72) && *(v2 + 68) == 1.0)
  {
    v4 = *(v2 + 32);
    v3 = *(v2 + 40);
    v5 = a1;

    a1 = v5;
  }

  else
  {
    v3 = 0;
    v4 = 0xF000000000000007;
  }

  *a1 = v4;
  a1[1] = v3;
}

double outlined consume of SDFStyle?(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

_DWORD *initializeWithCopy for TransitionHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 16))(v11, v12);
  *(*(v9 + 48) + v11) = *(*(v9 + 48) + v12);
  return a1;
}

uint64_t type metadata completion function for _SizedShape(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18D1855BC()
{

  return swift_deallocObject();
}

uint64_t closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = _ViewInputs.implicitRootBodyInputs.getter(v6);
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14MaterialEffectV4Fill33_E3B0FF576136F59061E5D7766373CC25LLV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v11[0] = v2;
    v11[1] = v8;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11[2] = v4;
    v11[3] = v3;
    v15 = 0;
    v11[4] = v5;
    outlined init with copy of AnimatableAttribute<MaterialEffect.Fill>(v11, v10, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill, &type metadata for MaterialEffect.Fill);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill, &type metadata for MaterialEffect.Fill);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<MaterialEffect.Fill> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill, &type metadata for MaterialEffect.Fill);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill, &type metadata for MaterialEffect.Fill);
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v11, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill, &type metadata for MaterialEffect.Fill);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t initializeWithCopy for MaterialEffect(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = a2[2];
  v6 = *(a2 + 24);

  outlined copy of Material.ID(v5, v6);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 28) = *(a2 + 7);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

double partial apply for specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, *(v2 + 32), *(v2 + 40), a2);
}

{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, *(v2 + 32), *(v2 + 40), _s7SwiftUI12ViewModifierPAAE16makeImplicitRoot8modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListK0VAA01_L0V_AA01_coN0VtctFZApR_ANtcfU_TA_0, _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA19GlassMaterialEffect33_62A32D59B8A902A88963544196023CF7LLV_Tt3B5, a2);
}

{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, *(v2 + 32), *(v2 + 40), closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:)partial apply, _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA021GlassEntryInteractionT033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt3B5, a2);
}

double specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v8;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v9 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v9;
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    *a5 = MEMORY[0x1E69E7CC0];
    *(a5 + 8) = 0;
    *(a5 + 12) = Attribute;
  }

  else
  {
    v12 = Attribute;
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;

    _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA14MaterialEffectV_Tt3B5(v12, v14, _s7SwiftUI12ViewModifierPAAE16makeImplicitRoot8modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListK0VAA01_L0V_AA01_coN0VtctFZApR_ANtcfU_TA_0, v13, a5);
  }

  return result;
}

uint64_t sub_18D185AC0()
{

  return swift_deallocObject();
}

uint64_t static MaterialEffect._makeView(modifier:inputs:body:)@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  *v84 = *(a2 + 32);
  *&v84[16] = v4;
  *&v84[32] = *(a2 + 64);
  v85 = *(a2 + 80);
  v5 = *(a2 + 16);
  v82 = *a2;
  v83 = v5;
  AGGraphCreateOffsetAttribute2();
  v6 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v45 = *(v6 + 64);

  v80[0] = v82;
  v80[1] = v83;
  v81 = *v84;
  v7 = v83;
  swift_beginAccess();
  v43 = HIDWORD(v83);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaterialEffectState and conformance MaterialEffectState();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v40 = *v84;
  v74 = *&v84[4];
  v75 = *&v84[20];
  v70 = *v84;
  v71 = *&v84[16];
  v72 = *&v84[32];
  v76 = v82;
  v47 = DWORD2(v83);
  v51 = *&v84[40];
  v52 = v85;
  v73 = v85;
  v68 = v82;
  v69 = v83;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v82, &v64);
  v10 = CachedEnvironment.animatedPosition(for:)(&v68);
  swift_endAccess();
  v36 = v9;
  *&v68 = __PAIR64__(*(v7 + 16), v9);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  v12 = MEMORY[0x1E69E7CC0];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 256;
  *(v14 + 88) = v13;
  v38 = v7;

  *&v68 = __PAIR64__(v43, v8);
  DWORD2(v68) = v45;
  BYTE12(v68) = 1;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaterialEffectTransaction and conformance MaterialEffectTransaction();
  v15 = Attribute.init<A>(body:value:flags:update:)();
  *&v65 = v14;
  *(&v65 + 1) = __PAIR64__(v15, v47);
  LODWORD(v66[0]) = v40 | 0x20;
  *(&v66[1] + 4) = v75;
  *(v66 + 4) = v74;
  DWORD1(v66[2]) = v10;
  *(&v66[2] + 1) = v51;
  v62[0] = v66[0];
  v62[1] = v66[1];
  v62[2] = v66[2];
  v64 = v76;
  v67 = v52;
  v63 = v52;
  v60 = v76;
  v61 = v65;
  v16 = outlined init with copy of _ViewInputs(&v64, &v68);
  a3(v50, v16, &v60);
  v70 = v62[0];
  v71 = v62[1];
  v72 = v62[2];
  v73 = v63;
  v68 = v60;
  v69 = v61;
  outlined destroy of _ViewInputs(&v68);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v84[16]) & 1) == 0)
  {
    v60 = v76;
    *(v62 + 4) = v74;
    *&v61 = v14;
    *(&v61 + 1) = __PAIR64__(v15, v47);
    LODWORD(v62[0]) = v40 | 0x20;
    *(&v62[1] + 4) = v75;
    DWORD1(v62[2]) = v10;
    *(&v62[2] + 1) = v51;
    v63 = v52;
    result = outlined destroy of _ViewInputs(&v60);
LABEL_7:
    *a4 = v50[0];
    a4[1] = v50[1];
    return result;
  }

  v34 = v15;
  v42 = v10;
  v17 = ++lastIdentity;
  v18 = MEMORY[0x1E698D3F8];
  if ((v84[5] & 1) == 0)
  {
LABEL_3:
    LODWORD(v60) = AGGraphCreateOffsetAttribute2();
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    v35 = v17;
    lazy protocol witness table accessor for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9_ShapeSetV7WrapperV_Tt1B5(&v49, v80);
    type metadata accessor for MaterialEffectBackdropObserver();
    v19 = swift_allocObject();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    swift_weakInit();

    *(v19 + 24) = 0;
    v33 = v19;
    *(v19 + 24) = AGCreateWeakAttribute();
    v59[0] = v80[0];
    *(v59 + 12) = *(v80 + 12);
    v48 = v81;
    *v77 = v8;
    *&v77[4] = v43;
    *&v77[8] = v45;
    v77[12] = 0;
    outlined init with copy of _GraphInputs(&v82, &v60);
    v46 = Attribute.init<A>(body:value:flags:update:)();
    *v77 = v80[0];
    *&v77[12] = *(v80 + 12);
    v78 = v46;
    v79 = v81;
    LODWORD(v60) = v36;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14MaterialEffectV4Fill33_E3B0FF576136F59061E5D7766373CC25LLV_Tt1B5(&v60, v77);
    v44 = v60;
    v62[0] = *v84;
    v62[1] = *&v84[16];
    v62[2] = *&v84[32];
    v63 = v85;
    v60 = v82;
    v61 = v83;
    swift_beginAccess();
    v20 = CachedEnvironment.animatedPosition(for:)(&v60);
    v62[0] = *v84;
    v62[1] = *&v84[16];
    v62[2] = *&v84[32];
    v63 = v85;
    v60 = v82;
    v61 = v83;
    v21 = CachedEnvironment.animatedCGSize(for:)(&v60);
    v37 = v49;
    v62[0] = *v84;
    v62[1] = *&v84[16];
    v62[2] = *&v84[32];
    v63 = v85;
    v60 = v82;
    v61 = v83;
    v22 = CachedEnvironment.animatedSize(for:)(&v60);
    swift_endAccess();
    v23 = *&v84[28];
    v24 = *(v38 + 16);
    v62[0] = *v84;
    v62[1] = *&v84[16];
    v62[2] = *&v84[32];
    LODWORD(v19) = *&v84[44];
    v63 = v85;
    v60 = v82;
    v61 = v83;
    _ViewInputs.materialSubstrate.getter(&v58);
    *v56 = v44;
    *&v56[4] = v37;
    *&v56[8] = v20;
    *&v56[12] = v21;
    *&v56[16] = v22;
    *&v56[20] = v23;
    *&v56[24] = v19;
    v57 = v24;
    DWORD1(v58) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MaterialEffectResolvedData.Data?, &unk_1F00A6040, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type MaterialEffectResolvedData and conformance MaterialEffectResolvedData();
    v25 = Attribute.init<A>(body:value:flags:update:)();
    v26 = *(v38 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v50[0]);
    v28 = *MEMORY[0x1E698D3F8];
    if ((v27 & 0x100000000) == 0)
    {
      v28 = v27;
    }

    *&v53 = __PAIR64__(v25, v35);
    *(&v53 + 1) = __PAIR64__(v21, v20);
    *&v54 = __PAIR64__(v26, *&v84[36]);
    DWORD2(v54) = v28;
    v55 = v33;
    v60 = v53;
    v61 = v54;
    v62[0] = v33;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList();

    v29 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of MaterialEffectDisplayList(&v53);
    LOBYTE(v60) = 0;
    PreferencesOutputs.subscript.setter(v29, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

    v60 = v76;
    *(v62 + 4) = v74;
    *&v61 = v14;
    *(&v61 + 1) = __PAIR64__(v34, v47);
    LODWORD(v62[0]) = v40 | 0x20;
    *(&v62[1] + 4) = v75;
    DWORD1(v62[2]) = v42;
    *(&v62[2] + 1) = v51;
    v63 = v52;
    outlined destroy of _ViewInputs(&v60);
    *v56 = v59[0];
    *&v56[12] = *(v59 + 12);
    v57 = v46;
    v58 = v48;
    result = outlined destroy of _GraphInputs(v56);
    goto LABEL_7;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v82, &v60);
  result = AGWeakAttributeGetAttribute();
  if (result != *v18)
  {
    *v77 = v17;
    v31 = Attribute<A>.subscript.modify(&v60, result);
    v32 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v77);
    (v31)(&v60, 0, v32);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill()
{
  if (!lazy protocol witness table cache variable for type MaterialEffect.Fill and conformance MaterialEffect.Fill)
  {
    swift_getWitnessTable(protocol conformance descriptor for MaterialEffect.Fill, &type metadata for MaterialEffect.Fill, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MaterialEffect.Fill and conformance MaterialEffect.Fill);
  }
}

void lazy protocol witness table accessor for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList()
{
  if (!lazy protocol witness table cache variable for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList)
  {
    swift_getWitnessTable(protocol conformance descriptor for MaterialEffectDisplayList, &unk_1F00A5F00, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList);
  }
}

uint64_t initializeWithCopy for MaterialEffectDisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t outlined destroy of MaterialEffectDisplayList(uint64_t a1)
{

  return a1;
}

uint64_t initializeWithCopy for MaterialEffectState.Value(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 6);

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for MaterialEffect.Fill(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t type metadata completion function for AnimatableValues(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[1] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 8;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

double OffsetPosition.value.getter(unint64_t a1, uint64_t a2)
{
  v2 = *AGGraphGetValue();
  if (*AGGraphGetValue())
  {
    v2 = -v2;
  }

  type metadata accessor for CGPoint(0);
  return v2 + *AGGraphGetValue();
}

uint64_t *AnyCoreInteractionHelper.init<A, B>(for:idType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  type metadata accessor for _CoreInteractionHelperBox(0, v11);
  v6 = swift_allocObject();
  return _CoreInteractionHelperBox.init()(v6, v7, v8, v9);
}

uint64_t type metadata completion function for _CoreInteractionHelperBox(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CoreInteractionRepresentableEffect(255, a1[15], a1[17], a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v7 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t *_CoreInteractionHelperBox.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 152);
  v7 = *(*v4 + 120);
  v8 = type metadata accessor for CoreInteractionRepresentableEffect(0, v7, *(*v4 + 136), a4);
  (*(*(v8 - 8) + 56))(v4 + v6, 1, 1, v8);
  *(v4 + *(*v4 + 160)) = 0;
  *(v4 + *(*v4 + 168)) = 0;
  *(v4 + *(*v4 + 176)) = 0;
  (*(*(v7 - 8) + 56))(v4 + *(*v4 + 184), 1, 1, v7);
  (*(*(*(v5 + 128) - 8) + 56))(v4 + *(*v4 + 192), 1, 1);
  v9 = v4 + *(*v4 + 200);
  *v9 = 0;
  *(v9 + 4) = 1;
  return v4;
}

uint64_t _CoreInteractionHelperBox.resetInteractions()()
{
  v1 = v0;
  v2 = *v0;
  if (*(v0 + *(*v0 + 168)))
  {
    v3 = *(v0 + *(*v0 + 160));
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v6 = *(AssociatedConformanceWitness + 64);
        swift_unknownObjectRetain();

        v7 = 32;
        do
        {
          v8 = *(v3 + v7);
          swift_unknownObjectRetain();
          v9 = swift_checkMetadataState();
          v6(v8, v9, AssociatedConformanceWitness);
          swift_unknownObjectRelease();
          v7 += 16;
          --v4;
        }

        while (v4);

        swift_unknownObjectRelease();
        v1 = v0;
        v2 = *v0;
      }
    }
  }

  *(v1 + *(v2 + 160)) = 0;
}

char *CoreInteractionRepresentableInteractionsProxy.append(interaction:tag:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_unknownObjectRetain();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = a1;
  *(v9 + 5) = a2;
  *v2 = v5;
  return result;
}

double destroy for GlassContainer.Entry.GroupID(uint64_t a1)
{
  outlined consume of _Glass.Variant.ID(*a1, *(a1 + 8));

  return result;
}

uint64_t getEnumTagSinglePayload for _ColorMonochromeEffect._Resolved(uint64_t a1, int a2)
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

uint64_t initializeWithCopy for _Glass.ID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, unint64_t a4, char a5, char *a6)
{
  v7 = v6;
  v63 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v14 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    v16 = 0;
    goto LABEL_43;
  }

  v52 = v14;
  v15 = (a5 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v7 + 168) &= a6 & 1;
  v17 = swift_beginAccess();
  v18 = *(v7 + 144);
  v19 = *(v18 + 16);
  v51 = a2;
  if (v19)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v7 + 144) = v18;
    }

    if (v19 > *(v18 + 16))
    {
      __break(1u);
LABEL_55:
      swift_once();
LABEL_17:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v56[0]) = v19;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v18;
        swift_endAccess();
        if (v15)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v18 + 16))
        {
          specialized Array._customRemoveLast()(&v58);
          LODWORD(a3) = v59;
          v15 = v60;
          a1 = v58;
          if (v60)
          {
            v18 = HIDWORD(v59);
          }

          else
          {
            outlined consume of AsyncTransaction?(v58, v59, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v58);
            a1 = v58;
            LODWORD(a3) = v59;
            LODWORD(v18) = HIDWORD(v59);
            v15 = v60;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a6 = *(v7 + 144);

          v43 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = a6;
          if (v43)
          {
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_58:
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
      *(v7 + 144) = a6;
LABEL_46:
      v45 = *(a6 + 2);
      v44 = *(a6 + 3);
      if (v45 >= v44 >> 1)
      {
        a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, a6);
      }

      *(a6 + 2) = v45 + 1;
      v46 = &a6[24 * v45];
      *(v46 + 4) = a1;
      *(v46 + 10) = a3;
      *(v46 + 11) = v18;
      *(v46 + 6) = v15;
      *(v7 + 144) = a6;
      swift_endAccess();

LABEL_49:
      v47 = *(v7 + 144);
      v48 = *(v47 + 16);
      if (v48)
      {
        v16 = *(v47 + 24 * v48 + 20);
      }

      else
      {
        v16 = 0;
      }

      v14 = v52;
      goto LABEL_43;
    }

    v19 = v18 + 24 * v19;
    if (*(v19 + 16) == a2)
    {
      v21 = *(v19 + 8);
      if (v21)
      {
        if (a1)
        {
          v56[0] = MEMORY[0x1E69E7CC0];

          v22 = compareLists(_:_:ignoredTypes:)(v21, a1, v56);

          if (v22)
          {
LABEL_16:
            a6 = (v19 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3, a4 | ((HIDWORD(a4) & 1) << 32));
            LODWORD(v19) = *(v19 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_17;
            }

            goto LABEL_55;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_16;
      }
    }

    *(v7 + 144) = v18;
    swift_endAccess();
    if (!v15)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v7 + 192))(v17))
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    (*(v24 + 32))(ObjectType, v24);
    swift_unknownObjectRelease();
  }

  v14 = &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation;
  v61 = &type metadata for MaterialEffectBackdropObserver.LuminanceMutation;
  v62 = &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation;
  v58 = a3;
  LODWORD(v59) = a4;
  BYTE4(v59) = BYTE4(a4) & 1;
  swift_beginAccess();
  v50 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v58, v56);
  v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v28 = v26[2];
  v27 = v26[3];
  v16 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
  }

  __swift_destroy_boxed_opaque_existential_1(&v58);
  v29 = v57;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  v35 = *(v33 + 2);
  v36 = v33[12];
  v54 = &type metadata for MaterialEffectBackdropObserver.LuminanceMutation;
  v55 = &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation;
  *&v53 = *v33;
  DWORD2(v53) = v35;
  BYTE12(v53) = v36;
  v26[2] = v16;
  outlined init with take of AnyTrackedValue(&v53, &v26[5 * v28 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v56);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v37 = v51;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v16 = (v50 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v58) = v16;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v29 = *(v7 + 144);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v29;
    v14 = v52;
    if (v38)
    {
      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
  *(v7 + 144) = v29;
LABEL_40:
  v40 = *(v29 + 2);
  v39 = *(v29 + 3);
  if (v40 >= v39 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v29);
  }

  *(v29 + 2) = v40 + 1;
  v41 = &v29[24 * v40];
  *(v41 + 4) = a1;
  *(v41 + 10) = v37;
  *(v41 + 11) = v16;
  *(v41 + 6) = v26;
  *(v7 + 144) = v29;
  swift_endAccess();

LABEL_43:
  _MovableLockUnlock(v14);
  return v16;
}

uint64_t storeEnumTagSinglePayload for _ColorMonochromeEffect._Resolved(uint64_t result, int a2, int a3)
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

uint64_t *sub_18D187A8C(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t type metadata completion function for CoreInteractionRepresentableEffect(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id SDFLayer.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver] = 0;
  v2 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfStyle;
  v3 = swift_allocObject();
  *(v3 + 32) = 0x80;
  v4 = MEMORY[0x1E69E7CC0];
  *&v0[v2] = v3 | 0x8000000000000000;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects] = v4;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets] = v4;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements] = v4;
  v5 = &v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_renderer] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization] = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 40) = v4;
  *(v3 + 48) = v4;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance] = 2143289344;
  v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup] = 0;
  v6 = &v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds];
  *v6 = 0u;
  v6[1] = 0u;
  v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_needsUpdate] = 1;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setAllowsGroupOpacity_];
  [v7 setAllowsGroupBlending_];

  return v7;
}

uint64_t sub_18D187CF0()
{

  return swift_deallocObject();
}

double SDFLayer.resetSDFEffects()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = 32;
    do
    {
      [*(v3 + v5) removeFromSuperlayer];
      v5 += 32;
      --v4;
    }

    while (v4);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v2);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v7 + 16));
  }

  else
  {
    *(v1 + v2) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI8SDFLayerC9SDFEffect33_05C1F5BE6EE7940FED05100EA822F7B3LLV_Tt1g5(0, *(v7 + 24) >> 1);
  }

  swift_endAccess();
  v8 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets;
  swift_beginAccess();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if (v9)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v10 + 16));
  }

  else
  {
    *(v1 + v8) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI8SDFLayerC9SDFSubset33_05C1F5BE6EE7940FED05100EA822F7B3LLV_Tt1g5(0, *(v10 + 24) >> 1);
  }

  swift_endAccess();
  v11 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements;
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v1 + v11);
  if (v12)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v13 + 16));
  }

  else
  {
    *(v1 + v11) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI8SDFLayerC10SDFElement33_05C1F5BE6EE7940FED05100EA822F7B3LLV_Tt1g5(0, *(v13 + 24) >> 1);
  }

  swift_endAccess();
  v14 = v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = (v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds);
  result = 0.0;
  *v15 = 0u;
  v15[1] = 0u;
  *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup) = 0;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutVAFE11DecorationsV8FragmentV_Tt1gq5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16ResolvedGradientV4StopV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 3) + (v9 >> 63));
  return result;
}

void SDFLayer.makeSDFEffects(for:shapeFilter:)(unint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1 >> 60;
  if ((a1 >> 60) > 4)
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
        [v8 setAnchorPoint_];
        [v8 setNoAnimationDelegate];
        v9 = MEMORY[0x1E6979458];
      }

      else if (v7 == 6)
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
        [v8 setAnchorPoint_];
        [v8 setNoAnimationDelegate];
        v9 = MEMORY[0x1E6979460];
      }

      else
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
        [v8 setAnchorPoint_];
        [v8 setNoAnimationDelegate];
        v9 = MEMORY[0x1E6979470];
      }

      goto LABEL_32;
    }

    if (v7 != 8)
    {
      if (v7 == 9)
      {
        v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

        SDFLayer.makeSDFEffects(for:shapeFilter:)(v10, a2, a3);
        v13 = v12;
        if (v12)
        {
          SDFLayer.makeSDFEffects(for:shapeFilter:)(v11, a2, a3);
          if (v14)
          {
            v15 = v14;
            [v13 setMask_];
          }
        }

        return;
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
      [v8 setAnchorPoint_];
      [v8 setNoAnimationDelegate];
      v9 = MEMORY[0x1E6979480];
LABEL_32:
      v18 = [objc_allocWithZone(v9) init];
      [v8 setEffect_];
      addEffect #1 (_:layer:for:) in SDFLayer.makeSDFEffects(for:shapeFilter:)(v18, v8, a2, a3, v4);

      goto LABEL_33;
    }

    v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v80 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v21 = v20 >> 6;
    if (v20 >> 6 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_51;
      }

      v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (v20 == 128 && v19 == 2 && !v37)
      {
        if (v3[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer] != 1)
        {
          return;
        }

        v38 = type metadata accessor for SDFPortalLayer();
        v39 = objc_allocWithZone(v38);

        v40 = [v39 init];
        v41 = [v4 sublayers];
        if (v41)
        {
          v42 = v4;
          type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer, 0x1E6979398);
          v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v43 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x193AC03C0](0, v43);
          }

          else
          {
            if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v44 = *(v43 + 32);
          }

          v41 = v44;

          v4 = v42;
        }

        v81.receiver = v40;
        v81.super_class = v38;
        v45 = v40;
        objc_msgSendSuper2(&v81, sel_setSourceLayer_, v41);

        [v45 setHidesSourceLayer_];
        v4[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup] = 1;
        v25 = v45;
        goto LABEL_53;
      }

      if (v20 == 128 && v19 == 3 && !v37)
      {
        v49 = objc_allocWithZone(MEMORY[0x1E6979310]);

        v50 = [v49 init];
      }

      else
      {
LABEL_51:
        v51 = objc_allocWithZone(MEMORY[0x1E6979398]);

        v50 = [v51 init];
      }

      v25 = v50;
    }

    else
    {
      LODWORD(v22) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (v21)
      {
        v46 = (v19 >> 40) & 1;
        v47 = objc_allocWithZone(MEMORY[0x1E6979310]);

        v48 = [v47 init];
        [v48 setScale_];
        [v48 setDelegate_];
        [v48 setCaptureOnly_];
        [v48 setAllowsFilteredLuma_];
        v25 = v48;
      }

      else
      {
        v23 = objc_allocWithZone(MEMORY[0x1E6979310]);

        v24 = [v23 init];
        [v24 setScale_];
        v25 = v24;
      }
    }

LABEL_53:
    v52 = v25;
    [v25 setAnchorPoint_];
    v53 = [v52 delegate];

    if (v53)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      [v52 setNoAnimationDelegate];
    }

    v54 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
    swift_beginAccess();
    v55 = *&v4[v54];
    v56 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v54] = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v59 = *(v55 + 2);
      v58 = *(v55 + 3);
      if (v59 >= v58 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v55);
      }

      *(v55 + 2) = v59 + 1;
      v60 = &v55[32 * v59];
      *(v60 + 4) = v56;
      *(v60 + 5) = 0;
      v61 = v56;
      v56 = a2;
      *(v60 + 6) = a2;
      *(v60 + 7) = a3;
      *&v4[v54] = v55;
      swift_endAccess();
      v79 = v61;

      v62 = *(v80 + 16);
      if (!v62)
      {
        break;
      }

      a2 = 0;
      v54 = v80 + 32;
      while (a2 < *(v80 + 16))
      {
        v63 = *v54;
        v64 = *(v54 + 16);
        v65 = *(v54 + 32);
        v86 = *(v54 + 48);
        v85[1] = v64;
        v85[2] = v65;
        v85[0] = v63;
        v66 = *v54;
        v67 = *(v54 + 16);
        v68 = *(v54 + 32);
        v88 = *(v54 + 48);
        v87[1] = v67;
        v87[2] = v68;
        v87[0] = v66;
        v69 = v66;
        v70 = *(&v67 + 1);
        v55 = a3;
        v71 = a3 & ~*(&v67 + 1);
        v72 = v4;
        v73 = v68 & *(&v67 + 1);
        outlined init with copy of Material.Layer.SDFLayer.GroupLayer(v85, &v83);
        v74 = v73 | v71;
        v4 = v72;
        SDFLayer.makeSDFEffects(for:shapeFilter:)(v69, (v70 | v56), v74);
        if (v75)
        {
          v76 = v75;
          v82 = a2;
          v83 = 64;
          v84 = 0xE100000000000000;
          v77 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v77);

          v78 = MEMORY[0x193ABEC20](v83, v84);

          [v76 setName_];

          [v79 addSublayer_];
          outlined destroy of Material.Layer.SDFLayer.GroupLayer(v87);
        }

        else
        {
          outlined destroy of Material.Layer.SDFLayer.GroupLayer(v87);
        }

        ++a2;
        v54 += 56;
        a3 = v55;
        if (v62 == a2)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_69:
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
      *&v4[v54] = v55;
    }

LABEL_66:

    return;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
      [v8 setAnchorPoint_];
      [v8 setNoAnimationDelegate];
      v9 = MEMORY[0x1E6979468];
    }

    else
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
      [v8 setAnchorPoint_];
      [v8 setNoAnimationDelegate];
      v9 = MEMORY[0x1E6979440];
    }

    goto LABEL_32;
  }

  if (v7 == 2)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
    [v16 setAnchorPoint_];
    [v16 setNoAnimationDelegate];
    v17 = [objc_allocWithZone(MEMORY[0x1E6979468]) init];
    [v17 setPremultiplied_];
    v18 = v17;
    [v16 setEffect_];
    addEffect #1 (_:layer:for:) in SDFLayer.makeSDFEffects(for:shapeFilter:)(v18, v16, a2, a3, v4);

LABEL_33:
    return;
  }

  if (v7 == 3)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
    [v8 setAnchorPoint_];
    [v8 setNoAnimationDelegate];
    v9 = MEMORY[0x1E6979488];
    goto LABEL_32;
  }

  v26 = *(**((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 88);

  v28 = v26(v27);
  v29 = v28;
  if (v28)
  {
    [v28 setAnchorPoint_];
    [v29 setNoAnimationDelegate];
    v30 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
    swift_beginAccess();
    v31 = *&v3[v30];
    v32 = v29;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *&v3[v30] = v31;
    if ((v33 & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      *&v3[v30] = v31;
    }

    v35 = *(v31 + 2);
    v34 = *(v31 + 3);
    if (v35 >= v34 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v31);
    }

    *(v31 + 2) = v35 + 1;
    v36 = &v31[32 * v35];
    *(v36 + 4) = v32;
    *(v36 + 5) = 0;
    *(v36 + 6) = 0;
    *(v36 + 7) = 0;
    *&v3[v30] = v31;
    swift_endAccess();
  }

  else
  {
  }
}

double SDFStyle.Group.margin.getter()
{
  LODWORD(v1) = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  LODWORD(v4) = v1 >> 6;
  v5 = 0.0;
  if (v1 >> 6 >= 2)
  {
LABEL_38:
    if (v4 == 3)
    {
      return v5;
    }

    v33 = v1 == 128 && *(v0 + 8) == 0;
    if (!v33 || *v0 != 3)
    {
      return v5;
    }
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v2 + 32;
    while (1)
    {
      v9 = (v3 + 32 + (v7 << 7));
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v40 = v9[2];
      v41 = v12;
      v38 = v10;
      v39 = v11;
      v13 = v9[4];
      v14 = v9[5];
      v15 = v9[6];
      *(v44 + 12) = *(v9 + 108);
      v43 = v14;
      v44[0] = v15;
      v42 = v13;
      memmove(__dst, v9, 0x7CuLL);
      v16 = _s7SwiftUI14GraphicsFilterOWOg(__dst);
      if (v16 > 20)
      {
        if (v16 == 22)
        {
          v30 = _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
          v0 = *v30;
          v31 = *(**v30 + 112);
          v36[4] = v42;
          v36[5] = v43;
          v37[0] = v44[0];
          *(v37 + 12) = *(v44 + 12);
          v36[0] = v38;
          v36[1] = v39;
          v36[2] = v40;
          v36[3] = v41;
          _s7SwiftUI14GraphicsFilterOWOj6_(v36);

          v5 = v31(v32);
          outlined destroy of GraphicsFilter(&v38);
        }

        else if (v16 == 21)
        {
          v5 = *_s7SwiftUI14GraphicsFilterOWOj6_(__dst);
        }
      }

      else if ((v16 - 2) >= 2)
      {
        if (v16 == 1)
        {
          v22 = _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
          v23 = 0.0;
          if (*(v22 + 120) >> 30 == 1)
          {
            v24 = *(v22 + 16);
            if ((v24 & 0x8000000000000000) == 0)
            {
              v4 = *(v2 + 16);
              if (v24 < v4)
              {
                v25 = *(v8 + 56 * v24);
                v4 = v25 >> 60;
                if (v25 >> 60 == 2)
                {
                  v4 = *((v25 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v26 = *(v4 + 16);
                  if (v26)
                  {
                    v23 = *(v4 + 32);
                    v27 = v26 - 1;
                    if (v27)
                    {
                      v4 += 40;
                      do
                      {
                        v28 = *v4;
                        v4 += 8;
                        v29 = v28;
                        if (v23 < v28)
                        {
                          v23 = v29;
                        }

                        --v27;
                      }

                      while (v27);
                    }
                  }
                }
              }
            }
          }

          if (v5 <= v23)
          {
            v5 = v23;
          }
        }
      }

      else
      {
        v17 = _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
        v18 = fabs(*v17);
        if (*(v17 + 112) >> 30 == 1)
        {
          v19 = *(v17 + 8);
          if ((v19 & 0x8000000000000000) == 0 && v19 < *(v2 + 16))
          {
            v20 = *(v8 + 56 * v19);
            if (v20 >> 60 == 5)
            {
              v21 = -*((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x30) - *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              if (v21 <= 0.0)
              {
                v21 = 0.0;
              }

              v18 = v18 + v21;
            }
          }

          outlined init with copy of GraphicsFilter(&v38, v36);
        }

        if (v5 <= v18)
        {
          v5 = v18;
        }
      }

      if (++v7 == v6)
      {
        break;
      }

      v1 = *(v3 + 16);
      if (v7 >= v1)
      {
        __break(1u);
        goto LABEL_38;
      }
    }
  }

  return v5;
}

uint64_t _AnyCAFilterProvider.resolve<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*v3 + 144) + 16))(a1, a2, a3, *(*v3 + 136));
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t protocol witness for CAFilterContext.sdfSublayerName(at:) in conformance _CAFilterContext()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  return 64;
}

uint64_t protocol witness for PlatformGroupFactory.makePlatformGroup() in conformance CoreInteractionRepresentableEffect<A>(uint64_t a1)
{
  specialized CoreInteractionRepresentableEffect.makePlatformGroup()(a1);

  return swift_unknownObjectRetain();
}

uint64_t specialized CoreInteractionRepresentableEffect.makePlatformGroup()(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 36));
  v4 = *(v3 + 16);
  if (v4)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 56);
    v7 = (v3 + 32);
    do
    {
      v8 = *v7;
      v7 += 2;
      swift_unknownObjectRetain();
      v9 = swift_checkMetadataState();
      v6(v8, v9, AssociatedConformanceWitness);
      swift_unknownObjectRelease();
      --v4;
    }

    while (v4);
  }

  return *(v1 + *(a1 + 40));
}

uint64_t static AnimatableValues.== infix(_:_:)(uint64_t TupleTypeMetadata, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v58 = a5;
  v6 = a3;
  if (a3 == 1)
  {
    v8 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v11 = 0;
      v12 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v6)
      {
LABEL_9:
        v17 = v6 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = *(v22 + 16);
  v53 = v50 - v28;
  v27(v26);
  v54 = v24;
  v29 = (v27)(v24, a2, v8);
  if (v6)
  {
    v50[1] = v50;
    v51 = v22;
    v30 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v58 & 0xFFFFFFFFFFFFFFFELL);
    v52 = v8;
    v32 = (v8 + 32);
    v33 = v6;
    v58 = v6;
    while (1)
    {
      v56 = v50;
      v34 = *v30;
      v57 = *v31;
      v35 = *(v34 - 8);
      MEMORY[0x1EEE9AC00](v29);
      v37 = v50 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = v50;
      v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
      v41 = v50 - v40;
      v42 = v6 == 1 ? 0 : *v32;
      v43 = *(v35 + 16);
      v43(v37, &v53[v42], v34, v39);
      v44 = v58 == 1 ? 0 : *v32;
      (v43)(v41, &v54[v44], v34);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v35 + 8);
      v46(v41, v34);
      v29 = (v46)(v37, v34);
      if ((v45 & 1) == 0)
      {
        break;
      }

      v32 += 4;
      ++v31;
      ++v30;
      --v33;
      v6 = v58;
      if (!v33)
      {
        v47 = 1;
        goto LABEL_25;
      }
    }

    v47 = 0;
LABEL_25:
    v22 = v51;
    v8 = v52;
  }

  else
  {
    v47 = 1;
  }

  v48 = *(v22 + 8);
  v48(v54, v8);
  v48(v53, v8);
  return v47;
}

Swift::Void __swiftcall SDFLayer.layoutSublayers()()
{
  v1 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds);

    v5 = (v2 + 40);
    do
    {
      v6 = *v5;
      v7 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      v10 = v4[3];
      v11 = *(v5 - 1);
      v12 = v6;
      [v11 setBounds_];
      [v11 setPosition_];

      v5 += 4;
      --v3;
    }

    while (v3);
  }
}

uint64_t assignWithCopy for MaterialEffect.Fill(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of Material.ID(v6, v7);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t specialized static SDFStyle.GlassHighlight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 12) == *(a2 + 12) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 ? (v3 = *(a1 + 20) == *(a2 + 20)) : (v3 = 0), v3 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64)))
  {
    return (*(a1 + 72) ^ *(a2 + 72) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for GraphMutation.apply() in conformance MaterialEffectBackdropObserver.LuminanceMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v1);
    return AGGraphMutateAttribute();
  }

  return result;
}

uint64_t partial apply for closure #1 in MaterialEffectBackdropObserver.LuminanceMutation.apply()(uint64_t result)
{
  v2 = *(v1 + 24);
  if (*(v1 + 28))
  {
    v2 = NAN;
  }

  *(result + 24) = v2;
  return result;
}

uint64_t MaterialEffectBackdropObserver.LuminanceMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = v10;
  v7 = v11;
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  *(v2 + 8) = v6;
  *(v2 + 12) = v7;
  return 1;
}

uint64_t getEnumTag for _GlassEffectTransition.Kind(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for _GlassEffectTransition.Kind(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

BOOL specialized static _Glass.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v19 = *a1;
  v20 = v2;
  v17 = v7;
  v18 = v8;
  outlined copy of _Glass.Variant.Role(v19, v2);
  outlined copy of _Glass.Variant.Role(v7, v8);
  LOBYTE(v7) = specialized static _Glass.Variant.== infix(_:_:)(&v19, &v17);
  outlined consume of _Glass.Variant.Role(v17, v18);
  outlined consume of _Glass.Variant.Role(v19, v20);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  if (v3 == 5)
  {
    if (v9 != 5)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 5 || v3 != v9)
    {
      return result;
    }
  }

  if (!v4)
  {
    result = 0;
    if (v10)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v10)
  {
    return 0;
  }

  if (v4 == v10)
  {
    if (v5 != v11)
    {
      return 0;
    }

    return v6 == v12;
  }

  v14 = *(*v4 + 88);

  v16 = v14(v15);

  result = 0;
  if (v16)
  {
LABEL_16:
    if (v5 == v11)
    {
      return v6 == v12;
    }
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.ItemData(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = v3;
  return a1;
}

uint64_t AnchorValueBox.isEqual(to:)(uint64_t a1)
{
  v2 = *v1;
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = v2[19];
    v5 = *(*result + 152);
    v7 = v2[17];
    v6 = v2[18];
    v8 = *(v6 + 56);
    v9 = result;

    v10 = v8(&v1[v4], v9 + v5, v7, v6);

    return v10 & 1;
  }

  return result;
}

int8x16_t Rectangle.path(in:)@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>, uint64_t a3@<D1>, double a4@<D2>, uint64_t a5@<D3>)
{
  IsNull = CGRectIsNull(*&a2);
  *v7.i64 = a2;
  v7.i64[1] = a3;
  *v8.i64 = a4;
  v8.i64[1] = a5;
  if (IsNull)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  if (IsNull)
  {
    v11 = 6;
  }

  else
  {
    v11 = 0;
  }

  v12 = vbicq_s8(v7, v10);
  result = vbicq_s8(v8, v10);
  *a1 = v12;
  a1[1] = result;
  a1[2].i8[0] = v11;
  return result;
}

uint64_t LazyState.projectedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v14 = LazyState.getValue(forReading:)(0, a1, v12, v13, &v22 - v10);
  v15 = *(v2 + *(a1 + 28));
  if (v15)
  {
    (*(v6 + 16))(v8, v11, v5, v14);
    Binding.init(value:location:)(v8, v15, v16, v17, a2);
    v18 = *(v6 + 8);

    return v18(v11, v5);
  }

  else
  {
    v20 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      v21 = v20;
      swift_once();
      v20 = v21;
    }

    os_log(_:dso:log:_:_:)(v20, &dword_18D018000, static Log.runtimeIssuesLog, "Accessing State's value outside of being installed on a View. This will result in a constant Binding of the initial value and will not update.", 142, 2, MEMORY[0x1E69E7CC0]);
    static Binding.constant(_:)(v11, v5, a2);
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t closure #1 in static ToggleState.stateFor<A, B>(item:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding(0, v9, v9, v10);
  Binding.wrappedValue.getter();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v6 + 8))(v8, a3);
  return v11 & 1;
}

uint64_t static ToggleState.stateFor<A, B>(item:in:)@<X0>(char *a6@<X8>)
{
  result = Sequence.allSatisfy(_:)();
  if (result)
  {
    v8 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    result = Sequence.allSatisfy(_:)();
    if (result)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a6 = v8;
  return result;
}

BOOL closure #2 in static ToggleState.stateFor<A, B>(item:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding(0, v9, v9, v10);
  Binding.wrappedValue.getter();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v6 + 8))(v8, a3);
  return (v11 & 1) == 0;
}

double static AnyTransition.opacity.getter()
{
  if (one-time initialization token for opacity != -1)
  {
    swift_once();
  }

  return result;
}

BOOL static EdgeInsets.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t destroy for ScaledMetric(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<ButtonSizing>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  v4.n128_f64[0] = outlined consume of Environment<ButtonSizing>.Content(*(v3 + 16), *(v3 + 24));
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (v3 + *(v5 + 80) + 25) & ~*(v5 + 80);

  return v6(v7, v4);
}

double outlined consume of Environment<ButtonSizing>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t View.background<A>(_:ignoresSafeAreaEdges:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _BackgroundStyleModifier(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(v8 + 16))(v10, a1, a4, v15);
  (*(v8 + 32))(v17, v10, a4);
  v17[*(v13 + 36)] = a2;
  View.modifier<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t initializeWithCopy for ScaledMetric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = a1 & 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v6) = *(v9 + 24);
  v11 = outlined copy of Environment<ButtonSizing>.Content(v10, v6);
  *(v8 + 16) = v10;
  *(v8 + 24) = v6;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 16;
  v14 = *(v12 + 80);
  v15 = (v14 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v14;
  v16 = (v14 + 25 + v9) & ~v14;
  (*(v12 + 16))(v15, v16, v11);
  *(*(v13 + 48) + v15) = *(*(v13 + 48) + v16);
  return a1;
}

double outlined copy of Environment<ButtonSizing>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance ImageRendererHostViewGraph(uint64_t *a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA21UsingGraphicsRendererV_Tt2g5(a1, 1);

  *(a1 + 9) |= 1u;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA21UsingGraphicsRendererV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for UsingGraphicsRenderer);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<UsingGraphicsRenderer>, &type metadata for UsingGraphicsRenderer, &protocol witness table for UsingGraphicsRenderer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for UsingGraphicsRenderer, 0, v6);
  }
}

uint64_t (*protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ImageRendererHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ImageRendererHost.valuesNeedingUpdate.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

void ImageRendererHost.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 58) = v2;
}

void @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:)(uint64_t *a1)
{
  v1 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();

  AGGraphWithUpdate();

  AGSubgraphSetCurrent();
}

Swift::Void __swiftcall ImageRendererHost.updateEnvironment()()
{
  swift_beginAccess();
  swift_beginAccess();

  AGGraphSetValue();
}

void closure #1 in ImageRendererHost.updateSizeThatFitsObserver()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v12 = *&a4;
    v13 = NAN;
    if (a5)
    {
      v12 = NAN;
    }

    v14 = a6;
    if ((a7 & 1) == 0)
    {
      v13 = *&a6;
    }

    ViewGraph.setSize(_:)(*&v12);
  }
}

uint64_t GraphicsContext.draw(_:in:style:shading:)(__int128 *a1, __int16 a2, __int128 *a3, uint64_t a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v13 = a1[5];
  *v76 = a1[4];
  *&v76[16] = v13;
  *&v76[28] = *(a1 + 92);
  v14 = a1[1];
  v74 = *a1;
  *v75 = v14;
  v15 = a1[3];
  *&v75[16] = a1[2];
  *&v75[32] = v15;
  v16 = *a3;
  v17 = a3[1];
  *&v80[9] = *(a3 + 57);
  v18 = a3[3];
  v79 = a3[2];
  *v80 = v18;
  v77 = v16;
  v78 = v17;
  if ((BYTE8(v74) & 0xFE) != 2)
  {
    goto LABEL_8;
  }

  if (v76[40] != 2)
  {
    v19 = *&v76[24];
    v20 = *&v76[8];
    if (one-time initialization token for resizable != -1)
    {
      v49 = a1;
      v50 = a3;
      swift_once();
      v19 = *&v76[24];
      v20 = *&v76[8];
      a1 = v49;
      a3 = v50;
    }

    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v20, static Image.ResizingInfo.resizable), vceqq_f64(v19, unk_1EAB12458))))) & 1) != 0 || ((byte_1EAB12468 ^ v76[40]))
    {
      goto LABEL_8;
    }
  }

  v21 = a1[5];
  v65 = a1[4];
  v66[0] = v21;
  *(v66 + 12) = *(a1 + 92);
  v22 = a1[1];
  v61 = *a1;
  v62 = v22;
  v23 = a1[3];
  v63 = a1[2];
  v64 = v23;
  v24 = a3[3];
  *&v60[16] = a3[2];
  *&v60[32] = v24;
  *&v60[41] = *(a3 + 57);
  v25 = a3[1];
  v59 = *a3;
  *v60 = v25;
  result = specialized GraphicsContext.drawAsVector(image:rect:style:shading:)(&v61, &v59, a4, a5, a6, a7, a8);
  if ((result & 1) == 0)
  {
LABEL_8:
    v70 = v74;
    v71[0] = *v75;
    *(v71 + 12) = *&v75[12];
    v27 = *&v75[28];
    v28 = *&v75[36];
    v29 = *&v75[44];
    v69 = v76[0];
    v67 = *&v76[1];
    v68[0] = *&v76[17];
    *(v68 + 11) = *&v76[28];
    v30 = *(a4 + 24);
    if (v80[24] == 1)
    {
      v32 = v77;
      v34 = *(a4 + 32);
      v33 = *(a4 + 40);
      if (v34 == 1)
      {
        v35 = *(a4 + 16);
        v36 = *(v35 + 48);
        v37 = *(v35 + 56);
      }

      else
      {
        v37 = *(a4 + 40);
        v36 = *(a4 + 32);
      }

      *&v59 = v36;
      *(&v59 + 1) = v37;
      v38 = *(*v32 + 120);
      outlined init with copy of GraphicsContext.Shading?(&v77, &v61);
      outlined init with copy of GraphicsImage(&v74, &v61);
      outlined init with copy of GraphicsContext.Shading?(&v77, &v61);
      v39 = outlined copy of EnvironmentValues?(v34, v33);
      v38(v72, &v59, v39);
      v27 = v72[0];
      v28 = v72[1];
      v29 = v73;
      outlined destroy of GraphicsContext.Shading?(&v77, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
      outlined destroy of GraphicsContext.Shading?(&v77, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);

      v69 = 0;
      v31 = v30;
    }

    else if (v80[24] == 255)
    {
      outlined init with copy of GraphicsImage(&v74, &v61);
      v31 = v30;
    }

    else
    {
      v69 = 1;
      outlined init with copy of GraphicsImage(&v74, &v61);
      outlined init with copy of GraphicsContext.Shading?(&v77, &v61);
      v30 = RBDrawingStateInit();
      v31 = RBDrawingStateBeginLayer();
      outlined destroy of GraphicsContext.Shading?(&v77, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
      v27 = 0;
      v28 = 0;
      v29 = 0;
    }

    v40 = *(a4 + 16);
    v41 = *(a4 + 56);
    v42 = *(v40 + 32);
    [v42 setRect_];
    RBShape.setRenderingMode(style:shapeDistance:)(v41);

    v43 = *(v40 + 40);
    *&v60[12] = *(v71 + 12);
    v59 = v70;
    *v60 = v71[0];
    *&v60[28] = v27;
    *&v60[36] = v28;
    *&v60[44] = v29;
    v44 = v69;
    v60[48] = v69;
    *&v60[49] = v67;
    *&v60[65] = v68[0];
    *&v60[76] = *(v68 + 11);
    *&v58[48] = *&v60[48];
    *&v58[64] = *&v60[64];
    *&v58[76] = *(v68 + 11);
    v57 = v70;
    *v58 = v71[0];
    *&v58[16] = *&v60[16];
    *&v58[32] = *&v60[32];
    v45 = *(v40 + 64);
    v46 = v43;
    outlined init with copy of GraphicsImage(&v59, &v61);
    RBFill.setImage(_:destRect:in:)(&v57, v45, a5, a6, a7, a8);

    v65 = *&v58[48];
    v66[0] = *&v58[64];
    *(v66 + 12) = *&v58[76];
    v61 = v57;
    v62 = *v58;
    v63 = *&v58[16];
    v64 = *&v58[32];
    outlined destroy of GraphicsImage(&v61);
    *(v40 + 272) = 0;

    RBDrawingStateDrawShape();
    if (v31 != v30)
    {
      result = RBDrawingStateClipLayer();
      if (v80[24] == 255)
      {
        __break(1u);
        return result;
      }

      v53 = v79;
      *v54 = *v80;
      *&v54[16] = *&v80[16];
      v51 = v77;
      v52 = v78;
      v54[24] = v80[24];
      v47 = *(a4 + 48);
      v48 = *(a4 + 52);
      *(v56 + 9) = *&v80[9];
      v55[2] = v79;
      v56[0] = *v80;
      v55[0] = v77;
      v55[1] = v78;
      outlined init with copy of GraphicsContext.Shading(v55, &v57);
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v51, v30, v48, a4, a5, a6, a7, a8, v47);
      *&v58[16] = v53;
      *&v58[32] = *v54;
      *&v58[41] = *&v54[9];
      v57 = v51;
      *v58 = v52;
      outlined destroy of GraphicsContext.Shading(&v57);
      RBDrawingStateDestroy();
    }

    v57 = v70;
    *v58 = v71[0];
    *&v58[12] = *(v71 + 12);
    *&v58[49] = v67;
    *&v58[28] = v27;
    *&v58[36] = v28;
    *&v58[44] = v29;
    v58[48] = v44;
    *&v58[65] = v68[0];
    *&v58[76] = *(v68 + 11);
    return outlined destroy of GraphicsImage(&v57);
  }

  return result;
}

uint64_t ImageRenderer.deinit()
{

  v1 = direct field offset for ImageRenderer.observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

double closure #1 in closure #1 in ImageRenderer.initializeRenderer()(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    type metadata accessor for PassthroughSubject<(), Never>();
    lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<(), Never>, MEMORY[0x1E695BF80]);
    Subject<>.send()();
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ForegroundEnvironment<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ForegroundEnvironment<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t static _ValueTransactionModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v42 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v11 = type metadata accessor for ValueTransactionSeed(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = *a1;
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static _ValueTransactionModifier._makeInputs(modifier:inputs:)(1, a3, a4, type metadata accessor for _ValueTransactionModifier, closure #1 in static PointerOffset.of(_:)partial apply);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v17 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v18 = *(v17 + 68);

  variable initialization expression of CodableOptional.base(a3, v9);
  v19 = ValueTransactionSeed.init(value:transactionSeed:oldValue:)(OffsetAttribute2, v18, v9, a3, a4, v14);
  v20 = MEMORY[0x1EEE9AC00](v19);
  *(&v37 - 2) = v11;
  swift_getWitnessTable(protocol conformance descriptor for ValueTransactionSeed<A>, v11, v20);
  *(&v37 - 1) = v21;
  type metadata accessor for Attribute<UInt32>();
  v22 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_12, (&v37 - 4), v11, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  (*(v12 + 8))(v14, v11);
  v25 = v39[0];
  v26 = AGGraphSetFlags();
  MEMORY[0x1EEE9AC00](v26);
  *(&v37 - 2) = a3;
  *(&v37 - 1) = a4;
  KeyPath = swift_getKeyPath();
  v39[0] = v15;
  v40 = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_TA_0;
  v41 = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  type metadata accessor for _ValueTransactionModifier(255, a3, a4, v28);
  type metadata accessor for (_:)();
  v29 = type metadata accessor for Map();
  *(&v37 - 2) = v29;
  swift_getWitnessTable(MEMORY[0x1E698D3A8], v29);
  *(&v37 - 1) = v30;
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  v32 = v31;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v39, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_9, (&v37 - 4), v29, v22, v32, MEMORY[0x1E69E7410], v33);

  v34 = v37;
  v35 = *(v37 + 28);
  v39[0] = v25;
  v39[1] = v38;
  v40 = __PAIR64__(v18, v35);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildValueTransaction and conformance ChildValueTransaction();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v34 + 28) = result;
  return result;
}

__n128 sub_18D18BD34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void type metadata accessor for Attribute<UInt32>()
{
  if (!lazy cache variable for type metadata for Attribute<UInt32>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<UInt32>);
    }
  }
}

void type metadata accessor for Attribute<(_:)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type ChildValueTransaction and conformance ChildValueTransaction()
{
  if (!lazy protocol witness table cache variable for type ChildValueTransaction and conformance ChildValueTransaction)
  {
    swift_getWitnessTable(protocol conformance descriptor for ChildValueTransaction, &type metadata for ChildValueTransaction, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ChildValueTransaction and conformance ChildValueTransaction);
  }
}

uint64_t static _PreferenceWritingModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v12 = static Semantics_v2_3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (static Semantics.forced < v12)
  {
LABEL_17:
    v23 = type metadata accessor for _PreferenceWritingModifier(0, a5, a6, v13);
    v28[0] = v11;
    return static ViewModifier.makeMultiViewList(modifier:inputs:body:)(v28, a2, a3, a4, v23, &protocol witness table for _PreferenceWritingModifier<A>);
  }

  if ((*(a2 + 57) & 4) == 0)
  {
    goto LABEL_17;
  }

  v14 = type metadata accessor for _PreferenceWritingModifier(0, a5, a6, v13);
  type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(0, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey>, &type metadata for PreferredColorSchemeKey, &protocol witness table for PreferredColorSchemeKey, type metadata accessor for _PreferenceWritingModifier);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_17;
  }

  v28[0] = v11;
  type metadata accessor for _GraphValue(0, v14, v15, v13);
  type metadata accessor for _GraphValue<_PreferenceWritingModifier<PreferredColorSchemeKey>>(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v16 = v27;
  outlined init with copy of _ViewListInputs(a2, v28);
  HIDWORD(v27) = *(a2 + 64);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait(0, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait, type metadata accessor for _PreferenceWritingModifier<>.ColorSchemeTrait);
  lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait and conformance _PreferenceWritingModifier<A><>.ColorSchemeTrait(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait and conformance _PreferenceWritingModifier<A><>.ColorSchemeTrait, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait, type metadata accessor for _PreferenceWritingModifier<>.ColorSchemeTrait, protocol conformance descriptor for _PreferenceWritingModifier<A><>.ColorSchemeTrait);
  v31 = Attribute.init<A>(body:value:flags:update:)();
  if (v32)
  {
    v24 = v32;
    v25 = v33 & 1;
    v32 = 0;
    v33 = 0;
    specialized Set._Variant.insert(_:)(&v27, &type metadata for PreviewColorSchemeTraitKey);

    v32 = v24;
    v33 = v25;
  }

  v17 = *(a2 + 16);
  swift_beginAccess();
  v26 = *(v17 + 16);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait(0, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeEnv, type metadata accessor for _PreferenceWritingModifier<>.ColorSchemeEnv);
  lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait and conformance _PreferenceWritingModifier<A><>.ColorSchemeTrait(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeEnv and conformance _PreferenceWritingModifier<A><>.ColorSchemeEnv, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeEnv, type metadata accessor for _PreferenceWritingModifier<>.ColorSchemeEnv, protocol conformance descriptor for _PreferenceWritingModifier<A><>.ColorSchemeEnv);
  LODWORD(v17) = Attribute.init<A>(body:value:flags:update:)();
  v18 = MEMORY[0x1E69E7CC0];
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Attribute<HoverEffectContext>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 256;
  *(v20 + 82) = v16;
  *(v20 + 86) = v26;
  *(v20 + 88) = v19;

  v29 = v20;
  if ((v30 & 0x20) == 0)
  {
    v30 |= 0x20u;
  }

  (a3)(v21, v28);
  return outlined destroy of _ViewListInputs(v28);
}

uint64_t static ViewModifier.makeMultiViewList(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  a3();
  v11 = v9;
  return _ViewListOutputs.multiModifier<A>(_:inputs:)(&v11, a2, a5, a6);
}

double GeometryProxy.safeAreaInsets.getter()
{
  v1 = v0[1];
  v21 = *v0;
  v22 = v1;
  v23 = v0[2];
  v24 = *(v0 + 12);
  specialized static Update.begin()();
  GeometryProxy.placementContext.getter(&v16);
  if (v20)
  {
    v2 = 0.0;
  }

  else
  {
    v3 = v19;
    v2 = 0.0;
    if (v19 != *MEMORY[0x1E698D3F8])
    {
      v5 = v17;
      v4 = v18;
      v6 = HIDWORD(v18);
      v7 = v16;
      v8 = HIDWORD(v17);
      v9 = HIDWORD(v16);
      InputValue = AGGraphGetInputValue();
      v11 = *(InputValue + 16);
      v14 = *InputValue;
      v15 = v11;
      v13[0] = v7;
      v13[1] = v9;
      v13[2] = v5;
      v13[3] = v8;
      v13[4] = v4;
      v13[5] = v6;
      v13[6] = v3;
      v2 = SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(-1, 0, v13);
    }
  }

  static Update.end()();
  return v2;
}

void key path getter for EnvironmentValues.accentColor : EnvironmentValues(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

double keypath_setTm(void *a1)
{

  specialized EnvironmentValues.accentColor.setter(v1);

  return result;
}

double View.accentColor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);

  return result;
}

uint64_t sub_18D18C7C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t _ValueTransactionModifier.init(value:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = a6(0, a4, a5);
  v14 = (a7 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

void *static _PreferenceActionModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v52 = a7;
  v81 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v45 - v14;
  v50 = a6;
  v15 = type metadata accessor for PreferenceBinder(0, a4, a5, a6);
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v45 - v16;
  v17 = a2[3];
  v18 = a2[1];
  v73 = a2[2];
  v74 = v17;
  v19 = a2[3];
  v75 = a2[4];
  v20 = a2[1];
  v71 = *a2;
  v72 = v20;
  v67 = v73;
  v68 = v19;
  v69 = a2[4];
  v21 = *a1;
  v76 = *(a2 + 20);
  v70 = *(a2 + 20);
  v65 = v71;
  v66 = v18;
  outlined init with copy of _ViewInputs(&v71, v79);
  PreferencesInputs.add<A>(_:)(a4, a4, a5);
  v77[2] = v67;
  v77[3] = v68;
  v77[4] = v69;
  v78 = v70;
  v77[0] = v65;
  v77[1] = v66;
  v61 = v67;
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v59 = v65;
  v60 = v66;
  v22 = outlined init with copy of _ViewInputs(v77, v79);
  a3(&v56, v22, &v59);
  v79[2] = v61;
  v79[3] = v62;
  v79[4] = v63;
  v80 = v64;
  v79[0] = v59;
  v79[1] = v60;
  outlined destroy of _ViewInputs(v79);
  v23 = v56;
  v24 = v57;
  v25 = v58;
  v26 = _ViewOutputs.subscript.getter(a4, a4, a5);
  if ((v26 & 0x100000000) == 0)
  {
    v27 = v26;
    v45 = DWORD2(v72);
    v47 = v23;
    v28 = v50;
    default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v59);
    v53 = v59;
    v54 = DWORD2(v59);
    v55 = BYTE12(v59);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v30 = *(*(AssociatedTypeWitness - 8) + 56);
    v46 = v24;
    v31 = v15;
    v32 = v48;
    v30(v48, 1, 1, AssociatedTypeWitness);
    v43 = v28;
    v33 = v49;
    v34 = PreferenceBinder.init(modifier:keyValue:phase:cycleDetector:lastResetSeed:lastValue:)(v21, v27, v45, &v53, 0, v32, a4, a5, v49, v43);
    v35 = MEMORY[0x1EEE9AC00](v34);
    v43 = v31;
    swift_getWitnessTable(protocol conformance descriptor for PreferenceBinder<A>, v31, v35);
    v44 = v36;
    type metadata accessor for Attribute<()>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v33, partial apply for closure #1 in Attribute.init<A>(_:), (&v45 - 8), v31, MEMORY[0x1E69E73E0], v37, MEMORY[0x1E69E7410], v38);
    v39 = v33;
    v23 = v47;
    v40 = v31;
    v24 = v46;
    (*(v51 + 8))(v39, v40);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  v61 = v67;
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v59 = v65;
  v60 = v66;
  result = outlined destroy of _ViewInputs(&v59);
  v42 = v52;
  *v52 = v23;
  *(v42 + 2) = v24;
  *(v42 + 3) = v25;
  return result;
}

uint64_t type metadata completion function for PreferenceBinder(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)@<D0>(uint64_t a1@<X8>)
{
  v2 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v3 = *(v2 + 64);

  *a1 = v3;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 4) = 0xFFFFFFFFLL;
  *(a1 + 12) = 0;
  return result;
}

uint64_t PreferenceBinder.init(modifier:keyValue:phase:cycleDetector:lastResetSeed:lastValue:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *(a4 + 8);
  v13 = *(a4 + 12);
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = *a4;
  *(a9 + 20) = v12;
  *(a9 + 24) = v13;
  *(a9 + 28) = a5;
  v14 = *(type metadata accessor for PreferenceBinder(0, a7, a8, a10) + 60);
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 32);

  return v16(a9 + v14, a6, v15);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceBinder<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PreferenceBinder<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t closure #1 in static _ValueTransactionModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = (a4)(0, a2, a3);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

void *static _PushPopTransactionModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 16);
  v69[0] = *a2;
  v69[1] = v9;
  v10 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v10;
  v72 = *(a2 + 64);
  v65 = v70;
  v66 = v10;
  v67 = *(a2 + 64);
  v11 = *a1;
  v73 = *(a2 + 80);
  v12 = HIDWORD(v9);
  v68 = *(a2 + 80);
  v63 = v69[0];
  v64 = v9;
  outlined init with copy of _ViewInputs(v69, &v57);

  v14 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v13);

  v36 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 16) = v16 + 1;
  *(v14 + 4 * v16 + 32) = v12;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(&v63, v14);

  v17 = v37;
  closure #1 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:)(1, a5, v37, v19, v18);
  LODWORD(v57) = AGGraphCreateOffsetAttribute2();
  DWORD1(v57) = v12;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  v33 = &v33;
  HIDWORD(v64) = v20;
  MEMORY[0x1EEE9AC00](v20);
  v38[1] = v11;
  v22 = type metadata accessor for _PushPopTransactionModifier(255, a5, v17, v21);
  type metadata accessor for _GraphValue(0, v22, v23, v24);
  _GraphValue.subscript.getter(partial apply for closure #2 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:), a5, v38);
  v25 = v38[0];
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = v34;
  *(v26 + 24) = v27;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v49 = v59;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v47 = v57;
  v48 = v58;
  LODWORD(v35) = v59;
  LODWORD(v49) = 0;
  LODWORD(v34) = v25;
  LODWORD(v39[0]) = v25;
  v53[0] = v57;
  v53[1] = v58;
  v54 = v62;
  v53[3] = v60;
  v53[4] = v61;
  v53[2] = v49;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v41 = v57;
  v42 = v58;
  v43 = v49;
  v29 = v37;
  v30 = *(v37 + 24);
  outlined init with copy of _ViewInputs(&v57, v55);
  outlined init with copy of _ViewInputs(v53, v55);
  v31 = v36;
  v30(v39, &v41, partial apply for closure #3 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:), v26, a5, v29);
  v55[2] = v43;
  v55[3] = v44;
  v55[4] = v45;
  v56 = v46;
  v55[0] = v41;
  v55[1] = v42;
  outlined destroy of _ViewInputs(v55);
  LODWORD(v49) = v35;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v31, &v47);
    AGSubgraphEndTreeElement();
  }

  v39[2] = v49;
  v39[3] = v50;
  v39[4] = v51;
  v40 = v52;
  v39[0] = v47;
  v39[1] = v48;
  outlined destroy of _ViewInputs(v39);
  v44 = v66;
  v45 = v67;
  v46 = v68;
  v41 = v63;
  v42 = v64;
  v43 = v65;
  return outlined destroy of _ViewInputs(&v41);
}

void type metadata accessor for _ContiguousArrayStorage<Attribute<Transaction>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<Transaction>>)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(255, &lazy cache variable for type metadata for Attribute<Transaction>, &type metadata for Transaction, MEMORY[0x1E698D388]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<Transaction>>);
    }
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.SavedTransactionKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016SavedTransactionV033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt0B5(v4, v7);
  if (!v5 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(a2, *(v5 + 72)) & 1) == 0)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.SavedTransactionKey>, &type metadata for _GraphInputs.SavedTransactionKey, &protocol witness table for _GraphInputs.SavedTransactionKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.SavedTransactionKey, 0, v6);
  }
}

uint64_t closure #1 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5)
{
  v6 = type metadata accessor for _PushPopTransactionModifier(0, a2, a3, a5);
  v7 = *(v6 + 36);
  v11[2] = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, &type metadata for _TransactionModifier, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t closure #3 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = v5;
  v7 = *(a2 + 48);
  v35 = *(a2 + 64);
  v8 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v8;
  v28 = v33;
  v29 = v7;
  v30 = *(a2 + 64);
  v36 = *(a2 + 80);
  v31 = *(a2 + 80);
  v26 = v32[0];
  v27 = v6;
  outlined init with copy of _ViewInputs(v32, &v20);

  v10 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v9);
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v12 = *(result + 16);
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v3 + 16);
  if (v12)
  {
LABEL_4:
    v13 = v12 - 1;
    v14 = *(v3 + 4 * v13 + 32);
    *(v3 + 16) = v13;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(&v26, v3);

    HIDWORD(v27) = v14;
    v16[2] = v28;
    v16[3] = v29;
    v16[4] = v30;
    v17 = v31;
    v16[0] = v26;
    v16[1] = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v15 = outlined init with copy of _ViewInputs(v16, v18);
    a3(v15, &v20);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    outlined destroy of _ViewInputs(v18);
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    return outlined destroy of _ViewInputs(&v20);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type Font.ModifierProvider<Font.WeightModifier> and conformance Font.ModifierProvider<A>()
{
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.WeightModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for Font.ModifierProvider);
    swift_getWitnessTable(protocol conformance descriptor for Font.ModifierProvider<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.WeightModifier> and conformance Font.ModifierProvider<A>);
  }
}

void *static CustomModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v14 = *(a2 + 48);
  v15 = *(a2 + 16);
  v57 = *(a2 + 32);
  v58 = v14;
  v16 = *(a2 + 48);
  v59 = *(a2 + 64);
  v17 = *(a2 + 16);
  v56[0] = *a2;
  v56[1] = v17;
  v52 = v57;
  v53 = v16;
  v54 = *(a2 + 64);
  v18 = *a1;
  v60 = *(a2 + 80);
  v55 = *(a2 + 80);
  v50 = v56[0];
  v51 = v15;
  v19 = type metadata accessor for PlaceholderContentView(0, a5, a3, a4);
  outlined init with copy of _ViewInputs(v56, &v61);
  _ViewInputs.pushModifierBody<A>(_:body:)(v19, a3, a4, v19);
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v28[1] = v18;
  v20 = type metadata accessor for CustomModifier(255, a5, a6, a7);
  type metadata accessor for _GraphValue(0, v20, v21, v22);
  _GraphValue.subscript.getter(partial apply for closure #1 in static CustomModifier._makeView(modifier:inputs:body:), a6, v28);
  v23 = v28[0];
  v63 = v52;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  v61 = v50;
  v62 = v51;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v42 = v63;
  v43 = v64;
  v44 = v65;
  v45 = v66;
  v40 = v61;
  v41 = v62;
  v25 = v63;
  LODWORD(v42) = 0;
  LODWORD(v32[0]) = v23;
  v46[0] = v61;
  v46[1] = v62;
  v47 = v66;
  v46[3] = v64;
  v46[4] = v65;
  v46[2] = v42;
  v36 = v42;
  v37 = v64;
  v38 = v65;
  v39 = v66;
  v34 = v61;
  v35 = v62;
  v26 = *(a7 + 24);
  outlined init with copy of _ViewInputs(&v61, v48);
  outlined init with copy of _ViewInputs(v46, v48);
  v26(v32, &v34, a6, a7);
  v48[2] = v36;
  v48[3] = v37;
  v48[4] = v38;
  v49 = v39;
  v48[0] = v34;
  v48[1] = v35;
  outlined destroy of _ViewInputs(v48);
  LODWORD(v42) = v25;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v40);
    AGSubgraphEndTreeElement();
  }

  v32[2] = v52;
  v32[3] = v53;
  v32[4] = v54;
  v33 = v55;
  v32[0] = v50;
  v32[1] = v51;
  outlined destroy of _ViewInputs(v32);
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v34 = v40;
  v35 = v41;
  return outlined destroy of _ViewInputs(&v34);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CustomModifier<A, B>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  return static CustomModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5[2], a5[3], a5[4], a6);
}

{
  return static CustomModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5[2], a5[3], a5[4], a5[5], a6);
}

{
  return static CustomModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5[2], a5[3], a5[4], a5[5], a6);
}

uint64_t closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for CustomModifier(0, a2, a3, a4);
  v9[3] = a3;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a3, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t partial apply for closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  return closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(a1, v1[2], v1[3], v1[4], v1[5]);
}

{
  return closure #1 in closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(a1, v1[2], v1[3], v1[4], v1[5], type metadata accessor for CustomModifier, closure #1 in static PointerOffset.of(_:)partial apply);
}

double _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v9 = a4;
  v21 = 0;
  v22 = 0.0;
  if (a3)
  {
    if (*(a2 + 16))
    {
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg503_s7d5UI22_fgl5V9addj37_9container6inputs10baseOffsetyAA0cD5h65V0G0V_AA11_GraphValueVyxGAA01_M6InputsVzSitlFSi3tag_AC5linkstAI06iW29VXEfU_AA14LinearGradientV_TG5AF01_yZ0VyAF14LinearGradientVGAF01_Y6InputsVTf1cn_nTm(a2, a4, a5, a6);
      project #1 <A><A1>(type:) in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(a1, &v21, v14, 0, a6, a1);
    }
  }

  else
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = (a1 + 48);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        v16 += 4;
        v20[0] = v9;
        (*(v17 + 8))(&v21, v20, v18, a5, a6);
        --v15;
      }

      while (v15);
    }
  }

  outlined consume of DynamicPropertyCache.Fields.Layout(a1, a2, a3 & 1);
  *a7 = v21;
  result = v22;
  a7[1] = v22;
  return result;
}

uint64_t State.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized LazyState.wrappedValue.setter(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t specialized LazyState.wrappedValue.setter(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 28));
  if (v3)
  {
    return (*(*v3 + 128))(result, 0);
  }

  return result;
}

void NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:)(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v8 = *a1;
  if (!*a1)
  {
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v9 = static Image.Location.systemAssetManager;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v9 = static Image.Location.privateSystemAssetManager;
LABEL_9:
    v10 = v9;
    goto LABEL_13;
  }

  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  v10 = NamedImage.Cache.subscript.getter(v8);
  if (!v10)
  {
    goto LABEL_75;
  }

LABEL_13:
  v11 = v10;
  if (*(v4 + 40))
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  if (a2 == 8)
  {
    type metadata accessor for NamedImage.VectorInfo?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CatalogAssetMatchType>, &type metadata for CatalogAssetMatchType, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v13 = v10;
    *(v10 + 1) = xmmword_18DDAB4C0;
    *(v10 + 4) = 8;
    *(v10 + 40) = 0;
    *(v10 + 6) = 1;
    *(v10 + 56) = 1;
  }

  else
  {
    v13 = &outlined read-only object #0 of NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:);
  }

  MEMORY[0x1EEE9AC00](v10);
  v82[2] = v11;
  v82[3] = v4;
  v82[4] = a2;
  v82[5] = a4;
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v82[6] = v12;
  specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v16 | v14, v13, partial apply for closure #1 in NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:), v82);
  v18 = v17;

  if (!v18)
  {
LABEL_74:

LABEL_75:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 48) = 3;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    return;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v19 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (static Semantics.forced < v19)
  {
LABEL_52:
    v59 = [v18 image];
    if (v59)
    {
      v60 = v59;
      if (v8 >= 2)
      {
        if (one-time initialization token for sharedCache != -1)
        {
          swift_once();
        }

        v61 = NamedImage.Cache.subscript.getter(v8);
        if (v61)
        {
          if (v62)
          {
            v63 = v61;
            v64 = v60;
            v65 = MEMORY[0x193ABEC20](0xD000000000000020, 0x800000018DD7CB20);
            CGImageSetProperty();

            v61 = v65;
          }
        }
      }

      v48 = v60;
      Width = CGImageGetWidth(v48);
      Height = CGImageGetHeight(v48);

      v58 = 0;
      v57 = Height;
      goto LABEL_61;
    }

    goto LABEL_74;
  }

  if (![v18 preservedVectorRepresentation])
  {
    goto LABEL_52;
  }

  *&v85 = MEMORY[0x193ABEC20](*(v4 + 8), *(v4 + 16));
  v20 = *(v4 + 24);
  v21 = *(v4 + *(type metadata accessor for NamedImage.BitmapKey(0) + 40));
  v22 = v12;
  v23 = v18;
  v24 = [v23 appearance];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v26 = v85;
  v86[0] = v22;
  v27 = [v11 namedVectorImageWithName:v85 scaleFactor:v21 displayGamut:v22 layoutDirection:v24 appearanceName:isa locale:v20];

  if (!v27)
  {

    v12 = v86[0];
    goto LABEL_52;
  }

  *&v85 = v23;
  v28 = [v27 appearance];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = v85;
  v34 = [v85 appearance];

  if (!v34)
  {
    v12 = v86[0];
    if (!v32)
    {
      goto LABEL_48;
    }

LABEL_44:

    goto LABEL_52;
  }

  *&v84 = v30;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v12 = v86[0];
  if (!v32)
  {
    if (!v37)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (!v37)
  {
    goto LABEL_44;
  }

  if (v84 == v35 && v32 == v37)
  {

    goto LABEL_48;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v38 & 1) == 0)
  {
LABEL_50:

    goto LABEL_52;
  }

LABEL_48:
  v87 = v8;
  v39 = v27;
  outlined copy of Image.Location(v8);
  v40 = v85;
  [v85 size];
  VectorImageLayer.init(image:location:size:)(v39, &v87, v88, v41, v42);
  v43 = v88[0];
  if (!v88[0])
  {

    goto LABEL_52;
  }

  v45 = v88[2];
  v44 = v88[3];
  v46 = v88[1];
  v47 = v40;
  v48 = swift_allocObject();
  v48[2] = v43;
  v48[3] = v46;
  v48[4] = v45;
  v48[5] = v44;

  outlined copy of Image.Location?(v46);

  [v47 size];
  v50 = v49;
  v52 = v51;
  v53 = v47;
  v12 = v86[0];
  [v53 scale];
  v55 = v54;

  outlined consume of VectorImageLayer?(v43, v46, v45, v44);
  Width = v50 * v55;
  v57 = v52 * v55;
  v58 = 3;
LABEL_61:
  v67 = [v18 templateRenderingMode];
  if (v67)
  {
    v68 = 2 * (v67 != 1);
  }

  else
  {
    v68 = 1;
  }

  v69 = specialized Image.Orientation.init(exifValue:)([v18 exifOrientation] & 0xF);
  if (v69 == 8)
  {
    LOBYTE(v70) = 0;
  }

  else
  {
    LOBYTE(v70) = v69;
  }

  v71 = [v18 layoutDirection];
  if ([v18 isFlippable] && v71 && v71 != v12)
  {
    v70 = 0x607040502030001uLL >> (8 * v70);
  }

  [v18 scale];
  v73 = v72;
  if ([v18 hasSliceInformation])
  {
    [v18 edgeInsets];
    v84 = v74;
    v85 = v75;
    v83 = v76;
    *v86 = v77;
    v78 = [v18 resizingMode];

    *&v81 = v83;
    *&v80 = v84;
    v79 = v78 != 0;
    *(&v80 + 1) = v85;
    *(&v81 + 1) = v86[0];
  }

  else
  {

    v80 = 0uLL;
    v79 = 2;
    v81 = 0uLL;
  }

  *a3 = v48;
  *(a3 + 8) = v58;
  *(a3 + 16) = v73;
  *(a3 + 24) = v70;
  *(a3 + 32) = Width;
  *(a3 + 40) = v57;
  *(a3 + 48) = v68;
  *(a3 + 56) = v80;
  *(a3 + 72) = v81;
  *(a3 + 88) = v79;
}

uint64_t sub_18D18E898()
{

  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
  }

  return swift_deallocObject();
}

void specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(__int16 a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v7 = a2;
  v8 = a1;
  v41 = a2 + 32;
  v42 = *(a2 + 32);
  v43 = *(a2 + 40);
  if (v42 == 8)
  {
    v9 = *(a2 + 40);
  }

  else
  {
    v9 = 1;
  }

  if ((a1 & 0x100) == 0)
  {
    if (v9)
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 1) = xmmword_18DDAB4C0;
      v10[32] = v8 & 1;
      v10[33] = 0;
      v11 = v10 + 34;
      v12 = v10 + 35;
      goto LABEL_11;
    }

    v10 = &outlined read-only object #1 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
    v13 = qword_1F0044218;
    if (qword_1F0044218)
    {
      goto LABEL_14;
    }

LABEL_58:

    goto LABEL_59;
  }

  if (v9)
  {
    _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_18DDACA80;
    v10[32] = v8 & 1;
    v10[33] = 1;
    v10[34] = v8 & 1;
    *(v10 + 35) = 512;
    v10[37] = 1;
    v11 = v10 + 38;
    v12 = v10 + 39;
LABEL_11:
    *v11 = 2;
    *v12 = 0;
    v13 = *(v10 + 2);
    if (!v13)
    {
      goto LABEL_58;
    }

    goto LABEL_14;
  }

  v10 = &outlined read-only object #0 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
  v13 = qword_1F00441F0;
  if (!qword_1F00441F0)
  {
    goto LABEL_58;
  }

LABEL_14:
  v38 = v8;
  v39 = v7;
  v14 = 0;
  v15 = v10 + 33;
  v16 = v42;
  v17 = v43;
  v40 = a3;
  do
  {
    if (!v14)
    {
      v18 = *(v15 - 1);
      v19 = 0xD00000000000001BLL;
      if (!*v15)
      {
        v19 = 0x7261657070414955;
      }

      v20 = 0x800000018DD7CA20;
      if (!*v15)
      {
        v20 = 0xEF796E4165636E61;
      }

      v21 = 0xD00000000000001CLL;
      if (!*v15)
      {
        v21 = 0xD000000000000010;
      }

      v22 = "UIAppearanceHighContrastAny";
      if (!*v15)
      {
        v22 = "UIAppearanceHighContrastDark";
      }

      v23 = v22 | 0x8000000000000000;
      if (*v15)
      {
        v24 = 0xD00000000000001DLL;
      }

      else
      {
        v24 = 0xD000000000000011;
      }

      v25 = "UIAppearanceDark";
      if (!*v15)
      {
        v25 = "UIAppearanceHighContrastLight";
      }

      v26 = v25 | 0x8000000000000000;
      if (v18)
      {
        v24 = v21;
        v27 = v23;
      }

      else
      {
        v27 = v26;
      }

      if (v18 == 2)
      {
        v28 = v19;
      }

      else
      {
        v28 = v24;
      }

      if (v18 == 2)
      {
        v29 = v20;
      }

      else
      {
        v29 = v27;
      }

      v30 = a3(v28, v29);
      v14 = v30;
      if (!v30)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v17)
      {
        if (!v16)
        {
          goto LABEL_15;
        }

        v31 = [v30 appearance];
        if (v31)
        {
          v32 = v31;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          if (v33 == v28 && v35 == v29)
          {

            a3 = v40;
            v16 = v42;
            v17 = v43;
          }

          else
          {
            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v17 = v43;
            if ((v37 & 1) == 0)
            {

              v14 = 0;
            }

            a3 = v40;
            v16 = v42;
          }
        }

        else
        {

          v14 = 0;
          v17 = v43;
        }
      }

      else
      {

        if ([v14 idiom] != v16)
        {

          v14 = 0;
        }
      }
    }

LABEL_16:
    v15 += 2;
    --v13;
  }

  while (v13);

  v7 = v39;
  v8 = v38;
  if (v14)
  {
    return;
  }

LABEL_59:

  specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v8 & 0x101, v7, v41, 1, (2 * v4) | 1, a3, a4);
}

id closure #1 in NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:)(uint64_t a1, uint64_t a2, void *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = MEMORY[0x193ABEC20](*(a4 + 1), *(a4 + 2));
  v13 = a4[3];
  v14 = type metadata accessor for NamedImage.BitmapKey(0);
  v15 = *(a4 + v14[10]);
  v16 = *(a4 + v14[13]);
  v17 = *(a4 + v14[14]);
  v18 = MEMORY[0x193ABEC20](a1, a2);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v20 = [a3 imageWithName:v12 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:v15 displayGamut:a7 layoutDirection:v16 sizeClassHorizontal:v13 sizeClassVertical:v17 appearanceName:v18 locale:isa];

  return v20;
}

double VectorImageLayer.init(image:location:size:)@<D0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *a2;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_13:
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = a1;
      v22 = [v20 svgDocument];
      if (v22)
      {
        v15 = v22;
        if (v9 >= 2)
        {
          if (one-time initialization token for sharedCache != -1)
          {
            swift_once();
          }

          v16 = NamedImage.Cache.subscript.getter(v9);
          v24 = v23;

          if (!v16 || (v24 & 1) != 0)
          {
            goto LABEL_22;
          }

          v21 = v16;
        }

        v16 = 0;
LABEL_22:
        type metadata accessor for SVGImageContents();
        goto LABEL_23;
      }
    }

    outlined consume of Image.Location(v9);

    outlined consume of Image.Location?(2);
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v11 = v10;
  v12 = a1;
  v13 = [v11 pdfDocument];
  if (!v13 || (v14 = v13, v15 = CGPDFDocumentGetPage(v13, 1uLL), v14, !v15))
  {

    goto LABEL_13;
  }

  if (v9 >= 2)
  {
    if (one-time initialization token for sharedCache != -1)
    {
      swift_once();
    }

    v16 = NamedImage.Cache.subscript.getter(v9);
    v18 = v17;

    if (!v16 || (v18 & 1) != 0)
    {
      goto LABEL_11;
    }

    v12 = v16;
  }

  v16 = 0;
LABEL_11:
  type metadata accessor for PDFImageContents();
LABEL_23:
  v25 = swift_allocObject();
  *(v25 + 48) = v15;
  *(v25 + 56) = v16;
  *(v25 + 40) = 0;
  *(v25 + 24) = a4;
  *(v25 + 32) = a5;
  *(v25 + 16) = MEMORY[0x1E69E7CC8];
  v26 = [a1 name];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  outlined consume of Image.Location?(2);
  *a3 = v25;
  *(a3 + 8) = v9;
  *(a3 + 16) = v28;
  *(a3 + 24) = v30;

  outlined copy of Image.Location?(v9);

  outlined consume of Image.Location?(v9);

  return result;
}

uint64_t outlined consume of VectorImageLayer?(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    outlined consume of Image.Location?(a2);
  }

  return result;
}

uint64_t specialized Image.Orientation.init(exifValue:)(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return (0x407060503020100uLL >> (8 * (a1 - 1)));
  }
}

uint64_t outlined init with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for NamedImage._BitmapInfo(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithTake for NamedImage._BitmapInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v11 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 16) = *(v12 + 16);
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v14;
  v15 = *(v14 + 16);
  *(v13 + 32) = *(v14 + 32);
  *v13 = v16;
  *(v13 + 16) = v15;
  return a1;
}

uint64_t initializeWithTake for NamedImage.WeakOrStrongImageContents(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 9);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    v3 = *(a2 + 8);
    if (v3 >= 3)
    {
      v3 = *a2 + 3;
    }

    if (v3 == 2)
    {
      result = swift_weakTakeInit();
      v4 = 2;
    }

    else if (v3 == 1)
    {
      result = swift_unknownObjectWeakTakeInit();
      v4 = 1;
    }

    else
    {
      result = swift_unknownObjectWeakTakeInit();
      v4 = 0;
    }

    *(result + 8) = v4;
    *(result + 9) = 1;
  }

  else
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<NamedImage.BitmapKey, NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NamedImage.BitmapKey, NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>>)
  {
    type metadata accessor for NamedImage.BitmapKey(255);
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type NamedImage.BitmapKey and conformance NamedImage.BitmapKey, type metadata accessor for NamedImage.BitmapKey, protocol conformance descriptor for NamedImage.BitmapKey);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<NamedImage.BitmapKey, NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>>);
    }
  }
}

uint64_t MatchedGeometryScope.__deallocating_deinit()
{
  v1 = *(v0 + 72);
  v4[2] = *(v0 + 56);
  v4[3] = v1;
  v4[4] = *(v0 + 88);
  v5 = *(v0 + 104);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  return swift_deallocClassInstance();
}

void lazy protocol witness table accessor for type EmptyImageAccessibilityProvider and conformance EmptyImageAccessibilityProvider()
{
  if (!lazy protocol witness table cache variable for type EmptyImageAccessibilityProvider and conformance EmptyImageAccessibilityProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for EmptyImageAccessibilityProvider, &type metadata for EmptyImageAccessibilityProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EmptyImageAccessibilityProvider and conformance EmptyImageAccessibilityProvider);
  }
}

void type metadata accessor for _DictionaryStorage<RBImageRendererProperty, Any>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<RBImageRendererProperty, Any>)
  {
    type metadata accessor for RBImageRendererProperty(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty, type metadata accessor for RBImageRendererProperty, protocol conformance descriptor for RBImageRendererProperty);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<RBImageRendererProperty, Any>);
    }
  }
}

uint64_t DisplayList.GraphicsRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double static Animation.default.getter()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>);
    }
  }
}

void NamedImage.Cache.subscript.getter(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  os_unfair_lock_lock(v4 + 6);
  _s7SwiftUI10NamedImageO5CacheCyAC11_BitmapInfoVy_AA08GraphicsD0V8ContentsOGSgAC0F3KeyV_AA0D0V8LocationOtcigAMSgAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU_(&v4[8], a1, v64);
  os_unfair_lock_unlock(v4 + 6);
  v12 = v65;
  if (v65 == 4)
  {
    v36 = v11;
    NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:)(&v36, *(a1 + *(v8 + 44)), &v48, *(a1 + *(v8 + 48)));
    v13 = v48;
    v14 = v49;
    v63[0] = *v50;
    *(v63 + 3) = *&v50[3];
    v15 = v51;
    v16 = v52;
    v62[0] = *v53;
    *(v62 + 3) = *&v53[3];
    v18 = v54;
    v17 = v55;
    v20 = v56;
    v19 = v57;
    v22 = v58;
    v21 = v59;
    v23 = v60;
    v24 = v61;
    if (v56 == 3)
    {
      *a3 = v48;
      *(a3 + 8) = v14;
      *(a3 + 9) = v63[0];
      *(a3 + 12) = *(v63 + 3);
      *(a3 + 16) = v15;
      *(a3 + 24) = v16;
      *(a3 + 25) = v62[0];
      *(a3 + 28) = *(v62 + 3);
      *(a3 + 32) = v18;
      *(a3 + 40) = v17;
      *(a3 + 48) = v20;
      *(a3 + 56) = v19;
      *(a3 + 64) = v22;
      *(a3 + 72) = v21;
      *(a3 + 80) = v23;
      *(a3 + 88) = v24;
      return;
    }

    v32 = v58;
    v33 = v60;
    v35 = v59;
    v34 = v61;
    v28 = v58;
    v31 = v49;
    os_unfair_lock_lock(v4 + 6);
    outlined init with copy of NamedImage.Key(a1, v10, type metadata accessor for NamedImage.BitmapKey);
    v36 = v13;
    v37 = v31;
    v38 = v15;
    v39 = v16;
    v40 = v18;
    v41 = v17;
    v42 = v20;
    v43 = v19;
    v44 = v28;
    v45 = v35;
    v46 = v33;
    v47 = v34;
    LOBYTE(v28) = v31;
    outlined copy of GraphicsImage.Contents(v13, v31);
    specialized Dictionary.subscript.setter(&v36, v10);
    os_unfair_lock_unlock(v4 + 6);
    *a3 = v13;
    *(a3 + 8) = v28;
    *(a3 + 9) = *v50;
    *(a3 + 12) = *&v50[3];
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 25) = *v53;
    *(a3 + 28) = *&v53[3];
    *(a3 + 32) = v18;
    *(a3 + 40) = v17;
    *(a3 + 48) = v20;
    *(a3 + 56) = v19;
    v29 = v35;
    *(a3 + 64) = v32;
    *(a3 + 72) = v29;
    *(a3 + 80) = v33;
    v27 = v34;
  }

  else
  {
    v25 = v64[1];
    *a3 = v64[0];
    *(a3 + 16) = v25;
    *(a3 + 32) = v64[2];
    *(a3 + 48) = v12;
    v26 = v67;
    *(a3 + 56) = v66;
    *(a3 + 72) = v26;
    v27 = v68;
  }

  *(a3 + 88) = v27;
}

void ColorProvider._apply(color:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 24) <= 2u)
  {
    v5 = *a2;
    if (*(a2 + 24))
    {
      if (*(a2 + 24) == 1)
      {
        v6 = *(a2 + 8);
        if (v6 == *(a2 + 16))
        {
          return;
        }

        v7 = *(a2 + 56);
        v36 = *(a2 + 48);
        v37 = v7;
        v8 = *(a4 + 40);

        v8(&v44, &v36, a3, a4);

        v12 = v45;
        v13 = v46;
        v14 = v47;
        v15 = *(a2 + 56);
        v36 = *(a2 + 48);
        v37 = v15;
        v16 = *(*a1 + 168);

        v17 = v16(v6, &v36);

        v36 = v44;
        LODWORD(v37) = v12;
        *(&v37 + 1) = v13 * v17;
        v38 = v14;
        v39 = 0;
        v40 = 1065353216;
        v41 = 0;
        v42 = -1;
        v18 = MEMORY[0x1E69E7CC0];
        v43 = MEMORY[0x1E69E7CC0];
        v35 = v5;
        if (*(a2 + 40) == 1)
        {
          v18 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v19, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v36, &v35, v6);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v18;
        v20 = 1;
      }

      else
      {
        v28 = a1;
        if (v5 >= 1)
        {
          v29 = *(a2 + 56);
          v36 = *(a2 + 48);
          v37 = v29;
          v30 = *(*a1 + 168);

          v32 = v30(v5, &v36);

          type metadata accessor for ColorBox<Color.OpacityColor>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor);
          v28 = swift_allocObject();
          *(v28 + 16) = a1;
          *(v28 + 24) = v32;
        }

        v33 = *(a2 + 32);
        v34 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v33, v34);
        *(a2 + 32) = v28;
        v20 = 3;
      }

      *(a2 + 40) = v20;
    }

    else
    {
      v21 = a1;
      if (v5 >= 1)
      {
        v22 = *(a2 + 56);
        v36 = *(a2 + 48);
        v37 = v22;
        v23 = *(*a1 + 168);

        v25 = v23(v5, &v36);

        type metadata accessor for ColorBox<Color.OpacityColor>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor);
        v21 = swift_allocObject();
        *(v21 + 16) = a1;
        *(v21 + 24) = v25;
      }

      v26 = *(a2 + 32);
      v27 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v26, v27);
      *(a2 + 32) = v21;
      *(a2 + 40) = 0;
    }
  }
}

void NamedImage.BitmapKey.init(name:location:in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = a4[1];
  v39 = *a4;
  v40 = v10;

  EnvironmentValues.colorScheme.getter(&v38);
  v11 = v38;
  if (v10)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v9, &v39);

    v12 = v39;
    *a5 = v11;
    *(a5 + 1) = v12;
    *(a5 + 8) = a1;
    *(a5 + 16) = a2;

    v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9);

    *(a5 + 24) = v13;
    *(a5 + 32) = v8;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v9, &v39);

    v14 = v39;
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v9);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a5 = v11;
    *(a5 + 1) = v16;
    *(a5 + 8) = a1;
    *(a5 + 16) = a2;
    v17 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v17)
    {
      v18 = v17[9];
    }

    else
    {
      v18 = 1.0;
    }

    *(a5 + 24) = v18;
    *(a5 + 32) = v8;
    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v9);
    if (v19)
    {
      v14 = *(v19 + 72);
    }

    else
    {
      v14 = 0;
    }
  }

  *(a5 + 40) = v14;
  v20 = type metadata accessor for NamedImage.BitmapKey(0);
  v21 = v20[9];
  if (v10)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, a5 + v21);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, &v39);

    *(a5 + v20[10]) = v39;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v9, &v39);

    v22 = v39;
  }

  else
  {
    v23 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v23)
    {
      v24 = *(*v23 + 248);
      v25 = v23;
      v26 = type metadata accessor for Locale();
      (*(*(v26 - 8) + 16))(a5 + v21, &v25[v24], v26);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Locale();
      v28 = __swift_project_value_buffer(v27, static LocaleKey.defaultValue);
      (*(*(v27 - 8) + 16))(a5 + v21, v28, v27);
    }

    v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v29)
    {
      v30 = *(v29 + 72);
    }

    else
    {
      v30 = 0;
    }

    *(a5 + v20[10]) = v30;
    v31 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v9);
    if (v31)
    {
      v22 = *(v31 + 72);
    }

    else
    {
      v22 = 6;
    }
  }

  LOBYTE(v39) = v22;
  *(a5 + v20[11]) = ViewGraphHost.Idiom.cuiDeviceClass.getter();
  v39 = v9;
  v40 = v10;
  *(a5 + v20[12]) = EnvironmentValues.cuiAssetSubtype.getter();
  if (v10)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA032HorizontalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, &v39);

    if (v39 == 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = (v39 & 1) + 1;
    }

    *(a5 + v20[13]) = v32;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030VerticalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, &v39);

    v33 = v39;
  }

  else
  {
    v34 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v34 && *(v34 + 72) != 2)
    {
      v35 = (v34[9] & 1) + 1;
    }

    else
    {
      v35 = 0;
    }

    *(a5 + v20[13]) = v35;
    v36 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v36)
    {
      v33 = *(v36 + 72);
    }

    else
    {
      v33 = 2;
    }
  }

  if (v33 == 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = (v33 & 1) + 1;
  }

  *(a5 + v20[14]) = v37;
}

uint64_t EnvironmentValues.cuiAssetSubtype.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v1, &v18);

    v3 = v18;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE025AssetCatalogConfigurationI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v1, &v18);

    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    v9 = 0;
    v10 = 0.0;
    v11 = 100.0;
    v12 = 0.0;
    v13 = 100.0;
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v1);
  if (v4)
  {
    v3 = *(v4 + 72);
  }

  else
  {
    v3 = 6;
  }

  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(v1);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 13);
  v7 = *(v5 + 120);
  v8 = *(v5 + 11);
  v18 = *(v5 + 9);
  v19 = v8;
  v20 = v6;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_12:
  v13 = *(&v19 + 1);
  v12 = *(&v18 + 1);
  v11 = *&v19;
  v10 = *&v18;
  if (v20 == 163.0)
  {
    v9 = 163;
  }

  else
  {
    v9 = 0;
  }

  if (!v2)
  {
LABEL_16:
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
    if (v15)
    {
      v14 = v15[9];
      if (v3 > 7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = 1.0;
      if (v3 > 7)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_27;
  }

LABEL_10:

  v14 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

  if (v3 > 7)
  {
LABEL_18:
    if (v3 != 8)
    {
      if (v3 == 10)
      {
        return 320;
      }

      if (v3 == 11)
      {
        return 3648;
      }

      return 0;
    }

    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v11;
    v22.size.height = v13;
    if (v14 * CGRectGetHeight(v22) >= 1080.0)
    {
      return 0;
    }

    else
    {
      return 720;
    }
  }

LABEL_27:
  if (v3 != 6)
  {
    if (v3 == 7)
    {
      return v9;
    }

    return 0;
  }

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v11;
  v23.size.height = v13;
  Height = CGRectGetHeight(v23);
  if (Height > 667.0)
  {
    return 570;
  }

  if (Height > 568.0)
  {
    return 569;
  }

  if (Height <= 480.0)
  {
    return 0;
  }

  return 568;
}

void _s7SwiftUI10NamedImageO5CacheCyAC11_BitmapInfoVy_AA08GraphicsD0V8ContentsOGSgAC0F3KeyV_AA0D0V8LocationOtcigAMSgAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU_(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v10 = (a1 + 8);
  v9 = v11;
  if (!*(v11 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v13 & 1) == 0))
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 48) = 4;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    return;
  }

  v14 = v12;
  v15 = *(v9 + 36);
  specialized Dictionary.Values.subscript.getter(v12, v15, v9, &v49);
  outlined init with copy of NamedImage.WeakOrStrongImageContents(&v49, &v46);
  if ((v48 & 1) == 0)
  {
    v33 = v46;
    v24 = v47;
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(&v49, v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for NamedImage.VectorInfo?);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v42;
    v32 = v40;
    v31 = v41;
    _sypSgWOhTm_9(v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    *a3 = v33;
    *(a3 + 8) = v24;
    *(a3 + 16) = v25;
    *(a3 + 24) = v26;
    *(a3 + 32) = v27;
    *(a3 + 40) = v28;
    *(a3 + 48) = v29;
    *(a3 + 72) = v31;
    *(a3 + 56) = v32;
    *(a3 + 88) = v30;
    goto LABEL_15;
  }

  outlined init with take of GraphicsImage.WeakContents(&v46, v45);
  outlined init with copy of GraphicsImage.WeakContents(v45, v34);
  GraphicsImage.Contents.init(_:)(v34, &v43);
  v16 = v44;
  if (v44 == 255)
  {
    specialized Dictionary._Variant.remove(at:)(v8, v34, v14, v15);
    _sypSgWOhTm_9(v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    outlined destroy of NamedImage.BitmapKey(v8, type metadata accessor for NamedImage.BitmapKey);
    outlined destroy of GraphicsImage.WeakContents(v45);
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 48) = 4;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    goto LABEL_15;
  }

  v17 = v43;
  outlined destroy of NamedImage.WeakOrStrongImageContents(&v49);
  v49 = v17;
  v50 = v16;
  v51 = 0;
  outlined copy of GraphicsImage.Contents?(v17, v16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34[0] = v9;
    specialized _NativeDictionary.copy()();
    v9 = v34[0];
  }

  if (v14 < 0 || v14 >= 1 << *(v9 + 32))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (((*(v9 + 8 * (v14 >> 6) + 64) >> v14) & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v33 = v17;
  if (v15 == *(v9 + 36))
  {
    outlined assign with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(&v49, *(v9 + 56) + 96 * v14);
    outlined destroy of GraphicsImage.WeakContents(v45);
    *v10 = v9;
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(&v49, v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for NamedImage.VectorInfo?);
    v18 = v35;
    v19 = v36;
    v20 = v37;
    v21 = v38;
    v22 = v39;
    v23 = v42;
    v32 = v40;
    v31 = v41;
    _sypSgWOhTm_9(v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    *a3 = v33;
    *(a3 + 8) = v16;
    *(a3 + 16) = v18;
    *(a3 + 24) = v19;
    *(a3 + 32) = v20;
    *(a3 + 40) = v21;
    *(a3 + 48) = v22;
    *(a3 + 72) = v31;
    *(a3 + 56) = v32;
    *(a3 + 88) = v23;
LABEL_15:
    _sypSgWOhTm_9(&v49, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t initializeWithCopy for NamedImage.BitmapKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);

  if (v7 >= 2)
  {
    v8 = v7;
  }

  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);
  v9 = a3[9];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  v11 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

void NamedImage.BitmapKey.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 1);
  MEMORY[0x193AC11A0](*v1, v5);
  MEMORY[0x193AC11A0](v8);
  String.hash(into:)();
  v9 = v1[3];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v9);
  v10 = *(v1 + 4);
  if (v10)
  {
    if (v10 != 1)
    {
      MEMORY[0x193AC11A0](0);
      v12 = [v10 bundleURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.hash(into:)();
      (*(v4 + 8))(v7, v3);
      goto LABEL_9;
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  MEMORY[0x193AC11A0](v11);
LABEL_9:
  MEMORY[0x193AC11A0](*(v2 + 40));
  v13 = type metadata accessor for NamedImage.BitmapKey(0);
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x193AC11A0](*(v2 + v13[10]));
  MEMORY[0x193AC11A0](*(v2 + v13[11]));
  MEMORY[0x193AC11A0](*(v2 + v13[12]));
  Hasher._combine(_:)(*(v2 + v13[13]));
  Hasher._combine(_:)(*(v2 + v13[14]));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 *a1, uint64_t a2)
{
  v27 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      outlined init with copy of NamedImage.VectorKey(*(v2 + 48) + v11 * v9, v7, type metadata accessor for NamedImage.BitmapKey);
      if (*v7 != *a1 || ((v7[1] ^ a1[1]) & 1) != 0)
      {
        goto LABEL_5;
      }

      v12 = *(v7 + 1) == *(a1 + 1) && *(v7 + 2) == *(a1 + 2);
      if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v7 + 3) != *(a1 + 3))
      {
        goto LABEL_5;
      }

      v13 = *(v7 + 4);
      v14 = *(a1 + 4);
      if (v13)
      {
        if (v13 == 1)
        {
          if (v14 != 1)
          {
            goto LABEL_4;
          }

          v13 = 1;
        }

        else
        {
          if (v14 < 2)
          {
LABEL_4:
            outlined copy of Image.Location(*(v7 + 4));
            outlined copy of Image.Location(v14);
            outlined consume of Image.Location(v13);
            outlined consume of Image.Location(v14);
            goto LABEL_5;
          }

          v15 = *(v7 + 4);
          if (v13 == v14)
          {
            outlined copy of Image.Location(v15);
            outlined copy of Image.Location(v13);
            v14 = v13;
          }

          else
          {
            outlined copy of Image.Location(v15);
            outlined copy of Image.Location(v14);
            outlined copy of Image.Location(v13);
            outlined copy of Image.Location(v14);
            v16 = [v13 bundlePath];
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v18;
            v25 = v17;

            v19 = [v14 bundlePath];
            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v20;

            if (v25 != v23 || v24 != v26)
            {
              LODWORD(v25) = _stringCompareWithSmolCheck(_:_:expecting:)();
              outlined consume of Image.Location(v13);
              outlined consume of Image.Location(v14);

              outlined consume of Image.Location(v14);
              outlined consume of Image.Location(v13);
              if ((v25 & 1) == 0)
              {
                goto LABEL_5;
              }

              goto LABEL_26;
            }

            outlined consume of Image.Location(v13);
            outlined consume of Image.Location(v14);
          }
        }
      }

      else
      {
        if (v14)
        {
          goto LABEL_4;
        }

        v13 = 0;
      }

      outlined consume of Image.Location(v14);
      outlined consume of Image.Location(v13);
LABEL_26:
      if (v7[40] == a1[40] && (MEMORY[0x193ABDB20](&v7[v27[9]], &a1[v27[9]]) & 1) != 0 && v7[v27[10]] == a1[v27[10]] && *&v7[v27[11]] == *&a1[v27[11]] && *&v7[v27[12]] == *&a1[v27[12]] && v7[v27[13]] == a1[v27[13]] && v7[v27[14]] == a1[v27[14]])
      {
        _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(v7, type metadata accessor for NamedImage.BitmapKey);
        return v9;
      }

LABEL_5:
      _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(v7, type metadata accessor for NamedImage.BitmapKey);
      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v5 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    do
    {
      outlined init with copy of NamedImage.VectorKey(*(v2 + 48) + v14 * v10, v8, type metadata accessor for NamedImage.VectorKey);
      if (v12 != *v8 || ((v13 ^ v8[1]) & 1) != 0)
      {
        goto LABEL_5;
      }

      v16 = *(v8 + 1) == *(a1 + 1) && *(v8 + 2) == *(a1 + 2);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v8 + 3) != *(a1 + 3) || v8[32] != a1[32] || (MEMORY[0x193ABDB20](&v8[v5[8]], &a1[v5[8]]) & 1) == 0 || *&v8[v5[9]] != *&a1[v5[9]] || v8[v5[10]] != a1[v5[10]] || *&v8[v5[11]] != *&a1[v5[11]])
      {
        goto LABEL_5;
      }

      v17 = v5[12];
      v18 = *&v8[v17];
      v19 = *&a1[v17];
      if (v18)
      {
        if (v18 == 1)
        {
          if (v19 != 1)
          {
            v15 = v19;
            v29 = 1;
            v30 = v19;
LABEL_4:
            outlined copy of Image.Location(v15);
            outlined consume of Image.Location(v29);
            outlined consume of Image.Location(v30);
            goto LABEL_5;
          }

          outlined consume of Image.Location(1);
          outlined consume of Image.Location(1);
        }

        else
        {
          v28 = v18;
          if (v19 < 2)
          {
            v30 = v19;
            outlined copy of Image.Location(v19);
            v15 = v28;
            v29 = v28;
            goto LABEL_4;
          }

          if (v18 == v19)
          {
            outlined copy of Image.Location(v18);
            outlined copy of Image.Location(v28);
            outlined consume of Image.Location(v28);
            outlined consume of Image.Location(v28);
          }

          else
          {
            v30 = v19;
            outlined copy of Image.Location(v19);
            outlined copy of Image.Location(v28);
            v27 = [v28 bundlePath];
            v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v20;

            v25 = [v30 bundlePath];
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v21;

            if (v26 == v24 && v29 == v27)
            {
              outlined consume of Image.Location(v28);
              outlined consume of Image.Location(v30);
            }

            else
            {
              LODWORD(v26) = _stringCompareWithSmolCheck(_:_:expecting:)();
              outlined consume of Image.Location(v28);
              outlined consume of Image.Location(v30);

              if ((v26 & 1) == 0)
              {
                goto LABEL_5;
              }
            }
          }
        }
      }

      else
      {
        if (v19)
        {
          v29 = 0;
          v30 = v19;
          v15 = v19;
          goto LABEL_4;
        }

        outlined consume of Image.Location(0);
        outlined consume of Image.Location(0);
      }

      if (*&v8[v5[13]] == *&a1[v5[13]])
      {
        _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(v8, type metadata accessor for NamedImage.VectorKey);
        return v10;
      }

LABEL_5:
      _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(v8, type metadata accessor for NamedImage.VectorKey);
      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t destroy for NamedImage.BitmapKey(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 32);
  if (v4 >= 2)
  {
  }

  v5 = *(a2 + 36);
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t Image.NamedImageProvider.resolveBitmap(key:info:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v50 = *(a2 + 56);
  v51 = *(a2 + 64);
  v61 = *(a2 + 80);
  v62 = *(a2 + 72);
  v59 = *(a2 + 24);
  v60 = *(a2 + 88);
  v57 = *(v4 + 48);
  v58 = *(v4 + 40);
  v55 = *(v4 + 64);
  v56 = *(v4 + 56);
  v49 = *(v4 + 72);
  v15 = *a3;
  v14 = a3[1];
  *&v94 = *a3;
  *(&v94 + 1) = v14;
  LOBYTE(v66) = v13;

  v16 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v66);

  v17 = type metadata accessor for ImageResolutionContext(0);
  if ((*(a3 + *(v17 + 40)) & 4) != 0)
  {
    type metadata accessor for NamedImage.Key(0);
    v8 = swift_allocBox();
    outlined init with copy of NamedImage.Key(a1, v18, type metadata accessor for NamedImage.BitmapKey);
    swift_storeEnumTagMultiPayload();
    v9 = 5;
  }

  else
  {
    outlined copy of GraphicsImage.Contents(v8, v9);
  }

  outlined copy of GraphicsImage.Contents?(v8, v9);
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  v19 = 0x3F8000003F800000;
  if ((v16 & 1) == 0)
  {
    v19 = 0;
  }

  v54 = v19;
  if (v16)
  {
    v20 = 2143289344;
  }

  else
  {
    v20 = 0;
  }

  v53 = v20;
  v21 = (v16 & 1) == 0;
  v99 = v21;
  if (!v9)
  {
    outlined copy of GraphicsImage.Contents(v8, 0);
    v23 = CGImageGetColorSpace(v8);
    if (v23)
    {
      v24 = v21;
      v25 = v23;
      v26 = CGColorSpaceUsesITUR_2100TF(v23);
      outlined consume of GraphicsImage.Contents?(v8, 0);

      if (v26)
      {
        v15 = *a3;
        v14 = a3[1];
        *&v94 = *a3;
        *(&v94 + 1) = v14;
        LOBYTE(v104) = *(a3 + *(v17 + 36));

        EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v104, &v66);

        v52 = v66;
      }

      else
      {
        v52 = 0;
      }

      v21 = v24;
      if (v14)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    outlined consume of GraphicsImage.Contents?(v8, 0);
  }

  v52 = 0;
  if (v14)
  {
LABEL_11:

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v15);
    goto LABEL_19;
  }

LABEL_18:
  v94 = v15;

  ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(&v94);

LABEL_19:

  v27 = v8;
  v28 = v9;
  if (ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5)
  {
    v47 = v21;
    v29 = *a3;
    v30 = a3[1];
    v27 = swift_allocObject();
    if (one-time initialization token for foreground != -1)
    {
      swift_once();
    }

    *&v94 = v29;
    *(&v94 + 1) = v30;
    (*(*static Color.foreground + 120))(&v104, &v94);
    v31 = v107;
    v32 = v105;
    v33 = v106 * 0.16;
    *(v27 + 16) = v104;
    *(v27 + 24) = v32;
    *(v27 + 28) = v33;
    *(v27 + 32) = v31;
    outlined consume of GraphicsImage.Contents?(v8, v9);
    v28 = 4;
    v21 = v47;
  }

  *&v94 = v27;
  BYTE8(v94) = v28;
  *(&v94 + 9) = *v103;
  HIDWORD(v94) = *&v103[3];
  *&v95 = v10;
  *(&v95 + 1) = v11;
  *v96 = v12;
  v96[8] = v59;
  *&v96[9] = v101;
  v96[11] = v102;
  *&v96[12] = v54;
  *&v96[20] = v54;
  *&v96[28] = v53;
  LOBYTE(v97) = v21;
  *(&v97 + 1) = *v100;
  DWORD1(v97) = *&v100[3];
  v34 = v51;
  *(&v97 + 1) = v50;
  *v98 = v51;
  *&v98[8] = v62;
  *&v98[16] = v61;
  v98[24] = v60;
  *&v98[25] = 257;
  v98[27] = v52;
  v88 = v94;
  v89 = v95;
  *(v93 + 12) = *&v98[12];
  v92 = v97;
  v93[0] = *v98;
  v90 = *v96;
  v91 = *&v96[16];
  outlined copy of AccessibilityImageLabel?(v58, v57, v56, v55);
  outlined init with copy of GraphicsImage(&v94, &v66);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  if (BYTE8(v94) == 2)
  {
    v37 = *(v94 + 32);
    v48 = v21;
    v38 = *(v94 + 48);
    v39 = *(v94 + 16);
    outlined copy of Image.Location(v37);
    v40 = v38;
    outlined copy of Image.Location(v37);
    v41 = [v39 styleMask];
    v66 = v37;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v41, &v66, &v63);

    v34 = v51;
    outlined consume of Image.Location(v37);

    v21 = v48;
    outlined consume of GraphicsImage.Contents?(v8, v9);
    v42 = v63;
    v36 = v64;
    v35 = v65 & 0xFD;
  }

  else
  {
    if (BYTE8(v94) == 255)
    {
      outlined consume of GraphicsImage.Contents?(v8, v9);
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v36 = (v97 & 1) == 0;
      outlined consume of GraphicsImage.Contents?(v8, v9);
      v35 = 0;
    }

    v42 = 0;
  }

  v87 = 1;
  v43 = v93[0];
  *(a4 + 64) = v92;
  *(a4 + 80) = v43;
  *(a4 + 96) = v93[1];
  v44 = v89;
  *a4 = v88;
  *(a4 + 16) = v44;
  v45 = v91;
  *(a4 + 32) = v90;
  *(a4 + 48) = v45;
  *(a4 + 112) = v58;
  *(a4 + 120) = v57;
  *(a4 + 128) = v56;
  *(a4 + 136) = v55;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = v49;
  *(a4 + 161) = 3;
  *(a4 + 164) = 0;
  *(a4 + 168) = 1;
  *(a4 + 176) = v42;
  *(a4 + 184) = v36;
  *(a4 + 186) = v35;
  v66 = v27;
  v67 = v28;
  *v68 = *v103;
  *&v68[3] = *&v103[3];
  v69 = v10;
  v70 = v11;
  v71 = v12;
  v72 = v59;
  v74 = v102;
  v73 = v101;
  v75 = v54;
  v76 = v54;
  v77 = v53;
  v78 = v21;
  *&v79[3] = *&v100[3];
  *v79 = *v100;
  v80 = v50;
  v81 = v34;
  v82 = v62;
  v83 = v61;
  v84 = v60;
  v85 = 257;
  v86 = v52;
  return outlined destroy of GraphicsImage(&v66);
}

void type metadata accessor for NamedImage._BitmapInfo<GraphicsImage.Contents>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NamedImage._BitmapInfo<GraphicsImage.Contents>?)
  {
    type metadata accessor for NamedImage.VectorInfo?(255, &lazy cache variable for type metadata for NamedImage._BitmapInfo<GraphicsImage.Contents>, &type metadata for GraphicsImage.Contents, type metadata accessor for NamedImage._BitmapInfo);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NamedImage._BitmapInfo<GraphicsImage.Contents>?);
    }
  }
}

uint64_t getEnumTagSinglePayload for NamedImage._BitmapInfo(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
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

  v8 = ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 33;
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
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
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

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0xFD)
  {
    return (*(v4 + 48))(a1);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 32);
  v18 = v17 >= 2;
  v19 = v17 - 2;
  if (!v18)
  {
    v19 = -1;
  }

  if (v19 + 1 >= 2)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall ShapeStyleResolver.destroy()()
{
  if (*(v0 + 48))
  {
    specialized AnimatorState.removeListeners()();
  }
}

uint64_t static BoxVTable.deinitialize(elt:)()
{
  v1 = *(v0 + 136);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  (*(*(v0 + 144) + 24))(v1);

  return UnsafeMutablePointer.deinitialize(count:)();
}

uint64_t _ShapeStyle_InterpolatorGroup.__deallocating_deinit()
{
  _ShapeStyle_InterpolatorGroup.reset()();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall _ShapeStyle_InterpolatorGroup.reset()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 24) = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        *(v1 + 24) = v2;
      }

      if (v4 >= *(v2 + 2))
      {
        break;
      }

      v6 = &v2[232 * v4];
      v7 = *(v6 + 29);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 32);
        do
        {
          v10 = v9[3];
          v11 = v9[4];
          v12 = *(v9 + 89);
          v19[0] = v9[5];
          v13 = v9[1];
          v14 = v9[2];
          v18[0] = *v9;
          v18[1] = v13;
          *(v19 + 9) = v12;
          v18[3] = v10;
          v18[4] = v11;
          v18[2] = v14;
          if (*&v19[0])
          {
            v15 = *(**&v19[0] + 96);
            outlined init with copy of DisplayList.InterpolatorLayer.Removed(v18, &v17);

            v15(v16);
            outlined destroy of DisplayList.InterpolatorLayer.Removed(v18);
          }

          v9 += 7;
          --v8;
        }

        while (v8);
      }

      ++v4;
      *(v6 + 29) = MEMORY[0x1E69E7CC0];
      *(v6 + 31) = 0;
      v6[259] = 1;
      *(v1 + 24) = v2;
      swift_endAccess();

      if (v4 == v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

double destroy for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1)
{
  outlined consume of _ShapeStyle_LayerID(*a1, *(a1 + 8), *(a1 + 16));
  if (*(a1 + 136))
  {
    outlined consume of _ShapeStyle_Pack.Fill(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104) | (*(a1 + 108) << 32), *(a1 + 109));
    v2 = *(a1 + 128);
    if (v2 != 255)
    {
      outlined consume of GraphicsBlendMode(*(a1 + 120), v2 & 1);
    }
  }

  swift_unknownObjectRelease();

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE025AssetCatalogConfigurationI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(a1);
    if (v14)
    {
      v15 = *(v14 + 120);
      v16 = *(v14 + 11);
      v17 = *(v14 + 13);
      *a2 = *(v14 + 9);
      *(a2 + 16) = v16;
      *(a2 + 32) = v17;
      *(a2 + 48) = v15;
    }

    else
    {
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 48) = 1;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v30);
    outlined init with take of AnyTrackedValue(v30, v31);
    v12 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ViewGraphHost.AssetCatalogConfiguration?, &type metadata for ViewGraphHost.AssetCatalogConfiguration, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = v8;
    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(a1);
    if (v18)
    {
      v19 = v18[9];
      v20 = v18[10];
      v21 = v18[11];
      v22 = v18[12];
      v23 = v18[13];
      v24 = v18[14];
      v25 = *(v18 + 120);
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
    }

    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22;
    *(a2 + 32) = v23;
    *(a2 + 40) = v24;
    *(a2 + 48) = v25;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>(0);
    v32 = v26;
    v33 = &protocol witness table for TrackedValue<A>;
    v27 = swift_allocObject();
    v31[0] = v27;
    *(v27 + 16) = v19;
    *(v27 + 24) = v20;
    *(v27 + 32) = v21;
    *(v27 + 40) = v22;
    *(v27 + 48) = v23;
    *(v27 + 56) = v24;
    *(v27 + 64) = v25;
    specialized Dictionary.subscript.setter(v31, v29);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

id outlined copy of Image.Location?(id result)
{
  if (result != 2)
  {
    return outlined copy of Image.Location(result);
  }

  return result;
}

void PDFImageContents.draw(in:)(CGContext *a1)
{
  CGContextSaveGState(a1);
  v3 = *(v1 + 48);
  v5.size.width = *(v1 + 24);
  v5.size.height = *(v1 + 32);
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  CGPDFPageGetDrawingTransform(&v4, v3, kCGPDFCropBox, v5, 0, 1);
  CGContextConcatCTM(a1, &v4);
  CGContextDrawPDFPage(a1, v3);
  CGContextRestoreGState(a1);
}

void DisplayList.GraphicsRenderer.render(item:in:)(uint64_t a1, CGFloat *a2)
{
  v3 = v2;
  v368 = *MEMORY[0x1E69E9840];
  type metadata accessor for DisplayList.ArchiveIDs?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v329 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v329 - v10;
  v12 = *(a1 + 48);
  v364 = *(a1 + 32);
  *v365 = v12;
  *&v365[12] = *(a1 + 60);
  v13 = *(a1 + 16);
  v363.origin = *a1;
  v363.size = v13;
  v14 = *(&v364 + 1);
  v15 = *&v365[16];
  LODWORD(v16) = *&v365[16] >> 30;
  if (*&v365[16] >> 30 > 1u)
  {
LABEL_10:
    if (v16 == 2)
    {
      v23 = (v3 + 104);
      if (*(*(v3 + 104) + 16))
      {
        v332 = *&v3;
        v24 = v14;
        v339 = a2;
        outlined init with copy of DisplayList.Item(&v363, &v348);
        specialized Array._customRemoveLast()(&v341);
        if (BYTE4(v341.c))
        {
          specialized Array.remove(at:)(*(*v23 + 2) - 1, &v348);
          a_low = LODWORD(v348.a);
          a_high = HIDWORD(v348.a);
          b_low = LODWORD(v348.b);
          b_high = HIDWORD(v348.b);
          c_low = LODWORD(v348.c);
        }

        else
        {
          a_low = LODWORD(v341.a);
          a_high = HIDWORD(v341.a);
          b_low = LODWORD(v341.b);
          b_high = HIDWORD(v341.b);
          c_low = LODWORD(v341.c);
        }

        v45 = (v24 + 48);
        v46 = *(v24 + 16) + 1;
        do
        {
          if (!--v46)
          {
            outlined destroy of DisplayList.Item(&v363);
            goto LABEL_51;
          }

          v47 = v45;
          v45 += 10;
        }

        while (*(v47 - 4) != a_low || *(v47 - 3) != a_high || *(v47 - 2) != b_low || *(v47 - 1) != b_high || *v47 != c_low);
        v48 = *(v45 - 4);
        v49 = *(v45 - 12);
        v50 = *(v45 - 5);

        outlined destroy of DisplayList.Item(&v363);
        if (v363.origin.x == 0.0 && v363.origin.y == 0.0)
        {
          v348.a = v48;
          LOWORD(v348.b) = v49;
          HIDWORD(v348.b) = v50;
          DisplayList.GraphicsRenderer.render(list:in:)(&v348, v339);
        }

        else
        {
          LODWORD(v337) = v49;
          v57 = v339;
          LODWORD(v338.width) = v50;
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
          v348.a = v48;
          LOWORD(v348.b) = LOWORD(v337);
          HIDWORD(v348.b) = LODWORD(v338.width);
          DisplayList.GraphicsRenderer.render(list:in:)(&v348, v57);

          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

LABEL_51:
        v58 = *v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v58 + 2) + 1, 1, v58);
          *v23 = v58;
        }

        v61 = *(v58 + 2);
        v60 = *(v58 + 3);
        if (v61 >= v60 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v58);
        }

        *(v58 + 2) = v61 + 1;
        v62 = &v58[20 * v61];
        *(v62 + 8) = a_low;
        *(v62 + 9) = a_high;
        *(v62 + 10) = b_low;
        *(v62 + 11) = b_high;
        *(v62 + 12) = c_low;
        *v23 = v58;
      }
    }
  }

  else
  {
    v17 = *v365;
    if (v16)
    {
      v339 = a2;
      v30 = v3;
      v332 = 0.0;
      v337 = *&v365[8];
      v338.width = *(&v364 + 1);
      size = v363.size;
      v32 = v363.origin.x == 0.0;
      if (v363.origin.y != 0.0)
      {
        v32 = 0;
      }

      LODWORD(v335) = v32;
      if (v32)
      {
        outlined init with copy of DisplayList.Item(&v363, &v348);
      }

      else
      {
        outlined init with copy of DisplayList.Item(&v363, &v348);
        GraphicsContext.copyOnWrite()();
        RBDrawingStateTranslateCTM();
      }

      v336 = v15;
      v334 = HIDWORD(v15);
      if (BYTE4(v17) == 11)
      {
        *&v333 = v17;
        v33 = v3;
        outlined init with copy of AnyTrackedValue(*&v338.width + 16, &v348);
        v34 = *(v3 + 48);
        v35 = *(v30 + 52);
        v36 = *(v30 + 56);
        v37 = *(v30 + 60);
        swift_beginAccess();
        v38 = v33;
        v39 = *(v33 + 24);
        v40 = *(v39 + 16);
        v330 = (v36 | (v37 << 32));
        v331 = v34 | (v35 << 32);
        if (v40 && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v34 | (v35 << 32), v36 | (v37 << 32)), (v42 & 1) != 0))
        {
          outlined init with copy of AnyTrackedValue(*(v39 + 56) + 40 * v41, &v358);
        }

        else
        {
          memset(&v358, 0, 40);
        }

        swift_endAccess();
        if (*&v358.d)
        {
          outlined init with take of AnyTrackedValue(&v358, &v341);
        }

        else
        {
          d = v348.d;
          tx = v348.tx;
          __swift_project_boxed_opaque_existential_1(&v348, *&v348.d);
          (*(*&tx + 32))(&v341, COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
          if (*&v358.d)
          {
            outlined destroy of _DisplayList_AnyEffectAnimator?(&v358, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator, &protocol descriptor for _DisplayList_AnyEffectAnimator);
          }
        }

        *&v355[0] = *(v38 + 72);
        v53 = v341.d;
        v54 = v341.tx;
        __swift_mutable_project_boxed_opaque_existential_1(&v341, *&v341.d);
        v55 = (*(*&v54 + 8))(&v358, &v348, v355, COERCE_CGFLOAT(*&v53), COERCE_CGFLOAT(*&v54), size.width, size.height);
        outlined consume of DisplayList.Effect(*&v338.width, v333, 11);
        v44 = *&v358.a;
        v17 = LODWORD(v358.b);
        v43 = BYTE4(v358.b);
        if ((v55 & 1) == 0)
        {
          *(v38 + 80) = *(v38 + 72);
        }

        outlined init with copy of AnyTrackedValue(&v341, &v358);
        swift_beginAccess();
        v30 = v38;
        specialized Dictionary.subscript.setter(&v358, v331, v330);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v341);
        __swift_destroy_boxed_opaque_existential_1(&v348);
      }

      else
      {
        v43 = HIDWORD(v17);
        v44 = *&v338.width;
      }

      switch(v43)
      {
        case 1:
          v331 = v43;
          v172 = swift_projectBox();
          outlined init with copy of DisplayList.ArchiveIDs?(v172, v11);
          swift_beginAccess();
          v173 = v30;
          v174 = *(v30 + 88);
          outlined init with copy of DisplayList.ArchiveIDs?(v11, v8);
          v175 = type metadata accessor for DisplayList.ArchiveIDs(0);
          v176 = v44;
          v177 = *(*(v175 - 8) + 48);
          v178 = v177(v8, 1, v175);
          *&v338.width = v176;
          if (v178 == 1)
          {
            outlined copy of DisplayList.Effect(v176, v17, 1);

            _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v8, type metadata accessor for DisplayList.ArchiveIDs?);
            v179 = 0;
          }

          else
          {
            v301 = v176;
            v179 = *&v8[*(v175 + 20)];
            outlined copy of DisplayList.Effect(v301, v17, 1);

            _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v8, type metadata accessor for DisplayList.ArchiveIDs);
          }

          v302 = v339;
          *(v173 + 88) = v179;

          v303 = v177(v11, 1, v175) != 1;
          DisplayList.Index.updateArchive(entering:)(v303);
          v341.a = v337;
          LOWORD(v341.b) = v336;
          HIDWORD(v341.b) = v334;
          DisplayList.GraphicsRenderer.render(list:in:)(&v341, v302);
          _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v11, type metadata accessor for DisplayList.ArchiveIDs?);

          *(v173 + 88) = v174;

          v44 = *&v338.width;
          v298 = *&v338.width;
          v299 = v17;
          v300 = 1;
          goto LABEL_213;
        case 3:
          outlined init with copy of AnyTrackedValue(v44 + 16, &v348);
          v332 = *&v30;
          v189 = v44;
          v190 = v348.d;
          v191 = v348.tx;
          __swift_project_boxed_opaque_existential_1(&v348, *&v348.d);
          v341.a = v337;
          LOWORD(v341.b) = v336;
          HIDWORD(v341.b) = v334;
          v192 = v17;
          v17 = *v339;
          v331 = v43;
          v193 = *(*&v191 + 48);

          v194 = v17;
          LOBYTE(v17) = v192;
          v195 = v191;
          v44 = v189;
          v193(&v341, v194, *&v332, *&v190, *&v195, size.width, size.height);
          LOBYTE(v43) = v331;

          __swift_destroy_boxed_opaque_existential_1(&v348);
          outlined consume of DisplayList.Effect(v189, v192, 3);
          goto LABEL_46;
        case 4:
          v341.a = *v339;
          v180 = *(*&v341.a + 48);

          if (v180 != (v180 * *&v44))
          {
            GraphicsContext.copyOnWrite()();
            *(*&v341.a + 48) = v180 * *&v44;
          }

          v348.a = v337;
          LOWORD(v348.b) = v336;
          HIDWORD(v348.b) = v334;
          DisplayList.GraphicsRenderer.render(list:in:)(&v348, &v341.a);

          goto LABEL_46;
        case 5:
          v135 = *v339;
          v341.a = *v339;
          if (v17)
          {
            outlined copy of DisplayList.Effect(v44, v17, 5);

            objc_opt_self();
            v136 = 0;
          }

          else
          {

            v136 = v44;
          }

          v56 = v335;
          if (*(v135 + 52) != v136)
          {
            GraphicsContext.copyOnWrite()();
            *(*&v341.a + 52) = v136;
          }

          v348.a = v337;
          LOWORD(v348.b) = v336;
          HIDWORD(v348.b) = v334;
          DisplayList.GraphicsRenderer.render(list:in:)(&v348, &v341.a);
          outlined consume of DisplayList.Effect(v44, v17, 5);

          goto LABEL_47;
        case 6:
          v181 = *(v44 + 32);
          *&v348.a = *(v44 + 16);
          *&v348.c = v181;
          LOBYTE(v348.tx) = *(v44 + 48);
          v182 = *(v44 + 49);
          v183 = v44;
          v184 = *(v44 + 50);
          v358.a = *v339;
          outlined copy of DisplayList.Effect(v183, v17, 6);

          GraphicsContext.copyOnWrite()();
          v185 = *(*&v358.a + 56);
          if (v184)
          {
            v186 = 256;
          }

          else
          {
            v186 = 0;
          }

          v187 = *(*(*&v358.a + 16) + 32);
          v188 = v186 | v182;
          v44 = v183;
          RBShape.setPath(_:style:shapeDistance:)(&v348.a, v188, v185);

          RBDrawingStateClipShape2();
          v341.a = v337;
          LOWORD(v341.b) = v336;
          HIDWORD(v341.b) = v334;
          DisplayList.GraphicsRenderer.render(list:in:)(&v341, &v358.a);

          outlined consume of DisplayList.Effect(v183, v17, 6);
          goto LABEL_46;
        case 7:
          v228 = *(v44 + 16);
          v229 = *(v44 + 24);
          v230 = v44;
          v231 = *(v44 + 32);
          v331 = v43;
          v43 = *(v230 + 28);
          v341.a = *v339;

          outlined copy of DisplayList.Effect(v230, v17, 7);

          v232 = v231;
          v44 = v230;
          v233 = v229 | (v43 << 32);
          LOBYTE(v43) = v331;
          specialized GraphicsContext.clipToLayer(opacity:options:content:)(v232, &v341, 1.0, v30, v228, v233);

          v348.a = v337;
          LOWORD(v348.b) = v336;
          HIDWORD(v348.b) = v334;
          DisplayList.GraphicsRenderer.render(list:in:)(&v348, &v341.a);

          outlined consume of DisplayList.Effect(v230, v17, 7);
          goto LABEL_46;
        case 8:
          v147 = *(v44 + 32);
          v148 = *(v44 + 40);
          v149 = v17;
          v17 = v30;
          v150 = *(v44 + 48);
          v331 = v43;
          v341.a = *v339;
          memset(&v348, 0, 32);
          LOBYTE(v348.tx) = 1;
          v151 = swift_allocObject();
          v152 = v336;
          v153 = v337;
          *(v151 + 16) = v17;
          *(v151 + 24) = v153;
          *(v151 + 32) = v152;
          *(v151 + 36) = v334;
          LOBYTE(v17) = v149;

          outlined copy of DisplayList.Effect(v44, v149, 8);

          swift_bridgeObjectRetain_n();

          v154.n128_u64[0] = 0;
          specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v150, v147, partial apply for closure #10 in DisplayList.GraphicsRenderer.render(item:in:), v151, &v341, &v348, v147, v154, v148);

          LOBYTE(v43) = v331;

          swift_bridgeObjectRelease_n();
          outlined consume of DisplayList.Effect(v44, v149, 8);
          goto LABEL_46;
        case 9:
          v196 = *(v44 + 16);
          v197 = *(v44 + 24);
          v198 = *(v44 + 32);
          v199 = *(v44 + 40);
          v201 = *(v44 + 48);
          v200 = *(v44 + 56);
          v203 = *(v44 + 64);
          v202 = *(v44 + 72);
          v204 = *(v44 + 80);
          v205 = *(v44 + 88);
          v358.a = *v339;
          if (v205 > 1)
          {
            v332 = v198;
            *&v333 = v196;
            if (v205 == 2)
            {
              outlined copy of DisplayList.Effect(v44, v17, 9);

              GraphicsContext.copyOnWrite()();
              RBDrawingStateAddRotationStyle();
            }

            else
            {
              v330 = v200;
              outlined copy of DisplayList.Effect(v44, v17, 9);

              GraphicsContext.copyOnWrite()();
              v327 = v204;
              RBDrawingStateAddRotation3DStyle();
            }
          }

          else
          {
            if (!v205)
            {
              v348.a = v196;
              v348.b = v197;
              v348.c = v198;
              v348.d = v199;
              v348.tx = v201;
              *&v348.ty = v200;
              v206 = v196;
              v207 = v198;
              v208 = *&v200;
              IsIdentity = CGAffineTransformIsIdentity(&v348);
              outlined copy of DisplayList.Effect(v44, v17, 9);

              v56 = v335;
              if (!IsIdentity)
              {
                GraphicsContext.copyOnWrite()();
                v348.a = v206;
                v348.b = v197;
                v348.c = v207;
                v348.d = v199;
                v348.tx = v201;
                v348.ty = v208;
                RBDrawingStateConcatCTM();
              }

LABEL_244:
              v341.a = v337;
              LOWORD(v341.b) = v336;
              HIDWORD(v341.b) = v334;
              DisplayList.GraphicsRenderer.render(list:in:)(&v341, &v358.a);

              outlined consume of DisplayList.Effect(v44, v17, 9);
LABEL_47:
              if ((v56 & 1) == 0)
              {
                GraphicsContext.copyOnWrite()();
                RBDrawingStateTranslateCTM();
              }

              outlined consume of DisplayList.Effect(v44, v17, v43);
              return;
            }

            v348.a = v196;
            v348.b = v197;
            v348.c = v198;
            v348.d = v199;
            v348.tx = v201;
            *&v348.ty = v200;
            *&v349 = v203;
            *(&v349 + 1) = v202;
            *&v350 = v204;
            outlined copy of DisplayList.Effect(v44, v17, 9);

            GraphicsContext.copyOnWrite()();
            RBDrawingState.addProjectionTransform(_:)(&v348, *(*&v358.a + 24));
          }

          v56 = v335;
          goto LABEL_244;
        case 10:
          v137 = *(v44 + 96);
          v343 = *(v44 + 80);
          v344[0] = v137;
          v344[1] = *(v44 + 112);
          *(&v344[1] + 12) = *(v44 + 124);
          v138 = *(v44 + 32);
          *&v341.a = *(v44 + 16);
          *&v341.c = v138;
          v139 = *(v44 + 64);
          *&v341.tx = *(v44 + 48);
          v342 = v139;
          v340[0] = *v339;
          memmove(&v348, (v44 + 16), 0x7CuLL);
          if (_s7SwiftUI14GraphicsFilterOWOg(&v348) != 15)
          {
            v360 = v343;
            v361 = v344[0];
            v362[0] = v344[1];
            *(v362 + 12) = *(&v344[1] + 12);
            v358 = v341;
            v359 = v342;
            outlined copy of DisplayList.Effect(v44, v17, 10);

            outlined init with copy of GraphicsFilter(&v341, v355);
            GraphicsContext.addFilter(_:in:)(&v358, 0.0, 0.0, size.width, size.height);
            v358.a = v337;
            LOWORD(v358.b) = v336;
            HIDWORD(v358.b) = v334;
            DisplayList.GraphicsRenderer.render(list:in:)(&v358, v340);
            outlined destroy of GraphicsFilter(&v341);

            outlined consume of DisplayList.Effect(v44, v17, 10);
            goto LABEL_46;
          }

          v140 = _s7SwiftUI14GraphicsFilterOWOj6_(&v348);
          v332 = *&v30;

          *&v338.width = v44;
          *&v333 = v17;
          outlined copy of DisplayList.Effect(v44, v17, 10);

          GraphicsContext.copyOnWrite()();
          v141 = v340[0];
          v142 = RBDrawingStateBeginLayer();
          type metadata accessor for GraphicsContext.Storage();
          v143 = swift_allocObject();
          *(v143 + 32) = xmmword_18DD85500;
          *(v143 + 48) = 1065353216;
          *(v143 + 56) = 0x7FF8000000000000;
          v144 = *(*&v141 + 16);
          v145 = *(v144 + 64);
          DefaultColorSpace = RBDrawingStateGetDefaultColorSpace();
          v331 = v43;
          if (v145 == DefaultColorSpace)
          {
            *(v143 + 16) = v144;

            v56 = v335;
          }

          else
          {
            v329 = v142;
            v330 = RBDrawingStateGetDisplayList();
            v311 = *(*&v141 + 32);
            v310 = *(*&v141 + 40);
            v312 = *&v311;
            v313 = *&v310;
            if (v311 == 1)
            {
              v312 = *(v144 + 48);
              v310 = *(v144 + 56);
            }

            v358.a = v312;
            v358.b = v310;
            type metadata accessor for GraphicsContext.Storage.Shared();
            swift_allocObject();
            outlined copy of EnvironmentValues?(v311, v313);
            *(v143 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v330, &v358);
            v56 = v335;
            v142 = v329;
          }

          *(v143 + 24) = v142;
          *(v143 + 64) = 0;
          *&v355[0] = v143;
          v358.a = v337;
          LOWORD(v358.b) = v336;
          HIDWORD(v358.b) = v334;

          DisplayList.GraphicsRenderer.render(list:in:)(&v358, v355);

          RBDrawingStateClipLayer();

          *&v358.a = *v140;
          v314 = v140[1];
          v315 = v140[2];
          v316 = v140[4];
          v359 = v140[3];
          v360 = v316;
          *&v358.c = v314;
          *&v358.tx = v315;
          GraphicsContext.copyOnWrite()();
          v317 = v340[0];
          RBDrawingStateAddColorMatrixFilter();
          RBDrawingStateGetClipBoundingBox();
          x = v370.origin.x;
          y = v370.origin.y;
          width = v370.size.width;
          height = v370.size.height;
          if (CGRectIsNull(v370))
          {
            v17 = 0;
            v43 = 0;
            v322 = 0;
            v323 = 0;
            v324 = 6;
          }

          else
          {
            v324 = 0;
            v17 = *&x;
            v43 = *&y;
            v322 = *&width;
            v323 = *&height;
          }

          v44 = *&v338.width;
          *&v366[0] = v17;
          *&v366[1] = v43;
          *&v366[2] = v322;
          *&v366[3] = v323;
          v367 = v324;
          *&v358.a = 0uLL;
          LODWORD(v358.c) = 2143289344;
          BYTE8(v360) = 0;
          *&v355[0] = 256;
          *(v355 + 8) = 0u;
          *(&v355[1] + 8) = 0u;
          BYTE8(v355[2]) = 0;
          GraphicsContext.draw(_:with:style:)(v366, &v358, v355, *&v317);
          outlined consume of Path.Storage(v17, v43, v322, v323, v324);

          LOBYTE(v17) = v333;
          outlined consume of DisplayList.Effect(v44, v333, 10);
          LOBYTE(v43) = v331;
          goto LABEL_47;
        case 11:
          v328 = 0;
          v327 = 358;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          JUMPOUT(0x18D1954B0);
        case 12:
          v331 = v43;
          *&v333 = v17;
          v219 = *(v44 + 16);
          v220 = *(v44 + 24) | (*(v44 + 28) << 32);
          v221 = *(v44 + 29);
          v222 = *(v44 + 30);
          v223 = *(v44 + 32);
          v224 = *(v44 + 40);
          v341.a = *v339;
          v225 = *(v30 + 96);
          if ((v224 & 0xC) != 0)
          {
            v348.a = v219;
            LODWORD(v348.b) = v220;
            BYTE6(v348.b) = v222 != 0;
            WORD2(v348.b) = (v220 & 0xFF00000000 | (v221 << 40)) >> 32;
            outlined copy of DisplayList.Effect(v44, v333, 12);
            outlined copy of ContentTransition.Storage(*&v219, v220, v221);

            outlined copy of ContentTransition.Storage(*&v219, v220, v221);
            GraphicsContext.setTransition(_:)(&v348);
            outlined consume of ContentTransition?(*&v348.a, LODWORD(v348.b) | ((WORD2(v348.b) | (BYTE6(v348.b) << 16)) << 32));
            *(v30 + 96) = *(v30 + 96) & 1 | ((v224 & 4) != 0);
            if ((v224 & 4) != 0)
            {
              v226 = *&v341.a;

              v334 = v223;
              v227 = *&v337;

              specialized GraphicsContext.drawLayer(flags:content:)(32, v226, v30, v227, v336 & 0xFFFFFFFF0000FFFFLL);

              outlined consume of ContentTransition.Storage(*&v219, v220, v221);

              goto LABEL_212;
            }
          }

          else
          {
            outlined copy of DisplayList.Effect(v44, v333, 12);
            outlined copy of ContentTransition.Storage(*&v219, v220, v221);
          }

          v348.a = v337;
          LOWORD(v348.b) = v336;
          HIDWORD(v348.b) = v334;
          DisplayList.GraphicsRenderer.render(list:in:)(&v348, &v341.a);
          outlined consume of ContentTransition.Storage(*&v219, v220, v221);

LABEL_212:
          *(v30 + 96) = v225;

          v298 = v44;
          LOBYTE(v17) = v333;
          v299 = v333;
          v300 = 12;
LABEL_213:
          outlined consume of DisplayList.Effect(v298, v299, v300);
          v56 = v335;
          LOBYTE(v43) = v331;
          goto LABEL_47;
        case 16:
          v333 = *(v44 + 16);
          v155 = v44;
          v156 = *(v44 + 32);
          v157 = v30;
          v158 = v30 + 104;
          v159 = *(v30 + 104);
          *&v338.width = v155;

          v160 = swift_isUniquelyReferenced_nonNull_native();
          *(v30 + 104) = v159;
          v161 = v17;
          if ((v160 & 1) == 0)
          {
            v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v159 + 2) + 1, 1, v159);
            *v158 = v159;
          }

          v162 = v339;
          v164 = *(v159 + 2);
          v163 = *(v159 + 3);
          if (v164 >= v163 >> 1)
          {
            v325 = v339;
            v326 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v163 > 1), v164 + 1, 1, v159);
            v162 = v325;
            v159 = v326;
          }

          *(v159 + 2) = v164 + 1;
          v165 = &v159[20 * v164];
          *(v165 + 2) = v333;
          *(v165 + 12) = v156;
          *(v157 + 104) = v159;
          v348.a = v337;
          LOWORD(v348.b) = v336;
          HIDWORD(v348.b) = v334;
          DisplayList.GraphicsRenderer.render(list:in:)(&v348, v162);

          if (!*(*(v157 + 104) + 16))
          {
            __break(1u);
          }

          specialized Array._customRemoveLast()(&v348);
          LOBYTE(v17) = v161;
          v44 = *&v338.width;
          if (BYTE4(v348.c) == 1)
          {
            specialized Array.remove(at:)(*(*v158 + 16) - 1, &v348);
          }

          outlined consume of DisplayList.Effect(v44, v161, 16);
          goto LABEL_46;
        case 19:
          v331 = v43;
          v166 = v30;
          v167 = *(v44 + 36);
          v168 = v17;
          v348.a = *v339;
          v17 = v44;
          v169 = v168;
          outlined copy of DisplayList.Effect(v44, v168, 19);

          if (v167)
          {
            v170 = 0;
            v171 = 0;
          }

          else
          {
            v171 = RBUUIDInitFromHash();
            v170 = v293;
          }

          GraphicsContext._addAnimation(_:id:)(v294, v171, v170);

          v295 = *&v348.a;
          v296 = v166;

          v297 = *&v337;

          specialized GraphicsContext.drawLayer(flags:content:)(32, v295, v296, v297, v336 & 0xFFFFFFFF0000FFFFLL);

          swift_bridgeObjectRelease_n();
          v44 = v17;
          v298 = v17;
          LOBYTE(v17) = v169;
          v299 = v169;
          v300 = 19;
          goto LABEL_213;
        case 20:
          if (!(v44 | v17))
          {
            goto LABEL_45;
          }

          if (v44 ^ 1 | v17)
          {
            v308 = *v339;

            v309 = *&v337;

            specialized GraphicsContext.drawLayer(flags:content:)(0, v308, v30, v309, v336 & 0xFFFFFFFF0000FFFFLL);

            swift_bridgeObjectRelease_n();
LABEL_46:
            v56 = v335;
          }

          else
          {
            v210 = v43;
            v341.a = *v339;

            GraphicsContext.copyOnWrite()();
            v211 = *&v341.a;
            RBDrawingStateGetCTM();
            a = v348.a;
            b = v348.b;
            c = v348.c;
            v215 = v348.d;
            v216 = v348.tx;
            ty = v348.ty;
            v218 = CGAffineTransformIsIdentity(&v348);
            v56 = v335;
            if (!v218)
            {
              v348.a = 1.0;
              v348.b = 0.0;
              v348.c = 0.0;
              v348.d = 1.0;
              v348.tx = 0.0;
              v348.ty = 0.0;
              RBDrawingStateSetCTM();
              v348.a = a;
              v348.b = b;
              v348.c = c;
              v348.d = v215;
              v348.tx = v216;
              v348.ty = ty;
              RBDrawingStateAddAffineTransformStyle();
            }

            v43 = *&v337;

            specialized GraphicsContext.drawLayer(flags:content:)(32, v211, v30, v43, v336 & 0xFFFFFFFF0000FFFFLL);

            swift_bridgeObjectRelease_n();
            LOBYTE(v43) = v210;
          }

          goto LABEL_47;
        default:
LABEL_45:
          v348.a = v337;
          LOWORD(v348.b) = v336;
          HIDWORD(v348.b) = v334;
          DisplayList.GraphicsRenderer.render(list:in:)(&v348, v339);

          goto LABEL_46;
      }
    }

    switch(*(&v364 + 1) >> 60)
    {
      case 1:
        v87 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v88 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v89 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v90 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x24);
        v91 = *a2;
        origin = v363.origin;
        v93 = v363.size;
        outlined init with copy of DisplayList.Item(&v363, &v348);
        outlined init with copy of DisplayList.Item(&v363, &v348);
        v369.origin = origin;
        v369.size = v93;
        if (CGRectIsNull(v369))
        {
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v98 = 6;
        }

        else
        {
          v98 = 0;
          v95 = *&origin.y;
          v94 = *&origin.x;
          v97 = *&v93.height;
          v96 = *&v93.width;
        }

        *&v355[0] = v94;
        *(&v355[0] + 1) = v95;
        *&v355[1] = v96;
        *(&v355[1] + 1) = v97;
        LOBYTE(v355[2]) = v98;
        v348.a = v87;
        v348.b = v88;
        LODWORD(v348.c) = v89;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v348);
        v345 = v352;
        v346 = v353;
        v347 = v354;
        v343 = v350;
        v344[0] = v351[0];
        v344[1] = v351[1];
        v344[2] = v351[2];
        v341 = v348;
        v342 = v349;
        v267 = 256;
        if (!v90)
        {
          v267 = 0;
        }

        *&v358.a = v267;
        memset(&v358.b, 0, 33);
        GraphicsContext.draw(_:with:style:)(v355, &v341, &v358, v91);
        outlined consume of Path.Storage(v94, v95, v96, v97, v98);
        outlined destroy of DisplayList.Item(&v363);
        goto LABEL_232;
      case 2:
        v338 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v70 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v71 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v72 = *a2;
        v366[0] = *a2;
        v3 = *(v71 + 16);
        if (!v3)
        {
          outlined init with copy of DisplayList.Item(&v363, &v348);
          outlined init with copy of DisplayList.Item(&v363, &v348);

          goto LABEL_180;
        }

        v73 = v363.size;
        outlined init with copy of DisplayList.Item(&v363, &v348);
        outlined init with copy of DisplayList.Item(&v363, &v348);

        if (v3 <= *(v71 + 16))
        {
          v17 = v71 + (v3 << 7) - 96;
          while (1)
          {
            v350 = *(v17 + 64);
            v351[0] = *(v17 + 80);
            v351[1] = *(v17 + 96);
            *(&v351[1] + 12) = *(v17 + 108);
            v348 = *v17;
            v349 = *(v17 + 48);
            GraphicsContext.addFilter(_:in:)(&v348, 0.0, 0.0, v73.width, v73.height);
            if (!--v3)
            {
              break;
            }

            v17 -= 128;
            if (v3 > *(v71 + 16))
            {
              goto LABEL_72;
            }
          }

          v72 = *&v366[0];
LABEL_180:
          v277 = v363.origin;
          v278 = v363.size;
          if (CGRectIsNull(v363))
          {
            v279 = 0;
            v280 = 0;
            v281 = 0;
            v282 = 0;
            v283 = 6;
          }

          else
          {
            v283 = 0;
            v280 = *&v277.y;
            v279 = *&v277.x;
            v282 = *&v278.height;
            v281 = *&v278.width;
          }

          *&v355[0] = v279;
          *(&v355[0] + 1) = v280;
          *&v355[1] = v281;
          *(&v355[1] + 1) = v282;
          LOBYTE(v355[2]) = v283;
          *&v348.a = v338;
          LODWORD(v348.c) = v70;
          _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v348);
          v345 = v352;
          v346 = v353;
          v347 = v354;
          v343 = v350;
          v344[0] = v351[0];
          v344[1] = v351[1];
          v344[2] = v351[2];
          v341 = v348;
          v342 = v349;
          *&v358.a = 256;
          memset(&v358.b, 0, 33);
          GraphicsContext.draw(_:with:style:)(v355, &v341, &v358, v72);
          outlined consume of Path.Storage(v279, v280, v281, v282, v283);

          goto LABEL_230;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        *&v333 = v17;
        v74 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v75 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        LODWORD(v334) = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v76 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v77 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v78 = *(v3 + 96);
        *(v3 + 96) = 0;
        LODWORD(v338.width) = v78;
        v79 = *a2;
        v80 = *(*a2 + 24);
        outlined init with copy of DisplayList.Item(&v363, &v348);

        v336 = v80;
        v81 = RBDrawingStateBeginLayer();
        type metadata accessor for GraphicsContext.Storage();
        v82 = swift_allocObject();
        *(v82 + 32) = xmmword_18DD85500;
        *(v82 + 48) = 1065353216;
        *(v82 + 56) = 0x7FF8000000000000;
        v83 = *(*&v79 + 16);
        v84 = *(v83 + 64);
        v85 = RBDrawingStateGetDefaultColorSpace();
        v339 = v81;
        v337 = v79;
        if (v84 == v85)
        {
          *(v82 + 16) = v83;
        }

        else
        {
          v245 = v74;
          v332 = *&v3;
          v246 = RBDrawingStateGetDisplayList();
          v247 = *(*&v79 + 32);
          v248 = *(*&v79 + 40);
          v249 = *&v247;
          v250 = *&v248;
          if (v247 == 1)
          {
            v249 = *(v83 + 48);
            v250 = *(v83 + 56);
          }

          v348.a = v249;
          v348.b = v250;
          type metadata accessor for GraphicsContext.Storage.Shared();
          swift_allocObject();
          outlined copy of EnvironmentValues?(v247, v248);
          *(v82 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v246, &v348);
          v3 = *&v332;
          v74 = v245;
          v81 = v339;
        }

        *(v82 + 24) = v81;
        *(v82 + 64) = 0;
        *&v341.a = v82;
        v251 = v363.origin;

        if (v251.x != 0.0 || (v253 = v82, v251.y != 0.0))
        {
          GraphicsContext.copyOnWrite()();
          v253 = *&v341.a;
          RBDrawingStateTranslateCTM();
        }

        v254 = v3;
        v256 = *(v3 + 48);
        v255 = *(v3 + 56);
        v257 = fmax(round(GraphicsContext.userToDeviceScale.getter(v253, v252)), 1.0);
        swift_beginAccess();
        v258 = v254;
        v259 = *(v254 + 16);
        v260 = *(v259 + 16);
        v335 = v74;
        if (v260 && (v261 = specialized __RawDictionaryStorage.find<A>(_:)(v256, v255, v333, v257), (v262 & 1) != 0))
        {
          v263 = *(*(v259 + 56) + 8 * v261);
          swift_endAccess();
          swift_unknownObjectRetain();
          v264 = v333;
        }

        else
        {
          swift_endAccess();
          v264 = v333;
          v263 = closure #1 in implicit closure #1 in closure #3 in DisplayList.GraphicsRenderer.render(item:in:)(&v341, v257, v76, v77, v256, v255, v333, v74, v75);
        }

        swift_beginAccess();
        swift_unknownObjectRetain();
        v265 = swift_isUniquelyReferenced_nonNull_native();
        v358.a = *(v258 + 32);
        *(v258 + 32) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v263, v256, v255, v264, v265, v257);
        *(v258 + 32) = v358.a;
        swift_endAccess();
        RBDrawingStateDrawDisplayList();

        swift_unknownObjectRelease();
        RBDrawingStateDrawLayer();

        outlined destroy of DisplayList.Item(&v363);

        *(v258 + 96) = LOBYTE(v338.width);
        break;
      case 3:
        v105 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v349 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v350 = v105;
        v351[0] = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *(v351 + 12) = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v106 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v348.a = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v348.c = v106;
        v107 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *&v348.tx = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v108 = *a2;
        v109 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v110 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v342 = v107;
        v343 = v109;
        v344[0] = v110;
        *(v344 + 12) = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v111 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v341.a = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v341.c = v111;
        *&v341.tx = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v112 = v363.origin;
        v113 = v363.size;
        v356 = 0;
        memset(v355, 0, sizeof(v355));
        v357 = -1;
        outlined init with copy of DisplayList.Item(&v363, &v358);
        outlined init with copy of GraphicsImage(&v348, &v358);
        GraphicsContext.draw(_:in:style:shading:)(&v341, 256, v355, v108, v112.x, v112.y, v113.width, v113.height);
        outlined destroy of GraphicsImage(&v348);
        goto LABEL_232;
      case 4:
        v120 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v358.a = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v358.c = v120;
        LOBYTE(v358.tx) = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v121 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v122 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v123 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x41);
        v338 = v363.size;
        v124 = v363.origin.y == 0.0 && v363.origin.x == 0.0;
        outlined init with copy of DisplayList.Item(&v363, &v348);
        if (!v124)
        {
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        v275 = 256;
        if (!v123)
        {
          v275 = 0;
        }

        *&v348.a = v275 | v122;
        memset(&v348.b, 0, 33);
        v276 = *a2;
        *&v341.a = 0uLL;
        *&v341.c = v338;
        LOBYTE(v341.tx) = 0;
        (*(*v121 + 80))(&v358, &v348, v276, &v341);
        if (v124)
        {
          goto LABEL_232;
        }

        goto LABEL_219;
      case 5:
        v99 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v100 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v101 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v102 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v103 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v104 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v341.a = *a2;
        if (v363.origin.x - v99 == 0.0 && v363.origin.y - v100 == 0.0)
        {
          outlined init with copy of DisplayList.Item(&v363, &v348);
          outlined init with copy of DisplayList.Item(&v363, &v348);
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v363, &v348);
          outlined init with copy of DisplayList.Item(&v363, &v348);

          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        memset(&v348, 0, 32);
        LOBYTE(v348.tx) = 1;

        v266.n128_u32[0] = v104;
        specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v103, v101, 0, 0, &v341, &v348, v101, v266, v102);

        outlined destroy of DisplayList.Item(&v363);

        goto LABEL_232;
      case 6:
        v130 = v3;
        v131 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v132 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v133 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        v134 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v341.a = *a2;
        if (v363.origin.x == 0.0 && v363.origin.y == 0.0)
        {
          outlined init with copy of DisplayList.Item(&v363, &v348);
          outlined init with copy of DisplayList.Item(&v363, &v348);
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v363, &v348);
          outlined init with copy of DisplayList.Item(&v363, &v348);

          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        outlined init with copy of DisplayList.Item(&v363, &v348);

        specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v134, v131, v132 | (v133 << 32), v130, 0, 0, &v341, &v363, v268);
        outlined destroy of DisplayList.Item(&v363);
        outlined destroy of DisplayList.Item(&v363);

        goto LABEL_231;
      case 7:
        v86 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v355[0] = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v355[1] = v86;
        LOBYTE(v355[2]) = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v338.width = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        LODWORD(v337) = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x68);
        v366[0] = *a2;
        if (v363.origin.x == 0.0 && v363.origin.y == 0.0)
        {
          outlined init with copy of DisplayList.Item(&v363, &v348);
          outlined init with copy of DisplayList.Item(&v363, &v348);
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v363, &v348);
          outlined init with copy of DisplayList.Item(&v363, &v348);

          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        GraphicsContext.copyOnWrite()();
        v240 = *&v366[0];
        if (*(*(*&v366[0] + 16) + 64) != 2)
        {
          RBColorFromLinear();
        }

        RBDrawingStateAddShadowStyle3();
        __asm { FMOV            V0.4S, #1.0 }

        *&v348.a = _Q0;
        LODWORD(v348.c) = 2143289344;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v348);
        v345 = v352;
        v346 = v353;
        v347 = v354;
        v343 = v350;
        v344[0] = v351[0];
        v344[1] = v351[1];
        v344[2] = v351[2];
        v341 = v348;
        v342 = v349;
        *&v358.a = 256;
        memset(&v358.b, 0, 33);
        GraphicsContext.draw(_:with:style:)(v355, &v341, &v358, v240);
        goto LABEL_230;
      case 8:
        v125 = v3;
        v126 = outlined init with copy of AnyTrackedValue((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 16, &v341);
        MEMORY[0x1EEE9AC00](v126);
        *(&v329 - 4) = &v363;
        *(&v329 - 3) = &v341;
        v327 = v3;
        v127 = *(v3 + 96);
        *(v3 + 96) = 0;
        if (v127)
        {
          v128 = 0;
        }

        else
        {
          v128 = 16;
        }

        v129 = *a2;
        outlined init with copy of DisplayList.Item(&v363, &v348);
        GraphicsContext.drawLayer(flags:content:)(v128, partial apply for closure #2 in DisplayList.GraphicsRenderer.render(item:in:), (&v329 - 6), v129);
        *(v125 + 96) = v127;
        goto LABEL_148;
      case 9:
        v67 = v3;
        outlined init with copy of AnyTrackedValue((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 16, &v341);
        v68 = v363.size;
        v69 = v363.origin.y == 0.0 && v363.origin.x == 0.0;
        outlined init with copy of DisplayList.Item(&v363, &v348);
        if (!v69)
        {
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        v238 = v341.d;
        v239 = v341.tx;
        __swift_project_boxed_opaque_existential_1(&v341, *&v341.d);
        (*(*&v239 + 32))(*a2, v67, COERCE_CGFLOAT(*&v238), COERCE_CGFLOAT(*&v239), v68.width, v68.height);
        if (!v69)
        {
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

LABEL_148:
        __swift_destroy_boxed_opaque_existential_1(&v341);
        goto LABEL_232;
      case 0xALL:
        goto LABEL_73;
      case 0xBLL:
        v332 = *&v3;
        v114 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v115 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v116 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        v117 = v363.origin.x - *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v118 = v363.origin.y - *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        if ((*((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x38) & 0x80) != 0)
        {
          LODWORD(v338.width) = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v269 = *a2;
          v270 = *(*a2 + 24);
          outlined init with copy of DisplayList.Item(&v363, &v348);

          v271 = RBDrawingStateBeginLayer();
          type metadata accessor for GraphicsContext.Storage();
          v272 = swift_allocObject();
          *(v272 + 32) = xmmword_18DD85500;
          *(v272 + 48) = 1065353216;
          *(v272 + 56) = 0x7FF8000000000000;
          v273 = v269[2];
          v274 = *(v273 + 64);
          if (v274 == RBDrawingStateGetDefaultColorSpace())
          {
            *(v272 + 16) = v273;
          }

          else
          {
            v337 = v270;
            LODWORD(v339) = v116;
            v336 = RBDrawingStateGetDisplayList();
            v304 = v269[4];
            v305 = v269[5];
            v306 = *&v304;
            v307 = *&v305;
            if (v304 == 1)
            {
              v306 = *(v273 + 48);
              v307 = *(v273 + 56);
            }

            v348.a = v306;
            v348.b = v307;
            type metadata accessor for GraphicsContext.Storage.Shared();
            swift_allocObject();
            outlined copy of EnvironmentValues?(v304, v305);
            *(v272 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v336, &v348);
            v116 = v339;
          }

          *(v272 + 24) = v271;
          *(v272 + 64) = 0;
          *&v341.a = v272;

          if (v117 != 0.0 || v118 != 0.0)
          {
            GraphicsContext.copyOnWrite()();
            RBDrawingStateTranslateCTM();
          }

          v348.a = v114;
          LOWORD(v348.b) = LOWORD(v338.width);
          HIDWORD(v348.b) = v116;
          DisplayList.GraphicsRenderer.render(list:in:)(&v348, &v341.a);

          RBDrawingStateDrawLayer();

          goto LABEL_231;
        }

        v119 = v118 == 0.0 && v117 == 0.0;
        outlined init with copy of DisplayList.Item(&v363, &v348);
        if (!v119)
        {
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        v348.a = v114;
        LOWORD(v348.b) = v115;
        HIDWORD(v348.b) = v116;
        DisplayList.GraphicsRenderer.render(list:in:)(&v348, a2);
        if (v119)
        {
          goto LABEL_232;
        }

        goto LABEL_219;
      case 0xCLL:
        v63 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v64 = v363.origin.x - *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v65 = v363.origin.y - *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if ((*((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30) & 0x80) != 0)
        {
          v234 = *(v3 + 96);
          *(v3 + 96) = 0;
          if (v234)
          {
            v235 = 0;
          }

          else
          {
            v235 = 16;
          }

          v236 = v3;
          v237 = *a2;
          outlined init with copy of DisplayList.Item(&v363, &v348);
          swift_unknownObjectRetain();
          specialized GraphicsContext.drawLayer(flags:content:)(v235, v237, v63, v64, v65);
          swift_unknownObjectRelease();
          *(v236 + 96) = v234;
        }

        else
        {
          v66 = v65 == 0.0 && v64 == 0.0;
          outlined init with copy of DisplayList.Item(&v363, &v348);
          if (!v66)
          {
            GraphicsContext.copyOnWrite()();
            RBDrawingStateTranslateCTM();
          }

          RBDrawingStateDrawDisplayList2();
          if (!v66)
          {
LABEL_219:
            GraphicsContext.copyOnWrite()();
            RBDrawingStateTranslateCTM();
          }
        }

        goto LABEL_232;
      case 0xDLL:
        return;
      case 0xELL:
        goto LABEL_232;
      default:
        v338 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x14);
        v18 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x24);
        v19 = *((*(&v364 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v20 = *a2;
        *v355 = *a2;
        v3 = *(v19 + 16);
        if (v3)
        {
          v21 = v363.size;
          outlined init with copy of DisplayList.Item(&v363, &v348);
          outlined init with copy of DisplayList.Item(&v363, &v348);

          v16 = *(v19 + 16);
          if (v3 > v16)
          {
LABEL_9:
            __break(1u);
            goto LABEL_10;
          }

          v22 = v19 + (v3 << 7) - 96;
          while (1)
          {
            v350 = *(v22 + 64);
            v351[0] = *(v22 + 80);
            v351[1] = *(v22 + 96);
            *(&v351[1] + 12) = *(v22 + 108);
            v348 = *v22;
            v349 = *(v22 + 48);
            GraphicsContext.addFilter(_:in:)(&v348, 0.0, 0.0, v21.width, v21.height);
            if (!--v3)
            {
              break;
            }

            v16 = *(v19 + 16);
            v22 -= 128;
            if (v3 > v16)
            {
              goto LABEL_9;
            }
          }

          v20 = *&v355[0];
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v363, &v348);
          outlined init with copy of DisplayList.Item(&v363, &v348);
        }

        v284 = v363.origin;
        v285 = v363.size;
        IsNull = CGRectIsNull(v363);

        _ZF = !IsNull;
        if (IsNull)
        {
          v288 = 0.0;
        }

        else
        {
          v288 = v284.x;
        }

        if (IsNull)
        {
          v289 = 0.0;
        }

        else
        {
          v289 = v284.y;
        }

        v358.a = v288;
        v358.b = v289;
        if (_ZF)
        {
          v290 = v285.width;
        }

        else
        {
          v290 = 0.0;
        }

        if (_ZF)
        {
          v291 = v285.height;
        }

        else
        {
          v291 = 0.0;
        }

        v358.c = v290;
        v358.d = v291;
        if (_ZF)
        {
          v292 = 0;
        }

        else
        {
          v292 = 6;
        }

        LOBYTE(v358.tx) = v292;
        *&v348.a = v338;
        LODWORD(v348.c) = v18;
        BYTE8(v350) = 0;
        *&v341.a = 256;
        memset(&v341.b, 0, 33);
        GraphicsContext.draw(_:with:style:)(&v358.a, &v348, &v341, v20);
        outlined consume of Path.Storage(*&v288, *&v289, *&v290, *&v291, v292);
LABEL_230:
        outlined destroy of DisplayList.Item(&v363);
LABEL_231:

LABEL_232:
        outlined destroy of DisplayList.Item(&v363);
        return;
    }
  }
}