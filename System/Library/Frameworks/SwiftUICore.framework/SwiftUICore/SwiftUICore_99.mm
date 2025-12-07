void lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)()
{
  if (!lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    }
  }
}

uint64_t outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _ForegroundLayerViewModifier.effectValue(size:)(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance _ForegroundLayerViewModifier(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

__n128 _ForegroundLayerColorMatrixEffect.foreground.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 _ForegroundLayerColorMatrixEffect.foreground.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

__n128 _ForegroundLayerColorMatrixEffect.background.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 32) = *(v1 + 112);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 144);
  result = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = result;
  return result;
}

__n128 _ForegroundLayerColorMatrixEffect.background.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = v2;
  *(v1 + 144) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = result;
  return result;
}

void __swiftcall _ForegroundLayerColorMatrixEffect.init(foreground:background:)(SwiftUI::_ForegroundLayerColorMatrixEffect *__return_ptr retstr, SwiftUI::_ColorMatrix *foreground, SwiftUI::_ColorMatrix *background)
{
  v5 = *&foreground->m24;
  v6 = *&foreground->m33;
  v4 = *&foreground->m15;
  v3 = *&background->m15;
  v9 = *&background->m24;
  v10 = *&background->m33;
  v11 = *&background->m42;
  v7 = *&foreground->m42;
  v8 = *&background->m11;
  *&retstr->foreground.m11 = *&foreground->m11;
  *&retstr->foreground.m15 = v4;
  *&retstr->background.m15 = v3;
  *&retstr->background.m24 = v9;
  *&retstr->background.m33 = v10;
  *&retstr->background.m42 = v11;
  *&retstr->foreground.m42 = v7;
  *&retstr->background.m11 = v8;
  *&retstr->foreground.m24 = v5;
  *&retstr->foreground.m33 = v6;
}

void *static _ForegroundLayerColorMatrixEffect._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v36 = a2[2];
  v37 = v7;
  v38 = a2[4];
  v39 = *(a2 + 20);
  v8 = a2[1];
  v34 = *a2;
  v35 = v8;
  LODWORD(v30[0]) = v6;
  *(&v30[0] + 1) = swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>();
  lazy protocol witness table accessor for type Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect> and conformance Focus<A, B>();

  v9 = Attribute.init<A>(body:value:flags:update:)();

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v24 = v34;
  v25 = v35;
  v33 = v39;
  v11 = v36;
  LODWORD(v26) = 0;
  v30[0] = v34;
  v30[1] = v35;
  v31 = v37;
  v32 = v38;
  v30[2] = v26;
  v21 = v37;
  v22 = v38;
  v23 = v39;
  v18 = v34;
  v19 = v35;
  v20 = v26;
  outlined init with copy of _ViewInputs(&v34, v17);
  v12 = outlined init with copy of _ViewInputs(v30, v17);
  a3(v17, v12, &v18);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v31))
  {
    v13 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v17[0]);
    v14 = *MEMORY[0x1E698D3F8];
    if ((v13 & 0x100000000) == 0)
    {
      v14 = v13;
    }

    v18 = __PAIR64__(v14, v9);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList();
    v15 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v18) = 0;
    PreferencesOutputs.subscript.setter(v15, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

  outlined destroy of _ViewInputs(v30);
  *a4 = v17[0];
  a4[1] = v17[1];
  LODWORD(v26) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v24);
    AGSubgraphEndTreeElement();
  }

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  return outlined destroy of _ViewInputs(&v18);
}

uint64_t _ForegroundLayerColorMatrixEffect.levelEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v15[3] = v1[3];
  v15[4] = v4;
  v6 = *v1;
  v15[1] = v1[1];
  v15[2] = v3;
  v7 = v1[6];
  v8 = v1[8];
  v9 = v1[9];
  v14[2] = v1[7];
  v14[3] = v8;
  v14[4] = v9;
  v15[0] = v6;
  v14[0] = v5;
  v14[1] = v7;
  v10 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0, isUniquelyReferenced_nonNull_native);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 1u, v12);
  *a1 = v10;
  *(a1 + 8) = 0;
  return result;
}

uint64_t _ForegroundLayerLevelColorMatrixEffect.init(level:foreground:background:)@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, 0, isUniquelyReferenced_nonNull_native);
  if (v7)
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v7, v11);
  }

  *a4 = v8;
  *(a4 + 8) = 0;
  return result;
}

Swift::Int _ForegroundLayerLevel.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void _ForegroundLayerLevelViewModifier.effectValue(size:)(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance _ForegroundLayerLevelViewModifier(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

uint64_t _ForegroundLayerLevelColorMatrixEffect.init(_:options:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t _ForegroundLayerLevelColorMatrixEffect.init(level:foreground:background:options:)@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, 0, isUniquelyReferenced_nonNull_native);
  if (v9)
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v9, v13);
  }

  *a5 = v10;
  *(a5 + 8) = a4;
  return result;
}

double static _ForegroundLayerLevelColorMatrixEffect._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[1];
  v15 = *a2;
  v16 = v6;
  v17 = a2[2];
  v7 = *(a2 + 6);
  v8 = *(a2 + 14);
  v20 = *(a2 + 60);
  v21 = *(a2 + 76);
  v18 = v7;
  v19 = v8;
  a3(&v13);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v7))
  {
    v9 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v13);
    v10 = *MEMORY[0x1E698D3F8];
    if ((v9 & 0x100000000) == 0)
    {
      v10 = v9;
    }

    v15 = __PAIR64__(v10, v5);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList();
    v11 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v15) = 0;
    PreferencesOutputs.subscript.setter(v11, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

  *a4 = v13;
  result = v14;
  a4[1] = v14;
  return result;
}

double ForegroundLayerDisplayList.updateValue()()
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    v12 = MEMORY[0x1E69E7CC0];
    v13 = 0;
    v14 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v2 = *(Value + 8);
    v3 = *(Value + 12);
    v12 = *Value;
    v13 = v2;
    v14 = v3;

    v4 = *(AGGraphGetValue() + 8);
    if (v5)
    {
      v6 = ++static DisplayList.Version.lastValue;
      *(v0 + 8) = static DisplayList.Version.lastValue;
    }

    else
    {
      v6 = *(v0 + 8);
    }

    v9 = v6;

    DisplayList.insertLayerFilters(matrices:version:premultiplied:)(v7, &v9, v4 & 1);

    v9 = v12;
    v10 = v13;
    v11 = v14;
  }

  AGGraphSetOutputValue();

  return result;
}

void type metadata accessor for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>()
{
  if (!lazy cache variable for type metadata for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>)
  {
    v0 = type metadata accessor for Focus();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>);
    }
  }
}

void lazy protocol witness table accessor for type Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect> and conformance Focus<A, B>()
{
  if (!lazy protocol witness table cache variable for type Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect> and conformance Focus<A, B>)
  {
    type metadata accessor for Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect>();
    swift_getWitnessTable(MEMORY[0x1E698D3B8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Focus<_ForegroundLayerColorMatrixEffect, _ForegroundLayerLevelColorMatrixEffect> and conformance Focus<A, B>);
  }
}

void lazy protocol witness table accessor for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList()
{
  if (!lazy protocol witness table cache variable for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList)
  {
    swift_getWitnessTable(protocol conformance descriptor for ForegroundLayerDisplayList, &unk_1F0062590, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ForegroundLayerDisplayList and conformance ForegroundLayerDisplayList);
  }
}

void lazy protocol witness table accessor for type _ForegroundLayerViewModifier and conformance _ForegroundLayerViewModifier()
{
  if (!lazy protocol witness table cache variable for type _ForegroundLayerViewModifier and conformance _ForegroundLayerViewModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ForegroundLayerViewModifier, &type metadata for _ForegroundLayerViewModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ForegroundLayerViewModifier and conformance _ForegroundLayerViewModifier);
  }
}

void lazy protocol witness table accessor for type _ForegroundLayerLevelViewModifier and conformance _ForegroundLayerLevelViewModifier()
{
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelViewModifier and conformance _ForegroundLayerLevelViewModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ForegroundLayerLevelViewModifier, &type metadata for _ForegroundLayerLevelViewModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ForegroundLayerLevelViewModifier and conformance _ForegroundLayerLevelViewModifier);
  }
}

void lazy protocol witness table accessor for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options()
{
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ForegroundLayerLevelColorMatrixEffect.Options, &type metadata for _ForegroundLayerLevelColorMatrixEffect.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ForegroundLayerLevelColorMatrixEffect.Options, &type metadata for _ForegroundLayerLevelColorMatrixEffect.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ForegroundLayerLevelColorMatrixEffect.Options, &type metadata for _ForegroundLayerLevelColorMatrixEffect.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ForegroundLayerLevelColorMatrixEffect.Options, &type metadata for _ForegroundLayerLevelColorMatrixEffect.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ForegroundLayerLevelColorMatrixEffect.Options and conformance _ForegroundLayerLevelColorMatrixEffect.Options);
  }
}

__n128 __swift_memcpy160_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for _ForegroundLayerColorMatrixEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ForegroundLayerColorMatrixEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 160) = v3;
  return result;
}

uint64_t *assignWithCopy for _ForegroundLayerLevelColorMatrixEffect(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  return a1;
}

uint64_t ContentShapeKinds.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x193ABEDD0](0x7463617265746E69, 0xEC000000206E6F69);
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x193ABEDD0](0x7665725067617264, 0xEC00000020776569);
  if ((v1 & 4) != 0)
  {
LABEL_4:
    MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD798D0);
  }

LABEL_5:
  if ((v1 & 8) == 0)
  {
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    MEMORY[0x193ABEDD0](0x6666457375636F66, 0xEC00000020746365);
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  MEMORY[0x193ABEDD0](0x6666457265766F68, 0xEC00000020746365);
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v1 & 0x40) != 0)
  {
LABEL_8:
    MEMORY[0x193ABEDD0](0x6269737365636361, 0xEE00207974696C69);
  }

LABEL_9:

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);

  return 8283;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ContentShapesKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static EnvironmentValues.ContentShapesKey.defaultValue;

  return result;
}

void EnvironmentValues.contentShapes.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV013ContentShapesI033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2g5(v2, a1);
  }
}

void key path getter for EnvironmentValues.contentShapes : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV013ContentShapesI033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt1g5(v3, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2g5(*a1, &v4);
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.contentShapes : EnvironmentValues(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV013ContentShapesK033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.contentShapes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(v1, v2);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV013ContentShapesK033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Ttg5(v3, *v1);
  }

  return result;
}

void (*EnvironmentValues.contentShapes.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v7 = v3;
  *a1 = v3;
  v3[3] = v1;
  v8 = *v1;
  v3[4] = *v1;
  v9 = *(v1 + 8);
  v3[5] = v9;
  if (v9)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV013ContentShapesI033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt1g5(v8, v7);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>(0, v4, v5, v6);
    BloomFilter.init(hashValue:)(v10);
    v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV013ContentShapesV033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt0B5(v8, v14);
    if (v11)
    {
      v12 = v11[9];
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v12 = static EnvironmentValues.ContentShapesKey.defaultValue;
    }

    *v7 = v12;
  }

  return EnvironmentValues.contentShapes.modify;
}

void EnvironmentValues.contentShapes.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[5];
  v6 = v3[3];
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV013ContentShapesK033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV013ContentShapesK033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  free(v3);
}

uint64_t ContentShapes.addShape<A>(_:forKinds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  (*(v12 + 16))(v9, v13, v7);
  v14 = AnyShape.init<A>(_:)(v9, a3, a4);
  v15 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v15;
  if (v11)
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      v15 = result;
      *v4 = result;
    }

    v18 = v15[2];
    v17 = v15[3];
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v20 = v17 > 1;
LABEL_12:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v19, 1, v15);
      v15 = result;
    }
  }

  else
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      v15 = result;
      *v4 = result;
    }

    v18 = v15[2];
    v21 = v15[3];
    v19 = v18 + 1;
    if (v18 >= v21 >> 1)
    {
      v20 = v21 > 1;
      v11 = 1;
      goto LABEL_12;
    }

    v11 = 1;
  }

  v15[2] = v19;
  v22 = &v15[2 * v18];
  v22[4] = v11;
  v22[5] = v14;
  *v4 = v15;
  return result;
}

Swift::Void __swiftcall ContentShapes.appending(contentsOf:)(SwiftUI::ContentShapes contentsOf)
{
  v2 = *(*contentsOf.shapes._rawValue + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = (*contentsOf.shapes._rawValue + 40);
    do
    {
      v5 = *(v4 - 1);
      v7 = *v4;
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v5)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
        }

        v10 = v3[2];
        v9 = v3[3];
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
        }
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
        }

        v10 = v3[2];
        v12 = v3[3];
        v11 = v10 + 1;
        if (v10 >= v12 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1, v3);
        }

        v5 = 1;
      }

      v3[2] = v11;
      v6 = &v3[2 * v10];
      v6[4] = v5;
      v6[5] = v7;
      v4 += 2;
      --v2;
    }

    while (v2);
    *v1 = v3;
  }
}

void ContentShapes.shape(for:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5[0] = *a1;
  v5[1] = v4;
  ContentShapes.matchingShapes(for:)(v5, &v6);
  *a2 = v6;
}

