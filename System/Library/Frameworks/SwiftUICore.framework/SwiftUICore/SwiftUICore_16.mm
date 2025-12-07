uint64_t getEnumTagSinglePayload for CountViews(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ValueActionDispatcher<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ValueActionDispatcher<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void static EnvironmentalModifier.makeResolvedModifier(modifier:inputs:fields:)(_DWORD *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a3;
  v11 = *a5;
  v12 = *(a5 + 8);
  v13 = *(a5 + 16);
  v14 = *(a5 + 20);
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(47);

    v30 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v30);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = v14;
    if ((v14 & 2) != 0)
    {
      outlined copy of DynamicPropertyCache.Fields.Layout(v11, v12, v13);
      v17 = v13;
      v18 = v11;
    }

    else
    {
      v31 = v10;
      v16 = *(a7 + 40);
      outlined copy of DynamicPropertyCache.Fields.Layout(v11, v12, v13);
      v17 = v13;
      v18 = v11;
      v19 = v16(a6, a7);
      v10 = v31;
      if ((v19 & 1) == 0)
      {
        if (one-time initialization token for v4 != -1)
        {
          swift_once();
        }

        v20 = static Semantics.v4;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C)
        {
          v21 = dyld_program_sdk_at_least();
        }

        else
        {
          v21 = static Semantics.forced >= v20;
        }

        if (v15)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        v15 |= v22;
      }
    }

    v23 = *(a4 + 16);
    swift_beginAccess();
    v24 = *(v23 + 16);
    (*(a7 + 48))(a6, a7);
    v38[0] = v10;
    v38[1] = EnvironmentalBodyAccessor.init(environment:tracksDependencies:)(v24);
    v39 = v25;
    v40 = v26 & 1;
    v34 = v18;
    v35 = v12;
    v36 = v17;
    v37 = v15;
    v28 = type metadata accessor for EnvironmentalBodyAccessor(0, a6, a7, v27);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentalBodyAccessor<A>, v28);
    BodyAccessor.makeBody(container:inputs:fields:)(a1, a2, v38, a4, &v34, v28, v29);
    outlined consume of DynamicPropertyCache.Fields.Layout(v34, v35, v36);
  }
}

uint64_t EnvironmentalBodyAccessor.init(environment:tracksDependencies:)(uint64_t a1)
{
  type metadata accessor for PropertyList.Tracker();
  v2 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>(0, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v7;
  v8 = MEMORY[0x1E69E7CC0];
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = 0;
  *(v2 + 16) = v6;
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for EnvironmentalBodyAccessor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for DynamicBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *Environment.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  EnvironmentObjectKey.init()();
  KeyPath = swift_getKeyPath();
  Environment.init(_:)(KeyPath, v5, v6, &v8);
  return v8;
}

double View.colorScheme(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);

  return result;
}

void EnvironmentValues.sizeCategory.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(v3);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 3;
    }
  }

  *a1 = v4;
}

uint64_t one-time initialization function for top()
{
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.center;
  if (one-time initialization token for top != -1)
  {
    result = swift_once();
  }

  static Alignment.top = v0;
  *algn_1ED52CE58 = static VerticalAlignment.top;
  return result;
}

uint64_t assignWithCopy for AnyTransition.RemovalVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *initializeWithCopy for ValueTransactionSeed(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  if ((*(v7 + 48))(v10 & ~v8, 1, v6))
  {
    if (*(v7 + 84))
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = *(v7 + 64) + 1;
    }

    memcpy((v9 & ~v8), (v10 & ~v8), v11);
  }

  else
  {
    (*(v7 + 16))(v9 & ~v8, v10 & ~v8, v6);
    (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithCopy for _OverlayModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

void specialized ColorProvider._apply(color:to:)(uint64_t a1, uint64_t a2)
{
  v11 = *(a2 + 24);
  if (v11 <= 2)
  {
    v48 = v10;
    v49 = v9;
    v50 = v8;
    v51 = v7;
    v52 = v6;
    v53 = v5;
    v54 = v2;
    v55 = v3;
    v56 = v4;
    v13 = *a2;
    if (v11)
    {
      if (v11 == 1)
      {
        v14 = *(a2 + 8);
        if (v14 == *(a2 + 16))
        {
          return;
        }

        v15 = *v2;
        v16 = *(v2 + 2);
        v17 = *(v2 + 3);
        v18 = *(v2 + 4);
        v19 = *(a2 + 56);
        v40 = *(a2 + 48);
        v41 = v19;
        v20 = *(*a1 + 168);

        v21 = v20(v14, &v40);

        v40 = v15;
        LODWORD(v41) = v16;
        *(&v41 + 1) = v17 * v21;
        v42 = v18;
        v43 = 0;
        v44 = 1065353216;
        v45 = 0;
        v46 = -1;
        v22 = MEMORY[0x1E69E7CC0];
        v47 = MEMORY[0x1E69E7CC0];
        v39 = v13;
        if (*(a2 + 40) == 1)
        {
          v22 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v40, &v39, v14);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v22;
        v24 = 1;
      }

      else
      {
        v32 = a1;
        if (v13 >= 1)
        {
          v33 = *(a2 + 56);
          v40 = *(a2 + 48);
          v41 = v33;
          v34 = *(*a1 + 168);

          v36 = v34(v13, &v40);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v32 = swift_allocObject();
          *(v32 + 16) = a1;
          *(v32 + 24) = v36;
        }

        v37 = *(a2 + 32);
        v38 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v37, v38);
        *(a2 + 32) = v32;
        v24 = 3;
      }

      *(a2 + 40) = v24;
    }

    else
    {
      v25 = a1;
      if (v13 >= 1)
      {
        v26 = *(a2 + 56);
        v40 = *(a2 + 48);
        v41 = v26;
        v27 = *(*a1 + 168);

        v29 = v27(v13, &v40);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v25 = swift_allocObject();
        *(v25 + 16) = a1;
        *(v25 + 24) = v29;
      }

      v30 = *(a2 + 32);
      v31 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v30, v31);
      *(a2 + 32) = v25;
      *(a2 + 40) = 0;
    }
  }
}

{
  v10 = *(a2 + 24);
  if (v10 <= 2)
  {
    v48 = v9;
    v49 = v8;
    v50 = v7;
    v51 = v6;
    v52 = v5;
    v53 = v4;
    v54 = v2;
    v55 = v3;
    v13 = *a2;
    if (v10)
    {
      if (v10 == 1)
      {
        v14 = *(a2 + 8);
        if (v14 == *(a2 + 16))
        {
          return;
        }

        v41 = *(a2 + 48);
        v15 = specialized Color.BackgroundColorProvider.resolve(in:)(&v41);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = *(a2 + 56);
        *&v41 = *(a2 + 48);
        *(&v41 + 1) = v22;
        v23 = *(*a1 + 168);

        v24 = v23(v14, &v41);

        *&v41 = __PAIR64__(v17, LODWORD(v15));
        DWORD2(v41) = v19;
        *(&v41 + 3) = v21 * v24;
        v42 = 2143289344;
        v43 = 0;
        v44 = 1065353216;
        v45 = 0;
        v46 = -1;
        v25 = MEMORY[0x1E69E7CC0];
        v47 = MEMORY[0x1E69E7CC0];
        v40 = v13;
        if (*(a2 + 40) == 1)
        {
          v25 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v26, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v41, &v40, v14);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v25;
        v27 = 1;
      }

      else
      {
        v34 = a1;
        if (v13 >= 1)
        {
          v35 = *(a2 + 56);
          *&v41 = *(a2 + 48);
          *(&v41 + 1) = v35;
          v36 = *(*a1 + 168);

          v37 = v36(v13, &v41);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v34 = swift_allocObject();
          *(v34 + 16) = a1;
          *(v34 + 24) = v37;
        }

        v38 = *(a2 + 32);
        v39 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v38, v39);
        *(a2 + 32) = v34;
        v27 = 3;
      }

      *(a2 + 40) = v27;
    }

    else
    {
      v28 = a1;
      if (v13 >= 1)
      {
        v29 = *(a2 + 56);
        *&v41 = *(a2 + 48);
        *(&v41 + 1) = v29;
        v30 = *(*a1 + 168);

        v31 = v30(v13, &v41);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v28 = swift_allocObject();
        *(v28 + 16) = a1;
        *(v28 + 24) = v31;
      }

      v32 = *(a2 + 32);
      v33 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v32, v33);
      *(a2 + 32) = v28;
      *(a2 + 40) = 0;
    }
  }
}

{
  v6 = *(a2 + 24);
  if (v6 <= 2)
  {
    v43 = v5;
    v44 = v4;
    v45 = v2;
    v46 = v3;
    v9 = *a2;
    if (v6)
    {
      if (v6 == 1)
      {
        v10 = *(a2 + 8);
        if (v10 == *(a2 + 16))
        {
          return;
        }

        v11 = *(a2 + 56);
        v35 = *(a2 + 48);
        v36 = v11;
        v12 = *(*a1 + 168);

        v13 = v12(v10, &v35);

        __asm { FMOV            V0.2S, #-1.0 }

        v35 = _D0;
        LODWORD(v36) = -1082130432;
        *(&v36 + 1) = v13;
        v37 = 2143289344;
        v38 = 0;
        v39 = 1065353216;
        v40 = 0;
        v41 = -1;
        v19 = MEMORY[0x1E69E7CC0];
        v42 = MEMORY[0x1E69E7CC0];
        v34 = v9;
        if (*(a2 + 40) == 1)
        {
          v19 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v20, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v35, &v34, v10);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v19;
        v21 = 1;
      }

      else
      {
        v28 = a1;
        if (v9 >= 1)
        {
          v29 = *(a2 + 56);
          v35 = *(a2 + 48);
          v36 = v29;
          v30 = *(*a1 + 168);

          v31 = v30(v9, &v35);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v28 = swift_allocObject();
          *(v28 + 16) = a1;
          *(v28 + 24) = v31;
        }

        v32 = *(a2 + 32);
        v33 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v32, v33);
        *(a2 + 32) = v28;
        v21 = 3;
      }

      *(a2 + 40) = v21;
    }

    else
    {
      v22 = a1;
      if (v9 >= 1)
      {
        v23 = *(a2 + 56);
        v35 = *(a2 + 48);
        v36 = v23;
        v24 = *(*a1 + 168);

        v25 = v24(v9, &v35);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v22 = swift_allocObject();
        *(v22 + 16) = a1;
        *(v22 + 24) = v25;
      }

      v26 = *(a2 + 32);
      v27 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v26, v27);
      *(a2 + 32) = v22;
      *(a2 + 40) = 0;
    }
  }
}

{
  if (*(a2 + 24) > 2u)
  {
    return;
  }

  v4 = *a2;
  if (!*(a2 + 24))
  {
    goto LABEL_6;
  }

  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 8) == *(a2 + 16))
    {
      return;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_6:
    v5 = a1;
    if (v4 >= 1)
    {
      v6 = *(a2 + 56);
      v17 = *(a2 + 48);
      v18 = v6;
      v7 = *(*a1 + 168);

      v8 = v7(v4, &v17);

      type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      *(v5 + 24) = v8;
    }

    v9 = *(a2 + 32);
    v10 = *(a2 + 40);

    outlined consume of _ShapeStyle_Shape.Result(v9, v10);
    *(a2 + 32) = v5;
    *(a2 + 40) = 0;
    return;
  }

  v11 = a1;
  if (v4 >= 1)
  {
    v12 = *(a2 + 56);
    v17 = *(a2 + 48);
    v18 = v12;
    v13 = *(*a1 + 168);

    v14 = v13(v4, &v17);

    type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v14;
  }

  v15 = *(a2 + 32);
  v16 = *(a2 + 40);

  outlined consume of _ShapeStyle_Shape.Result(v15, v16);
  *(a2 + 32) = v11;
  *(a2 + 40) = 3;
}

{
  v10 = *(a2 + 24);
  if (v10 <= 2)
  {
    v56 = v9;
    v57 = v8;
    v58 = v7;
    v59 = v6;
    v60 = v5;
    v61 = v4;
    v62 = v2;
    v63 = v3;
    v12 = *a2;
    if (v10)
    {
      if (v10 == 1)
      {
        v13 = *(a2 + 8);
        if (v13 == *(a2 + 16))
        {
          return;
        }

        v15 = *(a2 + 48);
        v16 = *(a2 + 56);
        v48 = v15;
        v49 = v16;
        v17 = EnvironmentValues.currentForegroundStyle.getter();
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          if (one-time initialization token for sharedPrimary != -1)
          {
            swift_once();
          }

          v18 = static HierarchicalShapeStyle.sharedPrimary;
        }

        v34 = specialized ShapeStyle.fallbackColor(in:level:)(v15, v16, 0, v18);

        if (!v34)
        {
          if (one-time initialization token for primary != -1)
          {
            swift_once();
          }

          v34 = static Color.primary;
        }

        v48 = v15;
        v49 = v16;
        v35 = (*(*v34 + 112))(&v48);
        v37 = v36;
        v39 = v38;
        v41 = v40;

        v42 = *(a2 + 56);
        v48 = *(a2 + 48);
        v49 = v42;
        v43 = *(*a1 + 168);

        v44 = v43(v13, &v48);

        v48 = __PAIR64__(v37, LODWORD(v35));
        LODWORD(v49) = v39;
        *(&v49 + 1) = v41 * v44;
        v50 = 2143289344;
        v51 = 0;
        v52 = 1065353216;
        v53 = 0;
        v54 = -1;
        v45 = MEMORY[0x1E69E7CC0];
        v55 = MEMORY[0x1E69E7CC0];
        v47 = v12;
        if (*(a2 + 40) == 1)
        {
          v45 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v46, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v48, &v47, v13);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v45;
        v33 = 1;
      }

      else
      {
        v26 = a1;
        if (v12 >= 1)
        {
          v27 = *(a2 + 56);
          v48 = *(a2 + 48);
          v49 = v27;
          v28 = *(*a1 + 168);

          v30 = v28(v12, &v48);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v26 = swift_allocObject();
          *(v26 + 16) = a1;
          *(v26 + 24) = v30;
        }

        v31 = *(a2 + 32);
        v32 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v31, v32);
        *(a2 + 32) = v26;
        v33 = 3;
      }

      *(a2 + 40) = v33;
    }

    else
    {
      v19 = a1;
      if (v12 >= 1)
      {
        v20 = *(a2 + 56);
        v48 = *(a2 + 48);
        v49 = v20;
        v21 = *(*a1 + 168);

        v23 = v21(v12, &v48);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v19 = swift_allocObject();
        *(v19 + 16) = a1;
        *(v19 + 24) = v23;
      }

      v24 = *(a2 + 32);
      v25 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v24, v25);
      *(a2 + 32) = v19;
      *(a2 + 40) = 0;
    }
  }
}

double key path setter for EnvironmentValues.colorScheme : EnvironmentValues, serialized(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019ExplicitColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v4, *a2);
  }

  return result;
}

uint64_t assignWithCopy for _OverlayShapeModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40);
  v15 = (v14 + v12);
  v16 = (v14 + v13);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

uint64_t static _ValueActionModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), const char *a8, uint64_t a9)
{
  v28[1] = a4;
  v29 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v12 = a7(255, a5, a6);
  swift_getWitnessTable(a8, v12);
  v14 = v13;
  v16 = type metadata accessor for ValueActionDispatcher(0, v12, v13, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v28 - v18;
  v20 = *a1;
  v44 = *a2;
  v45 = *(a2 + 2);
  LODWORD(a1) = *(a2 + 6);
  v21 = *(a2 + 44);
  v40 = *(a2 + 28);
  v41 = v21;
  v42 = *(a2 + 60);
  v43 = *(a2 + 76);
  v22 = ValueActionDispatcher.init(modifier:phase:)(v20, a1, v12, v14, v28 - v18);
  v31 = v16;
  swift_getWitnessTable(protocol conformance descriptor for ValueActionDispatcher<A>, v16, v22);
  v32 = v23;
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, a9, v30, v16, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  (*(v17 + 8))(v19, v16);
  v26 = AGGraphSetFlags();
  v33 = v44;
  v34 = v45;
  v35 = a1;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  return v29(v26, &v33);
}

void lazy protocol witness table accessor for type ColorView and conformance ColorView()
{
  if (!lazy protocol witness table cache variable for type ColorView and conformance ColorView)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorView, &type metadata for ColorView, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorView and conformance ColorView);
  }
}

{
  if (!lazy protocol witness table cache variable for type ColorView and conformance ColorView)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorView, &type metadata for ColorView, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorView and conformance ColorView);
  }
}

{
  if (!lazy protocol witness table cache variable for type ColorView and conformance ColorView)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorView, &type metadata for ColorView, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorView and conformance ColorView);
  }
}

uint64_t View.onChange<A>(of:initial:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a4;
  v41 = a9;
  v42 = a3;
  v40 = a2;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for _ValueActionModifier2(0, v18, v19, v17);
  v36 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v38 = type metadata accessor for ModifiedContent(0, a5, v20, v23);
  v39 = *(v38 - 8);
  v24 = MEMORY[0x1EEE9AC00](v38);
  v26 = &v36 - v25;
  (*(v14 + 16))(v16, a1, a6, v24);
  v27 = swift_allocObject();
  *(v27 + 2) = a5;
  *(v27 + 3) = a6;
  *(v27 + 4) = a7;
  *(v27 + 5) = a8;
  v28 = v37;
  *(v27 + 6) = v42;
  *(v27 + 7) = v28;
  (*(v14 + 32))(v22, v16, a6);
  v29 = &v22[*(v20 + 36)];
  *v29 = partial apply for closure #1 in View.onChange<A>(of:initial:_:);
  v29[1] = v27;
  View.modifier<A>(_:)();
  v30 = *(v36 + 8);

  v30(v22, v20);
  v31 = 0;
  v32 = 0;
  if (v40)
  {

    v31 = v42;
    v32 = v28;
  }

  v43[2] = v31;
  v43[3] = v32;
  v43[4] = 0;
  v43[5] = 0;
  v43[0] = a7;
  v43[1] = &protocol witness table for _ValueActionModifier2<A>;
  v33 = v38;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v38, v43);
  View.modifier<A>(_:)();
  v34 = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v31, v32);
  return (*(v39 + 8))(v26, v33, v34);
}

uint64_t sub_18D100F38()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _ConditionalContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for _ConditionalContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t LocationBox.update()(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v3 + 184);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(*(v3 + 176) + 64))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

uint64_t View.onChange<A>(of:initial:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a7;
  v54 = a3;
  v55 = a4;
  v49 = a2;
  v53 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = v12;
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v14;
  v17 = type metadata accessor for _ValueActionModifier2(0, v16, v14, v15);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v22 = type metadata accessor for ModifiedContent(0, a5, v17, v21);
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - v24;
  v26 = *(v11 + 16);
  v44 = a1;
  v41 = v26;
  (v26)(v13, a1, a6, v23);
  v43 = v11;
  v42 = *(v11 + 32);
  v42(v20, v13, a6);
  v27 = &v20[*(v17 + 36)];
  v28 = v55;
  *v27 = v54;
  v27[1] = v28;
  v50 = v25;
  v46 = a5;
  v29 = v48;
  View.modifier<A>(_:)();
  v30 = *(v18 + 8);

  v30(v20, v17);
  v31 = 0;
  v32 = 0;
  if (v49)
  {
    v41(v13, v44, a6);
    v33 = (*(v43 + 80) + 64) & ~*(v43 + 80);
    v32 = swift_allocObject();
    v34 = v47;
    *(v32 + 2) = v46;
    *(v32 + 3) = a6;
    *(v32 + 4) = v29;
    *(v32 + 5) = v34;
    v35 = v55;
    *(v32 + 6) = v54;
    *(v32 + 7) = v35;
    v42(&v32[v33], v13, a6);

    v31 = partial apply for closure #1 in View.onChange<A>(of:initial:_:);
  }

  v56[2] = v31;
  v56[3] = v32;
  v56[4] = 0;
  v56[5] = 0;
  v56[0] = v29;
  v56[1] = &protocol witness table for _ValueActionModifier2<A>;
  v36 = v52;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v52, v56);
  v37 = v50;
  View.modifier<A>(_:)();
  v38 = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v31, v32);
  return (*(v51 + 8))(v37, v36, v38);
}

