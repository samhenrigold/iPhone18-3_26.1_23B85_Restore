uint64_t AccessibilityProperties.init(reserving:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v10);
  v4 = v10[7];
  *(a2 + 224) = v10[6];
  *(a2 + 240) = v4;
  *(a2 + 256) = v10[8];
  *(a2 + 272) = v11;
  v5 = v10[3];
  *(a2 + 160) = v10[2];
  *(a2 + 176) = v5;
  v6 = v10[5];
  *(a2 + 192) = v10[4];
  *(a2 + 208) = v6;
  v7 = v10[1];
  *(a2 + 128) = v10[0];
  *(a2 + 144) = v7;
  v8 = type metadata accessor for AnyAccessibilityPropertiesEntry();
  result = MEMORY[0x193ABE660](a1, MEMORY[0x1E69E5FE0], v8, MEMORY[0x1E69E5FE8]);
  *(a2 + 280) = result;
  return result;
}

unint64_t type metadata accessor for AnyAccessibilityPropertiesEntry()
{
  result = lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry;
  if (!lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry);
  }

  return result;
}

uint64_t initializeWithCopy for _OverlayShapeModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  *(*(v9 + 48) + v12) = *(*(v9 + 48) + v13);
  return a1;
}

void lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize()
{
  if (!lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicTypeSize, &type metadata for DynamicTypeSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize);
  }
}

{
  if (!lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicTypeSize, &type metadata for DynamicTypeSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize);
  }
}

{
  if (!lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicTypeSize, &type metadata for DynamicTypeSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize);
  }
}

uint64_t _GraphInputs.accessibilityEnabled.getter(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v5 = *a2;
  swift_beginAccess();
  v6 = specialized CachedEnvironment.attribute<A>(id:_:)(v5, a3, 0);
  swift_endAccess();
  return v6;
}

unint64_t _ViewOutputs.appendContentShapePreference<A>(inputs:shape:kinds:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 48);
  v13 = *(a1 + 60);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v12);
  if (result)
  {
    v15 = a2();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v37[0] = __PAIR64__(OffsetAttribute2, v15);
    v37[1] = v13;
    v38 = a4;
    MEMORY[0x1EEE9AC00](OffsetAttribute2);
    v34 = type metadata accessor for ContentShapePathAppendingRule(0, a5, a6, v17);
    swift_getWitnessTable(protocol conformance descriptor for ContentShapePathAppendingRule<A>, v34);
    v35 = v18;
    type metadata accessor for Attribute<(_:)>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v37, closure #1 in Attribute.init<A>(_:)partial apply, &v33, v34, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
    v21 = v36;
    v37[0] = v12;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v22 = *(v12 + 16);
    if (result != v22)
    {
      if (result >= v22)
      {
        __break(1u);
      }

      if (*(v12 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        v23 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA20ContentShapePathDataV_TtB5(*v7);
        v24 = *MEMORY[0x1E698D3F8];
        if ((v23 & 0x100000000) == 0)
        {
          v24 = v23;
        }

        v37[0] = __PAIR64__(v24, v21);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
        type metadata accessor for PreferenceTransform<ContentShapePathData>(0, v25, v26, v27);
        lazy protocol witness table accessor for type PreferenceTransform<ContentShapePathData> and conformance PreferenceTransform<A>(v28, v29, v30, v31);
        v32 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v37[0]) = 0;
        return PreferencesOutputs.subscript.setter(v32, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentShapeAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE033ContentShapeAccessibilityProviderV033_8830DB57DA6E30576C7025120AC232CCLLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.ContentShapeAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

uint64_t DynamicContainerItem.list.getter()
{
  return 0x100000000;
}

{
  return 0x100000000;
}

double destroy for ContentShapeResponderFilter(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for ContentShapeResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v5 = *(a2 + 112);
  v4 = *(a2 + 120);
  *(a1 + 112) = v5;
  *(a1 + 120) = v4;

  v6 = v5;

  return a1;
}

double protocol witness for Shape.sizeThatFits(_:) in conformance DefaultGlassEffectShape(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void _PaddingLayout.spacing(in:child:)(unsigned int *a1@<X0>, unsigned int *a2@<X1>, unint64_t **a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a2[1];
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v8 = static Semantics_v2.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (static Semantics.forced < v8)
  {
LABEL_7:
    if (v7 == *MEMORY[0x1E698D3F8])
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      InputValue = &static LayoutComputer.defaultValue;
    }

    else
    {
      InputValue = AGGraphGetInputValue();
    }

    v11 = *InputValue;
    v12 = one-time initialization token for lockAssertionsAreEnabled;

    if (v12 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_23;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (_MovableLockIsOwner(static Update._lock))
    {
LABEL_23:
      (*(*v11 + 112))();

      return;
    }

    goto LABEL_40;
  }

  if (v7 == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v10 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v10 = AGGraphGetInputValue();
  }

  v13 = *v10;
  v14 = one-time initialization token for lockAssertionsAreEnabled;

  if (v14 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_31;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_31:
    (*(*v13 + 112))(&v24);

    v23[0] = v4;
    v23[1] = v5;
    v23[2] = v6;
    _PaddingLayout.effectiveInsets(in:)(v23, v15);
    if (one-time initialization token for semantic != -1)
    {
      swift_once();
    }

    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (static Semantics.forced < static Semantics_v3.semantic)
    {
LABEL_35:
      KeyPath = swift_getKeyPath();
      LODWORD(v25) = v6;
      v26 = KeyPath;
      _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, v17);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v6);
      _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_0(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for LayoutDirection);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._finalize()();
      lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, protocol conformance descriptor for EnvironmentFetch<A>);
      lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, protocol conformance descriptor for EnvironmentFetch<A>);
      LOBYTE(v23[0]) = 0;
      v18 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

      LOBYTE(v25) = v18;
      AbsoluteEdge.Set.init(_:layoutDirection:)(&v25, v23);
      if (LOBYTE(v23[0]))
      {
        v19 = specialized _NativeDictionary.filter(_:)(v24, LOBYTE(v23[0]));

        v24 = v19;
      }

      goto LABEL_39;
    }

    v20 = swift_getKeyPath();
    LODWORD(v25) = v6;
    v26 = v20;
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, v21);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v6);
    _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_0(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for LayoutDirection);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, protocol conformance descriptor for EnvironmentFetch<A>);
    lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, protocol conformance descriptor for EnvironmentFetch<A>);
    LOBYTE(v23[0]) = 0;
    v22 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

    LOBYTE(v23[0]) = v22;
    AbsoluteEdge.Set.init(_:layoutDirection:)(v23, &v25);
    Spacing.reset(_:)(&v25);
LABEL_39:
    *a3 = v24;
    return;
  }

LABEL_40:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *_ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)@<X0>(__int16 a1@<W0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  result = *a2;
  if ((a1 & 0x200) != 0)
  {
    v6 = 4;
    if (result > 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = 0;
  }

  outlined consume of Image.Location(result);
  result = 0;
LABEL_5:
  if ((a1 & 0x100) != 0)
  {
    v8 = 4;
LABEL_16:
    v7 = v8 + 1;
    v6 |= v8 != 0;
    goto LABEL_17;
  }

  if ((a1 & 0x80) != 0)
  {
    v8 = 3;
    goto LABEL_16;
  }

  if ((a1 & 0x40) != 0)
  {
    v8 = 2;
    goto LABEL_16;
  }

  if ((a1 & 0x20) != 0)
  {
    v8 = 1;
    goto LABEL_16;
  }

  if (a1)
  {
    v8 = 0;
    goto LABEL_16;
  }

  v7 = 0;
LABEL_17:
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 10) = v6;
  return result;
}

uint64_t storeEnumTagSinglePayload for EventPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void SystemColorsStyle._apply(to:)(uint64_t a1)
{
  if (*(a1 + 24) > 2u)
  {
    return;
  }

  v2 = *a1;
  if (!*(a1 + 24))
  {
    if (v2 > 4)
    {
      goto LABEL_7;
    }

    v9 = *a1;
    if (v9 <= 1)
    {
      if (!*a1)
      {
        if (one-time initialization token for primary != -1)
        {
          swift_once();
        }

        v5 = &static Color.primary;
        goto LABEL_9;
      }

      if (v9 == 1)
      {
        if (one-time initialization token for secondary != -1)
        {
          swift_once();
        }

        v5 = &static Color.secondary;
        goto LABEL_9;
      }
    }

    else
    {
      switch(v9)
      {
        case 2u:
          if (one-time initialization token for tertiary != -1)
          {
            swift_once();
          }

          v5 = &static Color.tertiary;
          goto LABEL_9;
        case 3u:
          if (one-time initialization token for quaternary != -1)
          {
            swift_once();
          }

          v5 = &static Color.quaternary;
          goto LABEL_9;
        case 4u:
LABEL_7:
          if (one-time initialization token for quinary == -1)
          {
LABEL_8:
            v5 = &static Color.quinary;
LABEL_9:
            v6 = *v5;

            outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
            *(a1 + 32) = v6;
            *(a1 + 40) = 0;
            return;
          }

LABEL_58:
          swift_once();
          goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  if (*(a1 + 24) != 1)
  {
    if (v2 > 4)
    {
LABEL_11:
      if (one-time initialization token for quinary != -1)
      {
        swift_once();
      }

      v7 = &static Color.quinary;
LABEL_14:
      v8 = *v7;

      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = v8;
      *(a1 + 40) = 3;
      return;
    }

    v9 = *a1;
    if (v9 <= 1)
    {
      if (!*a1)
      {
        if (one-time initialization token for primary != -1)
        {
          swift_once();
        }

        v7 = &static Color.primary;
        goto LABEL_14;
      }

      if (v9 == 1)
      {
        if (one-time initialization token for secondary != -1)
        {
          swift_once();
        }

        v7 = &static Color.secondary;
        goto LABEL_14;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v9 == 2)
    {
      if (one-time initialization token for tertiary != -1)
      {
        swift_once();
      }

      v7 = &static Color.tertiary;
      goto LABEL_14;
    }

    if (v9 == 3)
    {
      if (one-time initialization token for quaternary != -1)
      {
        swift_once();
      }

      v7 = &static Color.quaternary;
      goto LABEL_14;
    }

LABEL_56:
    if (v9 == 4)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = *(a1 + 8);
    if (v4 > 4u)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    LOBYTE(v4) = 4;
  }

  specialized ColorProvider.resolveHDR(in:)(*(a1 + 48), *(a1 + 56), v4, &v22);
  v15 = v22;
  v16 = v23;
  v17 = 0;
  v18 = 1065353216;
  v19 = 0;
  v20 = -1;
  v10 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v14 = v2;
  if (*(a1 + 40) == 1)
  {
    v10 = *(a1 + 32);

    outlined consume of _ShapeStyle_Shape.Result(v11, 1u);
    *(a1 + 32) = 0;
    *(a1 + 40) = 5;
  }

  _ShapeStyle_Pack.subscript.setter(&v15, &v14, v3);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);

  outlined consume of _ShapeStyle_Shape.Result(v12, v13);
  *(a1 + 32) = v10;
  *(a1 + 40) = 1;
}

void key path getter for EnvironmentValues.symbolFont : EnvironmentValues(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>)
{
  v7 = *a1;
  if (a1[1])
  {

    v9 = a2(v7);
  }

  else
  {
    v10 = (a3)(*a1, a5, a6, a2);
    if (v10)
    {
      v9 = *(v10 + 72);
    }

    else
    {
      v9 = 0;
    }
  }

  *a4 = v9;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA04FontF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4[9];
  if (!a2)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v5 || (v6 = *(*a2 + 112), v7 = , v8 = v6(v7), , (v8 & 1) == 0))
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<FontKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<FontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontKey>>);
    }
  }
}

void protocol witness for static Rule.initialValue.getter in conformance RootDisplayList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t Image.NamedImageProvider.resolveVector(info:value:in:at:catalog:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v127 = a5;
  v130 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v130);
  v13 = (&v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a4;
  v15 = *(v6 + 48);
  v124 = *(v6 + 40);
  v128 = v15;
  v16 = *(v6 + 56);
  v133 = *(v6 + 64);
  v134 = v16;
  v125 = *(v6 + 72);
  v17 = *a1;
  v18 = *(a1 + 8);
  *&v131 = a3;
  outlined init with copy of NamedImage.Key(a3, v13, type metadata accessor for ImageResolutionContext);
  v19 = v13[2];
  v132 = v14;
  if (v19)
  {
    if ((a2 & 0x100000000) != 0)
    {
      v20 = INFINITY;
    }

    else
    {
      v20 = *&a2;
    }

    v21 = v19;
    outlined copy of Image.Location(v14);
    v22 = v21;
    LODWORD(v122) = ImageResolutionContext.willUpdateVectorGlyph(to:variableValue:)(v17, v20);
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x1E69C7108]);
    outlined copy of Image.Location(v14);
    v22 = [v23 init];
    [v22 setAnchorPoint_];
    LODWORD(v122) = 0;
    if ((a2 & 0x100000000) != 0)
    {
      v20 = INFINITY;
    }

    else
    {
      v20 = *&a2;
    }
  }

  [v22 setGlyph_];
  [v22 setVariableValue_];
  [v22 setFlipsRightToLeft_];
  ImageResolutionContext.updateSymbolAnimator(_:)(v22);
  v25 = *v13;
  v24 = v13[1];
  v129 = v17;
  if (v24)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v25, &v158);

    v26 = v158;
LABEL_13:
    v121 = v26;
    goto LABEL_14;
  }

  v27 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v25);
  if (v27)
  {
    v26 = *(v27 + 72);
    goto LABEL_13;
  }

  v121 = 0;
LABEL_14:
  v28 = v127;
  v120 = [v22 version];

  v29 = *(v13 + *(v130 + 40));
  outlined destroy of NamedImage.BitmapKey(v13, type metadata accessor for ImageResolutionContext);
  [v22 alignmentRect];
  v31 = v30;
  v33 = v32;
  v34 = *(a1 + 16);
  v35 = *(a1 + 24);
  v37 = *(a1 + 32);
  v36 = *(a1 + 40);
  v38 = *(a1 + 48);
  v39 = *(a1 + 56);
  v40 = *(a1 + 64);
  v126 = *(a1 + 72);
  v127 = v40;
  v41 = *v131;
  v42 = *(v131 + 8);
  if (v42)
  {

    v43 = &v158;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v41, &v158);

    v44 = &v158 + 1;
  }

  else
  {
    v45 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*v131);
    if (v45)
    {
      v43 = (v45 + 9);
      v44 = v45 + 73;
    }

    else
    {
      v43 = &static SymbolVariantsKey.defaultValue;
      v44 = &static SymbolVariantsKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }
  }

  v46 = *v43;
  v47 = *v44;
  LOBYTE(v158) = v46;
  BYTE1(v158) = v47;
  if (one-time initialization token for background != -1)
  {
    swift_once();
  }

  LOWORD(v136) = static SymbolVariants.background;
  if ((SymbolVariants.contains(_:)(&v136) & 1) == 0)
  {
    v123 = v36;
    v50 = v39;
    v51 = v38;
    v119 = 0.0;
    LODWORD(v130) = 3;
    goto LABEL_30;
  }

  if (v47 == 3)
  {
    v48 = 1;
  }

  else
  {
    v48 = v47;
  }

  LODWORD(v130) = v48;
  if (v42)
  {

    v49 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA026SymbolsGrowToFitBackgroundI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v41);
  }

  else
  {
    v53 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v41);
    if (v53)
    {
      v49 = *(v53 + 72);
    }

    else
    {
      v49 = 0;
    }
  }

  v54 = [objc_allocWithZone(MEMORY[0x1E6999438]) init];
  [v54 setShape_];
  if (v49)
  {
    v55 = 1;
  }

  else
  {
    v55 = 3;
  }

  [v54 setImageScaling_];
  v56 = [v129 graphicVariantWithOptions_];
  if (v56)
  {
    v57 = v56;
    [v56 interiorAlignmentRect];
    v38 = v58;
    v39 = v59;
    v31 = v60;
    v33 = v61;
    [v57 baselineOffset];
    v34 = v62;
    [v57 capHeight];
    v35 = v63;
    [v57 contentBounds];
    v37 = v64;
    v123 = v65;
    [v57 alignmentRect];
    v126 = v67;
    v127 = v66;
  }

  else
  {
    v123 = v36;
  }

  v50 = v39;
  v51 = v38;
  if (!v42)
  {
    v116 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v41);
    if (v116)
    {
      v119 = v116[9];
      v52 = *(v116 + 80);
      goto LABEL_31;
    }

    v119 = 0.0;
LABEL_30:
    v52 = 1;
LABEL_31:
    v118 = v52;
    goto LABEL_43;
  }

  v119 = COERCE_DOUBLE(_s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028SymbolBackgroundCornerRadiusI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v41));
  v118 = v68;

LABEL_43:
  [v129 scale];
  v70 = v69;
  v71 = swift_allocObject();
  *(v71 + 16) = v22;
  v72 = v120;
  *(v71 + 24) = v121;
  v73 = v132;
  *(v71 + 32) = v132;
  *(v71 + 40) = v72;
  *(v71 + 44) = v122 & 1;
  *(v71 + 45) = (v29 & 0x10) != 0;
  v74 = v31 * v70;
  v75 = v33 * v70;
  *(v71 + 48) = v28;
  v76 = v22;
  outlined copy of Image.Location(v73);
  v129 = v28;
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  if (!v42)
  {
    ShouldRedactSymbolImagesF0V_Tt1g5 = _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA024ShouldRedactSymbolImagesF0V_Tt1g5(v41);
    v78 = v128;
    if (ShouldRedactSymbolImagesF0V_Tt1g5)
    {
      goto LABEL_45;
    }

LABEL_49:
    v85 = 2;
    v81 = v71;
    goto LABEL_50;
  }

  ShouldRedactSymbolImagesJ0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA024ShouldRedactSymbolImagesJ0VG_Tt1g5(v41);

  v78 = v128;
  if ((ShouldRedactSymbolImagesJ0VG_Tt1g5 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_45:
  v79 = *v131;
  v80 = *(v131 + 8);
  v81 = swift_allocObject();
  if (one-time initialization token for foreground != -1)
  {
    swift_once();
  }

  *&v158 = v79;
  *(&v158 + 1) = v80;
  (*(*static Color.foreground + 120))(&v165, &v158);
  v82 = v168;
  v83 = v166;
  v84 = v167 * 0.16;
  *(v81 + 16) = v165;
  *(v81 + 24) = v83;
  *(v81 + 28) = v84;
  *(v81 + 32) = v82;
  outlined consume of GraphicsImage.Contents?(v71, 2u);
  v85 = 4;
LABEL_50:
  *&v158 = v81;
  BYTE8(v158) = v85;
  *&v159 = v70;
  *(&v159 + 1) = v74;
  *v160 = v75;
  BYTE8(v160[0]) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v122 = _Q0;
  *(v160 + 12) = _Q0;
  HIDWORD(v160[1]) = 2143289344;
  LOBYTE(v161[0]) = 0;
  *(v161 + 8) = 0u;
  *(&v161[1] + 8) = 0u;
  v131 = 0x10102uLL;
  DWORD2(v161[2]) = 65794;
  v152 = v158;
  v153 = v159;
  *(v157 + 12) = *(&v161[1] + 12);
  v156 = v161[0];
  v157[0] = v161[1];
  v154 = v160[0];
  v155 = v160[1];
  v92 = v124;
  outlined copy of AccessibilityImageLabel?(v124, v78, v134, v133);
  outlined init with copy of GraphicsImage(&v158, &v136);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  if (BYTE8(v158) != 2)
  {
    if (BYTE8(v158) == 255)
    {

      v93 = 0;
    }

    else
    {
      v104 = v161[0];

      v93 = (v104 & 1) == 0;
    }

    v102 = v125;
    outlined consume of Image.Location(v132);

    v99 = 0;
    v100 = 0;
    v101 = v130;
    if (v130 == 3)
    {
      goto LABEL_57;
    }

LABEL_54:
    v103 = v100 | 2;
    goto LABEL_58;
  }

  v94 = *(v158 + 32);
  v95 = *(v158 + 48);
  v96 = *(v158 + 16);
  outlined copy of Image.Location(v94);
  v97 = v95;
  outlined copy of Image.Location(v94);
  v98 = [v96 styleMask];
  v135 = v94;
  _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v98, &v135, &v136);

  outlined consume of Image.Location(v94);
  v78 = v128;
  outlined consume of Image.Location(v132);

  v99 = v136;
  v93 = v137;
  v100 = BYTE2(v137);
  v101 = v130;
  v102 = v125;
  if (v130 != 3)
  {
    goto LABEL_54;
  }

LABEL_57:
  v103 = v100 & 0xFD;
LABEL_58:
  v105 = v118 & 1;
  v151 = v118 & 1;
  v106 = v119;
  v107 = v106;
  if (v118)
  {
    v107 = 0.0;
  }

  v108 = v157[0];
  *(a6 + 64) = v156;
  *(a6 + 80) = v108;
  *(a6 + 96) = v157[1];
  v109 = v153;
  *a6 = v152;
  *(a6 + 16) = v109;
  v110 = v155;
  *(a6 + 32) = v154;
  *(a6 + 48) = v110;
  *(a6 + 112) = v92;
  *(a6 + 120) = v78;
  v111 = v133;
  *(a6 + 128) = v134;
  *(a6 + 136) = v111;
  *(a6 + 144) = 0;
  *(a6 + 160) = v102;
  *(a6 + 161) = v101;
  *(a6 + 164) = v107;
  *(a6 + 168) = v105;
  *(a6 + 176) = v99;
  *(a6 + 184) = v93;
  *(a6 + 186) = v103;
  v112 = swift_allocObject();
  v112[2] = v34;
  v112[3] = v35;
  v113 = v123;
  v112[4] = v37;
  v112[5] = v113;
  v112[6] = v51;
  v112[7] = v50;
  v114 = v126;
  v112[8] = v127;
  v112[9] = v114;
  *(a6 + 152) = v112;
  v136 = v81;
  LOBYTE(v137) = v85;
  *(&v137 + 1) = v135;
  HIDWORD(v137) = *(&v135 + 3);
  v138 = v70;
  v139 = v74;
  v140 = v75;
  v141 = 0;
  v142 = v163;
  v143 = v164;
  v144 = v122;
  v145 = 2143289344;
  v146 = 0;
  *v147 = v162[0];
  *&v147[3] = *(v162 + 3);
  v148 = 0u;
  v149 = 0u;
  v150 = v131;
  return outlined destroy of GraphicsImage(&v136);
}