void ContentShapes.matchingShapes(for:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 16 * v7 + 24);
    while (v7 <= *(v5 + 16))
    {
      v9 = 0;
      if (v4)
      {
        v10 = *(v8 - 1);
        if ((v10 & v4) != 0)
        {
          v9 = *v8;
          v4 &= ~v10;
        }
      }

      if (v9)
      {
        MEMORY[0x193ABF170](a1);
        if (*(v11 + 16) >= *(v11 + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        a1 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v11;
      }

      v8 -= 2;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *a2 = v6;
  }
}

void CombinedContentShape.path(in:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v107 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (!v6)
  {
    v77 = 0;
    v76 = 0;
    v75 = 0;
    v74 = 0;
    v78 = 6;
LABEL_159:
    *a2 = v77;
    *(a2 + 8) = v76;
    *(a2 + 16) = v75;
    *(a2 + 24) = v74;
    *(a2 + 32) = v78;
    return;
  }

  v8 = a4;
  v9 = a3;
  v79 = a2;
  v10 = a1 + 32;
  v83 = *MEMORY[0x1E698D3F8];
  v91 = 6;
  v89 = 0u;
  v90 = 0u;
  while (1)
  {
    v11 = *(**v10 + 80);

    v11(v98, v12, v9, v8, a5, a6);
    rect = v98[1];
    v94 = v98[0];
    v13 = v99;
    if (one-time initialization token for v5 != -1)
    {
      swift_once();
    }

    v14 = static Semantics.v5;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C524 == 1)
    {
      if ((dyld_program_minos_at_least() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (dword_1ED53C520 < v14)
    {
      goto LABEL_35;
    }

    if (!_threadGeometryProxyData())
    {
      goto LABEL_35;
    }

    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == v83)
    {
      v97.a = 0.0;
      v97.b = 0.0;
      swift_beginAccess();
      if (static ViewGraphHost.isDefaultEnvironmentConfigured == 1)
      {
        if (one-time initialization token for _defaultEnvironment != -1)
        {
          swift_once();
        }

        a = static ViewGraphHost._defaultEnvironment;
        if (static ViewGraphHost._defaultEnvironment)
        {
          if (!*(static ViewGraphHost._defaultEnvironment + 64))
          {
            a = 0.0;
            static Update.end()();
            goto LABEL_31;
          }
        }

        static Update.end()();
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v18 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x68);
        v19 = static CoreGlue2.shared;
        v18(&v97);

        a = v97.a;
        b = v97.b;
        static Update.end()();
        if (b != 0.0)
        {
LABEL_28:

          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(*&a, &v97);

          if (LOBYTE(v97.a) == 1)
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      a = *InputValue;
      v17 = *(InputValue + 8);

      static Update.end()();
      if (v17)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    v21 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*&a);
    if (v21)
    {
      v22 = *(v21 + 72);

      if ((v22 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_33:
      v96[1] = 0.0;
      v96[2] = 0.0;
      v96[0] = -1.0;
      v96[3] = 1.0;
      v96[4] = a5;
      v96[5] = 0.0;
      Path.applying(_:)(v96, v100);
      rect = v100[1];
      v94 = v100[0];
      v13 = v101;
      outlined destroy of Path(v98);
      goto LABEL_35;
    }

LABEL_35:
    v104 = v94;
    v105 = rect;
    v106 = v13;
    if (v13 > 2)
    {
      break;
    }

    if (v13 >= 2)
    {
      if (!CGRectIsNull(*(v94.i64[0] + 16)))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v108.size = rect;
      *&v108.origin.y = v94.i64[1];
      *&v108.origin.x = v94.i64[0];
      if (!CGRectIsNull(v108))
      {
        goto LABEL_52;
      }
    }

LABEL_3:
    outlined consume of Path.Storage(v94.i64[0], v94.i64[1], rect.i64[0], rect.i64[1], v13);
LABEL_4:

LABEL_5:
    v10 += 8;
    if (!--v6)
    {
      v74 = v89.i64[1];
      v75 = v89.i64[0];
      v76 = v90.i64[1];
      v77 = v90.i64[0];
      a2 = v79;
      v78 = v91;
      goto LABEL_159;
    }
  }

  if (v13 != 5)
  {
    if (v13 != 6)
    {
      goto LABEL_164;
    }

    goto LABEL_4;
  }

  if (*(v94.i64[0] + 16))
  {
    if (*(v94.i64[0] + 16) == 1)
    {
      goto LABEL_42;
    }

    v23 = one-time initialization token for bufferCallbacks;

    if (v23 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (!*(v94.i64[0] + 24))
    {
      __break(1u);
    }

LABEL_42:
  }

  IsEmpty = RBPathIsEmpty();
  outlined consume of Path.Storage(v94.i64[0], v94.i64[1], rect.i64[0], rect.i64[1], 5u);
  if (IsEmpty)
  {
    goto LABEL_3;
  }

LABEL_52:
  v25 = v91;
  switch(v91)
  {
    case 2u:
      v29 = *(v90.i64[0] + 16);
      v28 = *(v90.i64[0] + 32);
      v26 = *(v90.i64[0] + 48);
      v27 = *(v90.i64[0] + 56);
LABEL_60:
      if (v13 == 2)
      {
        v87 = *(v94.i64[0] + 16);
        v88 = *(v94.i64[0] + 32);
        v82 = *(v94.i64[0] + 48);
        v81 = *(v94.i64[0] + 56);
      }

      else
      {
        if (v13 == 1)
        {
          if (fabs(vsubq_f64(rect, vdupq_laneq_s64(rect, 1)).f64[0]) >= 0.001)
          {
            goto LABEL_91;
          }

          v82 = 0.5 * *rect.i64;
          v81 = 0.5 * *rect.i64;
          v88 = rect;
        }

        else
        {
          if (v13)
          {
            goto LABEL_91;
          }

          v82 = 0.0;
          v81 = 0.0;
          v88 = rect;
        }

        v87 = v94;
      }

      v30 = *&v29.i64[1];
      v31 = *&v28.i64[1];
      v32 = v29;
      v85 = *v28.i64;
      v86 = *v29.i64;
      v33 = v28.i64[1];
      v109 = CGRectInset(*(&v28 - 1), -0.001, -0.001);
      *&v120.origin.x = v87.i64[0];
      *&v120.size.width = v88.i64[0];
      *&v120.origin.y = v87.i64[1];
      *&v120.size.height = v88.i64[1];
      if (CGRectContainsRect(v109, v120))
      {
        v35 = v85;
        v34 = v86;
        if (v26 <= v82 && v27 <= v81)
        {
          goto LABEL_79;
        }

        v36 = v30;
        v37 = v31;
        v38 = a5;
        v39 = v27;
        v40 = fabs(CGRectGetWidth(*&v34)) * 0.5;
        v110.size.width = v85;
        v110.origin.x = v86;
        v110.origin.y = v30;
        v110.size.height = v31;
        v41 = fabs(CGRectGetHeight(v110)) * 0.5;
        if (v41 >= v40)
        {
          v41 = v40;
        }

        v27 = v39;
        a5 = v38;
        v8 = a4;
        if (v41 >= v26)
        {
          v42 = v26;
        }

        else
        {
          v42 = v41;
        }

        if (v41 >= v27)
        {
          v41 = v27;
        }

        v43 = v42 * 0.292893219;
        v44 = v41 * 0.292893219;
        v111.size.width = v85;
        v111.origin.x = v86;
        v111.origin.y = v30;
        v111.size.height = v31;
        v112 = CGRectInset(v111, v43, v44);
        *&v121.origin.x = v87.i64[0];
        *&v121.size.width = v88.i64[0];
        *&v121.origin.y = v87.i64[1];
        *&v121.size.height = v88.i64[1];
        if (CGRectContainsRect(v112, v121))
        {
LABEL_79:
          outlined consume of Path.Storage(v94.i64[0], v94.i64[1], rect.i64[0], rect.i64[1], v13);

          v9 = a3;
          goto LABEL_5;
        }
      }

      *&v113.origin.x = v87.i64[0];
      *&v113.size.width = v88.i64[0];
      *&v113.origin.y = v87.i64[1];
      *&v113.size.height = v88.i64[1];
      v114 = CGRectInset(v113, -0.001, -0.001);
      v122.size.width = v85;
      v122.origin.x = v86;
      v122.origin.y = v30;
      v122.size.height = v31;
      v25 = v91;
      if (CGRectContainsRect(v114, v122))
      {
        if (v82 <= v26 && v81 <= v27)
        {
          goto LABEL_90;
        }

        *&v115.origin.x = v87.i64[0];
        *&v115.size.width = v88.i64[0];
        *&v115.origin.y = v87.i64[1];
        *&v115.size.height = v88.i64[1];
        v45 = fabs(CGRectGetWidth(v115)) * 0.5;
        *&v116.origin.x = v87.i64[0];
        *&v116.size.width = v88.i64[0];
        *&v116.origin.y = v87.i64[1];
        *&v116.size.height = v88.i64[1];
        v46 = fabs(CGRectGetHeight(v116)) * 0.5;
        if (v46 >= v45)
        {
          v46 = v45;
        }

        v47 = v82;
        if (v46 < v82)
        {
          v47 = v46;
        }

        if (v46 >= v81)
        {
          v46 = v81;
        }

        v48 = v47 * 0.292893219;
        v49 = v46 * 0.292893219;
        *&v117.origin.x = v87.i64[0];
        *&v117.size.width = v88.i64[0];
        *&v117.origin.y = v87.i64[1];
        *&v117.size.height = v88.i64[1];
        v118 = CGRectInset(v117, v48, v49);
        v123.size.width = v85;
        v123.origin.x = v86;
        v123.origin.y = v30;
        v123.size.height = v31;
        v25 = v91;
        if (CGRectContainsRect(v118, v123))
        {
LABEL_90:

          outlined consume of Path.Storage(v90.i64[0], v90.i64[1], v89.i64[0], v89.i64[1], v91);
          v91 = v13;
          v89 = rect;
          v90 = v94;
          v9 = a3;
          goto LABEL_5;
        }
      }

LABEL_91:
      v95[1] = 0.0;
      v95[2] = 0.0;
      v95[0] = 1.0;
      v95[3] = 1.0;
      v95[4] = 0.0;
      v95[5] = 0.0;
      if (v25 == 6)
      {
        v50 = vorrq_s8(v90, v89);
        if (!*&vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL)))
        {
          Path.applying(_:)(v95, v102);
          outlined consume of Path.Storage(v94.i64[0], v94.i64[1], rect.i64[0], rect.i64[1], v13);

          v89 = v102[1];
          v90 = v102[0];
          v91 = v103;
          v9 = a3;
          goto LABEL_5;
        }
      }

      break;
    case 1u:
      if (fabs(vsubq_f64(v89, vdupq_laneq_s64(v89, 1)).f64[0]) < 0.001)
      {
        v26 = 0.5 * *v89.i64;
        v27 = 0.5 * *v89.i64;
        v28 = v89;
LABEL_58:
        v29 = v90;
        goto LABEL_60;
      }

      break;
    case 0u:
      v26 = 0.0;
      v27 = 0.0;
      v28 = v89;
      goto LABEL_58;
    default:
      goto LABEL_91;
  }

  if (v13 <= 1)
  {
    *&v119.size.width = rect.i64[0];
    *&v119.origin.x = v94.i64[0];
    *&v119.size.height = rect.i64[1];
    *&v119.origin.y = v94.i64[1];
    v9 = a3;
    if (!CGRectIsNull(v119))
    {
      goto LABEL_108;
    }

    goto LABEL_3;
  }

  if (v13 == 2)
  {
    v9 = a3;
    if (!CGRectIsNull(*(v94.i64[0] + 16)))
    {
      goto LABEL_108;
    }

    goto LABEL_3;
  }

  v9 = a3;
  if (*(v94.i64[0] + 16))
  {
    if (*(v94.i64[0] + 16) == 1)
    {
      goto LABEL_102;
    }

    v51 = one-time initialization token for bufferCallbacks;

    if (v51 != -1)
    {
      swift_once();
    }

LABEL_107:
    v52 = RBPathIsEmpty();
    outlined consume of Path.Storage(v94.i64[0], v94.i64[1], rect.i64[0], rect.i64[1], 5u);
    if ((v52 & 1) == 0)
    {
LABEL_108:
      if (v91 == 5)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v53 = v90.i64[0];
        }

        else
        {
          type metadata accessor for Path.PathBox();
          v53 = swift_allocObject();
          *(v53 + 24) = 0u;
          *(v53 + 40) = 0u;
          *(v53 + 56) = 0u;
          *(v53 + 72) = 0u;
          *(v53 + 88) = 0u;
          *(v53 + 104) = 0u;
          v61 = *(v90.i64[0] + 16);
          *(v53 + 16) = v61;
          if (v61)
          {
            if (v61 == 1)
            {
              *(v53 + 24) = RBPathRetain();
              *(v53 + 32) = v62;
            }

            else
            {
              RBPathStorageInit();
            }
          }

          else
          {
            v66 = *(v90.i64[0] + 24);
            if (!v66)
            {
              goto LABEL_162;
            }

            *(v53 + 24) = v66;
            v67 = v66;
          }
        }

        v57 = 0;
        v56 = 0;
        v59 = 0;
        v58 = 0;
        v60 = 6;
      }

      else
      {
        type metadata accessor for Path.PathBox();
        v53 = swift_allocObject();
        *(v53 + 24) = 0u;
        v54 = v53 + 24;
        *(v53 + 40) = 0u;
        *(v53 + 56) = 0u;
        *(v53 + 72) = 0u;
        *(v53 + 88) = 0u;
        *(v53 + 104) = 0u;
        *(v53 + 16) = 2;
        RBPathStorageInit();
        v55 = *(v53 + 16);

        if (v55 != 2)
        {
          Path.PathBox.prepareBuffer()();
        }

        v56 = v90.i64[1];
        v57 = v90.i64[0];
        v58 = v89.i64[1];
        v59 = v89.i64[0];
        if (v91 > 1u)
        {
          if (v91 == 2)
          {
            v63 = *(v90.i64[0] + 64);
            v64 = *(v90.i64[0] + 32);
            *&v97.a = *(v90.i64[0] + 16);
            *&v97.c = v64;
            *&v97.tx = *(v90.i64[0] + 48);
            if (v63)
            {
              v65 = 9;
            }

            else
            {
              v65 = 8;
            }

            MEMORY[0x193AC35E0](v54, v65, &v97, 0);
            v60 = 2;
          }

          else
          {
            v60 = v91;
            if (v91 != 6)
            {
              goto LABEL_164;
            }
          }
        }

        else
        {
          *&v97.a = v90;
          *&v97.c = v89;
          if (v91)
          {
            MEMORY[0x193AC35E0](v54, 7, &v97, 0);
            v60 = 1;
          }

          else
          {
            MEMORY[0x193AC35E0](v54, 5, &v97, 0);
            v60 = 0;
          }
        }
      }

      outlined consume of Path.Storage(v57, v56, v59, v58, v60);
      if (*(v53 + 16) != 2)
      {
        Path.PathBox.prepareBuffer()();
      }

      v97.b = 0.0;
      v97.c = 0.0;
      v97.a = 1.0;
      v97.d = 1.0;
      v97.tx = 0.0;
      v97.ty = 0.0;
      IsIdentity = CGAffineTransformIsIdentity(&v97);
      if (!IsIdentity)
      {
        v97.b = 0.0;
        v97.c = 0.0;
        v97.a = 1.0;
        v97.d = 1.0;
        v97.tx = 0.0;
        v97.ty = 0.0;
        MEMORY[0x193AC35E0](v53 + 24, 17, 0, &v97);
      }

      if (v13 <= 1)
      {
        *&v97.a = v94;
        *&v97.c = rect;
        v69 = v53 + 24;
        if (v13)
        {
          v70 = 7;
        }

        else
        {
          v70 = 5;
        }

        goto LABEL_145;
      }

      if (v13 == 2)
      {
        v71 = *(v94.i64[0] + 64);
        v72 = *(v94.i64[0] + 32);
        *&v97.a = *(v94.i64[0] + 16);
        *&v97.c = v72;
        *&v97.tx = *(v94.i64[0] + 48);
        if (v71)
        {
          v70 = 9;
        }

        else
        {
          v70 = 8;
        }

        v69 = v53 + 24;
LABEL_145:
        MEMORY[0x193AC35E0](v69, v70, &v97, 0);
        if (!IsIdentity)
        {
LABEL_146:
          MEMORY[0x193AC35E0](v53 + 24, 16, 0, 0);
        }

LABEL_147:

        outlined consume of Path.Storage(v94.i64[0], v94.i64[1], rect.i64[0], rect.i64[1], v13);

        v89 = 0u;
        v90 = v53;
        v91 = 5;
        goto LABEL_5;
      }

      if (*(v94.i64[0] + 16))
      {
        if (*(v94.i64[0] + 16) == 1)
        {
          goto LABEL_150;
        }

        v73 = one-time initialization token for bufferCallbacks;

        if (v73 != -1)
        {
          swift_once();
        }
      }

      else
      {
        if (!*(v94.i64[0] + 24))
        {
          goto LABEL_163;
        }

LABEL_150:
      }

      RBPathStorageAppendPath();
      outlined consume of Path.Storage(v94.i64[0], v94.i64[1], rect.i64[0], rect.i64[1], 5u);
      if (!IsIdentity)
      {
        goto LABEL_146;
      }

      goto LABEL_147;
    }

    goto LABEL_3;
  }

  if (*(v94.i64[0] + 24))
  {
LABEL_102:

    goto LABEL_107;
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized Shape.effectivePath(in:)(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v46.origin.x = CGRect.inset(by:)(a6, a7, a8, a9, a2, a3, a4, a5);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  IsNull = CGRectIsNull(v46);
  if (IsNull)
  {
    v16 = 0;
  }

  else
  {
    v16 = *&x;
  }

  if (IsNull)
  {
    v17 = 0;
  }

  else
  {
    v17 = *&y;
  }

  if (IsNull)
  {
    v18 = 0;
  }

  else
  {
    v18 = *&width;
  }

  if (IsNull)
  {
    v19 = 0;
  }

  else
  {
    v19 = *&height;
  }

  if (IsNull)
  {
    v20 = 6;
  }

  else
  {
    v20 = 0;
  }

  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v21 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (dword_1ED53C520 < v21)
  {
    goto LABEL_34;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v35);
      v23 = v35;
      v22 = v36;
      static Update.end()();
      if (v22)
      {
        goto LABEL_27;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v23 = *InputValue;
      v25 = *(InputValue + 8);

      static Update.end()();
      if (v25)
      {
LABEL_27:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v23, v33);

        if (LOBYTE(v33[0]) != 1)
        {
          goto LABEL_34;
        }

LABEL_32:
        v35 = 0xBFF0000000000000;
        v36 = 0;
        v37 = 0;
        v38 = 0x3FF0000000000000;
        v39 = a4;
        v40 = 0;
        Path.applying(_:)(&v35, v33);
        v28 = v33[1];
        v32 = v33[0];
        v29 = v33[2];
        v30 = v33[3];
        v31 = v34;
        outlined consume of Path.Storage(v16, v17, v18, v19, v20);
        v16 = v32;
        v17 = v28;
        v18 = v29;
        v19 = v30;
        v20 = v31;
        goto LABEL_34;
      }
    }

    v26 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v23);
    if (!v26)
    {

      goto LABEL_34;
    }

    v27 = *(v26 + 72);

    if (v27)
    {
      goto LABEL_32;
    }
  }

LABEL_34:
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  CombinedContentShape.path(in:)(a1, v19, a3, a4, a5, a6);
  v17 = v19[0];
  v18 = v19[1];
  v8 = v20;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v9)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v23);
      v11 = v23;
      v10 = v24;
      static Update.end()();
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v11 = *InputValue;
      v13 = *(InputValue + 8);

      static Update.end()();
      if (v13)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v11, v21);

        if (LOBYTE(v21[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v23 = 0xBFF0000000000000;
        v24 = 0;
        v25 = 0;
        v26 = 0x3FF0000000000000;
        v27 = a5;
        v28 = 0;
        Path.applying(_:)(&v23, v21);
        v17 = v21[0];
        v18 = v21[1];
        v8 = v22;
        outlined destroy of Path(v19);
        goto LABEL_19;
      }
    }

    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v11);
    if (!v14)
    {

      goto LABEL_19;
    }

    v15 = *(v14 + 72);

    if (v15)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v8;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>)
{
  (*(*a1 + 80))(v16);
  v14 = v16[0];
  v15 = v16[1];
  v5 = v17;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v6)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v20);
      v8 = v20;
      v7 = v21;
      static Update.end()();
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v8 = *InputValue;
      v10 = *(InputValue + 8);

      static Update.end()();
      if (v10)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v8, v18);

        if (LOBYTE(v18[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v20 = 0xBFF0000000000000;
        v21 = 0;
        v22 = 0;
        v23 = 0x3FF0000000000000;
        v24 = a3;
        v25 = 0;
        Path.applying(_:)(&v20, v18);
        v14 = v18[0];
        v15 = v18[1];
        v5 = v19;
        outlined destroy of Path(v16);
        goto LABEL_19;
      }
    }

    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v8);
    if (!v11)
    {

      goto LABEL_19;
    }

    v12 = *(v11 + 72);

    if (v12)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v14;
  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v5;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v14 = *(v2 + 16);
  v15 = *v2;
  v5 = *(v2 + 32);
  v18[0] = *v2;
  v18[1] = v14;
  v19 = *(v2 + 32);
  outlined init with copy of Path.Storage(v18, &v20);
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (dword_1ED53C520 < v6)
  {
    goto LABEL_20;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v20);
      v7 = v20;
      v8 = v21;
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v7 = *InputValue;
      v8 = *(InputValue + 8);
    }

    v10 = v2;
    static Update.end()();
    if (v8)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v7, v16);

      if (LOBYTE(v16[0]) != 1)
      {
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0xBFF0000000000000;
      v21 = 0;
      v22 = 0;
      v23 = 0x3FF0000000000000;
      v24 = a2;
      v25 = 0;
      Path.applying(_:)(&v20, v16);
      v14 = v16[1];
      v15 = v16[0];
      v5 = v17;
      outlined destroy of Path(v10);
      goto LABEL_20;
    }

    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v7);
    if (!v11)
    {

      goto LABEL_20;
    }

    v12 = *(v11 + 72);

    if (v12)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  result = v15;
  *a1 = v15;
  *(a1 + 16) = v14;
  *(a1 + 32) = v5;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, double a4@<D2>, __n128 a5@<Q3>)
{
  v8 = v5[3];
  v8.n128_f64[0] = a4;
  PartialContainerRelativeShape.path(in:)(v20, a2, a3, v8, a5);
  v18 = v20[0];
  v19 = v20[1];
  v9 = v21;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v10 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v10)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v24);
      v12 = v24;
      v11 = v25;
      static Update.end()();
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v12 = *InputValue;
      v14 = *(InputValue + 8);

      static Update.end()();
      if (v14)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v12, v22);

        if (LOBYTE(v22[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v24 = 0xBFF0000000000000;
        v25 = 0;
        v26 = 0;
        v27 = 0x3FF0000000000000;
        v28 = a4;
        v29 = 0;
        Path.applying(_:)(&v24, v22);
        v18 = v22[0];
        v19 = v22[1];
        v9 = v23;
        outlined destroy of Path(v20);
        goto LABEL_19;
      }
    }

    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v12);
    if (!v15)
    {

      goto LABEL_19;
    }

    v16 = *(v15 + 72);

    if (v16)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v18;
  *a1 = v18;
  a1[1] = v19;
  a1[2].n128_u8[0] = v9;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  LOBYTE(v27) = *(v5 + 32);
  specialized Path.init(roundedRect:cornerRadii:style:)(&v27, v23, a2, a3, a4, a5, v8, v9, v10, v11);
  v22 = v23[1];
  v21 = v23[0];
  v12 = v24;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v13 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v13)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v27);
      v15 = v27;
      v14 = v28;
      static Update.end()();
      if (v14)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v15 = *InputValue;
      v17 = *(InputValue + 8);

      static Update.end()();
      if (v17)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v15, v25);

        if (LOBYTE(v25[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v27 = 0xBFF0000000000000;
        v28 = 0;
        v29 = 0;
        v30 = 0x3FF0000000000000;
        v31 = a4;
        v32 = 0;
        Path.applying(_:)(&v27, v25);
        v21 = v25[0];
        v22 = v25[1];
        v12 = v26;
        outlined destroy of Path(v23);
        goto LABEL_19;
      }
    }

    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v15);
    if (!v18)
    {

      goto LABEL_19;
    }

    v19 = *(v18 + 72);

    if (v19)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v21;
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 32) = v12;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v39 = CGRectInset(*&a2, v13, v13);
  v14 = v8 - v13;
  v15 = 0.0;
  if (v8 - v13 <= 0.0)
  {
    v14 = 0.0;
  }

  v16 = v9 - v13;
  if (v9 - v13 <= 0.0)
  {
    v16 = 0.0;
  }

  v17 = v10 - v13;
  if (v10 - v13 <= 0.0)
  {
    v17 = 0.0;
  }

  if (v11 - v13 > 0.0)
  {
    v15 = v11 - v13;
  }

  LOBYTE(v33) = v12 & 1;
  specialized Path.init(roundedRect:cornerRadii:style:)(&v33, v29, v39.origin.x, v39.origin.y, v39.size.width, v39.size.height, v14, v16, v17, v15);
  v28 = v29[1];
  v27 = v29[0];
  v18 = v30;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v19 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (dword_1ED53C520 < v19)
  {
    goto LABEL_27;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v33);
      v21 = v33;
      v20 = v34;
      static Update.end()();
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v21 = *InputValue;
      v23 = *(InputValue + 8);

      static Update.end()();
      if (v23)
      {
LABEL_20:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v21, v31);

        if (LOBYTE(v31[0]) != 1)
        {
          goto LABEL_27;
        }

