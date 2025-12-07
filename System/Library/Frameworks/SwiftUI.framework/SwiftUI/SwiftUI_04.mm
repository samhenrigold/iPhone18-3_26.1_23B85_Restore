uint64_t initializeWithCopy for NavigationPath(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 24);
  outlined copy of NavigationPath.Representation(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v8;

  return a1;
}

uint64_t outlined copy of NavigationPath.Representation(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t outlined consume of NavigationPath.Representation(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t destroy for NavigationPath(uint64_t a1)
{
  outlined consume of NavigationPath.Representation(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for FocusState(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for SpatialTapGesture(uint64_t result)
{
  if (!*(result + 48))
  {
    return __swift_destroy_boxed_opaque_existential_1((result + 8));
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA27TransformScrollDeceleration33_B8A1805B47C89D6545C6C966F85D8BC6LLVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 8);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v5;
  v8[1] = a4;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t initializeWithCopy for OnTestViewModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t destroy for FocusState(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v8 = *(v4 + 8);
  v8(a1, v3);
  v5 = (a1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = (v5 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return (v8)(v6, v3);
}

uint64_t destroy for OnTestViewModifier(uint64_t a1)
{
}

uint64_t initializeWithCopy for FocusState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = *(v6 + 80);
  v12 = v9 + v11 + 8;
  v13 = v10 + v11 + 8;

  v7(v12 & ~v11, v13 & ~v11, v5);
  return a1;
}

uint64_t closure #1 in Attribute.init<A>(_:)@<X0>(_DWORD *a5@<X8>)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a5 = result;
  return result;
}

{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a5 = result;
  return result;
}

uint64_t partial apply for closure #1 in Attribute.init<A>(_:)@<X0>(_DWORD *a2@<X8>)
{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?, &type metadata for WidgetAuxiliaryTextImagePreference);
  return closure #1 in Attribute.init<A>(_:)(a2);
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply@<X0>(_DWORD *a2@<X8>)
{
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  type metadata accessor for TableColumnList();
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a2);
}

{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2(a2);
}

{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7(a2);
}

{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  type metadata accessor for ((_:))?(0, &lazy cache variable for type metadata for ((_:))?, &lazy cache variable for type metadata for (_:), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a2 = result;
  return result;
}

{
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_4(type metadata accessor for (_:), a2);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_1(type metadata accessor for (_:), a2);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_14(a2);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_2(type metadata accessor for (_:), a2);
}

{
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:), &type metadata for PlatformItemList);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a2 = result;
  return result;
}

{
  type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ArchivedViewState], &type metadata for ArchivedViewState, MEMORY[0x1E69E62F8]);
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_4(type metadata accessor for (_:), a2);
}

{
  type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [ScrollableCollection], &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60], MEMORY[0x1E69E62F8]);
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, MEMORY[0x1E69E62F8]);
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  type metadata accessor for [Selectable](0);
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](0, &lazy cache variable for type metadata for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration], lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, &type metadata for ToolbarAppearanceConfiguration);
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  type metadata accessor for (_:)(0);
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  type metadata accessor for AccessibilityQuickActionProxy(0);
  return closure #1 in Attribute.init<A>(_:)(a2);
}

{
  return closure #1 in Attribute.init<A>(_:)(a2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_1@<X0>(_DWORD *a2@<X8>)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a2 = result;
  return result;
}

uint64_t outlined copy of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t type metadata completion function for _TaskModifier(uint64_t a1)
{
  result = type metadata accessor for TaskPriority();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeWithCopy for _TaskModifier(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t destroy for _TaskModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t outlined consume of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t Button.init(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = 4;
  v10 = &a7[*(type metadata accessor for Button(0, a5, a6, a4) + 36)];
  *v10 = a1;
  v10[1] = a2;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();

  a3(v11);
}

_BYTE *initializeWithCopy for Button(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = a1;
  *a1 = *a2;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 | 7) + 1;
  v9 = &v5[v8] & ~(v7 | 7);
  v10 = (&a2[v8] & ~(v7 | 7));
  v11 = *(*(v6 - 8) + 64) + ((v7 + 75) & ~v7);
  if ((v11 + 1) > 0x30)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 48;
  }

  v13 = v10[v12];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = *v10;
    }

    else if (v15 == 2)
    {
      v16 = *v10;
    }

    else if (v15 == 3)
    {
      v16 = *v10 | (v10[2] << 16);
    }

    else
    {
      v16 = *v10;
    }

    v17 = (v16 | (v14 << (8 * v12))) + 3;
    v13 = v16 + 3;
    if (v12 < 4)
    {
      v13 = v17;
    }
  }

LABEL_18:
  if (v13 == 2)
  {
    v33 = *v10;
    v34 = *(v10 + 1);
    v35 = v10[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v10, v34, v35);
    *v9 = v33;
    *(v9 + 8) = v34;
    *(v9 + 16) = v35;
    v36 = *(v10 + 3);
    *(v9 + 24) = v36;
    v37 = *(v10 + 5);
    *(v9 + 32) = *(v10 + 4);
    *(v9 + 40) = v37;
    *(v9 + v12) = 2;
    v38 = v36;
LABEL_23:

    goto LABEL_24;
  }

  if (v13 != 1)
  {
    v39 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 8) = v39;
    *(v9 + v12) = 0;
    goto LABEL_23;
  }

  v47 = a3;
  v18 = *v10;
  v19 = *(v10 + 1);
  v48 = v5;
  v20 = *(v10 + 2);
  v21 = *(v10 + 3);
  v22 = v10[34];
  v23 = *(v10 + 16);
  v45 = *(*(v6 - 8) + 64);
  v46 = v6;
  v44 = *(v6 - 8);
  outlined copy of Environment<OpenURLAction>.Content(*v10, v19, v20, v21, v23, v22);
  *v9 = v18;
  *(v9 + 8) = v19;
  *(v9 + 16) = v20;
  *(v9 + 24) = v21;
  *(v9 + 32) = v23;
  *(v9 + 34) = v22;
  v24 = (v9 + 42) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v10 + 42) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v42 = *(v25 + 32);
  v43 = *(v25 + 34);
  v30 = outlined copy of Environment<OpenURLAction>.Content(*v25, v27, v28, v29, v42, v43);
  *v24 = v26;
  *(v24 + 8) = v27;
  *(v24 + 16) = v28;
  *(v24 + 24) = v29;
  *(v24 + 32) = v42;
  *(v24 + 34) = v43;
  v31 = v7 + 35 + v24;
  a3 = v47;
  v5 = v48;
  v32 = v31 & ~v7;
  (*(v44 + 16))(v32, (v7 + 35 + v25) & ~v7, v46, v30);
  *(v32 + v45) = *(((v7 + 35 + v25) & ~v7) + v45);
  *(v9 + v12) = 1;
LABEL_24:
  v40 = *(*(a3 + 16) - 8);
  (*(v40 + 16))((v12 + *(v40 + 80) + 1 + v9) & ~*(v40 + 80), &v10[v12 + 1 + *(v40 + 80)] & ~*(v40 + 80));
  return v5;
}

uint64_t destroy for Button(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + (v6 | 7) + 1) & ~(v6 | 7));
  v8 = *(v5 + 64) + ((v6 + 75) & ~v6);
  if ((v8 + 1) > 0x30)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 48;
  }

  v10 = v7[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = *v7;
    }

    else if (v12 == 2)
    {
      v13 = *v7;
    }

    else if (v12 == 3)
    {
      v13 = *v7 | (v7[2] << 16);
    }

    else
    {
      v13 = *v7;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  if (v10 == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v7, *(v7 + 1), v7[16]);
  }

  else if (v10 == 1)
  {
    v15 = v4;
    outlined consume of Environment<OpenURLAction>.Content(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 16), v7[34]);
    v16 = (v7 + 42) & 0xFFFFFFFFFFFFFFF8;
    v17 = outlined consume of Environment<OpenURLAction>.Content(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 34));
    (*(v5 + 8))((v6 + v16 + 35) & ~v6, v15, v17);
    goto LABEL_23;
  }

LABEL_23:
  v18 = *(*(a2 + 16) - 8);
  v19 = *(v18 + 8);
  v20 = &v7[v9 + 1 + *(v18 + 80)] & ~*(v18 + 80);

  return v19(v20);
}

unint64_t lazy protocol witness table accessor for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier()
{
  result = lazy protocol witness table cache variable for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier;
  if (!lazy protocol witness table cache variable for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefinesSearchCompletionModifier, &type metadata for DefinesSearchCompletionModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier);
  }

  return result;
}

uint64_t sub_18BD95A3C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    v3 = type metadata accessor for TagValueTraitKey();
    v4 = MEMORY[0x1E697EB68];
    swift_getWitnessTable(MEMORY[0x1E697EB68], v3);
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    v5 = type metadata accessor for Optional();
    v7 = v1;
    swift_getWitnessTable(MEMORY[0x1E69E7C78], v5, &v7);
    v6 = type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable(v4, v6);
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_18BD95BA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    v3 = type metadata accessor for _TagTraitWritingModifier();
    v4 = type metadata accessor for ModifiedContent();
    v19[0] = v2;
    v19[1] = swift_getWitnessTable(MEMORY[0x1E69804A0], v3);
    return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v19);
  }

  else
  {
    v6 = type metadata accessor for TagValueTraitKey();
    v7 = MEMORY[0x1E697EB68];
    swift_getWitnessTable(MEMORY[0x1E697EB68], v6);
    v8 = type metadata accessor for _TraitWritingModifier();
    v9 = type metadata accessor for ModifiedContent();
    v10 = type metadata accessor for Optional();
    v18 = v1;
    swift_getWitnessTable(MEMORY[0x1E69E7C78], v10, &v18);
    v11 = type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable(v7, v11);
    v12 = type metadata accessor for _TraitWritingModifier();
    v13 = type metadata accessor for ModifiedContent();
    v14 = MEMORY[0x1E697FDC0];
    v17[0] = v2;
    v17[1] = swift_getWitnessTable(MEMORY[0x1E697FDC0], v8);
    v15 = MEMORY[0x1E697E858];
    v16[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v17);
    v16[1] = swift_getWitnessTable(v14, v12);
    return swift_getWitnessTable(v15, v13, v16);
  }
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSi_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<Int>, MEMORY[0x1E69E6530], type metadata accessor for UserDefaultLocation);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = [objc_opt_self() standardUserDefaults];
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 116) = 0;
  *(v12 + 124) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

uint64_t AppStorage.init<A>(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSi_Tt3g5(a2, a3, &unk_1EFFBA410, &protocol witness table for IntegerTransform, a4, a1);
}

{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSb_Tt3g5(a2, a3, &unk_1EFFBA430, &protocol witness table for BoolTransform, a4, a1);
}

void type metadata accessor for UserDefaultLocation<Bool?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for PropertyListTransform<Data>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = type metadata accessor for UserDefaultLocation(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSiSg_Tt3g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, unint64_t *a8, unint64_t *a9, uint64_t a10)
{
  type metadata accessor for UserDefaultLocation<Bool?>(0, a8, a9, a10);
  v17 = swift_allocObject();
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 96) = 256;
  *(v17 + 104) = [objc_opt_self() standardUserDefaults];
  *(v17 + 112) = 0;
  *(v17 + 120) = 0;
  *(v17 + 124) = 0;
  *(v17 + 132) = 1;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7 & 1;
  *(v17 + 64) = a5;
  *(v17 + 72) = 0;
  return v17;
}

uint64_t AppStorage<A>.init<>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSiSg_Tt3g5Tm(a1, a2, &unk_1EFFBA410, &protocol witness table for IntegerTransform, a3, 0, 1, &lazy cache variable for type metadata for UserDefaultLocation<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
}

{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSSSg_Tt3g5Tm(a1, a2, &unk_1EFFBA3D0, &protocol witness table for StringTransform, a3, 0, 0, &lazy cache variable for type metadata for UserDefaultLocation<String?>, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], 1);
}

{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSbSg_Tt3g5(a1, a2, &unk_1EFFBA430, &protocol witness table for BoolTransform, a3, 2);
}

{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSiSg_Tt3g5Tm(a1, a2, &unk_1EFFBA3F0, &protocol witness table for DoubleTransform, a3, 0, 1, &lazy cache variable for type metadata for UserDefaultLocation<Double?>, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0]);
}

{
  v6 = MEMORY[0x1E6969080];
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for PropertyListTransform<Data>, MEMORY[0x1E6969080], type metadata accessor for PropertyListTransform);
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSSSg_Tt3g5Tm(a1, a2, v7, &protocol witness table for PropertyListTransform<A>, a3, 0, 0xF000000000000000, &lazy cache variable for type metadata for UserDefaultLocation<Data?>, &lazy cache variable for type metadata for Data?, v6, 0xB000000000000000);
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSSSg_Tt3g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8, unint64_t *a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for UserDefaultLocation<Bool?>(0, a8, a9, a10);
  v18 = swift_allocObject();
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *(v18 + 96) = a11;
  *(v18 + 104) = [objc_opt_self() standardUserDefaults];
  *(v18 + 112) = 0;
  *(v18 + 120) = 0;
  *(v18 + 124) = 0;
  *(v18 + 132) = 1;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 64) = a5;
  *(v18 + 72) = 0;
  return v18;
}

void specialized static ScalarUserDefaultsValueTransform.readValue(from:key:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = MEMORY[0x18D00C850](a2, a3);
  v9 = [a1 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v12);
    a4[3] = MEMORY[0x1E69E6530];
    v10 = MEMORY[0x18D00C850](a2, a3);
    v11 = [a1 integerForKey_];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    outlined destroy of Any?(v12);
    v11 = 0;
    a4[1] = 0;
    a4[2] = 0;
    a4[3] = 0;
  }

  *a4 = v11;
}

{
  v8 = MEMORY[0x18D00C850](a2, a3);
  v9 = [a1 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v13);
    a4[3] = MEMORY[0x1E69E63B0];
    v10 = MEMORY[0x18D00C850](a2, a3);
    [a1 doubleForKey_];
    v12 = v11;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    outlined destroy of Any?(v13);
    a4[1] = 0;
    a4[2] = 0;
    v12 = 0;
    a4[3] = 0;
  }

  *a4 = v12;
}

uint64_t UIKitEventBindingBridge.__deallocating_deinit()
{
  v0 = EventBindingBridge.deinit();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t @objc DeprecatedAlertBridge.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  outlined destroy of weak FallbackResponderProvider?(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  v3 = *((*v2 & *a1) + 0x88);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

id SheetBridge.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *MEMORY[0x1E69E7D40] & *v4;
  if ((*(v4 + direct field offset for SheetBridge.hasWindow) & 1) == 0)
  {
    v7 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v5 + v7, v17);
    v8 = PresentationState.Base.presentedVC.getter();
    outlined destroy of PresentationState(v17);
    if (v8)
    {
      v9 = v8;
      v10 = [v9 presentingViewController];
      v11 = v9;
      if (v10)
      {
        v12 = v10;

        v11 = v12;
      }

      static Transaction.current.getter();
      v13 = Transaction.disablesAnimations.getter();

      [v11 dismissViewControllerAnimated:(v13 & 1) == 0 completion:0];
    }
  }

  v14 = type metadata accessor for SheetBridge(0, *(v6 + 80), *(v6 + 88), a4);
  v16.receiver = v5;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

uint64_t FocusBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 24);

  outlined destroy of FocusItem?(v0 + 88);
  swift_weakDestroy();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t UIKitSensoryFeedbackCache.__deallocating_deinit()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocClassInstance();
}

id ContextMenuBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *&v2[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_popoverBridgeToken];
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];
    swift_unknownObjectRelease_n();
  }

  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id _UIHostingView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x68);
  v8 = *(v4 + v7);
  v9 = type metadata accessor for _UIHostingView(255, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v9);
  v10 = v8;
  v11 = v4;
  UIHostingViewBase.tearDown(uiView:updateDelegate:)();

  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver_];

  v13 = *(v5 + v7);
  UIHostingViewBase.clearDisplayLink()();

  v14 = *(v5 + v7);
  UIHostingViewBase.clearUpdateTimer()();

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = swift_checkMetadataState();
  HostingViewRegistry.remove<A>(_:)(v11);
  v16 = v11 + *((*v6 & *v11) + 0xE8);
  if ((v16[8] & 1) == 0)
  {
    v17 = *(v16 + 1);
    notify_cancel(*v16);
    notify_cancel(v17);
  }

  v19.receiver = v11;
  v19.super_class = v15;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