uint64_t sub_18D0EC95C()
{
  v1 = *(v0 + 32);
  if (v1 >= 2)
  {
  }

  return swift_deallocObject();
}

BOOL AbsoluteEdge.Set.init(_:layoutDirection:)@<W0>(unsigned __int8 *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  if (v3)
  {
    v5 = 8;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  if (v3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 8;
  }

  if ((v6 & v8) != 0)
  {
    v8 = 0;
  }

  v9 = v8 | v6;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 | (Edge.Set.contains(_:)(SwiftUI_Edge_top) && (v10 & 1) == 0);
  result = Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  if (result && (v10 & 4) == 0)
  {
    v13 = v11 | 4;
  }

  else
  {
    v13 = v11;
  }

  *a2 = v13;
  return result;
}

uint64_t UnaryLayoutEngine.spacing()(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (v1 + *(a1 + 36));
  v4 = *(v3 + 2);
  v9 = *v3;
  v10 = v4;
  v5 = (v1 + v2);
  LODWORD(v2) = *(v1 + v2 + 8);
  v7 = *v5;
  v8 = v2;
  return (*(*(a1 + 24) + 40))(&v9, &v7, *(a1 + 16));
}

uint64_t AccessibilityProperties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18[-1] - v10;
  if ((*(a4 + 24))(a1, a3, a4, v9))
  {
    v12 = specialized Dictionary.removeValue(forKey:)(a3, v18);
    (*(v8 + 8))(a1, AssociatedTypeWitness, v12);
    return _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(v18, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry?, type metadata accessor for AnyAccessibilityPropertiesEntry, _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgMaTm_0);
  }

  else
  {
    (*(v8 + 16))(v11, a1, AssociatedTypeWitness);
    v18[3] = type metadata accessor for AccessibilityPropertiesEntry(0, AssociatedTypeWitness, v14, v15);
    v18[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(v8 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
    specialized Dictionary.subscript.setter(v18, a3);
    return (*(v8 + 8))(a1, AssociatedTypeWitness);
  }
}

uint64_t AccessibilityProperties.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-1] - v11;
  v13 = *(v3 + 280);
  if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v15 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v13 + 56) + 40 * v14, v21);
    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v17 + 16))(AssociatedTypeWitness, AssociatedTypeWitness, v16, v17);
    v18 = *(AssociatedTypeWitness - 8);
    (*(v18 + 56))(v12, 0, 1, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v21);
    if ((*(v18 + 48))(v12, 1, AssociatedTypeWitness) != 1)
    {
      return (*(v18 + 32))(a3, v12, AssociatedTypeWitness);
    }
  }

  else
  {
    v18 = *(AssociatedTypeWitness - 8);
    (*(v18 + 56))(v12, 1, 1, AssociatedTypeWitness, v10);
  }

  (*(a2 + 16))(a1, a2);
  result = (*(v18 + 48))(v12, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v26);
        outlined init with take of AnyTrackedValue(v26, v27);
        v12 = v28;
        v13 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        (v13[1])(&type metadata for SymbolRenderingOptions, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v27);
      }

      else
      {
        v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(a1);
        if (v16)
        {
          v17 = (v16 + 9);
          v18 = v16 + 73;
          v19 = v16 + 74;
        }

        else
        {
          v17 = &static SymbolRenderingOptionsKey.defaultValue;
          v19 = &byte_1ED52FC63;
          v18 = &static SymbolRenderingOptionsKey.defaultValue + 1;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v19 = &byte_1ED52FC63;
          }
        }

        v21 = *v19;
        v22 = *v18;
        v23 = *v17;
        *a2 = v23;
        a2[1] = v22;
        a2[2] = v21;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>(0);
        v28 = v24;
        v29 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v27[0]) = v23;
        BYTE1(v27[0]) = v22;
        BYTE2(v27[0]) = v21;
        specialized Dictionary.subscript.setter(v27, v8);
      }

      goto LABEL_17;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(a1);
  if (v14)
  {
    v15 = *(v14 + 74);
    *a2 = *(v14 + 36);
    a2[2] = v15;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v20 = byte_1ED52FC63;
    *a2 = static SymbolRenderingOptionsKey.defaultValue;
    a2[2] = v20;
  }

LABEL_17:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA024ShouldRedactSymbolImagesJ0VG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v15[0]) = _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA024ShouldRedactSymbolImagesF0V_Tt1g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>, &type metadata for ShouldRedactSymbolImagesKey, &protocol witness table for ShouldRedactSymbolImagesKey);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v15);
    outlined init with take of AnyTrackedValue(v15, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (v11[1])(v15, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    LOBYTE(v15[0]) = _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA024ShouldRedactSymbolImagesF0V_Tt1g5(a1) & 1;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>>(0);
    v17 = v12;
    v18 = &protocol witness table for DerivedValue<A>;
    LOBYTE(v16[0]) = v15[0];
    specialized Dictionary.subscript.setter(v16, v6);
  }

LABEL_9:
  v13 = LOBYTE(v15[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v13;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022SymbolRenderingOptionsV0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA024ShouldRedactSymbolImagesF0V_Tt1g5(void *a1)
{
  v6[0] = a1;
  v6[1] = 0;
  swift_retain_n();
  v2 = specialized static ShouldRedactContentKey.value(in:)(v6);

  if (v2)
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(a1);
    if (v3)
    {
      v4 = *(v3 + 72) ^ 1;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t NamedImage.VectorKey.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  MEMORY[0x193AC11A0](*(v1 + 32));
  v10 = type metadata accessor for NamedImage.VectorKey(0);
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  dispatch thunk of Hashable.hash(into:)();
  v11 = *(v1 + v10[9]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v11);
  MEMORY[0x193AC11A0](*(v1 + v10[10]));
  v12 = *(v1 + v10[11]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v12);
  v13 = *(v1 + v10[12]);
  if (v13)
  {
    if (v13 != 1)
    {
      MEMORY[0x193AC11A0](0);
      v15 = [v13 bundleURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.hash(into:)();
      (*(v4 + 8))(v7, v3);
      return MEMORY[0x193AC11A0](*(v2 + v10[13]));
    }

    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  MEMORY[0x193AC11A0](v14);
  return MEMORY[0x193AC11A0](*(v2 + v10[13]));
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>, &type metadata for ShouldRedactSymbolImagesKey, &protocol witness table for ShouldRedactSymbolImagesKey);
    v3 = v2;
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v6 = type metadata accessor for DerivedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>);
    }
  }
}

void partial apply for closure #1 in ViewGraphRootValueUpdater._sizeThatFits(_:)(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v8 = *(v1 + 16);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  ViewGraph.sizeThatFits(_:)(&v8);
  *a1 = v6;
  a1[1] = v7;
}

void ViewGraph.sizeThatFits(_:)(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = a1[2];
  v4 = *(a1 + 24);
  v12 = *a1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  swift_beginAccess();
  if ((*(v1 + 361) & 0x10) != 0)
  {
    GraphHost.instantiateIfNeeded()();
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v6 = *(WeakValue + 8);
    }

    else
    {
      v6 = 0;
    }

    v11[0] = WeakValue;
    v11[1] = v6;
    ViewGraph.rootViewInsets.getter();
    specialized static ViewGraph.sizeThatFits(_:layoutComputer:insets:)(&v12, v11, v7, v8, v9, v10);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022DefaultForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultForegroundStyleKey>, &type metadata for DefaultForegroundStyleKey, &protocol witness table for DefaultForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022DefaultForegroundStyleV033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022DefaultForegroundStyleV033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022DefaultForegroundStyleV033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultForegroundStyleKey>, &type metadata for DefaultForegroundStyleKey, &protocol witness table for DefaultForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
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

void EnvironmentValues.font.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void, __n128))
{
  v6 = v3;
  _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for FontBox<Font.DefaultProvider>, lazy protocol witness table accessor for type Font.DefaultProvider and conformance Font.DefaultProvider, &type metadata for Font.DefaultProvider, type metadata accessor for FontBox);
  v8 = swift_allocObject();
  if (a1)
  {
    v9 = *(*a1 + 112);
    v10 = v8;

    v11 = v9(v10);

    if (v11)
    {

      return;
    }
  }

  else
  {
  }

  v12 = *v6;
  swift_retain_n();
  swift_retain_n();
  a2(v6, a1, &v13);

  if (v6[1])
  {
    (a3)(v12, *v6);
  }
}

void type metadata accessor for FontBox<Font.DefaultProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void HierarchicalShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 5 && (*a1 == 1 ? (v3 = *(a1 + 8) == 0) : (v3 = 0), v3))
  {
    if (one-time initialization token for sharedPrimary != -1)
    {
      swift_once();
    }

    v8 = static HierarchicalShapeStyle.sharedPrimary;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);

    outlined consume of _ShapeStyle_Shape.Result(v9, v10);
    *(a1 + 32) = v8;
    *(a1 + 40) = 2;
  }

  else
  {
    if ((*(a1 + 107) & 1) == 0)
    {
      v4 = a2;
      *(a1 + 107) |= 1u;
      v6 = *(a1 + 48);
      v5 = *(a1 + 56);
      if (*(a1 + 64))
      {
        v7 = *(a1 + 64);
LABEL_17:

        v12 = specialized ShapeStyle.primaryStyle(in:)(v6, v5, v7);
        if (v12)
        {
          v13 = v12;
        }

        else
        {

          v13 = v7;
        }

        specialized HierarchicalShapeStyle.apply<A>(_:to:)(v13, a1, v4);

        goto LABEL_21;
      }

      v17 = *(a1 + 48);
      v18 = v5;
      v11 = EnvironmentValues.currentForegroundStyle.getter();
      if (v11)
      {
        v7 = v11;
        v6 = *(a1 + 48);
        v5 = *(a1 + 56);
        goto LABEL_17;
      }

      if (*(a1 + 105) == 2)
      {
        SeparatorShapeStyle._apply(to:)(a1);
        goto LABEL_21;
      }

      if (v5)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v6, &v17);

        v14 = v18;
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(v6);
        if (!v15)
        {
          goto LABEL_31;
        }

        v14 = v15[10];
        v17 = v15[9];
        outlined copy of Material?(v17, v14);
      }

      if (v14 != 0xFF)
      {
        v16 = v17;
        specialized HierarchicalShapeStyle.apply<A>(_:to:)(v17, v14 & 0xFFFFFFFF000000FFLL, a1, v4);
        outlined consume of Material?(v16, v14);
LABEL_21:
        if (*(a1 + 107))
        {
          *(a1 + 107) &= ~1u;
        }

        return;
      }

LABEL_31:
      specialized HierarchicalShapeStyle.apply<A>(_:to:)(a1, v4);
      goto LABEL_21;
    }

    if (one-time initialization token for sharedPrimary != -1)
    {
      swift_once();
    }

    (*(*static LegacyContentStyle.sharedPrimary + 80))(a1);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultForegroundStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultForegroundStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultForegroundStyleKey>, &type metadata for DefaultForegroundStyleKey, &protocol witness table for DefaultForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultForegroundStyleKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022DefaultForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultForegroundStyleKey>, &type metadata for DefaultForegroundStyleKey, &protocol witness table for DefaultForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022DefaultForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultForegroundStyleKey>>(0);
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022DefaultForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022DefaultForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v4 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultForegroundStyleKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultForegroundStyleKey>, &type metadata for DefaultForegroundStyleKey, &protocol witness table for DefaultForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v6 = v5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v4);
  }
}

void specialized HierarchicalShapeStyle.apply<A>(_:to:)(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (a2)
  {
    v3 = a2;
    if (v2 == 3)
    {
      type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<OffsetShapeStyle<SystemColorsStyle>>, &lazy cache variable for type metadata for OffsetShapeStyle<SystemColorsStyle>, &type metadata for SystemColorsStyle, &protocol witness table for SystemColorsStyle);
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = v5;
      *(a1 + 40) = 2;
    }

    else
    {

      specialized OffsetShapeStyle._apply(to:)(a1, a2);
    }
  }

  else if (v2 == 3)
  {
    type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<SystemColorsStyle>, &type metadata for SystemColorsStyle, &protocol witness table for SystemColorsStyle, type metadata accessor for ShapeStyleBox);
    v7 = swift_allocObject();
    outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = v7;
    *(a1 + 40) = 2;
  }

  else
  {
    SystemColorsStyle._apply(to:)(a1);
  }
}

void type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

double Color.resolveHDR(in:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  (*(*a2 + 120))(&v6, &v5);
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v7;
  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultForegroundStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultForegroundStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultForegroundStyleKey>, &type metadata for DefaultForegroundStyleKey, &protocol witness table for DefaultForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultForegroundStyleKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultForegroundStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultForegroundStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultForegroundStyleKey>, &type metadata for DefaultForegroundStyleKey, &protocol witness table for DefaultForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultForegroundStyleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type Font.DefaultProvider and conformance Font.DefaultProvider()
{
  if (!lazy protocol witness table cache variable for type Font.DefaultProvider and conformance Font.DefaultProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DefaultProvider, &type metadata for Font.DefaultProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DefaultProvider and conformance Font.DefaultProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.DefaultProvider and conformance Font.DefaultProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DefaultProvider, &type metadata for Font.DefaultProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DefaultProvider and conformance Font.DefaultProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.DefaultProvider and conformance Font.DefaultProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DefaultProvider, &type metadata for Font.DefaultProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DefaultProvider and conformance Font.DefaultProvider);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSuffixKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextSuffixKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextSuffixKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for NSMutableAttributedString?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NSMutableAttributedString?)
  {
    type metadata accessor for CAMediaTimingFunction(255, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NSMutableAttributedString?);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t type metadata completion function for Text.Resolved(uint64_t a1)
{
  result = type metadata accessor for Text.Style(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for kitFont()
{
  result = MEMORY[0x193ABEC20](0x746E6F46534ELL, 0xE600000000000000);
  static NSAttributedStringKey.kitFont = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016DisableLinkColorI0030_7AFAB46D18FA6D189589CFA78D8B2U1ELLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>(0);
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

__n128 __swift_memcpy36_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeWithCopy for Text.Resolved(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  if (*a2 >= 2)
  {
  }

  v6 = a2[1];
  v7 = a2[2];
  *a1 = v5;
  *(a1 + 8) = v6;

  outlined copy of Text.Style.TextStyleColor(v7);
  v8 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = *(a2 + 72);
  v9 = a2[11];
  *(a1 + 16) = v7;

  if ((v9 - 1) >= 2)
  {
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v9;
  }

  else
  {
    *(a1 + 80) = *(a2 + 5);
  }

  v10 = a2[13];
  if ((v10 - 1) >= 2)
  {
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v10;
  }

  else
  {
    *(a1 + 96) = *(a2 + 6);
  }

  v11 = a2[22];
  if (v11 == 1)
  {
    v12 = *(a2 + 12);
    *(a1 + 176) = *(a2 + 11);
    *(a1 + 192) = v12;
    *(a1 + 208) = *(a2 + 208);
    v13 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v13;
    v14 = *(a2 + 10);
    *(a1 + 144) = *(a2 + 9);
    *(a1 + 160) = v14;
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
    v15 = a2[23];
    *(a1 + 176) = v11;
    *(a1 + 184) = v15;
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 200) = a2[25];
  }

  v16 = a2[31];
  if (v16 == 1)
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
    *(a1 + 248) = v16;
  }

  v17 = a2[36];
  if (v17 == 1)
  {
    v18 = *(a2 + 17);
    *(a1 + 256) = *(a2 + 16);
    *(a1 + 272) = v18;
    *(a1 + 288) = a2[36];
  }

  else
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 257) = *(a2 + 257);
    if (v17)
    {
      v19 = a2[33];
      v20 = a2[34];
      v21 = *(a2 + 280);
      outlined copy of Text.Storage(v19, v20, v21);
      *(a1 + 264) = v19;
      *(a1 + 272) = v20;
      *(a1 + 280) = v21;
      *(a1 + 288) = a2[36];
    }

    else
    {
      v22 = *(a2 + 35);
      *(a1 + 264) = *(a2 + 33);
      *(a1 + 280) = v22;
    }
  }

  v23 = a2[37];
  v24 = a2[38];
  *(a1 + 296) = v23;
  *(a1 + 304) = v24;
  *(a1 + 312) = a2[39];
  *(a1 + 320) = *(a2 + 160);
  v25 = type metadata accessor for Text.Style(0);
  v26 = *(v25 + 84);
  __dst = (a1 + v26);
  v74 = v25;
  v27 = a2 + v26;
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 48);
  v32 = v23;

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
  *(a1 + v74[22]) = *(a2 + v74[22]);
  v39 = v74[23];
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

  v44 = v74[24];
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

  *(a1 + v74[25]) = *(a2 + v74[25]);
  v48 = v74[26];
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

  *(a1 + v74[27]) = *(a2 + v74[27]);
  v52 = a3[5];
  v53 = a3[6];
  v75 = *(a2 + v52);
  *(a1 + v52) = v75;
  *(a1 + v53) = *(a2 + v53);
  v54 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v55 = a1 + v54;
  v56 = a2 + v54;
  v57 = *(a2 + v54 + 16);
  *v55 = *(a2 + v54);
  *(v55 + 16) = v57;
  *(v55 + 32) = *(a2 + v54 + 32);
  v58 = *(a2 + v54 + 48);
  *(v55 + 40) = *(a2 + v54 + 40);
  *(v55 + 48) = v58;
  v59 = *(a2 + v54 + 64);
  __dsta = *(a2 + v54 + 56);
  v60 = *(a2 + v54 + 72);
  v61 = *(a2 + v54 + 80);
  v62 = *(a2 + v54 + 88);
  v63 = *(a2 + v54 + 96);
  v77 = *(a2 + v54 + 104);

  v64 = v75;

  outlined copy of ResolvedTextSuffix(__dsta, v59, v60, v61, v62, v63, v77);
  *(v55 + 56) = __dsta;
  *(v55 + 64) = v59;
  *(v55 + 72) = v60;
  *(v55 + 80) = v61;
  *(v55 + 88) = v62;
  *(v55 + 96) = v63;
  v65 = *(v56 + 14);
  v66 = *(v56 + 15);
  *(v55 + 104) = v77;
  *(v55 + 112) = v65;
  v67 = *(v56 + 16);
  v68 = *(v56 + 17);
  *(v55 + 120) = v66;
  *(v55 + 128) = v67;
  v69 = *(v56 + 18);
  *(v55 + 136) = v68;
  *(v55 + 144) = v69;
  *(v55 + 152) = v56[152];

  v70 = v68;
  return a1;
}