LABEL_25:
        v33 = 0xBFF0000000000000;
        v34 = 0;
        v35 = 0;
        v36 = 0x3FF0000000000000;
        v37 = a3;
        v38 = 0;
        Path.applying(_:)(&v33, v31);
        v27 = v31[0];
        v28 = v31[1];
        v18 = v32;
        outlined destroy of Path(v29);
        goto LABEL_27;
      }
    }

    v24 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v21);
    if (!v24)
    {

      goto LABEL_27;
    }

    v25 = *(v24 + 72);

    if (v25)
    {
      goto LABEL_25;
    }
  }

LABEL_27:
  result = v27;
  *a1 = v27;
  *(a1 + 16) = v28;
  *(a1 + 32) = v18;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(int8x16_t *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v5 = a4.n128_u64[0];
  ImplicitContainerShape.path(in:)(v18, a2, a3, a4, a5);
  v16 = v18[0];
  v17 = v18[1];
  v7 = v19;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v8 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v8)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v22);
      v10 = v22;
      v9 = v23;
      static Update.end()();
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v10 = *InputValue;
      v12 = *(InputValue + 8);

      static Update.end()();
      if (v12)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v10, v20);

        if (LOBYTE(v20[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v22 = 0xBFF0000000000000;
        v23 = 0;
        v24 = 0;
        v25 = 0x3FF0000000000000;
        v26 = v5;
        v27 = 0;
        Path.applying(_:)(&v22, v20);
        v16 = v20[0];
        v17 = v20[1];
        v7 = v21;
        outlined destroy of Path(v18);
        goto LABEL_19;
      }
    }

    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v10);
    if (!v13)
    {

      goto LABEL_19;
    }

    v14 = *(v13 + 72);

    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v16;
  *a1 = v16;
  a1[1] = v17;
  a1[2].i8[0] = v7;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>, CGFloat a4@<D4>)
{
  v29 = CGRectInset(*&a2, a4, a4);
  specialized ContainerRelativeShape.path(in:)(v19, v29.origin, *&v29.origin.y, v29.size, *&v29.size.height);
  v17 = v19[0];
  v18 = v19[1];
  v8 = v20;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v9)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v23);
      v11 = v23;
      v10 = v24;
      static Update.end()();
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v11 = *InputValue;
      v13 = *(InputValue + 8);

      static Update.end()();
      if (v13)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v11, v21);

        if (LOBYTE(v21[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v23 = 0xBFF0000000000000;
        v24 = 0;
        v25 = 0;
        v26 = 0x3FF0000000000000;
        v27 = a3;
        v28 = 0;
        Path.applying(_:)(&v23, v21);
        v17 = v21[0];
        v18 = v21[1];
        v8 = v22;
        outlined destroy of Path(v19);
        goto LABEL_19;
      }
    }

    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v11);
    if (!v14)
    {

      goto LABEL_19;
    }

    v15 = *(v14 + 72);

    if (v15)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v17;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v8;
  return result;
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  memcpy(__dst, v5, sizeof(__dst));
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;
  ConcentricRectangle.path(in:)(v27, v11, v12, v13, v14);
  v24 = v27[0];
  v25 = v27[1];
  v15 = v28;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v16 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v16)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v31);
      v18 = v31;
      v17 = v32;
      static Update.end()();
      if (v17)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v18 = *InputValue;
      v20 = *(InputValue + 8);

      static Update.end()();
      if (v20)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v18, v29);

        if (LOBYTE(v29[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v31 = 0xBFF0000000000000;
        v32 = 0;
        v33 = 0;
        v34 = 0x3FF0000000000000;
        v35 = a4;
        v36 = 0;
        Path.applying(_:)(&v31, v29);
        v24 = v29[0];
        v25 = v29[1];
        v15 = v30;
        outlined destroy of Path(v27);
        goto LABEL_19;
      }
    }

    v21 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v18);
    if (!v21)
    {

      goto LABEL_19;
    }

    v22 = *(v21 + 72);

    if (v22)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v24;
  *a1 = v24;
  a1[1] = v25;
  a1[2].n128_u8[0] = v15;
  return result;
}

double protocol witness for Shape.path(in:) in conformance CombinedContentShape@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  CombinedContentShape.path(in:)(*v5, v9, a2, a3, a4, a5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>);
    }
  }
}

__n128 specialized Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v5 = a4.n128_u64[0];
  specialized ContainerRelativeShape.path(in:)(v18, a2, a3, a4, a5);
  v16 = v18[0];
  v17 = v18[1];
  v7 = v19;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v8 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1ED53C520 < v8)
  {
    goto LABEL_19;
  }

  if (_threadGeometryProxyData())
  {
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v22);
      v10 = v22;
      v9 = v23;
      static Update.end()();
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v10 = *InputValue;
      v12 = *(InputValue + 8);

      static Update.end()();
      if (v12)
      {
LABEL_12:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v10, v20);

        if (LOBYTE(v20[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v22 = 0xBFF0000000000000;
        v23 = 0;
        v24 = 0;
        v25 = 0x3FF0000000000000;
        v26 = v5;
        v27 = 0;
        Path.applying(_:)(&v22, v20);
        v16 = v20[0];
        v17 = v20[1];
        v7 = v21;
        outlined destroy of Path(v18);
        goto LABEL_19;
      }
    }

    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v10);
    if (!v13)
    {

      goto LABEL_19;
    }

    v14 = *(v13 + 72);

    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = v16;
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v7;
  return result;
}

double (*_GrayscaleEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double _GrayscaleEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v4 = swift_allocObject();
  *v9 = a2;
  _s7SwiftUI14GraphicsFilterOWOi12_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _GrayscaleEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi12_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

void type metadata accessor for RendererVisualEffect<_GrayscaleEffect>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_GrayscaleEffect>)
  {
    v4 = type metadata accessor for RendererVisualEffect(0, &type metadata for _GrayscaleEffect, &protocol witness table for _GrayscaleEffect, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for RendererVisualEffect<_GrayscaleEffect>);
    }
  }
}

void lazy protocol witness table accessor for type RendererVisualEffect<_GrayscaleEffect> and conformance RendererVisualEffect<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_GrayscaleEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_GrayscaleEffect>(255, a2, a3, a4);
    swift_getWitnessTable(protocol conformance descriptor for RendererVisualEffect<A>, v6, v4, v5);
    atomic_store(v7, &lazy protocol witness table cache variable for type RendererVisualEffect<_GrayscaleEffect> and conformance RendererVisualEffect<A>);
  }
}

uint64_t AnchorGeometry.init(position:size:transform:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double AnchorGeometry.transform.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  result = *v9;
  v11 = v9[1];
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 32) = v7 - (result - v5);
  *(a1 + 40) = v8 - (v11 - v6);
  *(a1 + 16) = result;
  *(a1 + 24) = v11;
  return result;
}

uint64_t Anchor.as<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[6] = (*(*a2 + 104))(a1, a4);
  v13[2] = a3;
  v13[3] = a4;
  type metadata accessor for AnchorValueBoxBase(255, a4, v6, v7);
  type metadata accessor for Optional();
  v10 = type metadata accessor for Anchor(0, a4, v8, v9);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in DynamicTextView.TextManager.resolve(in:for:), v13, MEMORY[0x1E69E73E0], v10, v11, &v14);

  return v14;
}

Swift::Int Anchor<A>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> Anchor<A>(uint64_t a1)
{
  Hasher.init(_seed:)();
  Anchor<A>.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t static AnchorProtocol<>.outputValue(anchorValue:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t Anchor.Source.init<A>(anchor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnchorBox(0, v8, v9, v9);
  (*(v5 + 16))(v7, a1, a3);
  v10 = AnchorBox.__allocating_init(_:)(v7);
  (*(v5 + 8))(a1, a3);
  return v10;
}

uint64_t AnchorValueBox.defaultValue.getter()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v1 + 32))(v2, v1, v5);
  (*(v1 + 48))(v7, v2, v1);
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t AnchorValueBox.as<A>(type:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18 - v10;
  result = 0;
  if (AssociatedTypeWitness == a2)
  {
    v13 = type metadata accessor for AnchorValueShim(255, v6, v5, v9);
    swift_getWitnessTable("\\6\a", v13);
    type metadata accessor for AnchorValueBox(0, v13, v14, v15);
    (*(v8 + 16))(v11, v2 + *(v4 + 152), AssociatedTypeWitness);
    swift_allocObject();
    AnchorValueBox.init(_:)(v11);
    type metadata accessor for AnchorValueBoxBase(0, a2, v16, v17);
    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

uint64_t AnchorValueBox.__ivar_destroyer()
{
  v1 = *(*v0 + 152);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

uint64_t ArrayAnchorBox.prepare(geometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(*v4 + 104);
  type metadata accessor for ArrayAnchorValueBox(0, v7, a3, a4);
  v20 = v4[2];
  v18[2] = v7;
  v18[3] = *a1;
  v19 = v6;
  type metadata accessor for Anchor.Source(255, v7, v8, v9);
  v10 = type metadata accessor for Array();
  v13 = type metadata accessor for Anchor(0, v7, v11, v12);

  swift_getWitnessTable(MEMORY[0x1E69E6340], v10);
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayAnchorBox.prepare(geometry:), v18, v10, v13, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

  result = swift_allocObject();
  *(result + 16) = v16;
  return result;
}

uint64_t ArrayAnchorValueBox.defaultValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v13 = v4[2];
  v12 = *(v5 + 136);
  type metadata accessor for Anchor(255, v12, a3, a4);
  v6 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6340], v6);
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayAnchorValueBox.defaultValue.getter, &v11, v6, v12, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);

  return v9;
}

uint64_t ArrayAnchorValueBox.convert(to:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v16[2] = a1[2];
  v15 = v4[2];
  v13 = *(v5 + 136);
  v14 = v16;
  type metadata accessor for Anchor(255, v13, a3, a4);
  v7 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6340], v7);
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayAnchorValueBox.convert(to:), &v12, v7, v13, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);

  return v10;
}

void ArrayAnchorValueBox.isEqual(to:)(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v6 = *(v3 + 16);
    v7 = type metadata accessor for Anchor(0, *(v2 + 136), v4, v5);

    v8 = MEMORY[0x193ABF270](v6, v7);
    v9 = v1[2];
    if (v8 == MEMORY[0x193ABF270](v9, v7))
    {
      v10 = type metadata accessor for Array();
      swift_getWitnessTable(MEMORY[0x1E69E6338], v10);
      RandomAccessCollection<>.indices.getter();
      if (v15 <= v14)
      {
        v11 = v14;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14;
      while (1)
      {
        if (v15 == v12)
        {

          return;
        }

        if (v15 < v14)
        {
          break;
        }

        if (v11 == v12)
        {
          goto LABEL_15;
        }

        Array.subscript.getter();
        Array.subscript.getter();
        v13 = (*(*v14 + 112))(v9);

        ++v12;
        if ((v13 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_11:
    }
  }
}

double ArrayAnchorValueBox.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = type metadata accessor for Anchor(0, *(*v4 + 136), a3, a4);

  if (MEMORY[0x193ABF2C0](v8, v7))
  {
    v9 = 4;
    do
    {
      v10 = v9 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v12 = *(v6 + 8 * v9);

        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = _ArrayBuffer._getElementSlowPath(_:)();
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v14 = *(*v12 + 120);

      v14(a1);

      ++v9;
    }

    while (v13 != MEMORY[0x193ABF2C0](v6, v7));
  }

  return result;
}

uint64_t vtable thunk for AnchorValueBoxBase.defaultValue.getter dispatching to ArrayAnchorValueBox.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = ArrayAnchorValueBox.defaultValue.getter(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t vtable thunk for AnchorValueBoxBase.convert(to:) dispatching to ArrayAnchorValueBox.convert(to:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = ArrayAnchorValueBox.convert(to:)(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

double OptionalAnchorValueBox.defaultValue.getter@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v10 = v3[2];
  v9 = *(v5 + 136);
  type metadata accessor for Anchor(255, v9, a1, a2);
  type metadata accessor for Optional();

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in OptionalAnchorValueBox.defaultValue.getter, &v8, MEMORY[0x1E69E73E0], v9, v6, a3);

  return result;
}

double OptionalAnchorValueBox.convert(to:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v14[2] = a1[2];
  v13 = v4[2];
  v11 = *(v6 + 136);
  v12 = v14;
  type metadata accessor for Anchor(255, v11, a2, a3);
  type metadata accessor for Optional();

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in OptionalAnchorValueBox.convert(to:), &v10, MEMORY[0x1E69E73E0], v11, v8, a4);

  return result;
}

uint64_t OptionalAnchorValueBox.as<A>(type:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    return (*(*v3 + 104))(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t OptionalAnchorValueBox.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *(v1 + 16);
    v4 = *(result + 16);
    result = (v3 | v4) == 0;
    if (v3)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = *(*v3 + 112);

      LOBYTE(v6) = v6(v7);

      return v6 & 1;
    }
  }

  return result;
}

uint64_t OptionalAnchorValueBox.hash(into:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return (*(*v1 + 120))();
  }

  return result;
}

uint64_t partial apply for closure #1 in OptionalAnchorValueBox.convert(to:)(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v6[2] = v2[2];
  return (*(*v3 + 96))(v6);
}

{
  return partial apply for closure #1 in ArrayAnchorValueBox.convert(to:)(a1);
}

uint64_t partial apply for closure #1 in OptionalAnchorValueBox.defaultValue.getter(uint64_t a1)
{
  return (*(**a1 + 88))();
}

{
  return partial apply for closure #1 in ArrayAnchorValueBox.defaultValue.getter(a1);
}

uint64_t partial apply for closure #1 in OptionalAnchorBox.prepare(geometry:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  v7 = *(v2 + 24);
  v8 = v4;
  result = Anchor.Source.prepare(geometry:)(&v7, v5);
  *a2 = result;
  return result;
}