uint64_t destroy for FocusStore(uint64_t a1)
{
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v11;
    }

    outlined init with take of WeakBox<Swift.AnyObject>(*(v10 + 56) + 8 * v8, a2);
    result = specialized _NativeDictionary._delete(at:)(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

uint64_t HostingViewRegistry.remove<A>(_:)(uint64_t a1)
{
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v3);
  outlined destroy of WeakBox<Swift.AnyObject>(v3, type metadata accessor for WeakBox<Swift.AnyObject>?);
  return swift_endAccess();
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v9 = MEMORY[0x1E69E7C98];
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = (v10 + 8 * v3);
      if (v3 != v6 || v15 >= v11 + 1)
      {
        *v15 = *v11;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        type metadata accessor for [TabCustomizationID](0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v9 + 8, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        type metadata accessor for [TabCustomizationID](0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v9 + 8, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 48);
      v13 = (v12 + 4 * v6);
      result = MEMORY[0x18D00F6B0](*(a2 + 40), *v13, 4);
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v12 + 4 * v3);
          if (v3 != v6 || v17 >= v13 + 1)
          {
            *v17 = *v13;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + (v3 << 6));
          v20 = (v18 + (v6 << 6));
          if (v3 != v6 || v19 >= v20 + 4)
          {
            v9 = *v20;
            v10 = v20[1];
            v11 = v20[3];
            v19[2] = v20[2];
            v19[3] = v11;
            *v19 = v9;
            v19[1] = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v24);
      v9 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v26 = v4;
    do
    {
      v9 = 24 * v6;
      v10 = *(a2 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      Hasher.init(_seed:)();
      if (v13)
      {
        MEMORY[0x18D00F6F0](v11);
        Hasher._combine(_:)(v12);
      }

      else
      {

        String.hash(into:)();
      }

      v14 = Hasher._finalize()();
      result = outlined consume of SceneID(v11, v12, v13);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        v4 = v26;
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v26;
        if (v15 >= v8)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + v9);
        if (24 * v3 < v9 || v17 >= v18 + 24 || v3 != v6)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      outlined init with copy of HashableWeakBox<UIViewController>(*(a2 + 48) + 16 * v6, v17);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v18);
      v9 = Hasher._finalize()();
      result = outlined destroy of HashableWeakBox<UIViewController>(v17);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        if (v3 < v6 || *(a2 + 48) + 16 * v3 >= *(a2 + 48) + 16 * v6 + 16)
        {
          _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E697E7A8]);
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v3 != v6)
        {
          _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E697E7A8]);
          result = swift_arrayInitWithTakeBackToFront();
        }

        v11 = *(a2 + 56);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v14 = *(a2 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v16;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      outlined init with copy of NavigationLinkSelectionIdentifier(*(a2 + 48) + (v6 << 6), v32);
      Hasher.init(_seed:)();
      outlined init with copy of WeakBox<Swift.AnyObject>(v32, &v29, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
      if (*(&v30 + 1))
      {
        v26 = v29;
        v27 = v30;
        v28 = v31;
        Hasher._combine(_:)(1u);
        v9 = *(&v27 + 1);
        v10 = v28;
        __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
        (*(v10 + 24))(v25, v9, v10);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v25);
        outlined destroy of AnyNavigationLinkPresentedValue(&v26);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (*(&v33 + 1) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v29 = v33;
        Hasher._combine(_:)(1u);

        _ViewList_ID.Canonical.hash(into:)();
      }

      MEMORY[0x18D00F6F0](v34);
      v11 = Hasher._finalize()();
      result = outlined destroy of NavigationLinkSelectionIdentifier(v32);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v12)
      {
LABEL_16:
        v13 = *(a2 + 48);
        v14 = (v13 + (v3 << 6));
        v15 = (v13 + (v6 << 6));
        if (v3 != v6 || v14 >= v15 + 4)
        {
          v16 = *v15;
          v17 = v15[1];
          v18 = v15[3];
          v14[2] = v15[2];
          v14[3] = v18;
          *v14 = v16;
          v14[1] = v17;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v25 = v4;
    do
    {
      v9 = 24 * v6;
      v10 = v2;
      v11 = *(*(v2 + 48) + 24 * v6 + 16);
      v12 = v8;
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);

      String.hash(into:)();
      v13 = Hasher._finalize()();
      result = outlined consume of TabCustomizationID.Base();
      v8 = v12;
      v14 = v13 & v7;
      if (v3 >= v12)
      {
        if (v14 < v12)
        {
          v4 = v25;
          v2 = v10;
        }

        else
        {
          v4 = v25;
          v2 = v10;
          if (v3 >= v14)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v25;
        v2 = v10;
        if (v14 >= v8 || v3 >= v14)
        {
LABEL_11:
          v15 = *(v2 + 48);
          v16 = v15 + 24 * v3;
          v17 = (v15 + v9);
          if (24 * v3 < v9 || v16 >= v17 + 24 || v3 != v6)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v18;
          }

          v19 = *(v2 + 56);
          v20 = (v19 + 2 * v3);
          v21 = (v19 + 2 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(v2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v24;
    ++*(v2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v25 = v4;
    do
    {
      v9 = 24 * v6;
      v10 = v2;
      v11 = *(*(v2 + 48) + 24 * v6 + 16);
      v12 = v8;
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);

      String.hash(into:)();
      v13 = Hasher._finalize()();
      result = outlined consume of TabCustomizationID.Base();
      v8 = v12;
      v14 = v13 & v7;
      if (v3 >= v12)
      {
        if (v14 < v12)
        {
          v4 = v25;
          v2 = v10;
        }

        else
        {
          v4 = v25;
          v2 = v10;
          if (v3 >= v14)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v25;
        v2 = v10;
        if (v14 >= v8 || v3 >= v14)
        {
LABEL_11:
          v15 = *(v2 + 48);
          v16 = v15 + 24 * v3;
          v17 = (v15 + v9);
          if (24 * v3 < v9 || v16 >= v17 + 24 || v3 != v6)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v18;
          }

          v19 = *(v2 + 56);
          v20 = (v19 + 8 * v3);
          v21 = (v19 + 8 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(v2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v24;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v30 = a2 + 64;
    v28 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v8 = 40 * v6;
      v9 = *(v2 + 48) + 40 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      Hasher.init(_seed:)();
      if (v14)
      {
        MEMORY[0x18D00F6F0](1);

        String.hash(into:)();
      }

      else
      {
        MEMORY[0x18D00F6F0](0);
      }

      String.hash(into:)();
      v15 = Hasher._finalize()();
      result = outlined consume of TableColumnCustomizationID.Base(v10, v11, v12, v13, v14);
      v16 = v15 & v7;
      if (v3 >= v28)
      {
        v2 = a2;
        v4 = v30;
        if (v16 < v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = a2;
        v4 = v30;
        if (v16 >= v28)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v16)
      {
LABEL_13:
        v17 = *(v2 + 48);
        v18 = v17 + 40 * v3;
        v19 = (v17 + v8);
        if (40 * v3 < v8 || v18 >= v19 + 40 || v3 != v6)
        {
          v20 = *v19;
          v21 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v20;
          *(v18 + 16) = v21;
        }

        v22 = *(v2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v23 >= v24 + 1))
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for PartialKeyPath<UISplitViewController>, &lazy cache variable for type metadata for UISplitViewController, 0x1E69DCF78, MEMORY[0x1E69E6B88]);
    do
    {
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = (v13 + 8 * v3);
          v15 = (v13 + 8 * v6);
          if (v3 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v15 >= v16 + 1))
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v12 = 48 * v6;
      outlined init with copy of TableRowID(*(a2 + 48) + 48 * v6, v32);
      Hasher.init(_seed:)();
      outlined init with copy of TableRowID(v32, v29);
      if (v31)
      {
        v27[0] = v29[0];
        v27[1] = v29[1];
        v28 = v30;
        MEMORY[0x18D00F6F0](1);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v27);
      }

      else
      {
        v13 = *&v29[0];
        MEMORY[0x18D00F6F0](0);
        MEMORY[0x18D00F6F0](v13);
      }

      v14 = Hasher._finalize()();
      result = outlined destroy of TableRowID(v32);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + v12);
        if (48 * v3 < v12 || v17 >= v18 + 3 || v3 != v6)
        {
          v19 = *v18;
          v20 = v18[2];
          v17[1] = v18[1];
          v17[2] = v20;
          *v17 = v19;
        }

        v21 = *(a2 + 56);
        v22 = v21 + 56 * v3;
        v23 = (v21 + 56 * v6);
        if (56 * v3 < (56 * v6) || v22 >= v23 + 56 || v3 != v6)
        {
          v9 = *v23;
          v10 = v23[1];
          v11 = v23[2];
          *(v22 + 48) = *(v23 + 6);
          *(v22 + 16) = v10;
          *(v22 + 32) = v11;
          *v22 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (32 * v3 != 32 * v6 || (v3 = v6, v17 >= v18 + 2))
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v26);
      v11 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void type metadata accessor for WeakBox<Swift.AnyObject>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WeakBox<Swift.AnyObject>?)
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E6981A78]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>?);
    }
  }
}

uint64_t outlined destroy of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void @objc _UIHostingView.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  MEMORY[0x18D011290](&a1[*((*v2 & *a1) + 0xD0)]);

  outlined consume of SheetBridge<SheetPreference.Key>??(*&a1[*((*v2 & *a1) + 0x110)]);

  swift_weakDestroy();

  outlined destroy of weak FallbackResponderProvider?(&a1[*((*v2 & *a1) + 0x1C0)]);

  MEMORY[0x18D011290](&a1[*((*v2 & *a1) + 0x1D8)]);

  v3 = *&a1[*((*v2 & *a1) + 0x1F8)];
}

uint64_t @objc SheetBridge.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak FallbackResponderProvider?(a1 + direct field offset for SheetBridge.host);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(a1 + direct field offset for SheetBridge.interactiveDismissHandler), *(a1 + direct field offset for SheetBridge.interactiveDismissHandler + 8));
  outlined destroy of PresentationState(a1 + direct field offset for SheetBridge.presentationState);
  MEMORY[0x18D011290](a1 + direct field offset for SheetBridge.presenterOverride);
}

uint64_t getEnumTagSinglePayload for DropDestination(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t UIKitStatusBarBridge.__deallocating_deinit()
{

  outlined destroy of weak FallbackResponderProvider?(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ParameterizedLazyView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t UIHostingConfiguration.background<A>(content:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v28 = a6;
  v29 = a5;
  v26 = a2;
  v27 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UIHostingConfigurationStorage(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v26 - v22;
  outlined init with copy of UIHostingConfigurationStorage(v7 + *(a3 + 56), &v26 - v22, type metadata accessor for UIHostingConfigurationStorage);
  *v23 = 1;
  v24 = (*(v14 + 16))(v17, v7, v13);
  v27(v24);
  outlined init with copy of UIHostingConfigurationStorage(v23, v20, type metadata accessor for UIHostingConfigurationStorage);
  UIHostingConfiguration.init(rootView:backgroundView:storage:)(v17, v11, v20, v13, a4, *(a3 + 32), v29, v28);
  return outlined destroy of UIHostingConfigurationStorage(v23, type metadata accessor for UIHostingConfigurationStorage);
}

uint64_t UIHostingConfiguration.init(rootView:backgroundView:storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v14 = type metadata accessor for UIHostingConfiguration(0, v20);
  v15 = a8 + *(v14 + 56);
  *v15 = 1;
  MEMORY[0x18D007050]();
  *(v15 + 72) = 0;
  *(v15 + 80) = 1;
  *(v15 + 88) = 0;
  *(v15 + 96) = 1;
  *(v15 + 97) = 1;
  v16 = type metadata accessor for UIHostingConfigurationStorage(0);
  v17 = v16[9];
  v18 = type metadata accessor for UICellConfigurationState();
  (*(*(v18 - 8) + 56))(v15 + v17, 1, 1, v18);
  *(v15 + v16[10]) = 0;
  *(v15 + v16[11] + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  (*(*(a5 - 8) + 32))(a8 + *(v14 + 52), a2, a5);
  return outlined assign with take of WeakBox<UIButton>?(a3, v15, type metadata accessor for UIHostingConfigurationStorage);
}

uint64_t assignWithTake for UIHostingConfigurationStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  v6 = a3[9];
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  v13 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(swift_unknownObjectWeakTakeAssign() + 8) = *(a2 + v13 + 8);
  return a1;
}

uint64_t PresentationState.Base.presentedVC.getter()
{
  outlined init with copy of PresentationState.Base(v0, &v5);
  v1 = 0;
  switch(v8[106])
  {
    case 2:
    case 3:
    case 5:
      v1 = v5;
      v2 = &v6;
      goto LABEL_12;
    case 4:
    case 6:
    case 0xA:
      outlined destroy of SheetPreference(&v5);
      goto LABEL_6;
    case 7:
      return v5;
    case 8:
      v1 = v7;
      outlined destroy of SheetPreference(v8);
      goto LABEL_11;
    case 9:
      v3 = v7;
      type metadata accessor for _SemanticFeature<Semantics_v6>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
      v1 = swift_dynamicCastClass();
      if (!v1)
      {
      }

      goto LABEL_11;
    case 0xB:
      outlined destroy of PresentationState.Base(&v5);
LABEL_6:
      v1 = 0;
      break;
    case 0xC:
      return v1;
    default:
      v1 = v7;
LABEL_11:
      v2 = &v5;
LABEL_12:
      outlined destroy of SheetPreference(v2);
      break;
  }

  return v1;
}

uint64_t initializeWithCopy for PresentationState.Base(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 234);
  if (v4 >= 0xC)
  {
    v4 = *a2 + 12;
  }

  if (v4 <= 5)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v29 = *a2;
        v30 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v30;
        v32 = a2 + 2;
        v31 = a2[2];
        v33 = v29;

        if (v31)
        {
          v34 = a2[3];
          *(a1 + 16) = v31;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = *v32;
        }

        *(a1 + 32) = a2[4];
        v83 = a2[8];
        if (v83)
        {
          v84 = a2[9];
          *(a1 + 64) = v83;
          *(a1 + 72) = v84;
          (**(v83 - 8))(a1 + 40, a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 72) = a2[9];
        }

        *(a1 + 80) = *(a2 + 40);
        v92 = a2[12];
        *(a1 + 88) = a2[11];
        *(a1 + 96) = v92;
        *(a1 + 104) = a2[13];
        *(a1 + 112) = *(a2 + 56);
        v65 = 3;
      }

      else if (v4 == 4)
      {
        *a1 = *a2;
        v44 = a2 + 1;
        v43 = a2[1];

        if (v43)
        {
          v45 = a2[2];
          *(a1 + 8) = v43;
          *(a1 + 16) = v45;
        }

        else
        {
          *(a1 + 8) = *v44;
        }

        *(a1 + 24) = a2[3];
        v98 = a2[7];
        if (v98)
        {
          v99 = a2[8];
          *(a1 + 56) = v98;
          *(a1 + 64) = v99;
          (**(v98 - 8))(a1 + 32, a2 + 4);
        }

        else
        {
          v105 = *(a2 + 3);
          *(a1 + 32) = *(a2 + 2);
          *(a1 + 48) = v105;
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = *(a2 + 36);
        v106 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v106;
        *(a1 + 96) = a2[12];
        *(a1 + 104) = *(a2 + 52);
        v65 = 4;
      }

      else
      {
        v14 = *a2;
        v15 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v15;
        v17 = a2 + 2;
        v16 = a2[2];
        v18 = v14;

        if (v16)
        {
          v19 = a2[3];
          *(a1 + 16) = v16;
          *(a1 + 24) = v19;
        }

        else
        {
          *(a1 + 16) = *v17;
        }

        *(a1 + 32) = a2[4];
        v60 = a2[8];
        if (v60)
        {
          v61 = a2[9];
          *(a1 + 64) = v60;
          *(a1 + 72) = v61;
          (**(v60 - 8))(a1 + 40, a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 72) = a2[9];
        }

        *(a1 + 80) = *(a2 + 40);
        v72 = a2[12];
        *(a1 + 88) = a2[11];
        *(a1 + 96) = v72;
        *(a1 + 104) = a2[13];
        *(a1 + 112) = *(a2 + 56);
        v65 = 5;
      }

      goto LABEL_103;
    }

    if (!v4)
    {
      *a1 = *a2;
      v24 = a2 + 1;
      v23 = a2[1];

      if (v23)
      {
        v25 = a2[2];
        *(a1 + 8) = v23;
        *(a1 + 16) = v25;
      }

      else
      {
        *(a1 + 8) = *v24;
      }

      *(a1 + 24) = a2[3];
      v79 = a2[7];
      if (v79)
      {
        v80 = a2[8];
        *(a1 + 56) = v79;
        *(a1 + 64) = v80;
        (**(v79 - 8))(a1 + 32, a2 + 4);
      }

      else
      {
        v87 = *(a2 + 3);
        *(a1 + 32) = *(a2 + 2);
        *(a1 + 48) = v87;
        *(a1 + 64) = a2[8];
      }

      *(a1 + 72) = *(a2 + 36);
      v88 = a2[11];
      *(a1 + 80) = a2[10];
      *(a1 + 88) = v88;
      *(a1 + 96) = a2[12];
      *(a1 + 104) = *(a2 + 52);
      v89 = a2[14];
      *(a1 + 112) = v89;
      *(a1 + 120) = *(a2 + 30);
      *(a1 + 234) = 0;
      goto LABEL_98;
    }

    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = *a2;
        v6 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v6;
        v8 = a2 + 2;
        v7 = a2[2];
        v9 = v5;

        if (v7)
        {
          v10 = a2[3];
          *(a1 + 16) = v7;
          *(a1 + 24) = v10;
        }

        else
        {
          *(a1 + 16) = *v8;
        }

        *(a1 + 32) = a2[4];
        v56 = a2[8];
        if (v56)
        {
          v57 = a2[9];
          *(a1 + 64) = v56;
          *(a1 + 72) = v57;
          (**(v56 - 8))(a1 + 40, a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 72) = a2[9];
        }

        *(a1 + 80) = *(a2 + 40);
        v64 = a2[12];
        *(a1 + 88) = a2[11];
        *(a1 + 96) = v64;
        *(a1 + 104) = a2[13];
        *(a1 + 112) = *(a2 + 56);
        v65 = 2;
LABEL_103:
        *(a1 + 234) = v65;

        return a1;
      }

      goto LABEL_39;
    }

    *a1 = *a2;
    v39 = a2 + 1;
    v38 = a2[1];

    if (v38)
    {
      v40 = a2[2];
      *(a1 + 8) = v38;
      *(a1 + 16) = v40;
    }

    else
    {
      *(a1 + 8) = *v39;
    }

    *(a1 + 24) = a2[3];
    v96 = a2[7];
    if (v96)
    {
      v97 = a2[8];
      *(a1 + 56) = v96;
      *(a1 + 64) = v97;
      (**(v96 - 8))(a1 + 32, a2 + 4);
    }

    else
    {
      v102 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v102;
      *(a1 + 64) = a2[8];
    }

    *(a1 + 72) = *(a2 + 36);
    v103 = a2[11];
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v103;
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 52);
    v89 = a2[14];
    *(a1 + 112) = v89;
    *(a1 + 120) = *(a2 + 30);
    v95 = 1;
LABEL_97:
    *(a1 + 234) = v95;
LABEL_98:

    v104 = v89;
    return a1;
  }

  if (v4 > 8)
  {
    if (v4 != 9)
    {
      if (v4 == 10)
      {
        *a1 = *a2;
        v47 = a2 + 1;
        v46 = a2[1];

        if (v46)
        {
          v48 = a2[2];
          *(a1 + 8) = v46;
          *(a1 + 16) = v48;
        }

        else
        {
          *(a1 + 8) = *v47;
        }

        *(a1 + 24) = a2[3];
        v100 = a2[7];
        if (v100)
        {
          v101 = a2[8];
          *(a1 + 56) = v100;
          *(a1 + 64) = v101;
          (**(v100 - 8))(a1 + 32, a2 + 4);
        }

        else
        {
          v107 = *(a2 + 3);
          *(a1 + 32) = *(a2 + 2);
          *(a1 + 48) = v107;
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = *(a2 + 36);
        v108 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v108;
        *(a1 + 96) = a2[12];
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v65 = 10;
        goto LABEL_103;
      }

      if (v4 == 11)
      {
        *a1 = *a2;
        v21 = a2 + 1;
        v20 = a2[1];

        if (v20)
        {
          v22 = a2[2];
          *(a1 + 8) = v20;
          *(a1 + 16) = v22;
        }

        else
        {
          *(a1 + 8) = *v21;
        }

        *(a1 + 24) = a2[3];
        v62 = a2[7];
        if (v62)
        {
          v63 = a2[8];
          *(a1 + 56) = v62;
          *(a1 + 64) = v63;
          (**(v62 - 8))(a1 + 32, a2 + 4);
        }

        else
        {
          v73 = *(a2 + 3);
          *(a1 + 32) = *(a2 + 2);
          *(a1 + 48) = v73;
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = *(a2 + 36);
        v74 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v74;
        *(a1 + 96) = a2[12];
        *(a1 + 104) = *(a2 + 52);
        v65 = 11;
        goto LABEL_103;
      }

LABEL_39:
      v49 = *(a2 + 13);
      *(a1 + 192) = *(a2 + 12);
      *(a1 + 208) = v49;
      *(a1 + 219) = *(a2 + 219);
      v50 = *(a2 + 9);
      *(a1 + 128) = *(a2 + 8);
      *(a1 + 144) = v50;
      v51 = *(a2 + 11);
      *(a1 + 160) = *(a2 + 10);
      *(a1 + 176) = v51;
      v52 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v52;
      v53 = *(a2 + 7);
      *(a1 + 96) = *(a2 + 6);
      *(a1 + 112) = v53;
      v54 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v54;
      v55 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v55;
      return a1;
    }

    *a1 = *a2;
    v36 = a2 + 1;
    v35 = a2[1];

    if (v35)
    {
      v37 = a2[2];
      *(a1 + 8) = v35;
      *(a1 + 16) = v37;
    }

    else
    {
      *(a1 + 8) = *v36;
    }

    *(a1 + 24) = a2[3];
    v85 = a2[7];
    if (v85)
    {
      v86 = a2[8];
      *(a1 + 56) = v85;
      *(a1 + 64) = v86;
      (**(v85 - 8))(a1 + 32, a2 + 4);
    }

    else
    {
      v93 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v93;
      *(a1 + 64) = a2[8];
    }

    *(a1 + 72) = *(a2 + 36);
    v94 = a2[11];
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v94;
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 52);
    v89 = a2[14];
    *(a1 + 112) = v89;
    *(a1 + 120) = *(a2 + 120);
    v95 = 9;
    goto LABEL_97;
  }

  if (v4 == 6)
  {
    *a1 = *a2;
    v27 = a2 + 1;
    v26 = a2[1];

    if (v26)
    {
      v28 = a2[2];
      *(a1 + 8) = v26;
      *(a1 + 16) = v28;
    }

    else
    {
      *(a1 + 8) = *v27;
    }

    *(a1 + 24) = a2[3];
    v81 = a2[7];
    if (v81)
    {
      v82 = a2[8];
      *(a1 + 56) = v81;
      *(a1 + 64) = v82;
      (**(v81 - 8))(a1 + 32, a2 + 4);
    }

    else
    {
      v90 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v90;
      *(a1 + 64) = a2[8];
    }

    *(a1 + 72) = *(a2 + 36);
    v91 = a2[11];
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v91;
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 52);
    v65 = 6;
    goto LABEL_103;
  }

  if (v4 != 7)
  {
    *a1 = *a2;
    v12 = a2 + 1;
    v11 = a2[1];

    if (v11)
    {
      v13 = a2[2];
      *(a1 + 8) = v11;
      *(a1 + 16) = v13;
    }

    else
    {
      *(a1 + 8) = *v12;
    }

    *(a1 + 24) = a2[3];
    v58 = a2[7];
    if (v58)
    {
      v59 = a2[8];
      *(a1 + 56) = v58;
      *(a1 + 64) = v59;
      (**(v58 - 8))(a1 + 32, a2 + 4);
    }

    else
    {
      v66 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v66;
      *(a1 + 64) = a2[8];
    }

    v67 = a2[17];
    *(a1 + 72) = *(a2 + 36);
    v68 = a2[11];
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v68;
    *(a1 + 96) = a2[12];
    *(a1 + 104) = *(a2 + 52);
    v69 = a2[14];
    *(a1 + 112) = v69;
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = a2[16];

    v70 = v69;

    if (v67)
    {
      v71 = a2[18];
      *(a1 + 136) = v67;
      *(a1 + 144) = v71;
    }

    else
    {
      *(a1 + 136) = *(a2 + 17);
    }

    *(a1 + 152) = a2[19];
    v75 = a2[23];
    if (v75)
    {
      v76 = a2[24];
      *(a1 + 184) = v75;
      *(a1 + 192) = v76;
      (**(v75 - 8))(a1 + 160, a2 + 20);
    }

    else
    {
      v77 = *(a2 + 11);
      *(a1 + 160) = *(a2 + 10);
      *(a1 + 176) = v77;
      *(a1 + 192) = a2[24];
    }

    *(a1 + 200) = *(a2 + 100);
    v78 = a2[27];
    *(a1 + 208) = a2[26];
    *(a1 + 216) = v78;
    *(a1 + 224) = a2[28];
    *(a1 + 232) = *(a2 + 116);
    v65 = 8;
    goto LABEL_103;
  }

  v41 = *a2;
  *a1 = *a2;
  *(a1 + 234) = 7;
  v42 = v41;
  return a1;
}