void lazy protocol witness table accessor for type StyledTextResponderFilter and conformance StyledTextResponderFilter()
{
  if (!lazy protocol witness table cache variable for type StyledTextResponderFilter and conformance StyledTextResponderFilter)
  {
    swift_getWitnessTable(protocol conformance descriptor for StyledTextResponderFilter, &type metadata for StyledTextResponderFilter, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type StyledTextResponderFilter and conformance StyledTextResponderFilter);
  }
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA0d11TextContentF0V_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  LODWORD(v59) = 0;
  HIDWORD(v59) = *MEMORY[0x1E698D3F8];
  v54 = *MEMORY[0x1E698D3F8];
  v57 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v57) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v63 = *(a2 + 2);
    v64 = v13;
    v65 = *(a2 + 4);
    v66 = *(a2 + 20);
    v14 = *(a2 + 1);
    v61 = *a2;
    v62 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v61);
    v16 = *(a2 + 3);
    v63 = *(a2 + 2);
    v64 = v16;
    v65 = *(a2 + 4);
    v66 = *(a2 + 20);
    v17 = *(a2 + 1);
    v61 = *a2;
    v62 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v61);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v61);
    v53 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v49 = v21;
    v50 = *(a2 + 15);
    v51 = *(a2 + 17);
    v52 = *(a2 + 19);
    *&v61 = a4;
    *(&v61 + 1) = __PAIR64__(a1, v9);
    *&v62 = __PAIR64__(OffsetAttribute2, a3);
    *(&v62 + 1) = __PAIR64__(v18, v15);
    *&v63 = __PAIR64__(v50, v51);
    *(&v63 + 1) = __PAIR64__(v52, v19);
    LOBYTE(v64) = v21;
    WORD1(v64) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ShapeStyledDisplayList<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ShapeStyledDisplayList);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<StyledTextContentView> and conformance ShapeStyledDisplayList<A>();
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v61 = a4;
    *(&v61 + 1) = __PAIR64__(a1, v9);
    *&v62 = __PAIR64__(OffsetAttribute2, a3);
    *(&v62 + 1) = __PAIR64__(v18, v15);
    *&v63 = __PAIR64__(v50, v51);
    *(&v63 + 1) = __PAIR64__(v52, v22);
    LOBYTE(v64) = v49;
    WORD1(v64) = 0;
    outlined destroy of InterpolatedDisplayList<Image.Resolved>(&v61, &lazy cache variable for type metadata for ShapeStyledDisplayList<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ShapeStyledDisplayList);
    LOBYTE(v60[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v53;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v63 = *(a2 + 2);
    v64 = v24;
    v65 = v25;
    v66 = *(a2 + 20);
    v61 = *a2;
    v62 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v61);
    v28 = *(a2 + 3);
    v63 = *(a2 + 2);
    v64 = v28;
    v65 = *(a2 + 4);
    v66 = *(a2 + 20);
    v29 = *(a2 + 1);
    v61 = *a2;
    v62 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v61);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<Image.Resolved>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<StyledTextContentView>>, &lazy cache variable for type metadata for ShapeStyledResponderData<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = v8;
    *(v32 + 24) = 0;
    *(v32 + 144) = 0u;
    *(v32 + 160) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v57;
    *&v61 = v57;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v57 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v57 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v61 = __PAIR64__(a3, a1);
        *(&v61 + 1) = __PAIR64__(v30, v27);
        LODWORD(v62) = v31;
        *(&v62 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ShapeStyledResponderFilter<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ShapeStyledResponderFilter);
        lazy protocol witness table accessor for type ShapeStyledResponderFilter<StyledTextContentView> and conformance ShapeStyledResponderFilter<A>();
        v35 = v57;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v61) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v61 = __PAIR64__(v40, v31);
    *(&v61 + 1) = __PAIR64__(a1, v41);
    LODWORD(v62) = v54;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ContentResponderPathDataRule<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ContentResponderPathDataRule);
    lazy protocol witness table accessor for type ContentResponderPathDataRule<StyledTextContentView> and conformance ContentResponderPathDataRule<A>();
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v61 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v57 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v61) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v61) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v58;
      a5[1] = v59;
      return;
    }

LABEL_20:
    __break(1u);
  }

  v45 = a5;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v61);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v54)
  {
    v60[0] = v9;
    v47 = Attribute<A>.subscript.modify(&v61, Attribute);
    v48 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v60);
    (v47)(&v61, 0, v48);
    a5 = v45;
    goto LABEL_3;
  }

  __break(1u);
}

void lazy protocol witness table accessor for type ShapeStyledDisplayList<StyledTextContentView> and conformance ShapeStyledDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type ShapeStyledDisplayList<StyledTextContentView> and conformance ShapeStyledDisplayList<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ShapeStyledDisplayList<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ShapeStyledDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyledDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ShapeStyledDisplayList<StyledTextContentView> and conformance ShapeStyledDisplayList<A>);
  }
}

void type metadata accessor for InterpolatedDisplayList<ResolvedStyledText>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>)
  {
    v2 = type metadata accessor for ResolvedStyledText();
    v4 = type metadata accessor for InterpolatedDisplayList(a1, v2, &protocol witness table for ResolvedStyledText, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>);
    }
  }
}

uint64_t getEnumTagSinglePayload for ResolvedGradient(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

void lazy protocol witness table accessor for type StyledTextLayoutComputer and conformance StyledTextLayoutComputer()
{
  if (!lazy protocol witness table cache variable for type StyledTextLayoutComputer and conformance StyledTextLayoutComputer)
  {
    swift_getWitnessTable(protocol conformance descriptor for StyledTextLayoutComputer, &unk_1F006BFF0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type StyledTextLayoutComputer and conformance StyledTextLayoutComputer);
  }
}

uint64_t StyledTextResponder.init(view:styles:inputs:)(int a1, int a2, uint64_t a3)
{
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 240) = MEMORY[0x1E69E7CC0];
  *(v3 + 248) = 0u;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 40) = a1;
  *(v3 + 44) = a2;
  v4 = *(a3 + 16);
  *(v3 + 48) = *a3;
  *(v3 + 64) = v4;
  v5 = *(a3 + 32);
  v6 = *(a3 + 48);
  v7 = *(a3 + 64);
  *(v3 + 128) = *(a3 + 80);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  *(v3 + 80) = v5;
  *(v3 + 136) = AGGraphGetAttributeSubgraph();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v8 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v9 = *(v8 + 208);

  swift_beginAccess();
  *(v3 + 24) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t type metadata completion function for EnvironmentValues.StringResolutionDate.ResolvableDate(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PeriodicTimelineSchedule(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void instantiation function for generic protocol witness table for RoundedRectangle(uint64_t a1)
{
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle()
{
  if (!lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for RoundedRectangle, &type metadata for RoundedRectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle);
  }
}

{
  if (!lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for RoundedRectangle, &type metadata for RoundedRectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle);
  }
}

{
  if (!lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for RoundedRectangle, &type metadata for RoundedRectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle);
  }
}

double Binding.subscript.getter@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = a1;
  v5 = type metadata accessor for WritableKeyPath();
  swift_getWitnessTable(protocol conformance descriptor for WritableKeyPath<A, B>, v5);
  return Binding.projecting<A>(_:)(&v8, a2, v5, v6, a3);
}

uint64_t StoredLocationBase.projecting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = v3[2];
  v9 = *(v7 + 168);
  type metadata accessor for StoredLocationBase.Data(0, v9, v10, v11);

  os_unfair_lock_lock(v8 + 4);
  v14 = type metadata accessor for StoredLocationBase(0, v9, v12, v13);
  swift_getWitnessTable(protocol conformance descriptor for StoredLocationBase<A>, v14);
  v15 = LocationProjectionCache.reference<A, B>(for:on:)(a1, &v17, a2, v14, a3);
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(v8 + 4);

  return v15;
}

void *static StaticIf<>._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v42 = a8;
  v43 = a9;
  v79 = *MEMORY[0x1E69E9840];
  v14 = a2[1];
  v15 = a2[3];
  v74 = a2[2];
  v75 = v15;
  v76 = a2[4];
  v16 = a2[1];
  v72 = *a2;
  v73 = v16;
  v66 = v72;
  v67 = v14;
  v17 = *a1;
  v77 = *(a2 + 20);
  v68 = v74;
  v18 = *(a6 + 8);
  outlined init with copy of _GraphInputs(&v72, &v60);
  v19 = v18(&v66, a3, a6);
  v78[0] = v66;
  v78[1] = v67;
  v78[2] = v68;
  outlined destroy of _GraphInputs(v78);
  v20 = type metadata accessor for StaticIf(255, a3, a4, a5);
  if (v19)
  {
    v40 = &v40;
    MEMORY[0x1EEE9AC00](v20);
    v41 = a7;
    v46 = v17;
    type metadata accessor for _GraphValue(0, v21, v22, v23);
    _GraphValue.subscript.getter(partial apply for closure #1 in static StaticIf<>._makeView(view:inputs:), a4, &v45);
    v24 = v45;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v57 = v75;
    v58 = v76;
    v59 = v77;
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v26 = v74;
    LODWORD(v56) = 0;
    v44 = v24;
    v60 = v72;
    v61 = v73;
    v65 = v77;
    v63 = v75;
    v64 = v76;
    v62 = v56;
    v50 = v56;
    v51 = v75;
    v52 = v76;
    v53 = v77;
    v48 = v72;
    v49 = v73;
    v27 = v41;
    v28 = v41[3];
    outlined init with copy of _ViewInputs(&v72, &v66);
    outlined init with copy of _ViewInputs(&v60, &v66);
    v28(v47, &v44, &v48, a4, v27);
    v68 = v50;
    v69 = v51;
    v70 = v52;
    v71 = v53;
    v66 = v48;
    v67 = v49;
    outlined destroy of _ViewInputs(&v66);
    LODWORD(v56) = v26;
    if (ShouldRecordTree)
    {
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v47, &v54);
      AGSubgraphEndTreeElement();
    }
  }

  else
  {
    v41 = &v40;
    MEMORY[0x1EEE9AC00](v20);
    v29 = v42;
    v46 = v17;
    type metadata accessor for _GraphValue(0, v30, v31, v32);
    _GraphValue.subscript.getter(partial apply for closure #2 in static StaticIf<>._makeView(view:inputs:), a5, &v45);
    v33 = v45;
    v34 = AGSubgraphShouldRecordTree();
    if (v34)
    {
      AGSubgraphBeginTreeElement();
    }

    v57 = v75;
    v58 = v76;
    v59 = v77;
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v35 = v74;
    LODWORD(v56) = 0;
    v44 = v33;
    v60 = v72;
    v61 = v73;
    v65 = v77;
    v63 = v75;
    v64 = v76;
    v62 = v56;
    v50 = v56;
    v51 = v75;
    v52 = v76;
    v53 = v77;
    v48 = v72;
    v49 = v73;
    v36 = *(v29 + 24);
    outlined init with copy of _ViewInputs(&v72, &v66);
    outlined init with copy of _ViewInputs(&v60, &v66);
    v36(v47, &v44, &v48, a5, v29);
    v68 = v50;
    v69 = v51;
    v70 = v52;
    v71 = v53;
    v66 = v48;
    v67 = v49;
    outlined destroy of _ViewInputs(&v66);
    LODWORD(v56) = v35;
    if (v34)
    {
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v47, &v54);
      AGSubgraphEndTreeElement();
    }
  }

  v50 = v56;
  v51 = v57;
  v52 = v58;
  v53 = v59;
  v48 = v54;
  v49 = v55;
  result = outlined destroy of _ViewInputs(&v48);
  v38 = v47[1];
  v39 = v43;
  *v43 = v47[0];
  v39[1] = v38;
  return result;
}

uint64_t State.projectedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  State.getValue(forReading:)(0, a1, &v19 - v10);
  v12 = *(v2 + *(a1 + 28));
  if (v12)
  {
    (*(v6 + 16))(v8, v11, v5);
    Binding.init(value:location:)(v8, v12, v13, v14, a2);
    v15 = *(v6 + 8);

    return v15(v11, v5);
  }

  else
  {
    v17 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      v18 = v17;
      swift_once();
      v17 = v18;
    }

    os_log(_:dso:log:_:_:)(v17, &dword_18D018000, static Log.runtimeIssuesLog, "Accessing State's value outside of being installed on a View. This will result in a constant Binding of the initial value and will not update.", 142, 2, MEMORY[0x1E69E7CC0]);
    static Binding.constant(_:)(v11, v5, a2);
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t closure #1 in static EnumVTable.update(elt:property:phase:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6)
{
  if ((*(a4 + 24) & 1) == 0)
  {
    if (*(a4 + 8) == result)
    {
      goto LABEL_13;
    }

    v11 = *(a4 + 16);
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v11 >= *(*a4 + 16))
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v12 = *a4 + 24 * v11;
    v20 = *(v12 + 40);
    v21 = *(v12 + 48);
    v13 = a3;
    v14 = a6;
    v15 = a4;
    v16 = result;
    _DynamicPropertyBuffer.reset()();
    result = v16;
    a4 = v15;
    a6 = v14;
    a3 = v13;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    *a5 = 1;
    if (*(v15 + 24) != 1)
    {
      goto LABEL_13;
    }
  }

  v7 = *(*a4 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (*a4 + 32);
    while (1)
    {
      v10 = *v9;
      v9 += 3;
      if (v10 == result)
      {
        break;
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    *(a4 + 8) = result;
    *(a4 + 16) = v8;
    *(a4 + 24) = 0;
    *a5 = 1;
    if ((*(a4 + 24) & 1) == 0)
    {
LABEL_13:
      v17 = *(a4 + 16);
      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v17 < *(*a4 + 16))
      {
        v18 = *a4 + 24 * v17;
        v20 = *(v18 + 40);
        v21 = *(v18 + 48);
        v19 = a6;
        result = _DynamicPropertyBuffer.update(container:phase:)(a3, &v19);
        *a5 = (result | *a5) & 1;
        return result;
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance EnableScrollPrefetchFeature(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *a1;
  swift_retain_n();

  LOBYTE(a4) = a4(v6, v4);

  return a4 & 1;
}

uint64_t LocationProjectionCache.reference<A, B>(for:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = *(a4 - 8);
  v47 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v12;
  v55 = v11;
  v50 = v13;
  v56 = v13;
  v57 = v14;
  v15 = type metadata accessor for ProjectedLocation(0, &v54);
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = *(a3 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v20 + 16);
  v48 = a1;
  v25(v24, a1, a3, v22);
  v53 = a5;
  AnyHashable2.init<A>(_:)(v24, a3, &v54);
  v26 = v54;
  v52 = v5;
  v27 = *v5;
  if (!*(v27 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v54), (v29 & 1) == 0))
  {
    v54 = 0;
    LOBYTE(v55) = 1;
    outlined destroy of WeakBox<AnyLocationBase>?(&v54);
    goto LABEL_7;
  }

  outlined init with copy of WeakBox<AnyLocationBase>(*(v27 + 56) + 8 * v28, &v54);
  LOBYTE(v55) = 0;
  Strong = swift_weakLoadStrong();
  outlined destroy of WeakBox<AnyLocationBase>?(&v54);
  if (!Strong)
  {
LABEL_7:
    v36 = *(v46 + 16);
    v46 = v26;
    v37 = v45;
    v36(v45, v47, a4);
    (v25)(v24, v48, a3);
    ProjectedLocation.init(location:projection:)(v37, v24, a4, a3, v50, v53, v19);
    swift_getWitnessTable(protocol conformance descriptor for ProjectedLocation<A, B>, v15);
    type metadata accessor for LocationBox(0, v15, v38, v39);
    v40 = v51;
    v41 = v49;
    (*(v51 + 16))(v49, v19, v15);
    v35 = swift_allocObject();
    LocationBox.init(_:)(v41);
    swift_weakInit();
    v42 = swift_weakAssign();
    LOBYTE(v55) = 0;
    specialized Dictionary.subscript.setter(v42, v46);
    (*(v40 + 8))(v19, v15);
    return v35;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnyLocation(0, AssociatedTypeWitness, v32, v33);
  v34 = swift_dynamicCastClass();
  if (!v34)
  {

    goto LABEL_7;
  }

  v35 = v34;

  return v35;
}

void type metadata accessor for WeakBox<AnyLocationBase>?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of WeakBox<AnyLocationBase>?(uint64_t a1)
{
  type metadata accessor for WeakBox<AnyLocationBase>?(0, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>?, 255, type metadata accessor for WeakBox<AnyLocationBase>, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProjectedLocation.init(location:projection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ProjectedLocation(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a1, type metadata accessor for WeakBox<AnyLocationBase>?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);

    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v6, type metadata accessor for WeakBox<AnyLocationBase>?);
  }

  else
  {
    outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v6, type metadata accessor for WeakBox<AnyLocationBase>);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    outlined assign with take of WeakBox<AnyLocationBase>(a1, v20);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + 8 * v10) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v17;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of AnyHashable(a2, v19);
  specialized _NativeDictionary._insert(at:key:value:)(v10, v19, a1, v16);
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    *(v19 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    *(*(v19 + 56) + 8 * v9) = a1;
    v20 = *(v19 + 16);
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      *(v19 + 16) = v21;
      return;
    }

    goto LABEL_15;
  }

  *(*(v19 + 56) + 8 * v9) = a1;
}

void type metadata accessor for _DictionaryStorage<AnyHashable2, WeakBox<AnyLocationBase>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable2, WeakBox<AnyLocationBase>>)
  {
    type metadata accessor for [(AbstractHomogeneousCollection, Int)](255, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox);
    lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable2, WeakBox<AnyLocationBase>>);
    }
  }
}

void type metadata accessor for [ResolvableTextSegmentAttribute.Value](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double Binding.projecting<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = &v23 - v14;
  (*(a4 + 32))(v6 + *(a2 + 32), a3, a4, v13);
  v16 = (*(**(v6 + 8) + 136))(a1, a3, a4);
  v17 = *v16;
  *a5 = *v6;
  *(a5 + 1) = v16;
  v18 = *(v17 + 88);
  v21 = type metadata accessor for Binding(0, v18, v19, v20);
  (*(*(v18 - 8) + 32))(&a5[*(v21 + 32)], v15, v18);

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg5(void (*a1)(__int128 *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v21;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v18[0] = *(i - 1);
    v18[1] = v10;

    (a1)(&v19, v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v19;
    v12 = v20;
    v21 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v19;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v11 = v17;
      v6 = v21;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 48) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(tag: Int, links: _DynamicPropertyBuffer)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(tag: Int, links: _DynamicPropertyBuffer)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (tag: Int, links: _DynamicPropertyBuffer), MEMORY[0x1E69E6530], &type metadata for _DynamicPropertyBuffer, "tag links ");
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(tag: Int, links: _DynamicPropertyBuffer)>);
    }
  }
}

double closure #1 in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)@<D0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = *(v9 + 16);
  if (v11)
  {
    v16 = *a1;
    swift_bridgeObjectRetain_n();
    v12 = 0;
    v13 = v9 + 40;
    do
    {
      v12 |= (*(*v13 + 16))();
      v13 += 32;
      --v11;
    }

    while (v11);

    v10 = v16;
  }

  else
  {

    v12 = 0;
  }

  v17[0] = v9;
  v17[1] = 0;
  v18 = 0;
  v19 = v12;
  v21 = a2;
  _DynamicPropertyBuffer.init<A>(fields:container:inputs:)(v17, &v21, a3, a4, v20);
  v14 = v20[0];
  result = v20[1];
  *a5 = v10;
  *(a5 + 8) = v14;
  *(a5 + 16) = result;
  return result;
}

void project #1 <A><A1>(type:) in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for EnumVTable(0, a6, a3, a4);
  v10 = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x30);
  *v10 = v9;
  v10[1] = 48;
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = a3;
  *(v10 + 40) = 1;
  v11 = *a2;
  if (!*a2)
  {
    goto LABEL_17;
  }

  if (v10 - v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 - v11 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(a2 + 3);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(a2 + 3) = v14;
  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  *(v10 + 3) = *(v10 + 3) & 0x80000000 | a4;
}