{
  return partial apply for closure #1 in ArrayAnchorBox.prepare(geometry:)(a1, a2);
}

void _Rotation3DEffect.Data.transform.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  v22 = v1[8];
  v11 = MEMORY[0x1E69792E8];
  v12 = *(MEMORY[0x1E69792E8] + 80);
  *&a.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&a.m33 = v12;
  v28 = *&a.m31;
  v13 = *(MEMORY[0x1E69792E8] + 112);
  v14 = -1.0 / v9;
  *&a.m41 = *(MEMORY[0x1E69792E8] + 96);
  v29 = *&a.m41;
  *&a.m43 = v13;
  v15 = *(MEMORY[0x1E69792E8] + 16);
  v27 = v13;
  *&a.m11 = *MEMORY[0x1E69792E8];
  v26 = *&a.m11;
  *&a.m13 = v15;
  v25 = v15;
  v23 = *(MEMORY[0x1E69792E8] + 48);
  *&a.m21 = *(MEMORY[0x1E69792E8] + 32);
  v24 = *&a.m21;
  *&a.m23 = v23;
  CATransform3DTranslate(&b, &a, v7, v8, v10);
  *&a.m21 = v24;
  *&a.m23 = v23;
  *&a.m31 = v28;
  a.m33 = *(v11 + 80);
  *&a.m11 = v26;
  *&a.m13 = v25;
  a.m34 = v14;
  *&a.m41 = v29;
  *&a.m43 = v27;
  CATransform3DConcat(&v30, &a, &b);
  CATransform3DRotate(&a, &v30, v3, v4, v5, v6);
  CATransform3DTranslate(&b, &a, -v7, -v8, -v10);
  v16 = *&b.m11;
  v17 = *&b.m14;
  m22 = b.m22;
  m24 = b.m24;
  v20 = *&b.m41;
  m44 = b.m44;
  *&b.m13 = *&b.m14;
  b.m21 = b.m22;
  b.m22 = b.m24;
  *&b.m23 = *&b.m41;
  b.m31 = b.m44;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    a.m11 = -1.0;
    memset(&a.m12, 0, 24);
    *&a.m21 = xmmword_18DDAA020;
    a.m23 = v22;
    *&a.m24 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&b, v33);
    v30.m11 = -1.0;
    memset(&v30.m12, 0, 24);
    *&v30.m21 = xmmword_18DDAA020;
    v30.m23 = v22;
    *&v30.m24 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&v30, v34);
    v16 = v34[0];
    v17 = v34[1];
    m22 = v35;
    m24 = v36;
    v20 = v37;
    m44 = v38;
  }

  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = m22;
  *(a1 + 40) = m24;
  *(a1 + 48) = v20;
  *(a1 + 64) = m44;
}

void _Rotation3DEffect.axis.setter(double a1, double a2, double a3)
{
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
}

void _Rotation3DEffect.Data.axis.setter(double a1, double a2, double a3)
{
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
}

void _Rotation3DEffect.Data.anchor.setter(double a1, double a2, double a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
}

double _Rotation3DEffect.Data.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x7FF8000000000000;
  return result;
}

double _Rotation3DEffect.Data.init(_:size:layoutDirection:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, float64x2_t a4@<Q0>, float64_t a5@<D1>)
{
  v5 = *a2;
  if (a4.f64[0] > a5)
  {
    v6 = a4.f64[0];
  }

  else
  {
    v6 = a5;
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v9;
  v10 = NAN;
  if (v5)
  {
    v10 = a4.f64[0];
  }

  a4.f64[1] = a5;
  *(a3 + 32) = vmulq_f64(*(a1 + 32), a4);
  result = v6 / v8;
  *(a3 + 48) = v7;
  *(a3 + 56) = v6 / v8;
  *(a3 + 64) = v10;
  return result;
}

__n128 _Rotation3DEffect.effectValue(size:)@<Q0>(uint64_t a1@<X8>)
{
  _Rotation3DEffect.Data.transform.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

float64_t _Rotation3DEffect.animatableData.getter@<D0>(float64x2_t *a1@<X8>)
{
  result = v1[3].f64[0];
  v3 = vdupq_n_s64(0x4060000000000000uLL);
  v4 = v1[3].f64[1] * 128.0;
  v5 = vmulq_f64(v1[1], v3);
  *a1 = vmulq_f64(*v1, v3);
  a1[1] = v5;
  a1[2] = vmulq_f64(v1[2], v3);
  a1[3].f64[0] = result;
  a1[3].f64[1] = v4;
  return result;
}

float64_t _Rotation3DEffect.animatableData.setter(float64x2_t *a1)
{
  result = a1[3].f64[0];
  v3 = a1[3].f64[1];
  v4 = vdupq_n_s64(0x3F80000000000000uLL);
  v5 = vmulq_f64(a1[1], v4);
  *v1 = vmulq_f64(*a1, v4);
  v1[1] = v5;
  v1[2] = vmulq_f64(a1[2], v4);
  v1[3].f64[0] = result;
  v1[3].f64[1] = v3 * 0.0078125;
  return result;
}

uint64_t (*_Rotation3DEffect.animatableData.modify(float64x2_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  v4 = vdupq_n_s64(0x4060000000000000uLL);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56) * 128.0;
  v7 = vmulq_f64(*v1, v4);
  v8 = vmulq_f64(*(v1 + 16), v4);
  v9 = vmulq_f64(*(v1 + 32), v4);
  *v3 = v7;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  return _Rotation3DEffect.animatableData.modify;
}

BOOL static _Rotation3DEffect.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3 && a1[4] == a2[4] && a1[5] == a2[5] && a1[6] == a2[6]))
  {
    return a1[7] == a2[7];
  }

  else
  {
    return 0;
  }
}

__n128 static _Rotation3DEffect.resolve(effect:origin:size:layoutDirection:)@<Q0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v7 = *(a1 + 32) * a4;
  v8 = *(a1 + 40) * a5;
  if (a4 > a5)
  {
    a5 = a4;
  }

  if (*a2)
  {
    v9 = a4;
  }

  else
  {
    v9 = NAN;
  }

  v10 = *(a1 + 48);
  v11 = a5 / *(a1 + 56);
  v12 = swift_allocObject();
  result = *a1;
  v14 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v14;
  *(v12 + 48) = v7;
  *(v12 + 56) = v8;
  *(v12 + 64) = v10;
  *(v12 + 72) = v11;
  *(v12 + 80) = v9;
  *(v12 + 88) = 3;
  *a3 = v12;
  *(a3 + 8) = 0;
  *(a3 + 12) = 9;
  return result;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _Rotation3DEffect@<Q0>(uint64_t a1@<X8>)
{
  _Rotation3DEffect.effectValue(size:)(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _Rotation3DEffect(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1] && a1[3].f64[0] == a2[3].f64[0])
  {
    return a1[3].f64[1] == a2[3].f64[1];
  }

  return result;
}

float64_t protocol witness for Animatable.animatableData.getter in conformance _Rotation3DEffect@<D0>(float64x2_t *a1@<X8>)
{
  result = v1[3].f64[0];
  v3 = vdupq_n_s64(0x4060000000000000uLL);
  v4 = v1[3].f64[1] * 128.0;
  v5 = vmulq_f64(v1[1], v3);
  *a1 = vmulq_f64(*v1, v3);
  a1[1] = v5;
  a1[2] = vmulq_f64(v1[2], v3);
  a1[3].f64[0] = result;
  a1[3].f64[1] = v4;
  return result;
}

float64_t protocol witness for Animatable.animatableData.setter in conformance _Rotation3DEffect(float64x2_t *a1)
{
  result = a1[3].f64[0];
  v3 = a1[3].f64[1];
  v4 = vdupq_n_s64(0x3F80000000000000uLL);
  v5 = vmulq_f64(a1[1], v4);
  *v1 = vmulq_f64(*a1, v4);
  v1[1] = v5;
  v1[2] = vmulq_f64(a1[2], v4);
  v1[3].f64[0] = result;
  v1[3].f64[1] = v3 * 0.0078125;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _Rotation3DEffect(float64x2_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  v4 = vdupq_n_s64(0x4060000000000000uLL);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56) * 128.0;
  v7 = vmulq_f64(*v1, v4);
  v8 = vmulq_f64(*(v1 + 16), v4);
  v9 = vmulq_f64(*(v1 + 32), v4);
  *v3 = v7;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  return protocol witness for Animatable.animatableData.modify in conformance _Rotation3DEffect;
}

double _Rotation3DEffect.animatableData.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 64);
  v3 = *(v1 + 48);
  v4 = vdupq_n_s64(0x3F80000000000000uLL);
  v5 = *(v1 + 56) * 0.0078125;
  v6 = vmulq_f64(*v1, v4);
  v7 = vmulq_f64(*(v1 + 16), v4);
  v8 = vmulq_f64(*(v1 + 32), v4);
  *v2 = v6;
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  *(v2 + 48) = v3;
  *(v2 + 56) = v5;
  free(v1);
  return result;
}

uint64_t VisualEffect.rotation3DEffect(_:axis:anchor:anchorZ:perspective:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, uint64_t a11@<X8>)
{
  *v15 = a3;
  *&v15[1] = a4;
  *&v15[2] = a5;
  *&v15[3] = a6;
  *&v15[4] = a7;
  *&v15[5] = a8;
  *&v15[6] = a9;
  *&v15[7] = a10;
  lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect();
  return VisualEffect.geometryEffect<A>(_:)(v15, a1, &type metadata for _Rotation3DEffect, a2, a11);
}

void *_Rotation3DEffect.Data.encode(to:)(void *result)
{
  v2 = v1;
  v3 = result;
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v39 = v2[8];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v12 = v3[1];
    result = (v12 + 8);
    if (__OFADD__(v12, 8))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v3[2] < result)
    {
      goto LABEL_83;
    }

    v3[1] = result;
    *(*v3 + v12) = v4;
  }

  while (1)
  {
    *&v4 = v5;
    if (*&v4 == 0.0)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v13 = v3[1];
    result = (v13 + 4);
    if (!__OFADD__(v13, 4))
    {
      if (v3[2] >= result)
      {
        v3[1] = result;
        *(*v3 + v13) = LODWORD(v4);
        goto LABEL_9;
      }

      goto LABEL_85;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v4;
  }

  while (1)
  {
LABEL_9:
    *&v4 = v7;
    if (*&v4 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v14 = v3[1];
      result = (v14 + 4);
      if (__OFADD__(v14, 4))
      {
        goto LABEL_82;
      }

      if (v3[2] < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = LODWORD(v4);
      }

      else
      {
        v3[1] = result;
        *(*v3 + v14) = LODWORD(v4);
      }
    }

    *&v4 = v6;
    if (*&v4 == 0.0)
    {
      goto LABEL_17;
    }

    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v15 = v3[1];
    result = (v15 + 4);
    if (!__OFADD__(v15, 4))
    {
      break;
    }

    __break(1u);
LABEL_85:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v4);
  }

  if (v3[2] >= result)
  {
    v3[1] = result;
    *(*v3 + v15) = LODWORD(v4);
LABEL_17:
    if (v9 == 0.0)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  result = ProtobufEncoder.growBufferSlow(to:)(result);
  *result = LODWORD(v4);
  if (v9 == 0.0)
  {
    goto LABEL_28;
  }

LABEL_18:
  v16 = fabs(v9);
  if (v16 >= 65536.0)
  {
    v17 = 41;
  }

  else
  {
    v17 = 45;
  }

  ProtobufEncoder.encodeVarint(_:)(v17);
  if (v16 >= 65536.0)
  {
    v19 = v3[1];
    result = (v19 + 8);
    if (!__OFADD__(v19, 8))
    {
      if (v3[2] < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v9;
      }

      else
      {
        v3[1] = result;
        *(*v3 + v19) = v9;
      }

      goto LABEL_28;
    }

LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v18 = v3[1];
  result = (v18 + 4);
  if (__OFADD__(v18, 4))
  {
    __break(1u);
    goto LABEL_94;
  }

  *&v16 = v9;
  if (v3[2] < result)
  {
    goto LABEL_99;
  }

  v3[1] = result;
  *(*v3 + v18) = LODWORD(v16);
  while (1)
  {
LABEL_28:
    if (v8 == 0.0)
    {
      goto LABEL_39;
    }

    v16 = fabs(v8);
    v20 = v16 >= 65536.0 ? 49 : 53;
    ProtobufEncoder.encodeVarint(_:)(v20);
    if (v16 >= 65536.0)
    {
      break;
    }

    v21 = v3[1];
    result = (v21 + 4);
    if (!__OFADD__(v21, 4))
    {
      *&v22 = v8;
      if (v3[2] >= result)
      {
        v3[1] = result;
        *(*v3 + v21) = LODWORD(v22);
        goto LABEL_39;
      }

      goto LABEL_103;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v16);
  }

  v23 = v3[1];
  result = (v23 + 8);
  if (__OFADD__(v23, 8))
  {
    goto LABEL_96;
  }

  if (v3[2] < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v8;
  }

  else
  {
    v3[1] = result;
    *(*v3 + v23) = v8;
  }

  while (1)
  {
LABEL_39:
    if (v11 != 0.0)
    {
      v16 = fabs(v11);
      v8 = 65536.0;
      if (v16 >= 65536.0)
      {
        v24 = 57;
      }

      else
      {
        v24 = 61;
      }

      ProtobufEncoder.encodeVarint(_:)(v24);
      if (v16 >= 65536.0)
      {
        v27 = v3[1];
        result = (v27 + 8);
        if (__OFADD__(v27, 8))
        {
          goto LABEL_98;
        }

        if (v3[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v11;
        }

        else
        {
          v3[1] = result;
          *(*v3 + v27) = v11;
        }
      }

      else
      {
        v25 = v3[1];
        result = (v25 + 4);
        if (__OFADD__(v25, 4))
        {
          goto LABEL_97;
        }

        v26 = v11;
        if (v3[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v26;
        }

        else
        {
          v3[1] = result;
          *(*v3 + v25) = v26;
        }
      }
    }

    if (v10 == 0.0)
    {
      break;
    }

    v22 = fabs(v10);
    v11 = 65536.0;
    if (v22 >= 65536.0)
    {
      v28 = 65;
    }

    else
    {
      v28 = 69;
    }

    ProtobufEncoder.encodeVarint(_:)(v28);
    if (v22 >= 65536.0)
    {
      v31 = v3[1];
      result = (v31 + 8);
      if (!__OFADD__(v31, 8))
      {
        if (v3[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v10;
        }

        else
        {
          v3[1] = result;
          *(*v3 + v31) = v10;
        }

        break;
      }
    }

    else
    {
      v29 = v3[1];
      result = (v29 + 4);
      if (!__OFADD__(v29, 4))
      {
        v30 = v10;
        if (v3[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v30;
        }

        else
        {
          v3[1] = result;
          *(*v3 + v29) = v30;
        }

        break;
      }

      __break(1u);
    }

    __break(1u);
LABEL_103:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v22);
  }

  v32 = *&v39 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000 || v32 == 0x7FF0000000000000 || v32 == 0)
  {
    return result;
  }

  v35 = fabs(v39);
  if (v35 >= 65536.0)
  {
    v36 = 73;
  }

  else
  {
    v36 = 77;
  }

  ProtobufEncoder.encodeVarint(_:)(v36);
  if (v35 >= 65536.0)
  {
    v38 = v3[1];
    result = (v38 + 8);
    if (!__OFADD__(v38, 8))
    {
      if (v3[2] < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
      }

      else
      {
        v3[1] = result;
        result = (*v3 + v38);
      }

      *result = v39;
      return result;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v37 = v3[1];
  result = (v37 + 4);
  if (__OFADD__(v37, 4))
  {
    __break(1u);
    goto LABEL_90;
  }

  *&v35 = v39;
  if (v3[2] >= result)
  {
    v3[1] = result;
    *(*v3 + v37) = LODWORD(v35);
    return result;
  }

LABEL_91:
  result = ProtobufEncoder.growBufferSlow(to:)(result);
  *result = LODWORD(v35);
  return result;
}

unint64_t _Rotation3DEffect.Data.init(from:)@<X0>(unint64_t result@<X0>, double *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v42 = 0.0;
    v8 = 0.0;
    v7 = NAN;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
LABEL_4:
    v3[3] = 0;
    *a2 = v42;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v11;
    a2[5] = v12;
    a2[6] = v13;
    a2[7] = v14;
    a2[8] = v7;
    return result;
  }

  v42 = 0.0;
  v7 = NAN;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v15 = v3[4];
      if (v5 < v15)
      {
        goto LABEL_15;
      }

      if (v15 < v5)
      {
        goto LABEL_138;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_138:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_15:
    v16 = result >> 3;
    v17 = result & 7;
    if (result >> 3 > 4)
    {
      if (result >> 3 <= 6)
      {
        if (v16 == 5)
        {
          if (v17 != 5)
          {
            if (v17 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_147;
              }

              v25 = v3[1];
              if (v6 < v25 + result)
              {
                goto LABEL_138;
              }

              v3[3] = 41;
              v3[4] = v25 + result;
            }

            else
            {
              if (v17 != 1)
              {
                goto LABEL_138;
              }

              v25 = v3[1];
            }

            v5 = (v25 + 1);
            if (v6 < (v25 + 1))
            {
              goto LABEL_138;
            }

            v11 = *v25;
            goto LABEL_7;
          }

          v36 = v3[1];
          v5 = (v36 + 1);
          if (v6 < (v36 + 1))
          {
            goto LABEL_138;
          }

          v37 = *v36;
          v3[1] = v5;
          v11 = v37;
        }

        else
        {
          if (v16 != 6)
          {
LABEL_60:
            if ((result & 7) > 1)
            {
              if (v17 == 2)
              {
                result = ProtobufDecoder.decodeVarint()(result);
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_149;
                }

                v5 = v3[1] + result;
                if (v6 < v5)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                if (v17 != 5)
                {
                  goto LABEL_138;
                }

                v5 = v3[1] + 4;
                if (v6 < v5)
                {
                  goto LABEL_138;
                }
              }
            }

            else
            {
              if ((result & 7) == 0)
              {
                result = ProtobufDecoder.decodeVarint()(result);
                if (v2)
                {
                  return result;
                }

                v5 = v3[1];
                goto LABEL_8;
              }

              if (v17 != 1)
              {
                goto LABEL_138;
              }

              v5 = v3[1] + 8;
              if (v6 < v5)
              {
                goto LABEL_138;
              }
            }

LABEL_7:
            v3[1] = v5;
            goto LABEL_8;
          }

          if (v17 != 5)
          {
            if (v17 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_146;
              }

              v21 = v3[1];
              if (v6 < v21 + result)
              {
                goto LABEL_138;
              }

              v3[3] = 49;
              v3[4] = v21 + result;
            }

            else
            {
              if (v17 != 1)
              {
                goto LABEL_138;
              }

              v21 = v3[1];
            }

            v5 = (v21 + 1);
            if (v6 < (v21 + 1))
            {
              goto LABEL_138;
            }

            v12 = *v21;
            goto LABEL_7;
          }

          v30 = v3[1];
          v5 = (v30 + 1);
          if (v6 < (v30 + 1))
          {
            goto LABEL_138;
          }

          v31 = *v30;
          v3[1] = v5;
          v12 = v31;
        }
      }

      else
      {
        switch(v16)
        {
          case 7uLL:
            if (v17 != 5)
            {
              if (v17 == 2)
              {
                result = ProtobufDecoder.decodeVarint()(result);
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_145;
                }

                v24 = v3[1];
                if (v6 < v24 + result)
                {
                  goto LABEL_138;
                }

                v3[3] = 57;
                v3[4] = v24 + result;
              }

              else
              {
                if (v17 != 1)
                {
                  goto LABEL_138;
                }

                v24 = v3[1];
              }

              v5 = (v24 + 1);
              if (v6 < (v24 + 1))
              {
                goto LABEL_138;
              }

              v13 = *v24;
              goto LABEL_7;
            }

            v34 = v3[1];
            v5 = (v34 + 1);
            if (v6 < (v34 + 1))
            {
              goto LABEL_138;
            }

            v35 = *v34;
            v3[1] = v5;
            v13 = v35;
            break;
          case 8uLL:
            if (v17 != 5)
            {
              if (v17 == 2)
              {
                result = ProtobufDecoder.decodeVarint()(result);
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_144;
                }

                v26 = v3[1];
                if (v6 < v26 + result)
                {
                  goto LABEL_138;
                }

                v3[3] = 65;
                v3[4] = v26 + result;
              }

              else
              {
                if (v17 != 1)
                {
                  goto LABEL_138;
                }

                v26 = v3[1];
              }

              v5 = (v26 + 1);
              if (v6 < (v26 + 1))
              {
                goto LABEL_138;
              }

              v14 = *v26;
              goto LABEL_7;
            }

            v40 = v3[1];
            v5 = (v40 + 1);
            if (v6 < (v40 + 1))
            {
              goto LABEL_138;
            }

            v41 = *v40;
            v3[1] = v5;
            v14 = v41;
            break;
          case 9uLL:
            if (v17 != 5)
            {
              if (v17 == 2)
              {
                result = ProtobufDecoder.decodeVarint()(result);
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_143;
                }

                v18 = v3[1];
                if (v6 < v18 + result)
                {
                  goto LABEL_138;
                }

                v3[3] = 73;
                v3[4] = v18 + result;
              }

              else
              {
                if (v17 != 1)
                {
                  goto LABEL_138;
                }

                v18 = v3[1];
              }

              v5 = (v18 + 1);
              if (v6 < (v18 + 1))
              {
                goto LABEL_138;
              }

              v7 = *v18;
              goto LABEL_7;
            }

            v38 = v3[1];
            v5 = (v38 + 1);
            if (v6 < (v38 + 1))
            {
              goto LABEL_138;
            }

            v39 = *v38;
            v3[1] = v5;
            v7 = v39;
            break;
          default:
            goto LABEL_60;
        }
      }

      goto LABEL_8;
    }

    if (result >> 3 > 2)
    {
      break;
    }

    if (v16 == 1)
    {
      if (v17 != 5)
      {
        if (v17 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_148;
          }

          v22 = v3[1];
          if (v6 < v22 + result)
          {
            goto LABEL_138;
          }

          v3[3] = 9;
          v3[4] = v22 + result;
        }

        else
        {
          if (v17 != 1)
          {
            goto LABEL_138;
          }

          v22 = v3[1];
        }

        v5 = (v22 + 1);
        if (v6 < (v22 + 1))
        {
          goto LABEL_138;
        }

        v42 = *v22;
        goto LABEL_7;
      }

      v32 = v3[1];
      v5 = (v32 + 1);
      if (v6 < (v32 + 1))
      {
        goto LABEL_138;
      }

      v33 = *v32;
      v3[1] = v5;
      v42 = v33;
    }

    else
    {
      if (v16 != 2)
      {
        goto LABEL_60;
      }

      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_142;
        }

        v19 = v3[1];
        if (v6 < v19 + result)
        {
          goto LABEL_138;
        }

        v3[3] = 21;
        v3[4] = v19 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_138;
        }

        v19 = v3[1];
      }

      v5 = (v19 + 1);
      if (v6 < (v19 + 1))
      {
        goto LABEL_138;
      }

      v27 = *v19;
      v3[1] = v5;
      v8 = v27;
    }