uint64_t sub_18D101844()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t Binding.Box.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (*(v11 + 16) == *(a1 + 8))
    {
      goto LABEL_8;
    }

    v27 = v3;
    v26 = LocationBox.wasRead.getter();
  }

  else
  {
    v27 = v3;
    v26 = 0;
  }

  v12 = type metadata accessor for Binding.ScopedLocation(255, v5, v7, v8);
  swift_getWitnessTable(protocol conformance descriptor for Binding<A>.ScopedLocation, v12);
  type metadata accessor for LocationBox(0, v12, v13, v14);
  v15 = *(a1 + 8);
  v16 = *(*v15 + 96);
  v17 = swift_retain_n();
  LOBYTE(v12) = v16(v17);

  v28 = v15;
  v29 = v12 & 1;
  v18 = LocationBox.__allocating_init(_:)(&v28);

  *v27 = v18;
  if (v26)
  {
    LocationBox.wasRead.setter(1);
  }

  v11 = v18;
LABEL_8:
  v19 = LocationBox.update()(v10);

  *(a1 + 8) = v11;
  v22 = type metadata accessor for Binding(0, v5, v20, v21);
  (*(v6 + 24))(a1 + *(v22 + 32), v10, v5);
  if (v19)
  {
    v23 = LocationBox.wasRead.getter();
  }

  else
  {
    v23 = 0;
  }

  (*(v6 + 8))(v10, v5);
  return v23 & 1;
}

uint64_t sub_18D101B54(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t LocationBox.wasRead.getter()
{
  v1 = *v0;
  swift_beginAccess();
  LOBYTE(v1) = (*(*(v1 + 176) + 24))(*(v1 + 168));
  swift_endAccess();
  return v1 & 1;
}

uint64_t StoredLocation.update()(uint64_t a1)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v3 = 1;
    *(v1 + 24) = 1;
  }

  else
  {
    AGGraphGetValue();
    v3 = v4 & 1;
  }

  StoredLocationBase.updateValue.getter(a1);
  return v3;
}

double destroy for _GeometryActionModifier(uint64_t a1)
{

  return result;
}

uint64_t static Binding.constant(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConstantLocation(0, v9, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = *(v6 + 16);
  v20(v8, a1, a2, v17);
  CodableRawRepresentable.init(_:)(v8, a2, v19);
  (v20)(v8, a1, a2);
  swift_getWitnessTable(protocol conformance descriptor for ConstantLocation<A>, v12);
  type metadata accessor for LocationBox(0, v12, v21, v22);
  (*(v13 + 16))(v15, v19, v12);
  v23 = LocationBox.__allocating_init(_:)(v15);
  Binding.init(value:location:)(v8, v23, v24, v25, a3);
  return (*(v13 + 8))(v19, v12);
}

uint64_t LocationBox.deinit()
{
  (*(*(*(*v0 + 168) - 8) + 8))(v0 + *(*v0 + 184));

  return v0;
}

uint64_t LocationBox.__deallocating_deinit()
{
  LocationBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ValueCycleDetector(uint64_t a1)
{
  v3[4] = MEMORY[0x1E69E5D00] + 64;
  v3[5] = MEMORY[0x1E69E5D00] + 64;
  v3[6] = &unk_18DDB6A98;
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v3[7] = v3;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ValueCycleDetector.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v7 = *(v6 + 64);

  *a3 = v7;
  *(a3 + 4) = -1;
  *(a3 + 8) = 0;
  v9 = type metadata accessor for ValueCycleDetector(0, a1, a2, v8);
  return Stack3.init()(a1, a3 + *(v9 + 44));
}

uint64_t Stack3.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v5 = *(TupleTypeMetadata3 + 48);
  v6 = *(TupleTypeMetadata3 + 64);
  v8 = *(*(a1 - 8) + 56);
  v8(a2, 1, 1, a1);
  v8(a2 + v5, 1, 1, a1);

  return (v8)(a2 + v6, 1, 1, a1);
}

double closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    *a7 = MEMORY[0x1E69E7CC0];
    *(a7 + 8) = 0;
    *(a7 + 12) = Attribute;
  }

  else
  {
    _GraphValue.init(_:)(Attribute, &v19);
    v15 = *(a1 + 48);
    v17[2] = *(a1 + 32);
    v17[3] = v15;
    v17[4] = *(a1 + 64);
    v18 = *(a1 + 80);
    v16 = *(a1 + 16);
    v17[0] = *a1;
    v17[1] = v16;
    return static ViewModifier.makeImplicitRoot(modifier:inputs:body:)(&v19, v17, a3, a4, a5, a6, a7);
  }

  return result;
}

double static ViewModifier.makeImplicitRoot(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v13;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v14 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v14;
  v19 = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  static _ViewOutputs.multiView<A>(applying:inputs:body:)(&v19, v17, partial apply for closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:), v15, a5, a6, a7);

  return result;
}

uint64_t sub_18D102540()
{

  return swift_deallocObject();
}

uint64_t static _ViewOutputs.multiView<A>(applying:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = v10;
  v12 = *(a2 + 48);
  v35 = *(a2 + 64);
  v13 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v13;
  *&v29[40] = v33;
  *&v29[56] = v12;
  *&v29[72] = *(a2 + 64);
  *&v29[8] = v32[0];
  v14 = *a1;
  v36 = *(a2 + 80);
  v15 = *(a2 + 80);
  *&v29[24] = v11;
  *&v29[88] = v15;
  *v29 = v14;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  v31 = 0uLL;
  v16 = *&v32[0];
  outlined init with copy of _ViewInputs(v32, v28);

  v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v16);
  v19 = v18;
  v20 = *(v18 + 8);
  ModifiedRoot = type metadata accessor for MakeModifiedRoot(0, a5, a6, v21);
  result = v20(v29, ModifiedRoot, &protocol witness table for MakeModifiedRoot<A>, v17, v19);
  v24 = v31;
  if (v31)
  {
    v25 = DWORD2(v31);
    v26 = HIDWORD(*(&v31 + 1));
    v28[4] = *&v29[64];
    v28[5] = *&v29[80];
    v28[6] = v30;
    v28[7] = v31;
    v28[0] = *v29;
    v28[1] = *&v29[16];
    v28[2] = *&v29[32];
    v28[3] = *&v29[48];
    v27 = *(*(ModifiedRoot - 8) + 8);

    result = v27(v28, ModifiedRoot);
    *a7 = v24;
    *(a7 + 8) = v25;
    *(a7 + 12) = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static OptionalEdgeInsets.none.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
}

uint64_t destroy for Text.Style(uint64_t a1, int *a2)
{
  if (*a1 >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(a1 + 16));

  if ((*(a1 + 88) - 1) >= 2)
  {
  }

  if ((*(a1 + 104) - 1) >= 2)
  {
  }

  if (*(a1 + 176) != 1)
  {
  }

  if (*(a1 + 248) != 1)
  {
  }

  if (*(a1 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(a1 + 264), *(a1 + 272), *(a1 + 280));
  }

  v4 = a2[21];
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  if (!(*(*(v5 - 8) + 48))(a1 + v4, 2, v5))
  {
    v6 = type metadata accessor for Locale.Language();
    (*(*(v6 - 8) + 8))(a1 + v4, v6);
  }

  v7 = a2[23];
  v8 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v7, 1, v8))
  {
    (*(v9 + 8))(a1 + v7, v8);
  }

  v10 = a2[24];
  v11 = type metadata accessor for AttributedString.TextAlignment();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(a1 + v10, 1, v11))
  {
    (*(v12 + 8))(a1 + v10, v11);
  }

  v13 = a2[26];
  v14 = type metadata accessor for AttributedString.LineHeight();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(a1 + v13, 1, v14))
  {
    (*(v15 + 8))(a1 + v13, v14);
  }
}

void *CoreColorPlatformColorGetComponents(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = CoreColorClass(a1);
  if (result)
  {

    return [a2 getRed:a3 green:a4 blue:a5 alpha:a6];
  }

  return result;
}

unint64_t specialized Color.Resolved.init(platformColor:)(void *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0.0;
  v16[0] = 0.0;
  v13 = 0;
  v14 = 0.0;
  if (CoreColorPlatformColorGetComponents(0, a1, v16, &v15, &v14, &v13))
  {
    v1 = v16[0];
    v2 = v15;
    v3 = v14;
    if (v1 <= 0.0)
    {
      v4 = -v1;
    }

    else
    {
      v4 = v16[0];
    }

    if (v4 <= 0.04045)
    {
      v5 = v4 * 0.077399;
    }

    else
    {
      v5 = 1.0;
      if (v4 != 1.0)
      {
        v5 = powf((v4 * 0.94787) + 0.052133, 2.4);
      }
    }

    v7 = v3;
    if (v1 <= 0.0)
    {
      v8 = -v5;
    }

    else
    {
      v8 = v5;
    }

    if (v2 <= 0.0)
    {
      v9 = -v2;
    }

    else
    {
      v9 = v2;
    }

    if (v9 <= 0.04045)
    {
      v10 = v9 * 0.077399;
    }

    else
    {
      v10 = 1.0;
      if (v9 != 1.0)
      {
        v10 = powf((v9 * 0.94787) + 0.052133, 2.4);
      }
    }

    if (v2 <= 0.0)
    {
      v11 = -v10;
    }

    else
    {
      v11 = v10;
    }

    if (v7 <= 0.0)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }

    if (v12 <= 0.04045)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      if (v12 != 1.0)
      {
        powf((v12 * 0.94787) + 0.052133, 2.4);
      }
    }

    return LODWORD(v8) | (LODWORD(v11) << 32);
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t type metadata completion function for TypesettingLanguage(uint64_t a1)
{
  result = type metadata accessor for TypesettingLanguage.Storage(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for automatic(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for TypesettingLanguage(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, a3, 2, v7);
}

void *initializeWithCopy for TypesettingLanguage(void *a1, const void *a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 2, v4))
  {
    v7 = *(*(type metadata accessor for TypesettingLanguage.Storage(0) - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = type metadata accessor for Locale.Language();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    *(a1 + *(v5 + 48)) = *(a2 + *(v5 + 48));
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }
}

_BYTE *assignWithTake for TypesettingLanguage(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 2, v4);
  v9 = v7(a2, 2, v5);
  if (v8)
  {
    if (!v9)
    {
      v10 = type metadata accessor for Locale.Language();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      a1[*(v5 + 48)] = a2[*(v5 + 48)];
      (*(v6 + 56))(a1, 0, 2, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      v13 = type metadata accessor for Locale.Language();
      (*(*(v13 - 8) + 40))(a1, a2, v13);
      a1[*(v5 + 48)] = a2[*(v5 + 48)];
      return a1;
    }

    outlined destroy of (CFStringRef, String)(a1, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  }

  v11 = *(*(type metadata accessor for TypesettingLanguage.Storage(0) - 8) + 64);

  return memcpy(a1, a2, v11);
}

void type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags))
  {
    type metadata accessor for Locale.Language();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags));
    }
  }
}

char *initializeWithCopy for TypesettingConfiguration(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for Locale.Language();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    a1[*(v7 + 48)] = a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 2, v7);
  }

  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  v12[8] = v13[8];
  return a1;
}

uint64_t destroy for TypesettingConfiguration(uint64_t a1)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = type metadata accessor for Locale.Language();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

double _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA024TypesettingConfigurationG0V_Tt0B5@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1;
  v9 = a2;
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    v8 = a1;
    v9 = a2;
    (*(v6 + 8))(&type metadata for TypesettingConfigurationKey, &v8, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey);
  }

  else if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024TypesettingConfigurationI0VG_Tt1g5(a1, a3);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(a1, a3);
  }

  return result;
}

uint64_t outlined assign with take of TypesettingLanguage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.bridgedEnvironmentResolver.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v3);
  return v4;
}

uint64_t outlined init with copy of TypesettingConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI24TypesettingConfigurationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TypesettingLanguage.Storage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, char *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
  }

  else
  {
    v11 = 2;
  }

  *a6 = v11;
  return result;
}

uint64_t sub_18D103968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage.Storage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t static TypesettingLanguage.automatic.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for TypesettingLanguage(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return outlined init with copy of TypesettingLanguage.Storage(v7, a4, type metadata accessor for TypesettingLanguage);
}

uint64_t TypesettingConfiguration.init(language:languageAwareLineHeightRatio:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for TypesettingLanguage(0);
  v8 = __swift_project_value_buffer(v7, static TypesettingLanguage.automatic);
  outlined init with copy of TypesettingConfiguration(v8, a3, type metadata accessor for TypesettingLanguage);
  v9 = a3 + *(type metadata accessor for TypesettingConfiguration(0) + 20);
  *v9 = 0;
  *(v9 + 8) = 1;
  result = outlined assign with take of TypesettingLanguage(a1, a3);
  *v9 = v5;
  *(v9 + 8) = v6;
  return result;
}

uint64_t sub_18D103C24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18D103CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D103D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t String.redactedIfNeeded(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (a1[1])
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v4);
  }

  else
  {
    v9[0] = *a1;
    v9[1] = 0;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(v9);
  }

  if (ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5)
  {
    v6 = String.count.getter();
    v7._countAndFlagsBits = 3081666804;
    v7._object = 0xA400000000000000;
    return String.init(repeating:count:)(v7, v6)._countAndFlagsBits;
  }

  else
  {
  }

  return a2;
}

double outlined consume of Gradient.ProviderTag(unint64_t a1)
{
  if ((a1 >> 62) <= 1)
  {
  }

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.Case?, &type metadata for Text.Case, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextCaseKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t String.caseConvertedIfNeeded(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Locale?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (!a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey);
    BloomFilter.init(hashValue:)(v11);
    v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v9, v23);
    if (v12)
    {
      v25 = *(v12 + 72);
      v10 = v25;
      if (v25 != 2)
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
        if (v13)
        {
          v14 = *(*v13 + 248);
          v15 = v13;
          v16 = type metadata accessor for Locale();
          (*(*(v16 - 8) + 16))(v8, &v15[v14], v16);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Locale();
          v18 = __swift_project_value_buffer(v17, static LocaleKey.defaultValue);
          (*(*(v17 - 8) + 16))(v8, v18, v17);
        }

        goto LABEL_12;
      }
    }

LABEL_6:

    return a2;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v9, &v25);

  v10 = v25;
  if (v25 == 2)
  {
    goto LABEL_6;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, v8);

LABEL_12:
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  v23 = a2;
  v24 = a3;
  lazy protocol witness table accessor for type String and conformance String();
  if (v10)
  {
    v20 = StringProtocol.lowercased(with:)();
  }

  else
  {
    v20 = StringProtocol.uppercased(with:)();
  }

  a2 = v20;
  outlined destroy of Locale?(v8);
  return a2;
}

void type metadata accessor for AnyAccessibilityPropertiesEntry?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t initializeWithCopy for Text.Style(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *a2;
  if (*a2 >= 2)
  {
  }

  v7 = a2[1];
  v8 = a2[2];
  *a1 = v6;
  *(a1 + 8) = v7;

  outlined copy of Text.Style.TextStyleColor(v8);
  v9 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v9;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = *(a2 + 72);
  v10 = a2[11];
  *(a1 + 16) = v8;

  if ((v10 - 1) >= 2)
  {
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v10;
  }

  else
  {
    *(a1 + 80) = *(a2 + 5);
  }

  v11 = a2[13];
  if ((v11 - 1) >= 2)
  {
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v11;
  }

  else
  {
    *(a1 + 96) = *(a2 + 6);
  }

  v12 = a2[22];
  if (v12 == 1)
  {
    v13 = *(a2 + 12);
    *(a1 + 176) = *(a2 + 11);
    *(a1 + 192) = v13;
    *(a1 + 208) = *(a2 + 208);
    v14 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v14;
    v15 = *(a2 + 10);
    *(a1 + 144) = *(a2 + 9);
    *(a1 + 160) = v15;
  }

  else
  {
    *(a1 + 112) = a2[14];
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = a2[16];
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = a2[18];
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 160) = a2[20];
    *(a1 + 192) = *(a2 + 192);
    v16 = a2[23];
    *(a1 + 176) = v12;
    *(a1 + 184) = v16;
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 200) = a2[25];
  }

  v17 = a2[31];
  if (v17 == 1)
  {
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 232) = *(a2 + 29);
    *(a1 + 248) = a2[31];
  }

  else
  {
    *(a1 + 216) = *(a2 + 108);
    *(a1 + 224) = a2[28];
    *(a1 + 232) = *(a2 + 116);
    *(a1 + 240) = a2[30];
    *(a1 + 248) = v17;
  }

  v18 = a2[36];
  if (v18 == 1)
  {
    v19 = *(a2 + 17);
    *(a1 + 256) = *(a2 + 16);
    *(a1 + 272) = v19;
    *(a1 + 288) = a2[36];
  }

  else
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 257) = *(a2 + 257);
    if (v18)
    {
      v20 = a2[33];
      v21 = a2[34];
      v22 = *(a2 + 280);
      outlined copy of Text.Storage(v20, v21, v22);
      *(a1 + 264) = v20;
      *(a1 + 272) = v21;
      *(a1 + 280) = v22;
      *(a1 + 288) = a2[36];
    }

    else
    {
      v23 = *(a2 + 35);
      *(a1 + 264) = *(a2 + 33);
      *(a1 + 280) = v23;
    }
  }

  v25 = a2[37];
  v24 = a2[38];
  *(a1 + 296) = v25;
  *(a1 + 304) = v24;
  *(a1 + 312) = a2[39];
  *(a1 + 320) = *(a2 + 160);
  v26 = a3[21];
  __dst = (a1 + v26);
  v54 = a3;
  v27 = a2 + v26;
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 48);
  v32 = v25;

  if (v31(v27, 2, v29))
  {
    v33 = type metadata accessor for TypesettingLanguage.Storage(0);
    v34 = __dst;
    memcpy(__dst, v27, *(*(v33 - 8) + 64));
  }

  else
  {
    v35 = type metadata accessor for Locale.Language();
    v34 = __dst;
    (*(*(v35 - 8) + 16))(__dst, v27, v35);
    __dst[*(v29 + 48)] = v27[*(v29 + 48)];
    (*(v30 + 56))(__dst, 0, 2, v29);
  }

  v36 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
  v37 = &v34[v36];
  v38 = &v27[v36];
  *v37 = *v38;
  v37[8] = v38[8];
  v39 = v54[23];
  *(a1 + v54[22]) = *(a2 + v54[22]);
  v40 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);

  if (v42(a2 + v39, 1, v40))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v39), a2 + v39, *(*(v43 - 8) + 64));
  }

  else
  {
    (*(v41 + 16))(a1 + v39, a2 + v39, v40);
    (*(v41 + 56))(a1 + v39, 0, 1, v40);
  }

  v44 = v54[24];
  v45 = type metadata accessor for AttributedString.TextAlignment();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(a2 + v44, 1, v45))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v44), a2 + v44, *(*(v47 - 8) + 64));
  }

  else
  {
    (*(v46 + 16))(a1 + v44, a2 + v44, v45);
    (*(v46 + 56))(a1 + v44, 0, 1, v45);
  }

  v48 = v54[26];
  *(a1 + v54[25]) = *(a2 + v54[25]);
  v49 = type metadata accessor for AttributedString.LineHeight();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(a2 + v48, 1, v49))
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v48), a2 + v48, *(*(v51 - 8) + 64));
  }

  else
  {
    (*(v50 + 16))(a1 + v48, a2 + v48, v49);
    (*(v50 + 56))(a1 + v48, 0, 1, v49);
  }

  *(a1 + v54[27]) = *(a2 + v54[27]);

  return a1;
}