uint64_t closure #2 in static DynamicPropertyCache.fields(of:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t *a4, double a5)
{
  v10 = AGTupleCount();
  if (v10 < 0)
  {
    __break(1u);
LABEL_21:
    a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 2) + 1, 1, a3);
    *a1 = a3;
    goto LABEL_15;
  }

  v11 = v10;
  v25 = a4;
  v26 = a2;
  if (v10)
  {
    v12 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v14 = AGTupleElementType();
      v15 = swift_conformsToProtocol2();
      if (v15 && v14)
      {
        v16 = v15;
        v17 = AGTupleElementOffset();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v19 = *(v5 + 2);
        v18 = *(v5 + 3);
        if (v19 >= v18 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v5);
        }

        *(v5 + 2) = v19 + 1;
        v13 = &v5[32 * v19];
        *(v13 + 4) = v14;
        *(v13 + 5) = v16;
        *(v13 + 6) = v17;
        *(v13 + 7) = a1;
      }

      ++v12;
    }

    while (v11 != v12);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v5 + 2))
  {

    return 1;
  }

  a1 = v25;
  a3 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v22 = *(a3 + 2);
  v21 = *(a3 + 3);
  if (v22 >= v21 >> 1)
  {
    a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, a3);
    *a1 = a3;
  }

  *(a3 + 2) = v22 + 1;
  v23 = &a3[16 * v22];
  *(v23 + 4) = v26;
  *(v23 + 5) = v5;
  return 1;
}

void DynamicPropertyCache.Fields.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  if (a3)
  {
    v8 = *(a2 + 16);

    v9 = 0;
    v10 = 0;
    v11 = a2 + 40;
LABEL_3:
    v12 = (v11 + 16 * v9);
    while (v8 != v9)
    {
      if (v9 >= *(a2 + 16))
      {
        __break(1u);
        return;
      }

      v14 = *v12;
      v12 += 2;
      v13 = v14;
      ++v9;
      v15 = *(v14 + 16);
      if (v15)
      {
        v19 = v11;
        v20 = v4;

        v16 = v13 + 40;
        do
        {
          v10 |= (*(*v16 + 16))();
          v16 += 32;
          --v15;
        }

        while (v15);

        v4 = v20;
        v11 = v19;
        goto LABEL_3;
      }
    }
  }

  else
  {
    v17 = *(a1 + 16);
    if (!v17)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v10 = 0;
    v18 = a1 + 40;
    do
    {
      v10 |= (*(*v18 + 16))();
      v18 += 32;
      --v17;
    }

    while (v17);
  }

  outlined consume of DynamicPropertyCache.Fields.Layout(a1, a2, v4 & 1);
LABEL_14:
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4 & 1;
  *(a4 + 20) = v10;
}

uint64_t static InterfaceIdiomPredicate.evaluate(inputs:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v3, v9);
  if (!v4 || !*(v4 + 72))
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, v5, v6, v7);
  }

  return AnyInterfaceIdiom.accepts<A>(_:)() & 1;
}

uint64_t closure #2 in static StaticIf<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = type metadata accessor for StaticIf(0, a2, a3, a4);
  v12 = *(v11 + 44);
  v16[2] = v11;
  v16[3] = a4;
  v13 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v12, a8, v16, a4, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  return v16[5];
}

void *specialized find1<A>(_:key:filter:)(void *a1, uint64_t a2, uint64_t a3)
{
  return specialized find1<A>(_:key:filter:)(a1, a2, a3, specialized find1<A>(_:key:filter:));
}

{
  return specialized find1<A>(_:key:filter:)(a1, a2, a3, specialized find1<A>(_:key:filter:));
}

void *specialized find1<A>(_:key:filter:)(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (result)
  {
    while (1)
    {
      while ((a3 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v4 = result;
        v5 = a2;
        v6 = a3;
        v7 = a4;
        v8 = a4(result[3]);
        a2 = v5;
        a3 = v6;
        a4 = v7;
        v9 = v8;
        result = v4;
        if (v9)
        {
          break;
        }
      }

      if (result[2] != a2)
      {
        result = result[4];
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v9;
  }

  return result;
}

{
  if (result)
  {
    while (1)
    {
      while ((a3 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v4 = result;
        v5 = a2;
        v6 = a3;
        v7 = a4;
        v8 = a4(result[3]);
        a2 = v5;
        a3 = v6;
        a4 = v7;
        v9 = v8;
        result = v4;
        if (v9)
        {
          break;
        }
      }

      if (result[2] != a2)
      {
        result = result[4];
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v9;
  }

  return result;
}

uint64_t static UserDefaultKeyedFeature.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 40))();
  if (v4 == 2)
  {
    v5 = *(a2 + 32);
    v6 = v5(a1, a2);
    v7 = *(a2 + 16);
    v8 = v7(a1, a2);
    v9 = MEMORY[0x193ABEC20](v8);

    v10 = [v6 objectForKey_];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v18, v19);
      outlined destroy of Any?(v19);
      v11 = v5(a1, a2);
      v12 = v7(a1, a2);
      v13 = MEMORY[0x193ABEC20](v12);

      v14 = [v11 BOOLForKey_];

      (*(a2 + 48))(v14, a1, a2);
      v4 = v14;
    }

    else
    {
      memset(v19, 0, sizeof(v19));
      outlined destroy of Any?(v19);
      v15 = *(a2 + 24);
      v16 = v15(a1, a2);
      (*(a2 + 48))(v16 & 1, a1, a2);
      v4 = v15(a1, a2);
    }
  }

  return v4 & 1;
}

uint64_t static ViewInputPredicate.evaluate(listInputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v7 = *a1;
  v6 = a1[1];
  v13[2] = a1[2];
  v10 = v7;
  v11 = v6;
  v12 = a1[2];
  v8 = *(a3 + 8);
  outlined init with copy of _GraphInputs(v13, v14);
  LOBYTE(v3) = v8(&v10, a2, v3);
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  outlined destroy of _GraphInputs(v14);
  return v3 & 1;
}

uint64_t initializeWithCopy for CombinedKeyframes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t destroy for CombinedKeyframes(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 32) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t storeEnumTagSinglePayload for HostPreferencesCombiner(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *static StyleModifierType.makeStyleBody<A>(view:modifier:inputs:fields:)(_DWORD *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a4;
  v13 = *a3;
  v14 = a7[1];
  v23 = *a7;
  v15 = *(a7 + 16);
  v22 = *(a7 + 5);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v16 = static Semantics_v2_3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (static Semantics.forced < v16)
  {
    goto LABEL_10;
  }

  swift_getAssociatedTypeWitness();
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(71);
    MEMORY[0x193ABEDD0](0xD000000000000039, 0x800000018DD7E280);
    v21 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v21);

    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_10:
  if (*(*(swift_getAssociatedTypeWitness() - 8) + 64))
  {
    closure #1 in static StyleModifierType.makeStyleBody<A>(view:modifier:inputs:fields:)(1, a8, a9, a10);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v31[1] = v13;
  v31[2] = v12;
  _GraphValue.init(_:)(OffsetAttribute2, v31);
  v28[0] = v23;
  v28[1] = v14;
  v29 = v15;
  v30 = v22;
  v27[0] = a9;
  v27[1] = a8;
  v27[2] = a11;
  v27[3] = a10;
  v18 = type metadata accessor for StyleBodyAccessor(0, v27);
  swift_getWitnessTable(protocol conformance descriptor for StyleBodyAccessor<A, B>, v18);
  return BodyAccessor.makeBody(container:inputs:fields:)(a1, a2, v31, a6, v28, v18, v19);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for StyleableViewContextInput)
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

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for StyleableViewContextInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt0B5(v4, v6) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Any.Type?, type metadata accessor for Any.Type, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v5 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<StyleableViewContextInput>, &type metadata for StyleableViewContextInput, &protocol witness table for StyleableViewContextInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for StyleableViewContextInput, 0, v5);
  }
}

double _GraphInputs.setCurrentStyleableView<A>(_:)(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(v2, a2);

  return result;
}

uint64_t static StaticIf<>._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = (*(a6 + 16))(a2, a3, a6);
  v16 = type metadata accessor for StaticIf(255, a3, a4, a5);
  if (v15)
  {
    v27 = v14;
    type metadata accessor for _GraphValue(0, v16, v17, v18);
    _GraphValue.subscript.getter(partial apply for closure #1 in static StaticIf<>._makeView(view:inputs:), a4, &v26);
    v19 = v26;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
    }

    v25 = v19;
    (*(a7 + 32))(&v25, a2, a4, a7);
    v20 = v19;
    v21 = a4;
    v22 = a7;
  }

  else
  {
    v27 = v14;
    type metadata accessor for _GraphValue(0, v16, v17, v18);
    _GraphValue.subscript.getter(partial apply for closure #2 in static StaticIf<>._makeView(view:inputs:), a5, &v26);
    v23 = v26;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
    }

    v25 = v23;
    (*(a8 + 32))(&v25, a2, a5, a8);
    v20 = v23;
    v21 = a5;
    v22 = a8;
  }

  return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v20, v21, v22);
}

Swift::Void __swiftcall _GraphInputs.resetCurrentStyleableView()()
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(v0, 0);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance StyleOverrideInput<A>@<X0>(uint64_t *a2@<X8>)
{
  result = protocol witness for PlatformDrawable.makeAsyncUpdate(content:required:layer:bounds:) in conformance CGDrawingLayer();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static DynamicProperty.makeEmbeddedProperties<A>(in:container:fieldOffset:inputs:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  static DynamicPropertyCache.fields(of:)(v6, v16);
  v11 = v16[0];
  v12 = v16[1];
  v13 = v17;
  v15 = v10;
  _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(v16, &v15, a4, a3, a6);

  return outlined consume of DynamicPropertyCache.Fields.Layout(v11, v12, v13);
}

void static DynamicProperty._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a2;
  static DynamicProperty.makeEmbeddedProperties<A>(in:container:fieldOffset:inputs:)(a1, &v13, a3, a4, a5, a6);
  v11 = type metadata accessor for EmbeddedDynamicPropertyBox(0, a5, a7, v10);
  swift_getWitnessTable(protocol conformance descriptor for EmbeddedDynamicPropertyBox<A>, v11);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v12, a3, v11, v12);
}

uint64_t closure #1 in static StaticIf<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[2] = type metadata accessor for StaticIf(0, a2, a3, a4);
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a8, v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v14[5];
}

uint64_t static View.makeDebuggableViewList(view:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v9 = v7;
    (*(a4 + 32))(&v9, a2, a3, a4);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    v9 = v7;
    return (*(a4 + 32))(&v9, a2, a3, a4);
  }
}

uint64_t one-time initialization function for v2_3()
{
  result = swiftUI_v2_3_os_versions();
  static Semantics.v2_3 = HIDWORD(result);
  return result;
}

uint64_t _ViewListInputs.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _GraphInputs.subscript.getter(a1, a2, *(a3 + 8));
}

{
  return _GraphInputs.subscript.getter(a1, a2, *(a3 + 8));
}

uint64_t getEnumTagSinglePayload for VStack(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
  }

  v8 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

double destroy for CountViews(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for CountViews(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t static StaticIf<>._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *a1;
  v15 = (*(a8 + 16))(a2, a5, a8);
  v16 = type metadata accessor for StaticIf(255, a5, a6, a7);
  if (v15)
  {
    v29 = v14;
    type metadata accessor for _GraphValue(0, v16, v17, v18);
    _GraphValue.subscript.getter(partial apply for closure #1 in static StaticIf<>._makeView(view:inputs:), a6, &v28);
    v19 = v28;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
    }

    v27 = v19;
    (*(a9 + 32))(&v27, a2, a3, a4, a6, a9);
    v20 = v19;
    v21 = a6;
    v22 = a9;
  }

  else
  {
    v29 = v14;
    type metadata accessor for _GraphValue(0, v16, v17, v18);
    _GraphValue.subscript.getter(partial apply for closure #2 in static StaticIf<>._makeView(view:inputs:), a7, &v28);
    v23 = v28;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
    }

    v27 = v23;
    (*(a10 + 32))(&v27, a2, a3, a4, a7, a10);
    v20 = v23;
    v21 = a7;
    v22 = a10;
  }

  return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v20, v21, v22);
}

uint64_t static StyleModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  outlined init with copy of _ViewListInputs(a2, v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for StyleOverrideInput(0, AssociatedTypeWitness, v11, v12);
  _ViewListInputs.subscript.getter(v13, v13, &protocol witness table for StyleOverrideInput<A>);
  v15 = v23;
  if (v23)
  {
    v9 = v22;
  }

  else
  {
    v15 = type metadata accessor for StyleModifierType(0, a5, a6, v14);
  }

  v22 = v9;
  v23 = v15;
  v16 = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for StyleInput(0, v16, v17, v18);
  v20 = _GraphInputs.append<A, B>(_:to:)(&v22, v19, v19, &type metadata for AnyStyleModifier, &protocol witness table for StyleInput<A>, &protocol witness table for AnyStyleModifier);
  a3(v20, v24);
  return outlined destroy of _ViewListInputs(v24);
}

void *static ViewModifier.makeDebuggableView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = a2[3];
  v39[2] = a2[2];
  v39[3] = v13;
  v39[4] = a2[4];
  v40 = *(a2 + 20);
  v14 = a2[1];
  v39[0] = *a2;
  v39[1] = v14;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v16 = a2[3];
  v31 = a2[2];
  v32 = v16;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v17 = a2[1];
  v29 = *a2;
  v30 = v17;
  v18 = v31;
  LODWORD(v31) = 0;
  v22 = v12;
  v35[0] = v29;
  v35[1] = v17;
  v36 = v34;
  v35[3] = v16;
  v35[4] = v33;
  v35[2] = v31;
  v25 = v31;
  v26 = v16;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v17;
  v19 = *(a6 + 24);
  outlined init with copy of _ViewInputs(v39, v37);
  outlined init with copy of _ViewInputs(v35, v37);
  v19(&v22, &v23, a3, a4, a5, a6);
  v37[2] = v25;
  v37[3] = v26;
  v37[4] = v27;
  v38 = v28;
  v37[0] = v23;
  v37[1] = v24;
  outlined destroy of _ViewInputs(v37);
  LODWORD(v31) = v18;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v29);
    AGSubgraphEndTreeElement();
  }

  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  return outlined destroy of _ViewInputs(&v23);
}

uint64_t type metadata completion function for _ContentShapeModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ModifierGesture(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for _EndedGesture(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for EndedCallbacks(255, AssociatedTypeWitness, v4, v5);
  swift_getWitnessTable(protocol conformance descriptor for EndedCallbacks<A>, v6);
  v9 = type metadata accessor for CallbacksGesture(255, v6, v7, v8);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v9);
  v13[0] = v9;
  v13[1] = v2;
  v13[2] = v10;
  v13[3] = v1;
  result = type metadata accessor for ModifierGesture(319, v13);
  if (v12 <= 0x3F)
  {
    v13[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AddGestureModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static _AnimationModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v33 - v8;
  v11 = type metadata accessor for ValueTransactionSeed(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v33 - v14;
  v16 = *a1;
  v17 = *(a3 - 8);
  if (*(v17 + 64))
  {
    closure #1 in static _AnimationModifier._makeInputs(modifier:inputs:)(1, a3, a4, v13);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v33[3] = v16;
  v19 = OffsetAttribute2;
  v20 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v21 = *(v20 + 68);

  (*(v17 + 56))(v9, 1, 1, a3);
  v22 = ValueTransactionSeed.init(value:transactionSeed:oldValue:)(v19, v21, v9, a3, a4, v15);
  v23 = MEMORY[0x1EEE9AC00](v22);
  *&v33[-4] = v11;
  swift_getWitnessTable(protocol conformance descriptor for ValueTransactionSeed<A>, v11, v23);
  *&v33[-2] = v24;
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Attribute<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, closure #1 in Attribute.init<A>(_:)partial apply, &v33[-8], v11, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  (*(v12 + 8))(v15, v11);
  v27 = v35;
  AGGraphSetFlags();
  closure #2 in static _AnimationModifier._makeInputs(modifier:inputs:)(1, a3, a4, v28);
  v29 = AGGraphCreateOffsetAttribute2();
  v30 = v34;
  v31 = *(v34 + 28);
  v35 = v27;
  v36 = v29;
  v37 = v31;
  v38 = v21;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v30 + 28) = result;
  return result;
}

uint64_t closure #1 in static _AnimationModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _AnimationModifier(0, a2, a3, a4);
  v7 = *(v6 + 36);
  v11[2] = v6;
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t ValueTransactionSeed.init(value:transactionSeed:oldValue:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v8 = *(type metadata accessor for ValueTransactionSeed(0, a4, a5, a4) + 40);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a3, v9);
}

void type metadata accessor for Attribute<UInt32>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t closure #2 in static _AnimationModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for _AnimationModifier(0, a2, a3, a4);
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Animation?, &type metadata for Animation, MEMORY[0x1E69E6720]);
  v6 = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

void lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction()
{
  if (!lazy protocol witness table cache variable for type ChildTransaction and conformance ChildTransaction)
  {
    swift_getWitnessTable(protocol conformance descriptor for ChildTransaction, &unk_1F009CBF8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ChildTransaction and conformance ChildTransaction);
  }
}

{
  if (!lazy protocol witness table cache variable for type ChildTransaction and conformance ChildTransaction)
  {
    swift_getWitnessTable(protocol conformance descriptor for ChildTransaction, &unk_1F00B8740, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ChildTransaction and conformance ChildTransaction);
  }
}

uint64_t type metadata completion function for ValueTransactionSeed(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ValueTransactionSeed<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ValueTransactionSeed<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t View.animation<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _AnimationModifier(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  (*(v8 + 16))(v10, a2, a4, v15);
  *v17 = a1;
  (*(v8 + 32))(&v17[*(v13 + 36)], v10, a4);
  View.modifier<A>(_:)();
  v18 = *(v14 + 8);

  return v18(v17, v13);
}

unsigned __int8 *assignWithCopy for Environment(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 8uLL)
    {
      v7 = 8;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 < 2)
    {
      goto LABEL_36;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_36:
        if (v13 == 1)
        {
          (*(v6 + 16))(a1, a2, v5);
          a1[v7] = 1;
        }

        else
        {
          *a1 = *a2;
          a1[v7] = 0;
        }

        return a1;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 2;
    v13 = v16 + 2;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_36;
  }

  return a1;
}

uint64_t static _AnimationModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *a2;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v12, v17[0]);
  if (v13)
  {
    if ((*(v13 + 72) & 1) == 0)
    {
LABEL_3:
      outlined init with copy of _ViewListInputs(a2, v17);
      v16 = v11;
      v14 = static _AnimationModifier._makeInputs(modifier:inputs:)(&v16, v17, a5, a6);
      (a3)(v14, v17);
      return outlined destroy of _ViewListInputs(v17);
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
      goto LABEL_3;
    }
  }

  LODWORD(v17[0]) = v11;
  return static _AnimationModifier.makeArchivedViewList(modifier:inputs:body:)(v17, a2, a3, a4, a5, a6);
}

void type metadata accessor for Attribute<_ShapeStyle_Pack>()
{
  if (!lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>);
    }
  }
}

uint64_t static ConditionallyArchivableView._makeViewList(view:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  static DynamicPropertyCache.fields(of:)(a3, v36);
  v8 = v36[0];
  v9 = v36[1];
  v10 = v37;
  v11 = v38;
  outlined init with copy of _ViewListInputs(a2, v36);
  v23 = v11;
  v26 = v7;
  v24 = v9;
  v25 = v8;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  static ConditionallyArchivableView.makeBody(view:inputs:fields:)(&v27, &v33, &v26, v36, &v29, a3, a4);
  v21 = v33;
  v22 = v34;
  LOBYTE(v9) = v35;
  LODWORD(v29) = v27;
  BYTE4(v29) = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for ConditionalGraphValue(0, AssociatedTypeWitness, v13, v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  ConditionalGraphValue<>.makeViewList(inputs:)(v36, v15, AssociatedConformanceWitness, v17);
  if (v9)
  {
    outlined destroy of _ViewListInputs(v36);
    v19 = v24;
    v18 = v25;
  }

  else
  {
    v33 = v21;
    v34 = v22;
    v27 = v7;
    v29 = v25;
    v30 = v24;
    v31 = v10;
    v32 = v23;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v27, &v29, a3);
    outlined destroy of _ViewListInputs(v36);
    v18 = v25;
    v19 = v24;
  }

  return outlined consume of DynamicPropertyCache.Fields.Layout(v18, v19, v10);
}