LABEL_8:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v16 == 3)
  {
    if (v17 == 2)
    {
      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      v23 = v3[1];
      if (v6 < v23 + result)
      {
        goto LABEL_138;
      }

      v3[3] = 29;
      v3[4] = v23 + result;
    }

    else
    {
      if (v17 != 5)
      {
        goto LABEL_138;
      }

      v23 = v3[1];
    }

    v5 = (v23 + 1);
    if (v6 < (v23 + 1))
    {
      goto LABEL_138;
    }

    v29 = *v23;
    v3[1] = v5;
    v9 = v29;
    goto LABEL_8;
  }

  if (v16 != 4)
  {
    goto LABEL_60;
  }

  if (v17 != 2)
  {
    if (v17 != 5)
    {
      goto LABEL_138;
    }

    v20 = v3[1];
LABEL_79:
    v5 = (v20 + 1);
    if (v6 < (v20 + 1))
    {
      goto LABEL_138;
    }

    v28 = *v20;
    v3[1] = v5;
    v10 = v28;
    goto LABEL_8;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v20 = v3[1];
    if (v6 < v20 + result)
    {
      goto LABEL_138;
    }

    v3[3] = 37;
    v3[4] = v20 + result;
    goto LABEL_79;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for GeometryVisualEffect<_Rotation3DEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryVisualEffect<_Rotation3DEffect>)
  {
    lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect();
    v4 = type metadata accessor for GeometryVisualEffect(a1, &type metadata for _Rotation3DEffect, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for GeometryVisualEffect<_Rotation3DEffect>);
    }
  }
}

BOOL LayoutDirectionBehavior.shouldFlip(in:)(void (*a1)(uint64_t *__return_ptr))
{
  v2 = *v1;
  result = 0;
  if (v2 != 2)
  {
    a1(&v4);
    if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL static LayoutDirectionBehavior.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t LayoutDirectionBehavior.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x193AC11A0](v2);
}

Swift::Int LayoutDirectionBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x193AC11A0](1);
    v2 = v1 & 1;
  }

  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LayoutDirectionBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x193AC11A0](1);
    v2 = v1 & 1;
  }

  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LayoutDirectionBehavior()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x193AC11A0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LayoutDirectionBehavior(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    v3 = v2 & 1;
  }

  MEMORY[0x193AC11A0](v3);
  return Hasher._finalize()();
}

void lazy protocol witness table accessor for type LayoutDirectionBehavior and conformance LayoutDirectionBehavior()
{
  if (!lazy protocol witness table cache variable for type LayoutDirectionBehavior and conformance LayoutDirectionBehavior)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutDirectionBehavior, &type metadata for LayoutDirectionBehavior, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutDirectionBehavior and conformance LayoutDirectionBehavior);
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LayoutDirectionBehavior(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t getEnumTagSinglePayload for LayoutDirectionBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LayoutDirectionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for LayoutDirectionBehavior(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for LayoutDirectionBehavior(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

double static GlassEffectZIndexModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v20 = *a2;
  v21 = v5;
  v22 = a2[2];
  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  v25 = *(a2 + 60);
  v26 = *(a2 + 76);
  v23 = v6;
  v24 = v7;
  a3(&v18);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v6))
  {
    *&v20 = AGGraphCreateOffsetAttribute2();
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for (_:)();
    lazy protocol witness table accessor for type ZIndexTransform and conformance ZIndexTransform();
    v8 = Attribute.init<A>(body:value:flags:update:)();
    *&v20 = v6;
    v9 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
    v10 = *(v6 + 16);
    if (v9 != v10)
    {
      if (v9 >= v10)
      {
        __break(1u);
      }

      if (*(v6 + 16 * v9 + 32) == &type metadata for GlassContainer.Item.Key)
      {
        v11 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(v18);
        v12 = *MEMORY[0x1E698D3F8];
        if ((v11 & 0x100000000) == 0)
        {
          v12 = v11;
        }

        *&v20 = __PAIR64__(v12, v8);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [GlassContainer.Item]();
        type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>(0, v13, v14, v15);
        lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
        v16 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v20) = 0;
        PreferencesOutputs.subscript.setter(v16, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
      }
    }
  }

  *a4 = v18;
  result = v19;
  a4[1] = v19;
  return result;
}

void ZIndexTransform.updateValue()()
{
  v1 = *AGGraphGetValue();
  if ((v2 & 1) != 0 || (type metadata accessor for (_:)(), !AGGraphGetOutputValue()))
  {
    v3 = *(v0 + 4) + 1;
    *(v0 + 4) = v3;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    type metadata accessor for (_:)();
    AGGraphSetOutputValue();
  }
}

char *closure #1 in ZIndexTransform.updateValue()(char *result, unsigned int a2, double a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v7 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
    }

    v9 = (v3 + 152);
    do
    {
      v9[8] = a3;
      *(v9 + 72) = 0;
      v10 = *v9;
      if (v10 != -1 && a2 != 0)
      {
        if (v10)
        {
          v12 = a2 == -1;
        }

        else
        {
          v12 = 1;
        }

        v13 = a2;
        if (!v12)
        {
          v8 = ~(a2 << 32) + a2;
          v14 = (v8 + (v10 << 32)) ^ ((v8 + (v10 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v13 = (v16 >> 31) ^ v16;
        }

        *v9 = v13;
      }

      v9 += 82;
      --v4;
    }

    while (v4);
    *v7 = v3;
  }

  return result;
}

void type metadata accessor for [GlassContainer.Item]()
{
  if (!lazy cache variable for type metadata for [GlassContainer.Item])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [GlassContainer.Item]);
    }
  }
}

void lazy protocol witness table accessor for type ZIndexTransform and conformance ZIndexTransform()
{
  if (!lazy protocol witness table cache variable for type ZIndexTransform and conformance ZIndexTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for ZIndexTransform, &unk_1F0063150, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ZIndexTransform and conformance ZIndexTransform);
  }
}

uint64_t initializeWithCopy for _HoverEffectContentInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 22);
  *(a1 + 92) = *(a2 + 92);

  return a1;
}

uint64_t *assignWithCopy for _HoverEffectContentInputs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[5] = a2[5];

  a1[6] = a2[6];

  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 92) = *(a2 + 92);
  return a1;
}

__n128 __swift_memcpy93_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t *assignWithTake for _HoverEffectContentInputs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 3) = *(a2 + 3);

  *(a1 + 5) = *(a2 + 5);

  *(a1 + 7) = *(a2 + 7);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 92) = *(a2 + 92);
  return a1;
}

uint64_t getEnumTagSinglePayload for _HoverEffectContentInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 93))
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

uint64_t storeEnumTagSinglePayload for _HoverEffectContentInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 93) = 1;
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

    *(result + 93) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double (*_OpacityEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

float _OpacityEffect.effectValue(size:)@<S0>(uint64_t a1@<X8>, double a2@<D2>)
{
  result = a2;
  *a1 = LODWORD(result);
  *(a1 + 8) = 0;
  *(a1 + 12) = 4;
  return result;
}

id specialized static _OpacityEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void *a4@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v33 = a2[2];
  v34 = v7;
  v35 = a2[4];
  v36 = *(a2 + 20);
  v8 = a2[1];
  v31 = *a2;
  v32 = v8;
  v9 = v7;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v7))
  {
    v24[0] = v6;
    v10 = a2[1];
    v25 = *a2;
    v26 = v10;
    v27 = a2[2];
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14_OpacityEffectV_Tt1B5(v24, &v25);
    return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA08_OpacityD0V_Tt3B503_s7a5UI14_nd3V9_e32View8modifier6inputs4bodyAA01_F7j6VAA11_kl6VyACG_s3_F6M29VAiA01_K0V_ANtctFZAiP_ANtcfU_ApnIIegnnr_AKyARGTf1nnnc_n0oa24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e14E04view6inputss3_E7ju1_klv9ACyxq_GG_s3_E6m6VtFZAjz13_K0V_APtcfU0_s7_ef1_D0v72AA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_nD4VTG5AKyAA15ModifiedContentVyAA01_I16Modifier_ContentVyAA28GlassTransitionStateModifier33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGARGGTf1nnncn_n(v24[0], &v31, v6, a4);
  }

  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v31, v23);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v9))
  {
    v12 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v23[0]);
    type metadata accessor for OpacityViewResponder();
    v13 = swift_allocObject();
    *(v13 + 216) = 0x3FF0000000000000;
    v14 = v34;
    *(v13 + 120) = v33;
    *(v13 + 136) = v14;
    *(v13 + 152) = v35;
    v15 = v32;
    *(v13 + 88) = v31;
    *(v13 + 184) = 0u;
    *(v13 + 200) = 0u;
    *(v13 + 168) = v36;
    *(v13 + 104) = v15;
    result = AGSubgraphGetCurrent();
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ((v12 & 0x100000000) != 0)
    {
      v16 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v16 = v12;
    }

    v17 = MEMORY[0x1E69E7CC0];
    *(v13 + 176) = result;
    *(v13 + 40) = v17;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = v17;
    *(v13 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(&v31, &v25);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v18 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v19 = *(v18 + 208);

    swift_beginAccess();
    *(v13 + 24) = v19;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v25 = __PAIR64__(v16, v6);
    *(&v25 + 1) = v13;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter();
    v20 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v25) = 0;
    PreferencesOutputs.subscript.setter(v20, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v31);
  MEMORY[0x1EEE9AC00](v21);
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  result = (*(v22 + 8))(implicit closure #1 in closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)partial apply);
  *a4 = v23[0];
  a4[1] = v23[1];
  return result;
}

id specialized closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, unsigned int a2@<W2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a1[3];
  v25 = a1[2];
  v26 = v6;
  v27 = a1[4];
  v28 = *(a1 + 20);
  v7 = a1[1];
  v23 = *a1;
  v24 = v7;
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v23, v20);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v26) & 1) == 0)
  {
LABEL_7:
    v18 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v23);
    MEMORY[0x1EEE9AC00](v18);
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v22 = v28;
    v21[0] = v23;
    v21[1] = v24;
    result = (*(v19 + 8))(implicit closure #1 in closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)partial apply);
    *a4 = v20[0];
    a4[1] = v20[1];
    return result;
  }

  v8 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v20[0]);
  type metadata accessor for OpacityViewResponder();
  v9 = swift_allocObject();
  *(v9 + 216) = 0x3FF0000000000000;
  v10 = v26;
  *(v9 + 120) = v25;
  *(v9 + 136) = v10;
  *(v9 + 152) = v27;
  v11 = v24;
  *(v9 + 88) = v23;
  *(v9 + 184) = 0u;
  *(v9 + 200) = 0u;
  *(v9 + 168) = v28;
  *(v9 + 104) = v11;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    if ((v8 & 0x100000000) != 0)
    {
      v13 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v13 = v8;
    }

    v14 = MEMORY[0x1E69E7CC0];
    *(v9 + 176) = result;
    *(v9 + 40) = v14;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 80) = v14;
    *(v9 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(&v23, v21);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v15 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v16 = *(v15 + 208);

    swift_beginAccess();
    *(v9 + 24) = v16;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v21[0] = __PAIR64__(v13, a2);
    *(&v21[0] + 1) = v9;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter();
    v17 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v21[0]) = 0;
    PreferencesOutputs.subscript.setter(v17, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _OpacityEffect.scrapeableContent.getter@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result | 0x5000000000000000;
  return result;
}

uint64_t protocol witness for _RendererEffect.scrapeableContent.getter in conformance _OpacityEffect@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result | 0x5000000000000000;
  return result;
}

void View.repeatingOpacity(from:to:animation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v17 = 0;
  v18 = 257;
  v9 = *(*a1 + 144);
  lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation();
  v11 = v9(&v17, &type metadata for RepeatAnimation, v10);
  v13 = type metadata accessor for ModifiedContent(0, a2, &type metadata for _OpacityEffect, v12);
  v16[0] = a3;
  v16[1] = &protocol witness table for _OpacityEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v16);
  v15 = v14;
  default argument 1 of View.appearanceAnimation<A>(animation:strategy:modifier:)(&v17);
  View.appearanceAnimation<A>(animation:strategy:modifier:)(v11, partial apply for closure #1 in View.repeatingOpacity(from:to:animation:), a2, v13, a3, v15, x8_0);
}