uint64_t outlined init with copy of Text.Style(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextCaseKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextCaseKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextCaseKey>>);
    }
  }
}

uint64_t Text.Style.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TypesettingLanguage(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0x8000000000000000;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = xmmword_18DD85550;
  *(a1 + 96) = xmmword_18DD85550;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 258;
  v6 = type metadata accessor for Text.Style(0);
  v7 = v6[21];
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v8 = a1 + v7;
  v9 = __swift_project_value_buffer(v2, static TypesettingLanguage.automatic);
  outlined init with copy of Text.Style(v9, v4, type metadata accessor for TypesettingLanguage);
  outlined init with copy of Text.Style(v9, v8, type metadata accessor for TypesettingLanguage);
  v10 = v8 + *(type metadata accessor for TypesettingConfiguration(0) + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  outlined assign with take of Text.Style(v4, v8, type metadata accessor for TypesettingLanguage);
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + v6[22]) = v5;
  v11 = v6[23];
  v12 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v6[24];
  v14 = type metadata accessor for AttributedString.TextAlignment();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  *(a1 + v6[25]) = 2;
  v15 = v6[26];
  v16 = type metadata accessor for AttributedString.LineHeight();
  result = (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  *(a1 + v6[27]) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t outlined init with copy of (key: NSAttributedStringKey, value: Any)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE015TextSizeVariantV033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE015TextSizeVariantV033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE015TextSizeVariantV033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

double outlined copy of Text.Style.TextStyleColor(unint64_t a1)
{
  if ((a1 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t outlined assign with take of Text.Style(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5@<D0>(void *a1@<X0>, void *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = v14[9];
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for TextSizeVariant, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = v15[9];
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    v20[0] = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>);
    }
  }
}

uint64_t _GraphValue.unsafeBitCast<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  result = Attribute.unsafeBitCast<A>(to:)(a2, *v3, *(a1 + 16), a2);
  *a3 = result;
  return result;
}

void type metadata accessor for AtomicBuffer<TrackerData>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AtomicBuffer<TrackerData>)
  {
    v4 = type metadata accessor for AtomicBuffer(0, &type metadata for TrackerData, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>);
    }
  }
}

double ContentResponderHelper.init()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v6 = type metadata accessor for ContentResponderHelper(0, a1, a2, a3);
  *a4 = 0;
  *(a4 + 1) = 0;
  (*(*(a1 - 8) + 56))(&a4[v6[9]], 1, 1, a1);
  v7 = &a4[v6[10]];
  result = 0.0;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *v7 = 0u;
  *&a4[v6[11]] = MEMORY[0x1E69E7CC0];
  v9 = &a4[v6[12]];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  return result;
}

unint64_t _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 48);
  v11 = *(a1 + 60);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v10);
  if (result)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v14 = a2();
    v26 = v11;
    v27 = OffsetAttribute2;
    v28 = v14;
    v29 = a4;
    MEMORY[0x1EEE9AC00](v14);
    v23 = type metadata accessor for ContentResponderPathDataRule(0, a5, a6, v15);
    swift_getWitnessTable(protocol conformance descriptor for ContentResponderPathDataRule<A>, v23);
    v24 = v16;
    type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for Attribute<ContentShapePathData>, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_12, &v22, v23, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
    v19 = v25;
    v26 = v10;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v20 = *(v10 + 16);
    if (result != v20)
    {
      if (result >= v20)
      {
        __break(1u);
      }

      if (*(v10 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v26) = v19;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
        type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v21 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v26) = 0;
        return PreferencesOutputs.subscript.setter(v21, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for TypesettingConfiguration(uint64_t a1)
{
  result = type metadata accessor for TypesettingLanguage.Storage(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for TypesettingLanguage.Storage(uint64_t a1)
{
  result = type metadata accessor for Locale.Language();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t findValueWithSecondaryLookup<A>(_:secondaryLookupHandler:filter:secondaryFilter:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v57 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v58 = AssociatedTypeWitness;
  v55 = swift_getAssociatedTypeWitness();
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - v14;
  v15 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v56 = v15;
  v16 = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v59);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v60 = v16;
  v20 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  if (!a1)
  {
    v40 = 1;
    return (*(v20 + 56))(a7, v40, 1, v60, v27);
  }

  v47 = v26;
  v48 = &v47 - v24;
  v49 = v20;
  v50 = a7;
  v28 = *a3;
  v29 = *a4;
  v30 = (v20 + 48);
  v31 = (v23 + 8);
  v52 = a6 + 40;
  v53 = v25;
  ++v51;
  while (1)
  {
    while (1)
    {
      v32 = a1[7];
      v33 = v28 & ~v32;
      v34 = v32 & v29;
      if (!v33 || v34 == v29)
      {
        break;
      }

      a1 = a1[5];
      if (!a1)
      {
        goto LABEL_17;
      }
    }

    v36 = a1[3];
    if (v36)
    {
      v61 = v29;
      v62 = v28;
      findValueWithSecondaryLookup<A>(_:secondaryLookupHandler:filter:secondaryFilter:)(v36, v57, &v62, &v61, a5, a6, v19);
      if ((*v30)(v19, 1, v60) != 1)
      {
        v41 = v48;
        v20 = v49;
        v42 = *(v49 + 32);
        v43 = v48;
        v44 = v19;
        goto LABEL_23;
      }

      (*v31)(v19, v59);
    }

    v37 = a1[2];
    if (v37 == swift_checkMetadataState())
    {
      a7 = v50;
      closure #2 in closure #1 in PropertyList.subscript.getter(a1, v50);
      v40 = 0;
      goto LABEL_20;
    }

    if (v37 == swift_checkMetadataState())
    {
      break;
    }

LABEL_16:
    a1 = a1[4];
    if (!a1)
    {
LABEL_17:
      v40 = 1;
      a7 = v50;
LABEL_20:
      v20 = v49;
      return (*(v20 + 56))(a7, v40, 1, v60, v27);
    }
  }

  v38 = v54;
  closure #2 in closure #1 in PropertyList.subscript.getter(a1, v54);
  v39 = v53;
  (*(a6 + 40))(v38, a5, a6);
  (*v51)(v38, v55);
  if ((*v30)(v39, 1, v60) == 1)
  {
    (*v31)(v39, v59);
    goto LABEL_16;
  }

  v20 = v49;
  v42 = *(v49 + 32);
  v41 = v47;
  v43 = v47;
  v44 = v39;
LABEL_23:
  v45 = v60;
  v42(v43, v44, v60);
  a7 = v50;
  v42(v50, v41, v45);
  v40 = 0;
  return (*(v20 + 56))(a7, v40, 1, v60, v27);
}

uint64_t closure #1 in PropertyList.valueWithSecondaryLookup<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v18 = a1;
  v19 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = swift_getAssociatedTypeWitness();
  BloomFilter.init(hashValue:)(v13);
  v14 = swift_getAssociatedTypeWitness();
  BloomFilter.init(hashValue:)(v14);
  findValueWithSecondaryLookup<A>(_:secondaryLookupHandler:filter:secondaryFilter:)(v18, v19, &v22, &v21, a3, a4, v12);
  v15 = *(AssociatedTypeWitness - 8);
  if ((*(v15 + 48))(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v15 + 32))(v20, v12, AssociatedTypeWitness);
  }

  (*(v10 + 8))(v12, v9);
  swift_checkMetadataState();
  return (*(AssociatedConformanceWitness + 16))();
}

uint64_t PropertyList.valueWithSecondaryLookup<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a2;
  v7[5] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(&v8, partial apply for closure #1 in PropertyList.valueWithSecondaryLookup<A>(_:), v7, &type metadata for PropertyList, MEMORY[0x1E69E73E0], AssociatedTypeWitness, MEMORY[0x1E69E7410], v5);
}

double EnvironmentValues.valueWithSecondaryLookup<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  if (v4[1])
  {

    PropertyList.Tracker.valueWithSecondaryLookup<A>(_:secondaryLookupHandler:)(v9, a1, a2, a3, a4);
  }

  else
  {

    PropertyList.valueWithSecondaryLookup<A>(_:)(a1, v9, a2, a3);
  }

  return result;
}

uint64_t _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

Swift::Void __swiftcall AnimatableFrameAttributeVFD.updateValue()()
{
  v1 = v0;
  v24 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v16 = *Value;
  v5 = AGGraphGetValue();
  v7 = v4 | v6;
  v15 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v11 = *AGGraphGetValue();
  v17 = v16;
  v18 = v15;
  *&v19 = v8;
  *(&v19 + 1) = v9;
  if (v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 & 1;
  }

  v20 = v12;
  ViewFrame.roundCoordinatesToNearestOrUp(toMultipleOf:)(v11);
  if ((*(v1 + 145) & 1) == 0)
  {
    v13 = *(v1 + 72);
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v17, 0, *(v1 + 12), (v1 + 16), v1);
    if (*(v1 + 72))
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      if (*(v1 + 96))
      {
        v14 = 0.0;
      }

      else
      {
        v14 = *(v1 + 88);
      }

      swift_beginAccess();
      ViewGraph.NextUpdate.maxVelocity(_:)(v14);
      swift_endAccess();
    }

    else if (v13)
    {
      *(v1 + 136) = 0;
      *(v1 + 120) = 0u;
      *(v1 + 104) = 0u;
      *(v1 + 144) = 1;
      *(v1 + 88) = 0;
      *(v1 + 96) = 1;
    }
  }

  if ((v20 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v21 = v17;
    v22 = v18;
    v23 = v19;
    AGGraphSetOutputValue();
  }
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, double *a4, uint64_t a5)
{
  v222 = *MEMORY[0x1E69E9840];
  *&v204.f64[0] = type metadata accessor for OSSignpostID();
  v200 = *(*&v204.f64[0] - 8);
  MEMORY[0x1EEE9AC00](*&v204.f64[0]);
  v18 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v181 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v181 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v181 - v26;
  MEMORY[0x1EEE9AC00](v28);
  *&v203 = &v181 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v194 = &v181 - v31;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v33)
    {
      v34 = *Value;
    }

    else
    {
      v34 = -INFINITY;
    }
  }

  else
  {
    v34 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 48) = 1;
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_124;
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v35 = *(a1 + 24);
  if (a4[6])
  {
    goto LABEL_123;
  }

  v6 = a4[4];
  v5 = a4[5];
  v8 = a4[2];
  v7 = a4[3];
  if (v9 == v8 && v10 == v7 && v11 == v6 && v35 == v5)
  {
    goto LABEL_123;
  }

  v202 = v18;
  v199 = v24;
  v183 = v27;
  v189 = v35;
  v188 = a5;
  v191 = a1;
  AGGraphClearUpdate();
  v36 = *(a4 + 1);
  v217 = *a4;
  v218 = v36;
  v37 = *(a4 + 3);
  v219 = *(a4 + 2);
  v220 = v37;
  v190 = a4;
  v221 = *(a4 + 16);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v217, &v213, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
  v38 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v39 = Transaction.effectiveAnimation.getter(v38);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    if (!a2)
    {

      a1 = v191;
      a4 = v190;
      goto LABEL_122;
    }

    v40 = a2;
  }

  v41 = *(&v220 + 1);
  v42 = v9 - v8;
  v43 = v10 - v7;
  v44 = v11 - v6;
  v45 = v189 - v5;
  v34 = *AGGraphGetValue();
  v186 = v38;
  v184 = a3;
  v185 = v40;
  if (!v41)
  {
    *&v209.f64[0] = &type metadata for ViewFrame;
    type metadata accessor for ViewFrame.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v77 = swift_dynamicCast();
    if (v77)
    {
      v78 = v213;
    }

    else
    {
      v78 = 0;
    }

    if (v77)
    {
      v79 = *(&v213 + 1);
    }

    else
    {
      v79 = 0;
    }

    v187 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v80, v38, v78, v79, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v42, v43, v44, v45, v34);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v82 = CurrentAttribute;
    LODWORD(v201) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v201)
    {
      v83 = 0;
    }

    else
    {
      v83 = CurrentAttribute;
    }

    (*(*v40 + 96))(&v209);
    v84 = v209;
    v85 = *(&v210 + 1);
    v86 = v211;
    v208 = NAN;
    v207 = NAN;
    *&v206 = 1.0;
    *&v205 = NAN;
    v213 = v209;
    v87 = v210;
    v214 = v210;
    v215 = v211;
    LODWORD(v199) = v212;
    LOBYTE(v216) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v208, &v207, &v206, &v205);
    v5 = v208;
    v6 = v207;
    v7 = *&v206;
    v8 = *&v205;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v88 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      v182 = v21;
      if (v88 && (v89 = static CustomEventTrace.recorder) != 0)
      {
        v90 = v82 == v201;
        v198 = v86;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v91 = *(v89 + 16);
        LODWORD(v213) = v83;
        BYTE4(v213) = v90;
        *(&v213 + 1) = &type metadata for ViewFrame;
        *&v214 = v5;
        *(&v214 + 1) = v6;
        v215 = *&v7;
        v216 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v92 = v91;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v84.f64[0], *&v84.f64[1], v87, v85, v198, v199);
      }

      else
      {
        outlined consume of Animation.Function(*&v84.f64[0], *&v84.f64[1], v87, v85, v86, v199);
      }

      v93 = one-time initialization token for animationState;
      v82 = v187;

      if (v93 == -1)
      {
        goto LABEL_55;
      }
    }

    swift_once();
LABEL_55:
    v66 = *(&static Signpost.animationState + 1);
    *&v64 = static Signpost.animationState;
    LOBYTE(v50) = word_1ED5283E8;
    v65 = HIBYTE(word_1ED5283E8);
    v94 = byte_1ED5283EA;
    LOBYTE(a1) = static os_signpost_type_t.begin.getter();
    v213 = __PAIR128__(*&v66, *&v64);
    LOBYTE(v214) = v50;
    BYTE1(v214) = v65;
    BYTE2(v214) = v94;
    v95 = Signpost.isEnabled.getter();
    LODWORD(v63) = v201;
    if ((v95 & 1) == 0)
    {

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v190;
      *(v190 + 7) = v82;
      goto LABEL_120;
    }

    v96 = one-time initialization token for _signpostLog;

    if (v96 != -1)
    {
      goto LABEL_197;
    }

    goto LABEL_57;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v217, &v213, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v213) = 0;
  v46.n128_f64[0] = v42;
  v47.n128_f64[0] = v43;
  v48.n128_f64[0] = v44;
  v187 = v41;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v40, v38, a3, v46, v47, v48, v45, v34);
  v49 = AGGraphGetCurrentAttribute();
  LODWORD(a1) = v49;
  LODWORD(v50) = *MEMORY[0x1E698D3F8];
  if (v49 == *MEMORY[0x1E698D3F8])
  {
    v51 = 0;
  }

  else
  {
    v51 = v49;
  }

  (*(*v40 + 96))(&v209);
  v52 = *&v209.f64[1];
  v53 = *&v209.f64[0];
  v54 = v210;
  v55 = v211;
  LODWORD(v56) = v212;
  v208 = NAN;
  v207 = NAN;
  *&v206 = 1.0;
  *&v205 = NAN;
  v213 = v209;
  v214 = v210;
  v57 = *(&v210 + 1);
  v215 = v211;
  LOBYTE(v216) = v212;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v208, &v207, &v206, &v205);
  v5 = v208;
  v6 = v207;
  v7 = *&v206;
  v8 = *&v205;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_190;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_29;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v58 = static CustomEventTrace.recorder) != 0)
    {
      v59 = a1 == v50;
      LODWORD(v202) = v50;
      LODWORD(v201) = v56;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v50 = v55;
      v60 = *(v58 + 16);
      LODWORD(v213) = v51;
      BYTE4(v213) = v59;
      *(&v213 + 1) = &type metadata for ViewFrame;
      *&v214 = v5;
      *(&v214 + 1) = v6;
      v215 = *&v7;
      v216 = v8;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v61 = v60;
      AGGraphAddTraceEvent();
      v62 = v50;
      LODWORD(v50) = v202;
      outlined consume of Animation.Function(v53, v52, v54, v57, v62, v201);
    }

    else
    {
      outlined consume of Animation.Function(v53, v52, v54, v57, v55, v56);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v217, &v213, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_192;
    }

LABEL_29:
    v64 = *(&static Signpost.animationState + 1);
    *&v63 = static Signpost.animationState;
    v65 = word_1ED5283E8;
    *&v66 = HIBYTE(word_1ED5283E8);
    v67 = byte_1ED5283EA;
    v68 = static os_signpost_type_t.event.getter();
    v213 = __PAIR128__(*&v64, *&v63);
    LOBYTE(v214) = v65;
    BYTE1(v214) = LOBYTE(v66);
    BYTE2(v214) = v67;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