uint64_t ConditionalGraphValue<>.makeViewList(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(v4 + 4);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (v10)
  {
    v12 = *(a2 + 24);
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v19 = v9;
    (*(a4 + 32))(&v19, a1, v12, a4);
    v13 = v9;
    v14 = v12;
    v15 = a4;
  }

  else
  {
    v16 = *(a2 + 16);
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v18 = v9;
    (*(a3 + 32))(&v18, a1, v16, a3);
    v13 = v9;
    v14 = v16;
    v15 = a3;
  }

  return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v13, v14, v15);
}

double base witness table accessor for _AttributeBody in GestureFilter<A>(uint64_t a1)
{
  return swift_getWitnessTable(protocol conformance descriptor for GestureFilter<A>, a1);
}

{
  return swift_getWitnessTable(protocol conformance descriptor for GestureFilter<A>, a1);
}

double destroy for GestureFilter(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for GestureFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for GestureFilter);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for GestureFilter);
}

uint64_t implicit closure #1 in static GestureViewModifier.makeView(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v9 = a1;
  v10 = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_TA_0;
  KeyPath = swift_getKeyPath();
  v13 = type metadata accessor for Map();
  swift_getWitnessTable(MEMORY[0x1E698D3A8], v13);
  v14 = v3;
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for Attribute<GestureMask>, &type metadata for GestureMask, MEMORY[0x1E698D388]);
  v5 = v4;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v9, closure #1 in Attribute.init<A>(_:)partial apply, v12, v13, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);

  return v8;
}

__n128 sub_18D0F5B0C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *static ConditionallyArchivableView.makeBody(view:inputs:fields:)(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a3;
  v13 = *a5;
  v12 = *(a5 + 8);
  v14 = *(a5 + 16);
  v15 = *(a5 + 20);
  if (AGTypeGetKind() - 2 <= 3)
  {
    v16 = *a4;
    BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
    v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v16, v29);
    if (v17)
    {
      v19 = *(v17 + 72);
      if (v19)
      {
LABEL_4:
        v33 = v11;
        v29 = v13;
        v30 = v12;
        v31 = v14;
        v32 = v15;
        v20 = type metadata accessor for ArchivedViewBodyAccessor(0, a6, a7, v18);
        swift_getWitnessTable(protocol conformance descriptor for ArchivedViewBodyAccessor<A>, v20);
LABEL_9:
        result = BodyAccessor.makeBody(container:inputs:fields:)(&v36, &v34, &v33, a4, &v29, v20, v21);
        v25 = v34;
        v26 = v35;
        *a1 = v36;
        *(a1 + 4) = v19 & 1;
        *a2 = v25;
        *(a2 + 16) = v26;
        return result;
      }
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v19 = static ArchivedViewInput.defaultValue;
      if (static ArchivedViewInput.defaultValue)
      {
        goto LABEL_4;
      }
    }

    v22 = *(a7 + 8);
    ViewBodyAccessor.init()();
    v33 = v11;
    v29 = v13;
    v30 = v12;
    v31 = v14;
    v32 = v15;
    v20 = type metadata accessor for ViewBodyAccessor(0, a6, v22, v23);
    swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v20);
    goto LABEL_9;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  v27 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v27);

  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id static GestureViewModifier.makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v40 = a2[2];
  v41 = v9;
  v11 = a2[3];
  v42 = a2[4];
  v12 = a2[1];
  v38 = *a2;
  v39 = v12;
  v33 = v40;
  v34 = v11;
  v35 = a2[4];
  v13 = *a1;
  v43 = *(a2 + 20);
  LODWORD(v36) = *(a2 + 20);
  v31 = v38;
  v32 = v10;
  a3(v28);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v41) & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v28[0]);
  v15 = v14;
  if ((v14 & 0x100000000) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for [ViewResponder](0);
    v15 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v16, 0);
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    v26[1] = v26;
    *(&v29[2] + 8) = v40;
    *(&v29[3] + 8) = v41;
    *(&v29[4] + 8) = v42;
    *(v29 + 8) = v38;
    DWORD2(v29[5]) = v43;
    *(&v29[1] + 8) = v39;
    *&v29[0] = __PAIR64__(v13, v15);
    v30 = result;
    MEMORY[0x1EEE9AC00](result);
    v19 = type metadata accessor for GestureFilter(0, a4, a5, v18);
    v25[2] = v19;
    swift_getWitnessTable(protocol conformance descriptor for GestureFilter<A>, v19);
    v25[3] = v20;
    outlined init with copy of _ViewInputs(&v38, &v31);
    _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v25, v19, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
    v35 = v29[4];
    v36 = v29[5];
    v37 = v30;
    v31 = v29[0];
    v32 = v29[1];
    v33 = v29[2];
    v34 = v29[3];
    (*(*(v19 - 8) + 8))(&v31, v19);
    LOBYTE(v29[0]) = 0;
    PreferencesOutputs.subscript.setter(v27, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
LABEL_6:
    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v38);
    MEMORY[0x1EEE9AC00](v23);
    v25[-4] = a4;
    v25[-3] = a5;
    LODWORD(v25[-2]) = v13;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    LODWORD(v36) = v43;
    v31 = v38;
    v32 = v39;
    result = (*(v24 + 8))(partial apply for implicit closure #1 in static GestureViewModifier.makeView(modifier:inputs:body:));
    *a6 = v28[0];
    a6[1] = v28[1];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for _ChangedGesture(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for ChangedCallbacks(255, AssociatedTypeWitness, a1[4], v5);
  swift_getWitnessTable(protocol conformance descriptor for ChangedCallbacks<A>, v6);
  v9 = type metadata accessor for CallbacksGesture(255, v6, v7, v8);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v9);
  v13[0] = v9;
  v13[1] = v3;
  v13[2] = v10;
  v13[3] = v2;
  result = type metadata accessor for ModifierGesture(319, v13);
  if (v12 <= 0x3F)
  {
    v13[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id static _ContentShapeModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v56 = *(a2 + 32);
  v57 = v10;
  v12 = *(a2 + 48);
  v58 = *(a2 + 64);
  v13 = *(a2 + 16);
  v54 = *a2;
  v55 = v13;
  v41 = v56;
  v42 = v12;
  v43 = *(a2 + 64);
  v14 = *a1;
  v59 = *(a2 + 80);
  LODWORD(v44) = *(a2 + 80);
  v39 = v54;
  v40 = v11;
  v15 = outlined init with copy of _ViewInputs(&v54, &v36);
  a3(v35, v15, &v39);
  v60[2] = v41;
  v60[3] = v42;
  v60[4] = v43;
  v61 = v44;
  v60[0] = v39;
  v60[1] = v40;
  outlined destroy of _ViewInputs(v60);
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v57);
  if ((v16 & 1) == 0)
  {
    goto LABEL_6;
  }

  v17 = v54;
  v41 = v56;
  v42 = v57;
  v43 = v58;
  LODWORD(v44) = v59;
  v39 = v54;
  v40 = v55;
  swift_beginAccess();
  v18 = CachedEnvironment.animatedPosition(for:)(&v39);
  v41 = v56;
  v42 = v57;
  v43 = v58;
  LODWORD(v44) = v59;
  v39 = v54;
  v40 = v55;
  v19 = CachedEnvironment.animatedSize(for:)(&v39);
  swift_endAccess();
  v20 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v35[0]);
  v21 = v20;
  if ((v20 & 0x100000000) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for [ViewResponder](0);
    v21 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v22, 0);
  }

  v49 = v56;
  v50 = v57;
  v51 = v58;
  v52 = v59;
  v47 = v54;
  v48 = v55;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *&v53[36] = v49;
    *&v53[52] = v50;
    *&v53[68] = v51;
    *&v53[84] = v52;
    *&v53[4] = v47;
    *&v53[20] = v48;
    *(&v37[2] + 4) = *&v53[32];
    *(&v37[3] + 4) = *&v53[48];
    *(&v37[4] + 4) = *&v53[64];
    *(v37 + 4) = *v53;
    *&v36 = __PAIR64__(v18, v14);
    *(&v36 + 1) = __PAIR64__(HIDWORD(v57), v19);
    LODWORD(v37[0]) = v21;
    *(&v37[5] + 4) = *&v53[80];
    *(&v37[1] + 4) = *&v53[16];
    v38 = result;
    MEMORY[0x1EEE9AC00](result);
    v25 = type metadata accessor for ContentShapeResponderFilter(0, a4, a5, v24);
    v32 = v25;
    swift_getWitnessTable(protocol conformance descriptor for ContentShapeResponderFilter<A>, v25);
    v33 = v26;
    outlined init with copy of _ViewInputs(&v54, &v39);
    _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v36, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v31, v25, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
    v43 = v37[3];
    v44 = v37[4];
    v45 = v37[5];
    v46 = v38;
    v39 = v36;
    v40 = v37[0];
    v41 = v37[1];
    v42 = v37[2];
    (*(*(v25 - 8) + 8))(&v39, v25);
    LOBYTE(v36) = 0;
    PreferencesOutputs.subscript.setter(v34, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(v17);
    v37[1] = v56;
    v37[2] = v57;
    v37[3] = v58;
    LODWORD(v37[4]) = v59;
    v36 = v54;
    v37[0] = v55;
    v16 = (*(v29 + 8))(DynamicContainerItem.list.getter, 0, &v36, v35);
LABEL_6:
    v41 = v56;
    v42 = v57;
    v43 = v58;
    LODWORD(v44) = v59;
    v39 = v54;
    v40 = v55;
    MEMORY[0x1EEE9AC00](v16);
    v31[0] = a4;
    v31[1] = a5;
    LODWORD(v32) = v14;
    result = _ViewOutputs.appendContentShapePreference<A>(inputs:shape:kinds:)(&v39, partial apply for implicit closure #2 in static _ContentShapeModifier._makeView(modifier:inputs:body:), &v30, *MEMORY[0x1E698D3F8], a4, a5);
    *a6 = v35[0];
    a6[1] = v35[1];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.GestureAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028GestureAccessibilityProviderV033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.GestureAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

uint64_t initializeWithCopy for GestureFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 96) = v5;
  *(a1 + 104) = v4;

  v6 = v5;

  return a1;
}

void *static ZStack._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v41 = a2[2];
  v42 = v9;
  v43 = a2[4];
  v44 = *(a2 + 20);
  v10 = a2[1];
  v39 = *a2;
  v40 = v10;
  v21 = a3;
  v22 = a4;
  v20[1] = v8;
  v11 = type metadata accessor for ZStack(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v11, v12, v13);
  v14 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _ZStackLayout, a3, &protocol witness table for _ZStackLayout);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ZStack._makeView(view:inputs:), v14, v20);
  v15 = v20[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  v36 = v44;
  v17 = v41;
  LODWORD(v31) = 0;
  v19 = v15;
  v35[0] = v39;
  v35[1] = v40;
  v35[3] = v42;
  v35[4] = v43;
  v35[2] = v31;
  v25 = v31;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v23 = v39;
  v24 = v40;
  outlined init with copy of _ViewInputs(&v39, v37);
  outlined init with copy of _ViewInputs(v35, v37);
  static _VariadicView.Tree<>._makeView(view:inputs:)(&v19, &v23, &type metadata for _ZStackLayout, a3, &protocol witness table for _ZStackLayout, a4);
  v37[2] = v25;
  v37[3] = v26;
  v37[4] = v27;
  v38 = v28;
  v37[0] = v23;
  v37[1] = v24;
  outlined destroy of _ViewInputs(v37);
  LODWORD(v31) = v17;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v29);
    AGSubgraphEndTreeElement();
  }

  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  return outlined destroy of _ViewInputs(&v23);
}

uint64_t closure #1 in static ZStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ZStack(0, a2, a3, a4);
  v10 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _ZStackLayout, a2, &protocol witness table for _ZStackLayout);
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

uint64_t static StyleableView._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  outlined init with copy of _ViewListInputs(a2, v58);
  v59[0] = *v58;
  v59[1] = *&v58[16];
  v60 = *&v58[32];
  v7 = *v58;
  v55 = *&v58[8];
  v56 = *&v58[24];
  v57 = *&v58[40];
  outlined init with copy of _GraphInputs(v59, &v61);
  v8 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(v7);
  v62 = v55;
  v63 = v56;
  v61 = v7;
  v64 = v57;
  outlined destroy of _GraphInputs(&v61);
  if (!v8 || v8 != a3)
  {
    v16 = _GraphInputs.setCurrentStyleableView<A>(_:)(a3, a3);
    if (((*(a4 + 56))(a3, a4, v16) & 1) != 0 && (WORD2(v60) & 0x2020) == 0x20)
    {
      v17 = *v58;
      BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
      v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v55);
      if (v18)
      {
        v19 = *(v18 + 72);
      }

      else
      {
        v19 = 0;
      }

      v39 = AGMakeUniqueID();
      _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(v58, v39);

      v41 = *MEMORY[0x1E698D3F8];
      *&v55 = __PAIR64__(*MEMORY[0x1E698D3F8], v6);
      DWORD2(v55) = v41;
      HIDWORD(v55) = v41;
      *&v56 = __PAIR64__(v19, v39);
      MEMORY[0x1EEE9AC00](v40);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v50[2] = AssociatedTypeWitness;
      ScrapeableResolvedRepresentation = type metadata accessor for MakeScrapeableResolvedRepresentation(0, a3, a4, v43);
      swift_getWitnessTable(protocol conformance descriptor for MakeScrapeableResolvedRepresentation<A>, ScrapeableResolvedRepresentation);
      v52 = v44;
      v45 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v55, closure #1 in Attribute.init<A>(_:)partial apply, v50, ScrapeableResolvedRepresentation, MEMORY[0x1E69E73E0], v45, MEMORY[0x1E69E7410], v46);
      v47 = v53[0];
      AGGraphSetFlags();
      _GraphValue.init(_:)(v47, &v55);
      v48 = v55;
      if (AGSubgraphShouldRecordTree())
      {
        AGSubgraphBeginTreeElement();
      }

      v53[0] = v48;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 32))(v53, v58, AssociatedTypeWitness, AssociatedConformanceWitness);
      v26 = v48;
      v27 = AssociatedTypeWitness;
      v28 = AssociatedConformanceWitness;
    }

    else
    {
      v20 = swift_getAssociatedTypeWitness();
      v53[0] = v6;
      ResolvedRepresentation = type metadata accessor for MakeResolvedRepresentation(0, a3, a4, v21);
      swift_getWitnessTable(protocol conformance descriptor for MakeResolvedRepresentation<A>, ResolvedRepresentation);
      _GraphValue.init<A>(_:)(v53, v20, ResolvedRepresentation, v23, &v55);
      v24 = v55;
      if (AGSubgraphShouldRecordTree())
      {
        AGSubgraphBeginTreeElement();
      }

      v53[0] = v24;
      v25 = swift_getAssociatedConformanceWitness();
      (*(v25 + 32))(v53, v58, v20, v25);
      v26 = v24;
      v27 = v20;
      v28 = v25;
    }

    goto LABEL_20;
  }

  v9 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for StyleInput(0, v9, v10, v11);
  _GraphInputs.popLast<A, B>(_:)(v12, &type metadata for AnyStyleModifier, &protocol witness table for StyleInput<A>, &v55);
  v13 = *(&v55 + 1);
  if (!*(&v55 + 1))
  {
    v53[0] = v6;
    v29 = swift_getAssociatedTypeWitness();
    v31 = type metadata accessor for ModifiedContent(0, a3, v29, v30);
    DefaultRepresentation = type metadata accessor for MakeDefaultRepresentation(0, a3, a4, v32);
    swift_getWitnessTable(protocol conformance descriptor for MakeDefaultRepresentation<A>, DefaultRepresentation);
    _GraphValue.init<A>(_:)(v53, v31, DefaultRepresentation, v34, &v55);
    v35 = v55;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
    }

    v53[0] = v35;
    v36 = *(a4 + 8);
    v37 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    static ModifiedContent<>._makeViewList(view:inputs:)(v53, v58, a3, v29, v36, v37);
    v54[0] = v36;
    v54[1] = v37;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v31, v54);
    v28 = v38;
    v26 = v35;
    v27 = v31;
LABEL_20:
    $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v26, v27, v28);
    return outlined destroy of _ViewListInputs(v58);
  }

  v14 = v55;
  result = swift_conformsToProtocol2();
  if (result)
  {
    LODWORD(v55) = v6;
    (*(result + 16))(&v55, v14, v13, v58, a3, a4, v13, result);
    return outlined destroy of _ViewListInputs(v58);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static StyleModifierType.makeStyleBody<A>(view:modifier:inputs:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 80))(v15, a2, a4);
  v7 = v6;
  v12[2] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, closure #1 in static PointerOffset.of(_:)partial apply, v12, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  v10 = v14;
  v5(v15, 0);
  return v10;
}

uint64_t static StyleContextAcceptsPredicate.evaluate(inputs:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(v2, v4) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return AnyStyleContextType.acceptsTop<A>(_:)() & 1;
}

uint64_t static StyleModifierType.makeViewList<A>(view:modifier:inputs:)(int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  static DynamicPropertyCache.fields(of:)(AssociatedTypeWitness, v40);
  v16 = v40[0];
  v15 = v40[1];
  v17 = v41;
  v18 = v42;
  outlined init with copy of _ViewListInputs(a4, v40);
  v25 = v13;
  v30 = v17;
  v31 = v13;
  v33 = v16;
  v34 = v15;
  v35 = v17;
  v36 = v18;
  v26 = a6;
  static StyleModifierType.makeStyleBody<A>(view:modifier:inputs:fields:)(&v32, &v37, &v31, a2, a3, v40, &v33, a5, a6, a7, a8);
  v19 = v32;
  v20 = v38;
  v29 = v37;
  v21 = v39;
  v22 = swift_getAssociatedTypeWitness();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v33) = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v33, v40, v22, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v19, v22, AssociatedConformanceWitness);
  if ((v21 & 1) == 0)
  {
    v37 = v29;
    v38 = v20;
    v32 = v25;
    v33 = v16;
    v34 = v15;
    v35 = v30;
    v36 = v18;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v32, &v33, v26);
  }

  outlined destroy of _ViewListInputs(v40);
  return outlined consume of DynamicPropertyCache.Fields.Layout(v16, v15, v30);
}

uint64_t static Group<A>._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *a1;
  v7 = type metadata accessor for _VariadicView.Tree(0, &unk_1F005B610, a3, &protocol witness table for GroupContainer);
  v10 = type metadata accessor for Group(255, a3, v8, v9);
  v13 = type metadata accessor for _GraphValue(0, v10, v11, v12);
  _GraphValue.unsafeBitCast<A>(to:)(v13, v7, &v19);
  v14 = v19;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v19 = v14;
  static _VariadicView.Tree<>._makeViewList(view:inputs:)(&v19, a2, &unk_1F005B610, a3, &protocol witness table for GroupContainer, a4);
  v17[0] = &protocol witness table for GroupContainer;
  v17[1] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v7, v17);
  return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v14, v7, v15);
}

void *static ViewInputsModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v30 = *(a2 + 32);
  v31 = v9;
  v11 = *(a2 + 48);
  v32 = *(a2 + 64);
  v12 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v12;
  v25 = v30;
  v26 = v11;
  v27 = *(a2 + 64);
  v13 = *a1;
  v33 = *(a2 + 80);
  v28 = *(a2 + 80);
  v23 = v29[0];
  v24 = v10;
  LODWORD(v36[0]) = v13;
  v14 = *(a6 + 24);
  outlined init with copy of _ViewInputs(v29, v38);
  v14(v36, &v23, a5, a6);
  v34[2] = v25;
  v34[3] = v26;
  v34[4] = v27;
  v35 = v28;
  v34[0] = v23;
  v34[1] = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  v15 = outlined init with copy of _ViewInputs(v34, v38);
  a3(v15, &v17);
  v36[2] = v19;
  v36[3] = v20;
  v36[4] = v21;
  v37 = v22;
  v36[0] = v17;
  v36[1] = v18;
  outlined destroy of _ViewInputs(v36);
  v38[2] = v25;
  v38[3] = v26;
  v38[4] = v27;
  v39 = v28;
  v38[0] = v23;
  v38[1] = v24;
  return outlined destroy of _ViewInputs(v38);
}

__n128 static Animation.linear(duration:)(double a1, __n128 a2, __n128 a3, __n128 a4)
{
  type metadata accessor for InternalAnimationBox<BezierAnimation>(0);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 40) = a3;
  result = a4;
  *(v5 + 56) = a4;
  return result;
}

void type metadata accessor for InternalAnimationBox<BezierAnimation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>)
  {
    lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation();
    v4 = type metadata accessor for InternalAnimationBox(a1, &type metadata for BezierAnimation, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>);
    }
  }
}

void lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation()
{
  if (!lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for BezierAnimation, &type metadata for BezierAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for BezierAnimation, &type metadata for BezierAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for BezierAnimation, &type metadata for BezierAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for BezierAnimation, &type metadata for BezierAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation);
  }
}

void instantiation function for generic protocol witness table for BezierAnimation(uint64_t a1)
{
  lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation();
  *(a1 + 8) = v2;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance EnableScrollPrefetchFeature(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{

  LOBYTE(a4) = a4(v6, v4);

  return a4 & 1;
}

uint64_t StaticIf<>.init(_:then:else:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a2(a1);
  type metadata accessor for StaticIf(0, a6, a7, a8);
  return a4();
}

{
  a2(a1);
  type metadata accessor for StaticIf(0, a6, a7, a8);
  return a4();
}

uint64_t outlined init with copy of WeakBox<AnyLocationBase>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [(AbstractHomogeneousCollection, Int)](0, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static StyleContextAcceptsAnyPredicate.evaluate(inputs:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 8 * a2;
  if (a2 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    v10 = MetatypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (a2)
    {
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      v12 = (v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = a2;
      do
      {
        v11 += 8;
        *v12++ = swift_getMetatypeMetadata();
        --v13;
      }

      while (v13);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v10 = MetatypeMetadata;
  }

  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(v16, v28[0]);
  if (v17)
  {
    v18 = (v17 + 72);
    v19 = (v17 + 80);
  }

  else
  {
    v18 = &static StyleContextInput.defaultValue;
    v19 = &static StyleContextInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      v17 = swift_once();
    }
  }

  v20 = *v19;
  v28[0] = *v18;
  v28[1] = v20;
  MEMORY[0x1EEE9AC00](v17);
  if (a2)
  {
    v21 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v22 = (v10 + 32);
    v23 = (v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v22;
      }

      v26 = *v21++;
      *&v15[v25] = v26;
      *v23++ = &v15[v25];
      v22 += 4;
      --v24;
    }

    while (v24);
  }

  return AnyStyleContextType.acceptsAny<each A>(_:)((v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0)), a2, a3, a4) & 1;
}

uint64_t AnyStyleContextType.acceptsAny<each A>(_:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = 8 * a2;
  if (a2 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    v23[1] = a4;
    MEMORY[0x1EEE9AC00](a1);
    if (a2)
    {
      v9 = a3 & 0xFFFFFFFFFFFFFFFELL;
      v10 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v11 = a2;
      do
      {
        v9 += 8;
        *v10++ = swift_getMetatypeMetadata();
        --v11;
      }

      while (v11);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  if (a2)
  {
    v17 = (v14 + 32);
    v18 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = a2;
    do
    {
      if (a2 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v17;
      }

      v21 = *v6++;
      *(v15 + v20) = *v21;
      *v18++ = v15 + v20;
      v17 += 4;
      --v19;
    }

    while (v19);
  }

  return (*(v13 + 24))(v16) & 1;
}

uint64_t static StyleContext.acceptsAny<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (a4 & 0xFFFFFFFFFFFFFFFELL);
  v9 = (a6 & 0xFFFFFFFFFFFFFFFELL);
  Visitor = type metadata accessor for QueryVisitor(0, a3, a5, a4);
  v11 = a2 - 1;
  do
  {
    v13 = *v8++;
    v12 = v13;
    v14 = *v9++;
    a1 += 8;
    v15 = v11;
    v17 = 0;
    (*(v14 + 24))(&v17, Visitor, &protocol witness table for QueryVisitor<A>, v12);
    result = v17;
    if (v17)
    {
      break;
    }

    v11 = v15 - 1;
  }

  while (v15);
  return result;
}

double protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance EnableScrollPrefetchFeature(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t *, __n128))
{

  (a5)(a2, v5, 1, &v9);

  return result;
}

void specialized closure #1 in PropertyList.subscript.setter(Swift::UInt *a1, Swift::Int a2, char a3, uint64_t a4)
{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<TextSelectionForbidden>, &type metadata for TextSelectionForbidden, &protocol witness table for TextSelectionForbidden);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<_ViewInputs.RequestsPlatformItemsKey>, &type metadata for _ViewInputs.RequestsPlatformItemsKey, &protocol witness table for _ViewInputs.RequestsPlatformItemsKey);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<VariantThatFitsFlag>, &type metadata for VariantThatFitsFlag, &protocol witness table for VariantThatFitsFlag);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<EnabledFeature>, &type metadata for EnabledFeature, &protocol witness table for EnabledFeature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<DisabledFeature>, &type metadata for DisabledFeature, &protocol witness table for DisabledFeature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<ScrollEdgeEffectTag.Feature>, &type metadata for ScrollEdgeEffectTag.Feature, &protocol witness table for ScrollEdgeEffectTag.Feature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<DisableRemoteEffects>, &type metadata for DisableRemoteEffects, &protocol witness table for DisableRemoteEffects);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<GestureContainerFeature>, &type metadata for GestureContainerFeature, &protocol witness table for GestureContainerFeature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<IsInGlassEffectContainer>, &type metadata for IsInGlassEffectContainer, &protocol witness table for IsInGlassEffectContainer);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<RequestedLeafContentType>, &type metadata for RequestedLeafContentType, &protocol witness table for RequestedLeafContentType);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<UnifiedHitTestingFeature>, &type metadata for UnifiedHitTestingFeature, &protocol witness table for UnifiedHitTestingFeature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<WithinAccessibilityRotor>, &type metadata for WithinAccessibilityRotor, &protocol witness table for WithinAccessibilityRotor);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<EnableScrollPrefetchFeature>, &type metadata for EnableScrollPrefetchFeature, &protocol witness table for EnableScrollPrefetchFeature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<DisableNavigationDestination>, &type metadata for DisableNavigationDestination, &protocol witness table for DisableNavigationDestination);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<ImprovedButtonGestureFeature>, &type metadata for ImprovedButtonGestureFeature, &protocol witness table for ImprovedButtonGestureFeature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<ResettableLazyLayoutsFeature>, &type metadata for ResettableLazyLayoutsFeature, &protocol witness table for ResettableLazyLayoutsFeature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<ShouldAttachScrollEdgeEffectTag>, &type metadata for ShouldAttachScrollEdgeEffectTag, &protocol witness table for ShouldAttachScrollEdgeEffectTag);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<EndedGestureWaitsForActiveFeature>, &type metadata for EndedGestureWaitsForActiveFeature, &protocol witness table for EndedGestureWaitsForActiveFeature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<EnableLazyLayoutReuseLoggingAlways>, &type metadata for EnableLazyLayoutReuseLoggingAlways, &protocol witness table for EnableLazyLayoutReuseLoggingAlways);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<ContainerContextStylingFeatureEnabled>, &type metadata for ContainerContextStylingFeatureEnabled, &protocol witness table for ContainerContextStylingFeatureEnabled);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<TapGestureUsesGesturesFrameworkFeature>, &type metadata for TapGestureUsesGesturesFrameworkFeature, &protocol witness table for TapGestureUsesGesturesFrameworkFeature);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<Solarium.AllowedInCompatibilityKey>, &type metadata for Solarium.AllowedInCompatibilityKey, &protocol witness table for Solarium.AllowedInCompatibilityKey);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<Semantics.UnifiedLayout>, &type metadata for Semantics.UnifiedLayout, &protocol witness table for Semantics.UnifiedLayout);
}

{
  specialized closure #1 in PropertyList.subscript.setter(a1, a2, a3, a4, specialized find1<A>(_:key:filter:), &lazy cache variable for type metadata for TypedElement<Semantics.DismissPopsInNavigationSplitViewRoots>, &type metadata for Semantics.DismissPopsInNavigationSplitViewRoots, &protocol witness table for Semantics.DismissPopsInNavigationSplitViewRoots);
}

uint64_t protocol witness for static AnyStyleContextTypeBox.acceptsAny<A>(_:) in conformance StyleContextTypeBox<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v8)
  {
    v12 = v8;
    memcpy(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v9);
    v8 = v12;
  }

  return static StyleContextTypeBox.acceptsAny<A>(_:)(v11, v8, *(a5 + 16), a3, *(a5 + 24), a4) & 1;
}

uint64_t static StyleContextTypeBox.acceptsAny<A>(_:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1;
  v10 = 8 * a2;
  if (a2 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    v25[0] = v25;
    v25[1] = a6;
    MEMORY[0x1EEE9AC00](a1);
    if (a2)
    {
      v12 = a4 & 0xFFFFFFFFFFFFFFFELL;
      v13 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = a2;
      do
      {
        v12 += 8;
        *v13++ = swift_getMetatypeMetadata();
        --v14;
      }

      while (v14);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  if (a2)
  {
    v19 = (v16 + 32);
    v20 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = a2;
    do
    {
      if (a2 == 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = *v19;
      }

      v23 = *v9++;
      *(v17 + v22) = *v23;
      *v20++ = v17 + v22;
      v19 += 4;
      --v21;
    }

    while (v21);
  }

  return (*(a5 + 16))(v18) & 1;
}

uint64_t sub_18D0F86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v14 = v10;
    memcpy(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
    v10 = v14;
  }

  return static StyleContext.acceptsAny<A>(_:)(v13, v10, a5, a3, a6, a4) & 1;
}

uint64_t specialized static LazyState._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v17[0] = AGCreateWeakAttribute();
  v17[1] = 0;
  v11 = type metadata accessor for LazyStatePropertyBox(0, a4, v9, v10);
  swift_getWitnessTable(protocol conformance descriptor for LazyStatePropertyBox<A>, v11);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v17, a2, v11, v12);
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    v16 = type metadata accessor for LazyState(0, a4, v14, v15);
    LODWORD(v17[0]) = 8;
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(v8, a4, a5, a2, v17, v16, a4);
  }

  return result;
}

uint64_t one-time initialization function for v6_2()
{
  result = swiftUI_v6_2_os_versions();
  static Semantics.v6_2 = HIDWORD(result);
  return result;
}

double LazyState.getValue(forReading:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(v5 + *(a2 + 28));
  if (v8)
  {
    v10 = one-time initialization token for sharedGraph;

    if (v10 != -1)
    {
      swift_once();
    }

    if (AGGraphGetCounter())
    {
      if (a1)
      {
        (*(*v8 + 104))(1);
      }

      v13 = type metadata accessor for LazyState.Storage(0, *(a2 + 16), v11, v12);
      LazyState.Storage.value.getter(v13, a5);
    }

    else
    {
      (*(*v8 + 120))();
    }
  }

  else
  {
    v14 = type metadata accessor for LazyState.Storage(0, *(a2 + 16), a3, a4);

    return LazyState.Storage.value.getter(v14, a5);
  }

  return result;
}

double LazyState.Storage.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
  }

  else
  {
    (*v6)();
  }

  return result;
}

uint64_t LazyStatePropertyBox.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  v7 = type metadata accessor for LazyState.Storage(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v37 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v4[1];
  v40 = v20 == 0;
  v21 = v20;
  if (!v20)
  {
    v38 = v17;
    v24 = *(type metadata accessor for LazyState(0, v6, v15, v16) + 28);
    v39 = a1;
    if (*(a1 + v24) && (type metadata accessor for StoredLocation(0, v6, v22, v23), (v25 = swift_dynamicCastClass()) != 0))
    {
      v21 = v25;
      v4[1] = v25;
    }

    else
    {
      (*(v8 + 16))(v13, v39, v7);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v38 + 32))(v19, v13, v6);
      }

      else
      {
        (*v13)();
      }

      type metadata accessor for StoredLocation(0, v6, v26, v27);
      v28 = specialized static GraphHost.currentHost.getter();
      v21 = specialized StoredLocation.__allocating_init(initialValue:host:signal:)(v19, v28, *v4);

      (*(v38 + 8))(v19, v6);
      v4[1] = v21;
    }

    a1 = v39;
  }

  WeakValue = AGGraphGetWeakValue();
  v31 = v30;
  StoredLocationBase.updateValue.getter(v10);
  swift_storeEnumTagMultiPayload();
  (*(v8 + 40))(a1, v10, v7);
  v34 = *(type metadata accessor for LazyState(0, v6, v32, v33) + 28);

  *(a1 + v34) = v21;
  if (WeakValue)
  {
    v35 = v40;
    if (v31)
    {
      v35 = (v20 == 0) | StoredLocationBase.wasRead.getter();
    }
  }

  else
  {
    v35 = v40;
  }

  return v35 & 1;
}

void *initializeWithCopy for LazyState.Storage(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  else
  {
    v11 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v11;

    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *assignWithTake for LazyState.Storage(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
    (*(v6 + 8))(a1, v5);
  }

  else
  {
  }

  v13 = a2[v7];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (a2[2] << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 2;
      v13 = v16 + 2;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 1;
  }

  else
  {
    v18 = 0;
    *a1 = *a2;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t type metadata completion function for _TagTraitWritingModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t View.input<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ViewInputFlagModifier(0, v10, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(a5 + 56))(a3, a5, v15);
  (*(v7 + 32))(v17, v9, a3);
  View.modifier<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t ForEach<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24 = a2;
  v25 = a3;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)(v20, &KeyPath, v24, v25, a4, a5, a6, a7, a9, AssociatedConformanceWitness);
  return (*(v17 + 8))(a1, a4);
}

__n128 sub_18D0F9734(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

double Binding.init(get:set:)@<D0>(void (*a1)(__n128)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  return Binding.init(get:set:)(a1, a3, a4, a5, a6);
}

{
  v32 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a3;
  v12[4] = a4;
  _ViewInputs.base.modify();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  (a1)(v21);
  v24 = type metadata accessor for FunctionalLocation(255, a5, v22, v23);
  swift_getWitnessTable(protocol conformance descriptor for FunctionalLocation<A>, v24);
  type metadata accessor for LocationBox(0, v24, v25, v26);
  v33[0] = v14;
  v33[1] = v16;
  v33[2] = v18;
  v33[3] = v20;

  v27 = LocationBox.__allocating_init(_:)(v33);
  Binding.init(value:location:)(v11, v27, v28, v29, v32);

  return result;
}

{
  return Binding.init(get:set:)(a1, a3, a4, a5, a6);
}

uint64_t sub_18D0F9770()
{

  return swift_deallocObject();
}

uint64_t initializeWithTake for SimultaneousGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t HostPreferencesTransform.updateValue()(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (*MEMORY[0x1E698D3F8] == v2)
  {
    v5 = *(v1 + 13) ^ 1;
    v6 = 1;
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
    v5 = v8 & 1;

    v6 = 0;
    v2 = *(v1 + 8);
  }

  v23 = v7;
  v24 = v5;
  *(v1 + 13) = v6;
  v9 = *(v1 + 4);
  v10 = *(v1 + 12);
  Value = AGGraphGetValue();
  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = *Value;
  v14 = PreferenceKeys._index(of:)(v3);
  v15 = *(v22 + 16);
  if (v14 == v15)
  {
    if (v10)
    {
      *(v1 + 12) = 0;
      v24 = 1;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v14 >= v15)
  {
    __break(1u);
  }

  v16 = *(v22 + 16 * v14 + 32);
  if (v10 == (v16 == v3))
  {
LABEL_5:
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v5 = 1;
  v24 = 1;
  *(v1 + 12) = v16 == v3;
  if (v16 != v3)
  {
    goto LABEL_20;
  }

LABEL_6:
  v22 = __PAIR64__(v2, v9);
  v13 = AGGraphAnyInputsChanged();
  if (v13)
  {
    ++*(v1 + 16);
    v24 = 1;
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_19;
  }

  MEMORY[0x1EEE9AC00](v13);
  v21[2] = v3;
  v21[3] = v4;
  v21[4] = &v23;
  v21[5] = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = MEMORY[0x1E69E7CA8];
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #2 in HostPreferencesTransform.updateValue(), v21, FunctionTypeMetadata, v17 + 8, v19);
  if (v24)
  {
LABEL_20:
    v22 = v23;
    AGGraphSetOutputValue();
  }

LABEL_19:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_20;
  }
}

uint64_t AttributeInvalidatingSubscriber.init(host:attribute:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized AttributeInvalidatingSubscriber.init(host:attribute:)(a1, a2);

  return v2;
}

uint64_t specialized AttributeInvalidatingSubscriber.init(host:attribute:)(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  *(v2 + 64) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  swift_weakAssign();
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PreferenceTransform.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v20[0] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  PreferenceTransform.childValue.getter(a1, v20 - v10);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(a3 + 16))(a2, a3);
    v14 = v13(v11, 1, AssociatedTypeWitness);
    if (v14 != 1)
    {
      v14 = (*(v20[0] + 8))(v11, v9);
    }
  }

  else
  {
    v14 = (*(v12 + 32))(a4, v11, AssociatedTypeWitness);
  }

  MEMORY[0x1EEE9AC00](v14);
  v20[-4] = a2;
  v20[-3] = a3;
  LODWORD(v20[-2]) = a1;
  HIDWORD(v20[-2]) = v15;
  v20[-1] = a4;
  v20[1] = AssociatedTypeWitness;
  v16 = MEMORY[0x1E69E7CA8];
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in PreferenceTransform.value.getter, &v20[-6], FunctionTypeMetadata, v16 + 8, v18);
}

uint64_t PreferenceTransform.childValue.getter@<X0>(unint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = HIDWORD(a1);
  v6 = *MEMORY[0x1E698D3F8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = AssociatedTypeWitness;
  if (v6 == v5)
  {
    v9 = *(AssociatedTypeWitness - 8);
    v10 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v14 = *(v8 - 8);
    (*(v14 + 16))(a4, Value, v8);
    v9 = v14;
    v10 = 0;
  }

  v12 = *(v9 + 56);

  return v12(a4, v10, 1, v8);
}

double closure #1 in PreferenceTransform.value.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v56 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for ObservationTracking._AccessList();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v50 - v15;
  type metadata accessor for ObservationTracking._AccessList?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v58 = (&v50 - v23);
  v24 = *a1;
  v25 = a1[1];
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v53 = a5;
  v26[4] = v24;
  v26[5] = v25;
  v27 = one-time initialization token for _current;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = static ObservationCenter._current;
  swift_beginAccess();
  v29 = pthread_getspecific(v28[2]);
  if (!v29)
  {
    v30 = swift_slowAlloc();
    pthread_setspecific(v28[2], v30);
    v61 = type metadata accessor for ObservationCenter();
    v55 = v18;
    a5 = v26;
    *&v60 = v28[3];
    outlined init with take of Any(&v60, v30);
    v18 = v55;

    v29 = v30;
  }

  outlined init with copy of Any(v29, &v60);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v31 = v59;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    v39 = v31;
    *(v31 + 24) = v26;
    goto LABEL_10;
  }

  v51 = CurrentAttribute;
  v52 = v11;
  swift_beginAccess();
  v54 = *(v31 + 24);
  *(v31 + 24) = MEMORY[0x1E69E7CC0];
  (*(v9 + 56))(v21, 1, 1, v8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v34 = *(StatusReg + 848);
  *(StatusReg + 848) = v21;
  v55 = v26;
  (v26[4])(v56);
  *(StatusReg + 848) = v34;
  v35 = v58;
  outlined init with take of ObservationTracking._AccessList?(v21, v58);
  outlined init with copy of ObservationTracking._AccessList?(v35, v18);
  if ((*(v9 + 48))(v18, 1, v8) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v35);
    v36 = v18;
    goto LABEL_13;
  }

  v37 = v57;
  a5 = *(v9 + 32);
  (a5)(v57, v18, v8);
  v11 = v50;
  (*(v9 + 16))(v50, v37, v8);
  v26 = *(v31 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 24) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

  v39 = v31;
LABEL_10:
  v41 = v26[2];
  v40 = v26[3];
  if (v41 >= v40 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v26);
  }

  v26[2] = v41 + 1;
  (a5)(v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v41, v11, v8);
  v31 = v39;
  *(v39 + 24) = v26;
  (*(v9 + 8))(v57, v8);
  v36 = v58;
LABEL_13:
  outlined destroy of ObservationTracking._AccessList?(v36);
  v42 = *(v31 + 24);
  v43 = *(v42 + 16);
  if (v43)
  {
    v45 = *(v9 + 16);
    v44 = v9 + 16;
    v46 = v42 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
    v57 = *(v44 + 56);
    v58 = v45;
    v56 = v42;

    v47 = v52;
    v48 = v51;
    do
    {
      (v58)(v47, v46, v8);
      swift_getAssociatedTypeWitness();
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v48, v47);
      (*(v44 - 8))(v47, v8);
      v46 += v57;
      --v43;
    }

    while (v43);
  }

  else
  {
  }

  *(v31 + 24) = v54;

  return result;
}