SwiftUI::OpacityRendererEffect __swiftcall OpacityRendererEffect.init(isHidden:)(Swift::Bool isHidden)
{
  result.opacity = 1.0;
  if (isHidden)
  {
    result.opacity = 0.0;
  }

  *v1 = result.opacity;
  return result;
}

double (*OpacityRendererEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect;
}

float OpacityRendererEffect.effectValue(size:)@<S0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = LODWORD(result);
  *(a1 + 8) = 0;
  *(a1 + 12) = 4;
  return result;
}

uint64_t static OpacityRendererEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a2[3];
  v21[2] = a2[2];
  v21[3] = v8;
  v21[4] = a2[4];
  v22 = *(a2 + 20);
  v9 = a2[1];
  v21[0] = *a2;
  v21[1] = v9;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v8))
  {
    v14 = v7;
    v10 = a2[1];
    v15 = *a2;
    v16 = v10;
    v17 = a2[2];
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21OpacityRendererEffectV_Tt1B5(&v14, &v15);
    return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA07OpacitycD0V_Tt3B5(v14, v21, a3, a4);
  }

  else
  {
    v12 = a2[3];
    v17 = a2[2];
    v18 = v12;
    v19 = a2[4];
    v20 = *(a2 + 20);
    v13 = a2[1];
    v15 = *a2;
    v16 = v13;
    return (a3)();
  }
}

float *_OpacityEffect.encode(to:)(float *result, double a2)
{
  v2 = a2;
  if (v2 != 1.0)
  {
    v3 = result;
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v4 = *(v3 + 1);
    result = (v4 + 4);
    if (__OFADD__(v4, 4))
    {
      __break(1u);
    }

    else if (*(v3 + 2) >= result)
    {
      *(v3 + 1) = result;
      *(*v3 + v4) = v2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v2;
  }

  return result;
}

float *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _OpacityEffect(float *result)
{
  v2 = *v1;
  if (v2 != 1.0)
  {
    v3 = result;
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v4 = *(v3 + 1);
    v5 = v4 + 4;
    if (__OFADD__(v4, 4))
    {
      __break(1u);
    }

    else if (*(v3 + 2) >= v5)
    {
      *(v3 + 1) = v5;
      result = (*v3 + v4);
LABEL_5:
      *result = v2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(v5);
    goto LABEL_5;
  }

  return result;
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance _OpacityEffect@<X0>(void *a1@<X8>, unint64_t a2@<X0>)
{
  result = specialized _OpacityEffect.init(from:)(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

id OpacityViewResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 216) = 0x3FF0000000000000;
  v3 = *(a1 + 48);
  *(v2 + 120) = *(a1 + 32);
  *(v2 + 136) = v3;
  *(v2 + 152) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 88) = *a1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 168) = *(a1 + 80);
  *(v2 + 104) = v4;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v6;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v8 = *(v7 + 208);

    swift_beginAccess();
    *(v2 + 24) = v8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double OpacityViewResponder.extendPrintTree(string:)()
{
  MEMORY[0x193ABEDD0](0x207974696361706FLL, 0xE800000000000000);
  Double.write<A>(to:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return result;
}

uint64_t OpacityViewResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  *(v4 + 216) = 0x3FF0000000000000;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v8, a2);
}

uint64_t _OpacityShapeStyle.init(style:opacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  result = type metadata accessor for _OpacityShapeStyle(0, a2, a3, v9);
  *(a4 + *(result + 36)) = a5;
  return result;
}

uint64_t closure #1 in _OpacityShapeStyle._apply(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _OpacityShapeStyle(0, a3, a4, a4);
  v7 = *(a2 + *(result + 36));
  *(a1 + 88) = v7 * *(a1 + 88);
  v8 = *(a1 + 112);
  v9 = *(v8 + 16);
  if (v9)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    if (v9 > *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = 0;
      v11 = v9 - 1;
      if (v9 == 1)
      {
        goto LABEL_6;
      }

      v14 = !is_mul_ok(v11, 0x50uLL);
      if (v8 + 88 + 80 * v11 < v8 + 88)
      {
        goto LABEL_6;
      }

      if (v14)
      {
        goto LABEL_6;
      }

      v10 = v9 & 0x7FFFFFFFFFFFFFFELL;
      v15 = (v8 + 168);
      v16 = v9 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v17 = v7 * *v15;
        *(v15 - 20) = v7 * *(v15 - 20);
        *v15 = v17;
        v15 += 40;
        v16 -= 2;
      }

      while (v16);
      if (v9 != v10)
      {
LABEL_6:
        v12 = v9 - v10;
        v13 = (v8 + 80 * v10 + 88);
        do
        {
          *v13 = v7 * *v13;
          v13 += 20;
          --v12;
        }

        while (v12);
      }

      *(a1 + 112) = v8;
    }
  }

  return result;
}

void _OpacitiesShapeStyle.opacities.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
}

uint64_t _OpacitiesShapeStyle.init(style:opacities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for _OpacitiesShapeStyle(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

void _OpacitiesShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      MEMORY[0x1EEE9AC00](a1);
      v13 = *(v12 + 24);
      v72 = *(v12 + 16);
      v73 = v13;
      v74 = v2;
      type metadata accessor for _OpacityShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for _OpacitiesShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for _OpacitiesShapeStyle);
      ShapeStyle.mapCopiedStyle<A>(in:body:)(a1, partial apply for closure #1 in _OpacitiesShapeStyle._apply(to:), &v71, v72, v14, v13, &protocol witness table for _OpacitiesShapeStyle<A>);
    }

    else if (v7 == 4)
    {
      v11 = *(*(a2 + 24) + 32);

      v11();
    }

    else if (!(v6 | v5 | v4))
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 1;
      *(a1 + 40) = 4;
    }
  }

  else
  {
    if (!*(a1 + 24))
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      return;
    }

    if (v7 == 1)
    {
      v8 = *a1;
      *a1 = *a1;
      *(a1 + 8) = xmmword_18DD85550;
      *(a1 + 24) = 1;
      (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
      v10 = MEMORY[0x1E69E7CC0];
      if (*(a1 + 40) == 1)
      {
      }

      v107 = v10;
      v82[0] = v4;
      _ShapeStyle_Pack.subscript.getter(v82, 0, v84);

      v104 = v84[4];
      *v105 = v84[5];
      *&v105[16] = v84[6];
      v106 = *&v84[7];
      v100 = v84[0];
      v101 = v84[1];
      v102 = v84[2];
      v103 = v84[3];
      if (v5 == v6)
      {
        outlined destroy of _ShapeStyle_Pack.Style(&v100);
        return;
      }

      if (v6 >= v5)
      {
        v78 = v2;
        v79 = a2;
        v75 = a1;
        if (v5 >= v6)
        {
LABEL_89:
          __break(1u);
          return;
        }

        v21 = *(v75 + 32);
        v22 = *(v75 + 40);
        v23 = v106;
        v24 = *&v105[8];
        v76 = v6;
        v77 = v106;
        while (1)
        {
          v25 = *(v78 + *(v79 + 36));
          v26 = *(v25 + 16) - 1;
          if (v26 >= v5)
          {
            v26 = v5;
          }

          v27 = v26 < 0 ? 1.0 : *(v25 + 8 * v26 + 32);
          v96 = v102;
          v97 = v103;
          v98 = v104;
          v99 = *v105;
          v94 = v100;
          v95 = v101;
          v92 = *&v105[12];
          v93 = *&v105[28];
          v28 = *(v23 + 2);
          if (v28)
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v100, v84);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v77);
            }

            if (v28 > *(v23 + 2))
            {
              goto LABEL_86;
            }

            v29 = 0;
            v30 = v28 - 1;
            if (v28 == 1)
            {
              goto LABEL_35;
            }

            v43 = !is_mul_ok(v30, 0x50uLL);
            if (&v23[80 * v30 + 88] < v23 + 88)
            {
              goto LABEL_35;
            }

            if (v43)
            {
              goto LABEL_35;
            }

            v29 = v28 & 0x7FFFFFFFFFFFFFFELL;
            v44 = (v23 + 168);
            v45 = v28 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v46 = v27 * *v44;
              *(v44 - 20) = v27 * *(v44 - 20);
              *v44 = v46;
              v44 += 40;
              v45 -= 2;
            }

            while (v45);
            if (v28 != v29)
            {
LABEL_35:
              v31 = v28 - v29;
              v32 = 80 * v29 + 88;
              do
              {
                *&v23[v32] = v27 * *&v23[v32];
                v32 += 80;
                --v31;
              }

              while (v31);
            }
          }

          else
          {
            v23 = v106;
            outlined init with copy of _ShapeStyle_Pack.Style(&v100, v84);
          }

          v87 = v96;
          v88 = v97;
          v89 = v98;
          *&v90[0] = v99;
          v85 = v94;
          v86 = v95;
          *(v90 + 2) = v24 * v27;
          *(v90 + 12) = v92;
          HIDWORD(v90[1]) = v93;
          if (v22 == 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = v21;
          }

          v91 = v23;
          if (v22 == 1)
          {
            v34 = 5;
          }

          else
          {
            v34 = v22;
          }

          if (v22 != 1)
          {
            v21 = MEMORY[0x1E69E7CC0];
          }

          v35 = v21[2];
          if (v35)
          {
            break;
          }

          v37 = 0;
LABEL_75:
          v80 = v34;
          v81 = v33;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v35 >= v21[3] >> 1)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v35 + 1, 1, v21);
          }

          v23 = v77;
          v63 = &v21[16 * v37];
          type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
          swift_arrayDestroy();
          memmove(v63 + 20, v63 + 4, (v21[2] - v37) << 7);
          ++v21[2];
          *&v83[6] = v85;
          *&v83[22] = v86;
          *&v83[38] = v87;
          *&v83[54] = v88;
          *&v83[118] = v91;
          *&v83[102] = v90[1];
          *&v83[86] = v90[0];
          *&v83[70] = v89;
          v64 = *&v83[16];
          *(&v84[2] + 2) = *&v83[32];
          *(&v84[3] + 2) = *&v83[48];
          v65 = *&v83[32];
          v66 = *v83;
          *(v84 + 2) = *v83;
          *(&v84[1] + 2) = *&v83[16];
          v84[7] = *&v83[110];
          v67 = *&v83[80];
          *(&v84[6] + 2) = *&v83[96];
          v68 = *&v83[48];
          *(&v84[4] + 2) = *&v83[64];
          *(&v84[5] + 2) = *&v83[80];
          LOBYTE(v84[0]) = v4;
          BYTE1(v84[0]) = v5;
          *(v63 + 98) = *&v83[64];
          *(v63 + 114) = v67;
          *(v63 + 130) = *&v83[96];
          *(v63 + 9) = *&v83[110];
          *(v63 + 32) = v4;
          *(v63 + 33) = v5;
          *(v63 + 34) = v66;
          *(v63 + 50) = v64;
          *(v63 + 66) = v65;
          *(v63 + 82) = v68;
          outlined init with copy of CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(v84, v82);
          outlined destroy of _ShapeStyle_Pack.Style(&v85);
          outlined consume of _ShapeStyle_Shape.Result(v81, v80);
LABEL_79:
          if (++v5 == v76)
          {
            outlined destroy of _ShapeStyle_Pack.Style(&v100);
            v69 = v75;
            *(v75 + 32) = v21;
            *(v69 + 40) = 1;
            return;
          }

          v22 = 1;
        }

        v36 = 0;
        v37 = 0;
        while (1)
        {
          v38 = LOBYTE(v21[v36 + 4]);
          v39 = BYTE1(v21[v36 + 4]);
          if (v38 == v8 && v39 == v5)
          {
            v47 = v34;
            v48 = v33;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
            }

            if (v37 < v21[2])
            {
              v49 = &v21[v36];
              v50 = *&v21[v36 + 5];
              v51 = *&v21[v36 + 7];
              v52 = *&v21[v36 + 11];
              v84[2] = *&v21[v36 + 9];
              v84[3] = v52;
              v84[0] = v50;
              v84[1] = v51;
              v53 = *&v21[v36 + 13];
              v54 = *&v21[v36 + 15];
              v55 = *&v21[v36 + 17];
              *&v84[7] = v21[v36 + 19];
              v84[5] = v54;
              v84[6] = v55;
              v84[4] = v53;
              v56 = v85;
              v57 = v86;
              v58 = v87;
              *(v49 + 11) = v88;
              *(v49 + 9) = v58;
              *(v49 + 7) = v57;
              *(v49 + 5) = v56;
              v59 = v89;
              v60 = v90[0];
              v61 = v90[1];
              v49[19] = v91;
              *(v49 + 17) = v61;
              *(v49 + 15) = v60;
              *(v49 + 13) = v59;
              outlined destroy of _ShapeStyle_Pack.Style(v84);
              outlined consume of _ShapeStyle_Shape.Result(v48, v47);
              v23 = v77;
              goto LABEL_79;
            }

            goto LABEL_87;
          }

          v41 = v39 > v5 && v38 == v8;
          if (v38 > v8 || v41)
          {
            break;
          }

          ++v37;
          v36 += 16;
          if (v35 == v37)
          {
            v37 = v21[2];
            goto LABEL_75;
          }
        }

        if (v35 >= v37)
        {
          goto LABEL_75;
        }

        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
      }

      __break(1u);
      goto LABEL_89;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 2;
    v16 = v2;
    (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
    if (*(a1 + 40) == 3)
    {
      v17 = *(a1 + 32);
      v18 = *(v16 + *(a2 + 36));
      v19 = *(v18 + 16) - 1;
      if (v19 >= v4)
      {
        v19 = v4;
      }

      if (v19 < 0)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = *(v18 + 8 * v19 + 32);
      }

      _s7SwiftUI8ColorBoxCyAA0C0V07OpacityC0VGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
      v70 = swift_allocObject();
      *(v70 + 16) = v17;
      *(v70 + 24) = v20;
      outlined copy of _ShapeStyle_Shape.Result(v17, 3u);
      outlined consume of _ShapeStyle_Shape.Result(v17, 3u);
      *(a1 + 32) = v70;
      *(a1 + 40) = 3;
    }
  }
}

double closure #1 in _OpacitiesShapeStyle._apply(to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *(a2 + *(type metadata accessor for _OpacitiesShapeStyle(0, a3, a4, a4) + 36));
  *a5 = a1;
  a5[1] = v7;

  return result;
}

void OpacityTransition.body(content:phase:)(char a1@<W1>, double *a2@<X8>)
{
  v2 = 0.0;
  if (a1 == 1)
  {
    v2 = 1.0;
  }

  *a2 = v2;
}

void OpacityTransition._makeContentTransition(transition:)(uint64_t a1)
{
  if (*a1 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI17ContentTransitionV6EffectVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18DDA6EB0;
    *(v2 + 32) = 1;
    *(v2 + 40) = 2;
    *(v2 + 44) = 0;
    *(v2 + 48) = 2;
    *(v2 + 52) = 0x3F80000000000000;
    *(v2 + 60) = 3;
    v3 = 1;
  }

  outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double key path setter for _GraphInputs.opacityAccessibilityProvider : _GraphInputs(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(a2, v3, v4);

  return result;
}

double _GraphInputs.opacityAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_GraphInputs.opacityAccessibilityProvider.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.opacityAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.OpacityAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.OpacityAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.OpacityAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.opacityAccessibilityProvider.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.opacityAccessibilityProvider.modify;
}

void _GraphInputs.opacityAccessibilityProvider.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

float ShapeStyle.opacity(_:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a1, v10);
  (*(v9 + 32))(a3, v12, a1);
  *&a4 = a4;
  *(a3 + *(type metadata accessor for _OpacityShapeStyle(0, a1, a2, v13) + 36)) = LODWORD(a4);
  return result;
}

double ShapeStyle.opacities(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a2, v10);
  (*(v9 + 32))(a4, v12, a2);
  *(a4 + *(type metadata accessor for _OpacitiesShapeStyle(0, a2, a3, v13) + 36)) = a1;

  return result;
}

unint64_t specialized _OpacityEffect.init(from:)(unint64_t result)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v3 >= v4)
  {
LABEL_37:
    v2[3] = 0;
    return result;
  }

  while (1)
  {
    result = v2[3];
    if (result)
    {
      v5 = v2[4];
      if (v3 < v5)
      {
        goto LABEL_11;
      }

      if (v5 < v3)
      {
        goto LABEL_35;
      }

      v2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v1)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_35:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v6 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      if ((result & 7) > 1)
      {
        if (v6 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v3 = v2[1] + result;
          if (v4 < v3)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v6 != 5)
          {
            goto LABEL_35;
          }

          v3 = v2[1] + 4;
          if (v4 < v3)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v1)
          {
            return result;
          }

          v3 = v2[1];
          goto LABEL_4;
        }

        if (v6 != 1)
        {
          goto LABEL_35;
        }

        v3 = v2[1] + 8;
        if (v4 < v3)
        {
          goto LABEL_35;
        }
      }

      v2[1] = v3;
      goto LABEL_4;
    }

    if (v6 == 2)
    {
      break;
    }

    if (v6 != 5)
    {
      goto LABEL_35;
    }

    v7 = v2[1];
LABEL_28:
    v3 = v7 + 4;
    if (v4 < v7 + 4)
    {
      goto LABEL_35;
    }

    v2[1] = v3;