LABEL_92:
      a4 = v190;
      a3 = v184;
      goto LABEL_121;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v217, &v213, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v69 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v50)
    {
      __break(1u);
    }

    else
    {
      v70 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v72 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v72;
      *(a1 + 32) = Counter;
      v73 = AGGraphGetCurrentAttribute();
      if (v73 != v50)
      {
        v74 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v74;
        *(a1 + 72) = v73;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 144) = v75;
        *(a1 + 112) = 0x6D61724677656956;
        *(a1 + 120) = 0xE900000000000065;
        if (LOBYTE(v66))
        {
          LOBYTE(v205) = v68;
          v208 = COERCE_DOUBLE(&dword_18D018000);
          v207 = v69;
          *&v213 = v63;
          *(&v213 + 1) = v64;
          LOBYTE(v214) = v65;
          *&v209.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v209.f64[1] = 39;
          LOBYTE(v210) = 2;
          v206 = a1;
          v76 = v183;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v205, &v208, &v207, &v213, v183, &v209, &v206);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          (*(v200 + 8))(v76, *&v204.f64[0]);
        }

        else
        {
          v107 = LOBYTE(v63);
          if (LOBYTE(v63) == 20)
          {
            v56 = 3;
          }

          else
          {
            v56 = 4;
          }

          v108 = bswap32(LOWORD(v63)) | (4 * HIWORD(LODWORD(v63)));
          v109 = v68;
          v110 = (v200 + 16);
          v192 = *(v200 + 16);
          v111 = v192(v199, v183, *&v204.f64[0]);
          v112 = 0;
          LOBYTE(v209.f64[0]) = 1;
          v202 = v56;
          v197 = 16 * v56;
          v193 = *&v110;
          v198 = v110 - 1;
          v196 = a1 + 32;
          v195 = v107;
          do
          {
            v201 = &v181;
            MEMORY[0x1EEE9AC00](v111);
            a4 = (&v181 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
            v115 = a4 + 1;
            v116 = v202;
            v117 = a4 + 1;
            do
            {
              *(v117 - 1) = 0;
              *v117 = 0;
              v117 += 16;
              --v116;
            }

            while (v116);
            *&v98 = v196 + 40 * v112;
            v118 = v202;
            while (1)
            {
              v119 = *(a1 + 16);
              if (v112 == v119)
              {
                break;
              }

              if (v112 >= v119)
              {
                goto LABEL_181;
              }

              ++v112;
              outlined init with copy of AnyTrackedValue(*&v98, &v213);
              v56 = *(&v214 + 1);
              v120 = v215;
              __swift_project_boxed_opaque_existential_1(&v213, *(&v214 + 1));
              *(v115 - 1) = CVarArg.kdebugValue(_:)(v108 | v109, v56, v120);
              *v115 = v121 & 1;
              v115 += 16;
              v113 = __swift_destroy_boxed_opaque_existential_1(&v213);
              *&v98 += 40;
              if (!--v118)
              {
                goto LABEL_75;
              }
            }

            LOBYTE(v209.f64[0]) = 0;
LABEL_75:
            v122 = v195;
            if (v195 == 20)
            {
              v123 = v199;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v123 = v199;
            }

            if (*(a4 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a4 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a4 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v122 != 20 && *(a4 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v124 = *v198;
            v56 = *&v204.f64[0];
            (*v198)(v123, *&v204.f64[0]);
            v125 = __swift_project_value_buffer(v56, static OSSignpostID.continuation);
            v111 = v192(v123, v125, v56);
          }

          while ((LOBYTE(v209.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          v126 = v204.f64[0];
          v124(v123, *&v204.f64[0]);
          v124(v183, *&v126);
        }

        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_57:
    v97 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v98 = COERCE_DOUBLE(swift_allocObject());
    *(*&v98 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v63))
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v99 = AGGraphGetAttributeGraph();
    v100 = AGGraphGetCounter();

    v101 = MEMORY[0x1E69E6870];
    *(*&v98 + 56) = MEMORY[0x1E69E6810];
    *(*&v98 + 64) = v101;
    *(*&v98 + 32) = v100;
    v102 = AGGraphGetCurrentAttribute();
    if (v102 == LODWORD(v63))
    {
      goto LABEL_199;
    }

    v103 = MEMORY[0x1E69E76D0];
    *(*&v98 + 96) = MEMORY[0x1E69E7668];
    *(*&v98 + 104) = v103;
    *(*&v98 + 72) = v102;
    *(*&v98 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(*&v98 + 144) = v104;
    *(*&v98 + 112) = 0x6D61724677656956;
    *(*&v98 + 120) = 0xE900000000000065;
    if (v65)
    {
      LOBYTE(v205) = a1;
      v208 = COERCE_DOUBLE(&dword_18D018000);
      v207 = v97;
      *&v213 = v64;
      *(&v213 + 1) = v66;
      LOBYTE(v214) = v50;
      *&v209.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v209.f64[1] = 39;
      LOBYTE(v210) = 2;
      *&v206 = v98;
      v105 = v182;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v205, &v208, &v207, &v213, v182, &v209, &v206);
      v106 = v187;

      (*(v200 + 8))(v105, *&v204.f64[0]);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v190;
      *(v190 + 7) = v106;
    }

    else
    {
      v127 = LOBYTE(v64);
      v128 = a1;
      a1 = LOBYTE(v64) == 20 ? 3 : 4;
      a4 = (bswap32(LOWORD(v64)) | (4 * HIWORD(LODWORD(v64))));
      v109 = v128;
      v56 = v200 + 16;
      v192 = *(v200 + 16);
      v129 = v192(v202, v182, *&v204.f64[0]);
      v112 = 0;
      LOBYTE(v209.f64[0]) = 1;
      v198 = (16 * a1);
      v193 = *&v56;
      v199 = (v56 - 8);
      v197 = *&v98 + 32;
      v195 = v127;
      v196 = a1;
      do
      {
        v201 = &v181;
        MEMORY[0x1EEE9AC00](v129);
        v131 = &v181 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
        v132 = v131 + 8;
        v133 = a1;
        v134 = v131 + 8;
        do
        {
          *(v134 - 1) = 0;
          *v134 = 0;
          v134 += 16;
          --v133;
        }

        while (v133);
        v135 = v197 + 40 * v112;
        while (1)
        {
          v136 = *(*&v98 + 16);
          if (v112 == v136)
          {
            break;
          }

          if (v112 >= v136)
          {
            goto LABEL_182;
          }

          ++v112;
          outlined init with copy of AnyTrackedValue(v135, &v213);
          v56 = *(&v214 + 1);
          v137 = v215;
          __swift_project_boxed_opaque_existential_1(&v213, *(&v214 + 1));
          *(v132 - 1) = CVarArg.kdebugValue(_:)(a4 | v109, v56, v137);
          *v132 = v138 & 1;
          v132 += 16;
          v113 = __swift_destroy_boxed_opaque_existential_1(&v213);
          v135 += 40;
          --a1;
          if (*&a1 == 0.0)
          {
            goto LABEL_105;
          }
        }

        LOBYTE(v209.f64[0]) = 0;
LABEL_105:
        v139 = v195;
        if (v195 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        a1 = v196;
        if (v131[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v131[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v131[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v139 != 20 && v131[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v56 = *v199;
        v140 = v202;
        v141 = *&v204.f64[0];
        (*v199)(v202, *&v204.f64[0]);
        v142 = __swift_project_value_buffer(v141, static OSSignpostID.continuation);
        v129 = v192(v140, v142, v141);
      }

      while ((LOBYTE(v209.f64[0]) & 1) != 0);
      v143 = v187;

      v144 = v204.f64[0];
      (v56)(v202, *&v204.f64[0]);
      (v56)(v182, *&v144);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v190;
      *(v190 + 7) = v143;
    }

LABEL_120:
    a3 = v184;
LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v186);

    a1 = v191;
LABEL_122:
    v35 = v189;
LABEL_123:
    a4[2] = v9;
    a4[3] = v10;
    a4[4] = v11;
    a4[5] = v35;
    *(a4 + 48) = 0;
LABEL_124:
    v98 = a4[7];
    if (v98 == 0.0)
    {
      return;
    }

    v145 = *(a1 + 16);
    v213 = *a1;
    v214 = v145;

    LOBYTE(v217) = 0;
    v146 = specialized AnimatorState.update(_:at:environment:)(&v213, a3, v34);
    v113 = AGGraphGetCurrentAttribute();
    LODWORD(v56) = *MEMORY[0x1E698D3F8];
    if (v113 == *MEMORY[0x1E698D3F8])
    {
      v109 = 0;
    }

    else
    {
      v109 = v113;
    }

    v112 = &type metadata instantiation cache for TupleTypeDescription;
    if (v146)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_183;
      }

      goto LABEL_130;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_185;
    }

LABEL_143:
    v157 = *(v112 + 616);
    if (*(v157 + 16) >= 0x43uLL)
    {
      if (*(v157 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v217) = v109;
        BYTE4(v217) = v113 == v56;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      v203 = v214;
      *&v217 = v34;
      v204 = v213;
      FrameVelocityFilter.addSample(_:time:)(&v217, *&v213, *(&v213 + 1), *&v214, *(&v214 + 1));

      v158 = v203;
      v159 = v204;
      goto LABEL_178;
    }

    __break(1u);
LABEL_187:
    swift_once();
LABEL_135:
    v55 = *(&static Signpost.animationState + 1);
    v57 = static Signpost.animationState;
    v54 = word_1ED5283E8;
    v53 = HIBYTE(word_1ED5283E8);
    v149 = byte_1ED5283EA;
    v51 = static os_signpost_type_t.end.getter();
    v217 = __PAIR128__(v55, v57);
    LOBYTE(v218) = v54;
    BYTE1(v218) = v53;
    BYTE2(v218) = v149;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    v150 = one-time initialization token for _signpostLog;
    LODWORD(v50) = LODWORD(v193);

    if (v150 != -1)
    {
      swift_once();
    }

    v190 = a4;
    v191 = a1;
    *&v52 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v56)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    swift_once();
  }

  v151 = AGGraphGetAttributeGraph();
  v50 = AGGraphGetCounter();

  v152 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v152;
  *(a1 + 32) = v50;
  v153 = AGGraphGetCurrentAttribute();
  if (v153 == v56)
  {
    goto LABEL_189;
  }

  v154 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v154;
  *(a1 + 72) = v153;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v155;
  *(a1 + 112) = 0x6D61724677656956;
  *(a1 + 120) = 0xE900000000000065;
  if (v53)
  {
    LOBYTE(v205) = v51;
    v208 = COERCE_DOUBLE(&dword_18D018000);
    v207 = *&v52;
    *&v217 = v57;
    *(&v217 + 1) = v55;
    LOBYTE(v218) = v54;
    *&v209.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v209.f64[1] = 37;
    LOBYTE(v210) = 2;
    v206 = a1;
    v156 = v194;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v205, &v208, &v207, &v217, v194, &v209, &v206);

    (*(v200 + 8))(v156, *&v204.f64[0]);
    goto LABEL_176;
  }

  v160 = v57;
  if (v57 == 20)
  {
    v161 = 3;
  }

  else
  {
    v161 = 4;
  }

  v109 = bswap32(v57) | (4 * WORD1(v57));
  v112 = v51;
  v162 = v200 + 16;
  v195 = *(v200 + 16);
  v163 = v195(v203, v194, *&v204.f64[0]);
  v164 = 0;
  LOBYTE(v209.f64[0]) = 1;
  v202 = v161;
  v198 = (16 * v161);
  v200 = v162;
  v199 = (v162 - 8);
  v197 = a1 + 32;
  v196 = v160;
  do
  {
    v201 = &v181;
    MEMORY[0x1EEE9AC00](v163);
    a4 = (&v181 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0));
    *&v98 = a4 + 1;
    v166 = v202;
    v167 = a4 + 1;
    do
    {
      *(v167 - 1) = 0;
      *v167 = 0;
      v167 += 16;
      --v166;
    }

    while (v166);
    v168 = v197 + 40 * v164;
    v56 = v202;
    while (1)
    {
      v169 = *(a1 + 16);
      if (v164 == v169)
      {
        break;
      }

      if (v164 >= v169)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        v179 = v113;
        swift_once();
        v113 = v179;
LABEL_130:
        v147 = *(v112 + 616);
        if (*(v147 + 16) >= 0x43uLL)
        {
          if (*(v147 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v217) = v109;
            BYTE4(v217) = v113 == v56;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v148 = one-time initialization token for animationState;
          v193 = v98;

          if (v148 != -1)
          {
            goto LABEL_187;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_185:
        v180 = v113;
        swift_once();
        v113 = v180;
        goto LABEL_143;
      }

      ++v164;
      outlined init with copy of AnyTrackedValue(v168, &v217);
      v170 = *(&v218 + 1);
      v171 = v219;
      __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
      *(*&v98 - 8) = CVarArg.kdebugValue(_:)(v109 | v112, v170, v171);
      **&v98 = v172 & 1;
      *&v98 += 16;
      v113 = __swift_destroy_boxed_opaque_existential_1(&v217);
      v168 += 40;
      if (!--v56)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v209.f64[0]) = 0;
LABEL_161:
    v173 = v196;
    if (v196 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a4 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v173 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v174 = *v199;
    v175 = v203;
    v176 = *&v204.f64[0];
    (*v199)(v203, *&v204.f64[0]);
    v177 = __swift_project_value_buffer(v176, static OSSignpostID.continuation);
    v163 = v195(v175, v177, v176);
  }

  while ((LOBYTE(v209.f64[0]) & 1) != 0);

  v178 = v204.f64[0];
  v174(v203, *&v204.f64[0]);
  v174(v194, *&v178);
LABEL_176:

  a1 = v191;
  a4 = v190;
LABEL_177:
  specialized AnimatorState.removeListeners()();

  a4[7] = 0.0;
  v159 = v213;
  v158 = v214;
LABEL_178:
  *a1 = v159;
  *(a1 + 16) = v158;
  *(a1 + 48) = 1;
}

SwiftUI::PreferenceValues __swiftcall GraphHost.preferenceValues()()
{
  v1 = v0;
  GraphHost.instantiateIfNeeded()();
  swift_beginAccess();
  if (AGGraphGetWeakValue())
  {
  }

  else
  {
    result.entries._rawValue = MEMORY[0x1E69E7CC0];
  }

  v1->entries._rawValue = result.entries._rawValue;
  return result;
}

void onMainThread(do:)(void (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    v4 = [objc_opt_self() mainRunLoop];
    type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDA6EB0;
    v6 = *MEMORY[0x1E695DA28];
    *(v5 + 32) = *MEMORY[0x1E695DA28];
    type metadata accessor for NSRunLoopMode(0);
    v7 = v6;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10[4] = a1;
    v10[5] = a2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed () -> ();
    v10[3] = &block_descriptor_30;
    v9 = _Block_copy(v10);

    [v4 performInModes:isa block:v9];
    _Block_release(v9);
  }
}

void specialized static NSRunLoop.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  v4 = CFRunLoopGetCurrent();
  if (!observer.value)
  {
    v5 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0, @objc closure #1 in static NSRunLoop.addObserver(_:), 0);
    value = observer.value;
    observer.value = v5;
    v7 = v5;

    if (!v7)
    {
      goto LABEL_18;
    }

    CFRunLoopAddObserver(v4, v7, *MEMORY[0x1E695E8D0]);
  }

  v8 = CFRunLoopCopyCurrentMode(v4);
  if (v8)
  {
    if (observer.value)
    {
      v9 = v8;
      if (CFRunLoopContainsObserver(v4, observer.value, v8))
      {
LABEL_9:

        goto LABEL_10;
      }

      if (observer.value)
      {
        CFRunLoopAddObserver(v4, observer.value, v9);
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (one-time initialization token for observerActions != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_beginAccess();
  rawValue = observerActions._rawValue;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  observerActions._rawValue = rawValue;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
    observerActions._rawValue = rawValue;
  }

  v14 = rawValue[2];
  v13 = rawValue[3];
  if (v14 >= v13 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, rawValue);
  }

  rawValue[2] = v14 + 1;
  v15 = &rawValue[2 * v14];
  v15[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v15[5] = v10;
  observerActions._rawValue = rawValue;
  swift_endAccess();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ()();
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t ChildEnvironment.modifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _EnvironmentKeyTransformModifier(0, *(a1 + 16), a3, a4);
  v4 = *AGGraphGetValue();

  return v4;
}

double PropertyList.Tracker.value<A>(_:for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v24 - v11;
  v13 = *(v4 + 16);

  os_unfair_lock_lock((v13 + 16));
  v14 = *(v13 + 24);
  if (!a1)
  {
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v13 + 56) = 1;
    PropertyList.subscript.getter(a2, a1, a2, a3);
    goto LABEL_9;
  }

  if (v14 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(v13 + 32);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v17 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v15 + 56) + 40 * v16, v24);
    outlined init with take of AnyTrackedValue(v24, v25);
    v18 = v26;
    v19 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (v19[1])(AssociatedTypeWitness, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    PropertyList.subscript.getter(a2, a1, a2, a3);
    (*(v10 + 16))(v12, a4, AssociatedTypeWitness);
    v26 = type metadata accessor for TrackedValue(0, a2, a3, v20);
    v27 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    v22 = swift_getAssociatedTypeWitness();
    (*(*(v22 - 8) + 32))(boxed_opaque_existential_1, v12, v22);
    specialized Dictionary.subscript.setter(v25, a2);
  }

LABEL_9:
  os_unfair_lock_unlock((v13 + 16));

  return result;
}

uint64_t closure #1 in ChildEnvironment.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v50 - v12;
  type metadata accessor for ObservationTracking._AccessList?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  v54 = v22;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v24 = static ObservationCenter._current;
  swift_beginAccess();
  v25 = pthread_getspecific(v24[2]);
  if (!v25)
  {
    v26 = a3;
    v27 = swift_slowAlloc();
    pthread_setspecific(v24[2], v27);
    v59 = type metadata accessor for ObservationCenter();
    *&v58 = v24[3];
    outlined init with take of Any(&v58, v27);

    v25 = v27;
    a3 = v26;
  }

  outlined init with copy of Any(v25, &v58);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v57;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v54 + 3) = v23;
    goto LABEL_9;
  }

  v52 = CurrentAttribute;
  swift_beginAccess();
  v53 = *(v28 + 3);
  *(v28 + 3) = MEMORY[0x1E69E7CC0];
  (*(v6 + 56))(v18, 1, 1, v5);
  v56 = v6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v31 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  (v54)(a3);
  *(StatusReg + 848) = v31;
  v32 = v56;
  outlined init with take of ObservationTracking._AccessList?(v18, v21);
  outlined init with copy of ObservationTracking._AccessList?(v21, v15);
  if ((*(v32 + 48))(v15, 1, v5) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v21);
    v21 = v15;
    goto LABEL_12;
  }

  v18 = *(v32 + 32);
  v33 = v28;
  v28 = v51;
  (v18)(v51, v15, v5);
  (*(v32 + 16))(v55, v28, v5);
  v23 = *(v33 + 3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v33;
  *(v33 + 3) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v23[2];
  v35 = v23[3];
  if (v36 >= v35 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v23);
  }

  v23[2] = v36 + 1;
  v37 = v23 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v36;
  v32 = v56;
  (v18)(v37, v55, v5);
  v38 = v54;
  *(v54 + 3) = v23;
  v39 = v28;
  v28 = v38;
  (*(v32 + 8))(v39, v5);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v21);
  v40 = *(v28 + 3);
  v41 = *(v40 + 16);
  if (v41)
  {
    v44 = *(v32 + 16);
    v42 = v32 + 16;
    v43 = v44;
    v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    v47 = (v42 - 8);
    v56 = *(v28 + 3);

    v48 = v52;
    do
    {
      v43(v8, v45, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v48, v8);
      (*v47)(v8, v5);
      v45 += v46;
      --v41;
    }

    while (v41);
  }

  *(v28 + 3) = v53;
}

uint64_t StyleBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v84 = a6;
  v81 = a1;
  v106 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  v92 = v12;
  v93 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v73 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v73 - v19;
  v21 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a3;
  Value = AGGraphGetValue();
  v27 = v26;
  v28 = *(v21 + 16);
  v85 = v24;
  v28(v24, Value, a4);
  if (a2 & 1) != 0 || (v27)
  {
    v78 = v20;
    v79 = v21;
    v80 = v18;
    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v29 = static Signpost.bodyInvoke;
    v30 = word_1ED539040;
    v31 = HIBYTE(word_1ED539040);
    v32 = byte_1ED539042;
    LODWORD(v95) = static os_signpost_type_t.begin.getter();
    v102 = v29;
    LOBYTE(v103) = v30;
    BYTE1(v103) = v31;
    BYTE2(v103) = v32;
    v33 = Signpost.isEnabled.getter();
    v34 = v84;
    if ((v33 & 1) == 0)
    {
      goto LABEL_38;
    }

    v75 = AssociatedTypeWitness;
    v77 = a4;
    v76 = a7;
    v74 = a5;
    swift_getAssociatedTypeWitness();
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_18DDAB4C0;
    v36 = AGTypeID.description.getter();
    v38 = v37;
    v39 = MEMORY[0x1E69E6158];
    *(v35 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v41 = v40;
    *(v35 + 64) = v40;
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v42 = specialized static Tracing.libraryName(defining:)();
    *(v35 + 96) = v39;
    *(v35 + 104) = v41;
    *(v35 + 72) = v42;
    *(v35 + 80) = v43;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v31)
      {
LABEL_8:
        v101[0] = v95;
        v99 = _signpostLog;
        v100 = &dword_18D018000;
        v102 = v29;
        LOBYTE(v103) = v30;
        v97[0] = "%{public}@.body [in %{public}@]";
        v97[1] = 31;
        v98 = 2;
        v96 = v35;
        v44 = v83;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v101, &v100, &v99, &v102, v83, v97, &v96);
        (*(v93 + 8))(v44, v92);
LABEL_37:

        a4 = v77;
        a7 = v76;
        v34 = v84;
        AssociatedTypeWitness = v75;
        a5 = v74;
LABEL_38:
        AGGraphClearUpdate();
        v67 = v78;
        closure #1 in StyleBodyAccessor.updateBody(of:changed:)(v82, v81, v85, a4, a5, v34, a7, v78);
        AGGraphSetUpdate();
        v68 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        MEMORY[0x1EEE9AC00](v68);
        *&v102 = a4;
        *(&v102 + 1) = a5;
        v103 = v34;
        v104 = a7;
        v69 = type metadata accessor for StyleBodyAccessor(0, &v102);
        *(&v73 - 2) = v69;
        swift_getWitnessTable(protocol conformance descriptor for StyleBodyAccessor<A, B>, v69);
        *(&v73 - 1) = v70;
        _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v67, partial apply for closure #2 in BodyAccessor.setBody(_:), (&v73 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v71);
        (*(v80 + 8))(v67, AssociatedTypeWitness);
        v21 = v79;
        return (*(v21 + 8))(v85, a4);
      }
    }

    else
    {
      swift_once();
      if (v31)
      {
        goto LABEL_8;
      }
    }

    if (v29 == 20)
    {
      v45 = 3;
    }

    else
    {
      v45 = 4;
    }

    v46 = bswap32(v29) | (4 * WORD1(v29));
    v47 = v95;
    v48 = v93 + 16;
    v86 = *(v93 + 16);
    v49 = v86(v94, v83, v92);
    v50 = 0;
    LOBYTE(v97[0]) = 1;
    v93 = v48;
    v90 = 16 * *(&v29 + 1);
    v91 = (v48 - 8);
    v89 = v35 + 32;
    v88 = v29;
    v87 = *(&v29 + 1);
    do
    {
      v95 = &v73;
      MEMORY[0x1EEE9AC00](v49);
      v52 = &v73 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = v52 + 8;
      v54 = v45;
      v55 = v52 + 8;
      do
      {
        *(v55 - 1) = 0;
        *v55 = 0;
        v55 += 16;
        --v54;
      }

      while (v54);
      v56 = v89 + 40 * v50;
      while (1)
      {
        v57 = *(v35 + 16);
        if (v50 == v57)
        {
          break;
        }

        if (v50 >= v57)
        {
          __break(1u);
        }

        ++v50;
        outlined init with copy of AnyTrackedValue(v56, &v102);
        v58 = v104;
        v59 = v105;
        __swift_project_boxed_opaque_existential_1(&v102, v104);
        *(v53 - 1) = CVarArg.kdebugValue(_:)(v46 | v47, v58, v59);
        *v53 = v60 & 1;
        v53 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v102);
        v56 += 40;
        if (!--v45)
        {
          goto LABEL_22;
        }
      }

      LOBYTE(v97[0]) = 0;
LABEL_22:
      v61 = v88;
      if (v88 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v52[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v52[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v52[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v61 != 20 && v52[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v62 = v92;
      v63 = *v91;
      v64 = v94;
      (*v91)(v94, v92);
      v65 = __swift_project_value_buffer(v62, static OSSignpostID.continuation);
      v49 = v86(v64, v65, v62);
      v45 = v87;
    }

    while ((v97[0] & 1) != 0);
    v66 = v92;
    v63(v94, v92);
    v63(v83, v66);
    goto LABEL_37;
  }

  return (*(v21 + 8))(v85, a4);
}

uint64_t static ViewInputFlagModifier._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *a1;
  v7 = type metadata accessor for ViewInputFlagModifier(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v7, v8, v9);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ViewInputFlagModifier._makeInputs(modifier:inputs:), a3, v11);
  return (*(*(a4 + 8) + 8))(v11, a2, a3);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5Tm(uint64_t a1, Swift::Int hashValue, uint64_t (*a3)(uint64_t))
{
  BloomFilter.init(hashValue:)(hashValue);
  result = a3(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for StyleContextInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void one-time initialization function for defaultValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StyleContextTypeBox<NoStyleContext>(0, a2, a3, a4);
  *&static StyleContextInput.defaultValue = v4;
  *(&static StyleContextInput.defaultValue + 1) = &protocol witness table for StyleContextTypeBox<A>;
}

void type metadata accessor for StyleContextTypeBox<NoStyleContext>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for StyleContextTypeBox<NoStyleContext>)
  {
    v4 = type metadata accessor for StyleContextTypeBox(0, &type metadata for NoStyleContext, &protocol witness table for NoStyleContext, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for StyleContextTypeBox<NoStyleContext>);
    }
  }
}

uint64_t closure #1 in StyleBodyAccessor.updateBody(of:changed:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a1;
  v25 = a4;
  v29 = a3;
  v27 = a2;
  v31 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v24 - v11;
  v26 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v26);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v17 + 16))(v20, Value, a5);
  (*(v14 + 16))(v16, v27, v13);
  (*(a7 + 72))(v16, a5, a7);
  (*(a6 + 40))(v25, a6);
  v22 = AssociatedTypeWitness;
  swift_dynamicCast();
  (*(a7 + 88))(v12, a5, a7);
  (*(v17 + 8))(v20, a5);
  return (*(v30 + 8))(v12, v22);
}