uint64_t initializeWithCopy for PresentationState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 234);
  if (v4 <= 5)
  {
    if (*(a2 + 234) <= 2u)
    {
      if (!*(a2 + 234))
      {
        *a1 = *a2;
        v24 = (a2 + 8);
        v23 = *(a2 + 8);

        if (v23)
        {
          v25 = *(a2 + 16);
          *(a1 + 8) = v23;
          *(a1 + 16) = v25;
        }

        else
        {
          *(a1 + 8) = *v24;
        }

        *(a1 + 24) = *(a2 + 24);
        v79 = *(a2 + 56);
        if (v79)
        {
          v80 = *(a2 + 64);
          *(a1 + 56) = v79;
          *(a1 + 64) = v80;
          (**(v79 - 8))(a1 + 32, a2 + 32);
        }

        else
        {
          v87 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v87;
          *(a1 + 64) = *(a2 + 64);
        }

        *(a1 + 72) = *(a2 + 72);
        v88 = *(a2 + 88);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v88;
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        v89 = *(a2 + 112);
        *(a1 + 112) = v89;
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 234) = 0;
        goto LABEL_97;
      }

      if (v4 != 1)
      {
        v5 = *a2;
        v6 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v6;
        v8 = (a2 + 16);
        v7 = *(a2 + 16);
        v9 = v5;

        if (v7)
        {
          v10 = *(a2 + 24);
          *(a1 + 16) = v7;
          *(a1 + 24) = v10;
        }

        else
        {
          *(a1 + 16) = *v8;
        }

        *(a1 + 32) = *(a2 + 32);
        v56 = *(a2 + 64);
        if (v56)
        {
          v57 = *(a2 + 72);
          *(a1 + 64) = v56;
          *(a1 + 72) = v57;
          (**(v56 - 8))(a1 + 40, a2 + 40);
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
        }

        *(a1 + 80) = *(a2 + 80);
        v64 = *(a2 + 96);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v64;
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = *(a2 + 112);
        v65 = 2;
LABEL_102:
        *(a1 + 234) = v65;

        return a1;
      }

      *a1 = *a2;
      v39 = (a2 + 8);
      v38 = *(a2 + 8);

      if (v38)
      {
        v40 = *(a2 + 16);
        *(a1 + 8) = v38;
        *(a1 + 16) = v40;
      }

      else
      {
        *(a1 + 8) = *v39;
      }

      *(a1 + 24) = *(a2 + 24);
      v96 = *(a2 + 56);
      if (v96)
      {
        v97 = *(a2 + 64);
        *(a1 + 56) = v96;
        *(a1 + 64) = v97;
        (**(v96 - 8))(a1 + 32, a2 + 32);
      }

      else
      {
        v102 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v102;
        *(a1 + 64) = *(a2 + 64);
      }

      *(a1 + 72) = *(a2 + 72);
      v103 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v103;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      v89 = *(a2 + 112);
      *(a1 + 112) = v89;
      *(a1 + 120) = *(a2 + 120);
      v95 = 1;
LABEL_96:
      *(a1 + 234) = v95;
LABEL_97:

      v104 = v89;
      return a1;
    }

    switch(v4)
    {
      case 3u:
        v29 = *a2;
        v30 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v30;
        v32 = (a2 + 16);
        v31 = *(a2 + 16);
        v33 = v29;

        if (v31)
        {
          v34 = *(a2 + 24);
          *(a1 + 16) = v31;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = *v32;
        }

        *(a1 + 32) = *(a2 + 32);
        v83 = *(a2 + 64);
        if (v83)
        {
          v84 = *(a2 + 72);
          *(a1 + 64) = v83;
          *(a1 + 72) = v84;
          (**(v83 - 8))(a1 + 40, a2 + 40);
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
        }

        *(a1 + 80) = *(a2 + 80);
        v92 = *(a2 + 96);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v92;
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = *(a2 + 112);
        v65 = 3;
        goto LABEL_102;
      case 4u:
        *a1 = *a2;
        v44 = (a2 + 8);
        v43 = *(a2 + 8);

        if (v43)
        {
          v45 = *(a2 + 16);
          *(a1 + 8) = v43;
          *(a1 + 16) = v45;
        }

        else
        {
          *(a1 + 8) = *v44;
        }

        *(a1 + 24) = *(a2 + 24);
        v98 = *(a2 + 56);
        if (v98)
        {
          v99 = *(a2 + 64);
          *(a1 + 56) = v98;
          *(a1 + 64) = v99;
          (**(v98 - 8))(a1 + 32, a2 + 32);
        }

        else
        {
          v105 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v105;
          *(a1 + 64) = *(a2 + 64);
        }

        *(a1 + 72) = *(a2 + 72);
        v106 = *(a2 + 88);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v106;
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        v65 = 4;
        goto LABEL_102;
      case 5u:
        v14 = *a2;
        v15 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v15;
        v17 = (a2 + 16);
        v16 = *(a2 + 16);
        v18 = v14;

        if (v16)
        {
          v19 = *(a2 + 24);
          *(a1 + 16) = v16;
          *(a1 + 24) = v19;
        }

        else
        {
          *(a1 + 16) = *v17;
        }

        *(a1 + 32) = *(a2 + 32);
        v60 = *(a2 + 64);
        if (v60)
        {
          v61 = *(a2 + 72);
          *(a1 + 64) = v60;
          *(a1 + 72) = v61;
          (**(v60 - 8))(a1 + 40, a2 + 40);
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
        }

        *(a1 + 80) = *(a2 + 80);
        v72 = *(a2 + 96);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v72;
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = *(a2 + 112);
        v65 = 5;
        goto LABEL_102;
    }

    goto LABEL_38;
  }

  if (*(a2 + 234) > 8u)
  {
    switch(v4)
    {
      case 9u:
        *a1 = *a2;
        v36 = (a2 + 8);
        v35 = *(a2 + 8);

        if (v35)
        {
          v37 = *(a2 + 16);
          *(a1 + 8) = v35;
          *(a1 + 16) = v37;
        }

        else
        {
          *(a1 + 8) = *v36;
        }

        *(a1 + 24) = *(a2 + 24);
        v85 = *(a2 + 56);
        if (v85)
        {
          v86 = *(a2 + 64);
          *(a1 + 56) = v85;
          *(a1 + 64) = v86;
          (**(v85 - 8))(a1 + 32, a2 + 32);
        }

        else
        {
          v93 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v93;
          *(a1 + 64) = *(a2 + 64);
        }

        *(a1 + 72) = *(a2 + 72);
        v94 = *(a2 + 88);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v94;
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        v89 = *(a2 + 112);
        *(a1 + 112) = v89;
        *(a1 + 120) = *(a2 + 120);
        v95 = 9;
        goto LABEL_96;
      case 0xAu:
        *a1 = *a2;
        v47 = (a2 + 8);
        v46 = *(a2 + 8);

        if (v46)
        {
          v48 = *(a2 + 16);
          *(a1 + 8) = v46;
          *(a1 + 16) = v48;
        }

        else
        {
          *(a1 + 8) = *v47;
        }

        *(a1 + 24) = *(a2 + 24);
        v100 = *(a2 + 56);
        if (v100)
        {
          v101 = *(a2 + 64);
          *(a1 + 56) = v100;
          *(a1 + 64) = v101;
          (**(v100 - 8))(a1 + 32, a2 + 32);
        }

        else
        {
          v107 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v107;
          *(a1 + 64) = *(a2 + 64);
        }

        *(a1 + 72) = *(a2 + 72);
        v108 = *(a2 + 88);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v108;
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v65 = 10;
        goto LABEL_102;
      case 0xBu:
        *a1 = *a2;
        v21 = (a2 + 8);
        v20 = *(a2 + 8);

        if (v20)
        {
          v22 = *(a2 + 16);
          *(a1 + 8) = v20;
          *(a1 + 16) = v22;
        }

        else
        {
          *(a1 + 8) = *v21;
        }

        *(a1 + 24) = *(a2 + 24);
        v62 = *(a2 + 56);
        if (v62)
        {
          v63 = *(a2 + 64);
          *(a1 + 56) = v62;
          *(a1 + 64) = v63;
          (**(v62 - 8))(a1 + 32, a2 + 32);
        }

        else
        {
          v73 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v73;
          *(a1 + 64) = *(a2 + 64);
        }

        *(a1 + 72) = *(a2 + 72);
        v74 = *(a2 + 88);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v74;
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        v65 = 11;
        goto LABEL_102;
    }

    goto LABEL_38;
  }

  if (v4 == 6)
  {
    *a1 = *a2;
    v27 = (a2 + 8);
    v26 = *(a2 + 8);

    if (v26)
    {
      v28 = *(a2 + 16);
      *(a1 + 8) = v26;
      *(a1 + 16) = v28;
    }

    else
    {
      *(a1 + 8) = *v27;
    }

    *(a1 + 24) = *(a2 + 24);
    v81 = *(a2 + 56);
    if (v81)
    {
      v82 = *(a2 + 64);
      *(a1 + 56) = v81;
      *(a1 + 64) = v82;
      (**(v81 - 8))(a1 + 32, a2 + 32);
    }

    else
    {
      v90 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v90;
      *(a1 + 64) = *(a2 + 64);
    }

    *(a1 + 72) = *(a2 + 72);
    v91 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v91;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v65 = 6;
    goto LABEL_102;
  }

  if (v4 != 7)
  {
    if (v4 == 8)
    {
      *a1 = *a2;
      v12 = (a2 + 8);
      v11 = *(a2 + 8);

      if (v11)
      {
        v13 = *(a2 + 16);
        *(a1 + 8) = v11;
        *(a1 + 16) = v13;
      }

      else
      {
        *(a1 + 8) = *v12;
      }

      *(a1 + 24) = *(a2 + 24);
      v58 = *(a2 + 56);
      if (v58)
      {
        v59 = *(a2 + 64);
        *(a1 + 56) = v58;
        *(a1 + 64) = v59;
        (**(v58 - 8))(a1 + 32, a2 + 32);
      }

      else
      {
        v66 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v66;
        *(a1 + 64) = *(a2 + 64);
      }

      v67 = *(a2 + 136);
      *(a1 + 72) = *(a2 + 72);
      v68 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v68;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      v69 = *(a2 + 112);
      *(a1 + 112) = v69;
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);

      v70 = v69;

      if (v67)
      {
        v71 = *(a2 + 144);
        *(a1 + 136) = v67;
        *(a1 + 144) = v71;
      }

      else
      {
        *(a1 + 136) = *(a2 + 136);
      }

      *(a1 + 152) = *(a2 + 152);
      v75 = *(a2 + 184);
      if (v75)
      {
        v76 = *(a2 + 192);
        *(a1 + 184) = v75;
        *(a1 + 192) = v76;
        (**(v75 - 8))(a1 + 160, a2 + 160);
      }

      else
      {
        v77 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v77;
        *(a1 + 192) = *(a2 + 192);
      }

      *(a1 + 200) = *(a2 + 200);
      v78 = *(a2 + 216);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = v78;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      v65 = 8;
      goto LABEL_102;
    }

LABEL_38:
    v49 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v49;
    *(a1 + 219) = *(a2 + 219);
    v50 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v50;
    v51 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v51;
    v52 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v52;
    v53 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v53;
    v54 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v54;
    v55 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v55;
    return a1;
  }

  v41 = *a2;
  *a1 = *a2;
  *(a1 + 234) = 7;
  v42 = v41;
  return a1;
}

void destroy for PresentationState(id *a1)
{
  v2 = *(a1 + 234);
  if (v2 <= 5)
  {
    if (*(a1 + 234) <= 2u)
    {
      if (v2 >= 2)
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }

    if (v2 == 3)
    {
LABEL_21:

      if (a1[2])
      {
      }

      if (a1[8])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 5);
      }

LABEL_33:

      return;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        return;
      }

      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (*(a1 + 234) > 8u)
  {
    if (v2 == 9)
    {
LABEL_36:

      if (a1[1])
      {
      }

      if (a1[7])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 4);
      }

      v3 = a1[14];
      goto LABEL_42;
    }

    if (v2 != 10 && v2 != 11)
    {
      return;
    }