LABEL_4:
    if (v3 >= v4)
    {
      goto LABEL_37;
    }
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v1)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v7 = v2[1];
    if (v4 < v7 + result)
    {
      goto LABEL_35;
    }

    v2[3] = 13;
    v2[4] = v7 + result;
    goto LABEL_28;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

double partial apply for closure #2 in _OpacityShapeStyle._apply(to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = *(v8 + *(type metadata accessor for _OpacityShapeStyle(0, v6, v7, a2) + 36));
  *a3 = a1;
  *(a3 + 8) = v9;

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _OpacityShapeStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80) & 0xFC;
  if (v6 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 19) & ~v6 & 0x1FC));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v3;
}

uint64_t assignWithCopy for _OpacityShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 40) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithTake for _OpacityShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 24) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithCopy for OpacityResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void static _GlassEffectTransition.identity.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

double static _GlassEffectTransition.matchedGeometry.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_18DDB6AD0;
  *(a1 + 16) = 0x3FE0000000000000;
  *(a1 + 24) = 0;
  return result;
}

void static _GlassEffectTransition.materialize.getter(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
  *(a1 + 24) = 1;
}

uint64_t static _GlassEffectTransition.matchedGeometry(properties:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = 0;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _GlassEffectTransition.Kind(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a1[1] == a2[1];
  if (a1[2] != a2[2])
  {
    v4 = 0;
  }

  if (v2 != v3)
  {
    v4 = 0;
  }

  if (a2[3])
  {
    v4 = 0;
  }

  v5 = *(a1 + 2) | *(a1 + 1) | v2;
  v6 = *(a2 + 2) | *(a2 + 1) | v3;
  v7 = v6 == 0;
  if (!*(a2 + 24))
  {
    v7 = 0;
  }

  v8 = v6 != 0;
  if ((a2[3] & 1) == 0)
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (*(a1 + 24) == 1)
  {
    return v9;
  }

  else
  {
    return v4;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _GlassEffectTransition.MatchedGeometryConfiguration(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return 0;
}

BOOL static _GlassEffectTransition.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (*(a1 + 24) != 1)
  {
    if (a2[3])
    {
      return 0;
    }

    v8 = v2 == v5 && v3 == v6;
    return v8 && v4 == v7;
  }

  if (!(*&v4 | *&v3 | v2))
  {
    v11 = *&v7 | *&v6 | v5;
    return *(a2 + 24) && v11 == 0;
  }

  return (a2[3] & 1) != 0 && *&v7 | *&v6 | v5;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _GlassEffectTransition(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (*(a1 + 24) == 1)
  {
    if (*&v4 | *&v3 | v2)
    {
      if (a2[3])
      {
        return (*&v7 | *&v6 | v5) != 0;
      }
    }

    else if (*(a2 + 24))
    {
      return (*&v7 | *&v6 | v5) == 0;
    }
  }

  else if ((a2[3] & 1) == 0 && v2 == v5 && v3 == v6)
  {
    return v4 == v7;
  }

  return 0;
}

uint64_t specialized getter of transform #1 in static GlassEffectTransitionModifier._makeView(modifier:inputs:body:)(_BYTE *a1, int a2)
{
  if (a1[4] != 1)
  {
    return *a1;
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform();
  v3 = Attribute.init<A>(body:value:flags:update:)();
  swift_beginAccess();
  result = v3;
  *a1 = v3;
  a1[4] = 0;
  return result;
}

char *closure #1 in GlassEffectTransitionModifier.Transform.value.getter(char *result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if ((a5 & 0x100) != 0)
  {
    v5 = *result;
    v6 = *(*result + 16);
    if (v6)
    {
      v7 = a5;
      v9 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        v5 = result;
      }

      if (v6 > *(v5 + 2))
      {
        __break(1u);
      }

      else
      {
        v12 = v5 + 208;
        do
        {
          *(v12 - 3) = a2;
          *(v12 - 2) = a3;
          *(v12 - 1) = a4;
          *v12 = v7 & 1;
          v12 += 656;
          --v6;
        }

        while (v6);
        *v9 = v5;
      }
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance GlassEffectTransitionModifier.Transform@<X0>(uint64_t (**a1)()@<X8>)
{
  Value = AGGraphGetValue();
  v8 = *Value;
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 25);
  v6 = swift_allocObject();
  *(v6 + 16) = v8;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 41) = v5;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in GlassEffectTransitionModifier.Transform.value.getter;
  *(result + 24) = v6;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout [ScrollTargetRole.Role : [ScrollableCollection]]) -> ();
  a1[1] = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for _GlassEffectTransition.Kind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 25) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GlassEffectTransitionModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassEffectTransitionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

char *partial apply for closure #1 in GlassEffectTransitionModifier.Transform.value.getter(char *a1)
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return closure #1 in GlassEffectTransitionModifier.Transform.value.getter(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v2 | *(v1 + 40));
}

double _ShadowEffect.resolve(in:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v11 = *a1;
  (*(*a2 + 120))(&v12, &v11);
  result = *&v12;
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = a4;
  *(a3 + 32) = a5;
  *(a3 + 40) = a6;
  *(a3 + 48) = 1056964608;
  *(a3 + 52) = 0;
  return result;
}

__n128 _ShadowEffect._Resolved.style.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 45) = *(v1 + 45);
  return result;
}

__n128 _ShadowEffect._Resolved.style.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 45) = *(a1 + 45);
  return result;
}

double _ShadowEffect._Resolved.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  ResolvedShadowStyle.animatableData.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double _ShadowEffect._Resolved.animatableData.setter(uint64_t a1)
{
  v3 = *a1;
  v4.i64[0] = 0x3C0000003C000000;
  v4.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v11 = *a1;
    swift_once();
    v4.i64[0] = 0x3C0000003C000000;
    v4.i64[1] = 0x3C0000003C000000;
    v3 = v11;
  }

  v10 = vmulq_f32(v3, v4);
  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v5 = v10.f32[0];
    v7 = v10.i32[2];
    v6 = v10.i32[1];
    v8 = v10.i32[3];
  }

  else
  {
    v13 = 2;
    v12 = v10;
    v5 = ResolvedGradient.ColorSpace.convertOut(_:)(&v12);
  }

  *v1 = v5;
  *(v1 + 4) = v6;
  *(v1 + 8) = v7;
  *(v1 + 12) = v8;
  result = *(a1 + 32);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 40) = result;
  return result;
}

void (*_ShadowEffect._Resolved.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  ResolvedShadowStyle.animatableData.getter(v3 + 80);
  return _ShadowEffect._Resolved.animatableData.modify;
}

void _ShadowEffect._Resolved.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  _ShadowEffect._Resolved.animatableData.setter(v3);

  free(v2);
}

double _ShadowEffect._Resolved.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  *v11 = v1[2];
  *&v11[13] = *(v1 + 45);
  v4 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi3_(&v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *v11;
  v8 = *&v11[16];
  v4[3] = *v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _ShadowEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  *v11 = v1[2];
  *&v11[13] = *(v1 + 45);
  v4 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi3_(&v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *v11;
  v8 = *&v11[16];
  v4[3] = *v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance _ShadowEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  ResolvedShadowStyle.animatableData.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance _ShadowEffect._Resolved(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  ResolvedShadowStyle.animatableData.getter(v3 + 80);
  return _ShadowEffect._Resolved.animatableData.modify;
}

BOOL static _ShadowEffect.== infix(_:_:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 == a2)
  {
    if (a3 != a6)
    {
      return 0;
    }

    return a5 == a8 && a4 == a7;
  }

  v14 = (*(*a1 + 88))(a2);
  result = 0;
  if ((v14 & 1) != 0 && a3 == a6)
  {
    return a5 == a8 && a4 == a7;
  }

  return result;
}

__n128 protocol witness for EnvironmentalModifier.resolve(in:) in conformance _ShadowEffect@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[3];
  v7 = *(v2 + 1);
  v8 = *a1;
  (*(*v4 + 120))(&v9, &v8);
  *a2 = v9;
  *(a2 + 16) = v10;
  result = v7;
  *(a2 + 24) = v7;
  *(a2 + 40) = v5;
  *(a2 + 48) = 1056964608;
  *(a2 + 52) = 0;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _ShadowEffect(double *a1, uint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (*a1 == *a2)
  {
    if (v3 != v6)
    {
      return 0;
    }

    return v4 == v7 && v2 == v5;
  }

  v8 = (*(**a1 + 88))();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7 && v2 == v5;
  }

  return result;
}

void lazy protocol witness table accessor for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

uint64_t *assignWithTake for _ShadowEffect(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  a1[3] = a2[3];
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShadowEffect._Resolved(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 53))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ShadowEffect._Resolved(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
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

  *(result + 53) = v3;
  return result;
}

uint64_t LayoutProxyAttributes.init(layoutComputer:traitsList:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t LayoutProxyAttributes.init(traitsList:)@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = *MEMORY[0x1E698D3F8];
  a2[1] = result;
  return result;
}

uint64_t LayoutProxyAttributes.init(layoutComputer:)@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *MEMORY[0x1E698D3F8];
  *a2 = result;
  a2[1] = v2;
  return result;
}

void LayoutProxyAttributes.init()(_DWORD *a1@<X8>)
{
  v1 = *MEMORY[0x1E698D3F8];
  *a1 = *MEMORY[0x1E698D3F8];
  a1[1] = v1;
}

double LayoutProxy.init(context:attributes:)@<D0>(int a1@<W0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 4) = *a2;
  return result;
}

uint64_t LayoutProxy.init(context:layoutComputer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *MEMORY[0x1E698D3F8];
  if ((a2 & 0x100000000) != 0)
  {
    v4 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v4 = a2;
  }

  *a3 = result;
  a3[1] = v4;
  a3[2] = v3;
  return result;
}

double LayoutProxy.layoutComputer.getter@<D0>(void *a1@<X8>)
{
  if (*(v1 + 4) == *MEMORY[0x1E698D3F8])
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

  v4 = *(InputValue + 1);
  *a1 = *InputValue;
  a1[1] = v4;

  return result;
}

void LayoutProxy.traits.getter(void *a1@<X8>)
{
  if (*(v1 + 8) == *MEMORY[0x1E698D3F8])
  {
    *a1 = 0;
  }

  else
  {
    type metadata accessor for ViewList();
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 56))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

CGSize __swiftcall LayoutProxy.idealSize()()
{
  v1 = *(v0 + 2);
  v9 = *v0;
  v10 = v1;
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  v5 = static _ProposedSize.unspecified;
  v6 = byte_1ED52ECF8;
  v7 = qword_1ED52ED00;
  v8 = byte_1ED52ED08;
  LayoutProxy.size(in:)(&v5);
  result.height = v3;
  result.width = v2;
  return result;
}

void LayoutProxy.finallyPlaced(at:in:layoutDirection:)(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  v10 = *(a1 + 24);
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v13 = *(a1 + 6);
  v14 = *(a1 + 7);
  v15 = *a2;
  v16 = *(v4 + 2);
  v28 = *v4;
  v29 = v16;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  LayoutProxy.dimensions(in:)(&v24, v30);
  v17 = v30[0];
  v18 = v30[1];
  v19 = rect;
  v20 = v33;
  v21 = v13 - v11 * rect;
  v22 = v32;
  v23 = v14 - v12 * *&v32;
  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v22;
  *(a3 + 56) = v20;
  if (v15 == 1)
  {
    *a3 = a4 - CGRectGetMaxX(*&v21);
  }
}

uint64_t LayoutProxy.ignoresAutomaticPadding.getter()
{
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
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

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v4 = (*(*v2 + 96))();

    return v4 & 1;
  }

  return result;
}

uint64_t LayoutProxyCollection.init(context:attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t LayoutProxyCollection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 8);
    if (*(v3 + 16) > result)
    {
      *a2 = *v2;
      *(a2 + 4) = *(v3 + 8 * result + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance LayoutProxyCollection@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*(v2 + 8) + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance LayoutProxyCollection(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*(v1 + 8) + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance LayoutProxyCollection(uint64_t *a1, unint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = LayoutProxyCollection.subscript.read(v4, *a2);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

void (*LayoutProxyCollection.subscript.read(void (*result)(), unint64_t a2))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 8);
    if (*(v3 + 16) > a2)
    {
      v4 = *(v3 + 8 * a2 + 32);
      *result = *v2;
      *(result + 4) = v4;
      return _ViewInputs.base.modify;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.getter in conformance LayoutProxyCollection(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *(v2 + 8), *(v5 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = *v2;
    *(a2 + 24) = v5;
    *a2 = v3;
    *(a2 + 8) = v4;
  }
}

void protocol witness for Collection.indices.getter in conformance LayoutProxyCollection(void *a1@<X8>)
{
  v2 = *(*(v1 + 8) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance LayoutProxyCollection@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 8) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance LayoutProxyCollection(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 8) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance LayoutProxyCollection@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*(v2 + 8) + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance LayoutProxyCollection(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance LayoutProxyCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

void lazy protocol witness table accessor for type LayoutProxyCollection and conformance LayoutProxyCollection()
{
  if (!lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutProxyCollection, &type metadata for LayoutProxyCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutProxyCollection, &type metadata for LayoutProxyCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutProxyCollection, &type metadata for LayoutProxyCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutProxyCollection, &type metadata for LayoutProxyCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutProxyCollection and conformance LayoutProxyCollection);
  }
}

void lazy protocol witness table accessor for type Slice<LayoutProxyCollection> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for Slice<LayoutProxyCollection>(255, &lazy cache variable for type metadata for Slice<LayoutProxyCollection>, MEMORY[0x1E69E74D0]);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type Slice<LayoutProxyCollection> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for Slice<LayoutProxyCollection>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for Slice<LayoutProxyCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type LayoutProxyCollection and conformance LayoutProxyCollection();
    v7 = a3(a1, &type metadata for LayoutProxyCollection, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t assignWithCopy for LayoutProxyCollection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for LayoutProxyCollection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

char *RasterizationOptions.init(colorMode:allowedDynamicRange:flags:)@<X0>(char *result@<X0>, char *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *a2;
  v6 = *a3;
  *a4 = -1;
  *(a4 + 4) = v4;
  *(a4 + 5) = v5;
  *(a4 + 8) = v6;
  *(a4 + 12) = 3;
  return result;
}

Swift::Int ColorRenderingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

SwiftUI::ColorRenderingMode_optional __swiftcall ColorRenderingMode.init(protobufValue:)(Swift::UInt protobufValue)
{
  v2 = 3;
  if (protobufValue < 3)
  {
    v2 = protobufValue;
  }

  *v1 = v2;
  return protobufValue;
}

uint64_t static RasterizationOptions.Flags.defaultFlags.getter@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultFlags != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static RasterizationOptions.Flags.defaultFlags;
  return result;
}

uint64_t (*RasterizationOptions.isAccelerated.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = v2 & 1;
  return RasterizationOptions.isAccelerated.modify;
}

uint64_t (*RasterizationOptions.isOpaque.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 2) != 0;
  return RasterizationOptions.isOpaque.modify;
}

uint64_t (*RasterizationOptions.rendersAsynchronously.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 4) != 0;
  return RasterizationOptions.rendersAsynchronously.modify;
}

uint64_t (*RasterizationOptions.rendersFirstFrameAsynchronously.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x10) != 0;
  return RasterizationOptions.rendersFirstFrameAsynchronously.modify;
}

uint64_t RasterizationOptions.prefersDisplayCompositing.setter(uint64_t result)
{
  if (result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t (*RasterizationOptions.prefersDisplayCompositing.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 8) != 0;
  return RasterizationOptions.prefersDisplayCompositing.modify;
}

uint64_t RasterizationOptions.prefersDisplayCompositing.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFF7;
  return result;
}

uint64_t (*RasterizationOptions.allowsPackedDrawable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x20) != 0;
  return RasterizationOptions.allowsPackedDrawable.modify;
}

uint64_t RasterizationOptions.fixedPixelFormat.setter(uint64_t result)
{
  if (result)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFBFF | v2;
  return result;
}

uint64_t (*RasterizationOptions.fixedPixelFormat.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x400) != 0;
  return RasterizationOptions.fixedPixelFormat.modify;
}

uint64_t RasterizationOptions.fixedPixelFormat.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 1024;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFBFF;
  return result;
}

uint64_t RasterizationOptions.alphaOnly.setter(uint64_t result)
{
  if (result)
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFBF | v2;
  return result;
}

uint64_t (*RasterizationOptions.alphaOnly.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x40) != 0;
  return RasterizationOptions.alphaOnly.modify;
}

uint64_t RasterizationOptions.alphaOnly.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 64;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFBF;
  return result;
}

uint64_t RasterizationOptions.requiresLayer.setter(uint64_t result)
{
  if (result)
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFF7F | v2;
  return result;
}

uint64_t (*RasterizationOptions.requiresLayer.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x80) != 0;
  return RasterizationOptions.requiresLayer.modify;
}

uint64_t RasterizationOptions.requiresLayer.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 128;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFF7F;
  return result;
}

void RasterizationOptions.encode(to:)()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[2];
  v5 = *(v0 + 12);
  if (*(v0 + 4))
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v2);
  }

  if (v1 != -1)
  {
    if ((v1 & 0x80000000) != 0)
    {
      __break(1u);
      return;
    }

    if (v1)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v1);
    }
  }

  if (v4)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v4);
  }

  if (v5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v5) ^ (v5 >> 63));
  }

  if (v3 != 3)
  {
    ProtobufEncoder.encodeVarint(_:)(0x28uLL);
    ProtobufEncoder.encodeVarint(_:)(v3);
  }
}

void _DrawingGroupEffect.rasterizationOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
}

uint64_t _DrawingGroupEffect.rasterizationOptions.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 8);
  v4 = *(result + 12);
  *v1 = *result;
  *(v1 + 4) = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  return result;
}