void key path getter for EnvironmentValues.isEnabled : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 1;
    }
  }

  *a2 = v4 & 1;
}

double key path setter for EnvironmentValues.imageScale : EnvironmentValues, serialized(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void, __n128))
{
  v9 = *a2;
  v10 = *a1;
  swift_retain_n();
  a5(a2, v10, &v12);

  if (a2[1])
  {
    (a6)(v9, *a2);
  }

  return result;
}

uint64_t *assignWithCopy for _EnvironmentKeyWritingModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t Text.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v6);
  v8 = String.init<A>(_:)();
  (*(v5 + 8))(a1, a2);
  return v8;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t one-time initialization function for accessibilityEnabled(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.accessibilityEnabled = result;
  return result;
}

uint64_t static _EnvironmentKeyTransformModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v11 = type metadata accessor for ChildEnvironment(0, a3, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  LODWORD(a1) = *a1;
  v15 = *(a2 + 16);
  swift_beginAccess();
  LODWORD(v15) = *(v15 + 16);
  (*(*(a3 - 8) + 56))(v8, 1, 1, a3);
  ChildEnvironment.init(modifier:environment:oldValue:oldKeyPath:)(a1, v15, v8, 0, a3, v14);
  v22 = v11;
  swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, v11);
  v23 = v16;
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_5, v21, v11, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  (*(v12 + 8))(v14, v11);
  return _GraphInputs.environment.setter(v20[3]);
}

uint64_t ChildEnvironment.init(modifier:environment:oldValue:oldKeyPath:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v9 = type metadata accessor for ChildEnvironment(0, a5, a3, a4);
  v10 = *(v9 + 32);
  v11 = type metadata accessor for Optional();
  result = (*(*(v11 - 8) + 32))(&a6[v10], a3, v11);
  *&a6[*(v9 + 36)] = a4;
  return result;
}

double destroy for ChildEnvironment(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + *(v3 + 80) + 4) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, v2))
  {
    (*(v3 + 8))(v4, v2);
  }

  return result;
}

uint64_t type metadata completion function for ChildEnvironment(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v13 = v11;
    (*(a6 + 32))(&v13, a2, a3, a4, a5, a6);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    v13 = v11;
    return (*(a6 + 32))(&v13, a2, a3, a4, a5, a6);
  }
}

uint64_t VStack.init(alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return _VariadicView.Tree.init(_:content:)(v6, partial apply for closure #1 in VStack.init(alignment:spacing:content:), &type metadata for _VStackLayout, a4, &protocol witness table for _VStackLayout, a5);
}

uint64_t closure #1 in VStack.init(alignment:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a3);
}

void type metadata accessor for GesturePhase<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12GesturePhaseOyytGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10, char a11, double a12, char a13, uint64_t a14, uint64_t a15)
{
  v16 = a1;
  v17 = 0.0;
  if (a1 > 0.0)
  {
    v18 = a1;
  }

  else
  {
    v18 = 0.0;
  }

  if (a2)
  {
    v19 = a1;
  }

  else
  {
    v19 = v18;
  }

  v48 = a2 & 1;
  v20 = a3;
  if ((a4 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      v17 = v19;
    }

    if (v17 < a3)
    {
      v17 = a3;
    }

    v20 = v17;
  }

  v47 = a4 & 1;
  v21 = a5;
  if ((a6 & 1) == 0)
  {
    v22 = a5;
    v23 = v20;
    if (a4)
    {
      v23 = 0.0;
    }

    if (v23 >= a5)
    {
      v22 = v23;
    }

    v21 = v22;
  }

  v46 = a6 & 1;
  v24 = a7;
  v25 = 0.0;
  if (a7 > 0.0)
  {
    v26 = a7;
  }

  else
  {
    v26 = 0.0;
  }

  if (a8)
  {
    v27 = a7;
  }

  else
  {
    v27 = v26;
  }

  v45 = a8 & 1;
  v28 = a10;
  if ((a11 & 1) == 0)
  {
    if ((a8 & 1) == 0)
    {
      v25 = v27;
    }

    if (v25 < a10)
    {
      v25 = a10;
    }

    v28 = v25;
  }

  v29 = a12;
  if ((a13 & 1) == 0)
  {
    v30 = a12;
    v31 = v28;
    if (a11)
    {
      v31 = 0.0;
    }

    if (v31 >= a12)
    {
      v30 = v31;
    }

    v29 = v30;
  }

  if (a2)
  {
    v16 = 0.0;
  }

  if (a4 & 1) != 0 && (a6)
  {
    goto LABEL_41;
  }

  v33 = (a4 & 1) != 0 ? a5 : a3;
  if (v16 > v33)
  {
    goto LABEL_46;
  }

  v41 = a3;
  if (a4)
  {
    v41 = 0.0;
  }

  if ((a6 & 1) != 0 || v41 <= a5)
  {
LABEL_41:
    v32 = v16 == INFINITY;
  }

  else
  {
LABEL_46:
    v32 = 1;
  }

  v44 = v32;
  if (a8)
  {
    v24 = 0.0;
  }

  if (a11 & 1) != 0 && (a13)
  {
    goto LABEL_51;
  }

  v35 = (a11 & 1) != 0 ? a12 : a10;
  if (v24 > v35)
  {
    goto LABEL_56;
  }

  v42 = a10;
  if (a11)
  {
    v42 = 0.0;
  }

  if ((a13 & 1) != 0 || v42 <= a12)
  {
LABEL_51:
    v34 = v24 == INFINITY;
  }

  else
  {
LABEL_56:
    v34 = 1;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v36 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
    v39 = a14;
    v38 = a15;
    if (!result)
    {
      goto LABEL_69;
    }
  }

  else
  {
    result = static Semantics.forced >= v36;
    v39 = a14;
    v38 = a15;
    if (!result)
    {
      goto LABEL_69;
    }
  }

  if (v44 || v34)
  {
    v40 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      v43 = v40;
      swift_once();
      v40 = v43;
    }

    result = os_log(_:dso:log:_:_:)(v40, &dword_18D018000, static Log.runtimeIssuesLog, "Invalid frame dimension (negative or non-finite).", 49, 2, MEMORY[0x1E69E7CC0]);
  }

LABEL_69:
  *a9 = v19;
  *(a9 + 8) = v48;
  *(a9 + 16) = v20;
  *(a9 + 24) = v47;
  *(a9 + 32) = v21;
  *(a9 + 40) = v46;
  *(a9 + 48) = v27;
  *(a9 + 56) = v45;
  *(a9 + 64) = v28;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = v29;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = v39;
  *(a9 + 104) = v38;
  return result;
}

double specialized Image.init(systemName:)(uint64_t a1, uint64_t a2, __n128 a3)
{

  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider, &type metadata for Image.NamedImageProvider);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 0;
  *(v5 + 36) = 1;
  *(v5 + 40) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  result = -0.0;
  *(v5 + 72) = xmmword_18DD85510;
  *(v5 + 88) = 0;
  return result;
}

uint64_t outlined destroy of Text.ResolvedString(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI4TextV14ResolvedStringVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20)
{
  v23 = a20;
  v25 = -INFINITY;
  if ((a2 & 1) == 0)
  {
    v25 = *&a1;
  }

  if (a4)
  {
    v27 = v25;
  }

  else
  {
    v27 = *&a3;
  }

  if (a6)
  {
    v29 = v27;
  }

  else
  {
    v29 = *&a5;
  }

  if (v25 > v27 || v27 > v29)
  {
    goto LABEL_24;
  }

  v31 = *&a7;
  if (a8)
  {
    v31 = -INFINITY;
  }

  v32 = a17;
  if (a18)
  {
    v32 = v31;
  }

  v33 = a19;
  if (a20)
  {
    v33 = v32;
  }

  if (v31 > v32 || v32 > v33)
  {
LABEL_24:
    v49 = a7;
    v50 = a8;
    v35 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v36 = static Log.runtimeIssuesLog;
    os_log(_:dso:log:_:_:)(v35, &dword_18D018000, v36, "Contradictory frame constraints specified.", 42, 2, MEMORY[0x1E69E7CC0]);

    v23 = a20;
    a8 = v50;
    a7 = v49;
  }

  v37 = *&a7;
  v38 = 0.0;
  if ((a2 & 1) == 0)
  {
    v38 = *&a1;
  }

  if (a4 & 1) != 0 && (a6)
  {
    goto LABEL_31;
  }

  v40 = (a4 & 1) != 0 ? *&a5 : *&a3;
  if (v38 > v40)
  {
    goto LABEL_36;
  }

  v46 = 0.0;
  if ((a4 & 1) == 0)
  {
    v46 = *&a3;
  }

  if ((a6 & 1) != 0 || v46 <= *&a5)
  {
LABEL_31:
    v39 = v38 == INFINITY;
  }

  else
  {
LABEL_36:
    v39 = 1;
  }

  if (a8)
  {
    v37 = 0.0;
  }

  if (a18 & 1) != 0 && (v23)
  {
    goto LABEL_41;
  }

  v42 = (a18 & 1) != 0 ? a19 : a17;
  if (v37 > v42)
  {
    goto LABEL_46;
  }

  v47 = a17;
  if (a18)
  {
    v47 = 0.0;
  }

  if ((v23 & 1) != 0 || v47 <= a19)
  {
LABEL_41:
    v41 = v37 == INFINITY;
  }

  else
  {
LABEL_46:
    v41 = 1;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v43 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (!dyld_program_sdk_at_least())
    {
      return View.modifier<A>(_:)();
    }
  }

  else if (static Semantics.forced < v43)
  {
    return View.modifier<A>(_:)();
  }

  if (v39 || v41)
  {
    v44 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      v48 = v44;
      swift_once();
      v44 = v48;
    }

    os_log(_:dso:log:_:_:)(v44, &dword_18D018000, static Log.runtimeIssuesLog, "Invalid frame dimension (negative or non-finite).", 49, 2, MEMORY[0x1E69E7CC0], v49);
  }

  return View.modifier<A>(_:)();
}

double GeometryProxy.size.getter()
{
  specialized static Update.begin()();
  v0 = 0.0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    v0 = *AGGraphGetInputValue();
  }

  static Update.end()();
  return v0;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<GeometryReaderLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #2 in static Layout.makeStaticView(root:inputs:properties:list:);
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

void lazy protocol witness table accessor for type StaticLayoutComputer<GeometryReaderLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<GeometryReaderLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<GeometryReaderLayout> and conformance StaticLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout()
{
  if (!lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for GeometryReaderLayout, &type metadata for GeometryReaderLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for GeometryReaderLayout, &type metadata for GeometryReaderLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GeometryReaderLayout and conformance GeometryReaderLayout);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance GeometryReader<A>.Child(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for GeometryReader<A>.Child, a1);

  return static AsyncAttribute.flags.getter();
}

double static GeometryReader._makeView(view:inputs:)@<D0>(unsigned int *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[4];
  *&v55[16] = a2[3];
  *v56 = v8;
  v9 = a2[2];
  v54 = a2[1];
  *v55 = v9;
  *&v56[16] = a2[5].n128_u32[0];
  v53 = *a2;
  v10 = *&v56[8];
  v11 = DWORD1(v9);
  swift_beginAccess();
  v12 = *(v54 + 16);
  v39.n128_u64[0] = __PAIR64__(*&v56[8], v7);
  v29 = *v56;
  v39.n128_u64[1] = __PAIR64__(*&v55[28], *v56);
  LODWORD(v40) = v12;
  *(&v40 + 4) = *&v56[12];
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>(255);
  v36[2] = type metadata accessor for _VariadicView.Tree(0, v13, a3, &protocol witness table for _LayoutRoot<A>);
  v31 = a4;
  v37 = type metadata accessor for GeometryReader.Child(0, a3, a4, v14);
  swift_getWitnessTable(protocol conformance descriptor for GeometryReader<A>.Child, v37);
  v38 = v15;
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v39, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v36, v37, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  v30 = v11;
  v51 = v53;
  v52 = v54;
  v19 = *v55;
  v18 = *&v55[4];
  v49 = *&v55[8];
  v50 = *&v55[24];
  v20 = *&v56[4];
  v33 = *&v56[12];
  if ((v11 & 0x20) != 0)
  {
    v18 = v11 | 2;
    outlined init with copy of _ViewInputs(&v53, &v39);
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v23 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    v24 = specialized CachedEnvironment.attribute<A>(id:_:)(v23, closure #1 in _GraphInputs.layoutDirection.getter, 0);
    swift_endAccess();
    v25 = *MEMORY[0x1E698D3F8];
    v39.n128_u64[0] = __PAIR64__(v10, v24);
    v39.n128_u32[2] = v25;
    v39.n128_u32[3] = v25;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RootGeometry and conformance RootGeometry();
    Attribute.init<A>(body:value:flags:update:)();
    v39.n128_u64[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), v29);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for CGPoint(0);
    lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
    v22 = Attribute.init<A>(body:value:flags:update:)();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v19 |= 0x18u;
  }

  else
  {
    OffsetAttribute2 = *&v56[8];
    v22 = *v56;
    outlined init with copy of _ViewInputs(&v53, &v39);
  }

  v39 = v51;
  v40 = v52;
  v41 = v19;
  v42 = v18;
  v43 = v49;
  v44 = v50;
  v45 = v22;
  v46 = v20;
  v47 = OffsetAttribute2;
  v48 = v33;
  v26 = closure #1 in static GeometryReader._makeView(view:inputs:)(&v39, v34, a3, v31, &v34);
  if ((v30 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v26);
    MEMORY[0x1EEE9AC00](v27);
    AGGraphMutateAttribute();
  }

  HIDWORD(v35) = *MEMORY[0x1E698D3F8];
  if ((LOBYTE(v35) & 0x80) == 0)
  {
    LODWORD(v35) |= 0x80u;
  }

  v39 = v51;
  v40 = v52;
  v41 = v19;
  v42 = v18;
  v43 = v49;
  v44 = v50;
  v45 = v22;
  v46 = v20;
  v47 = OffsetAttribute2;
  v48 = v33;
  outlined destroy of _ViewInputs(&v39);
  *a5 = v34;
  result = v35;
  a5[1] = v35;
  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

void *closure #1 in static GeometryReader._makeView(view:inputs:)@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a1[3];
  v37 = a1[2];
  v38 = v9;
  v39 = a1[4];
  v40 = a1[5].n128_u32[0];
  v10 = a1[1];
  v35 = *a1;
  v36 = v10;
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>(255);
  v12 = v11;
  type metadata accessor for _VariadicView.Tree(0, v11, a3, &protocol witness table for _LayoutRoot<A>);
  _GraphValue.init(_:)(a2, &v18);
  v13 = v18;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v25 = v35;
  v26 = v36;
  v32 = v40;
  v15 = v37.n128_u32[0];
  v27.n128_u32[0] = 0;
  v17 = v13;
  v31[0] = v35;
  v31[1] = v36;
  v31[3] = v38;
  v31[4] = v39;
  v31[2] = v27;
  v21 = v27;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v19 = v35;
  v20 = v36;
  outlined init with copy of _ViewInputs(&v35, v33);
  outlined init with copy of _ViewInputs(v31, v33);
  static _VariadicView.Tree<>._makeView(view:inputs:)(&v17, &v19, v12, a3, &protocol witness table for _LayoutRoot<A>, a4);
  v33[2] = v21;
  v33[3] = v22;
  v33[4] = v23;
  v34 = v24;
  v33[0] = v19;
  v33[1] = v20;
  outlined destroy of _ViewInputs(v33);
  v27.n128_u32[0] = v15;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v25);
    AGSubgraphEndTreeElement();
  }

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  return outlined destroy of _ViewInputs(&v19);
}