LABEL_29:

    if (a1[1])
    {
    }

    if (a1[7])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 4);
    }

    goto LABEL_33;
  }

  if (v2 == 6)
  {
    goto LABEL_29;
  }

  if (v2 != 7)
  {
    if (v2 != 8)
    {
      return;
    }

    if (a1[1])
    {
    }

    if (a1[7])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 4);
    }

    if (a1[17])
    {
    }

    if (a1[23])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 20);
    }

    goto LABEL_33;
  }

  v3 = *a1;
LABEL_42:
}

id specialized _UIHostingView.backgroundColor.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x88)) = 1;
  v8 = type metadata accessor for _UIHostingView(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_setBackgroundColor_, a1);
}

void @objc _UIHostingView.backgroundColor.setter(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = a1;
  specialized _UIHostingView.backgroundColor.setter(a3, v6, v7, v8);
}

uint64_t UIKitNavigationBridge.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 144) = -1;
  *(v0 + 152) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI9NamespaceV2IDV_AC33NavigationDestinationPresentationOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 160) = 0;
  EnvironmentValues.init()();
  *(v0 + 184) = xmmword_18CD6A6D0;
  swift_unknownObjectWeakInit();
  return v0;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI9NamespaceV2IDV_AC33NavigationDestinationPresentationOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<Namespace.ID, NavigationDestinationPresentation>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID, MEMORY[0x1E6981EA0], &type metadata for NavigationDestinationPresentation);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 104)
    {
      outlined init with copy of (String, TabEntry)(i, &v16, &lazy cache variable for type metadata for (Namespace.ID, NavigationDestinationPresentation), MEMORY[0x1E6981EA0], &type metadata for NavigationDestinationPresentation, type metadata accessor for (Badge, Spacer));
      v5 = v16;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 96 * result);
      v9 = v18;
      *v8 = v17;
      v8[1] = v9;
      v10 = v19;
      v11 = v20;
      v12 = v21[0];
      *(v8 + 73) = *(v21 + 9);
      v8[3] = v11;
      v8[4] = v12;
      v8[2] = v10;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {
        return v3;
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

uint64_t outlined copy of EnvironmentValues?(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

Swift::Void __swiftcall UIHostingController.didChangeRequiredBridges(from:to:)(SwiftUI::HostingControllerBridges from, SwiftUI::HostingControllerBridges to)
{
  v3 = v2;
  v6 = *MEMORY[0x1E69E7D40] & *v3;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v85 - v12;
  if (to.rawValue != from.rawValue)
  {
    MEMORY[0x18D00ABE0](v11);
    v14 = LOBYTE(from.rawValue) & ~UIHostingController.requiredBridges.getter();
    v16 = UIHostingController.requiredBridges.getter() & ~from.rawValue;
    if ((v14 & 2) != 0)
    {
      v18 = specialized UIHostingController.keyboardShortcutBridge.getter();
      if (v18)
      {
        v19 = v18;
        v20 = specialized UIHostingController.host.getter();
        v21 = v19;
        v22 = v20;
        _UIHostingView.viewGraph.getter(v22);

        GraphHost.removePreference<A>(_:)();

        v21[OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_isObservingPreferences] = 0;
      }

      v23 = specialized UIHostingController.keyboardShortcutBridge.getter();
      if (v23)
      {
        v25 = v23;
        v88[3] = type metadata accessor for UIHostingController(0, *(v6 + 80), *(v6 + 88), v24);
        v88[4] = &protocol witness table for UIHostingController<A>;
        v88[0] = v3;
        v26 = v25;
        v27 = v3;
        KeyboardShortcutBridge.flushKeyCommands(_:)(v88);

        outlined destroy of Logger?(v88, type metadata accessor for KeyboardShortcutSource?);
      }

      v17 = 0;
    }

    else
    {
      if ((v16 & 2) == 0)
      {
        goto LABEL_11;
      }

      v17 = [objc_allocWithZone(type metadata accessor for KeyboardShortcutBridge()) init];
    }

    UIHostingController.keyboardShortcutBridge.setter(v17);
LABEL_11:
    if ((v14 & 4) != 0)
    {
      if (specialized UIHostingController.navigationBridge.getter())
      {
        v36 = specialized UIHostingController.host.getter();
        _UIHostingView.viewGraph.getter(v36);

        GraphHost.removePreference<A>(_:)();
      }

      UIHostingController.navigationBridge.setter(0);
      if ((v14 & 1) == 0)
      {
LABEL_17:
        if (v16)
        {
          static Log.toolbar.getter();
          v34 = type metadata accessor for Logger();
          v35 = *(v34 - 8);
          if ((*(v35 + 48))(v9, 1, v34) == 1)
          {
            outlined destroy of Logger?(v9, type metadata accessor for Logger?);
          }

          else
          {
            v66 = v3;
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v87 = v6;
              v70 = v69;
              v71 = swift_slowAlloc();
              v86 = v16;
              v16 = v71;
              *v70 = 138412290;
              *(v70 + 4) = v66;
              *v71 = v3;
              v72 = v66;
              _os_log_impl(&dword_18BD4A000, v67, v68, "Added toolbar bridge to %@", v70, 0xCu);
              outlined destroy of Logger?(v16, type metadata accessor for NSObject?);
              v73 = v16;
              LOBYTE(v16) = v86;
              MEMORY[0x18D0110E0](v73, -1, -1);
              v74 = v70;
              v6 = v87;
              MEMORY[0x18D0110E0](v74, -1, -1);
            }

            (*(v35 + 8))(v9, v34);
          }

          type metadata accessor for ToolbarBridge<UIKitToolbarStrategy>(0, &lazy cache variable for type metadata for ToolbarBridge<UIKitToolbarStrategy>, &type metadata for UIKitToolbarStrategy, &protocol witness table for UIKitToolbarStrategy, type metadata accessor for ToolbarBridge);
          UIHostingController.toolbarBridge.setter([objc_allocWithZone(v75) init]);
          if (specialized UIHostingController.toolbarBridge.getter())
          {
            v76 = specialized UIHostingController.host.getter();
            _UIHostingView.viewGraph.getter(v76);

            GraphHost.addPreference<A>(_:)();
            GraphHost.addPreference<A>(_:)();
            GraphHost.addPreference<A>(_:)();
            GraphHost.addPreference<A>(_:)();

            if ((v14 & 0x10) != 0)
            {
LABEL_52:
              if (specialized UIHostingController.contentScrollViewBridge.getter())
              {
                v77 = specialized UIHostingController.host.getter();
                _UIHostingView.viewGraph.getter(v77);

                GraphHost.removePreference<A>(_:)();
              }

              UIHostingController.contentScrollViewBridge.setter(0);
              if ((v14 & 0x20) != 0)
              {
LABEL_55:
                if (specialized UIHostingController.alwaysOnBridge.getter())
                {
                  v78 = specialized UIHostingController.host.getter();

                  v79 = v78;
                  _UIHostingView.viewGraph.getter(v79);

                  specialized AlwaysOnBridge.removePreferences(from:)();
                }

                UIHostingController.alwaysOnBridge.setter(0);
                if (v14 < 0)
                {
                  goto LABEL_58;
                }

                goto LABEL_42;
              }

LABEL_37:
              if ((v16 & 0x20) == 0)
              {
                goto LABEL_41;
              }

              type metadata accessor for AlwaysOnBridge(0, *(v6 + 80), *(v6 + 88), v15);
              v51 = AlwaysOnBridge.__allocating_init()();
              UIHostingController.alwaysOnBridge.setter(v51);
              if (specialized UIHostingController.alwaysOnBridge.getter())
              {
                swift_unknownObjectWeakAssign();
                if (specialized UIHostingController.alwaysOnBridge.getter())
                {
                  v52 = specialized UIHostingController.host.getter();

                  v53 = v52;
                  _UIHostingView.viewGraph.getter(v53);

                  specialized AlwaysOnBridge.addPreferences(to:)();

LABEL_41:
                  if (v14 < 0)
                  {
LABEL_58:
                    v80 = specialized UIHostingController.inspectorBridgeV5.getter();
                    if (v80)
                    {
                      v81 = v80;
                      v82 = specialized UIHostingController.host.getter();
                      v83 = v81;
                      v84 = v82;
                      _UIHostingView.viewGraph.getter(v84);

                      specialized UIKitInspectorBridgeV5.removePreferences(from:)();
                    }

                    UIHostingController.inspectorBridgeV5.setter(0);
LABEL_61:
                    static Update.end()();
                    return;
                  }

LABEL_42:
                  if ((v16 & 0x80) != 0)
                  {
                    v55 = *(v6 + 80);
                    v54 = *(v6 + 88);
                    type metadata accessor for UIKitInspectorBridgeV5(0, v55, v54, v15);
                    v56 = UIKitInspectorBridgeV5.__allocating_init()();
                    UIHostingController.inspectorBridgeV5.setter(v56);
                    v57 = specialized UIHostingController.inspectorBridgeV5.getter();
                    if (v57)
                    {
                      v58 = v57;
                      specialized UIHostingController.host.getter();
                      v60 = type metadata accessor for _UIHostingView(255, v55, v54, v59);
                      *(v58 + direct field offset for SheetBridge.host + 8) = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v60);
                      swift_unknownObjectWeakAssign();
                    }

                    v61 = specialized UIHostingController.inspectorBridgeV5.getter();
                    if (v61)
                    {
                      v62 = v61;
                      v63 = specialized UIHostingController.host.getter();
                      v64 = v62;
                      v65 = v63;
                      _UIHostingView.viewGraph.getter(v65);

                      specialized UIKitInspectorBridgeV5.addPreferences(to:)();
                    }
                  }

                  goto LABEL_61;
                }

LABEL_69:
                __break(1u);
                return;
              }

              goto LABEL_67;
            }

            goto LABEL_32;
          }

LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

LABEL_31:
        if ((v14 & 0x10) != 0)
        {
          goto LABEL_52;
        }

LABEL_32:
        if ((v16 & 0x10) == 0)
        {
LABEL_36:
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_55;
          }

          goto LABEL_37;
        }

        type metadata accessor for UIKitContentScrollViewBridge();
        v49 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v49 + 24) = -1;
        *(v49 + 32) = MEMORY[0x1E69E7CC8];
        *(v49 + 40) = 0;
        *(v49 + 48) = 0x3FF0000000000000;
        UIHostingController.contentScrollViewBridge.setter(v49);
        if (specialized UIHostingController.contentScrollViewBridge.getter())
        {
          swift_unknownObjectWeakAssign();
          if (!specialized UIHostingController.contentScrollViewBridge.getter())
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v50 = specialized UIHostingController.host.getter();
          _UIHostingView.viewGraph.getter(v50);

          GraphHost.addPreference<A>(_:)();

          goto LABEL_36;
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v16 & 4) != 0)
      {
        type metadata accessor for NavigationBridge_PhoneTV();
        swift_allocObject();
        v28 = UIKitNavigationBridge.init()();
        UIHostingController.navigationBridge.setter(v28);
        v29 = specialized UIHostingController.navigationBridge.getter();
        if (!v29)
        {
          __break(1u);
          goto LABEL_64;
        }

        v30 = v29;
        specialized UIHostingController.host.getter();
        v32 = type metadata accessor for _UIHostingView(255, *(v6 + 80), *(v6 + 88), v31);
        *(v30 + 24) = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v32);
        swift_unknownObjectWeakAssign();
        if (!specialized UIHostingController.navigationBridge.getter())
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v33 = specialized UIHostingController.host.getter();
        _UIHostingView.viewGraph.getter(v33);

        GraphHost.addPreference<A>(_:)();
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    static Log.toolbar.getter();
    v37 = type metadata accessor for Logger();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v13, 1, v37) == 1)
    {
      outlined destroy of Logger?(v13, type metadata accessor for Logger?);
    }

    else
    {
      v39 = v3;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v87 = v6;
        v43 = v42;
        v44 = swift_slowAlloc();
        v86 = v16;
        v16 = v44;
        *v43 = 138412290;
        *(v43 + 4) = v39;
        *v44 = v3;
        v45 = v39;
        _os_log_impl(&dword_18BD4A000, v40, v41, "Removed toolbar bridge from %@", v43, 0xCu);
        outlined destroy of Logger?(v16, type metadata accessor for NSObject?);
        v46 = v16;
        LOBYTE(v16) = v86;
        MEMORY[0x18D0110E0](v46, -1, -1);
        v47 = v43;
        v6 = v87;
        MEMORY[0x18D0110E0](v47, -1, -1);
      }

      (*(v38 + 8))(v13, v37);
    }

    if (specialized UIHostingController.toolbarBridge.getter())
    {
      v48 = specialized UIHostingController.host.getter();
      _UIHostingView.viewGraph.getter(v48);

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
    }

    UIHostingController.toolbarBridge.setter(0);
    goto LABEL_31;
  }
}

void UIHostingController.requiredBridges.setter(uint64_t a1)
{
  v2.rawValue = *(v1 + direct field offset for UIHostingController.requiredBridges);
  *(v1 + direct field offset for UIHostingController.requiredBridges) = a1;
  UIHostingController.didChangeRequiredBridges(from:to:)(v2, *(v1 + direct field offset for UIHostingController.requiredBridges));
}

void type metadata accessor for Logger?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Logger?)
  {
    type metadata accessor for Logger();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Logger?);
    }
  }
}