double key path getter for _PreferenceTransformModifier.transform : <A>_PreferenceTransformModifier<A>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A?) -> ();
  a4[1] = v8;

  return result;
}

uint64_t sub_18D0FA754()
{

  return swift_deallocObject();
}

uint64_t PreferenceCombiner.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = type metadata accessor for Optional();
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v50 = &v39 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = *v3;
  v42 = *(v6 + 16);
  v43 = v6 + 16;
  v42(v5, v6, v12);
  v16 = AssociatedTypeWitness;
  v17 = type metadata accessor for WeakAttribute();

  if (MEMORY[0x193ABF2C0](v18, v17))
  {
    v51 = v6;
    v52 = a2;
    v19 = v8;
    v20 = 0;
    v48 = v6 + 24;
    v49 = v14;
    v46 = (v10 + 56);
    v47 = (v10 + 8);
    v44 = (v10 + 16);
    v45 = (v10 + 32);
    v41 = (v10 + 48);
    v39 = (v19 + 8);
    v21 = v15 + 36;
    v22 = 1;
    v23 = v16;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      v28 = Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v29 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        _ArrayBuffer._getElementSlowPath(_:)();
        v28 = swift_unknownObjectRelease();
        v29 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_15:
          __break(1u);
        }
      }

      if (v22)
      {
        WeakValue = AGGraphGetWeakValue();
        v31 = v52;
        if (WeakValue)
        {
          v32 = v50;
          (*v44)(v50, WeakValue, v23);
          (*v47)(v31, v23);
          (*v46)(v32, 0, 1, v23);
          v33 = v49;
          v34 = v32;
          v35 = v45;
          (*v45)(v49, v34, v23);
        }

        else
        {
          v36 = v50;
          (*v46)(v50, 1, 1, v23);
          v33 = v49;
          (v42)(v5, v51);
          (*v47)(v31, v23);
          v37 = (*v41)(v36, 1, v23);
          v35 = v45;
          if (v37 != 1)
          {
            (*v39)(v50, v40);
          }
        }

        (*v35)(v31, v33, v23);
        v6 = v51;
      }

      else
      {
        v24 = MEMORY[0x1EEE9AC00](v28);
        *(&v39 - 4) = v5;
        *(&v39 - 3) = v6;
        *(&v39 - 4) = v25;
        *(&v39 - 3) = v26;
        (*(v6 + 24))(v52, partial apply for closure #1 in PreferenceCombiner.value.getter, v24);
      }

      v22 = 0;
      v21 += 8;
      ++v20;
      if (v29 == MEMORY[0x193ABF2C0](v15, v17))
      {
      }
    }
  }
}

uint64_t closure #1 in PreferenceCombiner.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v13 = *(AssociatedTypeWitness - 8);
    (*(v13 + 16))(v11, WeakValue, AssociatedTypeWitness);
    (*(v13 + 56))(v11, 0, 1, AssociatedTypeWitness);
    return (*(v13 + 32))(a4, v11, AssociatedTypeWitness);
  }

  else
  {
    v15 = *(AssociatedTypeWitness - 8);
    (*(v15 + 56))(v11, 1, 1, AssociatedTypeWitness);
    (*(a3 + 16))(a2, a3);
    result = (*(v15 + 48))(v11, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t PreferencesOutputs.attachIndirectOutputs(to:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *result;
    v6 = v2 + 32;
    v7 = *result + 32;
    v8 = -*(*result + 16);
LABEL_4:
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    result = *(v9 + 4);
    ++v4;
    v11 = -1;
    v12 = v7;
    while (1)
    {
      if (v8 + v11 == -1)
      {
        goto LABEL_3;
      }

      if (++v11 >= *(v5 + 16))
      {
        break;
      }

      v13 = *v12;
      v12 += 3;
      if (v13 == v10)
      {
        result = AGGraphSetIndirectAttribute();
LABEL_3:
        if (v4 == v3)
        {
          return result;
        }

        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void key path getter for EnvironmentValues.legibilityWeight : EnvironmentValues(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, char *a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>)
{
  v7 = *a1;
  if (a1[1])
  {

    a2(&v11, v7);

    v9 = v11;
  }

  else
  {
    v10 = (a3)(*a1, a5, a6, a2);
    if (v10)
    {
      v9 = *(v10 + 72);
    }

    else
    {
      v9 = 2;
    }
  }

  *a4 = v9;
}

uint64_t PropertyList.Tracker.init()()
{
  _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_1(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v0 + 16) = v1;
  return v0;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for DisableNavigationDestination);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28DisableNavigationDestinationV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<DisableNavigationDestination>, &type metadata for DisableNavigationDestination, &protocol witness table for DisableNavigationDestination, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for DisableNavigationDestination, 0, v6);
  }
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28DisableNavigationDestinationV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28DisableNavigationDestinationV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for DisableNavigationDestination)
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

uint64_t static _BackgroundPreferenceModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v15 = *a1;
  v16 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v16;
  v26[4] = *(a2 + 64);
  v27 = *(a2 + 80);
  v17 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v17;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v18 = type metadata accessor for _OverlayPreferenceModifier(0, &v22);
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v19 = type metadata accessor for _BackgroundPreferenceModifier(0, &v22);
  v20 = Attribute.unsafeBitCast<A>(to:)(v18, v15, v19, v18);
  return makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)(v20, v26, a3, 1, a5, a6, a7, x8_0, a8);
}

void lazy protocol witness table accessor for type AnyView and conformance AnyView()
{
  if (!lazy protocol witness table cache variable for type AnyView and conformance AnyView)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyView, &type metadata for AnyView, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyView and conformance AnyView);
  }
}

void type metadata accessor for DynamicViewList<AnyView>.Item(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type DynamicViewList<AnyView> and conformance DynamicViewList<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for DynamicViewList<AnyView>.Item(255, a2, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t outlined destroy of DynamicViewList<AnyView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for DynamicViewList<AnyView>.Item(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA03AnyD0V_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *&v21[48] = *(a2 + 48);
  *&v21[64] = v6;
  *&v21[80] = *(a2 + 80);
  v7 = *(a2 + 16);
  *v21 = *a2;
  *&v21[16] = v7;
  *&v21[32] = v5;
  _ViewInputs.makeIndirectOutputs()(v27);
  v8 = *v27;
  v9 = *&v27[8];
  v10 = *&v27[12];
  v11 = *(a2 + 48);
  *&v27[36] = *(a2 + 32);
  *&v27[52] = v11;
  *&v27[68] = *(a2 + 64);
  v12 = *(a2 + 16);
  *&v27[4] = *a2;
  *&v27[84] = *(a2 + 80);
  *&v27[20] = v12;
  v13 = AGSubgraphGetCurrent();
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  *&v21[36] = *&v27[32];
  *&v21[52] = *&v27[48];
  *&v21[68] = *&v27[64];
  *&v21[4] = *v27;
  v22 = *&v27[80];
  *&v21[20] = *&v27[16];
  *v21 = a1;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v13;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

  outlined init with copy of _ViewInputs(a2, v20);
  type metadata accessor for DynamicViewList<AnyView>.Item(0, &lazy cache variable for type metadata for DynamicViewContainer<AnyView>.Value, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewContainer.Value);
  type metadata accessor for DynamicViewList<AnyView>.Item(0, &lazy cache variable for type metadata for DynamicViewContainer<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewContainer);
  v15 = v9;
  lazy protocol witness table accessor for type DynamicViewList<AnyView> and conformance DynamicViewList<A>(&lazy protocol witness table cache variable for type DynamicViewContainer<AnyView> and conformance DynamicViewContainer<A>, &lazy cache variable for type metadata for DynamicViewContainer<AnyView>, type metadata accessor for DynamicViewContainer, protocol conformance descriptor for DynamicViewContainer<A>);
  Attribute.init<A>(body:value:flags:update:)();
  *&v21[36] = *&v27[32];
  *&v21[52] = *&v27[48];
  *&v21[68] = *&v27[64];
  *&v21[4] = *v27;
  *v21 = a1;
  v22 = *&v27[80];
  *&v21[20] = *&v27[16];
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v14;
  outlined destroy of DynamicViewList<AnyView>(v21, &lazy cache variable for type metadata for DynamicViewContainer<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewContainer);
  result = AGGraphSetFlags();
  v17 = *(v8 + 16);
  if (v17)
  {
    v18 = v8 + 48;
    do
    {
      v18 += 24;
      result = AGGraphSetIndirectDependency();
      --v17;
    }

    while (v17);
  }

  if (v10 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  *a3 = v8;
  *(a3 + 8) = v15;
  *(a3 + 12) = v10;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance AnyView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA03AnyD0V_Tt3B5(v3, v7, a3);
}

uint64_t type metadata completion function for DynamicViewContainer.Value(uint64_t a1)
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

uint64_t _ViewInputs.makeIndirectOutputs()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 36);

  PreferencesInputs.makeIndirectOutputs()(&v7);

  v4 = v7;
  v5 = v8;

  if ((v3 & 2) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();

    result = AGGraphCreateIndirectAttribute2();
    v5 |= 0x80u;
  }

  else
  {
    result = *MEMORY[0x1E698D3F8];
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = result;
  return result;
}

uint64_t type metadata completion function for DynamicViewContainer(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DynamicViewContainer<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewContainer<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t initializeWithCopy for DynamicViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 3;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);
  *(v10 + 24) = *(v11 + 24);
  *(v10 + 28) = *(v11 + 28);
  *(v10 + 32) = *(v11 + 32);
  *(v10 + 36) = *(v11 + 36);
  *(v10 + 40) = *(v11 + 40);
  *(v10 + 48) = *(v11 + 48);
  *(v10 + 56) = *(v11 + 56);
  *(v10 + 60) = *(v11 + 60);
  *(v10 + 64) = *(v11 + 64);
  *(v10 + 68) = *(v11 + 68);
  *(v10 + 72) = *(v11 + 72);
  *(v10 + 76) = *(v11 + 76);
  *(v10 + 80) = *(v11 + 80);
  v12 = (v10 + 91) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 91) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 12) = *(v13 + 12);
  v14 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *v14;

  v16 = v15;
  return a1;
}

void destroy for DynamicViewContainer(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8) + 8;
  (*v4)(a1, AssociatedTypeWitness);
  v5 = (((a1 + *(v4 + 56) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;

  v6 = *((((v5 + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t *specialized DynamicViewContainer.updateValue()()
{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = (*(**Value + 80))();
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewContainer<AnyView>.Value, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewContainer.Value);
  result = AGGraphGetOutputValue();
  v5 = MEMORY[0x1E698D3F8];
  if (!result)
  {
    v39 = 0;
    v40 = v3;
    goto LABEL_10;
  }

  if (*result == v3)
  {
    return result;
  }

  v39 = *result;
  v40 = v3;
  v6 = *(v1 + 96);
  v7 = *(v1 + 108);
  v8 = result[3];
  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = *MEMORY[0x1E698D3F8];
    v11 = v6 + 48;
    v12 = v8;
    do
    {
      v11 += 24;
      AGGraphSetIndirectAttribute();
      --v9;
    }

    while (v9);
    if (v7 == v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v38 = v8;
    if (v7 == *v5)
    {
      goto LABEL_8;
    }
  }

  AGGraphSetIndirectAttribute();
LABEL_8:
  AGSubgraphRef.willInvalidate(isInserted:)(1);
  AGSubgraphInvalidate();

LABEL_10:
  v13 = AGSubgraphGetGraph();
  v14 = AGSubgraphCreate();

  AGSubgraphAddChild();
  v15 = *(v1 + 80);
  v54[4] = *(v1 + 64);
  v54[5] = v15;
  v54[6] = *(v1 + 96);
  v55 = *(v1 + 112);
  v16 = *(v1 + 16);
  v54[0] = *v1;
  v54[1] = v16;
  v17 = *(v1 + 48);
  v54[2] = *(v1 + 32);
  v54[3] = v17;
  outlined init with copy of DynamicViewContainer<AnyView>(v54, v59);
  AGGraphClearUpdate();
  v18 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v19 = *(v1 + 24);
  v20 = *(v1 + 56);
  v56[2] = *(v1 + 40);
  v56[3] = v20;
  v56[4] = *(v1 + 72);
  v57 = *(v1 + 88);
  v56[0] = *(v1 + 8);
  v56[1] = v19;
  v21 = v19;
  v53 = v56[0];
  v22 = *(v1 + 32);
  v23 = *(v1 + 48);
  v24 = *(v1 + 64);
  *(v52 + 12) = *(v1 + 76);
  v51 = v23;
  v52[0] = v24;
  v50 = v22;
  swift_beginAccess();
  v25 = v21[3];
  v58[1] = v21[2];
  v58[2] = v25;
  v26 = v21[5];
  v58[3] = v21[4];
  v58[4] = v26;
  v58[0] = v21[1];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v27 = swift_allocObject();
  memmove((v27 + 16), v21 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v56, v59);
  outlined init with copy of CachedEnvironment(v58, v59);

  v28 = *(v1 + 80);
  v59[4] = *(v1 + 64);
  v59[5] = v28;
  v59[6] = *(v1 + 96);
  v60 = *(v1 + 112);
  v29 = *(v1 + 16);
  v59[0] = *v1;
  v59[1] = v29;
  v30 = *(v1 + 48);
  v59[2] = *(v1 + 32);
  v59[3] = v30;
  v31 = LODWORD(v59[0]);
  outlined init with copy of DynamicViewContainer<AnyView>(v59, &v45);
  v32 = *AGGraphGetValue();

  outlined destroy of DynamicViewContainer<AnyView>(v59);
  v45 = v53;
  v47 = v50;
  v46 = v27;
  v48 = v51;
  v49[0] = v52[0];
  *(v49 + 12) = *(v52 + 12);
  (*(*v32 + 88))(&v41, v31, &v45);

  v33 = HIDWORD(v42);
  v34 = *(v1 + 96);
  v35 = *(v1 + 104);
  v36 = *(v1 + 108);
  *&v45 = v34;
  DWORD2(v45) = v35;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(&v41);

  if (v36 != *MEMORY[0x1E698D3F8] && v33 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v45 = v53;
  v46 = v27;
  v47 = v50;
  v48 = v51;
  v49[0] = v52[0];
  *(v49 + 12) = *(v52 + 12);
  outlined destroy of _ViewInputs(&v45);

  v37 = v14;
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v41 = v40;
  v42 = 0;
  v43 = 1;
  v44 = v37;
  AGGraphSetOutputValue();
  outlined destroy of DynamicViewContainer<AnyView>(v54);

  return sub_18D0FC2C0(v39);
}

{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = (*(**Value + 80))();
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>.Value, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewContainer.Value);
  result = AGGraphGetOutputValue();
  v5 = MEMORY[0x1E698D3F8];
  if (!result)
  {
    v39 = 0;
    v40 = v3;
    goto LABEL_10;
  }

  if (*result == v3)
  {
    return result;
  }

  v39 = *result;
  v40 = v3;
  v6 = *(v1 + 96);
  v7 = *(v1 + 108);
  v8 = result[3];
  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = *MEMORY[0x1E698D3F8];
    v11 = v6 + 48;
    v12 = v8;
    do
    {
      v11 += 24;
      AGGraphSetIndirectAttribute();
      --v9;
    }

    while (v9);
    if (v7 == v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v38 = v8;
    if (v7 == *v5)
    {
      goto LABEL_8;
    }
  }

  AGGraphSetIndirectAttribute();
LABEL_8:
  AGSubgraphRef.willInvalidate(isInserted:)(1);
  AGSubgraphInvalidate();

LABEL_10:
  v13 = AGSubgraphGetGraph();
  v14 = AGSubgraphCreate();

  AGSubgraphAddChild();
  v15 = *(v1 + 80);
  v54[4] = *(v1 + 64);
  v54[5] = v15;
  v54[6] = *(v1 + 96);
  v55 = *(v1 + 112);
  v16 = *(v1 + 16);
  v54[0] = *v1;
  v54[1] = v16;
  v17 = *(v1 + 48);
  v54[2] = *(v1 + 32);
  v54[3] = v17;
  outlined init with copy of DynamicViewContainer<DebugReplaceableView>(v54, v59);
  AGGraphClearUpdate();
  v18 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v19 = *(v1 + 24);
  v20 = *(v1 + 56);
  v56[2] = *(v1 + 40);
  v56[3] = v20;
  v56[4] = *(v1 + 72);
  v57 = *(v1 + 88);
  v56[0] = *(v1 + 8);
  v56[1] = v19;
  v21 = v19;
  v53 = v56[0];
  v22 = *(v1 + 32);
  v23 = *(v1 + 48);
  v24 = *(v1 + 64);
  *(v52 + 12) = *(v1 + 76);
  v51 = v23;
  v52[0] = v24;
  v50 = v22;
  swift_beginAccess();
  v25 = v21[3];
  v58[1] = v21[2];
  v58[2] = v25;
  v26 = v21[5];
  v58[3] = v21[4];
  v58[4] = v26;
  v58[0] = v21[1];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v27 = swift_allocObject();
  memmove((v27 + 16), v21 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v56, v59);
  outlined init with copy of CachedEnvironment(v58, v59);

  v28 = *(v1 + 80);
  v59[4] = *(v1 + 64);
  v59[5] = v28;
  v59[6] = *(v1 + 96);
  v60 = *(v1 + 112);
  v29 = *(v1 + 16);
  v59[0] = *v1;
  v59[1] = v29;
  v30 = *(v1 + 48);
  v59[2] = *(v1 + 32);
  v59[3] = v30;
  v31 = LODWORD(v59[0]);
  outlined init with copy of DynamicViewContainer<DebugReplaceableView>(v59, &v45);
  v32 = *AGGraphGetValue();

  outlined destroy of DynamicViewContainer<DebugReplaceableView>(v59);
  v45 = v53;
  v47 = v50;
  v46 = v27;
  v48 = v51;
  v49[0] = v52[0];
  *(v49 + 12) = *(v52 + 12);
  (*(*v32 + 88))(&v41, v31, &v45);

  v33 = HIDWORD(v42);
  v34 = *(v1 + 96);
  v35 = *(v1 + 104);
  v36 = *(v1 + 108);
  *&v45 = v34;
  DWORD2(v45) = v35;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(&v41);

  if (v36 != *MEMORY[0x1E698D3F8] && v33 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v45 = v53;
  v46 = v27;
  v47 = v50;
  v48 = v51;
  v49[0] = v52[0];
  *(v49 + 12) = *(v52 + 12);
  outlined destroy of _ViewInputs(&v45);

  v37 = v14;
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v41 = v40;
  v42 = 0;
  v43 = 1;
  v44 = v37;
  AGGraphSetOutputValue();
  outlined destroy of DynamicViewContainer<DebugReplaceableView>(v54);

  return sub_18D0FC2C0(v39);
}

uint64_t sub_18D0FC2C0(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x1EEE66C30]();
  }

  return result;
}

double AnyViewChild.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AGGraphGetValue();
  type metadata accessor for AnyViewStorage(0, v2, v3, v4);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v7 = *(*v5 + 144);
    v8 = MEMORY[0x1EEE9AC00](v5);
    v13[2] = a1;
    v10 = v9;
    swift_getWitnessTable(protocol conformance descriptor for AnyViewChild<A>, a1, v8);
    v13[3] = v11;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10 + v7, partial apply for closure #1 in StatefulRule.value.setter, v13, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v12);
  }

  return result;
}

uint64_t outlined init with copy of DynamicViewContainer<AnyView>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewContainer<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewContainer);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DynamicViewContainer<AnyView>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewContainer<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewContainer);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *AnyViewStorage.makeChildView(view:inputs:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = *v3;
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v70 = *(a2 + 32);
  v71 = v7;
  v9 = *(a2 + 48);
  v72 = *(a2 + 64);
  v10 = *(a2 + 16);
  v69[0] = *a2;
  v69[1] = v10;
  v65 = v70;
  v66 = v9;
  v67 = *(a2 + 64);
  v73 = *(a2 + 80);
  v68 = *(a2 + 80);
  v63 = v69[0];
  v64 = v8;
  v11 = v6;
  v12 = *(v5 + 128);
  v37 = a3;
  if ((WORD2(v70) & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(v69, &v57);
    AGTypeGetSignature();
    v13 = specialized _GraphInputs.pushScope<A>(id:)(v57, *(&v57 + 1), v58);
  }

  else
  {
    v13 = outlined init with copy of _ViewInputs(v69, &v57);
  }

  v14 = *(v11 + 136);
  LODWORD(v57) = a1;
  MEMORY[0x1EEE9AC00](v13);
  v33 = v12;
  v34 = type metadata accessor for AnyViewChild(0, v12, v14, v15);
  swift_getWitnessTable(protocol conformance descriptor for AnyViewChild<A>, v34);
  v35 = v16;
  v17 = type metadata accessor for Attribute();
  v18 = MEMORY[0x1E69E73E0];
  v19 = MEMORY[0x1E69E7410];
  v21 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v57, closure #1 in Attribute.init<A>(_:)partial apply, &v32, v34, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v20);
  v22 = LODWORD(v55[0]);
  MEMORY[0x1EEE9AC00](v21);
  v35 = v12;
  v36 = v22;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3 + v23, closure #1 in Attribute.setValue(_:)partial apply, &v33, v12, v18, MEMORY[0x1E69E6370], v19, v24);
  _GraphValue.init(_:)(v22, v38);
  v25 = v38[0];
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
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
  v27 = v59;
  LODWORD(v49) = 0;
  LODWORD(v39[0]) = v25;
  v53[0] = v57;
  v53[1] = v58;
  v54 = v62;
  v53[3] = v60;
  v53[4] = v61;
  v53[2] = v49;
  v43 = v49;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v41 = v57;
  v42 = v58;
  v28 = *(v14 + 24);
  outlined init with copy of _ViewInputs(&v57, v55);
  outlined init with copy of _ViewInputs(v53, v55);
  v29 = v14;
  v30 = v37;
  v28(v39, &v41, v12, v29);
  v55[2] = v43;
  v55[3] = v44;
  v55[4] = v45;
  v56 = v46;
  v55[0] = v41;
  v55[1] = v42;
  outlined destroy of _ViewInputs(v55);
  LODWORD(v49) = v27;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v30, &v47);
    AGSubgraphEndTreeElement();
  }

  v39[2] = v49;
  v39[3] = v50;
  v39[4] = v51;
  v40 = v52;
  v39[0] = v47;
  v39[1] = v48;
  outlined destroy of _ViewInputs(v39);
  v43 = v65;
  v44 = v66;
  v45 = v67;
  v46 = v68;
  v41 = v63;
  v42 = v64;
  return outlined destroy of _ViewInputs(&v41);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnyViewChild<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnyViewChild<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016RedactionReasonsF033_18671928047E57F039DC339288B6FAFBLLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(*a1);
  if (!v4 || v4[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<RedactionReasonsKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<RedactionReasonsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<RedactionReasonsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RedactionReasonsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<RedactionReasonsKey>>);
    }
  }
}