void *specialized static Layout.makeLayoutView(root:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v56 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v45 = *(a2 + 32);
  v46 = v8;
  v47 = *(a2 + 64);
  v48 = *(a2 + 80);
  v9 = *(a2 + 16);
  v43 = *a2;
  v44 = v9;
  outlined init with copy of _ViewInputs(a2, &v50);
  if (one-time initialization token for v2 != -1)
  {
    swift_once();
  }

  v10 = static Semantics.v2;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v11 = dyld_program_sdk_at_least();
  }

  else
  {
    v11 = static Semantics.forced >= v10;
  }

  v12 = *a2;
  v13 = *(a2 + 36);
  DWORD1(v45) = v13 & 0xFFFFFFF3;
  v49 = v12;
  v14 = *MEMORY[0x1E698D3F8];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v43, v14);
  outlined destroy of PropertyList(&v49);
  v15 = v43;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v15, v50);
  if (v16)
  {
    if ((*(v16 + 72) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_10:
      if ((v13 & 0x800) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v20 = v11;
  v21 = a4;
  v22 = v6;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v15, v50);
  if (v23)
  {
    v24 = *(v23 + 72) | 0x4000;
  }

  else
  {
    v24 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v43, v24);

  v6 = v22;
  a4 = v21;
  v11 = v20;
  if ((v13 & 0x800) == 0)
  {
LABEL_11:
    DWORD1(v45) = v13 & 0xFFFFFFF3;
  }

LABEL_12:
  v39[2] = v45;
  v39[3] = v46;
  v39[4] = v47;
  v40 = v48;
  v39[0] = v43;
  v39[1] = v44;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v50 = v43;
  v51 = v44;
  v17 = outlined init with copy of _ViewInputs(v39, v41);
  a3(v38, v17, &v50);
  v41[2] = v52;
  v41[3] = v53;
  v41[4] = v54;
  v42 = v55;
  v41[0] = v50;
  v41[1] = v51;
  outlined destroy of _ViewInputs(v41);
  outlined init with copy of _ViewListOutputs.Views(v38, v36);
  if (v37)
  {
    v18 = v36[0];
    if (*(&v36[0] + 1))
    {
      LODWORD(v50) = v36[0];
      *(&v50 + 1) = *(&v36[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v18 = Attribute.init<A>(body:value:flags:update:)();
    }

    v52 = v45;
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v50 = v43;
    v51 = v44;
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5(v6, &v50, v18, a4);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v36, v29);
    if ((v13 & 0x800) != 0)
    {
      v52 = v45;
      v53 = v46;
      v54 = v47;
      v55 = v48;
      v50 = v43;
      v51 = v44;
      v25 = *(a2 + 48);
      v32 = *(a2 + 32);
      v33 = v25;
      v34 = *(a2 + 64);
      v35 = *(a2 + 80);
      v26 = *(a2 + 16);
      v30 = *a2;
      v31 = v26;
      v27 = _ViewListOutputs.makeAttribute(viewInputs:)(&v30);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5(v6, &v50, v27, a4);
    }

    else
    {
      v52 = v45;
      v53 = v46;
      v54 = v47;
      v55 = v48;
      if (v11)
      {
        v19 = 2;
      }

      else
      {
        v19 = 65794;
      }

      v50 = v43;
      v51 = v44;
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt4B5(v6, &v50, v19, v29, a4);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  outlined destroy of _ViewListOutputs(v38);
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v30 = v43;
  v31 = v44;
  return outlined destroy of _ViewInputs(&v30);
}

void *protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance GeometryReaderLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

void type metadata accessor for _LayoutRoot<GeometryReaderLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _LayoutRoot<GeometryReaderLayout>)
  {
    lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout();
    v4 = type metadata accessor for _LayoutRoot(a1, &type metadata for GeometryReaderLayout, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _LayoutRoot<GeometryReaderLayout>);
    }
  }
}

uint64_t GeometryReader.Child.updateValue()(char *a1)
{
  v123 = *MEMORY[0x1E69E9840];
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>(255);
  v4 = v3;
  v5 = *(a1 + 2);
  v6 = type metadata accessor for _VariadicView.Tree(0, v3, v5, &protocol witness table for _LayoutRoot<A>);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v87 - v8);
  v105 = type metadata accessor for ObservationTracking._AccessList();
  v113 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v88 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v87 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v87 - v14);
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_3(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  v100 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v106 = (&v87 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v112 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v103 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v108 = &v87 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v111 = &v87 - v30;
  LODWORD(v104) = *(v1 + 24) + 1;
  *(v1 + 24) = v104;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == v32)
  {
    __break(1u);
  }

  else
  {
    v107 = v22;
    v98 = v15;
    v89 = v4;
    v90 = v9;
    v92 = v7;
    v109 = v6;
    v33 = v1;
    v34 = *(v1 + 20);
    v91 = a1;
    v97 = *(a1 + 3);
    LODWORD(v94) = v32 == v34;
    v110 = v5;
    v35 = AGCreateWeakAttribute();
    v36 = v35;
    v96 = HIDWORD(v35);
    v37 = AGCreateWeakAttribute();
    v38 = v37;
    v95 = HIDWORD(v37);
    v39 = AGCreateWeakAttribute();
    v40 = v39;
    v93 = HIDWORD(v39);
    v22 = AGCreateWeakAttribute();
    v41 = AGCreateWeakAttribute();
    v42 = v41;
    v43 = HIDWORD(v41);
    a1 = v110;
    v44 = AGCreateWeakAttribute();
    v94 = &v87;
    v115[0] = v36;
    v115[1] = v96;
    v115[2] = v38;
    v115[3] = v95;
    v115[4] = v40;
    v115[5] = v93;
    v116 = v22;
    v117 = v42;
    v118 = v43;
    v119 = v44;
    v120 = v104;
    MEMORY[0x1EEE9AC00](v44);
    v9 = &v87 - 6;
    v45 = v97;
    *(&v87 - 4) = a1;
    *(&v87 - 3) = v45;
    *(&v87 - 2) = v33;
    *(&v87 - 1) = v115;
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v46 = static ObservationCenter._current;
  swift_beginAccess();
  v47 = pthread_getspecific(v46[2]);
  v48 = v113;
  v49 = v106;
  v50 = v105;
  if (!v47)
  {
    v51 = swift_slowAlloc();
    pthread_setspecific(v46[2], v51);
    v122 = type metadata accessor for ObservationCenter();
    *&v121 = v46[3];
    outlined init with take of Any(&v121, v51);

    v47 = v51;
  }

  outlined init with copy of Any(v47, &v121);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v52 = v114;
  v53 = AGGraphGetCurrentAttribute();
  v54 = v98;
  if (v53 == v32)
  {
    __break(1u);
LABEL_20:
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
    *(v52 + 24) = v49;
    goto LABEL_9;
  }

  LODWORD(v96) = v53;
  swift_beginAccess();
  v97 = *(v52 + 24);
  *(v52 + 24) = MEMORY[0x1E69E7CC0];
  v55 = (*(v48 + 56))(v49, 1, 1, v50);
  MEMORY[0x1EEE9AC00](v55);
  *(&v87 - 4) = a1;
  *(&v87 - 3) = partial apply for closure #1 in GeometryReader.Child.updateValue();
  *(&v87 - 2) = v9;
  v56 = type metadata accessor for Error();
  v22 = a1;
  v57 = v99;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v49, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v87 - 6), v100, v56, v22, MEMORY[0x1E69E7288], &v114);
  v104 = 0;
  v58 = *(v112 + 32);
  v59 = v108;
  v58(v108, v57, v22);
  v60 = v107;
  outlined init with take of ObservationTracking._AccessList?(v49, v107);
  v61 = v101;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_1(v60, v101, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], _s11Observation0A8TrackingV11_AccessListVSgMaTm_3);
  if ((*(v48 + 48))(v61, 1, v50) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v60);
    v62 = v61;
    goto LABEL_12;
  }

  v106 = v58;
  v32 = v54;
  v54 = *(v48 + 32);
  v54(v32, v61, v50);
  (*(v48 + 16))(v102, v32, v50);
  v49 = *(v52 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v52 + 24) = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v65 = v49[2];
  v64 = v49[3];
  if (v65 >= v64 >> 1)
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v49);
  }

  v49[2] = v65 + 1;
  v66 = v49 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v65;
  v48 = v113;
  v54(v66, v102, v50);
  *(v52 + 24) = v49;
  (*(v48 + 8))(v32, v50);
  v62 = v107;
  v59 = v108;
  v58 = v106;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v62);
  v58(v111, v59, v22);
  v67 = *(v52 + 24);
  v68 = *(v67 + 2);
  if (v68)
  {
    v70 = *(v48 + 16);
    v69 = v48 + 16;
    v113 = v70;
    v71 = &v67[(*(v69 + 64) + 32) & ~*(v69 + 64)];
    v72 = *(v69 + 56);
    v73 = (v69 - 8);
    v108 = v67;

    v74 = v96;
    v75 = v88;
    do
    {
      (v113)(v75, v71, v50);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v74, v75);
      (*v73)(v75, v50);
      v71 += v72;
      --v68;
    }

    while (v68);

    v22 = v110;
  }

  *(v52 + 24) = v97;

  v77 = v111;
  v76 = v112;
  v78 = v103;
  v79 = (*(v112 + 16))(v103, v111, v22);
  v80 = v90;
  v81 = _VariadicView.Tree.init(root:content:)(v79, v78, v89, v22, &protocol witness table for _LayoutRoot<A>, v90);
  v82 = MEMORY[0x1EEE9AC00](v81);
  *(&v87 - 2) = v91;
  swift_getWitnessTable(protocol conformance descriptor for GeometryReader<A>.Child, v82);
  *(&v87 - 1) = v83;
  v84 = v109;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v80, partial apply for closure #1 in StatefulRule.value.setter, (&v87 - 4), v109, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v85);
  (*(v92 + 8))(v80, v84);
  return (*(v76 + 8))(v77, v22);
}

uint64_t partial apply for closure #1 in GeometryReader.Child.updateValue()@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[5];
  v9 = v2[2];
  v10 = v4;
  v11 = v5;
  v6 = type metadata accessor for GeometryReader(0, v9, v4, a1);
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in GeometryReader.Child.updateValue(), &v8, v6, v9, a2);
}

uint64_t partial apply for closure #1 in closure #1 in GeometryReader.Child.updateValue()(uint64_t (**a1)(_OWORD *))
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v4;
  v6[2] = *(v2 + 32);
  v7 = *(v2 + 48);
  return v3(v6);
}

double protocol witness for LayoutEngine.sizeThatFits(_:) in conformance LayoutComputer.DefaultEngine(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 8))
  {
    return 10.0;
  }

  return result;
}

uint64_t _VariadicView.Tree.init(root:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v11 = type metadata accessor for _VariadicView.Tree(0, a3, a4, a5);
  v12 = *(*(a4 - 8) + 32);
  v13 = a6 + *(v11 + 44);

  return v12(v13, a2, a4);
}

double ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char *a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a4;
  v14 = *a5;
  v15 = *(a7 + 8);
  v16 = *(a7 + 16);
  v27 = *(a7 + 24);
  v26 = *(a7 + 32);
  v25 = *(a7 + 40);
  type metadata accessor for PropertyList.Tracker();
  v17 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>(0, v18, v19, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = MEMORY[0x1E69E7CC8];
  *(v21 + 24) = 0;
  *(v21 + 32) = v22;
  v23 = MEMORY[0x1E69E7CC0];
  *(v21 + 40) = v22;
  *(v21 + 48) = v23;
  *(v21 + 56) = 0;
  *(v17 + 16) = v21;
  *(a8 + 64) = v17;
  *a8 = a1;
  *(a8 + 4) = a2;
  *(a8 + 8) = a3;
  *(a8 + 12) = v13;
  *(a8 + 13) = v14;
  *(a8 + 14) = a6;
  result = *a7;
  *(a8 + 16) = *a7;
  *(a8 + 24) = v15;
  *(a8 + 32) = v16;
  *(a8 + 40) = v27;
  *(a8 + 48) = v26;
  *(a8 + 56) = v25;
  return result;
}

uint64_t _s7SwiftUI8Resolver33_04178B540DC3B0BFBD7679A049CE48C7LLVSgWOg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for EffectAnimator.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

double static StaticIf<>._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a3;
  v45 = a4;
  v46 = a9;
  v82 = *MEMORY[0x1E69E9840];
  v15 = a2[1];
  v16 = a2[3];
  v77 = a2[2];
  v78 = v16;
  v79 = a2[4];
  v17 = a2[1];
  v75 = *a2;
  v76 = v17;
  v69 = v75;
  v70 = v15;
  v43 = a11;
  v42 = *a1;
  v80 = *(a2 + 20);
  v71 = v77;
  v18 = *(a8 + 8);
  outlined init with copy of _GraphInputs(&v75, &v63);
  v19 = v18(&v69, a5, a8);
  v81[0] = v69;
  v81[1] = v70;
  v81[2] = v71;
  outlined destroy of _GraphInputs(v81);
  v20 = a6;
  v21 = a6;
  v22 = a7;
  v23 = type metadata accessor for StaticIf(255, a5, v21, a7);
  if (v19)
  {
    v41 = &v41;
    MEMORY[0x1EEE9AC00](v23);
    v49 = v42;
    type metadata accessor for _GraphValue(0, v24, v25, v26);
    _GraphValue.subscript.getter(partial apply for closure #1 in static StaticIf<>._makeView(view:inputs:), v20, &v48);
    v27 = v48;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v60 = v78;
    v61 = v79;
    v62 = v80;
    v57 = v75;
    v58 = v76;
    v59 = v77;
    v29 = v77;
    LODWORD(v59) = 0;
    v47 = v27;
    v63 = v75;
    v64 = v76;
    v68 = v80;
    v66 = v78;
    v67 = v79;
    v65 = v59;
    v53 = v59;
    v54 = v78;
    v55 = v79;
    v56 = v80;
    v51 = v75;
    v52 = v76;
    v30 = *(a10 + 24);
    outlined init with copy of _ViewInputs(&v75, &v69);
    outlined init with copy of _ViewInputs(&v63, &v69);
    v30(v50, &v47, &v51, v44, v45, v20, a10);
    v71 = v53;
    v72 = v54;
    v73 = v55;
    v74 = v56;
    v69 = v51;
    v70 = v52;
    outlined destroy of _ViewInputs(&v69);
    LODWORD(v59) = v29;
    if (ShouldRecordTree)
    {
LABEL_9:
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v50, &v57);
      AGSubgraphEndTreeElement();
    }
  }

  else
  {
    v41 = &v41;
    MEMORY[0x1EEE9AC00](v23);
    v31 = v43;
    v49 = v42;
    type metadata accessor for _GraphValue(0, v32, v33, v34);
    _GraphValue.subscript.getter(partial apply for closure #2 in static StaticIf<>._makeView(view:inputs:), a7, &v48);
    v35 = v48;
    v36 = AGSubgraphShouldRecordTree();
    if (v36)
    {
      AGSubgraphBeginTreeElement();
    }

    v60 = v78;
    v61 = v79;
    v62 = v80;
    v57 = v75;
    v58 = v76;
    v59 = v77;
    v37 = v77;
    LODWORD(v59) = 0;
    v47 = v35;
    v63 = v75;
    v64 = v76;
    v68 = v80;
    v66 = v78;
    v67 = v79;
    v65 = v59;
    v53 = v59;
    v54 = v78;
    v55 = v79;
    v56 = v80;
    v51 = v75;
    v52 = v76;
    v38 = *(v31 + 24);
    outlined init with copy of _ViewInputs(&v75, &v69);
    outlined init with copy of _ViewInputs(&v63, &v69);
    v38(v50, &v47, &v51, v44, v45, v22, v31);
    v71 = v53;
    v72 = v54;
    v73 = v55;
    v74 = v56;
    v69 = v51;
    v70 = v52;
    outlined destroy of _ViewInputs(&v69);
    LODWORD(v59) = v37;
    if (v36)
    {
      goto LABEL_9;
    }
  }

  v53 = v59;
  v54 = v60;
  v55 = v61;
  v56 = v62;
  v51 = v57;
  v52 = v58;
  outlined destroy of _ViewInputs(&v51);
  result = *&v50[1];
  v40 = v46;
  *v46 = *v50;
  v40[1] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.ChameleonColor(uint64_t a1, int a2)
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

uint64_t closure #1 in ConditionalTypeDescriptor.project(at:baseIndex:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a5 + 1;
  if (__OFADD__(a5, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = type metadata accessor for ConditionalTypeDescriptor(0, a8, a9, a4);
    return ConditionalTypeDescriptor.project(at:baseIndex:_:)(v12, v9, a6, a7, v13);
  }

  return result;
}

uint64_t _GraphInputs.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PropertyList.subscript.getter(a1, *v3, a2, *(a3 + 8));
}

{
  return PropertyList.subscript.getter(a1, *v3, a2, *(a3 + 8));
}

void *static View.makeDebuggableView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[3];
  v35[2] = a2[2];
  v35[3] = v10;
  v35[4] = a2[4];
  v36 = *(a2 + 20);
  v11 = a2[1];
  v35[0] = *a2;
  v35[1] = v11;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v13 = a2[3];
  v27 = a2[2];
  v28 = v13;
  v29 = a2[4];
  v30 = *(a2 + 20);
  v14 = a2[1];
  v25 = *a2;
  v26 = v14;
  v15 = v27;
  LODWORD(v27) = 0;
  v18 = v9;
  v31[0] = v25;
  v31[1] = v14;
  v32 = v30;
  v31[3] = v13;
  v31[4] = v29;
  v31[2] = v27;
  v21 = v27;
  v22 = v13;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v14;
  v16 = *(a4 + 24);
  outlined init with copy of _ViewInputs(v35, v33);
  outlined init with copy of _ViewInputs(v31, v33);
  v16(&v18, &v19, a3, a4);
  v33[2] = v21;
  v33[3] = v22;
  v33[4] = v23;
  v34 = v24;
  v33[0] = v19;
  v33[1] = v20;
  outlined destroy of _ViewInputs(v33);
  LODWORD(v27) = v15;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v25);
    AGSubgraphEndTreeElement();
  }

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  return outlined destroy of _ViewInputs(&v19);
}