void type metadata completion function for ToolbarBridge(uint64_t a1)
{
  type metadata accessor for Toolbar.PlatformVended(319);
  if (v1 <= 0x3F)
  {
    _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(319, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(319, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void type metadata completion function for Toolbar.PlatformVended(uint64_t a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_3(319, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata completion function for ToolbarStorage.Item(uint64_t a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(319, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata completion function for ToolbarStorage.NavigationProperties(uint64_t a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(319, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

id ToolbarBridge.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  Toolbar.PlatformVended.init()(&v2[direct field offset for ToolbarBridge.platformVended]);
  v4 = &v2[direct field offset for ToolbarBridge.lastToolbarStorage];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 8) = 0;
  v5 = &v2[direct field offset for ToolbarBridge.lastInputToolbarStorage];
  *(v5 + 8) = 0;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = direct field offset for ToolbarBridge.searchItem;
  v7 = type metadata accessor for ToolbarStorage.SearchItem(0);
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for ToolbarBridge.navigationAdaptor] = MEMORY[0x1E69E7CC0];
  v9 = direct field offset for ToolbarBridge.lastNavigationProperties;
  v10 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v2[v9], 1, 1, v10);
  v11(&v2[direct field offset for ToolbarBridge.lastInputNavigationProperties], 1, 1, v10);
  v12 = &v2[direct field offset for ToolbarBridge.lastBarContext];
  v12[6] = 0;
  *(v12 + 2) = 0;
  *v12 = 2;
  EnvironmentValues.init()();
  v13 = direct field offset for ToolbarBridge.allowedLocations;
  v14 = specialized static Toolbar.BarLocation.allCases.getter();
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI7ToolbarO11BarLocationO_SayAHGTt0g5Tf4g_n(v14);

  *&v2[v13] = v15;
  *&v2[direct field offset for ToolbarBridge.accessoryBarLocations] = v8;
  *&v2[direct field offset for ToolbarBridge.toolbarTracker] = -1;
  *&v2[direct field offset for ToolbarBridge.searchTracker] = -1;
  *&v2[direct field offset for ToolbarBridge.navigationPropertiesTracker] = -1;
  *&v2[direct field offset for ToolbarBridge.navigationTitleTracker] = -1;
  *&v2[direct field offset for ToolbarBridge.adaptorTracker] = -1;
  *&v2[direct field offset for ToolbarBridge.lastNavigationSeed] = -1;
  v16 = direct field offset for ToolbarBridge.storageByLocation;
  *&v2[v16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7ToolbarO11BarLocationO_AE0G7StorageVTt0g5Tf4g_n(v8);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id Toolbar.PlatformVended.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = v3;
  v4 = type metadata accessor for Toolbar.PlatformVended(0);
  v5 = v4[11];
  v6 = type metadata accessor for ToolbarStorage.Item(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *&a1[v4[12]] = 0;
  v7 = v4[13];
  result = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  *&a1[v7] = result;
  return result;
}

uint64_t sub_18BD9AF7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 68);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_18BD9B064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }
}

uint64_t sub_18BD9B164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
    *(result + 40) = 1;
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

char *specialized static Toolbar.BarLocation.allCases.getter()
{
  v7 = MEMORY[0x1E69E7CC0];
  _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Toolbar.BarLocation>, &type metadata for Toolbar.BarLocation, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CDD3F30;
  *(inited + 32) = 0u;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0u;
  *(inited + 96) = 3;
  *(inited + 104) = 0u;
  *(inited + 120) = 0u;
  *(inited + 136) = xmmword_18CD90770;
  specialized Array.append<A>(contentsOf:)(inited);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_18CDF0DB0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 2;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 8;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 4;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 5;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 9;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 10;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 16;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 17;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 13;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 456) = 14;
  *(v1 + 464) = 0;
  specialized Array.append<A>(contentsOf:)(v1);
  v2 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[40 * v4];
  *(v5 + 5) = 0;
  *(v5 + 6) = 0;
  *(v5 + 4) = 0;
  *(v5 + 56) = xmmword_18CD90710;
  return v2;
}

void type metadata accessor for Environment<ToolbarItemPlacement.Role>.Content(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v8 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v5 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v8 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v5 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v8 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v5 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Toolbar.BarLocation>, &type metadata for Toolbar.BarLocation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UITraitBridgedEnvironmentKey.Type>, &lazy cache variable for type metadata for UITraitBridgedEnvironmentKey.Type, &lazy cache variable for type metadata for UITraitBridgedEnvironmentKey, MEMORY[0x1E69DC398]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityCustomContentEntry>, MEMORY[0x1E6980A40]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityRotorInfo>, &type metadata for AccessibilityRotorInfo);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<Range<Int>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(seed: Int, removeIndex: Int)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabCustomizationID>, &type metadata for TabCustomizationID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuBuilderInstruction>, &type metadata for MenuBuilderInstruction);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatedValueTrack<CGPoint><A>.VectorPath.Element>, type metadata accessor for AnimatedValueTrack<CGPoint><A>.VectorPath.Element);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableBounds>, MEMORY[0x1E697E780], MEMORY[0x1E69E6F90], type metadata accessor for Binding<Bool>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AXSwiftUITraits>, type metadata accessor for AXSwiftUITraits, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ListUpdate<Int, Int>>, type metadata accessor for ListUpdate<Int, Int>, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>, type metadata accessor for ListUpdate<CountingIndex<Int>, CountingIndex<Int>>);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI7ToolbarO11BarLocationO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation();
  result = MEMORY[0x18D00D140](v2, &type metadata for Toolbar.BarLocation, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      outlined init with copy of Toolbar.BarLocation(v5, v6);
      specialized Set._Variant.insert(_:)(v7, v6);
      outlined destroy of Toolbar.BarLocation(v7);
      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation()
{
  result = lazy protocol witness table cache variable for type Toolbar.BarLocation and conformance Toolbar.BarLocation;
  if (!lazy protocol witness table cache variable for type Toolbar.BarLocation and conformance Toolbar.BarLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Toolbar.BarLocation, &type metadata for Toolbar.BarLocation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Toolbar.BarLocation and conformance Toolbar.BarLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Toolbar.BarLocation and conformance Toolbar.BarLocation;
  if (!lazy protocol witness table cache variable for type Toolbar.BarLocation and conformance Toolbar.BarLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Toolbar.BarLocation, &type metadata for Toolbar.BarLocation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Toolbar.BarLocation and conformance Toolbar.BarLocation);
  }

  return result;
}

uint64_t Toolbar.BarLocation.hash(into:)(uint64_t a1)
{
  outlined init with copy of Toolbar.BarLocation(v1, &v6);
  switch(*(&v7 + 1))
  {
    case 0:
      v2 = 0;
      goto LABEL_24;
    case 1:
      v2 = 1;
      goto LABEL_24;
    case 2:
      v2 = 2;
      goto LABEL_24;
    case 3:
      v2 = 3;
      goto LABEL_24;
    case 4:
      v2 = 4;
      goto LABEL_24;
    case 5:
      v2 = 5;
      goto LABEL_24;
    case 6:
      v2 = 6;
      goto LABEL_24;
    case 7:
      v2 = 7;
      goto LABEL_24;
    case 8:
      v2 = 8;
      goto LABEL_24;
    case 9:
      v2 = 9;
      goto LABEL_24;
    case 0xALL:
      v2 = 10;
      goto LABEL_24;
    case 0xBLL:
      v2 = 11;
      goto LABEL_24;
    case 0xCLL:
      v2 = 12;
      goto LABEL_24;
    case 0xDLL:
      v2 = 13;
      goto LABEL_24;
    case 0xELL:
      v2 = 14;
      goto LABEL_24;
    case 0xFLL:
      v2 = 15;
      goto LABEL_24;
    case 0x10:
      v2 = 16;
      goto LABEL_24;
    case 0x11:
      v2 = 17;
      goto LABEL_24;
    case 0x12:
      v2 = 18;
      goto LABEL_24;
    case 0x13:
      v2 = 19;
      goto LABEL_24;
    case 0x14:
      v2 = 21;
LABEL_24:
      result = MEMORY[0x18D00F6F0](v2);
      break;
    default:
      v4[0] = v6;
      v4[1] = v7;
      v5 = v8;
      MEMORY[0x18D00F6F0](20);
      AnyHashable.hash(into:)();
      result = outlined destroy of AnyHashable(v4);
      break;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<Toolbar.BarLocation>, lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation, &type metadata for Toolbar.BarLocation, outlined init with copy of Toolbar.BarLocation);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  Toolbar.BarLocation.hash(into:)(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      outlined init with copy of Toolbar.BarLocation(*(v9 + 48) + 40 * a2, v20);
      v13 = specialized static Toolbar.BarLocation.== infix(_:_:)(v20, result);
      outlined destroy of Toolbar.BarLocation(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
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
  *(*(v12 + 48) + a2) = v4;
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

uint64_t specialized static Toolbar.BarLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Toolbar.BarLocation(a1, v8);
  outlined init with copy of Toolbar.BarLocation(a2, &v10);
  switch(v9)
  {
    case 0:
      if (*(&v11 + 1))
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 1:
      if (*(&v11 + 1) != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 2:
      if (*(&v11 + 1) != 2)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 3:
      if (*(&v11 + 1) != 3)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 4:
      if (*(&v11 + 1) != 4)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 5:
      if (*(&v11 + 1) != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 6:
      if (*(&v11 + 1) != 6)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 7:
      if (*(&v11 + 1) != 7)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 8:
      if (*(&v11 + 1) != 8)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 9:
      if (*(&v11 + 1) != 9)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 10:
      if (*(&v11 + 1) != 10)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 11:
      if (*(&v11 + 1) != 11)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 12:
      if (*(&v11 + 1) != 12)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 13:
      if (*(&v11 + 1) == 13)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    case 14:
      if (*(&v11 + 1) != 14)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 15:
      if (*(&v11 + 1) != 15)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 16:
      if (*(&v11 + 1) != 16)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 17:
      if (*(&v11 + 1) != 17)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 18:
      if (*(&v11 + 1) != 18)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 19:
      if (*(&v11 + 1) != 19)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    case 20:
      if (*(&v11 + 1) != 20)
      {
        goto LABEL_37;
      }

LABEL_35:
      outlined destroy of Toolbar.BarLocation(v8);
      v3 = 1;
      break;
    default:
      outlined init with copy of Toolbar.BarLocation(v8, v7);
      if (*(&v11 + 1) >= 0x15uLL)
      {
        v5[0] = v10;
        v5[1] = v11;
        v6 = v12;
        v3 = MEMORY[0x18D00E7E0](v7, v5);
        outlined destroy of AnyHashable(v5);
        outlined destroy of AnyHashable(v7);
        outlined destroy of Toolbar.BarLocation(v8);
      }

      else
      {
        outlined destroy of AnyHashable(v7);
LABEL_37:
        _s7SwiftUI16CommandOperationVWOhTm_3(v8, type metadata accessor for (Toolbar.BarLocation, Toolbar.BarLocation));
        v3 = 0;
      }

      break;
  }

  return v3 & 1;
}

uint64_t outlined destroy of CommandOperation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16CommandOperationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16CommandOperationVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16CommandOperationVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16CommandOperationVWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (Toolbar.BarLocation, Toolbar.BarLocation)()
{
  if (!lazy cache variable for type metadata for (Toolbar.BarLocation, Toolbar.BarLocation))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Toolbar.BarLocation, Toolbar.BarLocation));
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7ToolbarO11BarLocationO_AE0G7StorageVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<Toolbar.BarLocation, Toolbar.LocationStorage>, lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation, &type metadata for Toolbar.BarLocation, &type metadata for Toolbar.LocationStorage);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, TabEntry)(v4, v15, &lazy cache variable for type metadata for (Toolbar.BarLocation, Toolbar.LocationStorage), &type metadata for Toolbar.BarLocation, &type metadata for Toolbar.LocationStorage, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = v3[7] + 24 * result;
      v11 = v18;
      *v10 = v17;
      *(v10 + 16) = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 64;
      if (!--v1)
      {

        return v3;
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

id UIKitInspectorBridgeV5.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIKitInspectorBridgeV5.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_init);
}

void type metadata completion function for BarAppearanceBridge(uint64_t a1)
{
  type metadata accessor for ToolbarContentDescription?(319, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for ToolbarContentDescription(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

id BarAppearanceBridge.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = &v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage];
  *&v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage] = 33685505;
  swift_unknownObjectWeakInit();
  v4[16] = 1;
  v5 = &v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 10) = 0;
  v6 = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_allowedBars] = MEMORY[0x1E69E7CD0];
  EnvironmentValues.init()();
  v7 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastBarUpdates;
  v8 = MEMORY[0x1E69E7CC0];
  *&v2[v7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC18PlatformBarUpdatesVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v9 = &v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 1;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  v9[56] = 0;
  *(v9 + 4) = 0;
  v10 = &v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastToolbarInputContent;
  v12 = type metadata accessor for ToolbarContentDescription(0);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barBackgroundViewModels] = MEMORY[0x1E69E7CC8];
  v13 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  *&v2[v13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(v8);
  *&v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_toUpdateBars] = v6;
  *&v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_seedTracker] = v8;
  *&v2[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates] = 0;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC18PlatformBarUpdatesVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, PlatformBarUpdates>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, &type metadata for PlatformBarUpdates);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, TabEntry)(v4, v13, &lazy cache variable for type metadata for (ToolbarPlacement.Role, PlatformBarUpdates), &type metadata for ToolbarPlacement.Role, &type metadata for PlatformBarUpdates, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 2 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

void sub_18BD9CA14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 48) = a2;
  }
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, ToolbarAppearanceConfiguration>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, &type metadata for ToolbarAppearanceConfiguration);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  outlined init with copy of (String, TabEntry)(a1 + 32, v15, &lazy cache variable for type metadata for (ToolbarPlacement.Role, ToolbarAppearanceConfiguration), &type metadata for ToolbarPlacement.Role, &type metadata for ToolbarAppearanceConfiguration, type metadata accessor for (Badge, Spacer));
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = a1 + 152;
  while (1)
  {
    *(v3 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v4;
    v7 = v3[6] + 40 * v4;
    v8 = v15[0];
    v9 = v15[1];
    *(v7 + 32) = v16;
    *v7 = v8;
    *(v7 + 16) = v9;
    result = memmove((v3[7] + 80 * v4), &v17, 0x49uLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of (String, TabEntry)(v6, v15, &lazy cache variable for type metadata for (ToolbarPlacement.Role, ToolbarAppearanceConfiguration), &type metadata for ToolbarPlacement.Role, &type metadata for ToolbarAppearanceConfiguration, type metadata accessor for (Badge, Spacer));
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    v6 += 120;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t BarAppearanceBridge.addPreferences(to:)()
{
  v1 = v0;
  GraphHost.addPreference<A>(_:)();
  v2 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_seedTracker;
  swift_beginAccess();
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    *(v0 + v2) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[24 * v6];
  *(v7 + 4) = &type metadata for NavigationTitleKey;
  *(v7 + 5) = &protocol witness table for NavigationTitleKey;
  *(v7 + 12) = -1;
  *(v0 + v2) = v3;
  swift_endAccess();
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  v8 = *(v0 + v2);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + v2) = v8;
  if ((v9 & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v0 + v2) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[24 * v11];
  *(v12 + 4) = &type metadata for ToolbarRoleKey;
  *(v12 + 5) = &protocol witness table for ToolbarRoleKey;
  *(v12 + 12) = -1;
  *(v0 + v2) = v8;
  swift_endAccess();
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  v13 = *(v0 + v2);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + v2) = v13;
  if ((v14 & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    *(v0 + v2) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[24 * v16];
  *(v17 + 4) = &type metadata for NavigationSubtitleKey;
  *(v17 + 5) = &protocol witness table for NavigationSubtitleKey;
  *(v17 + 12) = -1;
  *(v0 + v2) = v13;
  swift_endAccess();
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  v18 = *(v0 + v2);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v18;
  if ((v19 & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
    *(v1 + v2) = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v22 = &v18[24 * v21];
  *(v22 + 4) = &type metadata for NavigationBarBackButtonHiddenKey;
  *(v22 + 5) = &protocol witness table for NavigationBarBackButtonHiddenKey;
  *(v22 + 12) = -1;
  *(v1 + v2) = v18;
  v24 = *(v18 + 2);
  v23 = *(v18 + 3);
  if (v24 >= v23 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v18);
  }

  *(v18 + 2) = v24 + 1;
  v25 = &v18[24 * v24];
  *(v25 + 4) = &type metadata for ToolbarKey;
  *(v25 + 5) = &protocol witness table for ToolbarKey;
  *(v25 + 12) = -1;
  *(v1 + v2) = v18;
  v27 = *(v18 + 2);
  v26 = *(v18 + 3);
  if (v27 >= v26 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v18);
  }

  *(v18 + 2) = v27 + 1;
  v28 = &v18[24 * v27];
  *(v28 + 4) = &type metadata for SearchKey;
  *(v28 + 5) = &protocol witness table for SearchKey;
  *(v28 + 12) = -1;
  *(v1 + v2) = v18;
  return swift_endAccess();
}

uint64_t BarAppearanceBridge.updateAllowedBars(_:viewGraph:)(size_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_allowedBars;
  v7 = *(v2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_allowedBars);
  if (*(a1 + 16) <= *(v7 + 16) >> 3)
  {

    specialized Set._subtract<A>(_:)(a1);
    v8 = v7;
  }

  else
  {

    v8 = specialized _NativeSet.subtracting<A>(_:)(a1, v7);
  }

  v9 = *(v3 + v6);
  if (*(v9 + 16) <= *(a1 + 16) >> 3)
  {

    specialized Set._subtract<A>(_:)(v9);

    v10 = a1;
  }

  else
  {

    v10 = specialized _NativeSet.subtracting<A>(_:)(v9, a1);
  }

  v11 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_seedTracker;
  swift_beginAccess();
  Set<>.updatePreferences(viewGraph:tracker:isAdding:)(a2, (v3 + v11), 0, v8);
  swift_endAccess();

  swift_beginAccess();
  Set<>.updatePreferences(viewGraph:tracker:isAdding:)(a2, (v3 + v11), 1, v10);
  swift_endAccess();

  *(v3 + v6) = a1;
}

Swift::Int specialized _NativeSet.subtracting<A>(_:)(size_t a1, Swift::Int a2)
{
  v3 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a1;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1 << *(a1 + 32);
  v41 = ~v7;
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v44 = (63 - v7) >> 6;
  v46 = (a2 + 56);
  v10 = 0;
  v11 = 0;

  for (i = v6; ; v6 = i)
  {
    v13 = v9;
    if (!v9)
    {
      v14 = v10;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_133;
        }

        if (v11 >= v44)
        {
          break;
        }

        v13 = *(v6 + 8 * v11);
        ++v14;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v53 = 0uLL;
      *v54 = 0;
      *&v54[8] = xmmword_18CD9F780;
LABEL_128:
      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v53, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
      v35 = v4;
      goto LABEL_129;
    }

LABEL_12:
    outlined init with copy of ToolbarPlacement.Role(*(v4 + 48) + 40 * (__clz(__rbit64(v13)) | (v11 << 6)), &v53);
    if (*&v54[8] == 7)
    {
      goto LABEL_128;
    }

    v61 = v53;
    v62 = *v54;
    v63 = *&v54[16];
    Hasher.init(_seed:)();
    outlined init with copy of ToolbarPlacement.Role(&v61, &v58);
    if (*(&v59 + 1) <= 2)
    {
      if (*(&v59 + 1))
      {
        if (*(&v59 + 1) == 1)
        {
          v15 = 1;
        }

        else
        {
          if (*(&v59 + 1) != 2)
          {
            goto LABEL_25;
          }

          v15 = 2;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else if (*(&v59 + 1) > 4)
    {
      if (*(&v59 + 1) == 5)
      {
        v15 = 5;
      }

      else
      {
        if (*(&v59 + 1) != 6)
        {
LABEL_25:
          v50 = v58;
          v51 = v59;
          v52 = v60;
          MEMORY[0x18D00F6F0](6);
          AnyHashable.hash(into:)();
          outlined destroy of AnyHashable(&v50);
          goto LABEL_30;
        }

        v15 = 7;
      }
    }

    else
    {
      v15 = *(&v59 + 1) == 3 ? 3 : 4;
    }

    MEMORY[0x18D00F6F0](v15);
LABEL_30:
    v9 = (v13 - 1) & v13;
    v16 = Hasher._finalize()();
    v17 = -1 << *(v3 + 32);
    v10 = v16 & ~v17;
    v13 = v10 >> 6;
    v6 = 1 << v10;
    if (((1 << v10) & v46[v10 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    outlined destroy of ToolbarPlacement.Role(&v61);
    v10 = v11;
  }

  v2 = ~v17;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(*(v3 + 48) + 40 * v10, &v58);
    outlined init with copy of ToolbarPlacement.Role(&v58, &v53);
    outlined init with copy of ToolbarPlacement.Role(&v61, &v55);
    if (*&v54[8] <= 2)
    {
      switch(*&v54[8])
      {
        case 0:
          outlined destroy of ToolbarPlacement.Role(&v58);
          if (!*(&v56 + 1))
          {
            goto LABEL_61;
          }

          goto LABEL_55;
        case 1:
          outlined destroy of ToolbarPlacement.Role(&v58);
          if (*(&v56 + 1) == 1)
          {
LABEL_61:
            v66 = v41;
            v67 = v11;
            v68 = v9;
            v2 = i;
            v65 = i;
            goto LABEL_62;
          }

          goto LABEL_55;
        case 2:
          outlined destroy of ToolbarPlacement.Role(&v58);
          if (*(&v56 + 1) == 2)
          {
            goto LABEL_61;
          }

          goto LABEL_55;
      }
    }

    else
    {
      if (*&v54[8] <= 4)
      {
        if (*&v54[8] == 3)
        {
          outlined destroy of ToolbarPlacement.Role(&v58);
          if (*(&v56 + 1) == 3)
          {
            goto LABEL_61;
          }
        }

        else
        {
          outlined destroy of ToolbarPlacement.Role(&v58);
          if (*(&v56 + 1) == 4)
          {
            goto LABEL_61;
          }
        }

        goto LABEL_55;
      }

      if (*&v54[8] == 5)
      {
        outlined destroy of ToolbarPlacement.Role(&v58);
        if (*(&v56 + 1) == 5)
        {
          goto LABEL_61;
        }

        goto LABEL_55;
      }

      if (*&v54[8] == 6)
      {
        outlined destroy of ToolbarPlacement.Role(&v58);
        if (*(&v56 + 1) == 6)
        {
          goto LABEL_61;
        }

        goto LABEL_55;
      }
    }

    outlined init with copy of ToolbarPlacement.Role(&v53, &v50);
    if (*(&v56 + 1) >= 7uLL)
    {
      break;
    }

    outlined destroy of ToolbarPlacement.Role(&v58);
    outlined destroy of AnyHashable(&v50);
LABEL_55:
    _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_0(&v53, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
LABEL_56:
    v10 = (v10 + 1) & v2;
    v13 = v10 >> 6;
    v6 = 1 << v10;
    if ((v46[v10 >> 6] & (1 << v10)) == 0)
    {
      goto LABEL_6;
    }
  }

  v47 = v55;
  v48 = v56;
  v49 = v57;
  v18 = MEMORY[0x18D00E7E0](&v50, &v47);
  outlined destroy of AnyHashable(&v47);
  outlined destroy of ToolbarPlacement.Role(&v58);
  outlined destroy of AnyHashable(&v50);
  if ((v18 & 1) == 0)
  {
    outlined destroy of ToolbarPlacement.Role(&v53);
    v4 = v43;
    goto LABEL_56;
  }

  v66 = v41;
  v67 = v11;
  v68 = v9;
  v2 = i;
  v65 = i;
  v4 = v43;
LABEL_62:
  v64 = v4;
  outlined destroy of ToolbarPlacement.Role(&v53);
  v19 = outlined destroy of ToolbarPlacement.Role(&v61);
  v20 = *(v3 + 32);
  v39[0] = ((1 << v20) + 63) >> 6;
  v12 = 8 * v39[0];
  if ((v20 & 0x3Fu) > 0xD)
  {
    goto LABEL_134;
  }

  while (2)
  {
    v39[1] = v39;
    MEMORY[0x1EEE9AC00](v19);
    v22 = v39 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v22, v46, v21);
    v23 = *&v22[8 * v13] & ~v6;
    v40 = v22;
    *&v22[8 * v13] = v23;
    v10 = *(v3 + 16) - 1;
    v24 = v44;
LABEL_64:
    if (v9)
    {
LABEL_70:
      v27 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      outlined init with copy of ToolbarPlacement.Role(*(v4 + 48) + 40 * (v27 | (v11 << 6)), &v53);
      if (*&v54[8] == 7)
      {
LABEL_125:
        _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v53, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
        v3 = specialized _NativeSet.extractSubset(using:count:)(v40, v39[0], v10, v3);
        goto LABEL_126;
      }

      v61 = v53;
      v62 = *v54;
      v63 = *&v54[16];
      Hasher.init(_seed:)();
      outlined init with copy of ToolbarPlacement.Role(&v61, &v58);
      v42 = v10;
      if (*(&v59 + 1) <= 2)
      {
        switch(*(&v59 + 1))
        {
          case 0:
            v28 = 0;
            goto LABEL_87;
          case 1:
            v28 = 1;
            goto LABEL_87;
          case 2:
            v28 = 2;
LABEL_87:
            MEMORY[0x18D00F6F0](v28);
            goto LABEL_88;
        }
      }

      else
      {
        if (*(&v59 + 1) <= 4)
        {
          if (*(&v59 + 1) == 3)
          {
            v28 = 3;
          }

          else
          {
            v28 = 4;
          }

          goto LABEL_87;
        }

        if (*(&v59 + 1) == 5)
        {
          v28 = 5;
          goto LABEL_87;
        }

        if (*(&v59 + 1) == 6)
        {
          v28 = 7;
          goto LABEL_87;
        }
      }

      v50 = v58;
      v51 = v59;
      v52 = v60;
      MEMORY[0x18D00F6F0](6);
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(&v50);
LABEL_88:
      v29 = Hasher._finalize()();
      v30 = -1 << *(v3 + 32);
      v6 = v29 & ~v30;
      v31 = v6 >> 6;
      v13 = 1 << v6;
      if (((1 << v6) & v46[v6 >> 6]) == 0)
      {
LABEL_118:
        outlined destroy of ToolbarPlacement.Role(&v61);
        goto LABEL_119;
      }

      v32 = ~v30;
      while (1)
      {
        outlined init with copy of ToolbarPlacement.Role(*(v3 + 48) + 40 * v6, &v58);
        outlined init with copy of ToolbarPlacement.Role(&v58, &v53);
        outlined init with copy of ToolbarPlacement.Role(&v61, &v55);
        if (*&v54[8] <= 2)
        {
          switch(*&v54[8])
          {
            case 0:
              outlined destroy of ToolbarPlacement.Role(&v58);
              if (!*(&v56 + 1))
              {
                goto LABEL_120;
              }

              goto LABEL_113;
            case 1:
              outlined destroy of ToolbarPlacement.Role(&v58);
              if (*(&v56 + 1) == 1)
              {
                goto LABEL_120;
              }

              goto LABEL_113;
            case 2:
              outlined destroy of ToolbarPlacement.Role(&v58);
              if (*(&v56 + 1) == 2)
              {
                goto LABEL_120;
              }

              goto LABEL_113;
          }
        }

        else
        {
          if (*&v54[8] <= 4)
          {
            if (*&v54[8] == 3)
            {
              outlined destroy of ToolbarPlacement.Role(&v58);
              if (*(&v56 + 1) == 3)
              {
                goto LABEL_120;
              }
            }

            else
            {
              outlined destroy of ToolbarPlacement.Role(&v58);
              if (*(&v56 + 1) == 4)
              {
                goto LABEL_120;
              }
            }

            goto LABEL_113;
          }

          if (*&v54[8] == 5)
          {
            outlined destroy of ToolbarPlacement.Role(&v58);
            if (*(&v56 + 1) == 5)
            {
              goto LABEL_120;
            }

            goto LABEL_113;
          }

          if (*&v54[8] == 6)
          {
            outlined destroy of ToolbarPlacement.Role(&v58);
            if (*(&v56 + 1) == 6)
            {
              goto LABEL_120;
            }

            goto LABEL_113;
          }
        }

        outlined init with copy of ToolbarPlacement.Role(&v53, &v50);
        if (*(&v56 + 1) < 7uLL)
        {
          outlined destroy of ToolbarPlacement.Role(&v58);
          outlined destroy of AnyHashable(&v50);
LABEL_113:
          _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_0(&v53, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
          goto LABEL_114;
        }

        v47 = v55;
        v48 = v56;
        v49 = v57;
        v33 = MEMORY[0x18D00E7E0](&v50, &v47);
        outlined destroy of AnyHashable(&v47);
        outlined destroy of ToolbarPlacement.Role(&v58);
        outlined destroy of AnyHashable(&v50);
        if (v33)
        {
LABEL_120:
          outlined destroy of ToolbarPlacement.Role(&v53);
          outlined destroy of ToolbarPlacement.Role(&v61);
          v34 = v40[v31];
          v40[v31] = v34 & ~v13;
          if ((v34 & v13) != 0)
          {
            v4 = v43;
            v10 = v42 - 1;
            v24 = v44;
            v2 = i;
            if (__OFSUB__(v42, 1))
            {
              __break(1u);
              goto LABEL_137;
            }

            if (v42 == 1)
            {

              v3 = MEMORY[0x1E69E7CD0];
              goto LABEL_126;
            }

            goto LABEL_64;
          }

LABEL_119:
          v4 = v43;
          v24 = v44;
          v2 = i;
          v10 = v42;
          goto LABEL_64;
        }

        outlined destroy of ToolbarPlacement.Role(&v53);
LABEL_114:
        v6 = (v6 + 1) & v32;
        v31 = v6 >> 6;
        v13 = 1 << v6;
        if ((v46[v6 >> 6] & (1 << v6)) == 0)
        {
          goto LABEL_118;
        }
      }
    }

    v25 = v11;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
        v53 = 0uLL;
        *v54 = 0;
        *&v54[8] = xmmword_18CD9F780;
        goto LABEL_125;
      }

      v9 = *(v2 + 8 * v26);
      ++v25;
      if (v9)
      {
        v11 = v26;
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    v4 = v12;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v4 = v43;
      continue;
    }

    break;
  }

LABEL_137:
  v37 = swift_slowAlloc();
  memcpy(v37, v46, v4);
  v38 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v37, v39[0], v3, v10, &v64);

  MEMORY[0x18D0110E0](v37, -1, -1);
  v4 = v64;
  v41 = v66;
  v3 = v38;
LABEL_126:
  v35 = v4;
LABEL_129:
  outlined consume of Set<UIPress>.Iterator._Variant(v35);
  return v3;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = outlined destroy of BridgedPresentation?(v11, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      outlined init with copy of ToolbarPlacement.Role(*(v2 + 48) + 40 * (v10 | (v9 << 6)), v12);
      specialized Set._Variant.remove(_:)(v12, v11);
      outlined destroy of ToolbarPlacement.Role(v12);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t outlined consume of EnvironmentValues?(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

void _s7SwiftUI14_UIHostingViewC30_safeAreaCornerInsetsDidChangeyyFTo_0(void *a1)
{
  v1 = a1;
  _UIHostingView.safeAreaInsetsDidChange()();
}

Swift::Void __swiftcall _UIHostingView._safeAreaInsetsDidChange()()
{
  if (_UIHostingView.safeAreaRegions.getter() || (static Semantics.v7.getter(), (isLinkedOnOrAfter(_:)() & 1) == 0))
  {
    v0 = _UIHostingView.viewController.getter();
    if (v0)
    {
      v1 = v0;
      UIHostingController._viewSafeAreaDidChange()();
    }

    v2 = _UIHostingView.base.getter();
    UIHostingViewBase.safeAreaInsetsDidChange()();
  }
}

uint64_t _UIHostingView.safeAreaRegions.getter()
{
  v0 = _UIHostingView.base.getter();
  v1 = UIHostingViewBase.safeAreaRegions.getter();

  return v1;
}

void @objc UIHostingController.viewWillAppear(_:)(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIHostingController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall UIHostingController.viewWillAppear(_:)(Swift::Bool a1)
{
  v4 = type metadata accessor for UIHostingController(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), v1);
  v5.receiver = v2;
  v5.super_class = v4;
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1);
  UIHostingController._viewWillAppear(_:)(a1);
}

Swift::Void __swiftcall UIHostingController._viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  UIHostingController.resolveRequiredBridges(_:allowedActions:)(0, 0, 0, 0, 3);
  specialized UIHostingController.prepareForNavigationTransition(_:)();
  specialized UIHostingController.coordinateListSelection(transitionCoordinator:isAnimated:)([v1 transitionCoordinator]);
  swift_unknownObjectRelease();
  v4 = specialized UIHostingController.toolbarBridge.getter();
  if (v4)
  {
    v5 = v4;
    ToolbarBridge.willAppear<A>(hostingController:)(v2);
  }

  v6 = specialized UIHostingController.barAppearanceBridge.getter();
  if (v6)
  {
    v7 = v6;
    BarAppearanceBridge.willAppear<A>(animated:hostingController:)(a1, v2);
  }
}

void specialized UIHostingController.prepareForNavigationTransition(_:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = specialized UIHostingController.host.getter();
  v6 = type metadata accessor for _UIHostingView(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v5);
  v7 = v4;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v6);
  LOBYTE(v6) = ViewGraphRootValueUpdater.isRendering.getter();

  if ((v6 & 1) == 0)
  {
    v8 = specialized UIHostingController.host.getter();
    _UIHostingView.viewGraph.getter(v8);

    GraphHost.environment.getter();

    type metadata accessor for ToolbarBridge<UIKitToolbarStrategy>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>, &type metadata for EnvironmentValues.IsEagerNavigationTransitionEnabled, &protocol witness table for EnvironmentValues.IsEagerNavigationTransitionEnabled, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>, &type metadata for EnvironmentValues.IsEagerNavigationTransitionEnabled, &protocol witness table for EnvironmentValues.IsEagerNavigationTransitionEnabled);
    if (v17[1])
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    if (v16 == 1)
    {
      v9 = [v1 navigationController];
      if (v9)
      {
        v10 = v9;
        v11 = [(UINavigationController *)v9 viewControllers];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v17[0] = v1;
        MEMORY[0x1EEE9AC00](v13);
        v15[2] = v17;
        LOBYTE(v11) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v15, v12);

        if (v11)
        {
          UIHostingController.updateIncomingBoundsIfNeeded(navigationController:)(v10);
          v14 = specialized UIHostingController.host.getter();
          _UIHostingView.renderForPreferences(updateDisplayList:)(1);

          v10 = v14;
        }
      }
    }
  }
}

void specialized UIHostingController.coordinateListSelection(transitionCoordinator:isAnimated:)(void *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = *MEMORY[0x1E69E7D40] & *v1;
  swift_unknownObjectRetain();
  v4 = UIHostingController.topOrBottomContentScrollView()();
  if (v4)
  {
    v23 = v4;
    v5 = [a1 viewControllerForKey_];
    if (!v5)
    {
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v22 = v5;
    v6 = specialized UIHostingController.host.getter();
    v8 = type metadata accessor for _UIHostingView(0, *(v3 + 80), *(v3 + 88), v7);
    v9 = v6;
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v8);
    v10 = UICoreViewControllerProvider.containingViewController.getter();

    if (v10)
    {
      if (v22 != v10)
      {
LABEL_6:
        swift_unknownObjectRelease();

LABEL_11:
        v11 = v23;
LABEL_16:

        return;
      }

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
        type metadata accessor for UpdateCoalescingCollectionView(0);
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = v15;
          v28 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
          v29 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v25 = 1107296256;
          v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          v27 = &block_descriptor_87;
          v17 = _Block_copy(&aBlock);
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          v28 = partial apply for closure #2 in UIHostingController.coordinateListSelection(transitionCoordinator:isAnimated:);
          v29 = v18;
          aBlock = MEMORY[0x1E69E9820];
          v25 = 1107296256;
          v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          v27 = &block_descriptor_9_1;
          v19 = _Block_copy(&aBlock);
          v20 = v23;

          [a1 animateAlongsideTransition:v17 completion:v19];
          _Block_release(v19);
          _Block_release(v17);
          v21 = [v16 indexPathsForSelectedItems];
          swift_unknownObjectRetain();
          [v16 _deselectItemsAtIndexPaths_animated_transitionCoordinator_];

          swift_unknownObjectRelease_n();
          return;
        }

        goto LABEL_6;
      }

      v13 = v12;
      v14 = [v12 indexPathsForSelectedRows];
      swift_unknownObjectRetain();
      [v13 _deselectRowsAtIndexPaths_animated_transitionCoordinator_];

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v11 = v22;
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_18BD9E828()
{

  return swift_deallocObject();
}

double @objc _UIHostingView.transform.getter@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  _UIHostingView.transform.getter(v4, v8);

  result = *v8;
  v6 = v8[1];
  v7 = v8[2];
  *a2 = v8[0];
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

double _UIHostingView.transform.getter@<D0>(uint64_t a1@<X3>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), a1);
  v9.receiver = v2;
  v9.super_class = v4;
  objc_msgSendSuper2(&v9, sel_transform);
  result = *&v6;
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

void UIHostingController.updateWindowSceneSizeRestrictions()()
{
  specialized UIHostingController.host.getter();
  v1 = _UIHostingView.sceneBridge.getter();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v0 viewIfLoaded];
  if (v3 && (v4 = v3, v5 = [v3 window], v4, v5) && (v26 = objc_msgSend(v5, sel_windowScene), v5, v26))
  {
    v6 = [v26 sizeRestrictions];
    if (v6)
    {
      v7 = v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState;
      v8 = *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState);
      v25 = v6;
      if ((*(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 25) & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v6);
        type metadata accessor for CGSize(0);
        static Update.ensure<A>(_:)();
        [specialized UIHostingController.host.getter() safeAreaInsets];
        v24 = v32 + v23;
        [v25 setMinimumSize_];
        [v25 setMaximumSize_];

        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 1;
        *(v7 + 24) = 0;
        *(v7 + 25) = 1;

        return;
      }

      v9 = *(v7 + 8) | *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 16);
      if (*(v7 + 24))
      {
        v10 = 0;
      }

      else
      {
        v10 = (v9 | v8) == 0;
      }

      if (v10 || *(v7 + 24) != 0 || v8 != 1 || v9 != 0)
      {
        v31 = 0.0;
        v32 = 0.0;
        v14 = 1;
        v33 = 1;
        v28 = 0;
        v29 = 0;
        v30 = 1;
        UIHostingController.sizingOptions.getter(&v27);
        v15 = v27 & 4;
        v16 = UIHostingController.sizingOptions.getter(&v27);
        if (v15 | v27 & 8)
        {
          MEMORY[0x1EEE9AC00](v16);
          static Update.ensure<A>(_:)();
          v17 = v31;
          v18 = *&v32;
          v19 = v33;
          v20 = v28;
          v21 = v29;
          v14 = v30;
        }

        else
        {
          v21 = 0;
          v20 = 0;
          v18 = 0;
          v17 = 0.0;
          v19 = 1;
        }

        specialized static SceneBridge.applySizes(min:max:toRestrictions:)(*&v17, v18, v19, v20, v21, v14, v25);

        return;
      }

      v22 = v25;
    }

    else
    {

      v22 = v26;
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall UIHostingController._viewSafeAreaDidChange()()
{
  v1 = v0;
  v2 = specialized UIHostingController.toolbarBridge.getter();
  if (v2)
  {
    v3 = v2;
    ToolbarBridge.safeAreaDidChange<A>(hostingController:)(v1);
  }

  UIHostingController.updateWindowSceneSizeRestrictions()();
}

Swift::Void __swiftcall UIHostingController._viewDidMoveToWindow()()
{
  v1 = v0;
  v2 = specialized UIHostingController.barAppearanceBridge.getter();
  if (v2)
  {
    v3 = v2;
    BarAppearanceBridge.didMoveToWindow<A>(hostingController:)(v1);
  }

  v4 = specialized UIHostingController.inspectorBridgeV5.getter();
  if (v4)
  {
    v5 = v4;
    specialized SheetBridge.didMoveToWindow()();
  }
}

uint64_t AlwaysOnBridge.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 44) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  return v0;
}

void @objc UIHostingController.viewWillLayoutSubviews()(void *a1)
{
  v1 = a1;
  UIHostingController.viewWillLayoutSubviews()();
}

Swift::Void __swiftcall UIHostingController.viewWillLayoutSubviews()()
{
  v2 = type metadata accessor for UIHostingController(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), v0);
  v3.receiver = v1;
  v3.super_class = v2;
  objc_msgSendSuper2(&v3, sel_viewWillLayoutSubviews);
  UIHostingController._viewWillLayoutSubviews()();
}

void UIHostingController.layoutToolbarIfNeeded()()
{
  v1 = specialized UIHostingController.toolbarBridge.getter();
  if (!v1)
  {
    return;
  }

  v2 = v1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v3 = *(v2 + 24);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v4 items];
  if (!v5 || ((v6 = v5, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708), v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v7 >> 62) ? (v8 = __CocoaSet.count.getter()) : (v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v8))
  {
    v39 = [v4 superview];
    v28 = 0.0;
    if (v39)
    {

      [v4 removeFromSuperview];
    }

    goto LABEL_19;
  }

  v9 = [v4 superview];
  if (!v9)
  {
    v10 = [v0 view];
    if (!v10)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v11 = v10;
    [v10 addSubview_];
    v9 = v11;
  }

  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v12;
  [v12 safeAreaInsets];
  v15 = v14;

  [v0 additionalSafeAreaInsets];
  if (v15 - v16 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v15 - v16;
  }

  v18 = v4;
  v19 = [v0 view];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;

  [v18 sizeThatFits_];
  v26 = v25;
  v28 = v27;
  v29 = [v0 view];
  if (!v29)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = v29;
  [v29 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v41.origin.x = v32;
  v41.origin.y = v34;
  v41.size.width = v36;
  v41.size.height = v38;
  [v18 setFrame_];

LABEL_19:
  [v0 additionalSafeAreaInsets];
  if (v40 != v28)
  {
    [v0 additionalSafeAreaInsets];
    [v0 setAdditionalSafeAreaInsets_];
  }
}

void type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined destroy of Logger?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s2os6LoggerVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s2os6LoggerVSgWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s2os6LoggerVSgWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithCopy for HostingControllerOverrides(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (*(a2 + 8) == 2)
  {
    *a1 = *a2;
    *(a1 + 9) = *(a2 + 9);
  }

  else
  {
    a4(a1, a2, a3);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  a4(a1 + 32, a2 + 32, a3);
  (a4)(a1 + 40, a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void type metadata accessor for ToolbarBridge<UIKitToolbarStrategy>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ToolbarContentDescription?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI25ToolbarContentDescriptionVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t Set<>.updatePreferences(viewGraph:tracker:isAdding:)(uint64_t a1, char **a2, char a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    outlined init with copy of ToolbarPlacement.Role(*(a4 + 48) + 40 * (v15 | (v11 << 6)), v63);
    v61[0] = v63[0];
    v61[1] = v63[1];
    v62 = v64;
    outlined init with copy of ToolbarPlacement.Role(v61, v59);
    if (v60 > 2)
    {
      if (v60 <= 4)
      {
        if (v60 != 3)
        {
          goto LABEL_136;
        }

        if ((a3 & 1) == 0)
        {
          GraphHost.removePreference<A>(_:)();
          v29 = *a2;
          v37 = *(*a2 + 2);
          if (!v37)
          {
            goto LABEL_120;
          }

          v31 = 0;
          v38 = 0;
          while (*&v29[v31 + 32] != &type metadata for BottomBarAppearanceKey)
          {
            ++v38;
            v31 += 24;
            if (v37 == v38)
            {
              goto LABEL_120;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
          }

          v51 = *(v29 + 2);
          v52 = v51 - v38;
          if (v51 <= v38)
          {
            goto LABEL_129;
          }

          goto LABEL_119;
        }

        GraphHost.addPreference<A>(_:)();
        v16 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
        }

        outlined destroy of ToolbarPlacement.Role(v61);
        *(v16 + 2) = v22 + 1;
        v12 = &v16[24 * v22];
        *(v12 + 4) = &type metadata for BottomBarAppearanceKey;
        v13 = &protocol witness table for BottomBarAppearanceKey;
        goto LABEL_5;
      }

      if (v60 == 5)
      {
        if ((a3 & 1) == 0)
        {
          GraphHost.removePreference<A>(_:)();
          v29 = *a2;
          v30 = *(*a2 + 2);
          if (!v30)
          {
            goto LABEL_120;
          }

          v31 = 0;
          v32 = 0;
          while (*&v29[v31 + 32] != &type metadata for TabBarAppearanceKey)
          {
            ++v32;
            v31 += 24;
            if (v30 == v32)
            {
              goto LABEL_120;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
          }

          v51 = *(v29 + 2);
          v52 = v51 - v32;
          if (v51 <= v32)
          {
            goto LABEL_131;
          }

          goto LABEL_119;
        }

        GraphHost.addPreference<A>(_:)();
        v16 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v24 = *(v16 + 2);
        v23 = *(v16 + 3);
        if (v24 >= v23 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v16);
        }

        outlined destroy of ToolbarPlacement.Role(v61);
        *(v16 + 2) = v24 + 1;
        v12 = &v16[24 * v24];
        *(v12 + 4) = &type metadata for TabBarAppearanceKey;
        v13 = &protocol witness table for TabBarAppearanceKey;
LABEL_5:
        *(v12 + 5) = v13;
        *(v12 + 12) = -1;
        *a2 = v16;
      }

      else
      {
        if (v60 == 6)
        {
          if ((a3 & 1) == 0)
          {
            GraphHost.removePreference<A>(_:)();
            v29 = *a2;
            v33 = *(*a2 + 2);
            if (!v33)
            {
              goto LABEL_120;
            }

            v31 = 0;
            v34 = 0;
            while (*&v29[v31 + 32] != &type metadata for BottomOrnamentAppearanceKey)
            {
              ++v34;
              v31 += 24;
              if (v33 == v34)
              {
                goto LABEL_120;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
            }

            v51 = *(v29 + 2);
            v52 = v51 - v34;
            if (v51 <= v34)
            {
              goto LABEL_132;
            }

            goto LABEL_119;
          }

          GraphHost.addPreference<A>(_:)();
          v16 = *a2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v20 = *(v16 + 2);
          v19 = *(v16 + 3);
          if (v20 >= v19 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v16);
          }

          outlined destroy of ToolbarPlacement.Role(v61);
          *(v16 + 2) = v20 + 1;
          v12 = &v16[24 * v20];
          *(v12 + 4) = &type metadata for BottomOrnamentAppearanceKey;
          v13 = &protocol witness table for BottomOrnamentAppearanceKey;
          goto LABEL_5;
        }

LABEL_85:
        if (a3)
        {
          GraphHost.addPreference<A>(_:)();
          v43 = *a2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
          }

          v45 = *(v43 + 2);
          v44 = *(v43 + 3);
          if (v45 >= v44 >> 1)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
          }

          outlined destroy of ToolbarPlacement.Role(v61);
          *(v43 + 2) = v45 + 1;
          v46 = &v43[24 * v45];
          *(v46 + 4) = &type metadata for AccessoryBarAppearanceKey;
          *(v46 + 5) = &protocol witness table for AccessoryBarAppearanceKey;
          *(v46 + 12) = -1;
          *a2 = v43;
        }

        else
        {
          GraphHost.removePreference<A>(_:)();
          v47 = *a2;
          v48 = *(*a2 + 2);
          if (v48)
          {
            v49 = 0;
            v50 = 0;
            while (*&v47[v49 + 32] != &type metadata for AccessoryBarAppearanceKey)
            {
              ++v50;
              v49 += 24;
              if (v48 == v50)
              {
                goto LABEL_125;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
            }

            v54 = *(v47 + 2);
            v55 = v54 - v50;
            if (v54 <= v50)
            {
              goto LABEL_135;
            }

            v56 = v54 - 1;
            memmove(&v47[v49 + 32], &v47[v49 + 56], 24 * v55 - 24);
            *(v47 + 2) = v56;
            *a2 = v47;
          }

LABEL_125:
          outlined destroy of ToolbarPlacement.Role(v61);
        }

        outlined destroy of ToolbarPlacement.Role(v59);
      }
    }

    else
    {
      if (!v60)
      {
        if ((a3 & 1) == 0)
        {
          GraphHost.removePreference<A>(_:)();
          v29 = *a2;
          v35 = *(*a2 + 2);
          if (!v35)
          {
            goto LABEL_120;
          }

          v31 = 0;
          v36 = 0;
          while (*&v29[v31 + 32] != &type metadata for NavigationBarAppearanceKey)
          {
            ++v36;
            v31 += 24;
            if (v35 == v36)
            {
              goto LABEL_120;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
          }

          v51 = *(v29 + 2);
          v52 = v51 - v36;
          if (v51 <= v36)
          {
            goto LABEL_130;
          }

          goto LABEL_119;
        }

        GraphHost.addPreference<A>(_:)();
        v16 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v26 = *(v16 + 2);
        v25 = *(v16 + 3);
        if (v26 >= v25 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v16);
        }

        outlined destroy of ToolbarPlacement.Role(v61);
        *(v16 + 2) = v26 + 1;
        v12 = &v16[24 * v26];
        *(v12 + 4) = &type metadata for NavigationBarAppearanceKey;
        v13 = &protocol witness table for NavigationBarAppearanceKey;
        goto LABEL_5;
      }

      if (v60 == 1)
      {
        if ((a3 & 1) == 0)
        {
          GraphHost.removePreference<A>(_:)();
          v29 = *a2;
          v41 = *(*a2 + 2);
          if (!v41)
          {
            goto LABEL_120;
          }

          v31 = 0;
          v42 = 0;
          while (*&v29[v31 + 32] != &type metadata for WindowToolbarItemsAppearanceKey)
          {
            ++v42;
            v31 += 24;
            if (v41 == v42)
            {
              goto LABEL_120;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
          }

          v51 = *(v29 + 2);
          v52 = v51 - v42;
          if (v51 <= v42)
          {
            goto LABEL_134;
          }

          goto LABEL_119;
        }

        GraphHost.addPreference<A>(_:)();
        v16 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v28 = *(v16 + 2);
        v27 = *(v16 + 3);
        if (v28 >= v27 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v16);
        }

        outlined destroy of ToolbarPlacement.Role(v61);
        *(v16 + 2) = v28 + 1;
        v12 = &v16[24 * v28];
        *(v12 + 4) = &type metadata for WindowToolbarItemsAppearanceKey;
        v13 = &protocol witness table for WindowToolbarItemsAppearanceKey;
        goto LABEL_5;
      }

      if (v60 != 2)
      {
        goto LABEL_85;
      }

      if (a3)
      {
        GraphHost.addPreference<A>(_:)();
        v16 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        outlined destroy of ToolbarPlacement.Role(v61);
        *(v16 + 2) = v18 + 1;
        v12 = &v16[24 * v18];
        *(v12 + 4) = &type metadata for WindowToolbarAppearanceKey;
        v13 = &protocol witness table for WindowToolbarAppearanceKey;
        goto LABEL_5;
      }

      GraphHost.removePreference<A>(_:)();
      v29 = *a2;
      v39 = *(*a2 + 2);
      if (v39)
      {
        v31 = 0;
        v40 = 0;
        while (*&v29[v31 + 32] != &type metadata for WindowToolbarAppearanceKey)
        {
          ++v40;
          v31 += 24;
          if (v39 == v40)
          {
            goto LABEL_120;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
        }

        v51 = *(v29 + 2);
        v52 = v51 - v40;
        if (v51 <= v40)
        {
          goto LABEL_133;
        }

LABEL_119:
        v53 = v51 - 1;
        memmove(&v29[v31 + 32], &v29[v31 + 56], 24 * v52 - 24);
        *(v29 + 2) = v53;
        *a2 = v29;
      }

LABEL_120:
      outlined destroy of ToolbarPlacement.Role(v61);
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
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
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t UIHostingController.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for UIHostingController.overrides;
  swift_beginAccess();
  return outlined init with copy of HostingControllerOverrides(v1 + v3, a1);
}

uint64_t UIHostingController._as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UIHostingControllerProvider, &protocol descriptor for UIHostingControllerProvider, 0);
  if (result == a1)
  {
    v10[0] = v3;
    v10[1] = &protocol witness table for UIHostingController<A>;
    v9 = *(a2 - 8);
    if (*(v9 + 64) == 16)
    {
      (*(v9 + 16))(a3, v10, a2);
      return (*(v9 + 56))(a3, 0, 1, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *(*(a2 - 8) + 56);

    return v8(a3, 1, 1, a2);
  }

  return result;
}

void destroy for HostingControllerOverrides(uint64_t a1)
{
  if (*(a1 + 8) != 2)
  {
    MEMORY[0x18D011290](a1);
  }

  MEMORY[0x18D011290](a1 + 32);

  JUMPOUT(0x18D011290);
}

uint64_t _UIHostingView.shouldDeferToChildViewControllerForStatusBar.getter()
{
  specialized _UIHostingView.statusBarBridge.getter();

  v1 = UIKitStatusBarBridge.shouldDeferToChildViewController.getter(v0);

  return v1 & 1;
}

uint64_t UIKitStatusBarBridge.shouldDeferToChildViewController.getter(uint64_t a1)
{
  static Semantics.v7.getter();
  v2 = isLinkedOnOrAfter(_:)();
  v3 = *(v1 + 17);
  if ((v2 & 1) == 0 || v3 != 2)
  {
    return v3 & 1;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v1;
    v6 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    v8 = (*(*(v6 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
    swift_beginAccess();
    v9 = *(v8 + 128);

    if ((v9 & 1) == 0)
    {
      static Semantics.v7_1.getter();
      if (isLinkedOnOrAfter(_:)())
      {
        LOBYTE(v3) = 0;
        return v3 & 1;
      }
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      ViewRendererHost.preferenceValue<A>(_:)();
      swift_unknownObjectRelease();
      LOBYTE(v3) = v10;
      *(v5 + 17) = v10;
      return v3 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3();
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3();
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id @objc UIHostingController.undoManager.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.undoManager.getter();

  return v2;
}

id UIHostingController.undoManager.getter()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = *(v0 + direct field offset for UIHostingController.host);
  _UIHostingView.inheritedEnvironment.getter();

  if (v9 == 1)
  {
    outlined consume of EnvironmentValues?(1, v10);
LABEL_7:
    v6 = type metadata accessor for UIHostingController(0, *(v2 + 80), *(v2 + 88), v4);
    v7.receiver = v1;
    v7.super_class = v6;
    return objc_msgSendSuper2(&v7, sel_undoManager);
  }

  type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UndoManagerKey>, &type metadata for UndoManagerKey, &protocol witness table for UndoManagerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();
  if (v10)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  outlined consume of EnvironmentValues?(v9, v10);
  result = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  return result;
}

void type metadata completion function for BarEnvironmentViewModel(uint64_t a1)
{
  type metadata accessor for Published<Visibility>(319, &lazy cache variable for type metadata for Published<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<ColorScheme?>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(void *), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(v8);
  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>)
  {
    type metadata accessor for ToolbarContentDescription?(255, &lazy cache variable for type metadata for EnvironmentObjectKey<PrimaryBarViewModel>, type metadata accessor for PrimaryBarViewModel, MEMORY[0x1E697F9D8]);
    lazy protocol witness table accessor for type EnvironmentObjectKey<PrimaryBarViewModel> and conformance EnvironmentObjectKey<A>();
    v1 = type metadata accessor for EnvironmentPropertyKey();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation9IndexPathVACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *PPTTestBridge.update(environment:)(void *result)
{
  if (*(v1 + 32) == 1)
  {
    v2 = result[1];
    type metadata accessor for EnvironmentPropertyKey<PPTTestCaseEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PPTTestCaseEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    if (v2)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v3 = v6;
    result = outlined destroy of PPTTestCase?(v5);
    if (!v3)
    {
      *(v1 + 32) = 0;
      swift_beginAccess();
      outlined init with copy of PPTTestCase?(v1 + 40, v5);
      outlined init with copy of PPTTestCase?(v5, v4);
      type metadata accessor for EnvironmentPropertyKey<PPTTestCaseEnvironmentKey>();
      lazy protocol witness table accessor for type EnvironmentPropertyKey<PPTTestCaseEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.subscript.setter();
      if (v2)
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }

      return outlined destroy of PPTTestCase?(v5);
    }
  }

  return result;
}

void type metadata accessor for CGRect?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSo6CGRectVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

Swift::Void __swiftcall SharingActivityPickerBridge.transformDidChange()()
{
  if ((*(v0 + 240) & 1) == 0)
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 144);
    v28 = *(v0 + 160);
    v29 = v1;
    v3 = *(v0 + 176);
    v30 = *(v0 + 192);
    v4 = *(v0 + 112);
    v5 = *(v0 + 80);
    v24 = *(v0 + 96);
    v25 = v4;
    v6 = *(v0 + 112);
    v7 = *(v0 + 144);
    v26 = *(v0 + 128);
    v27 = v7;
    v8 = *(v0 + 80);
    v22 = *(v0 + 64);
    v23 = v8;
    v38 = v28;
    v39 = v3;
    v40 = *(v0 + 192);
    v34 = v24;
    v35 = v6;
    v36 = v26;
    v37 = v2;
    v31 = *(v0 + 208);
    v41 = *(v0 + 208);
    v32 = v22;
    v33 = v5;
    if (_s7SwiftUI33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLVSgWOg(&v32) != 1)
    {
      v48 = v38;
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v44 = v34;
      v45 = v35;
      v46 = v36;
      v47 = v37;
      v42 = v32;
      v43 = v33;
      v9 = *(v0 + 216);
      if (v9)
      {
        v20[6] = v28;
        v20[7] = v29;
        v20[8] = v30;
        v21 = v31;
        v20[2] = v24;
        v20[3] = v25;
        v20[4] = v26;
        v20[5] = v27;
        v20[0] = v22;
        v20[1] = v23;
        outlined init with copy of SharingActivityPickerPresentation(v20, v19);
        v10 = [v9 popoverPresentationController];
        if (v10)
        {
          v11 = v10;
          *(v0 + 240) = 1;
          v12 = swift_allocObject();
          swift_weakInit();
          v13 = swift_allocObject();
          v14 = v49;
          *(v13 + 120) = v48;
          *(v13 + 136) = v14;
          *(v13 + 152) = v50;
          v15 = v45;
          *(v13 + 56) = v44;
          *(v13 + 72) = v15;
          v16 = v47;
          *(v13 + 88) = v46;
          *(v13 + 104) = v16;
          v17 = v43;
          *(v13 + 24) = v42;
          *(v13 + 16) = v12;
          *(v13 + 168) = v51;
          *(v13 + 40) = v17;
          *(v13 + 176) = v11;
          _sypSgWOcTm_3(&v22, v19, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);

          v18 = v11;
          onNextMainRunLoop(do:)();

          outlined destroy of AnyShareConfiguration?(&v22, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);
        }

        else
        {
          outlined destroy of AnyShareConfiguration?(&v22, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);
        }
      }
    }
  }
}

Swift::Void __swiftcall UIKitDialogBridge.transformDidChange()()
{
  if (*(v0 + 44) != 1)
  {
    return;
  }

  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v0 + 64);
  if (!v2)
  {
    swift_endAccess();
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
LABEL_13:
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v8, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    return;
  }

  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1), (v4 & 1) != 0))
  {
    outlined init with copy of ConfirmationDialog(*(v2 + 56) + 184 * v3, &v8);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  swift_endAccess();
  if (!v9)
  {
    goto LABEL_13;
  }

  outlined init with take of ConfirmationDialog(&v8, v20);
  swift_beginAccess();
  v5 = *(v0 + 48);
  if (v5)
  {
    swift_endAccess();
    v6 = [v5 popoverPresentationController];
    if (v6)
    {
      v7 = v6;
      UIKitDialogBridge.updateAnchor(dialog:presentationController:)(v20, v6);
    }

    outlined destroy of ConfirmationDialog(v20);
  }

  else
  {
    outlined destroy of ConfirmationDialog(v20);
    swift_endAccess();
  }
}

uint64_t _s7SwiftUI33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata accessor for Published<Visibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for Published<ColorScheme?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<ColorScheme?>)
  {
    type metadata accessor for Published<Visibility>(255, &lazy cache variable for type metadata for ColorScheme?, MEMORY[0x1E697DBD8], MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<ColorScheme?>);
    }
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
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
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v19 & 1))
    {
      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of ToolbarPlacement.Role(a2, v20);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v20, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
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
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 248 * v9;

    return outlined assign with take of AlertStorage(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
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
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 120 * v9;

    return outlined assign with take of OrnamentPresentation(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
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
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 120 * v9;

    return outlined assign with take of InspectorStorage(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
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
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v19 & 1))
    {
      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v20);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v20, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

void type metadata accessor for _DictionaryStorage<ToolbarPlacement.Role, BarEnvironmentViewModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, BarEnvironmentViewModel>)
  {
    type metadata accessor for BarEnvironmentViewModel(255);
    lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, BarEnvironmentViewModel>);
    }
  }
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, ToolbarPlacement.Role.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, Toolbar.BarLocation.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t lazy protocol witness table accessor for type EnvironmentObjectKey<PrimaryBarViewModel> and conformance EnvironmentObjectKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentObjectKey<PrimaryBarViewModel> and conformance EnvironmentObjectKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentObjectKey<PrimaryBarViewModel> and conformance EnvironmentObjectKey<A>)
  {
    type metadata accessor for ToolbarContentDescription?(255, &lazy cache variable for type metadata for EnvironmentObjectKey<PrimaryBarViewModel>, type metadata accessor for PrimaryBarViewModel, MEMORY[0x1E697F9D8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F9E0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentObjectKey<PrimaryBarViewModel> and conformance EnvironmentObjectKey<A>);
  }

  return result;
}

void WithCurrentHostingControllerAction.init<A>(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
}

uint64_t ContainerBackgroundBridge.update(environment:)(void *a1)
{
  v2 = *(v1 + 145);
  v3 = a1[1];
  type metadata accessor for NavigationStackHostingController<AnyView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>();
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v2 == 5)
  {
    if (v7 == 5)
    {
      goto LABEL_19;
    }

LABEL_9:
    type metadata accessor for NavigationStackHostingController<AnyView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>();
    if (v3)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    if (v7 == 5)
    {
      v4 = 0;
    }

    else
    {
      v8 = v7;
      v4 = ContainerBackgroundKind.Builtin.versionSeedTracker.getter();
    }

    *(v1 + 40) = v4;

    type metadata accessor for NavigationStackHostingController<AnyView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>();
    if (v3)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v5 = *(v1 + 145);
    *(v1 + 145) = v7;
    v8 = v5;
    ContainerBackgroundBridge.backgroundPlacement.didset(&v8);
    goto LABEL_19;
  }

  if (v7 == 5 || v2 != v7)
  {
    goto LABEL_9;
  }

LABEL_19:
  type metadata accessor for NavigationStackHostingController<AnyView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return EnvironmentValues.containerBackgroundLuminance.setter();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void UIHostingController.persistentSystemOverlaysEnvironmentDidChange(environment:)(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v2 = v6;
  v3 = UIHostingController.persistentSystemOverlays.getter(&v5);
  if (v3 == 3 || v2 != v3)
  {
    *(v1 + direct field offset for UIHostingController.persistentSystemOverlays + 2) = v2;
    UIHostingController.persistentSystemOverlays.getter(&v4);
    if (HIBYTE(v4) << 8 == 512)
    {
      UIHostingController.updateHomeIndicator(animated:)(0);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePersistentSystemOverlaysKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void UIHostingController.updateHomeIndicator(animated:)(char a1)
{
  specialized UIHostingController.host.getter();
  v2 = _UIHostingView.viewController.getter();
  v7 = v2;
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v7;
    aBlock[4] = partial apply for closure #1 in setNeedsHomeIndicatorUpdate #1 <A>(from:animated:) in UIHostingController.updateHomeIndicator(animated:);
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_56;
    v5 = _Block_copy(aBlock);
    v6 = v7;

    [v3 animateWithDuration:v5 animations:0.3];

    _Block_release(v5);
  }

  else
  {
    [v2 setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

uint64_t sub_18BDA2544()
{

  return swift_deallocObject();
}

uint64_t UIHostingController.persistentSystemOverlays.getter(_WORD *a1)
{
  v2 = v1 + direct field offset for UIHostingController.persistentSystemOverlays;
  *a1 = *(v1 + direct field offset for UIHostingController.persistentSystemOverlays);
  return *(v2 + 2);
}

void Toolbar.UpdateContext.init<A>(hostingController:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_18CD874C0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a2 + 48) = 2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 257;
  *(a2 + 88) = MEMORY[0x1E69E7CC0];
  outlined destroy of HostingControllerOverrides(a2);
  UIHostingController.overrides.getter(a2);
  v4 = a1;
  v5 = [v4 navigationController];
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  v6 = [specialized UIHostingController.host.getter() window];
  if (v6 && (v7 = v6, v8 = [v6 windowScene], v7, v8))
  {
    v9 = [v8 session];
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectWeakAssign();
}

uint64_t ToolbarBridge.update(environment:context:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v26 = MEMORY[0x1E69E7CD0];
  v27 = 0;
  outlined init with copy of Toolbar.UpdateContext(a2, v25);
  EnvironmentValues.horizontalSizeClass.getter();
  v25[80] = v22[0];
  EnvironmentValues.verticalSizeClass.getter();
  v25[81] = v22[0];
  if (ToolbarBridge.allowsUpdates.getter())
  {
    swift_beginAccess();
    EnvironmentValues.horizontalSizeClass.getter();
    v5 = LOBYTE(v31[0]);
    if (LOBYTE(v31[0]) == 2)
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      EnvironmentValues.horizontalSizeClass.getter();
      if (v22[0] == 2 || ((v22[0] ^ v5) & 1) != 0)
      {
        ToolbarBridge.toolbarStorage.getter(v28);
        if (v29)
        {
          v31[0] = v28[0];
          v31[1] = v28[1];
          v31[2] = v28[2];
          v32 = v29;
          v33 = v30;
          v6 = *(v2 + direct field offset for ToolbarBridge.lastBarContext) | ((*(v2 + direct field offset for ToolbarBridge.lastBarContext + 4) | (*(v2 + direct field offset for ToolbarBridge.lastBarContext + 6) << 16)) << 32);
          if (*(v2 + direct field offset for ToolbarBridge.lastBarContext) == 2)
          {
            outlined destroy of Toolbar.UpdateContext?(v28, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
          }

          else
          {
            updated = outlined init with copy of Toolbar.UpdateContext(v25, v22);
            MEMORY[0x1EEE9AC00](updated);
            v13[2] = v2;
            v13[3] = v31;
            v14 = v6 & 0x101;
            v15 = BYTE2(v6) & 1;
            v16 = BYTE3(v6) & 1;
            v17 = BYTE4(v6);
            v18 = BYTE5(v6);
            v19 = BYTE6(v6) & 1;
            v20 = v25;
            v21 = &v26;
            static ToolbarStrategy.withUpdater<A>(_:_:body:)(v2, v22, partial apply for closure #1 in ToolbarBridge.update(environment:context:), v13);
            outlined destroy of Toolbar.UpdateContext?(v28, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
            outlined destroy of Toolbar.UpdateContext(v22);
          }
        }
      }
    }
  }

  outlined init with copy of HostingControllerOverrides(v25, v22);
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of HostingControllerOverrides(v22);
  if (Strong)
  {
  }

  else
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  ToolbarBridge.uiSafeAreaTransitionState.getter();
  v23 = &protocol witness table for ToolbarSafeAreaTransitionState;
  swift_unknownObjectWeakInit();
  outlined init with copy of SafeAreaTransitionStateKey.Value(v22, &v24);
  type metadata accessor for EnvironmentPropertyKey<SafeAreaTransitionStateKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of weak FallbackResponderProvider?(v22);
LABEL_17:
  specialized ToolbarBridge.uiInputAccessoryGenerator.getter();

  specialized EnvironmentValues.uiInputAccessoryGenerator.setter(v10);

  v11 = v26;

  $defer #1 <A>() in ToolbarBridge.update(environment:context:)(v3, a1);
  outlined destroy of Toolbar.UpdateContext(v25);

  return v11;
}

uint64_t initializeWithCopy for Toolbar.UpdateContext(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 2)
  {
    *a1 = *a2;
    *(a1 + 9) = *(a2 + 9);
  }

  else
  {
    swift_unknownObjectWeakCopyInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  *(a1 + 48) = *(a2 + 48);
  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

BOOL ToolbarBridge.allowsUpdates.getter()
{
  v1 = *(v0 + direct field offset for ToolbarBridge.navigationAdaptor);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = v1 + 32;

  v4 = 0;
  do
  {
    outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v3, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v6 + 8))(&v8, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v4 |= v8;
    v3 += 48;
    --v2;
  }

  while (v2);

  return (v4 & 2) == 0;
}

uint64_t specialized ToolbarBridge.uiInputAccessoryGenerator.getter()
{
  v1 = v0 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for Toolbar.PlatformVended(0) + 48));
}

void type metadata accessor for PlatformItemList.Item?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI16PlatformItemListV0D0VSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of PlatformItemList.Item?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for PlatformItemList.Item?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t specialized EnvironmentValues.uiInputAccessoryGenerator.setter(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();
  outlined init with copy of PlatformItemList.Item?(v4, &v3, &lazy cache variable for type metadata for WeakBox<InputAccessoryGenerator>, type metadata accessor for InputAccessoryGenerator, MEMORY[0x1E6981A78]);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey>, &type metadata for EnvironmentValues.InputAccessoryKey, &protocol witness table for EnvironmentValues.InputAccessoryKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ToolbarStorage.NavigationProperties?(v4, &lazy cache variable for type metadata for WeakBox<InputAccessoryGenerator>, type metadata accessor for InputAccessoryGenerator, MEMORY[0x1E6981A78]);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey>, &type metadata for EnvironmentValues.InputAccessoryKey, &protocol witness table for EnvironmentValues.InputAccessoryKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of ToolbarStorage.NavigationProperties?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for PlatformItemList.Item?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI25ToolbarContentDescriptionVSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t $defer #1 <A>() in ToolbarBridge.update(environment:context:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (a1 + direct field offset for ToolbarBridge.lastEnvironment);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t destroy for Toolbar.UpdateContext(uint64_t a1)
{
  if (*(a1 + 8) != 2)
  {
    MEMORY[0x18D011290](a1);
  }

  MEMORY[0x18D011290](a1 + 32);
  MEMORY[0x18D011290](a1 + 40);
  MEMORY[0x18D011290](a1 + 56);
  MEMORY[0x18D011290](a1 + 64);
  MEMORY[0x18D011290](a1 + 72);
}

void ToolbarBridge.adoptUpdates<A>(_:hostingController:context:)(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v59 = a1;
  v52 = *MEMORY[0x1E69E7D40] & *v4;
  v57 = a3;
  if ((a2 & 0x10000) != 0)
  {
    v10 = *(v4 + direct field offset for ToolbarBridge.navigationAdaptor);
    v11 = *(v10 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v10 + 32;

    v13 = 0;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v12, &aBlock);
      v14 = *(&v62 + 1);
      v15 = v63;
      __swift_project_boxed_opaque_existential_1(&aBlock, *(&v62 + 1));
      (*(v15 + 1))(v65, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v13 |= LOBYTE(v65[0]);
      v12 += 48;
      --v11;
    }

    while (v11);

    if ((v13 & 2) != 0)
    {
      ToolbarBridge.resetPlatform()();
      v9 = 1;
    }

    else
    {
LABEL_7:
      v9 = 0;
    }

    v8 = v57;
  }

  else
  {
    v8 = a3;
    v9 = 0;
  }

  outlined init with copy of HostingControllerOverrides(a4, &aBlock);
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of HostingControllerOverrides(&aBlock);
  v56 = a4;
  if (Strong || (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    swift_getObjectType();
    v17 = [swift_getObjCClassFromMetadata() _isFromSwiftUI];
  }

  else
  {
    v17 = 0;
  }

  v58 = a2 & 0x10000;
  static Semantics.v6_4.getter();
  v18 = 0;
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && v17)
  {
    v18 = ToolbarBridge.allowsUpdates.getter();
  }

  v19 = [v8 navigationItem];
  v20 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v20);
  v44 = v19;
  v45 = v21;
  v46 = v59;
  v55 = a2 & 1;
  v47 = a2 & 0x101;
  v54 = (a2 >> 8) & 1;
  v53 = HIWORD(v58);
  v48 = BYTE2(v58);
  v49 = HIBYTE(a2);
  v50 = v9;
  v22 = v18;
  v51 = v18;
  v23 = v21;
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)() & 1) != 0 && (a2)
  {
    v24 = objc_opt_self();
    v25 = swift_allocObject();
    *(v25 + 16) = partial apply for closure #1 in UINavigationItem.adoptNavigationItem(_:updates:forceUpdate:isFromSwiftUI:);
    *(v25 + 24) = v43;
    v63 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v64 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    *&v62 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v62 + 1) = &block_descriptor_173;
    v26 = _Block_copy(&aBlock);

    [v24 _animateSystemChanges_];
    _Block_release(v26);
  }

  else
  {
    UINavigationItem.adoptSystemUpdates(_:updates:forceUpdate:isFromSwiftUI:)(v23, v59, a2 & 0xFF010101, v9, v22);
  }

  UINavigationItem.updateSearchControllerIfNeeded(_:)(v23);
  if ((a2 & 0x2000000) != 0)
  {
    v27 = 0;
  }

  else
  {
    v27 = v9 ^ 1;
  }

  if ((v27 & 1) == 0)
  {
    v28 = [v23 titleMenuProvider];
    if (v28)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      v63 = thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (@autoreleased UIMenu?)partial apply;
      v64 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v61 = 1107296256;
      *&v62 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
      *(&v62 + 1) = &block_descriptor_166;
      v28 = _Block_copy(&aBlock);
    }

    [v19 setTitleMenuProvider_];
    _Block_release(v28);
  }

  if ((a2 & 0x1000000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v30 = v9 ^ 1;
  }

  if ((v30 & 1) == 0)
  {
    v31 = [v23 documentProperties];
    v32 = [v19 documentProperties];
    if (!v32 || (v33 = v32, swift_getObjectType(), v34 = [swift_getObjCClassFromMetadata() _isFromSwiftUI], v33, v34))
    {
      [v23 setDocumentProperties_];
      [v19 setDocumentProperties_];
    }
  }

  v35 = v9 ^ 1;
  if ((a2 & 0x4000000) != 0)
  {
    v35 = 0;
  }

  if ((v35 & 1) == 0)
  {
    UINavigationItem.updateRenameDelegate(_:)(v23);
  }

  v37 = v57;
  if (v58)
  {
    v38 = *(v5 + direct field offset for ToolbarBridge.navigationAdaptor);
    if (*(v38 + 16))
    {

      v62 = *(v52 + 80);
      v63 = v38;
      v64 = v37;
      static Update.ensure<A>(_:)();
    }
  }

  MEMORY[0x1EEE9AC00](v36);
  v43[0] = v5;
  v43[1] = v59;
  LOBYTE(v44) = v55;
  BYTE1(v44) = v54;
  BYTE2(v44) = v53;
  BYTE3(v44) = HIBYTE(a2);
  v45 = v37;
  v46 = v56;
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)() & 1) != 0 && (a2)
  {
    v39 = objc_opt_self();
    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for closure #2 in ToolbarBridge.adoptUpdates<A>(_:hostingController:context:);
    *(v40 + 24) = &v42;
    v63 = partial apply for thunk for @callee_guaranteed () -> ();
    v64 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    *&v62 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v62 + 1) = &block_descriptor_159;
    v41 = _Block_copy(&aBlock);

    [v39 _animateSystemChanges_];

    _Block_release(v41);
  }

  else
  {
    ToolbarBridge.adoptSystemUpdates<A>(_:hostingController:context:)(v59, a2 & 0xFF010101, v37);
  }
}