void *initializeWithCopy for DynamicViewContainer.Value(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ((a1 + v7 + 8) & ~v7);
  v9 = ((a2 + v7 + 8) & ~v7);
  if ((*(v6 + 48))(v9, 1, AssociatedTypeWitness))
  {
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 1;
    }

    memcpy(v8, v9, v12);
  }

  else
  {
    (*(v6 + 16))(v8, v9, AssociatedTypeWitness);
    v14 = *(v6 + 56);
    v13 = v6 + 56;
    v14(v8, 0, 1, AssociatedTypeWitness);
    v10 = *(v13 + 28);
    v11 = *(v13 + 8);
  }

  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 + 1;
  }

  v16 = ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = *((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = v17;
  v18 = v17;
  return a1;
}

void (*EnvironmentValues.redactionReasons.modify(void *a1))(uint64_t **a1)
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
  v3[3] = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  v3[5] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5(v5, v4);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = v7[9];
    }

    else
    {
      v8 = 0;
    }

    *v4 = v8;
  }

  return EnvironmentValues.redactionReasons.modify;
}

void EnvironmentValues.redactionReasons.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  swift_retain_n();
  v3 = v1[5];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016RedactionReasonsF033_18671928047E57F039DC339288B6FAFBLLVG_Tt2B5(v1[3], v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016RedactionReasonsK033_18671928047E57F039DC339288B6FAFBLLVG_Ttg5(v1[4], *v1[3]);
  }

  free(v1);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<RedactionReasonsKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<RedactionReasonsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<RedactionReasonsKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t initializeWithCopy for _PreferenceWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t destroy for _PreferenceWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t type metadata completion function for StateOrBinding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  result = type metadata accessor for State(319, v4, a3, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for Binding(319, v4, v6, v7);
    if (v9 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

__n128 static EnumVTable.moveInitialize(elt:from:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 40);
  result = *(*a2 + 24);
  *(v2 + 16) = *(*a2 + 16);
  *(v2 + 24) = result;
  *(v2 + 40) = v3;
  return result;
}

void *static _PreferenceWritingModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v28 = *(a2 + 32);
  v29 = v9;
  v11 = *(a2 + 48);
  v30 = *(a2 + 64);
  v12 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v12;
  v23 = v28;
  v24 = v11;
  v25 = *(a2 + 64);
  v13 = *a1;
  v31 = *(a2 + 80);
  v26 = *(a2 + 80);
  v21 = v27[0];
  v22 = v10;
  outlined init with copy of _ViewInputs(v27, &v36);
  PreferencesInputs.remove<A>(_:)(a5, a5, a6);
  v32[2] = v23;
  v32[3] = v24;
  v32[4] = v25;
  v33 = v26;
  v32[0] = v21;
  v32[1] = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v36 = v21;
  v37 = v22;
  v14 = outlined init with copy of _ViewInputs(v32, v34);
  a3(v14, &v36);
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v35 = v41;
  v34[0] = v36;
  v34[1] = v37;
  outlined destroy of _ViewInputs(v34);
  v19 = v29;
  v20 = DWORD2(v29);
  v17[2] = a5;
  v17[3] = a6;
  v18 = v13;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(&v19, v15, partial apply for implicit closure #1 in static _PreferenceWritingModifier._makeView(modifier:inputs:body:), v17, a5, a6);

  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v36 = v21;
  v37 = v22;
  return outlined destroy of _ViewInputs(&v36);
}

uint64_t implicit closure #1 in static _PreferenceWritingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(swift_getAssociatedTypeWitness() - 8) + 64))
  {
    closure #1 in implicit closure #1 in static _PreferenceWritingModifier._makeView(modifier:inputs:body:)(1, a2, a3, v5);
  }

  return AGGraphCreateOffsetAttribute2();
}

uint64_t closure #1 in implicit closure #1 in static _PreferenceWritingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for _PreferenceWritingModifier(0, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v10;
}

uint64_t makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v12 = a1;
  v85 = *MEMORY[0x1E69E9840];
  v13 = a2[1];
  v79 = *a2;
  v80 = v13;
  v14 = a2[3];
  v81 = a2[2];
  v82 = v14;
  v83 = a2[4];
  v75 = v81;
  v76 = v14;
  v77 = a2[4];
  v84 = *(a2 + 20);
  v15 = WORD2(v81);
  v78 = *(a2 + 20);
  v73 = v79;
  v74 = v13;
  outlined init with copy of _ViewInputs(&v79, v71);
  PreferencesInputs.add<A>(_:)(a5, a5, a7);
  v39 = v15;
  if ((v15 & 0x100) != 0)
  {
    specialized _GraphInputs.pushScope<A>(id:)(0);
  }

  v69[2] = v75;
  v69[3] = v76;
  v69[4] = v77;
  v69[0] = v73;
  v69[1] = v74;
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v70 = v78;
  v38 = DWORD2(v83);
  v16 = v83;
  v68 = v78;
  v63 = v73;
  v64 = v74;
  v17 = outlined init with copy of _ViewInputs(v69, v71);
  a3(v55, v17, &v63);
  v71[2] = v65;
  v71[3] = v66;
  v71[4] = v67;
  v72 = v68;
  v71[0] = v63;
  v71[1] = v64;
  outlined destroy of _ViewInputs(v71);
  v42 = *&v55[0];
  v43 = a6;
  v18 = HIDWORD(v55[0]);
  v40 = DWORD2(v55[0]);
  v47 = a7;
  closure #1 in makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)(1, a5, a6, a7, a9);
  v41 = v12;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v20 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  v22 = *MEMORY[0x1E698D3F8];
  *&v63 = __PAIR64__(v21, OffsetAttribute2);
  *(&v63 + 1) = __PAIR64__(v38, v16);
  *&v64 = __PAIR64__(v22, v18);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  Attribute.init<A>(body:value:flags:update:)();
  v59 = v81;
  v60 = v82;
  v61 = v83;
  v62 = v84;
  v57 = v79;
  v58 = v80;
  outlined init with copy of _ViewInputs(&v79, &v63);

  LODWORD(v61) = AGGraphCreateOffsetAttribute2();
  v23 = v59;
  DWORD2(v61) = AGGraphCreateOffsetAttribute2();
  LODWORD(v59) = v23 | 0x18;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v57, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);

  if ((v39 & 0x100) != 0)
  {
    specialized _GraphInputs.pushScope<A>(id:)(1);
  }

  v24 = v40;
  v25 = _ViewOutputs.subscript.getter(a5, a5, v47);
  if ((v25 & 0x100000000) != 0)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  v65 = v59;
  v66 = v60;
  v67 = v61;
  v68 = v62;
  v63 = v57;
  v64 = v58;
  v27 = closure #2 in makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)(&v63, v41 | (v26 << 32), a5, v43, v47, a9, v55);
  v28 = *&v55[0];
  v48 = DWORD2(v55[0]);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  AGGraphMutateAttribute();
  if (a4)
  {
    v30 = v28;
    v31 = v48;
    v28 = v42;
  }

  else
  {
    v30 = v42;
    v31 = v40;
    v24 = v48;
  }

  v53 = MEMORY[0x1E69E7CC0];
  v54 = 0;
  v49 = v30;
  v50 = v31;
  v51 = v28;
  v52 = v24;
  v32 = v82;
  v33 = *(v82 + 16);
  if (v33)
  {

    v34 = (v32 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v49, *(v34 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v34, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v34 += 2;
      --v33;
    }

    while (v33);
  }

  else
  {
  }

  v55[2] = v59;
  v55[3] = v60;
  v55[4] = v61;
  v56 = v62;
  v55[0] = v57;
  v55[1] = v58;
  outlined destroy of _ViewInputs(v55);
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v68 = v78;
  v63 = v73;
  v64 = v74;
  outlined destroy of _ViewInputs(&v63);
  *(a8 + 12) = v18;
  v35 = v53;
  v36 = v54;

  *a8 = v35;
  *(a8 + 8) = v36;
  return result;
}

uint64_t closure #1 in makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v9[2] = type metadata accessor for _OverlayPreferenceModifier(0, v10);
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 16, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v9, &type metadata for Alignment, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v10[0];
}

void *closure #2 in makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a1[3];
  v43 = a1[2];
  v44 = v10;
  v45 = a1[4];
  v46 = *(a1 + 20);
  v11 = a1[1];
  v41 = *a1;
  v42 = v11;
  *&v33[0] = a2;
  *&v35 = a3;
  *(&v35 + 1) = a4;
  *&v36 = a5;
  *(&v36 + 1) = a6;
  v12 = type metadata accessor for SecondaryChild(0, &v35);
  swift_getWitnessTable(protocol conformance descriptor for SecondaryChild<A, B>, v12);
  _GraphValue.init<A>(_:)(v33, a4, v12, v13, &v20);
  v14 = v20;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v29 = v43;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v27 = v41;
  v28 = v42;
  v16 = v43;
  LODWORD(v29) = 0;
  v19 = v14;
  v33[0] = v41;
  v33[1] = v42;
  v34 = v46;
  v33[3] = v44;
  v33[4] = v45;
  v33[2] = v29;
  v23 = v29;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  v21 = v41;
  v22 = v42;
  v17 = *(a6 + 24);
  outlined init with copy of _ViewInputs(&v41, &v35);
  outlined init with copy of _ViewInputs(v33, &v35);
  v17(&v19, &v21, a4, a6);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v35 = v21;
  v36 = v22;
  outlined destroy of _ViewInputs(&v35);
  LODWORD(v29) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v27);
    AGSubgraphEndTreeElement();
  }

  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  return outlined destroy of _ViewInputs(&v21);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SecondaryChild<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for SecondaryChild<A, B>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t StateObject.Box.update(property:phase:)(uint64_t a1, int *a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v43 = 0;
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  if (v7)
  {
    goto LABEL_12;
  }

  v9 = *a1;
  v7 = *(a1 + 8);
  if (*(a1 + 16))
  {
    *(v3 + 16) = v9;
    *(v3 + 24) = v7;
    v43 = 1;
    result = swift_unknownObjectRetain();
  }

  else
  {
    v42 = v3;

    v11 = pthread_main_np();
    v13 = *(a3 + 16);
    if (!v11)
    {
      v14 = _typeName(_:qualified:)();
      v16 = v15;
      v17 = static os_log_type_t.fault.getter();
      if (one-time initialization token for runtimeIssuesLog != -1)
      {
        swift_once();
      }

      v41 = static Log.runtimeIssuesLog;
      if (os_log_type_enabled(static Log.runtimeIssuesLog, v17))
      {
        v39 = v14;
        v18 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v45 = v40;
        *v18 = 136315138;
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v16, &v45);
        LODWORD(v39) = v17;
        v20 = v19;

        *(v18 + 4) = v20;
        _os_log_impl(&dword_18D018000, v41, v39, "Updating StateObject<%s> from background\nthreads will cause undefined behavior; make sure to update it from the main thread.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x193AC4820](v40, -1, -1);
        MEMORY[0x193AC4820](v18, -1, -1);
      }

      else
      {
      }
    }

    v44[0] = v8;
    v44[1] = 0;
    type metadata accessor for ObservedObject(255, v13, *(a3 + 24), v12);
    v21 = type metadata accessor for Optional();
    v22 = UncheckedSendable.init(_:)(v44, v21, &v45);
    v9(v22);
    v45 = ObservedObject.init(wrappedValue:)();
    v46 = v23;
    swift_unknownObjectRelease();
    result = outlined consume of StateObject<A>.Storage<A>(v9, v7, 0);
    v9 = v45;
    v7 = v46;
    v3 = v42;
    *(v42 + 16) = v45;
    *(v3 + 24) = v7;
    v43 = 1;
  }

  v8 = v9;
  if (v7)
  {
LABEL_12:
    v24 = *a1;
    v25 = *(a1 + 8);
    v26 = *(a1 + 16);
    swift_unknownObjectRetain();
    v27 = outlined consume of StateObject<A>.Storage<A>(v24, v25, v26);
    v45 = v8;
    v46 = v7;
    MEMORY[0x1EEE9AC00](v27);
    v28 = *(a3 + 24);
    v34 = *(a3 + 16);
    v35 = v28;
    v36 = v3;
    v37 = v6;
    v38 = &v43;
    v30 = type metadata accessor for ObservedObject(0, v34, v28, v29);
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v45, partial apply for closure #2 in StateObject.Box.update(property:phase:), &v33, v30, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v31);
    result = LOBYTE(v44[0]);
    v32 = v46;
    *a1 = v45;
    *(a1 + 8) = v32;
    *(a1 + 16) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #2 in StateObject.Box.update(property:phase:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v9 = *v4;
  v10 = v4[1];
  v8 = v5;
  result = _DynamicPropertyBuffer.update(container:phase:)(a1, &v8);
  *a2 = (result | *v6) & 1;
  return result;
}

void (*StateObject.objectValue.getter(void (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4))(uint64_t)
{
  if (a3)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    v6 = _typeName(_:qualified:)();
    v8 = v7;
    v9 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v10 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v16);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_18D018000, v10, v9, "Accessing StateObject<%s>'s object without being installed on a View. This will create a new instance each time.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193AC4820](v12, -1, -1);
      v14 = MEMORY[0x193AC4820](v11, -1, -1);
    }

    else
    {
    }

    a1(v14);
    outlined consume of StateObject<A>.Storage<A>(a1, a2, 0);
    return ObservedObject.init(wrappedValue:)();
  }

  return a1;
}

uint64_t *sub_18D0FE34C(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();
  return a1;
}

BOOL SubscriptionLifetime.isUninitialized.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for SubscriptionLifetime.StateType(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = *(v5 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v9, v4 + v10, v6);
  v11 = swift_getEnumCaseMultiPayload() == 2;
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t View._trait<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v14 = type metadata accessor for _TraitWritingModifier(0, a4, a6, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v10 + 16))(v12, a2, AssociatedTypeWitness, v16);
  (*(v10 + 32))(v18, v12, AssociatedTypeWitness);
  View.modifier<A>(_:)();
  return (*(v15 + 8))(v18, v14);
}

double static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v16 = HIDWORD(v14);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = v15;
  *(v17 + 36) = v16;
  *(v17 + 40) = v7;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;

  static _ViewListOutputs.unaryViewList<A>(viewType:inputs:body:)(a2, partial apply for closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:), v17, a5, a7);

  return result;
}

uint64_t sub_18D0FE778()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t Binding.readValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock) || static Update.dispatchDepth >= static Update.depth)
  {
    return (*(**(v2 + 8) + 120))();
  }

  (*(**(v2 + 8) + 104))(1);
  v5 = *(*(*(a1 + 16) - 8) + 16);
  v6 = v2 + *(a1 + 32);

  return v5(a2, v6);
}

uint64_t LocationBox.wasRead.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  (*(*(v3 + 176) + 32))(a1, *(v3 + 168));
  return swift_endAccess();
}

void specialized static Binding._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v5 = type metadata accessor for Binding.Box(0, a4, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for Binding<A>.Box, v5);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(&v7, a2, v5, v6);
}

uint64_t one-time initialization function for clear()
{
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 2143289344;
  static Color.clear = result;
  return result;
}

double ValueActionDispatcher.init(modifier:phase:)@<D0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = type metadata accessor for ValueActionDispatcher(0, a3, a4, a4);
  (*(*(a3 - 8) + 56))(&a5[v9[10]], 1, 1, a3);
  *&a5[v9[11]] = 0;
  v10 = &a5[v9[12]];
  v11 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v12 = *(v11 + 64);

  *v10 = v12;
  *&result = 0xFFFFFFFFLL;
  *(v10 + 4) = 0xFFFFFFFFLL;
  v10[12] = 0;
  *a5 = a1;
  *(a5 + 1) = a2;
  return result;
}

uint64_t destroy for ValueTransactionSeed(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 4;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

void type metadata accessor for Attribute<PreferenceValues>()
{
  if (!lazy cache variable for type metadata for Attribute<PreferenceValues>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<PreferenceValues>);
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance HostPreferencesTransform<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for HostPreferencesTransform<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t *Environment.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return Environment.init<A>(_:)(a1, a2, a3, &unk_18DE0A600);
}

{
  return Environment.init<A>(_:)(a1, a2, a3, &unk_18DE0A638);
}

uint64_t sub_18D0FF02C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = specialized EnvironmentValues.subscript.getter(*(a1 + a2 - 16), a1, a2, a4);
  *a3 = result;
  return result;
}

__n128 sub_18D0FF098(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t Environment.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t **a4@<X8>)
{
  v4 = *a1;
  *a4 = a1;
  type metadata accessor for Environment.Content(0, *(v4 + *MEMORY[0x1E69E77B0] + 8), a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static _ValueActionModifier2._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for _ValueActionModifier2(255, a5, a6, a4);
  swift_getWitnessTable(protocol conformance descriptor for _ValueActionModifier2<A>, v9);
  v11 = v10;
  v13 = type metadata accessor for ValueActionDispatcher(0, v9, v10, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23[-v15];
  v17 = ValueActionDispatcher.init(modifier:phase:)(*a1, *(a2 + 24), v9, v11, &v23[-v15]);
  v25 = v13;
  swift_getWitnessTable(protocol conformance descriptor for ValueActionDispatcher<A>, v13, v17);
  v26 = v18;
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in Attribute.init<A>(_:)partial apply, v24, v13, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  (*(v14 + 8))(v16, v13);
  v21 = AGGraphSetFlags();
  return a3(v21, a2);
}

uint64_t type metadata completion function for ValueActionDispatcher(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for Attribute<()>()
{
  if (!lazy cache variable for type metadata for Attribute<()>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<()>);
    }
  }
}

_DWORD *initializeWithCopy for ValueActionDispatcher(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 16))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = ((v9 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v10 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = *v19;
  v21 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *(v21 + 5) = *(v19 + 5);
  *v21 = v20;
  return a1;
}

_DWORD *storeEnumTagSinglePayload for CountViews(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}