uint64_t _ViewInputs.animatedPosition()(uint64_t (*a1)(__int128 *))
{
  v6 = *v1;
  v3 = *(v1 + 2);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v10[0] = *(v1 + 56);
  *(v10 + 12) = *(v1 + 68);
  v7 = v3;
  swift_beginAccess();
  v4 = a1(&v6);
  swift_endAccess();
  return v4;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _SafeAreaRegionsIgnoringLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t _AppearanceActionModifier.MergedCallbacks.updateValue()()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 16);

  v3 = *AGGraphGetValue();

  if (v2 != v3 >> 1)
  {

LABEL_4:
    v4 = *AGGraphGetValue() >> 1;
    type metadata accessor for _AppearanceActionModifier.MergedBox();
    v1 = swift_allocObject();
    *(v1 + 20) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0;
    *(v1 + 16) = v4;
    *(v0 + 8) = v1;
  }

  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  v9 = Value[2];
  v8 = Value[3];
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  *(v1 + 32) = *Value;
  *(v1 + 40) = v7;
  *(v1 + 48) = v9;
  *(v1 + 56) = v8;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9, v8);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v6, v7);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v10, v11);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v12, v13);
  swift_retain_n();
  AGGraphSetOutputValue();
}

double outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t AnimationBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 160) - 8) + 8))(v0 + *(*v0 + 176));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for _OverlayShapeModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 2;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -2)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 2;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v22 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *(v22 + v10);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

Swift::Void __swiftcall AppearanceEffect.updateValue()()
{
  if (*(v0 + 48) == *MEMORY[0x1E698D3F8])
  {
    *(v0 + 48) = AGGraphGetCurrentAttribute();
  }

  v1 = *(v0 + 44);
  if (v1 != *AGGraphGetValue() >> 1)
  {
    *(v0 + 44) = *AGGraphGetValue() >> 1;
    AppearanceEffect.disappeared()();
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*Value, v4);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5, v6);
  outlined consume of _AppearanceActionModifier?(v7, v8, v9, v10);
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  if ((*(v0 + 41) & 1) == 0)
  {

    AppearanceEffect.appeared()();
  }
}

Swift::Void __swiftcall AppearanceEffect.appeared()()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    v1 = *(v0 + 8);
    if (v1 >= 2)
    {
      v2 = *(v0 + 16);
      v3 = swift_allocObject();
      *(v3 + 16) = v1;
      *(v3 + 24) = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
      *(v4 + 24) = v3;
      v11[0] = 0;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, v2);

      static Update.enqueueAction(reason:_:)(v11, thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v4);
    }

    *(v0 + 40) = 1;
    v5 = specialized static GraphHost.currentHost.getter();
    swift_beginAccess();
    v6 = *(v5 + 169);

    if (v6)
    {
      if (one-time initialization token for v6 != -1)
      {
        swift_once();
      }

      v7 = static Semantics.v6;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          return;
        }
      }

      else if (static Semantics.forced < v7)
      {
        return;
      }

      if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
      {
        __break(1u);
      }

      else
      {
        v8 = AGCreateWeakAttribute();
        v10 = 17;
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        static Update.enqueueAction(reason:_:)(&v10, partial apply for closure #2 in AppearanceEffect.appeared(), v9);
      }
    }
  }
}

double outlined consume of _AppearanceActionModifier?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(result, a2);

    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3, a4);
  }

  return v7;
}

uint64_t type metadata completion function for PlatformViewResponderBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContentResponderHelper(319, *(a1 + 256), *(a1 + 264), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t EnvironmentValues.defaultForegroundColor.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  v4 = v2[1];
  if (!v4)
  {
    v7 = a2(v3);
    if (!v7)
    {
      return 0;
    }

    v6 = *(v7 + 72);

    if (!v6)
    {
      return 0;
    }

LABEL_6:
    v8 = specialized ShapeStyle.fallbackColor(in:level:)(v3, v4, 0, v6);

    return v8;
  }

  v6 = a1(v3);

  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

void CoreViewRepresentableFeatureBuffer.append<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for CoreViewRepresentableFeatureBuffer._VTable(0, a2, a4, a5);

  UnsafeHeterogeneousBuffer.append<A>(_:vtable:)(a1, v8, a2, a3);
}

uint64_t _ViewInputs.layoutDirection.getter()
{
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  return v1;
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.modifyViewInputs<A>(elt:inputs:proxy:)(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v13 = *a1;
  v10 = *(v5 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v12 = v9;
  return (*(*(v5 + 160) + 8))(a2, &v12, a4, a5, v10);
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.modifyViewInputs<A>(inputs:proxy:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *v4;
  v7 = **v4;
  v10 = v6;
  v9 = v5;
  return (*(v7 + 112))(&v10, a1, &v9, a3, a4);
}

unint64_t PreferencesInputs.contains<A>(_:includeHostPreferences:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  result = PreferenceKeys._index(of:)(a3);
  v10 = *(v8 + 16);
  if (result == v10)
  {
    goto LABEL_16;
  }

  if (result >= v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v8 + 16 * result + 32) != a3)
  {
LABEL_16:
    if ((a2 & 1) == 0)
    {
      return 0;
    }

    if (((*(a4 + 40))(a3, a4) & 1) == 0)
    {
      return 0;
    }

    result = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);
    v11 = *(v8 + 16);
    if (result == v11)
    {
      return 0;
    }

    if (result < v11)
    {
      return *(v8 + 16 * result + 32) == &type metadata for HostPreferencesKey;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  return 1;
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.modifyViewOutputs<A>(outputs:proxy:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *v4;
  v7 = **v4;
  v10 = v6;
  v9 = v5;
  return (*(v7 + 128))(&v10, a1, &v9, a3, a4);
}

uint64_t _ViewInputs.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _GraphInputs.subscript.getter(a1, a2, *(a3 + 8));
}

{
  return _GraphInputs.subscript.getter(a1, a2, *(a3 + 8));
}

uint64_t getEnumTagSinglePayload for _ViewInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 84))
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

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.modifyViewOutputs<A>(elt:outputs:proxy:)(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v13 = *a1;
  v10 = *(v5 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v12 = v9;
  return (*(*(v5 + 160) + 24))(a2, &v12, a4, a5, v10);
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.modifyBridgedInputs<A>(elt:inputs:proxy:)(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v13 = *a1;
  v10 = *(v5 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v12 = v9;
  return (*(*(v5 + 160) + 16))(a2, &v12, a4, a5, v10);
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.modifyBridgedInputs<A>(inputs:proxy:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *v4;
  v7 = **v4;
  v10 = v6;
  v9 = v5;
  return (*(v7 + 120))(&v10, a1, &v9, a3, a4);
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.modifyWrappedOutputs<A>(outputs:proxy:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *v4;
  v7 = **v4;
  v10 = v6;
  v9 = v5;
  return (*(v7 + 136))(&v10, a1, &v9, a3, a4);
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.modifyWrappedOutputs<A>(elt:outputs:proxy:)(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v13 = *a1;
  v10 = *(v5 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v12 = v9;
  return (*(*(v5 + 160) + 32))(a2, &v12, a4, a5, v10);
}

uint64_t EnvironmentValues.preferenceBridge.setter(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  swift_weakInit();
  v2 = *v1;
  outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(v5, v4);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(v1, v4);

  outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v4);
  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016PreferenceBridgeK033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Ttg5(v2, *v1);
  }

  return outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v5);
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA07EnabledF033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnabledKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

double key path setter for EnvironmentValues.isEnabled : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA07EnabledF033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA07EnabledK033_09CE35833F3876FE3A3A46977D61FC64LLVG_Ttg5(v4, *a2);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnabledKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnabledKey>>);
    }
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance BothFeatures<A, B>(_OWORD *a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for BothFeatures<A, B>);

  return static ViewInputFlag.evaluate(inputs:)(a1, a2, v4);
}

uint64_t static ViewInputFlag.evaluate(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = a1[1];
  v18[1] = *a1;
  v18[2] = v14;
  v18[3] = a1[2];
  v15 = swift_checkMetadataState();
  _GraphInputs.subscript.getter(v15, v15, v6);
  (*(a3 + 48))(a2, a3);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v16(v13, AssociatedTypeWitness);
  return a2 & 1;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance BothFeatures<A, B>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for BothFeatures<A, B>, a1);
  result = static Feature.defaultValue.getter(a1, v4);
  *a2 = result & 1;
  return result;
}

void instantiation function for generic protocol witness table for BothFeatures<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for BothFeatures<A, B>);
  *(a1 + 8) = v2;
}

{
  swift_getWitnessTable(protocol conformance descriptor for BothFeatures<A, B>);
  *(a1 + 16) = v2;
}

uint64_t static BothFeatures.isEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 16))())
  {
    return (*(a4 + 16))(a2, a4) & 1;
  }

  else
  {
    return 0;
  }
}

double specialized static StyleContextWriter._makeInputs(modifier:inputs:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(v4, v8[0]) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  AnyStyleContextType.pushing<A>(_:)(v8);
  v5 = v8[0];
  v6 = v8[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(a1, v5, v6);

  return result;
}

void *static StyleableView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v122 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v112 = *(a2 + 32);
  v113 = v9;
  v11 = *(a2 + 48);
  v114 = *(a2 + 64);
  v12 = *(a2 + 16);
  v111[0] = *a2;
  v111[1] = v12;
  v107 = v112;
  v108 = v11;
  v109 = *(a2 + 64);
  v13 = *a1;
  v115 = *(a2 + 80);
  v110 = *(a2 + 80);
  v105 = v111[0];
  v106 = v10;
  v116[1] = v10;
  v117 = v112;
  v116[0] = v111[0];
  v14 = *&v111[0];
  outlined init with copy of _ViewInputs(v111, &v99);
  outlined init with copy of _GraphInputs(v116, &v99);
  v15 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(v14);
  v118 = v14;
  v119 = *(a2 + 8);
  v120 = *(a2 + 24);
  v121 = *(a2 + 40);
  outlined destroy of _GraphInputs(&v118);
  if (!v15 || v15 != a3)
  {
    v26 = _GraphInputs.setCurrentStyleableView<A>(_:)(a3, a3);
    if ((*(a4 + 56))(a3, a4, v26) & 1) != 0 && (v27 = WORD2(v117), (BYTE4(v117) & 0x20) != 0) && (v48 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v108), (v27 & 0x2000) == 0) && (v48)
    {
      v49 = v105;
      BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
      v50 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v49, v99);
      v69 = a5;
      if (v50)
      {
        v67 = *(v50 + 72);
      }

      else
      {
        v67 = 0;
      }

      v51 = AGMakeUniqueID();
      v52 = v51;
      v66 = v51;
      _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v105, v52);
      v53 = DWORD2(v114);
      v54 = HIDWORD(v113);
      v55 = v114;

      v68 = &v66;
      *&v99 = __PAIR64__(v55, v13);
      *(&v99 + 1) = __PAIR64__(v54, v53);
      *&v100 = __PAIR64__(v67, v66);
      MEMORY[0x1EEE9AC00](v56);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v63[2] = AssociatedTypeWitness;
      ScrapeableResolvedRepresentation = type metadata accessor for MakeScrapeableResolvedRepresentation(0, a3, a4, v57);
      swift_getWitnessTable(protocol conformance descriptor for MakeScrapeableResolvedRepresentation<A>, ScrapeableResolvedRepresentation);
      v65 = v58;
      v59 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v99, partial apply for closure #1 in Attribute.init<A>(_:), v63, ScrapeableResolvedRepresentation, MEMORY[0x1E69E73E0], v59, MEMORY[0x1E69E7410], v60);
      v61 = v93;
      AGGraphSetFlags();
      _GraphValue.init(_:)(v61, &v71);
      v62 = v71;
      v101 = v107;
      v102 = v108;
      v103 = v109;
      v104 = v110;
      v99 = v105;
      v100 = v106;
      ShouldRecordTree = AGSubgraphShouldRecordTree();
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      v83 = v101;
      v84 = v102;
      v85 = v103;
      v86 = v104;
      v81 = v99;
      v82 = v100;
      v92 = v104;
      v34 = v101;
      LODWORD(v83) = 0;
      LODWORD(v73[0]) = v62;
      v87 = v99;
      v88 = v100;
      v90 = v102;
      v91 = v103;
      v89 = v83;
      v77 = v83;
      v78 = v102;
      v79 = v103;
      v80 = v104;
      v75 = v99;
      v76 = v100;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = *(AssociatedConformanceWitness + 24);
      outlined init with copy of _ViewInputs(&v99, &v93);
      outlined init with copy of _ViewInputs(&v87, &v93);
      a5 = v69;
    }

    else
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      LODWORD(v99) = v13;
      ResolvedRepresentation = type metadata accessor for MakeResolvedRepresentation(0, a3, a4, v29);
      swift_getWitnessTable(protocol conformance descriptor for MakeResolvedRepresentation<A>, ResolvedRepresentation);
      _GraphValue.init<A>(_:)(&v99, AssociatedTypeWitness, ResolvedRepresentation, v31, &v71);
      v32 = v71;
      v101 = v107;
      v102 = v108;
      v103 = v109;
      v104 = v110;
      v99 = v105;
      v100 = v106;
      ShouldRecordTree = AGSubgraphShouldRecordTree();
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      v83 = v101;
      v84 = v102;
      v85 = v103;
      v86 = v104;
      v81 = v99;
      v82 = v100;
      v92 = v104;
      v34 = v101;
      LODWORD(v83) = 0;
      LODWORD(v73[0]) = v32;
      v87 = v99;
      v88 = v100;
      v90 = v102;
      v91 = v103;
      v89 = v83;
      v77 = v83;
      v78 = v102;
      v79 = v103;
      v80 = v104;
      v75 = v99;
      v76 = v100;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = *(AssociatedConformanceWitness + 24);
      outlined init with copy of _ViewInputs(&v99, &v93);
      outlined init with copy of _ViewInputs(&v87, &v93);
    }

    v36(v73, &v75, AssociatedTypeWitness, AssociatedConformanceWitness);
    v95 = v77;
    v96 = v78;
    v97 = v79;
    v98 = v80;
    v93 = v75;
    v94 = v76;
    outlined destroy of _ViewInputs(&v93);
    LODWORD(v83) = v34;
    if (!ShouldRecordTree)
    {
      goto LABEL_18;
    }

    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v81);
    goto LABEL_17;
  }

  v16 = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for StyleInput(0, v16, v17, v18);
  _ViewInputs.popLast<A, B>(_:)(v19, &type metadata for AnyStyleModifier, &protocol witness table for StyleInput<A>, &v71);
  v20 = v72;
  if (!v72)
  {
    v69 = a5;
    LODWORD(v99) = v13;
    v37 = swift_getAssociatedTypeWitness();
    v39 = type metadata accessor for ModifiedContent(0, a3, v37, v38);
    DefaultRepresentation = type metadata accessor for MakeDefaultRepresentation(0, a3, a4, v40);
    swift_getWitnessTable(protocol conformance descriptor for MakeDefaultRepresentation<A>, DefaultRepresentation);
    _GraphValue.init<A>(_:)(&v99, v39, DefaultRepresentation, v42, v70);
    v43 = v70[0];
    v101 = v107;
    v102 = v108;
    v103 = v109;
    v104 = v110;
    v99 = v105;
    v100 = v106;
    v44 = AGSubgraphShouldRecordTree();
    if (v44)
    {
      AGSubgraphBeginTreeElement();
    }

    v68 = v39;
    v83 = v101;
    v84 = v102;
    v85 = v103;
    v86 = v104;
    v81 = v99;
    v82 = v100;
    v92 = v104;
    v45 = v101;
    LODWORD(v83) = 0;
    LODWORD(v73[0]) = v43;
    v87 = v99;
    v88 = v100;
    v90 = v102;
    v91 = v103;
    v89 = v83;
    v77 = v83;
    v78 = v102;
    v79 = v103;
    v80 = v104;
    v75 = v99;
    v76 = v100;
    outlined init with copy of _ViewInputs(&v99, &v93);
    outlined init with copy of _ViewInputs(&v87, &v93);
    v46 = *(a4 + 8);
    v47 = swift_getAssociatedConformanceWitness();
    static ModifiedContent<>._makeView(view:inputs:)(v73, &v75, a3, v37, v46, *(*(v47 + 8) + 8), v69);
    v95 = v77;
    v96 = v78;
    v97 = v79;
    v98 = v80;
    v93 = v75;
    v94 = v76;
    outlined destroy of _ViewInputs(&v93);
    LODWORD(v83) = v45;
    if (!v44)
    {
      goto LABEL_18;
    }

    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v69, &v81);
LABEL_17:
    AGSubgraphEndTreeElement();
LABEL_18:
    v73[2] = v83;
    v73[3] = v84;
    v73[4] = v85;
    v74 = v86;
    v73[0] = v81;
    v73[1] = v82;
    outlined destroy of _ViewInputs(v73);
    v77 = v107;
    v78 = v108;
    v79 = v109;
    v80 = v110;
    v75 = v105;
    v76 = v106;
    v25 = &v75;
    return outlined destroy of _ViewInputs(v25);
  }

  v21 = v71;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v23 = result;
    LODWORD(v75) = v13;
    v89 = v107;
    v90 = v108;
    v91 = v109;
    v92 = v110;
    v87 = v105;
    v88 = v106;
    v83 = v107;
    v84 = v108;
    v85 = v109;
    v86 = v110;
    v81 = v105;
    v82 = v106;
    v24 = result[1];
    outlined init with copy of _ViewInputs(&v87, &v99);
    v24(&v75, v21, v20, &v81, a3, a4, v20, v23);
    v95 = v83;
    v96 = v84;
    v97 = v85;
    v98 = v86;
    v93 = v81;
    v94 = v82;
    outlined destroy of _ViewInputs(&v93);
    v101 = v107;
    v102 = v108;
    v103 = v109;
    v104 = v110;
    v99 = v105;
    v100 = v106;
    v25 = &v99;
    return outlined destroy of _ViewInputs(v25);
  }

  __break(1u);
  return result;
}

void *static StyleModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v45 = *(a2 + 32);
  v46 = v9;
  v11 = *(a2 + 48);
  v47 = *(a2 + 64);
  v12 = *(a2 + 16);
  v44[0] = *a2;
  v44[1] = v12;
  v40 = v45;
  v41 = v11;
  v42 = *(a2 + 64);
  v13 = *a1;
  v48 = *(a2 + 80);
  v43 = *(a2 + 80);
  v38 = v44[0];
  v39 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for StyleOverrideInput(0, AssociatedTypeWitness, v15, v16);
  outlined init with copy of _ViewInputs(v44, v36);
  _ViewInputs.subscript.getter(v17, v17, &protocol witness table for StyleOverrideInput<A>);
  v19 = *(&v34[0] + 1);
  if (*(&v34[0] + 1))
  {
    v13 = v34[0];
  }

  else
  {
    v19 = type metadata accessor for StyleModifierType(0, a5, a6, v18);
  }

  LODWORD(v36[0]) = v13;
  *(&v36[0] + 1) = v19;
  v20 = swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for StyleInput(0, v20, v21, v22);
  _ViewInputs.append<A, B>(_:to:)(v36, v23, v23, &type metadata for AnyStyleModifier, &protocol witness table for StyleInput<A>, &protocol witness table for AnyStyleModifier);
  v32[2] = v40;
  v32[3] = v41;
  v32[4] = v42;
  v33 = v43;
  v32[0] = v38;
  v32[1] = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v26 = v38;
  v27 = v39;
  v24 = outlined init with copy of _ViewInputs(v32, v36);
  a3(v24, &v26);
  v34[2] = v28;
  v34[3] = v29;
  v34[4] = v30;
  v35 = v31;
  v34[0] = v26;
  v34[1] = v27;
  outlined destroy of _ViewInputs(v34);
  v36[2] = v40;
  v36[3] = v41;
  v36[4] = v42;
  v37 = v43;
  v36[0] = v38;
  v36[1] = v39;
  return outlined destroy of _ViewInputs(v36);
}