uint64_t _DrawingGroupEffect.isOpaque.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t (*_DrawingGroupEffect.isOpaque.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 2) != 0;
  return _DrawingGroupEffect.isOpaque.modify;
}

uint64_t _DrawingGroupEffect.isOpaque.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFFD;
  return result;
}

uint64_t (*_DrawingGroupEffect.colorMode.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return _DrawingGroupEffect.colorMode.modify;
}

uint64_t _DrawingGroupEffect.init(opaque:colorMode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (one-time initialization token for defaultFlags != -1)
  {
    v7 = result;
    v8 = a3;
    swift_once();
    result = v7;
    a3 = v8;
  }

  v4 = static RasterizationOptions.Flags.defaultFlags | 3;
  v5 = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFFC;
  *a3 = -1;
  if (result)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5 + 1;
  }

  *(a3 + 4) = v3;
  *(a3 + 5) = 3;
  *(a3 + 8) = v6;
  *(a3 + 12) = 3;
  return result;
}

double protocol witness for Rule.value.getter in conformance _DrawingGroupEffect.ChildEnvironment@<D0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a1, 0, 255);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v4, *a1);
  }

  return result;
}

BOOL static _DrawingGroupEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 5);
  v5 = *(a2 + 5);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v5 == 3 || v4 != v5)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _DrawingGroupEffect(int *a1, int *a2)
{
  v2 = *(a1 + 2);
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = a2[2];
  v8 = *(a2 + 12);
  v14 = *a1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  return specialized static RasterizationOptions.== infix(_:_:)(&v14, &v10);
}

uint64_t _DrawingGroupEffect._rendersAsynchronously.setter(uint64_t result)
{
  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t (*_DrawingGroupEffect._rendersAsynchronously.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 4) != 0;
  return _DrawingGroupEffect._rendersAsynchronously.modify;
}

uint64_t _DrawingGroupEffect._rendersAsynchronously.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFFB;
  return result;
}

unint64_t _DrawingGroupEffect.rbColorMode.getter()
{
  LODWORD(v1) = *v0;
  if (*v0 == -1)
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | ((*v0 == -1) << 32);
}

uint64_t _DrawingGroupEffect.rbColorMode.setter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = result;
  }

  *v1 = v2;
  return result;
}

uint64_t (*_DrawingGroupEffect.rbColorMode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  v3 = *v1 == -1;
  if (*v1 == -1)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v4 = v3;
  *(a1 + 12) = v4;
  return _DrawingGroupEffect.rbColorMode.modify;
}

uint64_t _DrawingGroupEffect.rbColorMode.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = -1;
  }

  else
  {
    v1 = *(result + 8);
  }

  **result = v1;
  return result;
}

uint64_t _DrawingGroupEffect.rendersFirstFrameAsynchronously.setter(uint64_t result)
{
  if (result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t (*_DrawingGroupEffect.rendersFirstFrameAsynchronously.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x10) != 0;
  return _DrawingGroupEffect.rendersFirstFrameAsynchronously.modify;
}

uint64_t _DrawingGroupEffect.rendersFirstFrameAsynchronously.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFEF;
  return result;
}

uint64_t (*_DrawingGroupEffect.isAccelerated.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = v2 & 1;
  return _DrawingGroupEffect.isAccelerated.modify;
}

uint64_t _DrawingGroupEffect.allowsPackedDrawable.setter(uint64_t result)
{
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t (*_DrawingGroupEffect.allowsPackedDrawable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x20) != 0;
  return _DrawingGroupEffect.allowsPackedDrawable.modify;
}

uint64_t _DrawingGroupEffect.allowsPackedDrawable.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 32;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFDF;
  return result;
}

void DrawingGroupDynamicRange.value.getter(_BYTE *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  v7 = v5;
  v8 = v4;

  v6 = *(AGGraphGetValue() + 5);
  EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v6, &v9);

  *a2 = v9;
}

void lazy protocol witness table accessor for type ColorRenderingMode and conformance ColorRenderingMode()
{
  if (!lazy protocol witness table cache variable for type ColorRenderingMode and conformance ColorRenderingMode)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorRenderingMode, &type metadata for ColorRenderingMode, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorRenderingMode and conformance ColorRenderingMode);
  }
}

void lazy protocol witness table accessor for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags()
{
  if (!lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for RasterizationOptions.Flags, &type metadata for RasterizationOptions.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for RasterizationOptions.Flags, &type metadata for RasterizationOptions.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for RasterizationOptions.Flags, &type metadata for RasterizationOptions.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags)
  {
    swift_getWitnessTable("1o\rap5\a", &type metadata for RasterizationOptions.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RasterizationOptions.Flags and conformance RasterizationOptions.Flags);
  }
}

uint64_t getEnumTagSinglePayload for RasterizationOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RasterizationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

void (*EnvironmentValues.isLuminanceReduced.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.isLuminanceReduced.modify;
}

void EnvironmentValues.isLuminanceReduced.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016ReducedLuminanceF033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016ReducedLuminanceK033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t CountViews.init(source:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for CountViews(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t static CountViews._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[1];
  v56[0] = *a1;
  v56[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v56[2] = a1[2];
  v56[3] = v10;
  v14 = a1[2];
  v13 = a1[3];
  v56[4] = a1[4];
  v53 = v14;
  v54 = v13;
  v55 = a1[4];
  v15 = *&v56[0];
  v51 = v12;
  v52 = v11;
  outlined init with copy of _ViewListCountInputs(v56, &v46);
  outlined init with copy of _ViewListCountInputs(v56, &v46);
  v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v15);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(&v51, 0);
  outlined destroy of _ViewListCountInputs(v56);
  if ((v16 & 1) == 0)
  {
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v36 = v51;
    v37 = v52;
    v33 = v53;
    v34 = v54;
    v35 = v55;
    v31 = v51;
    v32 = v52;
    v17 = *(a5 + 40);
    outlined init with copy of _ViewListCountInputs(&v36, &v46);
    v18 = v17(&v31, a3, a5);
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v41 = v31;
    v42 = v32;
    outlined destroy of _ViewListCountInputs(&v41);
    v48 = v53;
    v49 = v54;
    v50 = v55;
    v46 = v51;
    v47 = v52;
    v19 = &v46;
LABEL_7:
    outlined destroy of _ViewListCountInputs(v19);
    return v18;
  }

  v43 = v53;
  v44 = v54;
  v45 = v55;
  v41 = v51;
  v42 = v52;
  v38 = v53;
  v39 = v54;
  v40 = v55;
  v36 = v51;
  v37 = v52;
  v20 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(&v41, &v31);
  v18 = v20(&v36, a2, a4);
  v22 = v21;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v46 = v36;
  v47 = v37;
  outlined destroy of _ViewListCountInputs(&v46);
  if ((v22 & 1) == 0)
  {
    if (v18 < 1)
    {
      v38 = v53;
      v39 = v54;
      v40 = v55;
      v36 = v51;
      v37 = v52;
      outlined destroy of _ViewListCountInputs(&v36);
      return 0;
    }

    v30[2] = v53;
    v30[3] = v54;
    v30[4] = v55;
    v30[0] = v51;
    v30[1] = v52;
    v27 = v53;
    v28 = v54;
    v29 = v55;
    v25 = v51;
    v26 = v52;
    v23 = *(a5 + 40);
    outlined init with copy of _ViewListCountInputs(v30, &v36);
    v18 = v23(&v25, a3, a5);
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v31 = v25;
    v32 = v26;
    outlined destroy of _ViewListCountInputs(&v31);
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v36 = v51;
    v37 = v52;
    v19 = &v36;
    goto LABEL_7;
  }

  v38 = v53;
  v39 = v54;
  v40 = v55;
  v36 = v51;
  v37 = v52;
  outlined destroy of _ViewListCountInputs(&v36);
  return v18;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance CountViews<A, B>.MakeDynamicContent@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t CountViewsProxy.count.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v2 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v1 = ViewList.count.getter(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
    static Update.end()();
    _MovableLockUnlock(v2);
  }

  return v1;
}

double protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance RequiresSourceModifier(uint64_t a1, uint64_t *a2)
{
  v3 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(*a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(a2, v3 | 1);

  return result;
}

void static ViewContentOffset.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

void protocol witness for static _ViewTraitKey.defaultValue.getter in conformance ViewContentOffset(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

uint64_t _ViewListInputs.updateStaticContentOffset(count:needsDynamicView:)(uint64_t result, unsigned __int8 a2)
{
  v3 = *(v2 + 128);
  if (v3 == 255)
  {
    v8 = 0;
    v7 = a2 & 1;
    goto LABEL_8;
  }

  v5 = *(v2 + 112);
  v4 = *(v2 + 120);
  if (v3)
  {
    v6 = __OFADD__(v4, result);
    v7 = v4 + result;
    if (!v6)
    {
      result = v5;
      v8 = 1;
LABEL_8:
      *(v2 + 112) = result;
      *(v2 + 120) = v7;
      *(v2 + 128) = v8;
      return result;
    }

    __break(1u);
  }

  else
  {
    v6 = __OFADD__(v5, result);
    result += v5;
    if (!v6)
    {
      v8 = 0;
      v7 = (v4 | a2) & 1;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Rule.value.getter in conformance _ViewListInputs.ContentOffsetMutation@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 4);
  result = AGGraphGetValue();
  v5 = *result;
  if (v3 == *MEMORY[0x1E698D3F8])
  {
    v6 = 0;
  }

  else
  {
    result = AGGraphGetValue();
    v6 = *result;
  }

  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *a1 = v8;
  }

  return result;
}

uint64_t closure #1 in static CountViews._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *), uint64_t a7)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v13[2] = a6(0, v14);
  v13[3] = a2;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a7, v13, a2, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

uint64_t static EnumeratedViews._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v31[0] = *a1;
  v31[1] = v7;
  v8 = a1[1];
  v9 = a1[3];
  v32 = a1[2];
  v33 = v9;
  v10 = a1[3];
  v34 = a1[4];
  v11 = *&v31[0];
  v12 = *(&v31[0] + 1) | 0x10800;
  *&v24[0] = *&v31[0];
  *(&v24[0] + 1) = *(&v31[0] + 1) | 0x10800;
  v24[1] = v8;
  v24[2] = v32;
  v13 = a1[4];
  v24[3] = v10;
  v24[4] = v13;
  v21 = v32;
  v22 = v10;
  v23 = v13;
  v19 = v24[0];
  v20 = v8;
  v14 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(v31, v26);
  outlined init with copy of _ViewListCountInputs(v24, v26);
  v15 = v14(&v19, a2, a4);
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v25[0] = v19;
  v25[1] = v20;
  outlined destroy of _ViewListCountInputs(v25);
  v26[0] = v11;
  v26[1] = v12;
  v16 = a1[2];
  v27 = a1[1];
  v28 = v16;
  v17 = a1[4];
  v29 = a1[3];
  v30 = v17;
  outlined destroy of _ViewListCountInputs(v26);
  return v15;
}

uint64_t *initializeBufferWithCopyOfBuffer for CountViews(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t assignWithTake for CountViews(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for CountViews.MakeDynamicContent(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CountViews.MakeDynamicContent(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type CountViewsOptions and conformance CountViewsOptions()
{
  if (!lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for CountViewsOptions, &type metadata for CountViewsOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions)
  {
    swift_getWitnessTable("ug\raP2\a", &type metadata for CountViewsOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for CountViewsOptions, &type metadata for CountViewsOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for CountViewsOptions, &type metadata for CountViewsOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CountViewsOptions and conformance CountViewsOptions);
  }
}

double (*_BrightnessEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double _BrightnessEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v4 = swift_allocObject();
  *v9 = a2;
  _s7SwiftUI14GraphicsFilterOWOi10_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _BrightnessEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi10_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

void type metadata accessor for RendererVisualEffect<_BrightnessEffect>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_BrightnessEffect>)
  {
    v4 = type metadata accessor for RendererVisualEffect(0, &type metadata for _BrightnessEffect, &protocol witness table for _BrightnessEffect, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for RendererVisualEffect<_BrightnessEffect>);
    }
  }
}

void lazy protocol witness table accessor for type RendererVisualEffect<_BrightnessEffect> and conformance RendererVisualEffect<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_BrightnessEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_BrightnessEffect>(255, a2, a3, a4);
    swift_getWitnessTable(protocol conformance descriptor for RendererVisualEffect<A>, v6, v4, v5);
    atomic_store(v7, &lazy protocol witness table cache variable for type RendererVisualEffect<_BrightnessEffect> and conformance RendererVisualEffect<A>);
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ColorMonochromeEffect._Resolved(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22_ColorMonochromeEffectV9_ResolvedV_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA016_ColorMonochromeD0V9_ResolvedV_Tt3B5);
}

uint64_t ResetPositionTransform.init(position:transform:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ContrastEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15_ContrastEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _GrayscaleEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_GrayscaleEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _BrightnessEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_BrightnessEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA08_OpacityD0V_Tt3B503_s7a5UI14_nd3V9_e32View8modifier6inputs4bodyAA01_F7j6VAA11_kl6VyACG_s3_F6M29VAiA01_K0V_ANtctFZAiP_ANtcfU_ApnIIegnnr_AKyARGTf1nnnc_n0oa24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e14E04view6inputss3_E7ju1_klv9ACyxq_GG_s3_E6m6VtFZAjz13_K0V_APtcfU0_s7_ef1_D0v72AA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_nD4VTG5AKyAA15ModifiedContentVyAA01_I16Modifier_ContentVyAA28GlassTransitionStateModifier33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGARGGTf1nnncn_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v62 = *(a2 + 32);
  v63 = v7;
  v64 = v8;
  v65 = *(a2 + 80);
  v9 = *(a2 + 16);
  v60 = *a2;
  v61 = v9;
  v43 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 36);
  if ((v11 & 0x20) != 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) != 0 && (v11 & 0x2000) == 0)
  {
    outlined init with copy of _ViewInputs(a2, &v54);
    v12 = AGMakeUniqueID();
    _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

    v40 = v12;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v60, v12);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v54);
    v40 = 0;
  }

  v39 = *(a2 + 48);
  v13 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v39);
  if (v13)
  {
    v14 = *(a2 + 48);
    v56 = *(a2 + 32);
    v57 = v14;
    v58 = *(a2 + 64);
    v59 = *(a2 + 80);
    v15 = *(a2 + 16);
    v54 = *a2;
    v55 = v15;
    swift_beginAccess();
    v16 = CachedEnvironment.animatedPosition(for:)(&v54);
    swift_endAccess();
    DWORD1(v64) = v16;
  }

  v52[2] = v62;
  v52[3] = v63;
  v52[4] = v64;
  v53 = v65;
  v52[0] = v60;
  v52[1] = v61;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v51 = v65;
  v46 = v60;
  v47 = v61;
  outlined init with copy of _ViewInputs(v52, &v54);
  specialized closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)(&v46, a3, v44);
  v56 = v48;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v54 = v46;
  v55 = v47;
  outlined destroy of _ViewInputs(&v54);
  if ((v13 & 1) == 0)
  {
    goto LABEL_24;
  }

  v17 = ++lastIdentity;
  if ((v11 & 0x100) == 0)
  {
    v18 = *MEMORY[0x1E698D3F8];
LABEL_11:
    v19 = *(a2 + 48);
    v48 = *(a2 + 32);
    v49 = v19;
    v50 = *(a2 + 64);
    v51 = *(a2 + 80);
    v20 = *(a2 + 16);
    v46 = *a2;
    v47 = v20;
    swift_beginAccess();
    v21 = CachedEnvironment.animatedPosition(for:)(&v46);
    v22 = *(a2 + 48);
    v48 = *(a2 + 32);
    v49 = v22;
    v50 = *(a2 + 64);
    v51 = *(a2 + 80);
    v23 = *(a2 + 16);
    v46 = *a2;
    v47 = v23;
    v24 = CachedEnvironment.animatedSize(for:)(&v46);
    swift_endAccess();
    v25 = *(v10 + 16);
    v26 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v44[0]);
    if ((v26 & 0x100000000) == 0)
    {
      v18 = v26;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v27 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v43, v46);
    if (v27)
    {
      v28 = *(v27 + 72);
    }

    else
    {
      v28 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v29 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v43, v46);
    if (v29)
    {
      v30 = *(v29 + 72);
    }

    else
    {
      v30 = 0;
    }

    v31 = *(a2 + 60);
    v32 = *(a2 + 68);
    v33 = *(a2 + 76);
    *&v46 = __PAIR64__(a1, v17);
    *(&v46 + 1) = __PAIR64__(v24, v21);
    *&v47 = __PAIR64__(v32, v31);
    *(&v47 + 1) = __PAIR64__(v33, v25);
    LODWORD(v48) = v18;
    BYTE4(v48) = v28;
    *(&v48 + 1) = __PAIR64__(v30, v40);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>();
    v34 = Attribute.init<A>(body:value:flags:update:)();
    if ((v11 & 0x20) != 0)
    {
      v35 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v39);
      if (v11 & 0x2000) == 0 && (v35)
      {
        AGGraphGetFlags();
        AGGraphSetFlags();
      }
    }

    LOBYTE(v46) = 0;
    PreferencesOutputs.subscript.setter(v34, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_24:
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v46 = v60;
    v47 = v61;
    result = outlined destroy of _ViewInputs(&v46);
    *a5 = v44[0];
    a5[1] = v44[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v43, &v46);
  result = AGWeakAttributeGetAttribute();
  v18 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v45[0] = v17;
    v37 = Attribute<A>.subscript.modify(&v46, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v45);
    (v37)(&v46, 0, v38);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}