uint64_t static StyleModifierType.makeView<A>(view:modifier:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  v16 = a4[3];
  v77 = a4[2];
  v78 = v16;
  v79 = a4[4];
  v80 = *(a4 + 20);
  v17 = a4[1];
  v75 = *a4;
  v76 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  static DynamicPropertyCache.fields(of:)(AssociatedTypeWitness, &v81);
  v19 = v81;
  v71 = v77;
  v72 = v78;
  v73 = v79;
  v74 = v80;
  v69 = v75;
  v70 = v76;
  v30 = DWORD1(v82);
  v31 = v15;
  LODWORD(v55) = v15;
  v63 = v81;
  v34 = *(&v81 + 1);
  v35 = v82;
  LOBYTE(v64) = v82;
  DWORD1(v64) = DWORD1(v82);
  outlined init with copy of _ViewInputs(&v75, &v81);
  v32 = a6;
  static StyleModifierType.makeStyleBody<A>(view:modifier:inputs:fields:)(v61, &v81, &v55, a2, a3, &v69, &v63, a5, a6, a7, a8);
  v20 = v61[0];
  v29 = v81;
  v33 = v82;
  v21 = swift_getAssociatedTypeWitness();
  v83 = v71;
  v84 = v72;
  v85 = v73;
  v86 = v74;
  v81 = v69;
  v82 = v70;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v57 = v83;
  v58 = v84;
  v59 = v85;
  v60 = v86;
  v55 = v81;
  v56 = v82;
  v62 = v86;
  v23 = v83;
  LODWORD(v57) = 0;
  LODWORD(v43) = v20;
  v61[0] = v81;
  v61[1] = v82;
  v61[3] = v84;
  v61[4] = v85;
  v61[2] = v57;
  v51 = v57;
  v52 = v84;
  v53 = v85;
  v54 = v86;
  v49 = v81;
  v50 = v82;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v81, &v63);
  outlined init with copy of _ViewInputs(v61, &v63);
  v25(v38, &v43, &v49, v21, AssociatedConformanceWitness);
  v65 = v51;
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v63 = v49;
  v64 = v50;
  outlined destroy of _ViewInputs(&v63);
  LODWORD(v57) = v23;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v38, &v55);
    AGSubgraphEndTreeElement();
  }

  v51 = v57;
  v52 = v58;
  v53 = v59;
  v54 = v60;
  v49 = v55;
  v50 = v56;
  outlined destroy of _ViewInputs(&v49);
  v26 = v38[0];
  v27 = v38[1];
  if (v33)
  {
    v45 = v71;
    v46 = v72;
    v47 = v73;
    v48 = v74;
    v43 = v69;
    v44 = v70;
    outlined destroy of _ViewInputs(&v43);
  }

  else
  {
    v42 = v29;
    v37 = v31;
    v39[0] = v19;
    v39[1] = v34;
    v40 = v35;
    v41 = v30;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v37, v39, v32);
    v45 = v71;
    v46 = v72;
    v47 = v73;
    v48 = v74;
    v43 = v69;
    v44 = v70;
    outlined destroy of _ViewInputs(&v43);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout(v19, v34, v35);
  *a9 = v26;
  a9[1] = v27;
  return result;
}

uint64_t _ViewList_ID.Canonical.init(id:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 52);

    if (v7)
    {
      v4 = -1;
    }
  }

  else
  {

    v6 = 0;
  }

  *a2 = v3;
  *(a2 + 4) = v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t static TraitTransformerModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t initializeWithCopy for _OpacityShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 48) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

BOOL static InvertedViewInputPredicate.evaluate(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return ((*(a3 + 8))(v5) & 1) == 0;
}

uint64_t static EnvironmentModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 16);
  swift_beginAccess();
  v8 = *(v7 + 16);
  v15[0] = v6;
  v15[1] = v8;
  updated = type metadata accessor for UpdateEnvironment(0, a3, a4, v9);
  swift_getWitnessTable(protocol conformance descriptor for UpdateEnvironment<A>, updated);
  v18 = v10;
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, closure #1 in Attribute.init<A>(_:)partial apply, v16, updated, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return _GraphInputs.environment.setter(v14);
}

uint64_t static StyleContextTypeBox.pushing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleStyleContext(255, TupleTypeMetadata2, v4, v5);
  return type metadata accessor for StyleContextTypeBox(0, v6, &protocol witness table for TupleStyleContext<A>, v7);
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(v6, v10);
  if (!v7 || ((*(a3 + 8))(*(v7 + 72), *(v7 + 80), a2, a3) & 1) == 0)
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<StyleContextInput>, &type metadata for StyleContextInput, &protocol witness table for StyleContextInput, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for StyleContextInput, 0, v8);
  }
}

double _GraphInputs.pushStyleContext<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(v5, v9[0]) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  AnyStyleContextType.pushing<A>(_:)(v9);
  v6 = v9[0];
  v7 = v9[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(v4, v6, v7);

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UpdateEnvironment<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for UpdateEnvironment<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t AnyStyleContextType.pushing<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 8) + 32))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for GestureLabelModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t assignWithTake for SimultaneousGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t default argument 0 of Rule.withObservation<A>(observationCenter:do:)()
{
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v0 = static ObservationCenter._current;
  swift_beginAccess();
  v1 = pthread_getspecific(v0[2]);
  if (!v1)
  {
    v2 = swift_slowAlloc();
    pthread_setspecific(v0[2], v2);
    v5 = type metadata accessor for ObservationCenter();
    *&v4 = v0[3];
    outlined init with take of Any(&v4, v2);

    v1 = v2;
  }

  outlined init with copy of Any(v1, &v4);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  return v6;
}

uint64_t Rule.withObservation<A>(observationCenter:do:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v81 = a8;
  v76 = a7;
  v74 = a2;
  v75 = a3;
  v71 = a9;
  v83 = *MEMORY[0x1E69E9840];
  v14 = type metadata accessor for ObservationTracking._AccessList();
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v64[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v64[-v19];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v64[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v72 = &v64[-v27];
  v28 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v73 = &v64[-v33];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_16;
  }

  v78 = v28;
  v65 = CurrentAttribute;
  v66 = a4;
  v80 = a6;
  swift_beginAccess();
  v35 = *(a1 + 24);
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v36 = (*(v79 + 56))(v25, 1, 1, v14);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v74;
  v37 = v75;
  *&v64[-32] = a5;
  *&v64[-24] = v38;
  *&v64[-16] = v37;
  v39 = type metadata accessor for Error();
  v40 = v77;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, v76, &v64[-48], v21, v39, a5, MEMORY[0x1E69E7288], &v82);
  if (v40)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v25, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    *(a1 + 24) = v35;
  }

  v75 = 0;
  v76 = v35;
  v42 = *(v78 + 32);
  v77 = a5;
  v78 += 32;
  v43 = a5;
  a5 = v42;
  (v42)(v73, v31, v43);
  v44 = MEMORY[0x1E69E81D0];
  v45 = MEMORY[0x1E69E6720];
  v46 = v72;
  _s11Observation0A8TrackingV11_AccessListVSgWObTm_0(v25, v72, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v47 = v68;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_2(v46, v68, &lazy cache variable for type metadata for ObservationTracking._AccessList?, v44, v45);
  v48 = v79;
  if ((*(v79 + 48))(v47, 1, v14) != 1)
  {
    a4 = *(v48 + 32);
    v51 = v70;
    a4(v70, v47, v14);
    v28 = v48;
    (*(v48 + 16))(v69, v51, v14);
    v31 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v31;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_7:
      v54 = v31[2];
      v53 = v31[3];
      if (v54 >= v53 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v31);
      }

      v31[2] = v54 + 1;
      v55 = v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v54;
      v48 = v28;
      a4(v55, v69, v14);
      *(a1 + 24) = v31;
      (*(v28 + 8))(v70, v14);
      v50 = v71;
      v49 = v72;
      goto LABEL_10;
    }

LABEL_16:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(a1 + 24) = v31;
    goto LABEL_7;
  }

  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v46, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v49 = v47;
  v50 = v71;
LABEL_10:
  v56 = v76;
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v49, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  (a5)(v50, v73, v77);
  v57 = *(a1 + 24);
  v58 = *(v57 + 16);
  if (v58)
  {
    v60 = *(v48 + 16);
    v59 = v48 + 16;
    v78 = v60;
    v79 = a10;
    v61 = v57 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
    v77 = *(v59 + 56);
    v62 = v67;
    v74 = v57;

    v63 = v65;
    do
    {
      (v78)(v62, v61, v14);
      swift_getAssociatedTypeWitness();
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v63, v62);
      (*(v59 - 8))(v62, v14);
      v61 += v77;
      --v58;
    }

    while (v58);

    v56 = v76;
  }

  *(a1 + 24) = v56;
}

uint64_t closure #1 in ObservationCenter._withObservation<A>(do:)partial apply(uint64_t a1, void *a2)
{
  return _s7SwiftUI17ObservationCenterC05_withC02dox5value_0C00C8TrackingV11_AccessListVSg06accessJ0txyKXE_tKlFxSpyALGKXEfU_TA_0(a1, a2);
}

{
  return partial apply for closure #1 in ObservationCenter._withObservation<A>(do:)(a1, a2);
}

uint64_t protocol witness for ViewList.count(style:) in conformance BaseViewList(unint64_t *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 8))(v3, v4);
  if (v2)
  {
    v6 = result;
    result *= v2 >> 1;
    if ((v6 * (v2 >> 1)) >> 64 != result >> 63)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _VariadicView_Children.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in _VariadicView_Children.subscript.getter(a1, v3, v25);
  static Update.end()();
  _MovableLockUnlock(v6);
  outlined init with copy of _VariadicView_Children.Element?(v25, &v18);
  if (*(&v19 + 1))
  {
    v7 = v23;
    *(a2 + 64) = v22;
    *(a2 + 80) = v7;
    *(a2 + 96) = v24;
    v8 = v19;
    *a2 = v18;
    *(a2 + 16) = v8;
    v9 = v21;
    *(a2 + 32) = v20;
    *(a2 + 48) = v9;
    return outlined destroy of _VariadicView_Children.Element?(v25);
  }

  outlined destroy of _VariadicView_Children.Element?(&v18);
  v10 = static os_log_type_t.fault.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static Log.internalErrorsLog;
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E6530];
  *(v12 + 16) = xmmword_18DDA6EB0;
  v14 = MEMORY[0x1E69E65A8];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = a1;
  v15 = v11;
  os_log(_:dso:log:_:_:)(v10, &dword_18D018000, v15, "Accessing invalid variadic view child at index %d", v18);

  *(a2 + 24) = &type metadata for EmptyViewListElements;
  *(a2 + 32) = &protocol witness table for EmptyViewListElements;
  v16 = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = MEMORY[0x1E69E7CC0];
  *(a2 + 48) = 0;
  if (a1 > 0x7FFFFFFF)
  {
    __break(1u);
  }

  else if (a1 >= 0xFFFFFFFF80000000)
  {
    *(a2 + 56) = 0;
    *(a2 + 60) = ~a1;
    *(a2 + 64) = v16;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = v16;
    return outlined destroy of _VariadicView_Children.Element?(v25);
  }

  __break(1u);

  result = _MovableLockUnlock(v12);
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for _OverlayPreferenceModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for _VariadicView_Children(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = v5;

  return a1;
}

uint64_t closure #1 in _VariadicView_Children.subscript.getter(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2[7];
  v9[0] = a2[6];
  v9[1] = v5;
  v10 = a1;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v14 = v9;
  v15 = 1;
  v12 = a2;
  v13 = a3;

  ViewList.applySublists(from:list:transform:to:)(&v10, 0x100000000, &v14, partial apply for closure #1 in closure #1 in closure #1 in _VariadicView_Children.subscript.getter, v11, v6, v7);
}

uint64_t ViewList.applySublists(from:list:transform:to:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v11[0] = BYTE4(a2) & 1;
  v17 = 2;
  v15 = v7;
  v16 = v8;
  v12 = a4;
  v13 = a5;
  v9 = *(a7 + 64);
  v14 = BYTE4(a2) & 1;
  return v9(a1, &v17, a2 | ((BYTE4(a2) & 1) << 32), &v15, partial apply for closure #1 in ViewList.applySublists(from:style:list:transform:to:), v11, a6) & 1;
}

BOOL closure #1 in closure #1 in closure #1 in _VariadicView_Children.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1 < v3)
  {
    outlined init with copy of _ViewList_SubgraphElements((a1 + 4), v18);
    v8 = a1[3];
    v9 = *(a2 + 40);
    v10 = a1[2];
    outlined init with copy of _ViewList_SubgraphElements(v18, v19);

    v11 = v9;

    v12 = _ViewList_SublistSubgraphStorage.retain()();
    outlined destroy of _ViewList_SubgraphElements(v18);

    *&v20 = v12;
    *(&v20 + 1) = v10;
    *&v21 = v8;
    *(&v21 + 1) = v4;
    *&v22 = v3;
    *(&v22 + 1) = v11;
    outlined destroy of _VariadicView_Children.Element?(a3);
    v13 = a1[10];
    v14 = v20;
    *(a3 + 32) = v19[2];
    *(a3 + 48) = v14;
    v15 = v22;
    *(a3 + 64) = v21;
    *(a3 + 80) = v15;
    v16 = v19[1];
    *a3 = v19[0];
    *(a3 + 16) = v16;
    *(a3 + 96) = v13;
  }

  return v4 >= v3;
}

uint64_t initializeWithCopy for _ViewList_View(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 88) = v6;

  v7 = v6;
  return a1;
}

void destroy for _ViewList_View(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  v2 = a1[11];
}

uint64_t outlined destroy of _VariadicView_Children.Element?(uint64_t a1)
{
  type metadata accessor for AnyHashable2?(0, &lazy cache variable for type metadata for _VariadicView_Children.Element?, &type metadata for _VariadicView_Children.Element, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of _VariadicView_Children.Element?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyHashable2?(0, &lazy cache variable for type metadata for _VariadicView_Children.Element?, &type metadata for _VariadicView_Children.Element, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for _VariadicView_Children.Element(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v6 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v6;

  v8 = v7;

  return a1;
}

uint64_t destroy for _VariadicView_Children.Element(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_18D1137A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getWitnessTable("A](b4z\a", a2, &v5);
  *(a1 + 8) = v4;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance <A> Group<A>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a4 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <A> Group<A>, a3, &v11);
  return static MultiView._makeView(view:inputs:)(a1, a2, a3, v9, a5);
}

uint64_t static MultiView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v11 = v5;
  return static View.makeImplicitRoot(view:inputs:)(&v11, v9, a3, *(a4 + 8), a5);
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

char *storeEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void *assignWithCopy for _CALayerView(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t MakeDefaultRepresentation.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v9 + 16))(v12, Value, a2);
  (*(a3 + 48))(a2, a3);
  View.modifier<A>(_:)();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return (*(v9 + 8))(v12, a2);
}

uint64_t MakeResolvedRepresentation.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v8, v9);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14[-v11];
  closure #1 in MakeResolvedRepresentation.value.getter(a2, a3, &v14[-v11]);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a4, v12, AssociatedTypeWitness);
}

uint64_t closure #1 in MakeResolvedRepresentation.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v16 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v10 + 16))(v13, Value, a2);
  (*(v6 + 48))(a2, v6);
  (*(v10 + 8))(v13, a2);
  return UncheckedSendable.init(_:)(v9, AssociatedTypeWitness, a4);
}

uint64_t getEnumTagSinglePayload for BaseViewList.Init(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for BaseViewList.Init(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t destroy for _VariadicView_Children(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void type metadata accessor for _ContiguousArrayStorage<(Int, TypeConformance<StyleContextDescriptor>)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, TypeConformance<StyleContextDescriptor>)>)
  {
    type metadata accessor for (Int, TypeConformance<StyleContextDescriptor>)(255, &lazy cache variable for type metadata for (Int, TypeConformance<StyleContextDescriptor>), &lazy cache variable for type metadata for TypeConformance<StyleContextDescriptor>, &type metadata for StyleContextDescriptor, &protocol witness table for StyleContextDescriptor);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, TypeConformance<StyleContextDescriptor>)>);
    }
  }
}

uint64_t static TupleStyleContext.accepts<A>(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA012StyleContextD0V_Tt1g5(a3, v18);
  v7 = v18[0];
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA012StyleContextD0V_Tt1g5(a4, v18);
  v8 = v18[0];
  v9 = *(v7 + 16);
  if (v9 >= *(v18[0] + 16))
  {
    v18[0] = a2;
    v18[1] = v8;
    v19 = 1;
    if (v9)
    {

      v12 = (v7 + 48);
      do
      {
        v13 = *(v12 - 2);
        if (v13 >= a2 && (v13 & 0x8000000000000000) == 0 && v13 < *(v8 + 16))
        {
          v14 = *(v12 - 1);
          v15 = *v12;
          v16 = type metadata accessor for TupleStyleContext.QueryAtIndexVisitor(0, a3, a4, v11);
          TupleStyleContext.QueryAtIndexVisitor.visit<A>(_:)(v14, v16, v14, v15);
        }

        v12 += 3;
        --v9;
      }

      while (v9);

      v10 = v19;
    }

    else
    {

      v10 = 1;
    }
  }

  else
  {

    return 0;
  }

  return v10;
}

void _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA012StyleContextD0V_Tt1g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static StyleContextDescriptor.typeCache;
  if (*(static StyleContextDescriptor.typeCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(v4[7] + 8 * v5);
  }

  else
  {
    _s7SwiftUI20TupleTypeDescriptionVyACyxGSo07AGTupleD0acfCAA22StyleContextDescriptorV_Tt1g5Tm(a1, _styleContextProtocolDescriptor, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), v10);
    v7 = v10[0];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static StyleContextDescriptor.typeCache;
    static StyleContextDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);
    static StyleContextDescriptor.typeCache = v9;
    swift_endAccess();
    *a2 = v7;
  }
}

uint64_t TupleStyleContext.QueryAtIndexVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *v4;
  if ((*v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v7 = v4[1];
  if (v6 >= *(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = *(v7 + 24 * v6 + 40);
  v9 = type metadata accessor for TupleStyleContext.ContextAcceptsVisitor(0, v5, a3, a4);
  result = TupleStyleContext.ContextAcceptsVisitor.visit<A>(_:)(v8, v9);
  *(v4 + 16) = 0;
  ++*v4;
  return result;
}

uint64_t TupleStyleContext.ContextAcceptsVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 32) + 8))(a1, 0);
  *v2 = result & 1;
  return result;
}

uint64_t Text.foregroundColor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, char a6)
{
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v11 = *(a5 + 2);
  v10 = *(a5 + 3);
  if (v11 >= v10 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a5);
  }

  *(a5 + 2) = v11 + 1;
  v12 = &a5[16 * v11];
  *(v12 + 4) = a1;
  v12[40] = a6;

  return a2;
}

double PlatformViewRepresentableContext.values.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return outlined copy of RepresentableContextValues.EnvironmentStorage(v4, v5, v6);
}

uint64_t ViewGraphRootValueUpdater._explicitAlignment(of:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_3(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  ViewGraphRootValueUpdater._updateViewGraph<A>(body:)(a4, a2, v7, a3, &v9);
  if (v10)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:)@<X0>(uint64_t (*a1)(void, double, double)@<X1>, uint64_t a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t assignWithCopy for _IntelligenceSupport.AnimatingText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}